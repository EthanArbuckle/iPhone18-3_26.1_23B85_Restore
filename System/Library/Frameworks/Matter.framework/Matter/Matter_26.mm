uint64_t sub_2393C5E78(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  result = sub_2393C5DA0(a1, &v4);
  if (v4 != v4)
  {
    return 0xB10000008FLL;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_2393C5ED0(uint64_t a1, _BYTE *a2)
{
  if ((*(a1 + 68) & 0x1C) != 4)
  {
    LOBYTE(v2) = 0;
    result = 0xFF00000026;
    goto LABEL_5;
  }

  v2 = *(a1 + 24);
  if (v2 <= 0xFF)
  {
    result = 0;
LABEL_5:
    *a2 = v2;
    return result;
  }

  return 0xD50000008FLL;
}

uint64_t sub_2393C5F2C(uint64_t a1, void *a2)
{
  if ((*(a1 + 68) & 0x1C) == 4)
  {
    v2 = 0;
    v3 = 0;
    *a2 = *(a1 + 24);
  }

  else
  {
    v2 = 0xFF00000000;
    v3 = 38;
  }

  return v3 | v2;
}

uint64_t sub_2393C5F70(uint64_t a1, _WORD *a2)
{
  if ((*(a1 + 68) & 0x1C) != 4)
  {
    LOWORD(v2) = 0;
    result = 0xFF00000026;
    goto LABEL_5;
  }

  v2 = *(a1 + 24);
  if (!(v2 >> 16))
  {
    result = 0;
LABEL_5:
    *a2 = v2;
    return result;
  }

  return 0xE10000008FLL;
}

uint64_t sub_2393C5FC8(uint64_t a1, _DWORD *a2)
{
  if ((*(a1 + 68) & 0x1C) != 4)
  {
    LODWORD(v2) = 0;
    result = 0xFF00000026;
    goto LABEL_5;
  }

  v2 = *(a1 + 24);
  if (!HIDWORD(v2))
  {
    result = 0;
LABEL_5:
    *a2 = v2;
    return result;
  }

  return 0xED0000008FLL;
}

uint64_t sub_2393C6020(uint64_t a1, _DWORD *a2)
{
  if ((*(a1 + 68) & 0x1F) == 0xA)
  {
    v2 = 0;
    v3 = 0;
    *a2 = *(a1 + 24);
  }

  else
  {
    v2 = 0x11B00000000;
    v3 = 38;
  }

  return v3 | v2;
}

uint64_t sub_2393C6064(uint64_t a1, double *a2)
{
  v2 = *(a1 + 68);
  if (v2 == 0xFFFF)
  {
    v3 = 255;
  }

  else
  {
    v3 = v2 & 0x1F;
  }

  if (v3 == 11)
  {
    v4 = *(a1 + 24);
  }

  else
  {
    if (v3 != 10)
    {
      v5 = 0x12F00000000;
      v6 = 38;
      return v6 | v5;
    }

    v4 = *(a1 + 24);
  }

  v5 = 0;
  v6 = 0;
  *a2 = v4;
  return v6 | v5;
}

unint64_t sub_2393C60CC(uint64_t a1, _OWORD *a2)
{
  v11 = 0;
  v4 = sub_2393C6160(a1, &v11);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v6 = *(a1 + 68);
    if (v6 == 0xFFFF || (v6 & 0x1Cu) - 12 > 7)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 24);
    }

    sub_238DB6950(&v10, v11, v8);
    LODWORD(v4) = 0;
    v5 = 0;
    *a2 = v10;
  }

  return v5 | v4;
}

uint64_t sub_2393C6160(uint64_t a1, void *a2)
{
  v2 = *(a1 + 68);
  if (v2 != 0xFFFF && (v2 & 0x1Cu) - 12 <= 7)
  {
    if (*(a1 + 24))
    {
      v6 = *(a1 + 40);
      if ((*(a1 + 48) - v6) < *(a1 + 24))
      {
        v4 = 0x1FF00000000;
        v5 = 34;
        return v5 | v4;
      }
    }

    else
    {
      v6 = 0;
    }

    v4 = 0;
    v5 = 0;
    *a2 = v6;
    return v5 | v4;
  }

  v4 = 0x1F300000000;
  v5 = 38;
  return v5 | v4;
}

uint64_t sub_2393C61E0(uint64_t a1, _OWORD *a2)
{
  if ((*(a1 + 68) & 0x1C) != 0xC)
  {
    return 0x14600000026;
  }

  __s[5] = v2;
  __s[6] = v3;
  __s[0] = 0;
  v6 = sub_2393C6160(a1, __s);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v9 = __s[0];
    if (__s[0])
    {
      v10 = *(a1 + 24);
      v11 = memchr(__s[0], 31, v10);
      v12 = v11 - v9;
      if (!v11)
      {
        v12 = v10;
      }

      sub_238DB9BD8(&v13, v9, v12);
      LODWORD(v6) = 0;
      v7 = 0;
      *a2 = v13;
    }

    else
    {
      LODWORD(v6) = 0;
      v7 = 0;
    }
  }

  return v7 | v6;
}

uint64_t sub_2393C62B8(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  if ((*(a1 + 68) & 0x1C) != 0xC)
  {
    return 0x17500000026;
  }

  __s[5] = v2;
  __s[6] = v3;
  __s[0] = 0;
  v6 = sub_2393C6160(a1, __s);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  v9 = __s[0];
  if (!__s[0])
  {
    goto LABEL_14;
  }

  v10 = *(a1 + 24);
  v6 = memchr(__s[0], 31, v10);
  if (!v6)
  {
LABEL_15:
    v7 = 0;
    return v7 | v6;
  }

  v11 = (v6 + 1);
  v12 = v10 + v9 - (v6 + 1);
  v13 = memchr((v6 + 1), 31, v12);
  v14 = v13 ? (v13 - v11) : v12;
  if (!v14)
  {
LABEL_14:
    LODWORD(v6) = 0;
    goto LABEL_15;
  }

  if (v14 > 4)
  {
    v7 = 0x19300000000;
  }

  else if (*v11 == 48)
  {
    v7 = 0x19500000000;
  }

  else
  {
    v16 = 808464432;
    memcpy(__s - v14, v11, v14);
    v15 = 0;
    if (sub_2393D61F0(&v16, 4uLL, &v15) == 2)
    {
      LODWORD(v6) = 0;
      v7 = 0;
      *a2 = 1;
      *(a2 + 2) = v15;
      return v7 | v6;
    }

    v7 = 0x19C00000000;
  }

  LODWORD(v6) = 35;
  return v7 | v6;
}

unint64_t sub_2393C6430(uint64_t a1, char *a2, unint64_t a3)
{
  v3 = *(a1 + 68);
  if (v3 == 0xFFFF || (v3 & 0x1Cu) - 12 > 7)
  {
    v5 = 0x1A500000000;
    v6 = 38;
  }

  else if (*(a1 + 24) <= a3)
  {
    v8 = sub_2393C64D0(a1, a2, *(a1 + 24));
    v6 = v8;
    if (v8)
    {
      v5 = v8 & 0xFFFFFFFF00000000;
    }

    else
    {
      v5 = 0;
      *(a1 + 24) = 0;
    }
  }

  else
  {
    v5 = 0x1A800000000;
    v6 = 25;
  }

  return v5 | v6;
}

unint64_t sub_2393C64D0(uint64_t a1, char *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    while (1)
    {
      v6 = sub_2393C6E70(a1, 0x37E00000022);
      v7 = v6;
      if (v6)
      {
        break;
      }

      v8 = *(a1 + 40);
      v9 = *(a1 + 48) - v8;
      if (v3 >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v3;
      }

      if (a2)
      {
        memcpy(a2, v8, v10);
        a2 += v10;
        v8 = *(a1 + 40);
      }

      *(a1 + 40) = &v8[v10];
      *(a1 + 56) += v10;
      v3 -= v10;
      if (!v3)
      {
        v11 = 0;
        v7 = 0;
        return v7 | v11;
      }
    }

    v11 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v11 = 0;
    v7 = 0;
  }

  return v7 | v11;
}

unint64_t sub_2393C65A4(uint64_t a1, char *a2, unint64_t a3)
{
  v3 = *(a1 + 68);
  if (v3 == 0xFFFF || (v3 & 0x1Cu) - 12 > 7)
  {
    v5 = 0x1B600000000;
    v6 = 38;
  }

  else
  {
    v7 = *(a1 + 24);
    if (v7 + 1 <= a3)
    {
      a2[v7] = 0;
      v8 = sub_2393C6430(a1, a2, a3 - 1);
      v5 = v8 & 0xFFFFFFFF00000000;
      v6 = v8;
    }

    else
    {
      v5 = 0x1B900000000;
      v6 = 25;
    }
  }

  return v6 | v5;
}

unint64_t sub_2393C6628(uint64_t a1, void **a2, _DWORD *a3)
{
  v3 = *(a1 + 68);
  if (v3 == 0xFFFF || (v3 & 0x1Cu) - 12 > 7)
  {
    v5 = 0x1C300000000;
    v6 = 38;
  }

  else
  {
    v10 = sub_2393D52C4(*(a1 + 24));
    *a2 = v10;
    if (v10)
    {
      v11 = sub_2393C64D0(a1, v10, *(a1 + 24));
      v6 = v11;
      if (v11)
      {
        j__free(*a2);
        *a2 = 0;
        v5 = v11 & 0xFFFFFFFF00000000;
      }

      else
      {
        v5 = 0;
        *a3 = *(a1 + 24);
        *(a1 + 24) = 0;
      }
    }

    else
    {
      v5 = 0x1C700000000;
      v6 = 11;
    }
  }

  return v5 | v6;
}

uint64_t sub_2393C6704(uint64_t a1, char **a2)
{
  v2 = *(a1 + 68);
  if (v2 == 0xFFFF || (v2 & 0x1Cu) - 12 > 7)
  {
    v4 = 38;
    v5 = 474;
  }

  else
  {
    v7 = *(a1 + 24);
    if (v7 <= 0xFFFFFFFE)
    {
      v9 = sub_2393D52C4(v7 + 1);
      *a2 = v9;
      if (v9)
      {
        v10 = sub_2393C64D0(a1, v9, *(a1 + 24));
        v11 = v10;
        v5 = HIDWORD(v10);
        v12 = *a2;
        v4 = v11;
        if (v11)
        {
          j__free(v12);
          *a2 = 0;
        }

        else
        {
          v12[*(a1 + 24)] = 0;
          *(a1 + 24) = 0;
        }
      }

      else
      {
        v4 = 11;
        v5 = 481;
      }
    }

    else
    {
      v4 = 11;
      v5 = 477;
    }
  }

  return v4 | (v5 << 32);
}

uint64_t sub_2393C67F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 68);
  if (v2 == -1)
  {
    v3 = -1;
  }

  else
  {
    v3 = v2 & 0x1F;
  }

  if ((v3 - 21) > 2)
  {
    v4 = 0x20800000000;
    v5 = 3;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 40) = *(a1 + 40);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 56) = *(a1 + 56);
    v6 = *(a1 + 60);
    *(a2 + 68) = -1;
    *(a2 + 16) = 256;
    *(a2 + 24) = 0;
    *(a2 + 60) = v6;
    *(a2 + 64) = v3;
    *(a2 + 70) = 0;
    *a2 = *a1;
    *(a2 + 8) = *(a1 + 8);
    *(a1 + 70) = 1;
  }

  return v5 | v4;
}

unint64_t sub_2393C6898(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 70) == 1)
  {
    v4 = *(a1 + 68);
    if (v4 == -1)
    {
      v5 = -1;
    }

    else
    {
      v5 = v4 & 0x1F;
    }

    if (*(a2 + 64) == v5)
    {
      v6 = sub_2393C6970(a2);
      v7 = v6;
      if (v6)
      {
        v8 = v6 & 0xFFFFFFFF00000000;
      }

      else
      {
        v8 = 0;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 60) = *(a2 + 60);
        *(a1 + 68) = -1;
        *(a1 + 16) = 256;
        *(a1 + 24) = 0;
      }
    }

    else
    {
      v8 = 0x22200000000;
      v7 = 3;
    }
  }

  else
  {
    v8 = 0x21F00000000;
    v7 = 3;
  }

  return v8 | v7;
}

unint64_t sub_2393C6970(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 64);
  *(a1 + 70) = 0;
  while (1)
  {
    v4 = *(a1 + 68);
    v5 = v4 == -1 ? -1 : v4 & 0x1F;
    if (v5 == 24)
    {
      break;
    }

    if ((v5 - 21) > 2u)
    {
      goto LABEL_13;
    }

    ++v2;
    v5 = v5;
LABEL_12:
    *(a1 + 64) = v5;
LABEL_13:
    v6 = sub_2393C7180(a1);
    if (!v6)
    {
      v6 = sub_2393C6CF0(a1);
      if (!v6)
      {
        continue;
      }
    }

    v7 = v6 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v2)
  {
    if (--v2)
    {
      v5 = -2;
    }

    else
    {
      v5 = v3;
    }

    goto LABEL_12;
  }

  LODWORD(v6) = 0;
  v7 = 0;
  return v7 | v6;
}

uint64_t sub_2393C6A2C(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 68);
  if (v2 == -1)
  {
    v3 = -1;
  }

  else
  {
    v3 = v2 & 0x1F;
  }

  if ((v3 - 21) > 2)
  {
    v4 = 0x23600000000;
    v5 = 3;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    *a2 = *(a1 + 64);
    *(a1 + 64) = v3;
    *(a1 + 68) = -1;
    *(a1 + 16) = 256;
    *(a1 + 24) = 0;
    *(a1 + 70) = 0;
  }

  return v5 | v4;
}

unint64_t sub_2393C6A98(uint64_t a1, int a2)
{
  result = sub_2393C6970(a1);
  if (!result)
  {
    result = 0;
    *(a1 + 64) = a2;
    *(a1 + 68) = -1;
    *(a1 + 16) = 256;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t sub_2393C6AE0(uint64_t a1)
{
  v1 = sub_2393C6B34(a1);
  v2 = 0x25500000000;
  v3 = 43;
  v4 = v1 & 0xFFFFFFFF00000000;
  v5 = v1;
  if (v1 == 33)
  {
    v5 = 0;
    v4 = 0;
  }

  if (v1)
  {
    v3 = v5;
    v2 = v4;
  }

  return v2 | v3;
}

unint64_t sub_2393C6B34(uint64_t a1)
{
  v2 = sub_2393C6C04(a1);
  if (!v2)
  {
    v2 = sub_2393C6CF0(a1);
    if (!v2)
    {
      v5 = *(a1 + 68);
      v6 = v5 & 0x1F;
      if (v5 == 0xFFFF)
      {
        v6 = -1;
      }

      if (v6 == 24)
      {
        v3 = 0x26000000000;
        LODWORD(v2) = 33;
        return v2 | v3;
      }

      if ((v6 - 12) > 7u || v5 == 0xFFFF || (v5 & 0x1Cu) - 12 > 7 || !*(a1 + 24) || (v2 = sub_2393C6E70(a1, 0x26600000022), !v2))
      {
        v3 = 0;
        LODWORD(v2) = 0;
        return v2 | v3;
      }
    }
  }

  v3 = v2 & 0xFFFFFFFF00000000;
  return v2 | v3;
}

unint64_t sub_2393C6C04(uint64_t a1)
{
  v1 = *(a1 + 68);
  if (v1 == -1)
  {
    v2 = -1;
  }

  else
  {
    v2 = v1 & 0x1F;
  }

  if (v2 == 24)
  {
    v3 = 0x28B00000000;
    LODWORD(v4) = 33;
  }

  else
  {
    if ((v2 - 21) > 2u)
    {
      v4 = sub_2393C7180(a1);
      if (!v4)
      {
        LODWORD(v4) = 0;
        v3 = 0;
        *(a1 + 68) = -1;
        *(a1 + 16) = 256;
        *(a1 + 24) = 0;
        return v3 | v4;
      }
    }

    else
    {
      v6 = *(a1 + 64);
      *(a1 + 64) = v2;
      *(a1 + 68) = -1;
      *(a1 + 16) = 256;
      *(a1 + 24) = 0;
      *(a1 + 70) = 0;
      v4 = sub_2393C6970(a1);
      if (!v4)
      {
        v4 = 0;
        *(a1 + 64) = v6;
        *(a1 + 68) = -1;
        *(a1 + 16) = 256;
        *(a1 + 24) = 0;
      }
    }

    v3 = v4 & 0xFFFFFFFF00000000;
  }

  return v3 | v4;
}

unint64_t sub_2393C6CF0(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = sub_2393C6E70(a1, 0x2E800000021);
  if (!v2)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *v4;
      *(a1 + 68) = v5;
      v6 = v5 & 0x1F;
      if (v6 <= 0x18)
      {
        v7 = byte_2395C1DE1[v5 >> 5];
        if ((v6 - 20) < 0xF6u && (v5 & 0x1F) > 7)
        {
          v9 = 0;
        }

        else
        {
          v9 = (1 << (v5 & 3));
        }

        v15 = 0;
        v2 = sub_2393C64D0(a1, &v14, (v9 + v7 + 1));
        if (!v2)
        {
          __src = &v15;
          v10 = sub_2393C71CC(a1, v5 & 0xE0, &__src);
          *(a1 + 24) = 0;
          *(a1 + 16) = v10;
          memcpy((a1 + 24), __src, v9);
          if (v6 - 12 <= 7 && *(a1 + 28))
          {
            v3 = 0x31D00000000;
            LODWORD(v2) = 45;
            goto LABEL_18;
          }

          v2 = sub_2393C7300(a1);
        }

        goto LABEL_2;
      }

      v3 = 0x2F000000000;
    }

    else
    {
      v3 = 0x2E900000000;
    }

    LODWORD(v2) = 35;
    goto LABEL_18;
  }

LABEL_2:
  v3 = v2 & 0xFFFFFFFF00000000;
LABEL_18:
  v11 = *MEMORY[0x277D85DE8];
  return v2 | v3;
}

unint64_t sub_2393C6E70(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40;
  if (*(a1 + 40) != *(a1 + 48))
  {
    v3 = 0;
    LODWORD(v4) = 0;
    return v4 | v3;
  }

  v4 = a2;
  if (*(a1 + 56) == *(a1 + 60) || (v6 = *(a1 + 32)) == 0)
  {
LABEL_7:
    v3 = v4 & 0xFFFFFFFF00000000;
    return v4 | v3;
  }

  v11 = 0;
  v7 = (*(*v6 + 24))(v6, a1, v2, &v11);
  if (v7)
  {
    v4 = v7;
    goto LABEL_7;
  }

  if (!v11)
  {
    goto LABEL_7;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  v9 = *(a1 + 60) - *(a1 + 56);
  if (v9 >= v11)
  {
    v10 = v11;
  }

  else
  {
    v10 = v9;
  }

  *(a1 + 48) = *(a1 + 40) + v10;
  return v4 | v3;
}

uint64_t sub_2393C6F5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 68);
  v3 = v2 & 0x1F;
  if (v2 == 0xFFFF)
  {
    v3 = -1;
  }

  if (v3 == 24 || v2 == 0xFFFF && (v3 & 0xFE) != 0xA)
  {
    v4 = 0x26E00000000;
    v5 = 38;
  }

  else
  {
    v5 = 43;
    if (*(a1 + 16) == a2)
    {
      v5 = 0;
      v4 = 0;
    }

    else
    {
      v4 = 0x26F00000000;
    }
  }

  return v4 | v5;
}

unint64_t sub_2393C6FD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393C6B34(a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = *(a1 + 68);
    v7 = v6 & 0x1F;
    if (v6 == 0xFFFF)
    {
      v7 = -1;
    }

    if (v7 == 24 || v6 == 0xFFFF && (v7 & 0xFE) != 0xA)
    {
      v5 = 0x26E00000000;
      LODWORD(v4) = 38;
    }

    else if (*(a1 + 16) == a2)
    {
      LODWORD(v4) = 0;
      v5 = 0;
    }

    else
    {
      v5 = 0x26F00000000;
      LODWORD(v4) = 43;
    }
  }

  return v5 & 0xFFFFFFFF00000000 | v4;
}

uint64_t sub_2393C7078(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 68);
  v4 = v3 & 0x1F;
  if (v3 == 0xFFFF)
  {
    v4 = -1;
  }

  if (v4 == 24)
  {
    v4 = -1;
  }

  else if ((v4 & 0xFE) == 0xA)
  {
    v4 = 10;
  }

  else
  {
    v4 = v4;
    if (v3 != 0xFFFF && v4 < 20)
    {
      v4 = v3 & 0x1C;
    }
  }

  if (v4 == a2)
  {
    v5 = 43;
    if (*(a1 + 16) == a3)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v6 = 0x27D00000000;
    }
  }

  else
  {
    v6 = 0x27C00000000;
    v5 = 38;
  }

  return v6 | v5;
}

unint64_t sub_2393C7114(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_2393C6B34(a1);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v6 = sub_2393C7078(a1, a2, a3);
    v7 = v6 & 0xFFFFFFFF00000000;
    if (!v6)
    {
      LODWORD(v6) = 0;
      v7 = 0;
    }
  }

  return v7 | v6;
}

unint64_t sub_2393C7180(uint64_t a1)
{
  v1 = *(a1 + 68);
  if (v1 == 0xFFFF || (v1 & 0x1Cu) - 12 > 7)
  {
    return 0;
  }

  else
  {
    return sub_2393C64D0(a1, 0, *(a1 + 24));
  }
}

uint64_t sub_2393C71CC(int *a1, int a2, uint64_t *a3)
{
  v4 = (((a2 ^ 0x80u) >> 5) | (8 * a2));
  result = 256;
  if (v4 <= 2)
  {
    if (((a2 ^ 0x80u) >> 5) | (8 * a2))
    {
      if (v4 != 1)
      {
        if (v4 != 2)
        {
          return result;
        }

        v6 = *a3;
        v7 = **a3;
        *a3 += 2;
        v8 = *(v6 + 1);
        *a3 = (v6 + 1);
        v9 = *(v6 + 2);
        v10 = (v6 + 6);
        goto LABEL_16;
      }

      v13 = *a1;
      if (v13 != -1)
      {
        v14 = *a3 + 4;
        v15 = **a3;
        goto LABEL_22;
      }
    }

    else
    {
      v13 = *a1;
      if (v13 != -1)
      {
        v14 = *a3 + 2;
        v15 = **a3;
LABEL_22:
        *a3 = v14;
        return v15 | (~v13 << 32);
      }
    }

    return 257;
  }

  if ((((a2 ^ 0x80u) >> 5) | (8 * a2)) > 5u)
  {
    if (v4 == 6)
    {
      v11 = *a3 + 2;
      v12 = **a3;
    }

    else
    {
      if (v4 != 7)
      {
        return result;
      }

      v11 = *a3 + 4;
      v12 = **a3;
    }

    *a3 = v11;
    return *&v12 | 0xFFFFFFFF00000000;
  }

  if (v4 == 3)
  {
    v16 = *a3;
    v7 = **a3;
    *a3 += 2;
    v8 = *(v16 + 1);
    *a3 = (v16 + 1);
    v9 = v16[1];
    v10 = v16 + 2;
LABEL_16:
    *a3 = v10;
    return ((v7 << 48) | (v8 << 32) | v9) ^ 0xFFFFFFFF00000000;
  }

  if (v4 == 5)
  {
    return *(*a3)++;
  }

  return result;
}

uint64_t sub_2393C7300(uint64_t a1)
{
  v1 = *(a1 + 68);
  if (v1 == -1)
  {
    v2 = -1;
  }

  else
  {
    v2 = v1 & 0x1F;
  }

  if (v2 != 24)
  {
    v5 = *(a1 + 16);
    if (v5 == 257)
    {
      v3 = 0x32E00000000;
      v4 = 37;
      return v3 | v4;
    }

    v6 = *(a1 + 64);
    v3 = 0x34100000000;
    v4 = 3;
    if (v6 <= 20)
    {
      if (v6 != -2)
      {
        if (v6 != -1)
        {
          return v3 | v4;
        }

        if (v5 < 0x100)
        {
          v3 = 0x33300000000;
          goto LABEL_8;
        }
      }
    }

    else
    {
      switch(v6)
      {
        case 21:
          if (v5 == 256)
          {
            v3 = 0x33700000000;
            goto LABEL_8;
          }

          break;
        case 22:
          if (v5 != 256)
          {
            v3 = 0x33B00000000;
            goto LABEL_8;
          }

          break;
        case 23:
          break;
        default:
          return v3 | v4;
      }
    }

    if ((v2 - 12) <= 7u && (*(a1 + 60) - *(a1 + 56)) < *(a1 + 24))
    {
      v3 = 0x35100000000;
      v4 = 34;
      return v3 | v4;
    }

LABEL_27:
    v4 = 0;
    v3 = 0;
    return v3 | v4;
  }

  if (*(a1 + 64) == -1)
  {
    v3 = 0x32700000000;
    v4 = 35;
    return v3 | v4;
  }

  if (*(a1 + 16) == 256)
  {
    goto LABEL_27;
  }

  v3 = 0x32900000000;
LABEL_8:
  v4 = 36;
  return v3 | v4;
}

uint64_t sub_2393C7438(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 68);
  v3 = v2 & 0x1F;
  if (v2 == 0xFFFF)
  {
    v3 = -1;
  }

  if (v3 > 24)
  {
    v9 = 0x3B200000000;
    v10 = 35;
  }

  else
  {
    v4 = byte_2395C1DE1[v2 >> 5];
    v5 = (v3 - 20) >= 0xF6u || v3 <= 7;
    v6 = 1 << (v3 & 3);
    if (v5)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 1;
    }

    v8 = v7 + v4;
    if ((v7 + v4) > 0xFF)
    {
      v9 = 0x3C400000000;
      v10 = 172;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      *a2 = v8;
    }
  }

  return v10 | v9;
}

unint64_t sub_2393C74D8(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 2);
  v16 = *(a1 + 1);
  v17 = v5;
  v18 = *(a1 + 6);
  v6 = *(a1 + 7);
  v21 = *(a1 + 34);
  v20 = a1[16];
  v22 = *(a1 + 70);
  v14 = *a1;
  v15 = *(a1 + 1);
  v19 = v6;
  while (1)
  {
    v7 = sub_2393C6B34(&v14);
    v8 = v7;
    if (v7)
    {
      break;
    }

    v9 = v21;
    v10 = v21 & 0x1F;
    if (v21 == 0xFFFF)
    {
      v10 = -1;
    }

    if (v10 == 24 || v21 == 0xFFFF && (v10 & 0xFE) != 0xA)
    {
      v7 = 0x3DD00000000;
      v8 = 35;
      return v7 | v8;
    }

    if (v16 == a2)
    {
      v8 = 0;
      v11 = *(&v16 + 1);
      v12 = v15;
      *(a3 + 16) = a2;
      *(a3 + 24) = v11;
      *(a3 + 48) = v18;
      *(a3 + 68) = v9;
      *(a3 + 64) = v20;
      *(a3 + 70) = v22;
      *a3 = v14;
      *(a3 + 32) = v17;
      *(a3 + 56) = v19;
      *(a3 + 8) = v12;
      return v7 | v8;
    }
  }

  v7 &= 0xFFFFFFFF00000000;
  return v7 | v8;
}

unint64_t sub_2393C7614(uint64_t a1, void *a2)
{
  if (*(a1 + 64) == -1)
  {
    return 0x3F000000003;
  }

  v11 = v2;
  v12 = v3;
  v5 = 0;
  v6 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v6;
  v10 = *(a1 + 64);
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  while (1)
  {
    result = sub_2393C6B34(v9);
    if (result)
    {
      break;
    }

    ++v5;
  }

  if (result == 33)
  {
    result = 0;
    *a2 = v5;
  }

  return result;
}

unint64_t sub_2393C76AC(uint64_t a1, _OWORD *a2)
{
  if ((*(a1 + 68) & 0x1C) == 0x10)
  {
    return sub_2393C60CC(a1, a2);
  }

  else
  {
    return 0x41600000026;
  }
}

unint64_t sub_2393C76F4(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t), uint64_t a3, int a4)
{
  if (!a2)
  {
    return 0xA60000002FLL;
  }

  sub_2393C5AAC(v9);
  sub_2393C5BDC(v9, a1);
  return sub_2393C7778(v9, 0, a2, a3, a4);
}

unint64_t sub_2393C7778(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t), uint64_t a4, int a5)
{
  if (a2 <= 9)
  {
    v17 = v5;
    v18 = v6;
    if (sub_2393C5C40(a1) != -1)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v8 = sub_2393C6B34(a1);
      if (v8)
      {
        break;
      }

LABEL_7:
      v15 = sub_2393C5C40(a1);
      v8 = a3(a1, a2, a4);
      if (!v8)
      {
        if (!a5 || (v15 - 21) > 2)
        {
          continue;
        }

        v16 = 0;
        v8 = sub_2393C6A2C(a1, &v16);
        if (!v8)
        {
          v8 = sub_2393C7778(a1, a2 + 1, a3, a4, 1);
          if (v8 == 33 || !v8)
          {
            v8 = sub_2393C6A98(a1, v16);
            if (!v8)
            {
              continue;
            }
          }
        }
      }

      break;
    }

    v7 = v8 & 0xFFFFFFFF00000000;
  }

  else
  {
    v7 = 0x5000000000;
    LODWORD(v8) = 5;
  }

  return v8 | v7;
}

unint64_t sub_2393C7884(uint64_t a1, void *a2)
{
  *a2 = 0;
  result = sub_2393C76F4(a1, sub_2393C790C, a2, 1);
  if (result == 33)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2393C78C8(uint64_t a1, void *a2, int a3)
{
  *a2 = 0;
  result = sub_2393C76F4(a1, sub_2393C790C, a2, a3);
  if (result == 33)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2393C790C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = 0;
    ++*a3;
  }

  else
  {
    v3 = 0xBF00000000;
    v4 = 47;
  }

  return v4 | v3;
}

uint64_t sub_2393C7944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  if (sub_2393C76F4(a1, sub_2393C79F8, v4, 1) == 10)
  {
    return 0;
  }

  else
  {
    return 0x14500000076;
  }
}

uint64_t sub_2393C79A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5[0] = a2;
  v5[1] = a3;
  if (sub_2393C76F4(a1, sub_2393C79F8, v5, a4) == 10)
  {
    return 0;
  }

  else
  {
    return 0x14500000076;
  }
}

uint64_t sub_2393C79F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (**a3 == *(a1 + 16))
    {
      sub_2393C5BDC(*(a3 + 8), a1);
      v3 = 0x10F00000000;
      v4 = 10;
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }
  }

  else
  {
    v3 = 0x10800000000;
    v4 = 47;
  }

  return v4 | v3;
}

void *sub_2393C7A6C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

uint64_t sub_2393C7A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a4;
  v5[1] = a2;
  v5[2] = a3;
  if (sub_2393C76F4(a1, sub_2393C7B38, v5, 1) == 10)
  {
    return 0;
  }

  else
  {
    return 0x1AC00000076;
  }
}

uint64_t sub_2393C7AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6[0] = a4;
  v6[1] = a2;
  v6[2] = a3;
  if (sub_2393C76F4(a1, sub_2393C7B38, v6, a5) == 10)
  {
    return 0;
  }

  else
  {
    return 0x1AC00000076;
  }
}

uint64_t sub_2393C7B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8))(a1, a2, *(a3 + 16));
  if (v5 == 10)
  {
    sub_2393C5BDC(*a3, a1);
  }

  return v5;
}

double sub_2393C7B90(uint64_t a1)
{
  *a1 = -1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0x1000000FFFFFFFFLL;
  return result;
}

double sub_2393C7BB8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a2;
  if (a3 >= 0xFFFFFFFF)
  {
    v3 = -1;
  }

  else
  {
    v3 = a3;
  }

  *(a1 + 40) = v3;
  *(a1 + 44) = 0;
  *(a1 + 48) = v3;
  result = NAN;
  *(a1 + 52) = 0xFFFFFFFF00000000;
  *a1 = -1;
  *(a1 + 60) = 16798385;
  return result;
}

unint64_t sub_2393C7BF0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_2393C7BB8(a1, 0, a3);
  *(a1 + 60) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *(a1 + 40) = 0;
  v7 = (*(*a2 + 32))(a2, a1, a1 + 24, a1 + 40, v5);
  v8 = v7;
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFF00000000;
  }

  else if (*v6)
  {
    v8 = 0;
    v9 = 0;
    *(a1 + 32) = *v6;
    *(a1 + 60) = 21169;
  }

  else
  {
    v9 = 0x6900000000;
    v8 = 172;
  }

  return v9 | v8;
}

unint64_t sub_2393C7CB8(uint64_t a1)
{
  if (*(a1 + 60) == 21169)
  {
    if (*(a1 + 62))
    {
      v2 = 0x7700000000;
      v3 = 39;
    }

    else
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = *(a1 + 32) - *(a1 + 24);
        v4 = (*(*v4 + 48))(v4);
      }

      v2 = v4 & 0xFFFFFFFF00000000;
      v3 = v4;
    }
  }

  else
  {
    v2 = 0x7300000000;
    v3 = 3;
  }

  return v3 | v2;
}

uint64_t sub_2393C7D60(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 60) == 21169)
  {
    v4 = *(a1 + 40);
    if (v4 >= a2)
    {
      v7 = *(a1 + 16);
      if (v7)
      {
        if (!(*(*v7 + 56))(v7))
        {
          v5 = 0x8C00000000;
          v6 = 3;
          return v6 | v5;
        }

        v4 = *(a1 + 40);
      }

      v5 = 0;
      v6 = 0;
      *(a1 + 52) += a2;
      *(a1 + 40) = v4 - a2;
    }

    else
    {
      v5 = 0x8800000000;
      v6 = 11;
    }
  }

  else
  {
    v5 = 0x8700000000;
    v6 = 3;
  }

  return v6 | v5;
}

unint64_t sub_2393C7E38(uint64_t a1, unint64_t a2, int a3)
{
  if (a3)
  {
    v4 = 9;
  }

  else
  {
    v4 = 8;
  }

  return sub_2393C7E54(a1, v4, a2, 0);
}

unint64_t sub_2393C7E54(uint64_t a1, int a2, unint64_t a3, unint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 60) != 21169)
  {
    v5 = 0x2A300000000;
    v6 = 3;
    goto LABEL_37;
  }

  if (*(a1 + 62))
  {
    v5 = 0x2A400000000;
    v6 = 39;
    goto LABEL_37;
  }

  v8 = a3;
  v9 = a2;
  v21 = __src;
  v22 = xmmword_2395C1DF0;
  if (!HIDWORD(a3))
  {
    if (a3 > 0xFF)
    {
      if (a2 != 24)
      {
        v5 = 0x2B900000000;
        v6 = 36;
        v12 = *(a1 + 56) + 1;
        if (v12 > 0x18 || ((1 << v12) & 0x1800001) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      if ((*(a1 + 56) | 2) != 0x17)
      {
        v5 = 0x2B000000000;
        v6 = 36;
        goto LABEL_37;
      }

      sub_2393D5D3C(&v21, a2 | 0x20);
      LOBYTE(a2) = v8;
    }

    sub_2393D5D3C(&v21, a2);
    goto LABEL_32;
  }

  v5 = 0x2C300000000;
  v6 = 36;
  v10 = *(a1 + 56) + 1;
  if (v10 > 0x18 || ((1 << v10) & 0x1400001) == 0)
  {
    goto LABEL_37;
  }

  if (HIDWORD(a3) != 0xFFFFFFFF)
  {
    if (*a1 != ~HIDWORD(a3))
    {
      v14 = ~HIDWORD(a3) >> 16;
      v15 = ~WORD2(a3);
      if (WORD1(a3))
      {
        sub_2393D5D3C(&v21, a2 | 0xE0);
        sub_2393D5D60(&v21, v14, 2);
        sub_2393D5D60(&v21, v15, 2);
        goto LABEL_25;
      }

      sub_2393D5D3C(&v21, a2 | 0xC0);
      sub_2393D5D60(&v21, v14, 2);
      sub_2393D5D60(&v21, v15, 2);
LABEL_30:
      v16 = v8;
      v17 = 2;
      goto LABEL_31;
    }

    if (WORD1(a3))
    {
      v11 = a2 | 0xA0;
      goto LABEL_21;
    }

    v13 = a2 | 0x80;
LABEL_28:
    sub_2393D5D3C(&v21, v13);
    goto LABEL_30;
  }

  if (!WORD1(a3))
  {
    v13 = a2 | 0x40;
    goto LABEL_28;
  }

  v11 = a2 | 0x60;
LABEL_21:
  sub_2393D5D3C(&v21, v11);
LABEL_25:
  v16 = v8;
  v17 = 4;
LABEL_31:
  sub_2393D5D60(&v21, v16, v17);
LABEL_32:
  if (v9 < 8 || (v9 - 20) >= 0xF6u)
  {
    sub_2393D5D60(&v21, a4, (1 << (v9 & 3)));
  }

  if (v22 < *(&v22 + 1))
  {
    sub_23952FBF0();
  }

  v18 = sub_2393C8778(a1, __src, DWORD2(v22));
  v5 = v18 & 0xFFFFFFFF00000000;
  v6 = v18;
LABEL_37:
  v19 = *MEMORY[0x277D85DE8];
  return v6 | v5;
}

unint64_t sub_2393C8154(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (HIDWORD(a3))
  {
    v3 = 7;
  }

  else
  {
    v3 = 6;
  }

  if (a3 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 5;
  }

  if (a3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  return sub_2393C7E54(a1, v5, a2, a3);
}

unint64_t sub_2393C818C(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (a3 < 0x100)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  return sub_2393C7E54(a1, v4, a2, a3);
}

unint64_t sub_2393C81A8(uint64_t a1, unint64_t a2, unsigned int a3, int a4)
{
  if (a3 < 0x100)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  if (a4)
  {
    v6 = 5;
  }

  else
  {
    v6 = v5;
  }

  return sub_2393C7E54(a1, v6, a2, a3);
}

unint64_t sub_2393C81D4(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (a3 < 0x10000)
  {
    v4 = 5;
  }

  else
  {
    v4 = 6;
  }

  if (a3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  return sub_2393C7E54(a1, v5, a2, a3);
}

unint64_t sub_2393C81FC(uint64_t a1, unint64_t a2, unsigned int a3, int a4)
{
  if (a3 < 0x10000)
  {
    v5 = 5;
  }

  else
  {
    v5 = 6;
  }

  if (a3 < 0x100)
  {
    v5 = 4;
  }

  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = v5;
  }

  return sub_2393C7E54(a1, v6, a2, a3);
}

unint64_t sub_2393C8234(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if (HIDWORD(a3))
  {
    v4 = 7;
  }

  else
  {
    v4 = 6;
  }

  if (a3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 5;
  }

  if (a3 >= 0x100)
  {
    v6 = v5;
  }

  else
  {
    v6 = 4;
  }

  if (a4)
  {
    v7 = 7;
  }

  else
  {
    v7 = v6;
  }

  return sub_2393C7E54(a1, v7, a2, a3);
}

unint64_t sub_2393C8284(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 == a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if (a3 == a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 == a3)
  {
    v4 = 0;
  }

  return sub_2393C7E54(a1, v4, a2, a3);
}

unint64_t sub_2393C82B4(uint64_t a1, unint64_t a2, int a3, int a4)
{
  if (a4)
  {
    return sub_2393C7E54(a1, 0, a2, a3);
  }

  else
  {
    return sub_2393C8284(a1, a2, a3);
  }
}

unint64_t sub_2393C82D8(uint64_t a1, unint64_t a2, int a3, int a4)
{
  if (a4)
  {
    return sub_2393C7E54(a1, 1, a2, a3);
  }

  else
  {
    return sub_2393C8284(a1, a2, a3);
  }
}

unint64_t sub_2393C82FC(uint64_t a1, unint64_t a2, unsigned int a3, int a4)
{
  if (a4)
  {
    return sub_2393C7E54(a1, 2, a2, a3);
  }

  else
  {
    return sub_2393C8284(a1, a2, a3);
  }
}

unint64_t sub_2393C8320(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  if (a4)
  {
    return sub_2393C7E54(a1, 3, a2, a3);
  }

  else
  {
    return sub_2393C8284(a1, a2, a3);
  }
}

unint64_t sub_2393C8364(uint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  if (HIDWORD(a4))
  {
    return 0x11A00000004;
  }

  else
  {
    return sub_2393C83C0(a1, 16, a2, a3, a4);
  }
}

unint64_t sub_2393C83C0(uint64_t a1, char a2, unint64_t a3, char *a4, unsigned int a5)
{
  if (*(a1 + 60) == 21169)
  {
    if ((a2 & 3) != 0)
    {
      v5 = 0x30900000000;
      LODWORD(v6) = 47;
    }

    else
    {
      if (a5 < 0x10000)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      if (a5 < 0x100)
      {
        v10 = 0;
      }

      v6 = sub_2393C7E54(a1, (v10 | a2), a3, a5);
      if (!v6)
      {
        v6 = sub_2393C8778(a1, a4, a5);
      }

      v5 = v6 & 0xFFFFFFFF00000000;
    }
  }

  else
  {
    v5 = 0x30500000000;
    LODWORD(v6) = 3;
  }

  return v5 | v6;
}

unint64_t sub_2393C847C(uint64_t a1, unint64_t a2, char *__s1)
{
  if (__s1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v7 = strnlen(__s1, v4);
      if (HIDWORD(v7))
      {
        v8 = 0x13100000000;
        v9 = 47;
      }

      else if (v4 == v7)
      {
        v8 = 0x13700000000;
        v9 = 25;
      }

      else
      {
        v10 = sub_2393C8548(a1, a2, __s1, v7);
        v8 = v10 & 0xFFFFFFFF00000000;
        v9 = v10;
      }
    }

    else
    {
      v8 = 0x12800000000;
      v9 = 3;
    }
  }

  else
  {
    v8 = 0x12600000000;
    v9 = 47;
  }

  return v9 | v8;
}

unint64_t sub_2393C8548(uint64_t a1, unint64_t a2, char *a3, unsigned int a4)
{
  sub_238DB9BD8(v12, a3, a4);
  if (sub_2393D8BFC(v12[0], v12[1]))
  {
    if (a4 && !a3[a4 - 1])
    {
      v9 = 0x14D00000000;
      v10 = 21;
    }

    else
    {
      v8 = sub_2393C83C0(a1, 12, a2, a3, a4);
      v9 = v8 & 0xFFFFFFFF00000000;
      v10 = v8;
    }
  }

  else
  {
    v9 = 0x14800000000;
    v10 = 18;
  }

  return v10 | v9;
}

unint64_t sub_2393C85FC(uint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  if (HIDWORD(a4))
  {
    return 0x1580000002FLL;
  }

  else
  {
    return sub_2393C8548(a1, a2, a3, a4);
  }
}

uint64_t sub_2393C8660(uint64_t a1, unint64_t a2, const char *a3, va_list a4)
{
  v7 = vsnprintf(0, 0, a3, a4);
  if (v7 < 0)
  {
    return 0x1890000002FLL;
  }

  v8 = v7;
  if (v7 < 0x10000)
  {
    v9 = 13;
  }

  else
  {
    v9 = 14;
  }

  if (v7 >= 0x100)
  {
    v10 = v9;
  }

  else
  {
    v10 = 12;
  }

  v11 = sub_2393C7E54(a1, v10, a2, v7);
  if (!v11)
  {
    if (*(a1 + 44) + v8 <= *(a1 + 48))
    {
      v12 = sub_2393D52C4(v8 + 1);
      if (v12)
      {
        v13 = v12;
        vsnprintf(v12, v8 + 1, a3, a4);
        v11 = sub_2393C8778(a1, v13, v8);
        j__free(v13);
      }

      else
      {
        return 0x1A50000000BLL;
      }
    }

    else
    {
      return 0x19800000019;
    }
  }

  return v11;
}

unint64_t sub_2393C8778(uint64_t a1, char *__src, unsigned int a3)
{
  if (*(a1 + 60) == 21169)
  {
    v3 = a3;
    if (*(a1 + 44) + a3 <= *(a1 + 48))
    {
      if (a3)
      {
        v9 = (a1 + 40);
        v8 = *(a1 + 40);
        v6 = 11;
        do
        {
          if (v8)
          {
            v10 = *(a1 + 32);
          }

          else
          {
            v11 = *(a1 + 16);
            if (!v11)
            {
              v5 = 0x32800000000;
              return v5 | v6;
            }

            if ((*(a1 + 32) - *(a1 + 24)) >> 32)
            {
              v5 = 0x32A00000000;
              goto LABEL_5;
            }

            v12 = (*(*v11 + 48))(v11, a1);
            if (v12 || (v12 = (*(**(a1 + 16) + 40))(*(a1 + 16), a1, a1 + 24, a1 + 40), v12))
            {
              v5 = v12 & 0xFFFFFFFF00000000;
              v6 = v12;
              return v5 | v6;
            }

            v8 = *v9;
            if (!*v9)
            {
              v5 = 0x32E00000000;
              return v5 | v6;
            }

            v10 = *(a1 + 24);
            *(a1 + 32) = v10;
            v13 = *(a1 + 48) - *(a1 + 44);
            if (v8 > v13)
            {
              *v9 = v13;
              v8 = v13;
            }
          }

          if (v3 >= v8)
          {
            v14 = v8;
          }

          else
          {
            v14 = v3;
          }

          memmove(v10, __src, v14);
          *(a1 + 32) += v14;
          v8 = *(a1 + 40) - v14;
          v15 = *(a1 + 44) + v14;
          *(a1 + 40) = v8;
          *(a1 + 44) = v15;
          __src += v14;
          v3 -= v14;
        }

        while (v3);
      }

      v6 = 0;
      v5 = 0;
    }

    else
    {
      v5 = 0x32200000000;
      v6 = 25;
    }
  }

  else
  {
    v5 = 0x32100000000;
LABEL_5:
    v6 = 3;
  }

  return v5 | v6;
}

unint64_t sub_2393C8964(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = sub_2393C5C98(a3);
  v7 = *(a3 + 24);
  sub_2393C5AAC(v16);
  v8 = 0x1CC00000000;
  LODWORD(v9) = 3;
  if (v6 != 24 && v6 != 255)
  {
    sub_2393C5BDC(v16, a3);
    v9 = sub_2393C6C04(a3);
    if (v9 || (v10 = *(a3 + 56), v11 = v16[14], v9 = sub_2393C7E54(a1, v6, a2, v7), v9))
    {
LABEL_5:
      v8 = v9 & 0xFFFFFFFF00000000;
    }

    else
    {
      v14 = v10 - v11;
      while (v14)
      {
        if (v14 >= 0x10)
        {
          v15 = 16;
        }

        else
        {
          v15 = v14;
        }

        v9 = sub_2393C64D0(v16, __src, v15);
        if (!v9)
        {
          v9 = sub_2393C8778(a1, __src, v15);
          v14 -= v15;
          if (!v9)
          {
            continue;
          }
        }

        goto LABEL_5;
      }

      LODWORD(v9) = 0;
      v8 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8 | v9;
}

unint64_t sub_2393C8AA4(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 60) == 21169)
  {
    if ((a3 - 21) > 2)
    {
      v10 = 0x1EF00000000;
      v9 = 38;
    }

    else
    {
      if (*(a1 + 63) == 1)
      {
        v7 = *(a1 + 48);
        if (!v7)
        {
          v10 = 0x1F300000000;
          v9 = 25;
          return v10 | v9;
        }

        *(a1 + 48) = v7 - 1;
      }

      v8 = sub_2393C7E54(a1, a3, a2, 0);
      v9 = v8;
      if (v8)
      {
        if (*(a1 + 63) == 1)
        {
          ++*(a1 + 48);
        }

        v10 = v8 & 0xFFFFFFFF00000000;
      }

      else
      {
        v10 = 0;
        *(a4 + 16) = *(a1 + 16);
        *(a4 + 24) = *(a1 + 24);
        *(a4 + 32) = *(a1 + 32);
        *(a4 + 40) = *(a1 + 40);
        *(a4 + 44) = 0;
        *(a4 + 48) = *(a1 + 48) - *(a1 + 44);
        *(a4 + 56) = a3;
        *(a4 + 62) = 0;
        *(a4 + 63) = *(a1 + 63);
        *a4 = *a1;
        *(a4 + 60) = 21169;
        *(a1 + 62) = 1;
      }
    }
  }

  else
  {
    v10 = 0x1EC00000000;
    v9 = 3;
  }

  return v10 | v9;
}

unint64_t sub_2393C8BE8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 60) != 21169)
  {
    v2 = 0x21700000000;
LABEL_7:
    v3 = 3;
    return v3 | v2;
  }

  if ((*(a2 + 56) - 21) > 2)
  {
    v2 = 0x21A00000000;
    goto LABEL_7;
  }

  if (*(a2 + 62))
  {
    v2 = 0x21D00000000;
    v3 = 39;
  }

  else
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 44) += *(a2 + 44);
    if (*(a1 + 63) == 1)
    {
      ++*(a1 + 48);
    }

    *(a1 + 62) = 0;
    sub_2393C7BB8(a2, 0, 0);
    v6 = sub_2393C7E54(a1, 24, 0x100uLL, 0);
    v2 = v6 & 0xFFFFFFFF00000000;
    v3 = v6;
  }

  return v3 | v2;
}

unint64_t sub_2393C8CE0(uint64_t a1, unint64_t a2, int a3, _DWORD *a4)
{
  if (*(a1 + 60) == 21169)
  {
    if ((a3 - 21) > 2)
    {
      v10 = 0x23700000000;
      v9 = 38;
    }

    else
    {
      if (*(a1 + 63) == 1)
      {
        v7 = *(a1 + 48);
        if (!v7)
        {
          v10 = 0x23B00000000;
          v9 = 25;
          return v10 | v9;
        }

        *(a1 + 48) = v7 - 1;
      }

      v8 = sub_2393C7E54(a1, a3, a2, 0);
      v9 = v8;
      if (v8)
      {
        if (*(a1 + 63) == 1)
        {
          ++*(a1 + 48);
        }

        v10 = v8 & 0xFFFFFFFF00000000;
      }

      else
      {
        v10 = 0;
        *a4 = *(a1 + 56);
        *(a1 + 56) = a3;
        *(a1 + 62) = 0;
      }
    }
  }

  else
  {
    v10 = 0x23400000000;
    v9 = 3;
  }

  return v10 | v9;
}

unint64_t sub_2393C8DE0(uint64_t a1, int a2)
{
  if (*(a1 + 60) != 21169)
  {
    v3 = 0x25400000000;
LABEL_8:
    v4 = 3;
    return v4 | v3;
  }

  if ((*(a1 + 56) - 21) > 2)
  {
    v3 = 0x25700000000;
    goto LABEL_8;
  }

  *(a1 + 56) = a2;
  if (*(a1 + 63) == 1)
  {
    ++*(a1 + 48);
  }

  v2 = sub_2393C7E54(a1, 24, 0x100uLL, 0);
  v3 = v2 & 0xFFFFFFFF00000000;
  v4 = v2;
  return v4 | v3;
}

unint64_t sub_2393C8E6C(uint64_t a1, unint64_t a2, int a3, char *a4, unsigned int a5)
{
  if ((a3 - 21) > 2)
  {
    v9 = 0x26400000000;
    LODWORD(v8) = 47;
  }

  else
  {
    v8 = sub_2393C7E54(a1, a3, a2, 0);
    if (!v8)
    {
      v8 = sub_2393C8778(a1, a4, a5);
    }

    v9 = v8 & 0xFFFFFFFF00000000;
  }

  return v9 | v8;
}

unint64_t sub_2393C8F00(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 60) == 21169)
  {
    v15 = v3;
    v16 = v4;
    if (*(a3 + 32))
    {
      v6 = 0x27A00000000;
      v7 = 47;
    }

    else
    {
      v14 = 0;
      v10 = sub_2393C5C40(a3);
      v11 = sub_2393C6A2C(a3, &v14);
      v7 = v11;
      if (!v11)
      {
        v12 = *(a3 + 40);
        v11 = sub_2393C6A98(a3, v14);
        v7 = v11;
        if (!v11)
        {
          v11 = sub_2393C8E6C(a1, a2, v10, v12, *(a3 + 40) - v12);
          v7 = v11;
        }
      }

      v6 = v11 & 0xFFFFFFFF00000000;
    }
  }

  else
  {
    v6 = 0x27600000000;
    v7 = 3;
  }

  return v6 | v7;
}

uint64_t sub_2393C8FE8(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  if (*(a1 + 60) != 21169)
  {
    return 0x29200000003;
  }

  v18 = v4;
  v19 = v5;
  sub_2393C5AAC(v14);
  sub_2393C5ADC(v14, a3, a4);
  v10 = sub_2393C6B34(v14);
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFF00000000;
  }

  else
  {
    v13 = sub_2393C5C40(v14);
    v10 = sub_2393C8E6C(a1, a2, v13, v15, v17 - v16);
    v11 = v10 & 0xFFFFFFFF00000000;
    if (!v10)
    {
      LODWORD(v10) = 0;
      v11 = 0;
    }
  }

  return v11 | v10;
}

BOOL sub_2393C90D0(char *a1, size_t a2, int a3, uint64_t a4)
{
  v4 = a3 & 0xFF000700;
  if ((a3 & 0xFF000700) == 0)
  {
    if ((a3 - 1) > 0xE0)
    {
      v5 = 0;
    }

    else
    {
      v5 = off_278A75CB8[a3 - 1];
    }

    sub_2393C9264(a1, a2, "CHIP", a3, a4, v5);
  }

  return v4 == 0;
}

char *sub_2393C9138()
{
  v2 = off_2819B7828();

  return sub_2393C9178(v3, v0, v1, v2);
}

char *sub_2393C9178(uint64_t a1, const char *a2, int a3, char *__str)
{
  v7 = 256;
  v8 = __str;
  if (a3 && a2)
  {
    v9 = snprintf(__str, 0x100uLL, "%s:%u: ", a2, HIDWORD(a1));
    if (v9 >= 256)
    {
      v10 = 256;
    }

    else
    {
      v10 = v9;
    }

    v8 = &__str[v10];
    v7 = 256 - v10;
  }

  if (a1)
  {
    v11 = qword_27DF77730;
    if (qword_27DF77730)
    {
      while (((*v11)(v8, v7, a1, a2) & 1) == 0)
      {
        v11 = *(v11 + 8);
        if (!v11)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      snprintf(v8, v7, "%s%sError 0x%08X%s%s");
    }
  }

  else
  {
    snprintf(v8, v7, "Success");
  }

  return __str;
}

uint64_t sub_2393C9264(char *a1, size_t __size, const char *a3, int a4, uint64_t a5, const char *a6)
{
  v6 = "";
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = "";
  }

  v8 = " ";
  if (!a3)
  {
    v8 = "";
  }

  if (a6)
  {
    v9 = a6;
  }

  else
  {
    v9 = "";
  }

  if (a6)
  {
    v6 = ": ";
  }

  return snprintf(a1, __size, "%s%sError 0x%08X%s%s", v7, v8, a4, v6, v9);
}

void *sub_2393C92CC(void *result)
{
  if (qword_27DF77730)
  {
    v1 = qword_27DF77730;
    while (*v1 != *result)
    {
      v1 = v1[1];
      if (!v1)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result[1] = qword_27DF77730;
    qword_27DF77730 = result;
  }

  return result;
}

uint64_t sub_2393C9300(uint64_t result)
{
  v1 = qword_27DF77730;
  if (qword_27DF77730)
  {
    v2 = &qword_27DF77730;
    do
    {
      while (v1 != result)
      {
        v2 = (v1 + 8);
        v1 = *(v1 + 8);
        if (!v1)
        {
          return result;
        }
      }

      v1 = *(result + 8);
      *v2 = v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_2393C9340(unint64_t a1)
{
  v11 = 0;
  if (*a1)
  {
    v2 = "src/ble/BLEEndPoint.cpp";
    v3 = 105;
    LODWORD(v4) = 3;
LABEL_3:
    (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC168, a1);
    *(a1 + 157) &= ~1u;
    v5 = v4;
    sub_2393C97B4(a1, 2, v4 | (v3 << 32), v2);
    goto LABEL_4;
  }

  *a1 = 1;
  sub_2393D9C18(0x609uLL, 0x26u, &v12);
  v11 = v12;
  if (!v12)
  {
    v2 = "src/ble/BLEEndPoint.cpp";
    v3 = 110;
    LODWORD(v4) = 11;
    goto LABEL_3;
  }

  v12 = 0x6000000000000;
  WORD2(v12) = (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), *(a1 + 56));
  sub_2393CC610(&v12, 0, 4);
  v4 = sub_2393CC644(&v12, &v11);
  if (v4 || (v4 = sub_2393C9528(a1), v4))
  {
    v2 = v7;
  }

  else
  {
    sub_2393D9BEC(v11);
    v10 = v11;
    v4 = sub_2393C95B8(a1, &v10);
    v2 = v8;
    if (v10)
    {
      sub_2393D96C8(v10);
    }

    if (!v4)
    {
      v9 = *(a1 + 64);
      if (v9)
      {
        sub_2393D982C(v9, &v11);
      }

      else
      {
        *(a1 + 64) = v11;
        v11 = 0;
      }
    }
  }

  v3 = HIDWORD(v4);
  if (v4)
  {
    goto LABEL_3;
  }

  v5 = 0;
LABEL_4:
  if (v11)
  {
    sub_2393D96C8(v11);
  }

  return v5 | (v3 << 32);
}

unint64_t sub_2393C9528(uint64_t a1)
{
  v2 = (*(**(*(a1 + 32) + 48) + 40))(*(*(a1 + 32) + 48), 15000, sub_2393CC168, a1);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v2) = 0;
    v3 = 0;
    *(a1 + 157) |= 1u;
  }

  return v3 | v2;
}

uint64_t sub_2393C95B8(uint64_t a1, _WORD **a2)
{
  v12 = *MEMORY[0x277D85DE8];
  *(a1 + 156) |= 0x20u;
  v2 = *(*(a1 + 32) + 32);
  v3 = *(a1 + 56);
  v9 = *a2;
  *a2 = 0;
  v4 = (*(*v2 + 56))(v2, v3, &unk_2395C1E00, &unk_2395C1E20, &v9);
  if (v9)
  {
    sub_2393D96C8(v9);
  }

  v9 = 0;
  if (v4)
  {
    v5 = sub_2393D9044(2u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_2393C9138();
      *buf = 136315138;
      v11 = v6;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Send write request failed: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(2u, 1);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

void *sub_2393C9728(void *result, uint64_t *a2)
{
  if (result[8])
  {
    return sub_2393D982C(result[8], a2);
  }

  result[8] = *a2;
  *a2 = 0;
  return result;
}

uint64_t sub_2393C9748(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC168, a1);
  *(a1 + 157) &= ~1u;
  return result;
}

unint64_t sub_2393C97B4(unint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *result;
  if ((*result & 0xFFFFFFFE) != 4 || (a2 & 2) != 0 && v8 == 4)
  {
    v9 = *(result + 152);
    v10 = *(*(result + 32) + 48);
    v11 = *(*(v7 + 32) + 48) & 0xFFFFFFFFFFFFLL | 0x3CF0000000000000;
    v12 = *v10 + 72;
    if (v9)
    {
      v13 = sub_2393CC25C;
    }

    else
    {
      v13 = sub_2393CC168;
    }

    if (v9)
    {
      v14 = -3;
    }

    else
    {
      v14 = -2;
    }

    (*(*v10 + 72))(v10, v13, v7);
    *(v7 + 157) &= v14;
    if (!*(v7 + 112) || (a2 & 2) != 0)
    {

      return sub_2393CA378(v7, v8, a2, a3, a4);
    }

    else
    {
      *v7 = 4;
      if (a2)
      {
        result = *(v7 + 40);
        if (result)
        {
          v15 = *(*result + 48);

          return v15();
        }
      }

      else
      {

        return sub_2393CA678(v7, v8, 0, a3, a4);
      }
    }
  }

  return result;
}

uint64_t sub_2393C9958(uint64_t a1)
{
  *a1 = 3;
  (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC168, a1);
  *(a1 + 157) &= ~1u;
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 0xAC0000041ALL;
  }

  (*(*v2 + 32))(v2, a1, 0, 0);
  return 0;
}

uint64_t sub_2393C9A20(uint64_t a1)
{
  *a1 = 3;
  (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC25C, a1);
  *(a1 + 157) &= ~2u;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 56))(v2, a1);
  }

  else
  {
    return 0xC400000403;
  }
}

uint64_t sub_2393C9AD8(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC25C, a1);
  *(a1 + 157) &= ~2u;
  return result;
}

unint64_t sub_2393C9B44(unint64_t a1)
{
  if ((*a1 - 1) > 1)
  {
    v5 = "src/ble/BLEEndPoint.cpp";
    LODWORD(v7) = 206;
LABEL_14:
    LODWORD(v3) = 3;
    return sub_2393C97B4(a1, 3, v3 | (v7 << 32), v5);
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    v5 = "src/ble/BLEEndPoint.cpp";
    LODWORD(v7) = 207;
    goto LABEL_14;
  }

  sub_2393D9BEC(v2);
  v12 = *(a1 + 64);
  v3 = sub_2393C9CBC(a1, &v12);
  v5 = v4;
  if (v12)
  {
    sub_2393D96C8(v12);
  }

  if (v3)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      sub_2393D96C8(v6);
    }

    v7 = HIDWORD(v3);
    *(a1 + 64) = 0;
    v8 = sub_2393D9044(2u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "cap resp ind failed", v11, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(2u, 1);
    }

    return sub_2393C97B4(a1, 3, v3 | (v7 << 32), v5);
  }

  --*(a1 + 159);
  result = sub_2393C9E2C(a1);
  v3 = result;
  if (result || *a1 != 2 && (result = sub_2393C9A20(a1), v3 = result, result))
  {
    v5 = v10;
    v7 = HIDWORD(v3);
    return sub_2393C97B4(a1, 3, v3 | (v7 << 32), v5);
  }

  return result;
}

uint64_t sub_2393C9CBC(uint64_t a1, _WORD **a2)
{
  v12 = *MEMORY[0x277D85DE8];
  *(a1 + 156) |= 0x20u;
  v2 = *(*(a1 + 32) + 32);
  v3 = *(a1 + 56);
  v9 = *a2;
  *a2 = 0;
  v4 = (*(*v2 + 48))(v2, v3, &unk_2395C1E00, &unk_2395C1E10, &v9);
  if (v9)
  {
    sub_2393D96C8(v9);
  }

  v9 = 0;
  if (v4)
  {
    v5 = sub_2393D9044(2u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_2393C9138();
      *buf = 136315138;
      v11 = v6;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Send indication failed: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(2u, 1);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

unint64_t sub_2393C9E2C(uint64_t a1)
{
  if ((*(a1 + 157) & 4) != 0)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v2 = (*(**(*(a1 + 32) + 48) + 40))(*(*(a1 + 32) + 48), 15000, sub_2393CC350, a1);
    v3 = v2;
    if (v2)
    {
      v4 = v2 & 0xFFFFFFFF00000000;
    }

    else
    {
      v4 = 0;
      *(a1 + 157) |= 4u;
    }
  }

  return v4 | v3;
}

unint64_t sub_2393C9ED4(unint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(2u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v6 = a1;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "subscribe complete, ep = %p", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(2u, 2);
  }

  *(a1 + 156) &= ~0x20u;
  result = sub_2393C9FC4(a1);
  if (result)
  {
    result = sub_2393C97B4(a1, 2, 0, 0);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393C9FC4(uint64_t a1)
{
  if (*(a1 + 159) <= 1u)
  {
    if ((*(a1 + 157) & 8) != 0)
    {
      if (!*(a1 + 159))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (*(a1 + 159))
      {
        v2 = *(a1 + 72) == 0;
      }

      else
      {
        v2 = 1;
      }

      if (v2)
      {
        goto LABEL_33;
      }
    }
  }

  if ((*(a1 + 156) & 0x20) != 0)
  {
    goto LABEL_33;
  }

  if (*(a1 + 72))
  {
    v3 = sub_2393CB43C(a1);
LABEL_13:
    v4 = v3;
    if (v3)
    {
      v5 = HIDWORD(v3);
      return v4 | (v5 << 32);
    }

LABEL_33:
    LODWORD(v5) = 0;
    v4 = 0;
    return v4 | (v5 << 32);
  }

  v6 = *(a1 + 112);
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      v3 = sub_2393CAFA8(a1);
    }

    else
    {
      if (v6 || !*(a1 + 64))
      {
        goto LABEL_33;
      }

      v3 = sub_2393CAE80(a1);
    }

    goto LABEL_13;
  }

  sub_2393CF6AC(a1 + 80, &v10);
  if (*(a1 + 64))
  {
    v7 = sub_2393CAE80(a1);
    v4 = v7;
    v5 = HIDWORD(v7);
    if (v7)
    {
      v8 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    if (*a1 == 4 && (*(a1 + 144) & 1) == 0)
    {
      sub_2393CA378(a1, 4, 1, 0, 0);
    }

    else
    {
      (*(**(*(a1 + 32) + 40) + 24))(*(*(a1 + 32) + 40));
    }

    LODWORD(v5) = 0;
    v4 = 0;
  }

  v8 = 1;
LABEL_30:
  if (v10)
  {
    sub_2393D96C8(v10);
  }

  if (v8)
  {
    goto LABEL_33;
  }

  return v4 | (v5 << 32);
}

uint64_t sub_2393CA14C(uint64_t a1)
{
  sub_2393CA880(a1);
  sub_2393CAAB0(a1 + 80);
  sub_2393CAAE0(a1 + 80);
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  *(a1 + 72) = 0;
  (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC168, a1);
  *(a1 + 157) &= ~1u;
  (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC25C, a1);
  *(a1 + 157) &= ~2u;
  (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC350, a1);
  *(a1 + 157) &= ~4u;
  (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC44C, a1);
  *(a1 + 157) &= ~8u;
  (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC4BC, a1);
  *(a1 + 157) &= ~0x10u;
  *(a1 + 56) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;

  return sub_2393CAA80(a1);
}

unint64_t sub_2393CA348(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  return sub_2393C97B4(a1, 3, 0, 0);
}

unint64_t sub_2393CA360(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  return sub_2393C97B4(a1, 1, 0, 0);
}

unint64_t sub_2393CA378(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 5;
  v10 = *(a1 + 64);
  if (v10)
  {
    sub_2393D96C8(v10);
  }

  *(a1 + 64) = 0;
  if (a2 == 4 || (a3 & 1) != 0)
  {
    if (a3)
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        (*(*v11 + 48))(v11, a1, a4, a5);
      }
    }
  }

  else
  {
    sub_2393CA678(a1, a2, 0, a4, a5);
  }

  if ((a4 & 0xFFFFFFFE) == 0x40C)
  {
    *(a1 + 56) = 0;
    goto LABEL_13;
  }

  if (*(a1 + 152) || (*(a1 + 156) & 8) == 0)
  {
LABEL_13:
    v12 = *MEMORY[0x277D85DE8];

    return sub_2393CA14C(a1);
  }

  (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC350, a1);
  *(a1 + 157) &= ~4u;
  (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC44C, a1);
  *(a1 + 157) &= ~8u;
  result = (*(**(*(a1 + 32) + 32) + 24))(*(*(a1 + 32) + 32), *(a1 + 56), &unk_2395C1E00, &unk_2395C1E10);
  if (result)
  {
    v14 = sub_2393D9044(2u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "BtpEngine unsubscribe failed %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(2u, 1);
    }

    result = sub_2393CA14C(a1);
  }

  else if (*(a1 + 56))
  {
    result = sub_2393CA7F0(a1);
    if (result)
    {
      result = sub_2393CA14C(a1);
    }

    *(a1 + 156) |= 0x20u;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393CA678(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = a1[5];
  if (a2 == 1)
  {
    if (result)
    {
      result = (*(*result + 32))(result, a1, a4, a5);
    }
  }

  else if (result)
  {
    result = (*(*result + 48))(result, a1, a4, a5);
  }

  a1[1] = 0;
  a1[3] = 0;
  return result;
}

uint64_t sub_2393CA718(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC350, a1);
  *(a1 + 157) &= ~4u;
  return result;
}

uint64_t sub_2393CA784(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC44C, a1);
  *(a1 + 157) &= ~8u;
  return result;
}

unint64_t sub_2393CA7F0(uint64_t a1)
{
  v2 = (*(**(*(a1 + 32) + 48) + 40))(*(*(a1 + 32) + 48), 5000, sub_2393CC4BC, a1);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v2) = 0;
    v3 = 0;
    *(a1 + 157) |= 0x10u;
  }

  return v3 | v2;
}

uint64_t sub_2393CA880(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = result;
    v2 = *(result + 156);
    v3 = sub_2393D9044(2u);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Auto-closing end point's BLE connection.", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(2u, 2);
      }

      result = (*(**(*(v1 + 32) + 32) + 32))(*(*(v1 + 32) + 32), *(v1 + 56));
    }

    else
    {
      if (v4)
      {
        *v5 = 0;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Releasing end point's BLE connection back to application.", v5, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(2u, 2);
      }

      result = (*(**(*(v1 + 32) + 40) + 16))(*(*(v1 + 32) + 40), *(v1 + 56));
    }

    *(v1 + 56) = 0;
  }

  return result;
}

void sub_2393CA9D8(uint64_t a1)
{
  sub_2393CAAB0(a1 + 80);

  sub_2393CAAE0(a1 + 80);
}

uint64_t sub_2393CAA14(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC4BC, a1);
  *(a1 + 157) &= ~0x10u;
  return result;
}

uint64_t sub_2393CAA80(uint64_t result)
{
  v1 = *(result + 48);
  if (!v1)
  {
    sub_23952FCA0();
  }

  v2 = v1 - 1;
  *(result + 48) = v2;
  if (!v2)
  {
    *(result + 32) = 0;
  }

  return result;
}

void sub_2393CAAB0(uint64_t a1)
{
  sub_2393CF6AC(a1, &v1);
  if (v1)
  {
    sub_2393D96C8(v1);
  }
}

void sub_2393CAAE0(uint64_t a1)
{
  sub_2393CF370(a1, &v1);
  if (v1)
  {
    sub_2393D96C8(v1);
  }
}

unint64_t sub_2393CAB10(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5)
{
  if (*(a1 + 32))
  {
    v5 = 0x1F900000000;
    v6 = 3;
    return v5 | v6;
  }

  if (!a2)
  {
    v5 = 0x1FC00000000;
LABEL_15:
    v6 = 47;
    return v5 | v6;
  }

  if (!a3)
  {
    v5 = 0x1FD00000000;
    goto LABEL_15;
  }

  if (a4 > 1)
  {
    v5 = 0x1FE00000000;
    goto LABEL_15;
  }

  v12 = sub_2393CE3C0(a1 + 80, a1, a4 == 1);
  v6 = v12;
  if (v12)
  {
    v13 = sub_2393D9044(2u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "BtpEngine init failed", v17, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(2u, 1);
    }

    v5 = v12 & 0xFFFFFFFF00000000;
  }

  else
  {
    *(a1 + 32) = a2;
    *(a1 + 48) = 1;
    *(a1 + 56) = a3;
    *(a1 + 152) = a4;
    *(a1 + 156) = a5;
    *(a1 + 157) = 0;
    v15 = *(a1 + 64);
    if (v15)
    {
      sub_2393D96C8(v15);
    }

    *(a1 + 64) = 0;
    v16 = *(a1 + 72);
    if (v16)
    {
      sub_2393D96C8(v16);
    }

    v6 = 0;
    v5 = 0;
    *(a1 + 72) = 0;
    *a1 = 0;
  }

  return v5 | v6;
}

uint64_t sub_2393CAC9C(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 == -1)
  {
    sub_23952FD50();
  }

  *(result + 48) = v1 + 1;
  return result;
}

uint64_t sub_2393CACC4(uint64_t a1, _WORD **a2)
{
  if (*(a1 + 152))
  {
    result = sub_2393C9CBC(a1, a2);
    if (result)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = sub_2393C95B8(a1, a2);
  if (!result)
  {
LABEL_3:
    --*(a1 + 159);
  }

  return result;
}

unint64_t sub_2393CAD14(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    if (*a1 - 3 > 1)
    {
      v5 = "src/ble/BLEEndPoint.cpp";
      v6 = 0x26400000000;
      LODWORD(v7) = 3;
    }

    else if (*v3 && (sub_2393D9870(v3), v3 = *a2, **a2))
    {
      v5 = "src/ble/BLEEndPoint.cpp";
      v6 = 0x26E00000000;
      LODWORD(v7) = 195;
    }

    else
    {
      if (*(a1 + 8))
      {
        sub_2393D982C(*(a1 + 8), a2);
      }

      else
      {
        *(a1 + 8) = v3;
        *a2 = 0;
      }

      v7 = sub_2393C9FC4(a1);
      v5 = v8;
      if (!v7)
      {
        v9 = 0;
        return v7 | v9;
      }

      v6 = v7 & 0xFFFFFFFF00000000;
    }
  }

  else
  {
    v5 = "src/ble/BLEEndPoint.cpp";
    v6 = 0x26300000000;
    LODWORD(v7) = 47;
  }

  v9 = v7;
  sub_2393C97B4(a1, 2, v6 | v7, v5);
  v7 = v6;
  return v7 | v9;
}

BOOL sub_2393CAE0C(_BYTE *a1, _WORD **a2, char *a3)
{
  if ((a1[157] & 8) != 0)
  {
    a1[158] = a1[160];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v8[3] = v3;
  v8[4] = v4;
  *a3 = v5;
  v8[0] = *a2;
  *a2 = 0;
  v6 = sub_2393CF390((a1 + 80), v8, *a3);
  if (v8[0])
  {
    sub_2393D96C8(v8[0]);
  }

  return v6;
}

unint64_t sub_2393CAE80(uint64_t a1)
{
  sub_2393D9EB8((a1 + 64), &v8);
  v7 = 0;
  if (sub_2393CAE0C(a1, &v8, &v7))
  {
    sub_2393D9BEC(*(a1 + 120));
    v6 = *(a1 + 120);
    v2 = sub_2393CACC4(a1, &v6);
    if (v6)
    {
      sub_2393D96C8(v6);
    }

    if (v2)
    {
      v3 = v2 & 0xFFFFFFFF00000000;
    }

    else
    {
      if (v7 == 1)
      {
        (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC44C, a1);
        *(a1 + 157) &= ~8u;
      }

      v4 = sub_2393C9E2C(a1);
      LODWORD(v2) = v4;
      v3 = v4 & 0xFFFFFFFF00000000;
    }
  }

  else
  {
    v3 = 0x2A000000000;
    LODWORD(v2) = 1035;
  }

  if (v8)
  {
    sub_2393D96C8(v8);
  }

  return v3 | v2;
}

unint64_t sub_2393CAFA8(uint64_t a1)
{
  v9 = 0;
  *v8 = 0;
  v2 = sub_2393CAE0C(a1, v8, &v9);
  if (*v8)
  {
    sub_2393D96C8(*v8);
  }

  if (v2)
  {
    sub_2393D9BEC(*(a1 + 120));
    *v8 = *(a1 + 120);
    v3 = sub_2393CACC4(a1, v8);
    if (*v8)
    {
      sub_2393D96C8(*v8);
    }

    if (v3)
    {
      v4 = v3 & 0xFFFFFFFF00000000;
    }

    else
    {
      if (v9 == 1)
      {
        (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC44C, a1);
        *(a1 + 157) &= ~8u;
      }

      v6 = sub_2393C9E2C(a1);
      LODWORD(v3) = v6;
      v4 = v6 & 0xFFFFFFFF00000000;
    }
  }

  else
  {
    v5 = sub_2393D9044(2u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "btp fragmenter error on send!", v8, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(2u, 1);
    }

    sub_2393CEBB8((a1 + 80));
    v4 = 0x2C700000000;
    LODWORD(v3) = 1035;
  }

  return v4 | v3;
}

uint64_t sub_2393CB130(unint64_t a1)
{
  v2 = sub_2393D9958(*(a1 + 64));
  *(a1 + 64) = v2;
  if (!*(a1 + 152))
  {
    v5 = (*(**(*(a1 + 32) + 32) + 16))(*(*(a1 + 32) + 32), *(a1 + 56), &unk_2395C1E00, &unk_2395C1E10);
    v7 = v6;
    if (!v5)
    {
      *(a1 + 156) |= 0x28u;
    }

    goto LABEL_13;
  }

  if (*a1 == 2)
  {
    v8 = 773;
    v9 = 3;
    LODWORD(v5) = 1040;
    v7 = "src/ble/BLEEndPoint.cpp";
LABEL_15:
    v10 = v5;
    sub_2393C97B4(a1, v9, v5 | (v8 << 32), v7);
    return v10 | (v8 << 32);
  }

  if (*a1 == 3)
  {
    if (*(a1 + 158) > 1u || v2)
    {
      v3 = sub_2393C9FC4(a1);
    }

    else
    {
      v3 = sub_2393CB268(a1);
    }

    v5 = v3;
    v7 = v4;
LABEL_13:
    v8 = HIDWORD(v5);
    if (!v5)
    {
      v10 = 0;
      return v10 | (v8 << 32);
    }

    v9 = 2;
    goto LABEL_15;
  }

  v10 = 0;
  v8 = 0;
  return v10 | (v8 << 32);
}

uint64_t sub_2393CB268(uint64_t a1)
{
  (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC44C, a1);
  *(a1 + 157) &= ~8u;
  if (*(a1 + 72))
  {
    return sub_2393C9FC4(a1);
  }

  sub_2393D9C18(3uLL, 0x26u, &v5);
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  v3 = v5;
  *(a1 + 72) = v5;
  if (v3)
  {
    return sub_2393C9FC4(a1);
  }

  else
  {
    return 0x3630000000BLL;
  }
}

uint64_t sub_2393CB328(unsigned __int8 *a1)
{
  if ((a1[157] & 0x10) != 0)
  {
    v9 = 0;
    v8 = 0;
    return v9 | (v8 << 32);
  }

  if (*a1 - 3 > 1)
  {
    v7 = "src/ble/BLEEndPoint.cpp";
    v8 = 803;
    v6 = 3;
LABEL_15:
    v9 = v6;
    sub_2393C97B4(a1, 2, v6 | (v8 << 32), v7);
    return v9 | (v8 << 32);
  }

  v2 = a1[156];
  if ((v2 & 0x10) != 0)
  {
    v3 = *(a1 + 9);
    if (v3)
    {
      sub_2393D96C8(v3);
      v2 = a1[156];
    }

    *(a1 + 9) = 0;
    a1[156] = v2 & 0xEF;
  }

  if (a1[158] > 1u || *(a1 + 8) || *(a1 + 28) == 1)
  {
    v4 = sub_2393C9FC4(a1);
  }

  else
  {
    v4 = sub_2393CB268(a1);
  }

  v6 = v4;
  v7 = v5;
  v8 = HIDWORD(v4);
  if (v4)
  {
    goto LABEL_15;
  }

  v9 = 0;
  return v9 | (v8 << 32);
}

uint64_t sub_2393CB41C(unint64_t a1)
{
  v1 = *(a1 + 156);
  *(a1 + 156) = v1 & 0xDF;
  if ((v1 & 2) != 0)
  {
    return sub_2393CB328(a1);
  }

  *(a1 + 156) = v1 & 0xDD | 2;
  return sub_2393CB130(a1);
}

unint64_t sub_2393CB43C(uint64_t a1)
{
  sub_2393CE568((a1 + 80), (a1 + 72));
  sub_2393D9BEC(*(a1 + 72));
  v4 = *(a1 + 72);
  v2 = sub_2393CACC4(a1, &v4);
  if (v4)
  {
    sub_2393D96C8(v4);
  }

  if (v2)
  {
    return v2;
  }

  *(a1 + 158) = *(a1 + 160);
  *(a1 + 156) |= 0x10u;

  return sub_2393C9E2C(a1);
}

unint64_t sub_2393CB4F0(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    *a1 = 1;
    v3 = sub_2393CC6E8(a2, v22);
    LODWORD(v4) = v3;
    if (v3)
    {
      v5 = HIDWORD(v3);
    }

    else
    {
      sub_2393D9C18(6uLL, 0x26u, &v18);
      if (v18)
      {
        LOWORD(v8) = v23;
        if (v23 || (v8 = (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), *(a1 + 56))) != 0)
        {
          if ((v8 - 3) <= 0xF4u)
          {
            v9 = v8 - 3;
          }

          else
          {
            v9 = 244;
          }

          v20 = v9;
          v10 = sub_2393D9044(2u);
        }

        else
        {
          v10 = sub_2393D9044(2u);
          v9 = 20;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v26 = 20;
            _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "cannot determine ATT MTU; selecting default fragment size = %u", buf, 8u);
          }

          if (sub_2393D5398(2u))
          {
            sub_2393D5320(2u, 2);
          }

          v20 = 20;
        }

        if (v24 >= 6u)
        {
          v11 = 6;
        }

        else
        {
          v11 = v24;
        }

        *(a1 + 160) = v11;
        *(a1 + 158) = v11;
        *(a1 + 159) = v11;
        v21 = v11;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v26 = v11;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "local and remote recv window sizes = %u", buf, 8u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(2u, 2);
        }

        v12 = sub_2393CE320(v22);
        v19[0] = v12;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v26 = v12;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "selected BTP version %d", buf, 8u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(2u, 2);
        }

        if (v12)
        {
          *(a1 + 108) = v9;
          *(a1 + 132) = v9;
        }

        else
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            v26 = 4;
            v27 = 1024;
            v28 = 4;
            _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "incompatible BTP versions; peripheral expected between %d and %d", buf, 0xEu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(2u, 1);
          }

          *a1 = 2;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 108);
          v14 = *(a1 + 132);
          *buf = 67109376;
          v26 = v13;
          v27 = 1024;
          v28 = v14;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "using BTP fragment sizes rx %d / tx %d.", buf, 0xEu);
        }

        if (sub_2393D5398(2u))
        {
          v16 = *(a1 + 108);
          v17 = *(a1 + 132);
          sub_2393D5320(2u, 2);
        }

        v4 = sub_2393CC784(v19, &v18);
        if (!v4)
        {
          v15 = *(a1 + 64);
          if (v15)
          {
            sub_2393D982C(v15, &v18);
          }

          else
          {
            *(a1 + 64) = v18;
            v18 = 0;
          }

          v4 = sub_2393CB930(a1);
        }

        v5 = HIDWORD(v4);
        if (v18)
        {
          sub_2393D96C8(v18);
        }
      }

      else
      {
        LODWORD(v5) = 988;
        LODWORD(v4) = 11;
      }
    }
  }

  else
  {
    LODWORD(v4) = 47;
    LODWORD(v5) = 980;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 | (v5 << 32);
}

unint64_t sub_2393CB930(uint64_t a1)
{
  v2 = (*(**(*(a1 + 32) + 48) + 40))(*(*(a1 + 32) + 48), 15000, sub_2393CC25C, a1);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v2) = 0;
    v3 = 0;
    *(a1 + 157) |= 2u;
  }

  return v3 | v2;
}

unint64_t sub_2393CB9C0(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = sub_2393CC818(a2, v12);
    if (!v3)
    {
      if (!v13)
      {
        v4 = 0x42300000000;
        LODWORD(v3) = 1043;
        goto LABEL_5;
      }

      v7 = sub_2393D9044(2u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        v16 = v12[0];
        v17 = 1024;
        v18 = 4;
        v19 = 1024;
        v20 = 4;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "peripheral chose BTP version %d; central expected between %d and %d", buf, 0x14u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(2u, 2);
      }

      if (v12[0] != 4)
      {
        v4 = 0x42B00000000;
        LODWORD(v3) = 1040;
        goto LABEL_5;
      }

      if (v13 <= 0xF4u)
      {
        v8 = v13;
      }

      else
      {
        v8 = 244;
      }

      v13 = v8;
      *(a1 + 108) = v8;
      *(a1 + 132) = v8;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v16 = v8;
        v17 = 1024;
        v18 = v8;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "using BTP fragment sizes rx %d / tx %d.", buf, 0xEu);
      }

      if (sub_2393D5398(2u))
      {
        v10 = *(a1 + 108);
        v11 = *(a1 + 132);
        sub_2393D5320(2u, 2);
      }

      v9 = v14;
      *(a1 + 160) = v14;
      *(a1 + 158) = v9;
      *(a1 + 159) = v9;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v16 = v9;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "local and remote recv window size = %u", buf, 8u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(2u, 2);
      }

      --*(a1 + 158);
      v3 = sub_2393CBC6C(a1);
      if (!v3)
      {
        v3 = sub_2393C9958(a1);
      }
    }

    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = 0x41E00000000;
    LODWORD(v3) = 47;
  }

LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
  return v4 | v3;
}

unint64_t sub_2393CBC6C(uint64_t a1)
{
  if ((*(a1 + 157) & 8) != 0)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v2 = (*(**(*(a1 + 32) + 48) + 40))(*(*(a1 + 32) + 48), 2500, sub_2393CC44C, a1);
    v3 = v2;
    if (v2)
    {
      v4 = v2 & 0xFFFFFFFF00000000;
    }

    else
    {
      v4 = 0;
      *(a1 + 157) |= 8u;
    }
  }

  return v4 | v3;
}

uint64_t sub_2393CBD14(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  if (a4 < a2 && a3 + a2 > 0xFF)
  {
    return (a3 + a2 - a4 + 1);
  }

  else
  {
    return (a3 + a2 - a4);
  }
}

uint64_t sub_2393CBD34(unsigned __int8 *a1, uint64_t *a2)
{
  v30 = 0;
  if ((a1[157] & 0x10) == 0)
  {
    v4 = a1[156];
    if ((v4 & 4) == 0)
    {
      v5 = *a1;
      if (*(a1 + 38))
      {
        v6 = 2;
        if (v5)
        {
          v7 = "src/ble/BLEEndPoint.cpp";
          v8 = 1154;
LABEL_15:
          LODWORD(v9) = 3;
          goto LABEL_30;
        }

        a1[156] = v4 | 4;
        v13 = sub_2393CB4F0(a1, a2);
        v7 = v15;
        v8 = HIDWORD(v13);
        if (v13)
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }

        goto LABEL_22;
      }

      if (v5 == 1)
      {
        a1[156] = v4 | 4;
        v13 = sub_2393CB9C0(a1, a2);
        v7 = v14;
        v8 = HIDWORD(v13);
        v6 = 2;
LABEL_22:
        LODWORD(v9) = v13;
        if (v13)
        {
          goto LABEL_30;
        }

LABEL_23:
        v9 = 0;
        return v9 | (v8 << 32);
      }

      v8 = 1145;
LABEL_29:
      LODWORD(v9) = 3;
      v6 = 2;
      v7 = "src/ble/BLEEndPoint.cpp";
      goto LABEL_30;
    }

    if (*a1 - 3 >= 2)
    {
      v12 = sub_2393D9044(2u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "ep rx'd packet in bad state", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        v6 = 2;
        sub_2393D5320(2u, 1);
        v7 = "src/ble/BLEEndPoint.cpp";
        v8 = 1181;
        goto LABEL_15;
      }

      v8 = 1181;
      goto LABEL_29;
    }

    nullsub_56(a1 + 80, a2);
    v10 = sub_2393CE634((a1 + 80), a2, &v30 + 1, &v30);
    v7 = v11;
    v8 = HIDWORD(v10);
    LODWORD(v9) = v10;
    nullsub_56(a1 + 80, v11);
    if (!v9)
    {
      --a1[158];
      if (v30 != 1)
      {
        goto LABEL_48;
      }

      if (a1[144])
      {
        v16 = sub_2393CC0D4(a1);
        LODWORD(v9) = v16;
        if (v16)
        {
          v7 = v17;
          v8 = HIDWORD(v16);
          v6 = 2;
          goto LABEL_30;
        }
      }

      else
      {
        (*(**(*(a1 + 4) + 48) + 72))(*(*(a1 + 4) + 48), sub_2393CC350, a1);
        a1[157] &= ~4u;
        if (*a1 == 4 && !*(a1 + 8) && !*(a1 + 28))
        {
          sub_2393CA378(a1, 4, 1, 0, 0);
          goto LABEL_9;
        }
      }

      v19 = a1[129];
      v20 = a1[160] + HIBYTE(v30);
      v21 = v19 < HIBYTE(v30) && v20 > 0xFF;
      v22 = v21 ? v20 - v19 + 1 : v20 - v19;
      a1[159] = v22;
      v23 = sub_2393C9FC4(a1);
      v7 = v24;
      v8 = HIDWORD(v23);
      LODWORD(v9) = v23;
      if (!v23)
      {
LABEL_48:
        if (!sub_2393CE48C((a1 + 80)) || (a1[158] > 1u || (a1[156] & 0x20) != 0 ? (v25 = sub_2393CBC6C(a1)) : (v25 = sub_2393CB268(a1)), v7 = v26, v8 = HIDWORD(v25), (LODWORD(v9) = v25) == 0))
        {
          if (*(a1 + 22) == 2)
          {
            sub_2393CF370((a1 + 80), &v28);
            v27 = *(a1 + 5);
            if (v27 && *a1 != 4)
            {
              (*(*v27 + 40))(v27, a1, &v28);
            }

            if (v28)
            {
              sub_2393D96C8(v28);
            }
          }
        }
      }
    }

LABEL_9:
    v6 = 2;
    if (v9)
    {
LABEL_30:
      v9 = v9;
      sub_2393C97B4(a1, v6, v9 | (v8 << 32), v7);
      return v9 | (v8 << 32);
    }

    goto LABEL_23;
  }

  v9 = 0;
  v8 = 0;
  return v9 | (v8 << 32);
}

unint64_t sub_2393CC0D4(uint64_t a1)
{
  if ((*(a1 + 157) & 4) == 0)
  {
    return 0x54C00000003;
  }

  (*(**(*(a1 + 32) + 48) + 72))(*(*(a1 + 32) + 48), sub_2393CC350, a1);
  *(a1 + 157) &= ~4u;
  return sub_2393C9E2C(a1);
}

void sub_2393CC168(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a2 + 157))
  {
    v3 = sub_2393D9044(2u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v6 = a2;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "connect handshake timed out, closing ep %p", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(2u, 1);
    }

    *(a2 + 157) &= ~1u;
    sub_2393C97B4(a2, 2, 0x59A00000415, "src/ble/BLEEndPoint.cpp");
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2393CC25C(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 157) & 2) != 0)
  {
    v3 = sub_2393D9044(2u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v6 = a2;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "receive handshake timed out, closing ep %p", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(2u, 1);
    }

    *(a2 + 157) &= ~2u;
    sub_2393C97B4(a2, 3, 0x5A700000416, "src/ble/BLEEndPoint.cpp");
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2393CC350(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 157) & 4) != 0)
  {
    v3 = sub_2393D9044(2u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v7 = a2;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "ack recv timeout, closing ep %p", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(2u, 1);
    }

    nullsub_56(a2 + 80, v4);
    *(a2 + 157) &= ~4u;
    sub_2393C97B4(a2, 2, 0x5B500000418, "src/ble/BLEEndPoint.cpp");
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2393CC44C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 157) & 8) != 0)
  {
    *(a2 + 157) &= ~8u;
    if ((*(a2 + 156) & 0x10) == 0)
    {
      v4 = sub_2393CB268(a2);
      if (v4)
      {

        sub_2393C97B4(a2, 2, v4, v3);
      }
    }
  }
}

void sub_2393CC4BC(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 157) & 0x10) != 0)
  {
    v3 = sub_2393D9044(2u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v6 = a2;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "unsubscribe timed out, ble ep %p", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(2u, 1);
    }

    *(a2 + 157) &= ~0x10u;
    sub_2393CA14C(a2);
  }

  v4 = *MEMORY[0x277D85DE8];
}

BOOL sub_2393CC5A8(char *a1, size_t a2, int a3, uint64_t a4)
{
  v4 = a3 & 0xFF000700;
  if ((a3 & 0xFF000700) == 0x400)
  {
    if ((a3 - 1025) > 0x1E)
    {
      v5 = 0;
    }

    else
    {
      v5 = (&off_278A763C0)[a3 - 1025];
    }

    sub_2393C9264(a1, a2, "Ble", a3, a4, v5);
  }

  return v4 == 1024;
}

uint64_t sub_2393CC610(uint64_t result, unsigned int a2, char a3)
{
  v3 = 16 * a3;
  if (a2)
  {
    v4 = -16;
  }

  else
  {
    v4 = 15;
  }

  if ((a2 & 1) == 0)
  {
    v3 = a3;
  }

  *(result + (a2 >> 1)) = *(result + (a2 >> 1)) & ~v4 | v3 & v4;
  return result;
}

uint64_t sub_2393CC644(uint64_t a1, uint64_t *a2)
{
  v4 = *(*a2 + 8);
  if (sub_2393D9788(*a2) < 9)
  {
    v9 = 0xA200000000;
    v10 = 11;
  }

  else
  {
    *v4 = 27749;
    v5 = v4 + 1;
    v6 = 4;
    v7 = a1;
    do
    {
      v8 = *v7++;
      *v5++ = v8;
      --v6;
    }

    while (v6);
    *v5 = *(a1 + 4);
    v5[2] = *(a1 + 6);
    sub_2393D97A0(*a2, 9uLL, 0);
    v9 = 0;
    v10 = 0;
  }

  return v10 | v9;
}

uint64_t sub_2393CC6E8(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 24) < 9uLL)
  {
    v7 = 0xBA00000000;
    v8 = 13;
    return v8 | v7;
  }

  v2 = *(*a1 + 8);
  if (*v2 != 101)
  {
    v7 = 0xBC00000000;
LABEL_10:
    v8 = 1047;
    return v8 | v7;
  }

  if (v2[1] != 108)
  {
    v7 = 0xBD00000000;
    goto LABEL_10;
  }

  v3 = v2 + 2;
  v4 = 4;
  v5 = a2;
  do
  {
    v6 = *v3++;
    *v5++ = v6;
    --v4;
  }

  while (v4);
  v7 = 0;
  v8 = 0;
  *(a2 + 4) = *v3;
  *(a2 + 6) = v3[2];
  return v8 | v7;
}

uint64_t sub_2393CC784(uint64_t a1, uint64_t *a2)
{
  v4 = *(*a2 + 8);
  if (sub_2393D9788(*a2) < 6)
  {
    v5 = 0xD300000000;
    v6 = 11;
  }

  else
  {
    *v4 = 27749;
    *(v4 + 2) = *a1;
    *(v4 + 3) = *(a1 + 2);
    *(v4 + 5) = *(a1 + 4);
    sub_2393D97A0(*a2, 6uLL, 0);
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

uint64_t sub_2393CC818(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 24) < 6uLL)
  {
    v3 = 0xE700000000;
    v4 = 13;
    return v4 | v3;
  }

  v2 = *(*a1 + 8);
  if (*v2 != 101)
  {
    v3 = 0xE900000000;
LABEL_8:
    v4 = 1047;
    return v4 | v3;
  }

  if (*(v2 + 1) != 108)
  {
    v3 = 0xEA00000000;
    goto LABEL_8;
  }

  v3 = 0;
  v4 = 0;
  *a2 = *(v2 + 2);
  *(a2 + 2) = *(v2 + 3);
  *(a2 + 4) = *(v2 + 5);
  return v4 | v3;
}

uint64_t sub_2393CC8A4(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2393CC8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2393CC59C();
  if (!a2)
  {
    v10 = 0x10100000000;
LABEL_9:
    v11 = 47;
    return v11 | v10;
  }

  if (!a4)
  {
    v10 = 0x10200000000;
    goto LABEL_9;
  }

  if (!a5)
  {
    v10 = 0x10300000000;
    goto LABEL_9;
  }

  if (*a1)
  {
    v10 = 0x10700000000;
    v11 = 3;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *(a1 + 24) = a3;
    *(a1 + 32) = a2;
    *(a1 + 40) = a4;
    *(a1 + 48) = a5;
    *a1 = 1;
  }

  return v11 | v10;
}

void sub_2393CC984()
{
  if (qword_27DF76558)
  {
    if (dword_27DF76538 != 5)
    {
      sub_2393CA348(&dword_27DF76538);
    }

    if (sub_2393CA33C(&dword_27DF76538))
    {

      sub_2393CA14C(&dword_27DF76538);
    }
  }
}

void sub_2393CC9EC(uint64_t a1, uint64_t a2)
{
  if (qword_27DF76558)
  {
    v3 = qword_27DF76570 == a2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    if (dword_27DF76538 != 5)
    {
      sub_2393CA348(&dword_27DF76538);
    }

    if (sub_2393CA33C(&dword_27DF76538))
    {

      sub_2393CA14C(&dword_27DF76538);
    }
  }
}

unint64_t sub_2393CCA60(uint64_t a1)
{
  if (*a1 == 1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      v2 = (*(*v1 + 32))(v1);
      v3 = HIDWORD(v2);
      if (v2 == 45)
      {
        v4 = sub_2393D9044(2u);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *v6 = 0;
          _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "BleConnectionDelegate::CancelConnection is not implemented.", v6, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(2u, 1);
        }

        LODWORD(v2) = 45;
      }
    }

    else
    {
      LODWORD(v2) = 3;
      LODWORD(v3) = 352;
    }
  }

  else
  {
    LODWORD(v2) = 3;
    LODWORD(v3) = 351;
  }

  return v2 | (v3 << 32);
}

uint64_t sub_2393CCB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1 != 1)
  {
    v9 = 0x16E00000000;
LABEL_10:
    v10 = 3;
    return v10 | v9;
  }

  v7 = *(a1 + 24);
  if (!v7)
  {
    v9 = 0x16F00000000;
    goto LABEL_10;
  }

  if (!*(a1 + 16))
  {
    v9 = 0x17000000000;
    goto LABEL_10;
  }

  *(v7 + 8) = a4;
  *(*(a1 + 24) + 16) = a5;
  v8 = *(a1 + 24);
  if (!a3)
  {
    a3 = a1;
  }

  (*(*v8 + 16))(v8, a1, a3, a2);
  v9 = 0;
  v10 = 0;
  return v10 | v9;
}

uint64_t sub_2393CCC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1 != 1)
  {
    v9 = 0x17E00000000;
LABEL_10:
    v10 = 3;
    return v10 | v9;
  }

  v7 = *(a1 + 24);
  if (!v7)
  {
    v9 = 0x17F00000000;
    goto LABEL_10;
  }

  if (!*(a1 + 16))
  {
    v9 = 0x18000000000;
    goto LABEL_10;
  }

  *(v7 + 8) = a4;
  *(*(a1 + 24) + 16) = a5;
  v8 = *(a1 + 24);
  if (!a3)
  {
    a3 = a1;
  }

  (*(*v8 + 24))(v8, a1, a3, a2);
  v9 = 0;
  v10 = 0;
  return v10 | v9;
}

uint64_t sub_2393CCCC8(uint64_t a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    v2 = 0x18C00000000;
LABEL_6:
    v3 = 3;
    return v3 | v2;
  }

  if (!*(a1 + 16))
  {
    v2 = 0x18D00000000;
    goto LABEL_6;
  }

  sub_2393CCD24(a1, a2);
  v2 = 0;
  v3 = 0;
  return v3 | v2;
}

uint64_t sub_2393CCD24(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v3 = sub_2393CCE84(a1, &v8, a2, 0, 1);
  v4 = *(a1 + 16);
  if (v3)
  {
    v5 = *(*v4 + 24);

    return v5();
  }

  else
  {
    v7 = *(*v4 + 16);

    return v7();
  }
}

unint64_t sub_2393CCDEC(uint64_t a1)
{
  if (*a1 != 1)
  {
    v4 = 0x19800000000;
LABEL_8:
    v5 = 3;
    return v5 | v4;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
    v4 = 0x19900000000;
    goto LABEL_8;
  }

  if (!*(a1 + 16))
  {
    v4 = 0x19A00000000;
    goto LABEL_8;
  }

  v3 = (*(*v2 + 40))(v2);
  v4 = v3 & 0xFFFFFFFF00000000;
  v5 = v3;
  return v5 | v4;
}

uint64_t sub_2393CCE84(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, char a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*a1 == 1)
  {
    if (a3)
    {
      if (qword_27DF76558)
      {
        v5 = sub_2393D9044(2u);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v13 = "Ble";
          _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%s endpoint pool FULL", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(2u, 1);
        }

        v6 = 0x1AF00000000;
        v7 = 193;
      }

      else
      {
        sub_2393CAB10(&dword_27DF76538, a1, a3, a4, a5);
        v6 = 0;
        v7 = 0;
        qword_27DF76560 = *(a1 + 16);
        *a2 = &dword_27DF76538;
      }
    }

    else
    {
      v6 = 0x1A800000000;
      v7 = 47;
    }
  }

  else
  {
    v6 = 0x1A300000000;
    v7 = 3;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7 | v6;
}

uint64_t sub_2393CCFE0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v6 = sub_2393CCE84(a1, &v12, a2, 1u, 0);
  v7 = v12;
  if (v6)
  {
    if (!v12)
    {
      (*(**(a1 + 40) + 16))(*(a1 + 40), a2);
    }
  }

  else
  {
    *(v12 + 40) = *(a1 + 16);
    v6 = sub_2393CBD34(v7, a3);
  }

  if (v6)
  {
    v8 = sub_2393D9044(2u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_2393C9138();
      *buf = 136315138;
      v14 = v9;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "HandleChipConnectionReceived failed, err = %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(2u, 1);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL sub_2393CD15C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!sub_2393CE398(&unk_2395C1E00, a3))
  {
    v12 = sub_2393D9044(2u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Write received on unknown svc", buf, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (!sub_2393CE398(&unk_2395C1E20, a4))
  {
    v13 = sub_2393D9044(2u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Write received on unknown char", buf, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (!*a5)
  {
    v14 = sub_2393D9044(2u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Write received null buffer", buf, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (a2)
  {
    if (qword_27DF76558 && qword_27DF76570 == a2)
    {
      if (sub_2393CBD34(&dword_27DF76538, a5))
      {
        v15 = sub_2393D9044(2u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v18 = sub_2393C9138();
          _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Receive failed, err = %s", buf, 0xCu);
        }

        result = sub_2393D5398(1u);
        if (result)
        {
          goto LABEL_30;
        }

        goto LABEL_32;
      }

LABEL_33:
      result = 1;
      goto LABEL_32;
    }
  }

  if (!sub_2393CCFE0(a1, a2, a5))
  {
    goto LABEL_33;
  }

  v10 = sub_2393D9044(2u);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v18 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Handle new BLE connection failed, err = %s", buf, 0xCu);
  }

  result = sub_2393D5398(1u);
  if (result)
  {
LABEL_30:
    sub_2393C9138();
LABEL_31:
    sub_2393D5320(2u, 1);
    result = 0;
  }

LABEL_32:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_2393CD478(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!sub_2393CE398(&unk_2395C1E00, a3))
  {
    v12 = sub_2393D9044(2u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Indication received on unknown svc", buf, 2u);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (!sub_2393CE398(&unk_2395C1E10, a4))
  {
    v13 = sub_2393D9044(2u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Indication received on unknown char", buf, 2u);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (!*a5)
  {
    v14 = sub_2393D9044(2u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Indication received null buffer", buf, 2u);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2)
  {
    if (qword_27DF76558 && qword_27DF76570 == a2)
    {
      if (!sub_2393CBD34(&dword_27DF76538, a5))
      {
        result = 1;
        goto LABEL_32;
      }

      v15 = sub_2393D9044(2u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v18 = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Receive failed, err = %s", buf, 0xCu);
      }

      result = sub_2393D5398(1u);
      if (!result)
      {
        goto LABEL_32;
      }

      sub_2393C9138();
LABEL_30:
      v11 = 1;
      goto LABEL_31;
    }
  }

  v9 = sub_2393D9044(2u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "No endpoint for received indication", buf, 2u);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    v11 = 3;
LABEL_31:
    sub_2393D5320(2u, v11);
    result = 0;
  }

LABEL_32:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_2393CD74C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (sub_2393CE398(&unk_2395C1E00, a3))
  {
    v6 = sub_2393CE398(&unk_2395C1E20, a4);
    if (v6)
    {
      sub_2393CD86C(v6, a2);
      return 1;
    }

    v9 = sub_2393D9044(2u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Write confirmation on unknown char", v10, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = sub_2393D9044(2u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Write confirmation on unknown svc", buf, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
LABEL_11:
      sub_2393D5320(2u, 1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2393CD86C(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2 && (qword_27DF76558 ? (v2 = qword_27DF76570 == a2) : (v2 = 0), v2))
  {
    result = sub_2393CB41C(&dword_27DF76538);
    if (result)
    {
      v6 = sub_2393D9044(2u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v9 = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Send ack confirmation failed, err = %s", buf, 0xCu);
      }

      result = sub_2393D5398(1u);
      if (result)
      {
        sub_2393C9138();
        v5 = 1;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v3 = sub_2393D9044(2u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "No endpoint for received ack", buf, 2u);
    }

    result = sub_2393D5398(3u);
    if (result)
    {
      v5 = 3;
LABEL_15:
      result = sub_2393D5320(2u, v5);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_2393CD9EC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (sub_2393CE398(&unk_2395C1E00, a3))
  {
    v6 = sub_2393CE398(&unk_2395C1E10, a4);
    if (v6)
    {
      sub_2393CD86C(v6, a2);
      return 1;
    }

    v9 = sub_2393D9044(2u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Indication confirmation on unknown char", v10, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = sub_2393D9044(2u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Indication confirmation on unknown svc", buf, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
LABEL_11:
      sub_2393D5320(2u, 1);
      return 0;
    }
  }

  return result;
}

BOOL sub_2393CDB0C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!sub_2393CE398(&unk_2395C1E00, a3))
  {
    v10 = sub_2393D9044(2u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Subscribe received on unknown svc", buf, 2u);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      return result;
    }

LABEL_16:
    v9 = 1;
    goto LABEL_17;
  }

  if (!sub_2393CE398(&unk_2395C1E10, a4) && !sub_2393CE398(&unk_2395C1E30, a4))
  {
    v11 = sub_2393D9044(2u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Subscribe received on unknown char", v13, 2u);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (a2 && (qword_27DF76558 ? (v6 = qword_27DF76570 == a2) : (v6 = 0), v6))
  {
    sub_2393C9B44(&dword_27DF76538);
    return 1;
  }

  else
  {
    v7 = sub_2393D9044(2u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "No endpoint for received subscribe", v12, 2u);
    }

    result = sub_2393D5398(3u);
    if (result)
    {
      v9 = 3;
LABEL_17:
      sub_2393D5320(2u, v9);
      return 0;
    }
  }

  return result;
}

BOOL sub_2393CDCC4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!sub_2393CE398(&unk_2395C1E00, a3))
  {
    v10 = sub_2393D9044(2u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Subscribe complete on unknown svc", buf, 2u);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      return result;
    }

LABEL_16:
    v9 = 1;
    goto LABEL_17;
  }

  if (!sub_2393CE398(&unk_2395C1E10, a4) && !sub_2393CE398(&unk_2395C1E30, a4))
  {
    v11 = sub_2393D9044(2u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Subscribe complete on unknown char", v13, 2u);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (a2 && (qword_27DF76558 ? (v6 = qword_27DF76570 == a2) : (v6 = 0), v6))
  {
    sub_2393C9ED4(&dword_27DF76538);
    return 1;
  }

  else
  {
    v7 = sub_2393D9044(2u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "No endpoint for subscribe complete", v12, 2u);
    }

    result = sub_2393D5398(3u);
    if (result)
    {
      v9 = 3;
LABEL_17:
      sub_2393D5320(2u, v9);
      return 0;
    }
  }

  return result;
}

BOOL sub_2393CDE7C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!sub_2393CE398(&unk_2395C1E00, a3))
  {
    v10 = sub_2393D9044(2u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Unsubscribe received on unknown svc", buf, 2u);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      return result;
    }

LABEL_16:
    v9 = 1;
    goto LABEL_17;
  }

  if (!sub_2393CE398(&unk_2395C1E10, a4) && !sub_2393CE398(&unk_2395C1E30, a4))
  {
    v11 = sub_2393D9044(2u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Unsubscribe received on unknown char", v13, 2u);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (a2 && (qword_27DF76558 ? (v6 = qword_27DF76570 == a2) : (v6 = 0), v6))
  {
    sub_2393C97B4(&dword_27DF76538, 2, 0x24700000404, "src/ble/BleLayer.cpp");
    return 1;
  }

  else
  {
    v7 = sub_2393D9044(2u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "No endpoint for unsubscribe received", v12, 2u);
    }

    result = sub_2393D5398(3u);
    if (result)
    {
      v9 = 3;
LABEL_17:
      sub_2393D5320(2u, v9);
      return 0;
    }
  }

  return result;
}

BOOL sub_2393CE048(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!sub_2393CE398(&unk_2395C1E00, a3))
  {
    v10 = sub_2393D9044(2u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Unsubscribe complete on unknown svc", buf, 2u);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      return result;
    }

LABEL_16:
    v9 = 1;
    goto LABEL_17;
  }

  if (!sub_2393CE398(&unk_2395C1E10, a4) && !sub_2393CE398(&unk_2395C1E30, a4))
  {
    v11 = sub_2393D9044(2u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Unsubscribe complete on unknown char", v13, 2u);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (a2 && (qword_27DF76558 ? (v6 = qword_27DF76570 == a2) : (v6 = 0), v6))
  {
    sub_2393CA148(&dword_27DF76538);
    return 1;
  }

  else
  {
    v7 = sub_2393D9044(2u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "No endpoint for unsubscribe complete", v12, 2u);
    }

    result = sub_2393D5398(3u);
    if (result)
    {
      v9 = 3;
LABEL_17:
      sub_2393D5320(2u, v9);
      return 0;
    }
  }

  return result;
}

unint64_t sub_2393CE200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && (qword_27DF76558 ? (v4 = qword_27DF76570 == a2) : (v4 = 0), v4))
  {
    if (a3 == 1030 && sub_2393CA33C(&dword_27DF76538))
    {

      return sub_2393CA14C(&dword_27DF76538);
    }

    else
    {

      return sub_2393C97B4(&dword_27DF76538, 2, a3, a4);
    }
  }

  else
  {
    v5 = sub_2393D9044(2u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "No endpoint for connection error", v9, 2u);
    }

    result = sub_2393D5398(3u);
    if (result)
    {
      return sub_2393D5320(2u, 3);
    }
  }

  return result;
}

uint64_t sub_2393CE320(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 4;
  do
  {
    v3 ^= 4u;
    v4 = (*(a1 + (v1 >> 1)) >> v3) & 0xF;
    if (v4 == 4 && v2 < 4)
    {
      v2 = 4;
    }

    else if (!v4)
    {
      return v2;
    }

    ++v1;
  }

  while (v1 != 8);
  return v2;
}

BOOL sub_2393CE398(uint64_t *a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *a1;
    v4 = a1[1];
    return v5 == *a2 && v4 == a2[1];
  }

  return result;
}

uint64_t sub_2393CE3C0(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_2393D96C8(v5);
  }

  *(a1 + 16) = 0;
  *(a1 + 25) = 0;
  *(a1 + 28) = 20;
  *(a1 + 32) = 0;
  v6 = *(a1 + 40);
  if (v6)
  {
    sub_2393D96C8(v6);
  }

  *(a1 + 40) = 0;
  *(a1 + 52) = 20;
  *(a1 + 49) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a3;
  *(a1 + 64) = a3;
  *(a1 + 24) = a3 ^ 1;
  return 0;
}

uint64_t sub_2393CE448(unsigned __int8 *a1)
{
  result = a1[48];
  if ((a1[64] & 1) == 0)
  {
    a1[64] = 1;
    a1[50] = result;
  }

  a1[49] = result;
  a1[48] = result + 1;
  return result;
}

uint64_t sub_2393CE474(_BYTE *a1)
{
  v1 = a1[25];
  v2 = a1[24];
  a1[25] = v2;
  a1[26] = v2;
  return v1;
}

uint64_t sub_2393CE4A0(unsigned __int8 *a1, unsigned int a2)
{
  if (a1[64] != 1)
  {
    return 0;
  }

  v2 = a1[49];
  v3 = a1[50];
  if (v2 < a2)
  {
    v4 = v3 >= a2;
    v5 = v3 == a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = v5 || !v4;
  if (v2 >= a2)
  {
    v7 = v3 >= a2;
    v8 = v3 == a2;
  }

  else
  {
    v7 = 1;
    v8 = 0;
  }

  v9 = v8 || !v7;
  if (v2 >= v3)
  {
    return v9;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2393CE4E0(unsigned __int8 *a1, unsigned int a2)
{
  if (a1[64] != 1)
  {
    goto LABEL_14;
  }

  v2 = a1[49];
  v3 = a1[50];
  if (v2 >= v3)
  {
    if (v2 >= a2 && v3 <= a2)
    {
      goto LABEL_7;
    }

LABEL_14:
    v5 = 0xA800000000;
    v6 = 1051;
    return v6 | v5;
  }

  if (v2 < a2 && v3 > a2)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v2 == a2)
  {
    v5 = 0;
    v6 = 0;
    a1[50] = a2;
    a1[64] = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    a1[50] = a2 + 1;
  }

  return v6 | v5;
}

uint64_t sub_2393CE568(_BYTE *a1, uint64_t *a2)
{
  if (!sub_2393D9AD4(*a2, 0))
  {
    v8 = 0xC000000000;
LABEL_8:
    v9 = 11;
    return v9 | v8;
  }

  if (sub_2393D9788(*a2) < 3)
  {
    v8 = 0xC300000000;
    goto LABEL_8;
  }

  v4 = *(*a2 + 8);
  *v4 = 8;
  v5 = a1[25];
  v6 = a1[24];
  a1[25] = v6;
  a1[26] = v6;
  v4[1] = v5;
  v7 = a1[48];
  if ((a1[64] & 1) == 0)
  {
    a1[64] = 1;
    a1[50] = v7;
  }

  a1[49] = v7;
  a1[48] = v7 + 1;
  v4[2] = v7;
  sub_2393D97A0(*a2, 3uLL, 0);
  v8 = 0;
  v9 = 0;
  return v9 | v8;
}

unint64_t sub_2393CE634(uint64_t a1, uint64_t *a2, _BYTE *a3, BOOL *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v8 = *a2;
  if (!*a2)
  {
    v12 = 233;
    v11 = 47;
    goto LABEL_9;
  }

  v9 = *(v8 + 8);
  v10 = *(v8 + 24);
  *buf = v9;
  *&buf[8] = v9;
  v38 = 0;
  v39 = 0;
  *&buf[16] = v10;
  if (!v9)
  {
    *&buf[16] = 0;
  }

  ++*(a1 + 56);
  sub_2393D5964(buf, &v36);
  v11 = v38;
  if (v38)
  {
    goto LABEL_5;
  }

  v19 = v36;
  *a4 = (v36 & 8) != 0;
  if ((v19 & 8) != 0)
  {
    sub_2393D5964(buf, a3);
    v11 = v38;
    if (v38)
    {
LABEL_5:
      v12 = HIDWORD(v38);
      goto LABEL_6;
    }

    v24 = sub_2393CE4E0(a1, *a3);
    v11 = v24;
    if (v24)
    {
      v12 = HIDWORD(v24);
      goto LABEL_6;
    }
  }

  sub_2393D5964(buf, (a1 + 25));
  v11 = v38;
  v12 = HIDWORD(v38);
  if (v38)
  {
    goto LABEL_6;
  }

  v20 = *(a1 + 25);
  if (v20 != *(a1 + 24))
  {
    v11 = 1054;
    v12 = 262;
    goto LABEL_6;
  }

  *(a1 + 24) = v20 + 1;
  if ((v36 & 7) == 0)
  {
    goto LABEL_6;
  }

  v21 = *(a1 + 28);
  if (*&buf[8] - *buf > v21)
  {
    v11 = 1055;
    v12 = 276;
    goto LABEL_6;
  }

  if (*(*a2 + 24) >= v21)
  {
    v25 = *(a1 + 28);
  }

  else
  {
    v25 = *(*a2 + 24);
  }

  sub_2393D97A0(*a2, v25, 0);
  sub_2393D9984(*a2, (*&buf[8] - *buf));
  v26 = *(a1 + 8);
  if (v26 == 1)
  {
    if (v36)
    {
      v12 = 318;
    }

    else
    {
      if ((v36 & 6) != 0)
      {
        sub_2393D982C(*(a1 + 16), a2);
        sub_2393D9870(*(a1 + 16));
        v28 = *(a1 + 16);
        if (*v28)
        {
          v12 = 330;
          v11 = 194;
          goto LABEL_9;
        }

        goto LABEL_61;
      }

      v12 = 322;
    }

    v11 = 1053;
    goto LABEL_9;
  }

  if (v26)
  {
    v12 = 334;
    v11 = 1055;
    goto LABEL_9;
  }

  v27 = *(*a2 + 24);
  *buf = *(*a2 + 8);
  *&buf[8] = *buf;
  v38 = 0;
  v39 = 0;
  *&buf[16] = v27;
  if (!*buf)
  {
    *&buf[16] = 0;
  }

  if ((v36 & 1) == 0)
  {
    v11 = 1053;
    v12 = 294;
    goto LABEL_6;
  }

  sub_2393D5A0C(buf, (a1 + 30));
  v11 = v38;
  v12 = HIDWORD(v38);
  if (v38)
  {
LABEL_6:
    if (!v11)
    {
      goto LABEL_33;
    }

    goto LABEL_9;
  }

  *(a1 + 8) = 1;
  sub_2393D9984(*a2, (*&buf[8] - *buf));
  sub_2393D9C18(0x609uLL, 0x26u, &v35);
  v29 = *(a1 + 16);
  if (v29)
  {
    sub_2393D96C8(v29);
  }

  v30 = v35;
  *(a1 + 16) = v35;
  if (!v30)
  {
    v11 = 11;
    v12 = 306;
    goto LABEL_6;
  }

  sub_2393D982C(v30, a2);
  sub_2393D9870(*(a1 + 16));
  v28 = *(a1 + 16);
  if (*v28)
  {
    v11 = 194;
    v12 = 313;
    goto LABEL_6;
  }

LABEL_61:
  if ((v36 & 4) == 0)
  {
    goto LABEL_6;
  }

  v31 = v28[3];
  if (v31 >> 16)
  {
    v12 = 341;
    v11 = 4;
  }

  else
  {
    v32 = *(a1 + 30);
    if (v31 > v32)
    {
      sub_2393D97A0(v28, v32, 0);
      v31 = *(*(a1 + 16) + 24);
      v32 = *(a1 + 30);
    }

    if (v31 == v32)
    {
      *(a1 + 8) = 2;
      ++*(a1 + 58);
      goto LABEL_6;
    }

    v12 = 350;
    v11 = 1052;
  }

LABEL_9:
  *(a1 + 8) = 3;
  v13 = sub_2393D9044(2u);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = sub_2393C9138();
    *buf = 136315394;
    *&buf[4] = v14;
    *&buf[12] = 1024;
    *&buf[14] = v36;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "HandleCharacteristicReceived failed, err = %s, rx_flags = %u", buf, 0x12u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    sub_2393D5320(2u, 1);
  }

  if (*a4)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = *a3;
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "With rx'd ack = %u", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      v33 = *a3;
      sub_2393D5320(2u, 1);
    }
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = *(v16 + 24);
      *buf = 67109120;
      *&buf[4] = v17;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "With rx buf data length = %u", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      v34 = *(*(a1 + 16) + 24);
      sub_2393D5320(2u, 1);
    }
  }

  sub_2393CEBB8(a1);
  if (*a2)
  {
    v18 = *(a1 + 16);
    if (v18)
    {
      sub_2393D982C(v18, a2);
    }

    else
    {
      *(a1 + 16) = *a2;
      *a2 = 0;
    }
  }

LABEL_33:
  v22 = *MEMORY[0x277D85DE8];
  return v11 | (v12 << 32);
}

uint64_t sub_2393CEBB8(uint64_t *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(2u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *a1;
    *buf = 134217984;
    v40 = v3;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mAppState: %p", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v22 = *a1;
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 14);
    *buf = 67109120;
    LODWORD(v40) = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mRxFragmentSize: %d", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v23 = *(a1 + 14);
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 2);
    *buf = 67109120;
    LODWORD(v40) = v5;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mRxState: %d", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v24 = *(a1 + 2);
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[2] != 0;
    *buf = 67109120;
    LODWORD(v40) = v6;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mRxBuf: %d", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v25 = a1[2] != 0;
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 24);
    *buf = 67109120;
    LODWORD(v40) = v7;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mRxNextSeqNum: %d", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v26 = *(a1 + 24);
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 25);
    *buf = 67109120;
    LODWORD(v40) = v8;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mRxNewestUnackedSeqNum: %d", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v27 = *(a1 + 25);
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 26);
    *buf = 67109120;
    LODWORD(v40) = v9;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mRxOldestUnackedSeqNum: %d", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v28 = *(a1 + 26);
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 28);
    *buf = 67109120;
    LODWORD(v40) = v10;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mRxCharCount: %d", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v29 = *(a1 + 28);
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 29);
    *buf = 67109120;
    LODWORD(v40) = v11;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mRxPacketCount: %d", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v30 = *(a1 + 29);
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 26);
    *buf = 67109120;
    LODWORD(v40) = v12;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mTxFragmentSize: %d", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v31 = *(a1 + 26);
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 8);
    *buf = 67109120;
    LODWORD(v40) = v13;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mTxState: %d", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v32 = *(a1 + 8);
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v14 = a1[5] != 0;
    *buf = 67109120;
    LODWORD(v40) = v14;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mTxBuf: %d", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v33 = a1[5] != 0;
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 48);
    *buf = 67109120;
    LODWORD(v40) = v15;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mTxNextSeqNum: %d", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v34 = *(a1 + 48);
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 49);
    *buf = 67109120;
    LODWORD(v40) = v16;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mTxNewestUnackedSeqNum: %d", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v35 = *(a1 + 49);
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 50);
    *buf = 67109120;
    LODWORD(v40) = v17;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mTxOldestUnackedSeqNum: %d", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v36 = *(a1 + 50);
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 30);
    *buf = 67109120;
    LODWORD(v40) = v18;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mTxCharCount: %d", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v37 = *(a1 + 30);
    sub_2393D5320(2u, 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 31);
    *buf = 67109120;
    LODWORD(v40) = v19;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "mTxPacketCount: %d", buf, 8u);
  }

  result = sub_2393D5398(1u);
  if (result)
  {
    v38 = *(a1 + 31);
    result = sub_2393D5320(2u, 1);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393CF370@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 8) == 2)
  {
    *(result + 8) = 0;
  }

  *a2 = *(result + 16);
  *(result + 16) = 0;
  return result;
}

BOOL sub_2393CF390(uint64_t a1, uint64_t *a2, int a3)
{
  ++*(a1 + 60);
  if (!a3 || *(a1 + 26) != *(a1 + 24))
  {
    v8 = *(a1 + 32);
    if (v8 == 1)
    {
      if (*a2)
      {
        return 0;
      }

      v20 = *(a1 + 40);
      v21 = -3;
      if (!a3)
      {
        v21 = -2;
      }

      v15 = (v20[1] + *(a1 + 52) + v21);
      sub_2393D9734(v20, v15);
      if (a3)
      {
        v22 = *(a1 + 25);
        v23 = *(a1 + 24);
        *(a1 + 25) = v23;
        *(a1 + 26) = v23;
        v15[1] = v22;
        v24 = 2;
        v19 = 10;
      }

      else
      {
        v24 = 1;
        v19 = 2;
      }

      v25 = *(a1 + 48);
      if ((*(a1 + 64) & 1) == 0)
      {
        *(a1 + 64) = 1;
        *(a1 + 50) = v25;
      }

      *(a1 + 49) = v25;
      *(a1 + 48) = v25 + 1;
      v15[v24] = v25;
      v26 = v24 + 1;
    }

    else
    {
      if (v8)
      {
        return 0;
      }

      v9 = *a2;
      if (!*a2)
      {
        return 0;
      }

      v10 = *(a1 + 40);
      if (v10)
      {
        sub_2393D96C8(v10);
        v9 = *a2;
      }

      *(a1 + 40) = v9;
      *a2 = 0;
      *(a1 + 32) = 1;
      v11 = *(a1 + 40);
      v12 = v11[3];
      if (v12 >> 16)
      {
        return 0;
      }

      *(a1 + 54) = v12;
      if (a3)
      {
        v13 = 5;
      }

      else
      {
        v13 = 4;
      }

      if ((sub_2393D9AD4(v11, v13) & 1) == 0)
      {
        v27 = sub_2393D9044(2u);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v34[0] = 0;
          _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "HandleCharacteristicSend: not enough headroom", v34, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(2u, 1);
        }

        *(a1 + 32) = 3;
        v28 = *(a1 + 40);
        if (v28)
        {
          sub_2393D96C8(v28);
        }

        result = 0;
        *(a1 + 40) = 0;
        return result;
      }

      v14 = *(a1 + 40);
      v15 = (v14[1] - v13);
      sub_2393D9734(v14, v15);
      if (a3)
      {
        v16 = *(a1 + 25);
        v17 = *(a1 + 24);
        *(a1 + 25) = v17;
        *(a1 + 26) = v17;
        v15[1] = v16;
        v18 = 2;
        v19 = 9;
      }

      else
      {
        v19 = 1;
        v18 = 1;
      }

      v29 = *(a1 + 48);
      if ((*(a1 + 64) & 1) == 0)
      {
        *(a1 + 64) = 1;
        *(a1 + 50) = v29;
      }

      *(a1 + 49) = v29;
      *(a1 + 48) = v29 + 1;
      v30 = &v15[v18];
      *v30 = v29;
      v30[1] = *(a1 + 54);
      v26 = v18 + 3;
      v30[2] = *(a1 + 55);
    }

    v31 = *(a1 + 52);
    v32 = *(a1 + 40);
    if (*(a1 + 54) + v26 <= v31)
    {
      sub_2393D97A0(v32, (*(a1 + 54) + v26), 0);
      v33 = 0;
      v19 |= 4u;
      *(a1 + 32) = 2;
      ++*(a1 + 62);
    }

    else
    {
      sub_2393D97A0(v32, v31, 0);
      v33 = *(a1 + 54) + v26 - *(a1 + 52);
    }

    *(a1 + 54) = v33;
    *v15 = v19;
    return 1;
  }

  v6 = sub_2393D9044(2u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "HandleCharacteristicSend: send_ack true, but nothing to acknowledge.", buf, 2u);
  }

  result = sub_2393D5398(1u);
  if (result)
  {
    sub_2393D5320(2u, 1);
    return 0;
  }

  return result;
}

uint64_t sub_2393CF6AC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 32) == 2)
  {
    *(result + 32) = 0;
  }

  *a2 = *(result + 40);
  *(result + 40) = 0;
  return result;
}

const char *sub_2393CF6CC(_DWORD *a1, char *a2, socklen_t a3)
{
  if (sub_2393CFA1C(a1))
  {
    v6 = a1 + 3;
    v7 = 2;
  }

  else
  {
    v7 = 30;
    v6 = a1;
  }

  return inet_ntop(v7, v6, a2, a3);
}

uint64_t sub_2393CF730(char *a1, __n128 *a2)
{
  if (strchr(a1, 58))
  {
    if (inet_pton(30, a1, &v7) >= 1)
    {
      sub_2393CF9A8(&v6, &v7);
      v4 = v6;
LABEL_6:
      *a2 = v4;
      return 1;
    }
  }

  else if (inet_pton(2, a1, &v6) >= 1)
  {
    sub_2393CF990(&v7, &v6);
    v4 = v7;
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_2393CF7CC(void *__src, size_t __n, __n128 *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (__n > 0x2D)
  {
    result = 0;
  }

  else
  {
    memcpy(__dst, __src, __n);
    __dst[__n] = 0;
    result = sub_2393CF730(__dst, a3);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393CF860(char *a1, __n128 *a2, unsigned int *a3)
{
  __lasts = 0;
  v6 = strtok_r(a1, "%", &__lasts);
  if (v6 && (v7 = v6, (v8 = strtok_r(0, "%", &__lasts)) != 0))
  {
    if (sub_2393D01E4(v8, a3))
    {
      return 0;
    }

    v10 = v7;
  }

  else
  {
    *a3 = 0;
    v10 = a1;
  }

  return sub_2393CF730(v10, a2);
}

uint64_t sub_2393CF990(uint64_t result, _DWORD *a2)
{
  *result = 0;
  *(result + 8) = -65536;
  *(result + 12) = *a2;
  return result;
}

__n128 sub_2393CF9A8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2393CF9C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 1);
  if (v2 == 30)
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 16);
    goto LABEL_5;
  }

  if (v2 == 2)
  {
    v3 = 0;
    v4 = (*(a1 + 4) << 32) | 0xFFFF0000;
LABEL_5:
    result = 0;
    *a2 = v3;
    a2[1] = v4;
    return result;
  }

  return 0xFA00000101;
}

BOOL sub_2393CFAB0(uint64_t a1)
{
  if (*a1 == 0xFF)
  {
    return 1;
  }

  if (*a1 || *(a1 + 4) || *(a1 + 8) != -65536)
  {
    return 0;
  }

  return (*(a1 + 12) & 0xF0) == 224;
}

BOOL sub_2393CFB10(uint64_t a1)
{
  if (*a1 == xmmword_27DF7BD44 && *(a1 + 4) == *(&xmmword_27DF7BD44 + 4) && *(a1 + 12) == HIDWORD(xmmword_27DF7BD44))
  {
    return 0;
  }

  if (*a1 || *(a1 + 4))
  {
    return 1;
  }

  return *(a1 + 8) != -65536;
}

unint64_t sub_2393CFBDC(uint64_t a1)
{
  if ((*a1 & 0xFE) == 0xFC)
  {
    return bswap64(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2393CFC00(_DWORD *a1)
{
  if ((*a1 & 0xFE) == 0xFC)
  {
    return bswap32(a1[1]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2393CFC28(_DWORD *a1)
{
  if ((*a1 & 0xFE) == 0xFC)
  {
    return (bswap32(a1[1]) >> 16) | (bswap32(*a1 & 0xFFFFFF00) << 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2393CFC5C(_DWORD *a1)
{
  if (*a1 || a1[1])
  {
    return 2;
  }

  if (a1[2] || a1[3])
  {
    if (a1[2] == -65536)
    {
      return 1;
    }

    return 2;
  }

  return 3;
}

__n128 sub_2393CFCA0(__n128 *a1, _OWORD **a2)
{
  result = *a1;
  *(*a2)++ = *a1;
  return result;
}

__n128 sub_2393CFCBC(__n128 **a1, __n128 *a2)
{
  result = **a1;
  *a2 = result;
  ++*a1;
  return result;
}

unint64_t sub_2393CFD08(int a1, char a2, unsigned __int16 *a3)
{
  result = bswap64(bswap32(*(a3 + 1)) | (((a1 << 20) | ((a2 & 0xF) << 16) | (bswap32(*a3) >> 16)) << 32) | 0xFF00000000000000);
  v4 = *(a3 + 3);
  return result;
}

unint64_t sub_2393CFD38(unsigned __int8 a1, char a2, unsigned int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v5 = 0;
  v7 = bswap32(a3);
  result = sub_2393CFD08(a1, a2, &v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393CFD9C(char a1, unsigned int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v4 = 0;
  v6 = bswap32(a2);
  result = sub_2393CFD08(0, a1, &v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393CFE14(char a1, char a2, uint64_t *a3, int a4)
{
  v20 = *MEMORY[0x277D85DE8];
  LOBYTE(v7) = 0;
  HIBYTE(v7) = a2;
  v4 = *a3;
  v8 = HIBYTE(*a3);
  v9 = BYTE6(v4);
  v10 = BYTE5(v4);
  v11 = BYTE4(v4);
  v12 = BYTE3(v4);
  v13 = BYTE2(v4);
  v14 = BYTE1(v4);
  v15 = v4;
  v16 = HIBYTE(a4);
  v17 = BYTE2(a4);
  v18 = BYTE1(a4);
  v19 = a4;
  result = sub_2393CFD08(3, a1, &v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2393CFEFC(uint64_t a1)
{
  *a1 = xmmword_27DF7BD44;
  result = *&xmmword_27DF7BD44;
  *(a1 + 16) = xmmword_27DF7BD44;
  *(a1 + 32) = 0;
  return result;
}

BOOL sub_2393CFF54(uint64_t a1, uint64_t a2)
{
  result = sub_2393CF8F8(a1, a2);
  if (result)
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

BOOL sub_2393CFFD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 >= 0x80)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v2 < 0x20)
  {
    v4 = 0;
    return !v3 || ((*(a2 + 4 * v4) ^ *(a1 + 4 * v4)) & bswap32(-1 << (32 - v3))) == 0;
  }

  else
  {
    v4 = 0;
    while (*(a1 + 4 * v4) == *(a2 + 4 * v4))
    {
      ++v4;
      v3 -= 32;
      if (v3 <= 0x1Fu)
      {
        return !v3 || ((*(a2 + 4 * v4) ^ *(a1 + 4 * v4)) & bswap32(-1 << (32 - v3))) == 0;
      }
    }

    return 0;
  }
}

BOOL sub_2393D006C(char *a1, size_t a2, int a3, uint64_t a4)
{
  v4 = a3 & 0xFF000700;
  if ((a3 & 0xFF000700) == 0x100)
  {
    if ((a3 - 257) > 0x1A)
    {
      v5 = 0;
    }

    else
    {
      v5 = off_278A764B8[a3 - 257];
    }

    sub_2393C9264(a1, a2, "Inet", a3, a4, v5);
  }

  return v4 == 256;
}

unint64_t sub_2393D00D4(unsigned int *a1, char *a2, size_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (!v5)
  {
    if (a3)
    {
      v6 = 0;
      v7 = 0;
      *a2 = 0;
      goto LABEL_12;
    }

    v6 = 0x1DE00000000;
LABEL_11:
    v7 = 25;
    goto LABEL_12;
  }

  if (!if_indextoname(v5, __s))
  {
    v8 = __error();
    v9 = sub_2393D948C(*v8, "src/inet/InetInterface.cpp", 0x1D2u);
    v6 = v9 & 0xFFFFFFFF00000000;
    v7 = v9;
    goto LABEL_12;
  }

  if (strlen(__s) >= a3)
  {
    v6 = 0x1D700000000;
    goto LABEL_11;
  }

  if (a2)
  {
    strncpy(a2, __s, a3);
    v6 = 0;
    v7 = 0;
    a2[a3 - 1] = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return v7 | v6;
}

unint64_t sub_2393D01E4(const char *a1, unsigned int *a2)
{
  __endptr = 0;
  v4 = strtoul(a1, &__endptr, 10);
  if (!*__endptr)
  {
    if (v4 - 1 <= 0xFD)
    {
      v6 = 0;
      v7 = 0;
      *a2 = v4;
      return v7 | v6;
    }

    v7 = 0x1F100000000;
LABEL_9:
    v6 = 270;
    return v7 | v6;
  }

  v5 = if_nametoindex(a1);
  *a2 = v5;
  if (!v5)
  {
    if (*__error() != 6)
    {
      v8 = __error();
      v9 = sub_2393D948C(*v8, "src/inet/InetInterface.cpp", 0x1F9u);
      v7 = v9 & 0xFFFFFFFF00000000;
      v6 = v9;
      return v7 | v6;
    }

    v7 = 0x1F900000000;
    goto LABEL_9;
  }

  v6 = 0;
  v7 = 0;
  return v7 | v6;
}

uint64_t sub_2393D02C4()
{
  if (dword_27DF765E0 == -1)
  {
    v0 = socket(2, 1, 0);
    fcntl(v0, 2, 0x1000000);
    v1 = -1;
    atomic_compare_exchange_strong(&dword_27DF765E0, &v1, v0);
    if (v1 != -1)
    {
      close(v0);
    }
  }

  return dword_27DF765E0;
}

uint64_t sub_2393D0340()
{
  result = dword_27DF765E0;
  if (dword_27DF765E0 != -1)
  {
    result = close(dword_27DF765E0);
    dword_27DF765E0 = -1;
  }

  return result;
}

uint64_t sub_2393D0378(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 15) = 0;
  return result;
}

void *sub_2393D0384(void *result)
{
  if (*result)
  {
    sub_2393D5248();
  }

  return result;
}

if_nameindex *sub_2393D03B8(void *a1)
{
  if (*a1)
  {
    return (*(*a1 + 16 * a1[1]) != 0);
  }

  else
  {
    return sub_2393D03DC(a1);
  }
}

if_nameindex *sub_2393D03DC(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 8);
    if (result[v3].if_index)
    {
      *(a1 + 8) = v3 + 1;
      *(a1 + 16) = 0;
      *(a1 + 18) = 0;
    }
  }

  else
  {
    result = j__if_nameindex();
    *a1 = result;
    if (!result)
    {
      return result;
    }
  }

  return (result[*(a1 + 8)].if_index != 0);
}

if_nameindex *sub_2393D0448@<X0>(if_nameindex *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = result;
  v4 = *&result->if_index;
  if (!*&result->if_index)
  {
    result = sub_2393D03DC(result);
    if (!result)
    {
      v5 = 0;
      goto LABEL_5;
    }

    v4 = *&v2->if_index;
  }

  v5 = *(v4 + 16 * v2->if_name);
LABEL_5:
  *a2 = v5;
  return result;
}

uint64_t sub_2393D049C(uint64_t *a1, char *a2, size_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = a1[1];
    if (!*(v6 + 16 * v7))
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!sub_2393D03DC(a1))
    {
LABEL_9:
      v9 = 0x25900000000;
      v10 = 3;
      return v10 | v9;
    }

    v6 = *a1;
    v7 = a1[1];
  }

  v8 = *(v6 + 16 * v7 + 8);
  if (strlen(v8) >= a3)
  {
    v9 = 0x25A00000000;
    v10 = 25;
  }

  else if (a2)
  {
    strncpy(a2, v8, a3);
    v9 = 0;
    v10 = 0;
    a2[a3 - 1] = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return v10 | v9;
}

uint64_t sub_2393D0590(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 18) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      if (!*(v2 + 16 * v3))
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (!sub_2393D03DC(a1))
      {
        goto LABEL_9;
      }

      v2 = *a1;
      v3 = *(a1 + 8);
    }

    strncpy(__dst, *(v2 + 16 * v3 + 8), 0x10uLL);
    __dst[15] = 0;
    v4 = sub_2393D02C4();
    if (!ioctl(v4, 0xC0206911uLL, __dst))
    {
      *(a1 + 16) = v8;
      *(a1 + 18) = 1;
    }
  }

LABEL_9:
  result = *(a1 + 16);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2393D06DC(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *sub_2393D06E4(void *a1)
{
  if (*a1)
  {
    MEMORY[0x23EE78030]();
    *a1 = 0;
    a1[1] = 0;
  }

  return a1;
}

uint64_t sub_2393D0718(uint64_t a1)
{
  if (*a1)
  {
    return *(a1 + 8) != 0;
  }

  else
  {
    return sub_2393D0734(a1);
  }
}

uint64_t sub_2393D0734(ifaddrs **a1)
{
  v2 = *a1;
  while (1)
  {
    if (v2)
    {
      v3 = a1[1];
      if (!v3)
      {
        return 0;
      }

      ifa_next = v3->ifa_next;
    }

    else
    {
      if (getifaddrs(a1) < 0)
      {
        return 0;
      }

      ifa_next = *a1;
      v2 = *a1;
    }

    a1[1] = ifa_next;
    if (!ifa_next)
    {
      break;
    }

    ifa_addr = ifa_next->ifa_addr;
    if (ifa_addr)
    {
      sa_family = ifa_addr->sa_family;
      if (sa_family == 30 || sa_family == 2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_2393D07AC(ifaddrs **a1, void *a2)
{
  if (*a1)
  {
    v4 = a1[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!sub_2393D0734(a1))
    {
LABEL_7:
      v6 = 0x2CC00000000;
      v7 = 10;
      return v7 | v6;
    }

    v4 = a1[1];
  }

  v5 = sub_2393CF9C8(v4->ifa_addr, a2);
  v6 = v5 & 0xFFFFFFFF00000000;
  v7 = v5;
  return v7 | v6;
}

uint64_t sub_2393D0820(ifaddrs **a1)
{
  if (*a1)
  {
    v2 = a1[1];
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    if (!sub_2393D0734(a1))
    {
      return 0;
    }

    v2 = a1[1];
  }

  sa_family = v2->ifa_addr->sa_family;
  if (sa_family == 30)
  {
    v5 = 16;
    v4 = 8;
    goto LABEL_11;
  }

  if (sa_family != 2)
  {
    return 0;
  }

  v4 = 4;
  v5 = 4;
LABEL_11:
  v7 = &v2->ifa_netmask->sa_len + v4;

  return sub_2393D08B8(v7, v5);
}

uint64_t sub_2393D08B8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 0;
    LOBYTE(v3) = 8 * a2;
    v4 = a2;
    while (1)
    {
      v6 = *a1++;
      v5 = v6;
      if (v6 != 255)
      {
        break;
      }

      v2 += 8;
      if (!--v4)
      {
        return v3;
      }
    }

    v7 = v2 | 4;
    if (v5 > 0xEF)
    {
      v8 = v5;
    }

    else
    {
      v7 = v2;
      v8 = v5 >> 4;
    }

    if ((~v8 & 0xC) != 0)
    {
      v8 >>= 2;
    }

    else
    {
      v7 |= 2u;
    }

    return ((v8 >> 1) & 1 | v7);
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

uint64_t sub_2393D0928@<X0>(ifaddrs **a1@<X0>, _DWORD *a2@<X8>)
{
  if (!*a1)
  {
    result = sub_2393D0734(a1);
    if (!result)
    {
      goto LABEL_7;
    }

    v4 = a1[1];
LABEL_6:
    result = if_nametoindex(v4->ifa_name);
    goto LABEL_7;
  }

  v4 = a1[1];
  if (v4)
  {
    goto LABEL_6;
  }

  result = 0;
LABEL_7:
  *a2 = result;
  return result;
}

uint64_t sub_2393D0980(ifaddrs **a1, char *a2, size_t a3)
{
  if (*a1)
  {
    v6 = a1[1];
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!sub_2393D0734(a1))
    {
LABEL_9:
      v8 = 0x2EE00000000;
      v9 = 3;
      return v9 | v8;
    }

    v6 = a1[1];
  }

  ifa_name = v6->ifa_name;
  if (strlen(ifa_name) >= a3)
  {
    v8 = 0x2EF00000000;
    v9 = 25;
  }

  else if (a2)
  {
    strncpy(a2, ifa_name, a3);
    v8 = 0;
    v9 = 0;
    a2[a3 - 1] = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

uint64_t sub_2393D0A4C(ifaddrs **a1)
{
  if (*a1)
  {
    v2 = a1[1];
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_2393D0734(a1);
    if (!result)
    {
      return result;
    }

    v2 = a1[1];
  }

  return v2->ifa_flags & 1;
}

uint64_t sub_2393D0A9C(ifaddrs **a1)
{
  if (*a1)
  {
    v2 = a1[1];
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_2393D0734(a1);
    if (!result)
    {
      return result;
    }

    v2 = a1[1];
  }

  return (LOBYTE(v2->ifa_flags) >> 3) & 1;
}

uint64_t sub_2393D0AEC(ifaddrs **a1)
{
  if (*a1)
  {
    v2 = a1[1];
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_2393D0734(a1);
    if (!result)
    {
      return result;
    }

    v2 = a1[1];
  }

  return BYTE1(v2->ifa_flags) >> 7;
}

uint64_t sub_2393D0B3C(ifaddrs **a1)
{
  if (*a1)
  {
    v2 = a1[1];
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_2393D0734(a1);
    if (!result)
    {
      return result;
    }

    v2 = a1[1];
  }

  return (LOBYTE(v2->ifa_flags) >> 1) & 1;
}

uint64_t sub_2393D0B8C(int *a1, __n128 *a2)
{
  if (!a2)
  {
    return 0x30A0000002FLL;
  }

  v12 = 0;
  if (getifaddrs(&v12) == -1)
  {
    return 0x31200000110;
  }

  v4 = v12;
  if (!v12)
  {
    v8 = 0;
    v7 = 0x32800000000;
    v9 = 272;
    goto LABEL_16;
  }

  while (1)
  {
    ifa_addr = v4->ifa_addr;
    if (!ifa_addr || ifa_addr->sa_family != 30)
    {
      goto LABEL_11;
    }

    if (!*a1)
    {
      break;
    }

    v6 = *a1;
    if (v6 == if_nametoindex(v4->ifa_name))
    {
      ifa_addr = v4->ifa_addr;
      break;
    }

LABEL_11:
    v4 = v4->ifa_next;
    if (!v4)
    {
      v7 = 0x32800000000;
      v8 = v12;
      v9 = 272;
      goto LABEL_16;
    }
  }

  if (ifa_addr->sa_data[6] != 254 || (ifa_addr->sa_data[7] & 0xC0) != 0x80)
  {
    goto LABEL_11;
  }

  sub_2393CF9A8(&v11, &ifa_addr->sa_data[6]);
  v7 = 0;
  v9 = 0;
  *a2 = v11;
  v8 = v12;
LABEL_16:
  MEMORY[0x23EE78030](v8);
  return v9 | v7;
}

ifaddrs *sub_2393D0CB4@<X0>(_DWORD *a1@<X0>, _DWORD *a2@<X8>)
{
  v6 = 0;
  v7 = 0;
LABEL_4:
  if (sub_2393D0734(&v6))
  {
    while (sub_2393D07AC(&v6, v5) || !sub_2393CF8F8(a1, v5))
    {
      sub_2393D0734(&v6);
      if (!v6)
      {
        goto LABEL_4;
      }

      if (!v7)
      {
        goto LABEL_9;
      }
    }

    sub_2393D0928(&v6, a2);
  }

  else
  {
LABEL_9:
    *a2 = 0;
  }

  result = v6;
  if (v6)
  {
    return MEMORY[0x23EE78030]();
  }

  return result;
}

uint64_t sub_2393D0D58(_DWORD *a1)
{
  if (sub_2393CFBB4(a1))
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
LABEL_6:
  if (sub_2393D0734(&v6))
  {
    while (1)
    {
      if (!sub_2393D07AC(&v6, v4) && !sub_2393CFA1C(v4) && !sub_2393CFBB4(v4))
      {
        v5 = sub_2393D0820(&v6);
        if (sub_2393CFFD4(v4, a1))
        {
          break;
        }
      }

      sub_2393D0734(&v6);
      if (!v6)
      {
        goto LABEL_6;
      }

      if (!v7)
      {
        goto LABEL_13;
      }
    }

    v2 = 1;
  }

  else
  {
LABEL_13:
    v2 = 0;
  }

  if (v6)
  {
    MEMORY[0x23EE78030]();
  }

  return v2;
}

unint64_t sub_2393D0E28(_BYTE *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  if (a1[88])
  {
    v5 = 0x3000000000;
    v6 = 3;
  }

  else if (!sub_2393CF944(a3, &xmmword_27DF7BD44) || sub_2393CFC5C(a3) == 3 || sub_2393CFC5C(a3) == a2)
  {
    v12 = (*(*a1 + 72))(a1, a2, a3, a4, a5);
    v6 = v12;
    if (!v12)
    {
      a1[88] = 1;
    }

    v5 = v12 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = 0x3500000000;
    v6 = 257;
  }

  return v5 | v6;
}

unint64_t sub_2393D0F20(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = (*(*a1 + 80))(a1);
    v3 = HIDWORD(v2);
    if (!v2)
    {
      sub_2393D0FB4((a1 + 8));
      LODWORD(v2) = 0;
      *(a1 + 88) = 2;
    }
  }

  else
  {
    LODWORD(v2) = 3;
    LODWORD(v3) = 68;
  }

  return v2 | (v3 << 32);
}

int *sub_2393D0FB4(int *a1)
{
  v1 = *a1;
  if (*a1 == -1)
  {
    sub_23952FE00();
  }

  if (!v1)
  {
    sub_23952FEA0();
  }

  *a1 = v1 + 1;
  return a1 - 2;
}

unint64_t sub_2393D0FE8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*(a1 + 88) > 1u)
  {
    v8 = 0x5500000000;
    LODWORD(v7) = 3;
  }

  else
  {
    v12 = v4;
    v13 = v5;
    v11 = *a4;
    v7 = (*(*a1 + 88))(a1, a2, a3, &v11);
    if (v7)
    {
      v8 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      v9 = *(a1 + 116);
      if (v9)
      {
        (*(**(*(a1 + 24) + 16) + 40))(*(*(a1 + 24) + 16), v9, sub_2393D18D0, a1);
      }

      LODWORD(v7) = 0;
      v8 = 0;
    }
  }

  return v8 | v7;
}

uint64_t sub_2393D10CC(uint64_t result)
{
  v1 = *(result + 116);
  if (v1)
  {
    return (*(**(*(result + 24) + 16) + 40))(*(*(result + 24) + 16), v1, sub_2393D18D0, result);
  }

  return result;
}

unint64_t sub_2393D1118(uint64_t a1, uint64_t *a2, int a3)
{
  if ((*(a1 + 88) | 2) == 6)
  {
    v5 = *(a1 + 104);
    if (v5)
    {
      sub_2393D982C(*(a1 + 104), a2);
    }

    else
    {
      *(a1 + 104) = *a2;
      *a2 = 0;
    }

    v7 = (*(*a1 + 96))(a1, v5 == 0);
    if (!v7)
    {
      if (a3)
      {
        v7 = sub_2393D11E4(a1);
      }

      else
      {
        v7 = 0;
      }
    }

    v6 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    v6 = 0x6100000000;
    LODWORD(v7) = 3;
  }

  return v6 | v7;
}

uint64_t sub_2393D11E4(uint64_t a1)
{
  v3 = (*(*a1 + 112))(a1);
  if (v3)
  {
    sub_2393D133C(a1, v3, v2, 0);
  }

  return v3;
}

uint64_t sub_2393D1258(uint64_t a1, void *a2)
{
  if ((*(a1 + 88) & 0xFC) == 4)
  {
    v4 = *(a1 + 96);
    if (v4)
    {
      sub_2393D96C8(v4);
    }

    v5 = 0;
    v6 = 0;
    *(a1 + 96) = *a2;
    *a2 = 0;
  }

  else
  {
    v5 = 0x7A00000000;
    v6 = 3;
  }

  return v6 | v5;
}

uint64_t sub_2393D12CC(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2393D12E4(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

void sub_2393D12FC(uint64_t a1)
{
  v1 = *(a1 + 88);
  if ((v1 & 0xFC) == 4)
  {
    if (v1 == 6)
    {
      sub_2393D133C(a1, 0, 0, 0);
    }

    else if (v1 == 4)
    {
      *(a1 + 88) = 5;
      sub_2393D11E4(a1);
    }
  }
}

void sub_2393D133C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a1 + 88);
  if ((v8 & 0xFC) == 4)
  {
    if (!a2 && (*(a1 + 104) || *(a1 + 96)))
    {
      v9 = 7;
    }

    else
    {
      v9 = 8;
    }

    *(a1 + 88) = v9;
  }

  else
  {
    v10 = 8;
    *(a1 + 88) = 8;
    if (v8 == 8)
    {
      goto LABEL_11;
    }
  }

  (*(**(*(a1 + 24) + 16) + 72))(*(*(a1 + 24) + 16), sub_2393D18D0, a1);
  v10 = *(a1 + 88);
LABEL_11:
  if (v10 == v8)
  {
    return;
  }

  (*(*a1 + 128))(a1, a2, a3, v8);
  if (*(a1 + 88) != 8)
  {
    return;
  }

  v11 = *(a1 + 104);
  if (v11)
  {
    sub_2393D96C8(v11);
  }

  *(a1 + 104) = 0;
  v12 = *(a1 + 96);
  if (v12)
  {
    sub_2393D96C8(v12);
  }

  *(a1 + 96) = 0;
  if (a4)
  {
    goto LABEL_18;
  }

  if ((v8 - 4) >= 4)
  {
    if (v8 != 3)
    {
LABEL_18:
      if (v8 <= 1)
      {
        return;
      }

      goto LABEL_23;
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v13 = *(a1 + 56);
    if (v13)
    {
LABEL_22:
      v13(a1, a2, a3);
    }
  }

LABEL_23:

  sub_2393D1598(a1 + 8);
}

void sub_2393D14D8(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[12] = 0;
  a1[4] = 0;
  a1[7] = 0;
  a1[8] = 0;

  sub_2393D133C(a1, 0, 0, 1);
}

void sub_2393D1530(void *a1)
{
  a1[4] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_2393D133C(a1, 0xBA00000002, "src/inet/TCPEndPoint.cpp", 1);
}

uint64_t sub_2393D1550(uint64_t a1)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  sub_2393D14D8(a1);

  return sub_2393D1598(a1 + 8);
}

uint64_t sub_2393D1598(uint64_t result)
{
  if (!*result)
  {
    sub_23952FF40();
  }

  v1 = *result - 1;
  *result = v1;
  if (!v1)
  {
    v2 = result - 8;
    v3 = *(result + 16);
    v4 = sub_2393DA0AC();
    --*(v4 + 2);
    v5 = *(*v3 + 24);

    return v5(v3, v2);
  }

  return result;
}

uint64_t sub_2393D1628(uint64_t a1, int a2)
{
  v3 = a2 + 99;
  v4 = (a2 + 99) / 0x64u;
  result = (*(**(a1 + 24) + 32))(*(a1 + 24), sub_2393D1B88);
  if (v4 >= 0xFFFF)
  {
    v6 = -1;
  }

  else
  {
    v6 = v4;
  }

  *(a1 + 114) = v6;
  *(a1 + 112) = v6;
  if (v3 >= 0x64 && result != 1)
  {
    v7 = *(**(*(a1 + 24) + 16) + 40);

    return v7();
  }

  return result;
}

uint64_t sub_2393D176C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 32))(a2, sub_2393D1B88);
  result = (*(*a2 + 32))(a2, sub_2393D1B28);
  if (v4 == 1)
  {
    v6 = *(*a1 + 40);

    return v6(a1, 100, sub_2393D176C, a2);
  }

  return result;
}

uint64_t sub_2393D1870(_BYTE *a1)
{
  if ((a1[88] & 0xFC) == 4)
  {
    return (*(*a1 + 104))(a1);
  }

  else
  {
    return 0x10D00000003;
  }
}

uint64_t sub_2393D18D0(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    sub_23952FFE0();
  }

  return sub_2393D133C(a2, 0x1310000011ALL, "src/inet/TCPEndPoint.cpp", 0);
}

void sub_2393D1960(uint64_t a1)
{
  v3 = (a1 + 96);
  v2 = *(a1 + 96);
  if (v2)
  {
    if (*(a1 + 89) == 1)
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        v5 = *(v2 + 16);
        v7 = v4(a1, a1 + 96);
        if (v7)
        {
          v8 = v6;
          goto LABEL_11;
        }

        (*(*a1 + 48))(a1, v5);
      }
    }
  }

  if (*(a1 + 88) != 7)
  {
    return;
  }

  v7 = *v3;
  if (*v3)
  {
    return;
  }

  v8 = 0;
LABEL_11:

  sub_2393D133C(a1, v7, v8, 0);
}

void sub_2393D1A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    sub_2393D133C(a1, a2, a3, 0);
  }

  else
  {
    (*(**(*(a1 + 24) + 16) + 72))(*(*(a1 + 24) + 16), sub_2393D18D0, a1);
    *(a1 + 114) = *(a1 + 112);
    *(a1 + 88) = 4;
    (*(*a1 + 120))(a1);
    v4 = *(a1 + 32);
    if (v4)
    {

      v4(a1, 0, 0);
    }
  }
}

uint64_t sub_2393D1B28(uint64_t a1)
{
  if ((*(a1 + 88) & 0xFC) == 4 && *(a1 + 112))
  {
    if (*(a1 + 114))
    {
      --*(a1 + 114);
    }

    else
    {
      sub_2393D133C(a1, 0xF000000115, "src/inet/TCPEndPoint.cpp", 0);
    }
  }

  return 0;
}

uint64_t sub_2393D1B98(uint64_t a1, int a2, void *a3, unsigned int a4, int a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = sub_2393D1DB4(a1, a2);
  v11 = HIDWORD(v10);
  v12 = v10;
  if (v10 || !a5)
  {
    if (v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v22 = 1;
    setsockopt(*(a1 + 120), 0xFFFF, 4, &v22, 4u);
    if (setsockopt(*(a1 + 120), 0xFFFF, 512, &v22, 4u))
    {
      v13 = sub_2393D9044(1u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *__error();
        *buf = 67109120;
        *&buf[4] = v14;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "SO_REUSEPORT: %d", buf, 8u);
      }

      if (sub_2393D5398(1u))
      {
        v21 = *__error();
        sub_2393D5320(1u, 1);
      }
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *buf = 0u;
  v24 = 0u;
  if (a2 == 1)
  {
    buf[1] = 2;
    *&buf[2] = __rev16(a4);
    *&buf[4] = sub_2393CF9B4(a3);
    v16 = 16;
  }

  else
  {
    if (a2 != 2)
    {
      v12 = 257;
      v11 = 125;
      goto LABEL_17;
    }

    buf[1] = 30;
    *&buf[2] = __rev16(a4);
    *&buf[8] = sub_2393CF9BC(a3);
    *&v24 = v15;
    DWORD2(v24) = 0;
    v16 = 28;
  }

  if (bind(*(a1 + 120), buf, v16))
  {
    v17 = __error();
    v18 = sub_2393D948C(*v17, "src/inet/TCPEndPointImplSockets.cpp", 0x85u);
    v11 = HIDWORD(v18);
    v12 = v18;
  }

  else
  {
    v12 = 0;
  }

LABEL_17:
  v19 = *MEMORY[0x277D85DE8];
  return v12 | (v11 << 32);
}

unint64_t sub_2393D1DB4(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 120) == -1)
  {
    if (a2 == 2)
    {
      v6 = 30;
    }

    else
    {
      if (a2 != 1)
      {
        v5 = 0x2DD00000000;
        LODWORD(v4) = 257;
        goto LABEL_21;
      }

      v6 = 2;
    }

    v7 = socket(v6, 1, 0);
    *(a1 + 120) = v7;
    if (v7 == -1)
    {
      v10 = __error();
      v4 = sub_2393D948C(*v10, "src/inet/TCPEndPointImplSockets.cpp", 0x2E2u);
    }

    else
    {
      v4 = (*(**(*(a1 + 24) + 16) + 88))(*(*(a1 + 24) + 16), v7, a1 + 128);
      if (!v4)
      {
        *(a1 + 124) = a2;
        if (a2 == 2)
        {
          *buf = 1;
          setsockopt(*(a1 + 120), 41, 27, buf, 4u);
        }

        v14 = 1;
        if (setsockopt(*(a1 + 120), 0xFFFF, 4130, &v14, 4u))
        {
          v8 = sub_2393D9044(1u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = *__error();
            *buf = 67109120;
            v16 = v9;
            _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "SO_NOSIGPIPE: %d", buf, 8u);
          }

          if (sub_2393D5398(1u))
          {
            v13 = *__error();
            sub_2393D5320(1u, 1);
          }
        }

        goto LABEL_3;
      }
    }

    v5 = v4 & 0xFFFFFFFF00000000;
    goto LABEL_21;
  }

  if (*(a1 + 124) != a2)
  {
    v5 = 0x30000000000;
    LODWORD(v4) = 3;
    goto LABEL_21;
  }

LABEL_3:
  LODWORD(v4) = 0;
  v5 = 0;
LABEL_21:
  v11 = *MEMORY[0x277D85DE8];
  return v5 | v4;
}

uint64_t sub_2393D1FC0(uint64_t a1, int a2)
{
  if (listen(*(a1 + 120), a2))
  {
    v3 = __error();
    return sub_2393D948C(*v3, "src/inet/TCPEndPointImplSockets.cpp", 0x91u);
  }

  else
  {
    v5 = fcntl(*(a1 + 120), 3, 0);
    fcntl(*(a1 + 120), 4, v5 | 4u);
    result = (*(**(*(a1 + 24) + 16) + 96))(*(*(a1 + 24) + 16), *(a1 + 128), sub_2393D20B0, a1);
    if (!result)
    {
      return (*(**(*(a1 + 24) + 16) + 104))(*(*(a1 + 24) + 16), *(a1 + 128));
    }
  }

  return result;
}

unint64_t sub_2393D20C0(uint64_t a1, _DWORD *a2, unsigned int a3, unsigned int *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = sub_2393CFC5C(a2);
  v9 = sub_2393D1DB4(a1, v8);
  if (v9)
  {
    goto LABEL_2;
  }

  v13 = *a4;
  v14 = sub_2393CFBB4(a2);
  if (!v13)
  {
    if (v14)
    {
      v10 = 0xAF00000000;
      goto LABEL_24;
    }

LABEL_13:
    v24 = 1;
    setsockopt(*(a1 + 120), 0xFFFF, 4130, &v24, 4u);
    v15 = fcntl(*(a1 + 120), 3, 0);
    fcntl(*(a1 + 120), 4, v15 | 4u);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0;
    v26 = 0u;
    if (v8 == 1)
    {
      v25.sa_family = 2;
      *v25.sa_data = __rev16(a3);
      *&v25.sa_data[2] = sub_2393CF9B4(a2);
      v17 = 16;
      goto LABEL_17;
    }

    if (v8 == 2)
    {
      v25.sa_family = 30;
      *v25.sa_data = __rev16(a3);
      *&v25.sa_data[6] = sub_2393CF9BC(a2);
      *&v26 = v16;
      DWORD2(v26) = *a4;
      v17 = 28;
LABEL_17:
      v18 = connect(*(a1 + 120), &v25, v17);
      if (v18 == -1 && *__error() != 36)
      {
        v19 = __error();
        v20 = sub_2393D948C(*v19, "src/inet/TCPEndPointImplSockets.cpp", 0x101u);
        LODWORD(v9) = v20;
        v10 = v20 & 0xFFFFFFFF00000000;
        sub_2393D133C(a1, v20, v21, 1);
        goto LABEL_3;
      }

      v9 = (*(**(*(a1 + 24) + 16) + 96))(*(*(a1 + 24) + 16), *(a1 + 128), sub_2393D20B0, a1);
      if (v9)
      {
        goto LABEL_2;
      }

      sub_2393D0FB4((a1 + 8));
      if (v18)
      {
        *(a1 + 88) = 3;
        v9 = (*(**(*(a1 + 24) + 16) + 112))(*(*(a1 + 24) + 16), *(a1 + 128));
        if (!v9)
        {
LABEL_29:
          v10 = 0;
          LODWORD(v9) = 0;
          goto LABEL_3;
        }
      }

      else
      {
        *(a1 + 88) = 4;
        v9 = (*(**(*(a1 + 24) + 16) + 104))(*(*(a1 + 24) + 16), *(a1 + 128));
        if (!v9)
        {
          v22 = *(a1 + 32);
          if (v22)
          {
            v22(a1, 0, 0);
          }

          goto LABEL_29;
        }
      }

      goto LABEL_2;
    }

    v10 = 0xF900000000;
LABEL_24:
    LODWORD(v9) = 257;
    goto LABEL_3;
  }

  if (v14)
  {
    goto LABEL_13;
  }

  v25 = 0;
  v26 = 0u;
  v9 = sub_2393D00D4(a4, &v25, 0x10uLL);
  if (!v9)
  {
    if ((setsockopt(*(a1 + 120), 0xFFFF, 4404, &v25, 0x20u) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    if (*__error() != 13)
    {
      v23 = __error();
      v9 = sub_2393D948C(*v23, "src/inet/TCPEndPointImplSockets.cpp", 0xC8u);
      goto LABEL_2;
    }

    v24 = *a4;
    v9 = sub_2393D2458(a1, v8, &v24);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

LABEL_2:
  v10 = v9 & 0xFFFFFFFF00000000;
LABEL_3:
  v11 = *MEMORY[0x277D85DE8];
  return v9 | v10;
}

unint64_t sub_2393D2458(_BYTE *a1, int a2, _DWORD *a3)
{
  if (a1[88] == 1)
  {
    v3 = 0x29F00000000;
LABEL_17:
    v7 = 108;
    return v7 | v3;
  }

  sub_2393D06DC(v14);
  if (!sub_2393D0718(v14))
  {
LABEL_16:
    sub_2393D06E4(v14);
    v3 = 0x2C700000000;
    goto LABEL_17;
  }

  while (1)
  {
    sub_2393D0928(v14, &v12);
    if (v12 != *a3 || sub_2393D07AC(v14, v13))
    {
      goto LABEL_6;
    }

    if (a2 == 2)
    {
      break;
    }

    if (a2 == 1 && sub_2393CFA1C(v13))
    {
      v9 = a1;
      v10 = 1;
      goto LABEL_19;
    }

LABEL_6:
    sub_2393D0734(v14);
    if ((sub_2393D0718(v14) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (sub_2393CFA1C(v13) || sub_2393CFBB4(v13) || sub_2393CFAB0(v13))
  {
    goto LABEL_6;
  }

  v9 = a1;
  v10 = 2;
LABEL_19:
  v11 = sub_2393D0E28(v9, v10, v13, 0, 1);
  v7 = v11;
  if (v11)
  {
    v3 = v11 & 0xFFFFFFFF00000000;
    sub_2393D06E4(v14);
  }

  else
  {
    sub_2393D06E4(v14);
    v3 = 0;
    v7 = 0;
  }

  return v7 | v3;
}

uint64_t sub_2393D25D8(uint64_t a1, unsigned int (*a2)(void, __n128 *, int *), __n128 *a3, _WORD *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (sub_2393D1950(*(a1 + 88)))
  {
    memset(v16, 0, sizeof(v16));
    v15 = 128;
    if (a2(*(a1 + 120), v16, &v15))
    {
      v8 = __error();
      v9 = sub_2393D948C(*v8, "src/inet/TCPEndPointImplSockets.cpp", 0x135u);
      v10 = v9 & 0xFFFFFFFF00000000;
      v11 = v9;
    }

    else
    {
      if (v16[0].n128_u8[1] == 2)
      {
        sub_2393CF990(&v14, &v16[0].n128_u32[1]);
      }

      else
      {
        if (v16[0].n128_u8[1] != 30)
        {
          v10 = 0x14800000000;
          v11 = 3;
          goto LABEL_11;
        }

        sub_2393CF9A8(&v14, &v16[0].n128_i8[8]);
      }

      v10 = 0;
      v11 = 0;
      *a3 = v14;
      *a4 = bswap32(v16[0].n128_u16[1]) >> 16;
    }

LABEL_11:
    result = v11 | v10;
    goto LABEL_12;
  }

  result = 0x12D00000003;
LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393D274C(uint64_t a1, _DWORD *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (sub_2393D1950(*(a1 + 88)))
  {
    v19 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0;
    v11 = 128;
    if (getpeername(*(a1 + 120), &v12, &v11))
    {
      v4 = __error();
      v5 = sub_2393D948C(*v4, "src/inet/TCPEndPointImplSockets.cpp", 0x155u);
      v6 = v5 & 0xFFFFFFFF00000000;
      v7 = v5;
    }

    else
    {
      if (v12.sa_family == 2)
      {
        goto LABEL_9;
      }

      if (v12.sa_family != 30)
      {
        *a2 = 0;
        v6 = 0x17000000000;
        v7 = 257;
        goto LABEL_11;
      }

      sub_2393CF9A8(&v10, &v12.sa_data[6]);
      if (!sub_2393CFBB4(&v10))
      {
LABEL_9:
        v7 = 0;
        v6 = 0;
        *a2 = 0;
      }

      else
      {
        v7 = 0;
        v6 = 0;
        *a2 = DWORD2(v13);
      }
    }

LABEL_11:
    result = v6 | v7;
    goto LABEL_12;
  }

  result = 0x14D00000003;
LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393D2894(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(**(*(a1 + 24) + 16) + 112))(*(*(a1 + 24) + 16), *(a1 + 128));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2393D28F0(uint64_t a1)
{
  if (!sub_2393D1950(*(a1 + 88)))
  {
    return 0x17F00000003;
  }

  v4 = 1;
  if (!setsockopt(*(a1 + 120), 6, 1, &v4, 4u))
  {
    return 0;
  }

  v2 = __error();
  return sub_2393D948C(*v2, "src/inet/TCPEndPointImplSockets.cpp", 0x186u);
}

uint64_t sub_2393D2980(uint64_t a1, int a2, int a3)
{
  if (!sub_2393D1950(*(a1 + 88)))
  {
    return 0x18F00000003;
  }

  v9 = a2;
  if (setsockopt(*(a1 + 120), 6, 16, &v9, 4u))
  {
    v6 = 405;
  }

  else
  {
    v9 = a2;
    if (setsockopt(*(a1 + 120), 6, 257, &v9, 4u))
    {
      v6 = 412;
    }

    else
    {
      v9 = a3;
      if (setsockopt(*(a1 + 120), 6, 258, &v9, 4u))
      {
        v6 = 419;
      }

      else
      {
        v9 = 1;
        if (!setsockopt(*(a1 + 120), 0xFFFF, 8, &v9, 4u))
        {
          return 0;
        }

        v6 = 426;
      }
    }
  }

  v8 = __error();
  return sub_2393D948C(*v8, "src/inet/TCPEndPointImplSockets.cpp", v6);
}

uint64_t sub_2393D2A9C(uint64_t a1)
{
  if (!sub_2393D1950(*(a1 + 88)))
  {
    return 0x1B200000003;
  }

  v4 = 0;
  if (!setsockopt(*(a1 + 120), 0xFFFF, 8, &v4, 4u))
  {
    return 0;
  }

  v2 = __error();
  return sub_2393D948C(*v2, "src/inet/TCPEndPointImplSockets.cpp", 0x1B8u);
}

uint64_t sub_2393D2B28(uint64_t a1)
{
  if (sub_2393D1950(*(a1 + 88)))
  {
    return 0;
  }

  else
  {
    return 0x1C000000003;
  }
}

unint64_t sub_2393D2B74(uint64_t a1)
{
  LODWORD(v2) = 0;
  v3 = 3;
  while (1)
  {
    v4 = *(a1 + 104);
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = *(v4 + 24);
    v6 = send(*(a1 + 120), *(v4 + 8), v5, 0x80000);
    if (v6 == -1)
    {
      break;
    }

    v7 = v6;
    LODWORD(v8) = 503;
    if ((v6 & 0x8000000000000000) != 0 || v5 < v6)
    {
      return v3 | (v8 << 32);
    }

    *(a1 + 114) = *(a1 + 112);
    v9 = *(a1 + 104);
    if (v7 >= v5)
    {
      v10 = sub_2393D9958(v9);
      *(a1 + 104) = v10;
      if (!v10)
      {
        v11 = (*(**(*(a1 + 24) + 16) + 128))(*(*(a1 + 24) + 16), *(a1 + 128));
        v2 = HIDWORD(v11);
        if (v11)
        {
          v8 = HIDWORD(v11);
          v3 = v11;
          return v3 | (v8 << 32);
        }
      }
    }

    else
    {
      sub_2393D9984(v9, v7);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v12(a1, v7);
    }

    if (v7 < v5)
    {
      goto LABEL_16;
    }
  }

  if (*__error() == 35 || *__error() == 35)
  {
LABEL_16:
    if (*(a1 + 88) == 5 && !*(a1 + 104) && shutdown(*(a1 + 120), 1))
    {
      v14 = __error();
      v15 = sub_2393D948C(*v14, "src/inet/TCPEndPointImplSockets.cpp", 0x23Fu);
      v3 = v15;
      v8 = HIDWORD(v15);
    }

    else
    {
      v3 = 0;
      LODWORD(v8) = v2;
    }

    return v3 | (v8 << 32);
  }

  if (*__error() == 32)
  {
    LODWORD(v8) = 496;
    v3 = 258;
    return v3 | (v8 << 32);
  }

  v16 = __error();
  v17 = sub_2393D948C(*v16, "src/inet/TCPEndPointImplSockets.cpp", 0x1F0u);
  v3 = v17;
  v8 = HIDWORD(v17);
  if (!v17)
  {
    LODWORD(v2) = HIDWORD(v17);
    goto LABEL_16;
  }

  return v3 | (v8 << 32);
}

void sub_2393D2D70(uint64_t a1)
{
  v3 = (*(**(*(a1 + 24) + 16) + 104))(*(*(a1 + 24) + 16), *(a1 + 128));
  if (v3 || (v3 = (*(**(*(a1 + 24) + 16) + 112))(*(*(a1 + 24) + 16), *(a1 + 128)), v3))
  {

    sub_2393D133C(a1, v3, v2, 0);
  }
}

uint64_t sub_2393D2E2C(uint64_t result, int a2, uint64_t a3, char a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(result + 120) != -1)
  {
    v5 = result;
    v6 = *(result + 88);
    if (v6 == 8 || v6 == 7 && !*(result + 104))
    {
      if (sub_2393D1950(a4))
      {
        if (a2)
        {
          v11 = 1;
          if (setsockopt(*(v5 + 120), 0xFFFF, 128, &v11, 8u))
          {
            v7 = sub_2393D9044(1u);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              v8 = *__error();
              *buf = 67109120;
              v13 = v8;
              _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "SO_LINGER: %d", buf, 8u);
            }

            if (sub_2393D5398(1u))
            {
              v10 = *__error();
              sub_2393D5320(1u, 1);
            }
          }
        }
      }

      (*(**(*(v5 + 24) + 16) + 136))(*(*(v5 + 24) + 16), v5 + 128);
      result = close(*(v5 + 120));
      *(v5 + 120) = -1;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393D2FA8(uint64_t a1, char a2)
{
  sub_2393D0FB4((a1 + 8));
  v4 = *(a1 + 88);
  if (v4 == 3)
  {
    if ((a2 & 2) != 0)
    {
      v9 = 4;
      v10 = 0;
      if (getsockopt(*(a1 + 120), 0xFFFF, 4103, &v10, &v9))
      {
        v5 = *__error();
        v10 = v5;
      }

      else
      {
        v5 = v10;
      }

      v6 = sub_2393D948C(v5, "src/inet/TCPEndPointImplSockets.cpp", 0x32Eu);
      sub_2393D1A38(a1, v6, v7);
    }
  }

  else if (v4 == 2)
  {
    if (*(a1 + 72) && (a2 & 1) != 0)
    {
      sub_2393D30C4(a1);
    }
  }

  else
  {
    if (sub_2393D1950(v4) && *(a1 + 104) && (a2 & 2) != 0)
    {
      sub_2393D11E4(a1);
    }

    if (*(a1 + 88) & 0xFE) == 4 && *(a1 + 89) == 1 && *(a1 + 40) && (a2)
    {
      sub_2393D3384(a1);
    }
  }

  return sub_2393D1598(a1 + 8);
}