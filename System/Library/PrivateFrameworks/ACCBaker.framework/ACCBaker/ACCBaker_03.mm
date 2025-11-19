void sub_23C3A9488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::locale a19, uint64_t a20, std::locale a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::locale a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, unint64_t a37, void *__p)
{
  if (a37 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_23C3A9618(uint64_t a1, unsigned __int8 **a2, char a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return v4;
  }

  v5 = *v4;
  if (v5 == 125)
  {
    return v4;
  }

  v37[0] = *a2;
  v37[1] = v3;
  if ((sub_23C3A9CF0(v37) & 0x80000000) != 0)
  {
    sub_23C3A53AC("The format specifier contains malformed Unicode characters");
  }

  v9 = v37[0];
  v10 = a3;
  if (v37[0] >= v3)
  {
    goto LABEL_9;
  }

  v11 = *v37[0];
  switch(v11)
  {
    case '<':
      v12 = 1;
LABEL_19:
      *a1 = *a1 & 0xF8 | v12;
      v14 = v9 - v4;
      if (v9 - v4 == 1)
      {
        v15 = *v4;
        if (v15 == 123)
        {
          sub_23C3A53AC("The fill option contains an invalid value");
        }

        *(a1 + 12) = v15;
      }

      else if (v9 != v4)
      {
        memmove((a1 + 12), v4, v9 - v4);
        v10 = a3;
      }

      v4 += v14 + 1;
      if (v4 == v3)
      {
        return v4;
      }

      goto LABEL_25;
    case '>':
      v12 = 3;
      goto LABEL_19;
    case '^':
      v12 = 2;
      goto LABEL_19;
  }

LABEL_9:
  switch(v5)
  {
    case '<':
      v13 = 1;
LABEL_15:
      *a1 = *a1 & 0xF8 | v13;
      if (++v4 == v3)
      {
        return v4;
      }

      break;
    case '>':
      v13 = 3;
      goto LABEL_15;
    case '^':
      v13 = 2;
      goto LABEL_15;
  }

LABEL_25:
  v16 = v10;
  if (v10)
  {
    v22 = *v4;
    switch(v22)
    {
      case ' ':
        *a1 |= 0x18u;
        if (++v4 == v3)
        {
          return v4;
        }

        break;
      case '+':
        *a1 = *a1 & 0xE7 | 0x10;
        if (++v4 == v3)
        {
          return v4;
        }

        break;
      case '-':
        *a1 = *a1 & 0xE7 | 8;
        if (++v4 == v3)
        {
          return v4;
        }

        break;
    }
  }

  if ((v16 & 2) != 0 && *v4 == 35)
  {
    *a1 |= 0x20u;
    if (++v4 == v3)
    {
      return v4;
    }
  }

  if ((v16 & 4) == 0)
  {
    goto LABEL_34;
  }

  v17 = *v4;
  if (v17 != 48)
  {
    goto LABEL_35;
  }

  if ((*a1 & 7) == 0)
  {
    *a1 |= 4u;
  }

  if (++v4 != v3)
  {
LABEL_34:
    v17 = *v4;
LABEL_35:
    if (v17 == 123)
    {
      if (v4 + 1 == v3)
      {
        goto LABEL_125;
      }

      v23 = sub_23C3A5478(v4 + 1, v3, a2);
      if (v3 == v23 || *v23 != 125)
      {
        goto LABEL_124;
      }

      v20 = v23 + 1;
      *(a1 + 2) |= 0x4000u;
    }

    else
    {
      LODWORD(v18) = v17 - 48;
      if (v17 == 48)
      {
        sub_23C3A53AC("The width option should not have a leading zero");
      }

      if ((v17 - 58) < 0xFFFFFFF6)
      {
        goto LABEL_55;
      }

      v19 = v4 + 9;
      if (v3 - v4 <= 9)
      {
        v19 = v3;
      }

      v20 = v4 + 1;
      if (v4 + 1 == v19)
      {
        v19 = v4 + 1;
LABEL_68:
        if (v19 == v3)
        {
          *(a1 + 4) = v18;
          return v3;
        }

        v28 = *v19;
        if ((v28 - 48) > 9)
        {
          v20 = v19;
        }

        else
        {
          v18 = v28 + 10 * v18 - 48;
          if (v18 >> 31 || (v20 = v4 + 2, v4 + 2 != v3) && *v20 - 48 <= 9)
          {
LABEL_91:
            sub_23C3A53AC("The numeric value of the format specifier is too large");
          }
        }
      }

      else
      {
        v4 = v19 - 1;
        while (1)
        {
          v21 = *v20;
          if ((v21 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          LODWORD(v18) = v21 + 10 * v18 - 48;
          if (++v20 == v19)
          {
            goto LABEL_68;
          }
        }
      }
    }

    *(a1 + 4) = v18;
    v4 = v20;
    if (v20 == v3)
    {
      return v4;
    }

LABEL_55:
    if ((v16 & 8) == 0 || *v4 != 46)
    {
      goto LABEL_96;
    }

    v24 = v4 + 1;
    if (v4 + 1 == v3)
    {
      sub_23C3A53AC("End of input while parsing format specifier precision");
    }

    v25 = *v24;
    if (v25 == 123)
    {
      if (v4 + 2 != v3)
      {
        v26 = sub_23C3A5478(v4 + 2, v3, a2);
        if (v3 != v26 && *v26 == 125)
        {
          v4 = v26 + 1;
          *(a1 + 2) |= 0x8000u;
          *(a1 + 8) = v27;
          goto LABEL_95;
        }

LABEL_124:
        sub_23C3A53AC("The argument index is invalid");
      }

LABEL_125:
      sub_23C3A53AC("End of input while parsing an argument index");
    }

    if ((v25 - 58) <= 0xFFFFFFF5)
    {
      sub_23C3A53AC("The precision option does not contain a value or an argument index");
    }

    if (v3 - v24 <= 9)
    {
      v29 = v3;
    }

    else
    {
      v29 = v4 + 10;
    }

    LODWORD(v30) = v25 - 48;
    v4 += 2;
    if (v4 != v29)
    {
      v24 = v29 - 1;
      while (1)
      {
        v31 = *v4;
        if ((v31 - 58) < 0xFFFFFFF6)
        {
          goto LABEL_94;
        }

        LODWORD(v30) = v31 + 10 * v30 - 48;
        if (++v4 == v29)
        {
          goto LABEL_86;
        }
      }
    }

    v29 = v4;
LABEL_86:
    if (v29 == v3)
    {
      v4 = v3;
    }

    else
    {
      v32 = *v29;
      if ((v32 - 48) > 9)
      {
        v4 = v29;
      }

      else
      {
        v30 = v32 + 10 * v30 - 48;
        if (v30 >> 31)
        {
          goto LABEL_91;
        }

        v4 = v24 + 2;
        if (v24 + 2 != v3 && *v4 - 48 <= 9)
        {
          goto LABEL_91;
        }
      }
    }

LABEL_94:
    *(a1 + 8) = v30;
    *(a1 + 2) &= ~0x8000u;
LABEL_95:
    if (v4 == v3)
    {
      return v4;
    }

LABEL_96:
    if ((v16 & 0x10) != 0)
    {
      v33 = *v4;
      if (v33 != 76)
      {
LABEL_100:
        v34 = v33 - 63;
        v35 = 12;
        switch(v34)
        {
          case 0:
            v35 = 19;
            goto LABEL_119;
          case 2:
            goto LABEL_119;
          case 3:
            v35 = 3;
            goto LABEL_119;
          case 6:
            v35 = 14;
            goto LABEL_119;
          case 7:
            v35 = 16;
            goto LABEL_119;
          case 8:
            v35 = 18;
            goto LABEL_119;
          case 17:
            v35 = 9;
            goto LABEL_119;
          case 25:
            v35 = 7;
            goto LABEL_119;
          case 34:
            v35 = 11;
            goto LABEL_119;
          case 35:
            v35 = 2;
            goto LABEL_119;
          case 36:
            v35 = 10;
            goto LABEL_119;
          case 37:
            v35 = 5;
            goto LABEL_119;
          case 38:
            v35 = 13;
            goto LABEL_119;
          case 39:
            v35 = 15;
            goto LABEL_119;
          case 40:
            v35 = 17;
            goto LABEL_119;
          case 48:
            v35 = 4;
            goto LABEL_119;
          case 49:
            v35 = 8;
            goto LABEL_119;
          case 52:
            v35 = 1;
            goto LABEL_119;
          case 57:
            v35 = 6;
LABEL_119:
            *(a1 + 1) = v35;
            ++v4;
            break;
          default:
            break;
        }

        if (v4 != v3 && *v4 != 125)
        {
          sub_23C3A53AC("The format specifier should consume the input or end with a '}'");
        }

        return v4;
      }

      *a1 |= 0x40u;
      if (++v4 == v3)
      {
        return v4;
      }
    }

    v33 = *v4;
    goto LABEL_100;
  }

  return v4;
}

uint64_t sub_23C3A9CF0(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = (__clz(**a1 ^ 0xFF) - 24);
  if (v2 <= 2)
  {
    if (!v2)
    {
      *a1 = v1 + 1;
      return *v1;
    }

    if (v2 == 2 && a1[1] - v1 >= 2)
    {
      v3 = v1 + 1;
      if ((v1[1] & 0xC0) == 0x80)
      {
        *a1 = v3;
        v4 = *v1 & 0x1F;
        *a1 = v1 + 2;
        if (v4 < 2)
        {
          return 2147549181;
        }

        else
        {
          return *v3 & 0x3F | (v4 << 6);
        }
      }
    }

    goto LABEL_28;
  }

  if (v2 != 3)
  {
    if (v2 == 4 && a1[1] - v1 >= 4)
    {
      v6 = (v1[1] & 0xC0) == 128;
      if ((v1[1] & 0xC0) == 0x80)
      {
        v6 = (v1[2] & 0xC0) == 128;
        if ((v1[2] & 0xC0) == 0x80)
        {
          v6 = (v1[3] & 0xC0) == 128;
        }
      }

      if (v6)
      {
        *a1 = v1 + 1;
        v7 = *v1 & 7;
        *a1 = v1 + 2;
        v8 = (v7 << 12) | ((v1[1] & 0x3F) << 6);
        *a1 = v1 + 3;
        v9 = v1[2];
        *a1 = v1 + 4;
        if (v8 >= 0x400)
        {
          v10 = v1[3] & 0x3F | ((v8 | v9 & 0x3F) << 6);
          if (v8 >> 10 >= 0x11)
          {
            return 2147549181;
          }

          else
          {
            return v10;
          }
        }

        return 2147549181;
      }
    }

LABEL_28:
    *a1 = v1 + 1;
    return 2147549181;
  }

  if (a1[1] - v1 < 3)
  {
    goto LABEL_28;
  }

  v11 = (v1[1] & 0xC0) == 128;
  if ((v1[1] & 0xC0) == 0x80)
  {
    v11 = (v1[2] & 0xC0) == 128;
  }

  if (!v11)
  {
    goto LABEL_28;
  }

  *a1 = v1 + 1;
  v12 = *v1 & 0xF;
  *a1 = v1 + 2;
  v13 = (v12 << 12) | ((v1[1] & 0x3F) << 6);
  *a1 = v1 + 3;
  if (v13 < 0x800)
  {
    return 2147549181;
  }

  v14 = v13 | v1[2] & 0x3F;
  if ((v13 & 0xF800) == 0xD800)
  {
    return 2147549181;
  }

  else
  {
    return v14;
  }
}

void sub_23C3AA128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(a16);
    if (a15 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void sub_23C3AA57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(a30);
    if (a28 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_3;
  }

  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if (a15 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a16);
  if (a15 < 0)
  {
LABEL_5:
    operator delete(a10);
    _Unwind_Resume(a1);
  }

LABEL_9:
  _Unwind_Resume(a1);
}

unint64_t sub_23C3AA640(char *a1, void *a2)
{
  *&v26[23] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  if ((*(a1 + 1) & 0x4000) != 0)
  {
    v9 = *(a1 + 1);
    v10 = a2[1];
    if (v10 <= v9)
    {
      LOBYTE(v12) = 0;
    }

    else if (v10 > 0xC)
    {
      v13 = a2[2] + 32 * v9;
      v2 = *v13;
      v9 = *(v13 + 8);
      LOBYTE(v12) = *(v13 + 16);
      *v22 = *(v13 + 17);
      *&v22[7] = *(v13 + 24);
    }

    else
    {
      v11 = a2[2];
      v12 = (a2[3] >> (5 * v9)) & 0x1FLL;
      v2 = *(v11 + 16 * v9);
      v9 = *(v11 + 16 * v9 + 8);
    }

    v23 = v2;
    v24 = v9;
    v25 = v12;
    *v26 = *v22;
    *&v26[7] = *&v22[7];
    v7 = sub_23C3AC09C(&v23);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(a1 + 1);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
LABEL_3:
      v8 = *(a1 + 2);
      goto LABEL_16;
    }
  }

  v14 = *(a1 + 2);
  v15 = a2[1];
  if (v15 <= v14)
  {
    LOBYTE(v17) = 0;
  }

  else if (v15 > 0xC)
  {
    v18 = a2[2] + 32 * v14;
    v2 = *v18;
    v14 = *(v18 + 8);
    LOBYTE(v17) = *(v18 + 16);
    *v22 = *(v18 + 17);
    *&v22[7] = *(v18 + 24);
  }

  else
  {
    v16 = a2[2];
    v17 = (a2[3] >> (5 * v14)) & 0x1FLL;
    v2 = *(v16 + 16 * v14);
    v14 = *(v16 + 16 * v14 + 8);
  }

  v23 = v2;
  v24 = v14;
  v25 = v17;
  *v26 = *v22;
  *&v26[7] = *&v22[7];
  v8 = sub_23C3AC09C(&v23);
LABEL_16:
  v19 = *MEMORY[0x277D85DE8];
  v20 = v8 | (*(a1 + 3) << 32);
  return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
}

uint64_t sub_23C3AA7EC(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v15;
LABEL_18:
    result = sub_23C3AC17C(a1, a2, v8, a4, a5, __src, v9, v7, v11);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = sub_23C3AC17C(a1, a2, a3, a4, a5, __src, v13, 0, 0xAu);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  result = sub_23C3AC17C(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, __src, v14, v5, 8u);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C3AA940(unsigned __int8 *__src, size_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = __src;
  v7 = HIDWORD(a4);
  if (a4 <= 0)
  {
    v13 = *(a3 + 32);
    if (v13)
    {
      v15 = *v13;
      v14 = v13[1];
      if (*v13 - v14 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = *v13 - v14;
      }

      v13[1] = v14 + a2;
      if (v15 <= v14 || v16 == 0)
      {
        return a3;
      }
    }

    else
    {
      v16 = a2;
    }

    v23 = *(a3 + 16);
    do
    {
      v25 = *(a3 + 8) - v23;
      if (v25 < v16 + 1)
      {
        (*(a3 + 24))(a3, v16 + 2);
        v23 = *(a3 + 16);
        v25 = *(a3 + 8) - v23;
      }

      if (v25 >= v16)
      {
        v26 = v16;
      }

      else
      {
        v26 = v25;
      }

      if (v26)
      {
        memmove((*a3 + v23), v6, v26);
        v23 = *(a3 + 16);
      }

      v23 += v26;
      *(a3 + 16) = v23;
      v6 += v26;
      v24 = v16 > v25;
      v16 -= v26;
    }

    while (v24);
    return a3;
  }

  if (a2)
  {
    if (*__src < 0)
    {
      v11 = a4;
      v12 = a5;
    }

    else
    {
      v8 = 0;
      v9 = &__src[v7];
      __src = &__src[v7 - 1];
      while (1)
      {
        if (a2 - 1 == v8)
        {
          v19 = a2;
          goto LABEL_36;
        }

        if (v7 - 1 == v8)
        {
          break;
        }

        v10 = v6[++v8];
        if (v10 < 0)
        {
          v11 = a4;
          v12 = a5;
          v7 = v7 - v8 + 1;
          __src = &v6[v8 - 1];
          goto LABEL_21;
        }
      }

      if ((*v9 & 0x80000000) == 0)
      {
        v19 = HIDWORD(a4);
        goto LABEL_36;
      }

      v11 = a4;
      v12 = a5;
      v7 = 1;
    }

LABEL_21:
    v20 = (__src - v6);
    v21 = a2;
    v22 = sub_23C3AAD28(__src, &v6[a2], v7, 1);
    a2 = v21;
    v19 = &v20[v22];
    a5 = v12;
    a4 = v11;
  }

  else
  {
    v19 = 0;
  }

LABEL_36:
  sub_23C3AAB0C(v6, a2, a3, a4, a5, v19);
  return a3;
}

uint64_t sub_23C3AAB0C(char *__src, size_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 > a6)
  {
    v10 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v26 = v9 >> 1;
        v9 -= v9 >> 1;
        sub_23C3ABED4(a3, v26, SHIDWORD(a5));
        v11 = *(a3 + 32);
        if (v11)
        {
          goto LABEL_17;
        }

LABEL_39:
        v19 = a2;
        goto LABEL_40;
      }
    }

    else if ((a4 & 7) != 0)
    {
      sub_23C3ABED4(a3, 0, SHIDWORD(a5));
      v11 = *(a3 + 32);
      if (!v11)
      {
        goto LABEL_39;
      }

LABEL_17:
      v18 = *v11;
      v17 = v11[1];
      if (*v11 - v17 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *v11 - v17;
      }

      v11[1] = v17 + a2;
      if (v18 <= v17 || v19 == 0)
      {
LABEL_25:
        sub_23C3ABED4(a3, v9, v10);
        return a3;
      }

LABEL_40:
      v27 = *(a3 + 16);
      do
      {
        v28 = *(a3 + 8) - v27;
        if (v28 < v19 + 1)
        {
          (*(a3 + 24))(a3, v19 + 2);
          v27 = *(a3 + 16);
          v28 = *(a3 + 8) - v27;
        }

        if (v28 >= v19)
        {
          v29 = v19;
        }

        else
        {
          v29 = v28;
        }

        if (v29)
        {
          memmove((*a3 + v27), __src, v29);
          v27 = *(a3 + 16);
        }

        v27 += v29;
        *(a3 + 16) = v27;
        __src += v29;
        v23 = v19 > v28;
        v19 -= v29;
      }

      while (v23);
      goto LABEL_25;
    }

    v9 = 0;
    sub_23C3ABED4(a3, (a4 >> 32) - a6, SHIDWORD(a5));
    v11 = *(a3 + 32);
    if (v11)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

  v12 = *(a3 + 32);
  if (v12)
  {
    v14 = *v12;
    v13 = v12[1];
    if (*v12 - v13 >= a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = *v12 - v13;
    }

    v12[1] = v13 + a2;
    if (v14 <= v13 || v15 == 0)
    {
      return a3;
    }
  }

  else
  {
    v15 = a2;
  }

  v22 = *(a3 + 16);
  do
  {
    v24 = *(a3 + 8) - v22;
    if (v24 < v15 + 1)
    {
      (*(a3 + 24))(a3, v15 + 2);
      v22 = *(a3 + 16);
      v24 = *(a3 + 8) - v22;
    }

    if (v24 >= v15)
    {
      v25 = v15;
    }

    else
    {
      v25 = v24;
    }

    if (v25)
    {
      memmove((*a3 + v22), __src, v25);
      v22 = *(a3 + 16);
    }

    v22 += v25;
    *(a3 + 16) = v22;
    __src += v25;
    v23 = v15 > v24;
    v15 -= v25;
  }

  while (v23);
  return a3;
}

unint64_t sub_23C3AAD28(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v147 = a1;
  v148 = a2;
  v5 = sub_23C3A9CF0(&v147);
  v6 = v5 & 0x7FFFFFFF;
  v149 = v5 & 0x7FFFFFFF;
  v7 = (v5 << 11) | 0x7FF;
  v8 = 1496;
  v9 = &unk_23C3D4FA8;
  do
  {
    v10 = v8 >> 1;
    v11 = &v9[v8 >> 1];
    v13 = *v11;
    v12 = v11 + 1;
    v8 += ~(v8 >> 1);
    if (v7 >= v13)
    {
      v9 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  while (v8);
  if (v9 == &unk_23C3D4FA8 || (v14 = *(v9 - 1), ((v14 >> 4) & 0x7F) + (v14 >> 11) < v6))
  {
    LOBYTE(v15) = 16;
    v150 = 16;
    v151 = 0;
    v152 = 0;
    v17 = a2;
    v16 = a3;
    v18 = a4;
  }

  else
  {
    v15 = v14 & 0xF;
    v150 = v14 & 0xF;
    v151 = 0;
    v152 = 0;
    v17 = a2;
    v16 = a3;
    v18 = a4;
    if (v15 == 9)
    {
      v27 = 3;
      goto LABEL_25;
    }

    if (v15 == 3)
    {
      v27 = 2;
      goto LABEL_25;
    }
  }

  v19 = 201;
  v20 = &unk_23C3D6708;
  do
  {
    v21 = v19 >> 1;
    v22 = &v20[v19 >> 1];
    v24 = *v22;
    v23 = v22 + 1;
    v19 += ~(v19 >> 1);
    if (v7 >= v24)
    {
      v20 = v23;
    }

    else
    {
      v19 = v21;
    }
  }

  while (v19);
  if (v20 != &unk_23C3D6708)
  {
    v25 = *(v20 - 1);
    v26 = (v25 & 3) == 0 && ((v25 >> 2) & 0x1FF) + (v25 >> 11) >= v6;
    if (v26)
    {
      v27 = 1;
LABEL_25:
      LODWORD(v151) = v27;
    }
  }

  if (a1 == v17)
  {
    return 0;
  }

  if (v147 != v148)
  {
    result = 0;
    while (1)
    {
      v30 = v6;
      v31 = v147;
      if (v147 == v148)
      {
        v35 = v148;
        if (v6 - 262142 >= 0xFFFC1102)
        {
          goto LABEL_323;
        }

LABEL_334:
        v104 = result + 1;
        if (v18)
        {
          goto LABEL_29;
        }

LABEL_335:
        if (v104 <= v16)
        {
          goto LABEL_29;
        }

        return result;
      }

      v33 = v151;
      v32 = HIDWORD(v151);
      v34 = v152;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              v35 = v31;
              v36 = v15;
              v37 = *v31;
              v38 = (__clz(v37 ^ 0xFF) - 24);
              if (v38 > 2)
              {
                if (v38 == 3)
                {
                  if (v148 - v35 >= 3)
                  {
                    v45 = (v35[1] & 0xC0) == 128;
                    if ((v35[1] & 0xC0) == 0x80)
                    {
                      v45 = (v35[2] & 0xC0) == 128;
                    }

                    if (v45)
                    {
                      v147 = v35 + 2;
                      v46 = ((v37 & 0xF) << 12) | ((v35[1] & 0x3F) << 6);
                      v31 = v35 + 3;
                      v147 = v35 + 3;
                      if (v46 >= 0x800)
                      {
                        if ((v46 & 0xF800) == 0xD800)
                        {
                          v37 = -2147418115;
                        }

                        else
                        {
                          v37 = v46 | v35[2] & 0x3F;
                        }

                        goto LABEL_69;
                      }

                      goto LABEL_68;
                    }
                  }

LABEL_67:
                  v31 = v35 + 1;
                  v147 = v35 + 1;
LABEL_68:
                  v37 = -2147418115;
                  goto LABEL_69;
                }

                if (v38 != 4 || v148 - v35 < 4)
                {
                  goto LABEL_67;
                }

                v42 = (v35[1] & 0xC0) == 128;
                if ((v35[1] & 0xC0) == 0x80)
                {
                  v42 = (v35[2] & 0xC0) == 128;
                  if ((v35[2] & 0xC0) == 0x80)
                  {
                    v42 = (v35[3] & 0xC0) == 128;
                  }
                }

                if (!v42)
                {
                  goto LABEL_67;
                }

                v147 = v35 + 2;
                v43 = ((v37 & 7) << 12) | ((v35[1] & 0x3F) << 6);
                v147 = v35 + 3;
                v44 = v35[2];
                v31 = v35 + 4;
                v147 = v35 + 4;
                if (v43 < 0x400)
                {
                  goto LABEL_68;
                }

                v37 = v35[3] & 0x3F | ((v43 | v44 & 0x3F) << 6);
                if (v43 >> 10 >= 0x11)
                {
                  v37 = -2147418115;
                }
              }

              else
              {
                if (v38)
                {
                  if (v38 == 2 && v148 - v35 >= 2)
                  {
                    v39 = v35[1];
                    if ((v39 & 0xC0) == 0x80)
                    {
                      v40 = v37 & 0x1F;
                      v31 = v35 + 2;
                      v147 = v35 + 2;
                      v41 = v39 & 0x3F | (v40 << 6);
                      if (v40 >= 2)
                      {
                        v37 = v41;
                      }

                      else
                      {
                        v37 = -2147418115;
                      }

                      goto LABEL_69;
                    }
                  }

                  goto LABEL_67;
                }

                v31 = v35 + 1;
                v147 = v35 + 1;
              }

LABEL_69:
              v47 = (v37 << 11) | 0x7FF;
              v48 = &unk_23C3D4FA8;
              v49 = 1496;
              do
              {
                v50 = v49 >> 1;
                v51 = &v48[v49 >> 1];
                v53 = *v51;
                v52 = v51 + 1;
                v49 += ~(v49 >> 1);
                if (v47 >= v53)
                {
                  v48 = v52;
                }

                else
                {
                  v49 = v50;
                }
              }

              while (v49);
              v6 = v37 & 0x7FFFFFFF;
              if (v48 == &unk_23C3D4FA8)
              {
                v15 = 16;
                if (v33 <= 1)
                {
                  break;
                }

                goto LABEL_91;
              }

              v54 = *(v48 - 1);
              v55 = ((v54 >> 4) & 0x7F) + (v54 >> 11);
              v56 = v54 & 0xF;
              v15 = v55 >= v6 ? v56 : 16;
              if (v33 <= 1)
              {
                break;
              }

LABEL_91:
              if (v33 == 2)
              {
                if (v32 == 2)
                {
                  if (v15 == 3)
                  {
                    v32 = 0;
                    HIDWORD(v151) = 0;
LABEL_140:
                    v33 = 2;
                    v149 = v6;
                    v150 = v15;
                    if (v31 == v148)
                    {
                      goto LABEL_280;
                    }
                  }

                  else
                  {
                    LODWORD(v151) = 0;
                    if (v15 == 5 && !v36)
                    {
                      goto LABEL_161;
                    }

                    if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
                    {
                      goto LABEL_322;
                    }

                    if (v36 > 6u)
                    {
                      if (v36 == 7)
                      {
                        goto LABEL_236;
                      }

                      if (v36 != 12)
                      {
                        goto LABEL_245;
                      }

LABEL_234:
                      if (v15 - 11 < 2)
                      {
                        goto LABEL_161;
                      }

                      if (v36 == 7)
                      {
LABEL_236:
                        if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                        {
                          goto LABEL_306;
                        }

                        goto LABEL_161;
                      }

                      goto LABEL_245;
                    }

                    if (v36 == 4)
                    {
                      if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                      {
                        goto LABEL_306;
                      }

                      goto LABEL_161;
                    }

                    if (v36 == 6)
                    {
                      goto LABEL_234;
                    }

LABEL_245:
                    if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
                    {
LABEL_306:
                      v68 = &unk_23C3D6708;
                      v89 = 201;
                      do
                      {
                        v90 = v89 >> 1;
                        v91 = &v68[v89 >> 1];
                        v93 = *v91;
                        v92 = v91 + 1;
                        v89 += ~(v89 >> 1);
                        if (v47 >= v93)
                        {
                          v68 = v92;
                        }

                        else
                        {
                          v89 = v90;
                        }
                      }

                      while (v89);
                      goto LABEL_311;
                    }

LABEL_161:
                    v33 = 0;
                    v32 = 2;
                    v149 = v6;
                    v150 = v15;
                    if (v31 == v148)
                    {
                      goto LABEL_280;
                    }
                  }
                }

                else
                {
                  if (v32 != 1)
                  {
                    if (v15 == 13)
                    {
                      goto LABEL_138;
                    }

                    if (v15 != 2)
                    {
LABEL_142:
                      LODWORD(v151) = 0;
                      if (v15 == 5 && !v36)
                      {
                        goto LABEL_230;
                      }

                      if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
                      {
                        goto LABEL_322;
                      }

                      if (v36 > 6u)
                      {
                        if (v36 == 7)
                        {
                          goto LABEL_219;
                        }

                        if (v36 == 12)
                        {
                          goto LABEL_217;
                        }
                      }

                      else
                      {
                        if (v36 == 4)
                        {
                          if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                          {
                            goto LABEL_300;
                          }

                          goto LABEL_230;
                        }

                        if (v36 != 6)
                        {
                          goto LABEL_239;
                        }

LABEL_217:
                        if (v15 - 11 < 2)
                        {
                          goto LABEL_230;
                        }

                        if (v36 == 7)
                        {
LABEL_219:
                          if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                          {
                            goto LABEL_300;
                          }

                          goto LABEL_230;
                        }
                      }

LABEL_239:
                      if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
                      {
LABEL_300:
                        v68 = &unk_23C3D6708;
                        v84 = 201;
                        do
                        {
                          v85 = v84 >> 1;
                          v86 = &v68[v84 >> 1];
                          v88 = *v86;
                          v87 = v86 + 1;
                          v84 += ~(v84 >> 1);
                          if (v47 >= v88)
                          {
                            v68 = v87;
                          }

                          else
                          {
                            v84 = v85;
                          }
                        }

                        while (v84);
                        goto LABEL_311;
                      }

                      goto LABEL_230;
                    }

                    v32 = 1;
LABEL_139:
                    HIDWORD(v151) = v32;
                    goto LABEL_140;
                  }

                  if (v15 != 2)
                  {
                    if (v15 != 13)
                    {
                      goto LABEL_142;
                    }

LABEL_138:
                    v32 = 2;
                    goto LABEL_139;
                  }

                  v32 = 1;
                  v33 = 2;
                  v149 = v6;
                  v150 = 2;
                  if (v31 == v148)
                  {
                    goto LABEL_280;
                  }
                }
              }

              else
              {
                LODWORD(v151) = 0;
                if (v15 == 9 || v15 == 5 && !v36)
                {
                  goto LABEL_230;
                }

                if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
                {
                  goto LABEL_322;
                }

                if (v36 > 6u)
                {
                  if (v36 == 7)
                  {
                    goto LABEL_186;
                  }

                  if (v36 != 12)
                  {
                    goto LABEL_206;
                  }
                }

                else
                {
                  if (v36 == 4)
                  {
                    if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                    {
                      goto LABEL_294;
                    }

                    goto LABEL_230;
                  }

                  if (v36 != 6)
                  {
                    goto LABEL_206;
                  }
                }

                if (v15 - 11 < 2)
                {
                  goto LABEL_230;
                }

                if (v36 == 7)
                {
LABEL_186:
                  if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                  {
                    goto LABEL_294;
                  }

                  goto LABEL_230;
                }

LABEL_206:
                if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
                {
LABEL_294:
                  v68 = &unk_23C3D6708;
                  v79 = 201;
                  do
                  {
                    v80 = v79 >> 1;
                    v81 = &v68[v79 >> 1];
                    v83 = *v81;
                    v82 = v81 + 1;
                    v79 += ~(v79 >> 1);
                    if (v47 >= v83)
                    {
                      v68 = v82;
                    }

                    else
                    {
                      v79 = v80;
                    }
                  }

                  while (v79);
LABEL_311:
                  if (v68 != &unk_23C3D6708 && ((v94 = *(v68 - 1), (v94 & 3) == 0) ? (v95 = ((v94 >> 2) & 0x1FF) + (v94 >> 11) >= v6) : (v95 = 0), v95))
                  {
                    v66 = 1;
                    v67 = 16;
                  }

                  else
                  {
                    if (v15 != 3)
                    {
                      goto LABEL_317;
                    }

LABEL_279:
                    v66 = 2;
                    v67 = 12;
                  }

LABEL_320:
                  v96 = 0;
                  LODWORD(v151) = v66;
                  goto LABEL_321;
                }

LABEL_230:
                v33 = 0;
                v149 = v6;
                v150 = v15;
                if (v31 == v148)
                {
                  goto LABEL_280;
                }
              }
            }

            if (!v33)
            {
              if (v15 == 5 && !v36)
              {
                goto LABEL_230;
              }

              if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
              {
                goto LABEL_322;
              }

              if (v36 > 6u)
              {
                if (v36 == 7)
                {
                  goto LABEL_156;
                }

                if (v36 == 12)
                {
                  goto LABEL_154;
                }
              }

              else
              {
                if (v36 == 4)
                {
                  if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                  {
                    goto LABEL_282;
                  }

                  goto LABEL_230;
                }

                if (v36 != 6)
                {
                  goto LABEL_170;
                }

LABEL_154:
                if (v15 - 11 < 2)
                {
                  goto LABEL_230;
                }

                if (v36 == 7)
                {
LABEL_156:
                  if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                  {
                    goto LABEL_282;
                  }

                  goto LABEL_230;
                }
              }

LABEL_170:
              if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
              {
LABEL_282:
                v68 = &unk_23C3D6708;
                v69 = 201;
                do
                {
                  v70 = v69 >> 1;
                  v71 = &v68[v69 >> 1];
                  v73 = *v71;
                  v72 = v71 + 1;
                  v69 += ~(v69 >> 1);
                  if (v47 >= v73)
                  {
                    v68 = v72;
                  }

                  else
                  {
                    v69 = v70;
                  }
                }

                while (v69);
                goto LABEL_311;
              }

              goto LABEL_230;
            }

            v57 = &unk_23C3D6708;
            v58 = 201;
            do
            {
              v59 = v58 >> 1;
              v60 = &v57[v58 >> 1];
              v62 = *v60;
              v61 = v60 + 1;
              v58 += ~(v58 >> 1);
              if (v47 >= v62)
              {
                v57 = v61;
              }

              else
              {
                v58 = v59;
              }
            }

            while (v58);
            if (v57 == &unk_23C3D6708 || ((v63 = *(v57 - 1), v64 = ((v63 >> 2) & 0x1FF) + (v63 >> 11), v33 = v63 & 3, v33 != 3) ? (v65 = v64 >= v6) : (v65 = 0), !v65))
            {
              LODWORD(v151) = 0;
              if (v15 == 5 && !v36)
              {
                goto LABEL_230;
              }

              if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
              {
                goto LABEL_322;
              }

              if (v36 > 6u)
              {
                if (v36 == 7)
                {
                  goto LABEL_167;
                }

                if (v36 == 12)
                {
                  goto LABEL_165;
                }
              }

              else
              {
                if (v36 == 4)
                {
                  if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                  {
                    goto LABEL_288;
                  }

                  goto LABEL_230;
                }

                if (v36 != 6)
                {
                  goto LABEL_189;
                }

LABEL_165:
                if (v15 - 11 < 2)
                {
                  goto LABEL_230;
                }

                if (v36 == 7)
                {
LABEL_167:
                  if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                  {
                    goto LABEL_288;
                  }

                  goto LABEL_230;
                }
              }

LABEL_189:
              if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
              {
LABEL_288:
                v68 = &unk_23C3D6708;
                v74 = 201;
                do
                {
                  v75 = v74 >> 1;
                  v76 = &v68[v74 >> 1];
                  v78 = *v76;
                  v77 = v76 + 1;
                  v74 += ~(v74 >> 1);
                  if (v47 >= v78)
                  {
                    v68 = v77;
                  }

                  else
                  {
                    v74 = v75;
                  }
                }

                while (v74);
                goto LABEL_311;
              }

              goto LABEL_230;
            }

            if (!v34)
            {
              break;
            }

            if ((v33 - 1) >= 2)
            {
              v34 = 0;
              v152 = 0;
            }

            v33 = 1;
            v149 = v6;
            v150 = v15;
            if (v31 == v148)
            {
LABEL_280:
              v35 = v148;
              if (v30 - 262142 < 0xFFFC1102)
              {
                goto LABEL_334;
              }

              goto LABEL_323;
            }
          }

          if (v33 != 1)
          {
            break;
          }

          v34 = 0;
          v149 = v6;
          v150 = v15;
          if (v31 == v148)
          {
            goto LABEL_280;
          }
        }

        if (v33 != 2)
        {
          break;
        }

        v34 = 1;
        v152 = 1;
        v33 = 1;
        v149 = v6;
        v150 = v15;
        if (v31 == v148)
        {
          goto LABEL_280;
        }
      }

      LODWORD(v151) = 0;
      if (v15 == 5 && !v36)
      {
        goto LABEL_229;
      }

      if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
      {
        goto LABEL_322;
      }

      if (v36 > 6u)
      {
        if (v36 != 7)
        {
          if (v36 != 12)
          {
            goto LABEL_269;
          }

          goto LABEL_267;
        }

LABEL_37:
        if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
        {
          goto LABEL_277;
        }

        goto LABEL_229;
      }

      if (v36 == 4)
      {
        if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
        {
          goto LABEL_277;
        }

        goto LABEL_229;
      }

      if (v36 != 6)
      {
        goto LABEL_269;
      }

LABEL_267:
      if (v15 - 11 < 2)
      {
LABEL_229:
        v34 = 0;
        goto LABEL_230;
      }

      if (v36 == 7)
      {
        goto LABEL_37;
      }

LABEL_269:
      if (v15 == 11 && v36 == 11 || v15 <= 0xD && ((1 << v15) & 0x2404) != 0 || v36 == 8)
      {
        goto LABEL_229;
      }

LABEL_277:
      v143 = result;
      if (!sub_23C3ABE6C(v6))
      {
        v66 = 1;
        v67 = 16;
        result = v143;
        v17 = a2;
        v16 = a3;
        v18 = a4;
        goto LABEL_320;
      }

      result = v143;
      v17 = a2;
      v16 = a3;
      v18 = a4;
      if (v15 == 3)
      {
        goto LABEL_279;
      }

LABEL_317:
      if (v15 != 9)
      {
        goto LABEL_322;
      }

      v96 = 3;
      v67 = 8;
LABEL_321:
      *(&v149 + v67) = v96;
LABEL_322:
      v149 = v6;
      v150 = v15;
      if (v30 - 262142 < 0xFFFC1102)
      {
        goto LABEL_334;
      }

LABEL_323:
      v97 = &unk_23C3D6A2C;
      v98 = 107;
      do
      {
        v99 = v98 >> 1;
        v100 = &v97[v98 >> 1];
        v102 = *v100;
        v101 = v100 + 1;
        v98 += ~(v98 >> 1);
        if (((v30 << 14) | 0x3FFF) >= v102)
        {
          v97 = v101;
        }

        else
        {
          v98 = v99;
        }
      }

      while (v98);
      if (v97 == &unk_23C3D6A2C)
      {
        goto LABEL_334;
      }

      if ((*(v97 - 1) & 0x3FFF) + (*(v97 - 1) >> 14) < v30)
      {
        v103 = 1;
      }

      else
      {
        v103 = 2;
      }

      v104 = v103 + result;
      if (!v18)
      {
        goto LABEL_335;
      }

LABEL_29:
      v29 = v35 == v17 || v104 > v16;
      result = v104;
      if (v29)
      {
        return result;
      }
    }
  }

  if (v6 - 262142 >= 0xFFFC1102)
  {
    v105 = (v5 << 14) | 0x3FFF;
    if (v18)
    {
      if (v147 == v17)
      {
        v121 = 107;
        v122 = &unk_23C3D6A2C;
        do
        {
          v123 = v121 >> 1;
          v124 = &v122[v121 >> 1];
          v126 = *v124;
          v125 = v124 + 1;
          v121 += ~(v121 >> 1);
          if (v105 >= v126)
          {
            v122 = v125;
          }

          else
          {
            v121 = v123;
          }
        }

        while (v121);
        if (v122 == &unk_23C3D6A2C)
        {
          return 1;
        }

        else if ((*(v122 - 1) & 0x3FFFu) + (*(v122 - 1) >> 14) < v6)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        result = 0;
        do
        {
          while (1)
          {
            v106 = &unk_23C3D6A2C;
            v107 = 107;
            do
            {
              v108 = v107 >> 1;
              v109 = &v106[v107 >> 1];
              v111 = *v109;
              v110 = v109 + 1;
              v107 += ~(v107 >> 1);
              if (v105 >= v111)
              {
                v106 = v110;
              }

              else
              {
                v107 = v108;
              }
            }

            while (v107);
            if (v106 != &unk_23C3D6A2C)
            {
              break;
            }

            if (++result > v16)
            {
              return result;
            }
          }

          if ((*(v106 - 1) & 0x3FFFu) + (*(v106 - 1) >> 14) < v6)
          {
            v112 = 1;
          }

          else
          {
            v112 = 2;
          }

          result += v112;
        }

        while (result <= v16);
      }
    }

    else if (v147 == v17)
    {
      v134 = 107;
      v135 = &unk_23C3D6A2C;
      do
      {
        v136 = v134 >> 1;
        v137 = &v135[v134 >> 1];
        v139 = *v137;
        v138 = v137 + 1;
        v134 += ~(v134 >> 1);
        if (v105 >= v139)
        {
          v135 = v138;
        }

        else
        {
          v134 = v136;
        }
      }

      while (v134);
      if (v135 == &unk_23C3D6A2C)
      {
        v140 = 1;
      }

      else
      {
        v140 = 1;
        if ((*(v135 - 1) & 0x3FFFu) + (*(v135 - 1) >> 14) >= v6)
        {
          v140 = 2;
        }
      }

      if (v140 <= v16)
      {
        return v140;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v113 = 0;
      do
      {
        while (1)
        {
          result = v113;
          v114 = &unk_23C3D6A2C;
          v115 = 107;
          do
          {
            v116 = v115 >> 1;
            v117 = &v114[v115 >> 1];
            v119 = *v117;
            v118 = v117 + 1;
            v115 += ~(v115 >> 1);
            if (v105 >= v119)
            {
              v114 = v118;
            }

            else
            {
              v115 = v116;
            }
          }

          while (v115);
          if (v114 != &unk_23C3D6A2C)
          {
            break;
          }

          v113 = result + 1;
          if (result + 1 > v16)
          {
            return result;
          }
        }

        if ((*(v114 - 1) & 0x3FFFu) + (*(v114 - 1) >> 14) < v6)
        {
          v120 = 1;
        }

        else
        {
          v120 = 2;
        }

        v113 = v120 + result;
      }

      while (v113 <= v16);
    }
  }

  else
  {
    result = v18 != 0 || v16 != 0;
    if ((v18 != 0 || v16 != 0) && v147 != v17)
    {
      if (v18)
      {
        if (v16 + 1 > 1)
        {
          return v16 + 1;
        }

        else
        {
          return 1;
        }
      }

      if (v16 <= 1)
      {
        v127 = 1;
      }

      else
      {
        v127 = v16;
      }

      v26 = v127 != 0;
      v128 = v127 - 1;
      if (__PAIR128__(v26 - 1, v128) >= v16)
      {
        v128 = v16;
      }

      if (v128 && (v16 <= 1 ? (v129 = 1) : (v129 = v16), (v26 = v129 != 0, v130 = v129 - 1, __PAIR128__(v26 - 1, v130) >= v16) ? (v131 = v16) : (v131 = v130), (~v131 & 0xFFFFFFFFFFFFFFFELL) != 0))
      {
        v141 = v128 + 1;
        result = (v128 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v132 = (v128 + 1) | 1;
        v142 = result;
        do
        {
          v142 -= 2;
        }

        while (v142);
        if (v141 == result)
        {
          return result;
        }
      }

      else
      {
        v132 = 1;
      }

      do
      {
        v133 = v132 + 1;
        if (v132 > v16)
        {
          break;
        }

        ++v132;
      }

      while (v133 <= v16);
      return v133 - 1;
    }
  }

  return result;
}

uint64_t sub_23C3ABE6C(unsigned int a1)
{
  v1 = 201;
  v2 = &unk_23C3D6708;
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &unk_23C3D6708)
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t sub_23C3ABED4(uint64_t a1, size_t a2, int __c)
{
  v4 = a2;
  __src = __c;
  v6 = __clz(~__c) - 24;
  if (v6)
  {
    if (a2)
    {
      v7 = 0;
      v8 = v6;
      do
      {
        v9 = *(a1 + 32);
        v10 = v8;
        if (!v9 || ((v12 = *v9, v11 = v9[1], *v9 - v11 >= v8) ? (v10 = v8) : (v10 = *v9 - v11), v9[1] = v11 + v8, v12 > v11))
        {
          v13 = *(a1 + 16);
          p_src = &__src;
          do
          {
            v16 = *(a1 + 8) - v13;
            if (v16 < v10 + 1)
            {
              (*(a1 + 24))(a1, v10 + 2);
              v13 = *(a1 + 16);
              v16 = *(a1 + 8) - v13;
            }

            if (v16 >= v10)
            {
              v17 = v10;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              memcpy((*a1 + v13), p_src, v17);
              v13 = *(a1 + 16);
            }

            v13 += v17;
            *(a1 + 16) = v13;
            p_src = (p_src + v17);
            v15 = v10 > v16;
            v10 -= v17;
          }

          while (v15);
        }

        ++v7;
      }

      while (v7 != v4);
    }
  }

  else
  {
    v18 = *(a1 + 32);
    if (!v18)
    {
      goto LABEL_29;
    }

    v20 = *v18;
    v19 = v18[1];
    if (*v18 - v19 < a2)
    {
      v4 = *v18 - v19;
    }

    v18[1] = v19 + a2;
    if (v20 > v19 && v4 != 0)
    {
LABEL_29:
      v23 = *(a1 + 16);
      do
      {
        v24 = *(a1 + 8) - v23;
        if (v24 < v4 + 1)
        {
          (*(a1 + 24))(a1, v4 + 2);
          v23 = *(a1 + 16);
          v24 = *(a1 + 8) - v23;
        }

        if (v24 >= v4)
        {
          v25 = v4;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          memset((*a1 + v23), __c, v25);
          v23 = *(a1 + 16);
        }

        v23 += v25;
        *(a1 + 16) = v23;
        v15 = v4 > v24;
        v4 -= v25;
      }

      while (v15);
    }
  }

  return a1;
}

unint64_t sub_23C3AC09C(unsigned int *a1)
{
  switch(*(a1 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      sub_23C3A53AC("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a1;
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_12;
    case 4:
      result = *a1;
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_12:
        sub_23C3A53AC("An argument index may not have a negative value");
      }

      if (result >> 31)
      {
        goto LABEL_10;
      }

      return result;
    case 6:
      result = *a1;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_10;
      }

      return result;
    case 7:
      result = *a1;
      if (result >> 31)
      {
LABEL_10:
        sub_23C3A53AC("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      sub_23C3A53AC("The argument index value is too large for the number of arguments supplied");
  }
}

uint64_t sub_23C3AC17C(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, unsigned __int8 *__src, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a7;
  v10 = __src;
  v12 = a3;
  v14 = a1;
  v15 = a3;
  if (a5)
  {
    v16 = 45;
LABEL_7:
    *__src = v16;
    v18 = __src + 1;
    goto LABEL_8;
  }

  v17 = (a3 >> 3) & 3;
  if (v17 == 2)
  {
    v16 = 43;
    goto LABEL_7;
  }

  v18 = __src;
  if (v17 == 3)
  {
    v16 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v19 = *a8;
      if (*a8)
      {
        v20 = a8 + 1;
        do
        {
          *v18++ = v19;
          v21 = *v20++;
          v19 = v21;
        }

        while (v21);
      }
    }
  }

  HIDWORD(v23) = a9 - 2;
  LODWORD(v23) = a9 - 2;
  v22 = v23 >> 1;
  switch(v22)
  {
    case 4:
      if (a7 - v18 > 9 || (v24 = (1233 * (32 - __clz(a1 | 1))) >> 12, a7 - v18 >= (((__PAIR64__(v24, a1) - dword_23C3D6BD8[v24]) >> 32) + 1)))
      {
        v25 = sub_23C3AD180(v18, a1);
LABEL_17:
        v9 = v25;
      }

      break;
    case 0:
      v25 = sub_23C3AD554(v18, a7, a1);
      goto LABEL_17;
    case 3:
      v25 = sub_23C3AD5E0(v18, a7, a1);
      goto LABEL_17;
    case 7:
      v25 = sub_23C3AD678(v18, a7, a1);
      goto LABEL_17;
    default:
      v75 = a7 - v18;
      v76 = sub_23C3AD11C(a1, a9);
      if (v75 >= v76)
      {
        v9 = &v18[v76];
        v77 = v9 - 1;
        do
        {
          *v77-- = a0123456789abcd[v14 % a9];
          v78 = v14 >= a9;
          v14 /= a9;
        }

        while (v78);
      }

      else
      {
        v9 = a7;
      }

      break;
  }

  if ((v15 & 0x40) == 0)
  {
LABEL_56:
    v48 = v9;
    v49 = HIDWORD(v12);
    v32 = *a2;
    if ((v15 & 7) == 4)
    {
      v82 = v12;
      v84 = a4;
      v50 = v18 - v10;
      v51 = *(v32 + 32);
      v52 = v18 - v10;
      if (!v51 || ((v54 = *v51, v53 = v51[1], *v51 - v53 >= v50) ? (v52 = v18 - v10) : (v52 = *v51 - v53), (v51[1] = v53 + v50, v54 > v53) ? (v55 = v52 == 0) : (v55 = 1), !v55))
      {
        v62 = *(v32 + 16);
        do
        {
          v64 = *(v32 + 8) - v62;
          if (v64 < v52 + 1)
          {
            (*(v32 + 24))(v32, v52 + 2);
            v62 = *(v32 + 16);
            v64 = *(v32 + 8) - v62;
          }

          if (v64 >= v52)
          {
            v65 = v52;
          }

          else
          {
            v65 = v64;
          }

          if (v65)
          {
            memmove((*v32 + v62), v10, v65);
            v62 = *(v32 + 16);
          }

          v62 += v65;
          *(v32 + 16) = v62;
          v10 += v65;
          v63 = v52 > v64;
          v52 -= v65;
        }

        while (v63);
      }

      LODWORD(v12) = v82;
      v56 = v82 & 0xF8 | 3;
      if (v49 >= v50)
      {
        v57 = v50;
      }

      else
      {
        v57 = v49;
      }

      v49 = (v49 - v57);
      v32 = *a2;
      v58 = 48;
      a4 = v84;
    }

    else
    {
      v58 = BYTE4(a4);
      v56 = v12;
      v18 = v10;
    }

    v59 = v49 << 32;
    v60 = a4 & 0xFFFFFF00FFFFFFFFLL | (v58 << 32);
    if ((v12 & 0xFF00) == 0x700)
    {
      sub_23C3ACED8(v18, v48, v32, v12 & 0xFFFF0700 | v59 | v56, v60);
    }

    else
    {
      sub_23C3AAB0C(v18, v48 - v18, v32, v59 | v12 & 0xFFFFFF00 | v56, v60, v48 - v18);
    }

    return v32;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x23EECF2D0](&v88);
    v26 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v26, &v88);
    }

    else
    {
      std::locale::locale(v26, &v88);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(&v88);
  }

  std::locale::locale(&v85, (a2 + 32));
  v27 = std::locale::use_facet(&v85, MEMORY[0x277D826C0]);
  v80 = v9;
  v28 = v9 - v18;
  std::locale::~locale(&v85);
  (v27->__vftable[1].__on_zero_shared)(&v88, v27);
  if ((v90 & 0x8000000000000000) != 0)
  {
    locale = v88.__locale_;
    v30 = v89;
    if (v89 && v28 > *v88.__locale_)
    {
      v79 = v27;
      v81 = v12;
      v83 = a4;
      v31 = v88.__locale_;
      goto LABEL_31;
    }

    operator delete(v88.__locale_);
    goto LABEL_55;
  }

  if (!v90 || v28 <= SLOBYTE(v88.__locale_))
  {
LABEL_55:
    v9 = v80;
    goto LABEL_56;
  }

  v79 = v27;
  v81 = v12;
  v83 = a4;
  locale = &v88;
  v31 = v88.__locale_;
  v30 = v89;
LABEL_31:
  v32 = *a2;
  v85.__locale_ = 0;
  v86 = 0;
  v87 = 0;
  v33 = v31 + v30;
  if (v90 >= 0)
  {
    v34 = &v88 + v90;
  }

  else
  {
    v34 = v33;
  }

  v35 = *locale;
  v36 = *locale;
  v37 = v28 - v35;
  if (v28 <= v35)
  {
    v67 = 0;
    v66 = v36 + v37;
    v68 = v80;
    goto LABEL_88;
  }

  v38 = v34 - 1;
  do
  {
    while (1)
    {
      v39 = HIBYTE(v87);
      if ((SHIBYTE(v87) & 0x80000000) == 0)
      {
        break;
      }

      v40 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v86 == v40)
      {
        if ((v87 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23C36FA14();
        }

LABEL_42:
        operator new();
      }

      v42 = v86++;
      v43 = v85.__locale_ + v42;
      *v43 = v36;
      v43[1] = 0;
      if (locale != v38)
      {
        goto LABEL_46;
      }

LABEL_36:
      v36 = *locale;
      v37 -= *locale;
      if (v37 <= 0)
      {
        goto LABEL_84;
      }
    }

    if (HIBYTE(v87) == 22)
    {
      goto LABEL_42;
    }

    HIBYTE(v87) = (HIBYTE(v87) + 1) & 0x7F;
    v41 = &v85 + v39;
    *v41 = v36;
    v41[1] = 0;
    if (locale == v38)
    {
      goto LABEL_36;
    }

LABEL_46:
    v44 = (locale + 1);
    v45 = (locale + 1);
    do
    {
      v46 = *v45++;
      v36 = v46;
      if (v46)
      {
        v47 = 1;
      }

      else
      {
        v47 = v44 == v38;
      }

      v44 = v45;
    }

    while (!v47);
    locale = (v45 - 1);
    v37 -= v36;
  }

  while (v37 > 0);
LABEL_84:
  v66 = v36 + v37;
  if (SHIBYTE(v87) < 0)
  {
    v71 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v68 = v80;
    if (v86 == v71)
    {
      if ((v87 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23C36FA14();
      }

LABEL_91:
      operator new();
    }

    v70 = v85.__locale_;
    v69 = v86++;
  }

  else
  {
    v67 = HIBYTE(v87);
    v68 = v80;
    if (HIBYTE(v87) == 22)
    {
      goto LABEL_91;
    }

LABEL_88:
    v69 = v67;
    HIBYTE(v87) = (v67 + 1) & 0x7F;
    v70 = &v85;
  }

  v72 = &v70[v69];
  *v72 = v66;
  v72[1] = 0;
  v73 = (v79->__vftable[1].~facet_0)(v79);
  sub_23C3AC958(v32, v10, v18, v68, &v85, v73, v81, v83);
  if (SHIBYTE(v87) < 0)
  {
    operator delete(v85.__locale_);
  }

  if (v90 < 0)
  {
    operator delete(v88.__locale_);
  }

  return v32;
}

void sub_23C3AC90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23C3AC958(uint64_t a1, _BYTE *__src, unsigned __int8 *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v10 = a3;
  v11 = __src;
  v13 = HIDWORD(a7);
  v14 = a3 - __src;
  LODWORD(v15) = *(a5 + 23);
  if ((v15 & 0x80u) != 0)
  {
    v15 = a5[1];
  }

  v16 = a4 - __src - 1 + v15;
  v85 = HIDWORD(a8);
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v16)
    {
      v84 = 0;
      v29 = *(a1 + 32);
      if (v29)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v28 = (a7 >> 32) - v16;
      if ((a7 & 7u) > 1)
      {
        if ((a7 & 7) != 3)
        {
          v84 = v28 - (v28 >> 1);
          sub_23C3ABED4(a1, v28 >> 1, SHIDWORD(a8));
          v29 = *(a1 + 32);
          if (!v29)
          {
            goto LABEL_121;
          }

          goto LABEL_56;
        }
      }

      else if ((a7 & 7) != 0)
      {
        v84 = (a7 >> 32) - v16;
        sub_23C3ABED4(a1, 0, SHIDWORD(a8));
        v29 = *(a1 + 32);
        if (!v29)
        {
          goto LABEL_121;
        }

LABEL_56:
        v38 = *v29;
        v37 = v29[1];
        v39 = v37 + v14;
        if (*v29 - v37 < v14)
        {
          v14 = *v29 - v37;
        }

        v29[1] = v39;
        if (v38 <= v37 || v14 == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_121;
      }

      v84 = 0;
      sub_23C3ABED4(a1, (a7 >> 32) - v16, SHIDWORD(a8));
      v29 = *(a1 + 32);
      if (v29)
      {
        goto LABEL_56;
      }
    }

LABEL_121:
    v80 = *(a1 + 16);
    do
    {
      v81 = *(a1 + 8) - v80;
      if (v81 < v14 + 1)
      {
        (*(a1 + 24))(a1, v14 + 2);
        v80 = *(a1 + 16);
        v81 = *(a1 + 8) - v80;
      }

      if (v81 >= v14)
      {
        v82 = v14;
      }

      else
      {
        v82 = v81;
      }

      if (v82)
      {
        memmove((*a1 + v80), v11, v82);
        v80 = *(a1 + 16);
      }

      v80 += v82;
      *(a1 + 16) = v80;
      v11 += v82;
      v31 = v14 > v81;
      v14 -= v82;
    }

    while (v31);
    goto LABEL_63;
  }

  v83 = a7;
  v17 = *(a1 + 32);
  if (!v17)
  {
    goto LABEL_28;
  }

  v19 = *v17;
  v18 = v17[1];
  v20 = v18 + v14;
  if (*v17 - v18 < v14)
  {
    v14 = *v17 - v18;
  }

  v17[1] = v20;
  if (v19 > v18 && v14 != 0)
  {
LABEL_28:
    v30 = *(a1 + 16);
    do
    {
      v32 = *(a1 + 8) - v30;
      if (v32 < v14 + 1)
      {
        (*(a1 + 24))(a1, v14 + 2);
        v30 = *(a1 + 16);
        v32 = *(a1 + 8) - v30;
      }

      if (v32 >= v14)
      {
        v33 = v14;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        memmove((*a1 + v30), v11, v33);
        v30 = *(a1 + 16);
      }

      v30 += v33;
      *(a1 + 16) = v30;
      v11 += v33;
      v31 = v14 > v32;
      v14 -= v33;
    }

    while (v31);
  }

  if (v13 <= v16)
  {
    v84 = 0;
    v8 = v83;
    goto LABEL_63;
  }

  v22 = v13 - v16;
  v23 = *(a1 + 32);
  if (!v23)
  {
    v26 = v13 - v16;
    v8 = v83;
    goto LABEL_45;
  }

  v25 = *v23;
  v24 = v23[1];
  if (*v23 - v24 >= v22)
  {
    v26 = v13 - v16;
  }

  else
  {
    v26 = *v23 - v24;
  }

  v23[1] = v24 + v22;
  v27 = v25 <= v24 || v26 == 0;
  v8 = v83;
  if (!v27)
  {
LABEL_45:
    v34 = *(a1 + 16);
    do
    {
      v35 = *(a1 + 8) - v34;
      if (v35 < v26 + 1)
      {
        (*(a1 + 24))(a1, v26 + 2);
        v34 = *(a1 + 16);
        v35 = *(a1 + 8) - v34;
      }

      if (v35 >= v26)
      {
        v36 = v26;
      }

      else
      {
        v36 = v35;
      }

      if (v36)
      {
        memset((*a1 + v34), 48, v36);
        v34 = *(a1 + 16);
      }

      v34 += v36;
      *(a1 + 16) = v34;
      v31 = v26 > v35;
      v26 -= v36;
    }

    while (v31);
  }

  v84 = 0;
LABEL_63:
  v41 = *(a5 + 23);
  v42 = v41;
  v43 = a5 + v41;
  if (v42 >= 0)
  {
    v44 = v43;
  }

  else
  {
    v44 = (*a5 + a5[1]);
  }

  if (v42 >= 0)
  {
    v45 = a5;
  }

  else
  {
    v45 = *a5;
  }

  v46 = v45 + 1;
  v47 = v8 & 0xFF00;
  while (1)
  {
    v49 = v44 - 1;
    v48 = *(v44 - 1);
    if (v47 != 1792)
    {
      break;
    }

    v50 = &v10[v48];
    v51 = *(a1 + 32);
    if (!v51)
    {
      goto LABEL_94;
    }

    v53 = *v51;
    v52 = v51[1];
    v54 = v52 + v48;
    if (*v51 - v52 < v48)
    {
      v48 = *v51 - v52;
    }

    v51[1] = v54;
    if (v53 > v52 && v48 != 0)
    {
LABEL_94:
      v66 = *(a1 + 16);
      do
      {
        v67 = *(a1 + 8) - v66;
        if (v67 < v48 + 1)
        {
          (*(a1 + 24))(a1, v48 + 2);
          v66 = *(a1 + 16);
          v67 = *(a1 + 8) - v66;
        }

        if (v67 >= v48)
        {
          v68 = v48;
        }

        else
        {
          v68 = v67;
        }

        if (v68)
        {
          v69 = (*a1 + v66);
          v70 = v68;
          v71 = v10;
          do
          {
            v73 = *v71++;
            v72 = v73;
            v74 = v73 - 32;
            if ((v73 - 97) < 6)
            {
              v72 = v74;
            }

            *v69++ = v72;
            --v70;
          }

          while (v70);
          v66 = *(a1 + 16);
        }

        v10 += v68;
        v66 += v68;
        *(a1 + 16) = v66;
        v31 = v48 > v67;
        v48 -= v68;
      }

      while (v31);
    }

    v10 = v50;
    if (v44 == v46)
    {
      goto LABEL_118;
    }

LABEL_90:
    v61 = *(a1 + 32);
    if (v61)
    {
      v63 = *v61;
      v62 = v61[1];
      v61[1] = v62 + 1;
      --v44;
      if (v62 >= v63)
      {
        continue;
      }
    }

    v64 = *a1;
    v65 = *(a1 + 16);
    *(a1 + 16) = v65 + 1;
    *(v64 + v65) = a6;
    v44 = v49;
    if (*(a1 + 16) == *(a1 + 8))
    {
      (*(a1 + 24))(a1, 2);
      v44 = v49;
    }
  }

  v56 = *(a1 + 32);
  if (!v56)
  {
    goto LABEL_108;
  }

  v58 = *v56;
  v57 = v56[1];
  v59 = v57 + v48;
  if (*v56 - v57 < v48)
  {
    v48 = *v56 - v57;
  }

  v56[1] = v59;
  if (v58 > v57 && v48 != 0)
  {
LABEL_108:
    v75 = *(a1 + 16);
    v76 = v10;
    do
    {
      v77 = *(a1 + 8) - v75;
      if (v77 < v48 + 1)
      {
        (*(a1 + 24))(a1, v48 + 2);
        v75 = *(a1 + 16);
        v77 = *(a1 + 8) - v75;
      }

      if (v77 >= v48)
      {
        v78 = v48;
      }

      else
      {
        v78 = v77;
      }

      if (v78)
      {
        memmove((*a1 + v75), v76, v78);
        v75 = *(a1 + 16);
      }

      v75 += v78;
      *(a1 + 16) = v75;
      v76 += v78;
      v31 = v48 > v77;
      v48 -= v78;
    }

    while (v31);
  }

  v10 += *v49;
  if (v44 != v46)
  {
    goto LABEL_90;
  }

LABEL_118:

  return sub_23C3ABED4(a1, v84, v85);
}

uint64_t sub_23C3ACED8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a1;
  v7 = a2 - a1;
  v8 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 > a2 - a1)
  {
    v9 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v26 = v8 >> 1;
        v8 -= v8 >> 1;
        sub_23C3ABED4(a3, v26, SHIDWORD(a5));
        v10 = *(a3 + 32);
        if (!v10)
        {
          goto LABEL_40;
        }

        goto LABEL_31;
      }
    }

    else if ((a4 & 7) != 0)
    {
      sub_23C3ABED4(a3, 0, SHIDWORD(a5));
      v10 = *(a3 + 32);
      if (!v10)
      {
        goto LABEL_40;
      }

      goto LABEL_31;
    }

    v8 = 0;
    sub_23C3ABED4(a3, (a4 >> 32) - (a2 - a1), SHIDWORD(a5));
    v10 = *(a3 + 32);
    if (!v10)
    {
LABEL_40:
      v32 = *(a3 + 16);
      do
      {
        v33 = *(a3 + 8) - v32;
        if (v33 < v7 + 1)
        {
          (*(a3 + 24))(a3, v7 + 2);
          v32 = *(a3 + 16);
          v33 = *(a3 + 8) - v32;
        }

        if (v33 >= v7)
        {
          v34 = v7;
        }

        else
        {
          v34 = v33;
        }

        if (v34)
        {
          v35 = (*a3 + v32);
          v36 = v34;
          v37 = v6;
          do
          {
            v39 = *v37++;
            v38 = v39;
            v40 = v39 - 32;
            if ((v39 - 97) < 6)
            {
              v38 = v40;
            }

            *v35++ = v38;
            --v36;
          }

          while (v36);
          v32 = *(a3 + 16);
        }

        v6 += v34;
        v32 += v34;
        *(a3 + 16) = v32;
        v17 = v7 > v33;
        v7 -= v34;
      }

      while (v17);
LABEL_38:
      sub_23C3ABED4(a3, v8, v9);
      return a3;
    }

LABEL_31:
    v28 = *v10;
    v27 = v10[1];
    v29 = v27 + v7;
    if (*v10 - v27 < v7)
    {
      v7 = *v10 - v27;
    }

    v10[1] = v29;
    if (v28 <= v27 || v7 == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  v11 = *(a3 + 32);
  if (!v11)
  {
    goto LABEL_13;
  }

  v13 = *v11;
  v12 = v11[1];
  v14 = v12 + v7;
  if (*v11 - v12 < v7)
  {
    v7 = *v11 - v12;
  }

  v11[1] = v14;
  if (v13 > v12 && v7 != 0)
  {
LABEL_13:
    v16 = *(a3 + 16);
    do
    {
      v18 = *(a3 + 8) - v16;
      if (v18 < v7 + 1)
      {
        (*(a3 + 24))(a3, v7 + 2);
        v16 = *(a3 + 16);
        v18 = *(a3 + 8) - v16;
      }

      if (v18 >= v7)
      {
        v19 = v7;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        v20 = (*a3 + v16);
        v21 = v19;
        v22 = v6;
        do
        {
          v24 = *v22++;
          v23 = v24;
          v25 = v24 - 32;
          if ((v24 - 97) < 6)
          {
            v23 = v25;
          }

          *v20++ = v23;
          --v21;
        }

        while (v21);
        v16 = *(a3 + 16);
      }

      v6 += v19;
      v16 += v19;
      *(a3 + 16) = v16;
      v17 = v7 > v18;
      v7 -= v19;
    }

    while (v17);
  }

  return a3;
}

uint64_t sub_23C3AD11C(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = v4 * v4;
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < a2 * a2 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

_WORD *sub_23C3AD180(_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = *&a00010203040506[2 * v7];
        a1[1] = *&a00010203040506[2 * (a2 % 0x5F5E100 / 0xF4240uLL)];
        a1[2] = *&a00010203040506[2 * (a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL)];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = *&a00010203040506[2 * (v13 / 0x64u)];
        a1[4] = *&a00010203040506[2 * (v13 % 0x64u)];
        return a1 + 5;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = *&a00010203040506[2 * v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = *&a00010203040506[2 * (v9 / 0x2710uLL)];
        v9 %= 0x2710u;
        *(a1 + 5) = *&a00010203040506[2 * (v9 / 0x64u)];
        *(a1 + 7) = *&a00010203040506[2 * (v9 % 0x64u)];
        return (a1 + 9);
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = *&a00010203040506[2 * v3];
        a1[1] = *&a00010203040506[2 * (a2 % 0xF4240 / 0x2710uLL)];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = *&a00010203040506[2 * (v11 / 0x64u)];
        a1[3] = *&a00010203040506[2 * (v11 % 0x64u)];
        return a1 + 4;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = *&a00010203040506[2 * v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = *&a00010203040506[2 * (v5 / 0x64u)];
        *(a1 + 5) = *&a00010203040506[2 * (v5 % 0x64u)];
        return (a1 + 7);
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = *&a00010203040506[2 * v6];
      v12 = a2 % 0x2710;
      a1[1] = *&a00010203040506[2 * (v12 / 0x64u)];
      a1[2] = *&a00010203040506[2 * (v12 % 0x64u)];
      return a1 + 3;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = *&a00010203040506[2 * ((5243 * (a2 % 0x2710)) >> 19)];
      *(a1 + 3) = *&a00010203040506[2 * (a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      return (a1 + 5);
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = *&a00010203040506[2 * v10];
      a1[1] = *&a00010203040506[2 * (a2 % 0x64u)];
      return a1 + 2;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = *&a00010203040506[2 * (a2 % 0x64u)];
      return (a1 + 3);
    }
  }

  else if (a2 > 9)
  {
    *a1 = *&a00010203040506[2 * a2];
    return a1 + 1;
  }

  else
  {
    *a1 = a2 | 0x30;
    return (a1 + 1);
  }
}

uint64_t sub_23C3AD554(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 >= v3)
  {
    a2 = a1 + v3;
    if (a3 < 0x11)
    {
      v5 = a3;
      v4 = a2;
    }

    else
    {
      v4 = a1 + v3;
      do
      {
        v5 = a3 >> 4;
        *(v4 - 4) = *&a00010203040506[4 * (a3 & 0xF) + 200];
        v4 -= 4;
        v6 = a3 > 0x10F;
        a3 >>= 4;
      }

      while (v6);
    }

    v7 = (v4 - 1);
    do
    {
      *v7-- = a01[v5 & 1];
      v6 = v5 > 1;
      v5 >>= 1;
    }

    while (v6);
  }

  return a2;
}

uint64_t sub_23C3AD5E0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 >= v3)
  {
    a2 = a1 + v3;
    if (a3 < 0x41)
    {
      v5 = a3;
      v4 = a2;
    }

    else
    {
      v4 = a1 + v3;
      do
      {
        v5 = a3 >> 6;
        *(v4 - 2) = *&a00010203040506[2 * (a3 & 0x3F) + 264];
        v4 -= 2;
        a3 = v5;
      }

      while (v5 > 0x40);
    }

    v6 = (v4 - 1);
    do
    {
      *v6-- = a01234567[v5 & 7];
      v7 = v5 > 7;
      v5 >>= 3;
    }

    while (v7);
  }

  return a2;
}

uint64_t sub_23C3AD678(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 >= v3)
  {
    a2 = a1 + v3;
    if (a3 < 0x101)
    {
      v5 = a3;
      v4 = a2;
    }

    else
    {
      v4 = a1 + v3;
      do
      {
        v5 = a3 >> 8;
        *(v4 - 2) = *&a00010203040506[2 * a3 + 392];
        v4 -= 2;
        a3 = v5;
      }

      while (v5 > 0x100);
    }

    v6 = (v4 - 1);
    do
    {
      *v6-- = a0123456789abcd_0[v5 & 0xF];
      v7 = v5 > 0xF;
      v5 >>= 4;
    }

    while (v7);
  }

  return a2;
}

void sub_23C3AD708(std::string *a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v75 = *MEMORY[0x277D85DE8];
  v72 = a2;
  v73 = &a2[a3];
  if (a3)
  {
    v70 = 1;
    while (1)
    {
      v5 = a2;
      v6 = sub_23C3A9CF0(&v72);
      if (v6 < 0)
      {
        break;
      }

      v7 = v6;
      if (v6 <= 31)
      {
        switch(v6)
        {
          case 9:
            std::string::append(a1, "\\t", 2uLL);
            goto LABEL_4;
          case 10:
            std::string::append(a1, "\\n", 2uLL);
            goto LABEL_4;
          case 13:
            std::string::append(a1, "\\r", 2uLL);
            goto LABEL_4;
        }
      }

      else if (v6 > 38)
      {
        if (v6 == 39)
        {
          if (a4)
          {
            std::string::push_back(a1, 39);
          }

          else
          {
            std::string::append(a1, "\\'", 2uLL);
          }

          goto LABEL_4;
        }

        if (v6 == 92)
        {
          std::string::append(a1, "\\\", 2uLL);
          goto LABEL_4;
        }
      }

      else
      {
        if (v6 == 32)
        {
          std::string::push_back(a1, 32);
          goto LABEL_4;
        }

        if (v6 == 34)
        {
          if (a4 == 1)
          {
            std::string::append(a1, "\\"", 2uLL);
          }

          else
          {
            std::string::push_back(a1, 34);
          }

          goto LABEL_4;
        }
      }

      if ((v6 - 917760) < 0xF0)
      {
        goto LABEL_78;
      }

      if (v6 <= 0x323AF)
      {
        v58 = " ";
        v59 = 711;
        do
        {
          v60 = v59 >> 1;
          v61 = &v58[4 * (v59 >> 1)];
          v63 = *v61;
          v62 = (v61 + 1);
          v59 += ~(v59 >> 1);
          if (((v6 << 14) | 0x3FFFu) >= v63)
          {
            v58 = v62;
          }

          else
          {
            v59 = v60;
          }
        }

        while (v59);
        if (v58 == " " || (*(v58 - 1) & 0x3FFFu) + (*(v58 - 1) >> 14) < v6)
        {
LABEL_78:
          if ((v70 & 1) == 0)
          {
            goto LABEL_79;
          }

          v42 = &unk_23C3D4FA8;
          v43 = 1496;
          do
          {
            v44 = v43 >> 1;
            v45 = &v42[v43 >> 1];
            v47 = *v45;
            v46 = v45 + 1;
            v43 += ~(v43 >> 1);
            if (((v6 << 11) | 0x7FFu) >= v47)
            {
              v42 = v46;
            }

            else
            {
              v43 = v44;
            }
          }

          while (v43);
          if (v42 == &unk_23C3D4FA8 || ((v48 = *(v42 - 1), (v48 & 0xF) == 2) ? (v49 = ((v48 >> 4) & 0x7F) + (v48 >> 11) >= v6) : (v49 = 0), !v49))
          {
LABEL_79:
            v50 = v72;
            if (v5 != v72)
            {
              while (1)
              {
                v54 = *v5;
                v55 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
                if (v55 < 0)
                {
                  v56 = a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
                  if (a1->__r_.__value_.__l.__size_ == v56 - 1)
                  {
                    if (v56 == 0x7FFFFFFFFFFFFFF8)
                    {
                      sub_23C36FA14();
                    }

                    v57 = a1->__r_.__value_.__r.__words[0];
LABEL_89:
                    operator new();
                  }

                  v52 = a1->__r_.__value_.__r.__words[0];
                  size = a1->__r_.__value_.__l.__size_;
                  a1->__r_.__value_.__l.__size_ = size + 1;
                }

                else
                {
                  if (*(&a1->__r_.__value_.__s + 23) == 22)
                  {
                    goto LABEL_89;
                  }

                  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
                  *(&a1->__r_.__value_.__s + 23) = (v55 + 1) & 0x7F;
                  v52 = a1;
                }

                v70 = 0;
                v53 = v52 + size;
                *v53 = v54;
                v53[1] = 0;
                if (++v5 == v50)
                {
                  goto LABEL_5;
                }
              }
            }

            v70 = 0;
            goto LABEL_5;
          }
        }
      }

      std::string::push_back(a1, 92);
      std::string::push_back(a1, 117);
      std::string::push_back(a1, 123);
      v64 = (35 - __clz(v7 | 1)) >> 2;
      v65 = &__c[v64];
      if (v7 < 0x101)
      {
        v66 = v7;
      }

      else
      {
        do
        {
          v66 = v7 >> 8;
          *(v65 - 1) = *&a00010203040506[2 * v7 + 392];
          v65 -= 2;
          v7 = v66;
        }

        while (v66 > 0x100);
      }

      v67 = v65 - 1;
      do
      {
        *v67-- = a0123456789abcd_0[v66 & 0xF];
        v29 = v66 > 0xF;
        v66 >>= 4;
      }

      while (v29);
      std::string::push_back(a1, __c[0]);
      if (v64 != 1)
      {
        std::string::push_back(a1, __c[1]);
        if (v64 != 2)
        {
          std::string::push_back(a1, __c[2]);
          if (v64 != 3)
          {
            std::string::push_back(a1, __c[3]);
            if (v64 != 4)
            {
              std::string::push_back(a1, __c[4]);
              if (v64 != 5)
              {
                std::string::push_back(a1, __c[5]);
                if (v64 != 6)
                {
                  std::string::push_back(a1, __c[6]);
                  if (v64 != 7)
                  {
                    std::string::push_back(a1, __c[7]);
                  }
                }
              }
            }
          }
        }
      }

      std::string::push_back(a1, 125);
LABEL_4:
      v70 = 1;
LABEL_5:
      a2 = v72;
      if (v72 == v73)
      {
        goto LABEL_120;
      }
    }

    v8 = v72;
    v71 = v72;
    while (1)
    {
      if (v5 == v8)
      {
        goto LABEL_5;
      }

      v11 = *v5;
      v12 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
      if (v12 < 0)
      {
        v13 = a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
        if (a1->__r_.__value_.__l.__size_ == v13 - 1)
        {
          if (v13 == 0x7FFFFFFFFFFFFFF8)
          {
            sub_23C36FA14();
          }

          v14 = a1->__r_.__value_.__r.__words[0];
LABEL_23:
          operator new();
        }

        v18 = a1->__r_.__value_.__r.__words[0];
        v19 = a1->__r_.__value_.__l.__size_;
        a1->__r_.__value_.__l.__size_ = v19 + 1;
        *(v18 + v19) = 92;
        v15 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
        if ((v15 & 0x80000000) == 0)
        {
LABEL_29:
          if (v15 == 22)
          {
            goto LABEL_30;
          }

          *(&a1->__r_.__value_.__s + 23) = (v15 + 1) & 0x7F;
          *(&a1->__r_.__value_.__l.__data_ + v15) = 120;
          v20 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
          if ((v20 & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (*(&a1->__r_.__value_.__s + 23) == 22)
        {
          goto LABEL_23;
        }

        *(&a1->__r_.__value_.__s + 23) = (v12 + 1) & 0x7F;
        *(&a1->__r_.__value_.__l.__data_ + v12) = 92;
        v15 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }
      }

      v16 = a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
      if (a1->__r_.__value_.__l.__size_ == v16 - 1)
      {
        if (v16 == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23C36FA14();
        }

        v17 = a1->__r_.__value_.__r.__words[0];
LABEL_30:
        operator new();
      }

      v23 = a1->__r_.__value_.__r.__words[0];
      v24 = a1->__r_.__value_.__l.__size_;
      a1->__r_.__value_.__l.__size_ = v24 + 1;
      *(v23 + v24) = 120;
      v20 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((v20 & 0x80000000) == 0)
      {
LABEL_36:
        if (v20 == 22)
        {
          goto LABEL_37;
        }

        v25 = v20;
        *(&a1->__r_.__value_.__s + 23) = (v20 + 1) & 0x7F;
        v26 = a1;
        goto LABEL_40;
      }

LABEL_32:
      v21 = a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
      if (a1->__r_.__value_.__l.__size_ == v21 - 1)
      {
        if (v21 == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23C36FA14();
        }

        v22 = a1->__r_.__value_.__r.__words[0];
LABEL_37:
        operator new();
      }

      v26 = a1->__r_.__value_.__r.__words[0];
      v25 = a1->__r_.__value_.__l.__size_;
      a1->__r_.__value_.__l.__size_ = v25 + 1;
LABEL_40:
      *(&v26->__r_.__value_.__l.__data_ + v25) = 123;
      v27 = (35 - __clz(v11 | 1)) >> 2;
      v28 = v27 - 1;
      do
      {
        __c[v28--] = a0123456789abcd_0[v11 & 0xF];
        v29 = v11 > 0xF;
        v11 >>= 4;
      }

      while (v29);
      v30 = 0;
      do
      {
        while (1)
        {
          v32 = __c[v30];
          v33 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
          if (v33 < 0)
          {
            break;
          }

          if (*(&a1->__r_.__value_.__s + 23) == 22)
          {
            goto LABEL_50;
          }

          *(&a1->__r_.__value_.__s + 23) = (v33 + 1) & 0x7F;
          v31 = a1 + v33;
          *v31 = v32;
          v31[1] = 0;
          if (v27 == ++v30)
          {
            goto LABEL_52;
          }
        }

        v34 = a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
        if (a1->__r_.__value_.__l.__size_ == v34 - 1)
        {
          if (v34 == 0x7FFFFFFFFFFFFFF8)
          {
            sub_23C36FA14();
          }

          v35 = a1->__r_.__value_.__r.__words[0];
LABEL_50:
          operator new();
        }

        v36 = a1->__r_.__value_.__r.__words[0];
        v37 = a1->__r_.__value_.__l.__size_;
        a1->__r_.__value_.__l.__size_ = v37 + 1;
        v38 = (v36 + v37);
        *v38 = v32;
        v38[1] = 0;
        ++v30;
      }

      while (v27 != v30);
LABEL_52:
      v39 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
      if (v39 < 0)
      {
        v40 = a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
        if (a1->__r_.__value_.__l.__size_ == v40 - 1)
        {
          if (v40 == 0x7FFFFFFFFFFFFFF8)
          {
            sub_23C36FA14();
          }

          v41 = a1->__r_.__value_.__r.__words[0];
LABEL_58:
          operator new();
        }

        v10 = a1->__r_.__value_.__r.__words[0];
        v9 = a1->__r_.__value_.__l.__size_;
        a1->__r_.__value_.__l.__size_ = v9 + 1;
      }

      else
      {
        if (*(&a1->__r_.__value_.__s + 23) == 22)
        {
          goto LABEL_58;
        }

        v9 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
        *(&a1->__r_.__value_.__s + 23) = (v39 + 1) & 0x7F;
        v10 = a1;
      }

      *(&v10->__r_.__value_.__l.__data_ + v9) = 125;
      v8 = v71;
      ++v5;
    }
  }

LABEL_120:
  v68 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C3AE27C(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v14;
LABEL_18:
    result = sub_23C3AE3D0(a1, a2, v8, a4, a5, v12, v9, v7, v11);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = sub_23C3AE3D0(a1, a2, a3, a4, a5, v12, &v13 + 2, 0, 0xAu);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  result = sub_23C3AE3D0(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, &v13 + 5, v5, 8u);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C3AE3D0(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16 = v17;
          v16 = (v16 + 1);
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = sub_23C3AEA8C(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_50;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x23EECF2D0](&v76);
    v21 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v21, &v76);
    }

    else
    {
      std::locale::locale(v21, &v76);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(&v76);
  }

  std::locale::locale(&v73, (a2 + 32));
  v22 = std::locale::use_facet(&v73, MEMORY[0x277D826C0]);
  v23 = v20 - v16;
  std::locale::~locale(&v73);
  (v22->__vftable[1].__on_zero_shared)(&v76, v22);
  if ((v78 & 0x8000000000000000) != 0)
  {
    locale = v76.__locale_;
    v25 = v77;
    if (v77 && v23 > *v76.__locale_)
    {
      v68 = v22;
      v69 = v20;
      v67 = a3;
      v71 = a4;
      v26 = v76.__locale_;
      goto LABEL_26;
    }

    operator delete(v76.__locale_);
LABEL_50:
    v43 = HIDWORD(a3);
    v27 = *a2;
    if ((v13 & 7) == 4)
    {
      v70 = v20;
      v72 = a4;
      v44 = v16 - v9;
      v45 = *(v27 + 32);
      v46 = v16 - v9;
      if (!v45 || ((v48 = *v45, v47 = v45[1], *v45 - v47 >= v44) ? (v46 = v16 - v9) : (v46 = *v45 - v47), (v45[1] = v47 + v44, v48 > v47) ? (v49 = v46 == 0) : (v49 = 1), !v49))
      {
        v56 = *(v27 + 16);
        do
        {
          v58 = *(v27 + 8) - v56;
          if (v58 < v46 + 1)
          {
            (*(v27 + 24))(v27, v46 + 2);
            v56 = *(v27 + 16);
            v58 = *(v27 + 8) - v56;
          }

          if (v58 >= v46)
          {
            v59 = v46;
          }

          else
          {
            v59 = v58;
          }

          if (v59)
          {
            memmove((*v27 + v56), v9, v59);
            v56 = *(v27 + 16);
          }

          v56 += v59;
          *(v27 + 16) = v56;
          v9 += v59;
          v57 = v46 > v58;
          v46 -= v59;
        }

        while (v57);
      }

      v50 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v44)
      {
        v51 = v44;
      }

      else
      {
        v51 = HIDWORD(a3);
      }

      v43 = (HIDWORD(a3) - v51);
      v27 = *a2;
      v52 = 48;
      v20 = v70;
      a4 = v72;
    }

    else
    {
      v52 = BYTE4(a4);
      v50 = a3;
      v16 = v9;
    }

    v53 = v43 << 32;
    v54 = a4 & 0xFFFFFF00FFFFFFFFLL | (v52 << 32);
    if ((a3 & 0xFF00) == 0x700)
    {
      sub_23C3ACED8(v16, v20, v27, a3 & 0xFFFF0700 | v53 | v50, v54);
    }

    else
    {
      sub_23C3AAB0C(v16, v20 - v16, v27, v53 | a3 & 0xFFFFFF00 | v50, v54, v20 - v16);
    }

    return v27;
  }

  if (!v78 || v23 <= SLOBYTE(v76.__locale_))
  {
    goto LABEL_50;
  }

  v68 = v22;
  v69 = v20;
  v67 = a3;
  v71 = a4;
  locale = &v76;
  v26 = v76.__locale_;
  v25 = v77;
LABEL_26:
  v27 = *a2;
  v73.__locale_ = 0;
  v74 = 0;
  v75 = 0;
  v28 = v26 + v25;
  if (v78 >= 0)
  {
    v29 = &v76 + v78;
  }

  else
  {
    v29 = v28;
  }

  v30 = *locale;
  v31 = *locale;
  v32 = v23 - v30;
  if (v23 <= v30)
  {
    v61 = 0;
    v60 = v31 + v32;
    goto LABEL_82;
  }

  v33 = v29 - 1;
  do
  {
    while (1)
    {
      v34 = HIBYTE(v75);
      if ((SHIBYTE(v75) & 0x80000000) == 0)
      {
        break;
      }

      v35 = (v75 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v74 == v35)
      {
        if ((v75 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23C36FA14();
        }

LABEL_37:
        operator new();
      }

      v37 = v74++;
      v38 = v73.__locale_ + v37;
      *v38 = v31;
      v38[1] = 0;
      if (locale != v33)
      {
        goto LABEL_41;
      }

LABEL_31:
      v31 = *locale;
      v32 -= *locale;
      if (v32 <= 0)
      {
        goto LABEL_78;
      }
    }

    if (HIBYTE(v75) == 22)
    {
      goto LABEL_37;
    }

    HIBYTE(v75) = (HIBYTE(v75) + 1) & 0x7F;
    v36 = &v73 + v34;
    *v36 = v31;
    v36[1] = 0;
    if (locale == v33)
    {
      goto LABEL_31;
    }

LABEL_41:
    v39 = (locale + 1);
    v40 = (locale + 1);
    do
    {
      v41 = *v40++;
      v31 = v41;
      if (v41)
      {
        v42 = 1;
      }

      else
      {
        v42 = v39 == v33;
      }

      v39 = v40;
    }

    while (!v42);
    locale = (v40 - 1);
    v32 -= v31;
  }

  while (v32 > 0);
LABEL_78:
  v60 = v31 + v32;
  if (SHIBYTE(v75) < 0)
  {
    v64 = (v75 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v74 == v64)
    {
      if ((v75 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23C36FA14();
      }

LABEL_85:
      operator new();
    }

    v63 = v73.__locale_;
    v62 = v74++;
  }

  else
  {
    v61 = HIBYTE(v75);
    if (HIBYTE(v75) == 22)
    {
      goto LABEL_85;
    }

LABEL_82:
    v62 = v61;
    HIBYTE(v75) = (v61 + 1) & 0x7F;
    v63 = &v73;
  }

  v65 = &v63[v62];
  *v65 = v60;
  v65[1] = 0;
  v66 = (v68->__vftable[1].~facet_0)(v68);
  sub_23C3AC958(v27, v9, v16, v69, &v73, v66, v67, v71);
  if (SHIBYTE(v75) < 0)
  {
    operator delete(v73.__locale_);
  }

  if (v78 < 0)
  {
    operator delete(v76.__locale_);
  }

  return v27;
}

void sub_23C3AEA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

_WORD *sub_23C3AEA8C(_WORD *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  HIDWORD(v5) = a4 - 2;
  LODWORD(v5) = a4 - 2;
  v4 = v5 >> 1;
  if (v4 == 4)
  {
    if (a2 - a1 <= 19)
    {
      v6 = (1233 * (64 - __clz(a3 | 1))) >> 12;
      if (a2 - a1 < v6 - (qword_23C3D7AA8[v6] > a3) + 1)
      {
        return a2;
      }
    }

    if (!HIDWORD(a3))
    {
      return sub_23C3AD180(a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      v8 = a3 / 0x2540BE400;
      v9 = a3;
      a1 = sub_23C3AD180(a1, a3 / 0x2540BE400);
      a3 = v9 - 10000000000 * v8;
    }

    *a1 = *&a00010203040506[2 * (a3 / 0x5F5E100)];
    a1[1] = *&a00010203040506[2 * (a3 % 0x5F5E100 / 0xF4240)];
    v10 = a3 % 0x5F5E100 % 0xF4240;
    a1[2] = *&a00010203040506[2 * (v10 / 0x2710uLL)];
    v10 %= 0x2710u;
    a1[3] = *&a00010203040506[2 * (v10 / 0x64u)];
    a1[4] = *&a00010203040506[2 * (v10 % 0x64u)];
    return a1 + 5;
  }

  else if (v4)
  {
    if (v4 == 3)
    {
      return sub_23C3AEDD8(a1, a2, a3);
    }

    else
    {
      if (v4 != 7)
      {
        v18 = a1;
        v19 = a3;
        v11 = a2 - a1;
        v12 = a2;
        v14 = sub_23C3AECD0(a3, a4);
        a2 = v12;
        if (v11 >= v14)
        {
          v15 = v19;
          a2 = v18 + v14;
          v16 = (a2 - 1);
          do
          {
            *v16-- = a0123456789abcd[v15 % a4];
            v17 = v15 >= a4;
            v15 /= a4;
          }

          while (v17);
        }

        return a2;
      }

      return sub_23C3AEE84(a1, a2, a3);
    }
  }

  else
  {
    return sub_23C3AED38(a1, a2, a3);
  }
}

uint64_t sub_23C3AECD0(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < v4 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

uint64_t sub_23C3AED38(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x11)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 4;
      *(v6 - 4) = *&a00010203040506[4 * (a3 & 0xF) + 200];
      v6 -= 4;
      v8 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v8);
  }

  v9 = (v6 - 1);
  do
  {
    *v9-- = a01[v7 & 1];
    v8 = v7 > 1;
    v7 >>= 1;
  }

  while (v8);
  return v5;
}

uint64_t sub_23C3AEDD8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x41)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 6;
      *(v6 - 2) = *&a00010203040506[2 * (a3 & 0x3F) + 264];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x40);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a01234567[v7 & 7];
    v9 = v7 > 7;
    v7 >>= 3;
  }

  while (v9);
  return v5;
}

uint64_t sub_23C3AEE84(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (67 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x101)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 8;
      *(v6 - 2) = *&a00010203040506[2 * a3 + 392];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x100);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a0123456789abcd_0[v7 & 0xF];
    v9 = v7 > 0xF;
    v7 >>= 4;
  }

  while (v9);
  return v5;
}

uint64_t sub_23C3AEF28(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v16 = *MEMORY[0x277D85DE8];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      goto LABEL_11;
    }

    v12 = 2;
    if (BYTE1(a4) == 2)
    {
      v11 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v11 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v16;
LABEL_18:
    result = sub_23C3AF094(a1, a2, a3, v8, a5, a6, __src, v9, v11, v12);
    goto LABEL_19;
  }

  if (BYTE1(a4) > 5u)
  {
    v12 = 16;
    if (BYTE1(a4) == 6)
    {
      v11 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v11 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v14;
    goto LABEL_18;
  }

  if (BYTE1(a4) != 4)
  {
LABEL_11:
    result = sub_23C3AF094(a1, a2, a3, a4, a5, a6, __src, &v14 + 5, 0, 0xAu);
    goto LABEL_19;
  }

  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  result = sub_23C3AF094(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, __src, v15, v6, 8u);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C3AF094(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6, char *__src, uint64_t a8, _BYTE *a9, unsigned int a10)
{
  v10 = a8;
  v11 = __src;
  v13 = a4;
  v14 = a3;
  v15 = a1;
  v16 = a4;
  if (a6)
  {
    v17 = 45;
LABEL_7:
    *__src = v17;
    v19 = __src + 1;
    goto LABEL_8;
  }

  v18 = (a4 >> 3) & 3;
  if (v18 == 2)
  {
    v17 = 43;
    goto LABEL_7;
  }

  v19 = __src;
  if (v18 == 3)
  {
    v17 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v20 = *a9;
      if (*a9)
      {
        v21 = a9 + 1;
        do
        {
          *v19++ = v20;
          v22 = *v21++;
          v20 = v22;
        }

        while (v22);
      }
    }
  }

  HIDWORD(v24) = a10 - 2;
  LODWORD(v24) = a10 - 2;
  v23 = v24 >> 1;
  if (v23 == 4)
  {
    v25 = a8 - v19;
    if (a2)
    {
      if (v25 > 38 || (v26 = (1233 * (128 - __clz(a2))) >> 12, v25 >= v26 - (__PAIR128__(a2, a1) < xmmword_23C3D7B50[v26]) + 1))
      {
        if (__PAIR128__(a2, a1) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
        {
          *v19 = __udivti3() | 0x30;
          v30 = __udivti3();
          v19[1] = ((1441151881 * v30) >> 57) + 48;
          *(v19 + 1) = *&a00010203040506[2 * (v30 % 0x5F5E100 / 0xF4240uLL)];
          v31 = v30 % 0x5F5E100 % 0xF4240;
          *(v19 + 2) = *&a00010203040506[2 * (v31 / 0x2710uLL)];
          v31 %= 0x2710u;
          *(v19 + 3) = *&a00010203040506[2 * (v31 / 0x64u)];
          *(v19 + 4) = *&a00010203040506[2 * (v31 % 0x64u)];
          v32 = __udivti3();
          *(v19 + 5) = *&a00010203040506[2 * (v32 / 0x5F5E100)];
          v33 = v32 % 0x5F5E100;
          *(v19 + 6) = *&a00010203040506[2 * (v33 / 0xF4240uLL)];
          v33 %= 0xF4240u;
          *(v19 + 7) = *&a00010203040506[2 * (v33 / 0x2710uLL)];
          v33 %= 0x2710u;
          *(v19 + 8) = *&a00010203040506[2 * (v33 / 0x64u)];
          *(v19 + 9) = *&a00010203040506[2 * (v33 % 0x64u)];
          v28 = v19 + 20;
        }

        else
        {
          v27 = __udivti3();
          if (HIDWORD(v27))
          {
            v36 = v19;
            if (v27 > 0x2540BE3FFLL)
            {
              v36 = sub_23C3AD180(v19, v27 / 0x2540BE400);
              v27 %= 0x2540BE400uLL;
            }

            *v36 = *&a00010203040506[2 * (v27 / 0x5F5E100)];
            v37 = v27 % 0x5F5E100;
            v36[1] = *&a00010203040506[2 * (v37 / 0xF4240uLL)];
            v37 %= 0xF4240u;
            v36[2] = *&a00010203040506[2 * (v37 / 0x2710uLL)];
            v37 %= 0x2710u;
            v36[3] = *&a00010203040506[2 * (v37 / 0x64u)];
            v36[4] = *&a00010203040506[2 * (v37 % 0x64u)];
            v28 = v36 + 5;
          }

          else
          {
            v28 = sub_23C3AD180(v19, v27);
          }
        }

        v38 = __umodti3();
        *v28 = v38 / 0x2540BE400 / 0x5F5E100 + 48;
        v39 = v38 / 0x2540BE400 % 0x5F5E100;
        *(v28 + 1) = *&a00010203040506[2 * (v39 / 0xF4240uLL)];
        v39 %= 0xF4240u;
        *(v28 + 3) = *&a00010203040506[2 * (v39 / 0x2710uLL)];
        v39 %= 0x2710u;
        *(v28 + 5) = *&a00010203040506[2 * (v39 / 0x64u)];
        *(v28 + 7) = *&a00010203040506[2 * (v39 % 0x64u)];
        *(v28 + 9) = *&a00010203040506[2 * (v38 % 0x2540BE400 / 0x5F5E100)];
        *(v28 + 11) = *&a00010203040506[2 * (v38 % 0x2540BE400 % 0x5F5E100 / 0xF4240)];
        v40 = v38 % 0x2540BE400 % 0x5F5E100 % 0xF4240;
        *(v28 + 13) = *&a00010203040506[2 * (v40 / 0x2710uLL)];
        v40 %= 0x2710u;
        *(v28 + 15) = *&a00010203040506[2 * (v40 / 0x64u)];
        *(v28 + 17) = *&a00010203040506[2 * (v40 % 0x64u)];
        v10 = v28 + 19;
        v13 = a4;
      }
    }

    else if (v25 > 19 || (v29 = (1233 * (64 - __clz(a1 | 1))) >> 12, v25 >= v29 - (qword_23C3D7AA8[v29] > a1) + 1))
    {
      if (HIDWORD(a1))
      {
        v34 = v19;
        if (v15 > 0x2540BE3FFLL)
        {
          v34 = sub_23C3AD180(v19, v15 / 0x2540BE400);
          v15 %= 0x2540BE400uLL;
        }

        *v34 = *&a00010203040506[2 * (v15 / 0x5F5E100)];
        v34[1] = *&a00010203040506[2 * (v15 % 0x5F5E100 / 0xF4240)];
        v35 = v15 % 0x5F5E100 % 0xF4240;
        v34[2] = *&a00010203040506[2 * (v35 / 0x2710uLL)];
        v35 %= 0x2710u;
        v34[3] = *&a00010203040506[2 * (v35 / 0x64u)];
        v34[4] = *&a00010203040506[2 * (v35 % 0x64u)];
        v10 = (v34 + 5);
      }

      else
      {
        v10 = sub_23C3AD180(v19, a1);
      }
    }
  }

  else if (v23)
  {
    if (v23 == 3)
    {
      v10 = sub_23C3B0064(v19, a8, a1, a2);
    }

    else if (v23 == 7)
    {
      v10 = sub_23C3B0128(v19, a8, a1, a2);
    }

    else
    {
      v91 = a8 - v19;
      v92 = a2;
      v93 = sub_23C3AFEC0(a1, a2, a10);
      if (v91 >= v93)
      {
        v103 = &v19[v93];
        v94 = v103 - 1;
        do
        {
          v95 = __udivti3();
          v96 = __PAIR128__(v92, v15) >= a10;
          *v94-- = a0123456789abcd[v15 - v95 * a10];
          v15 = v95;
          v92 = v97;
        }

        while (v96);
        v13 = a4;
        v10 = v103;
      }

      else
      {
        v13 = a4;
      }

      v14 = a3;
    }
  }

  else
  {
    v10 = sub_23C3AFFA8(v19, a8, a1, a2);
  }

  if ((v16 & 0x40) == 0)
  {
    goto LABEL_70;
  }

  if ((*(v14 + 40) & 1) == 0)
  {
    MEMORY[0x23EECF2D0](&v110);
    v41 = (v14 + 32);
    if (*(v14 + 40) == 1)
    {
      std::locale::operator=(v41, &v110);
    }

    else
    {
      std::locale::locale(v41, &v110);
      *(v14 + 40) = 1;
    }

    std::locale::~locale(&v110);
  }

  v105 = v13;
  std::locale::locale(&v107, (v14 + 32));
  v42 = std::locale::use_facet(&v107, MEMORY[0x277D826C0]);
  v43 = v10 - v19;
  std::locale::~locale(&v107);
  (v42->__vftable[1].__on_zero_shared)(&v110, v42);
  if ((v112 & 0x8000000000000000) != 0)
  {
    locale = v110.__locale_;
    v45 = v111;
    if (v111 && v43 > *v110.__locale_)
    {
      v99 = a5;
      v101 = v10;
      v46 = v110.__locale_;
      goto LABEL_45;
    }

    operator delete(v110.__locale_);
    goto LABEL_69;
  }

  if (!v112 || v43 <= SLOBYTE(v110.__locale_))
  {
LABEL_69:
    v13 = v105;
LABEL_70:
    v63 = HIDWORD(v13);
    v47 = *v14;
    if ((v16 & 7) == 4)
    {
      v64 = v14;
      v100 = a5;
      v102 = v10;
      v65 = v13;
      v66 = v19 - v11;
      v67 = *(v47 + 32);
      v68 = v19 - v11;
      if (!v67 || ((v70 = *v67, v69 = v67[1], *v67 - v69 >= v66) ? (v68 = v19 - v11) : (v68 = *v67 - v69), (v67[1] = v69 + v66, v70 > v69) ? (v71 = v68 == 0) : (v71 = 1), !v71))
      {
        v78 = *(v47 + 16);
        do
        {
          v80 = *(v47 + 8) - v78;
          if (v80 < v68 + 1)
          {
            (*(v47 + 24))(v47, v68 + 2);
            v78 = *(v47 + 16);
            v80 = *(v47 + 8) - v78;
          }

          if (v80 >= v68)
          {
            v81 = v68;
          }

          else
          {
            v81 = v80;
          }

          if (v81)
          {
            memmove((*v47 + v78), v11, v81);
            v78 = *(v47 + 16);
          }

          v78 += v81;
          *(v47 + 16) = v78;
          v11 += v81;
          v79 = v68 > v80;
          v68 -= v81;
        }

        while (v79);
      }

      LODWORD(v13) = v65;
      v72 = v65 & 0xF8 | 3;
      if (v63 >= v66)
      {
        v73 = v66;
      }

      else
      {
        v73 = v63;
      }

      v63 = (v63 - v73);
      v47 = *v64;
      v74 = 48;
      a5 = v100;
      v10 = v102;
    }

    else
    {
      v74 = BYTE4(a5);
      v72 = v13;
      v19 = v11;
    }

    v75 = v63 << 32;
    v76 = a5 & 0xFFFFFF00FFFFFFFFLL | (v74 << 32);
    if ((v13 & 0xFF00) == 0x700)
    {
      sub_23C3ACED8(v19, v10, v47, v13 & 0xFFFF0700 | v75 | v72, v76);
    }

    else
    {
      sub_23C3AAB0C(v19, v10 - v19, v47, v75 | v13 & 0xFFFFFF00 | v72, v76, v10 - v19);
    }

    return v47;
  }

  v99 = a5;
  v101 = v10;
  locale = &v110;
  v46 = v110.__locale_;
  v45 = v111;
LABEL_45:
  v47 = *v14;
  v107.__locale_ = 0;
  v108 = 0;
  v109 = 0;
  v48 = v46 + v45;
  if (v112 >= 0)
  {
    v49 = &v110 + v112;
  }

  else
  {
    v49 = v48;
  }

  v50 = *locale;
  v51 = *locale;
  v52 = v43 - v50;
  if (v43 <= v50)
  {
    v83 = 0;
    v82 = v51 + v52;
    v84 = v101;
    goto LABEL_106;
  }

  v98 = v42;
  v53 = v49 - 1;
  do
  {
    while (1)
    {
      v54 = HIBYTE(v109);
      if ((SHIBYTE(v109) & 0x80000000) == 0)
      {
        break;
      }

      v55 = (v109 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v108 == v55)
      {
        if ((v109 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23C36FA14();
        }

LABEL_56:
        operator new();
      }

      v57 = v108++;
      v58 = v107.__locale_ + v57;
      *v58 = v51;
      v58[1] = 0;
      if (locale != v53)
      {
        goto LABEL_60;
      }

LABEL_50:
      v51 = *locale;
      v52 -= *locale;
      if (v52 <= 0)
      {
        goto LABEL_98;
      }
    }

    if (HIBYTE(v109) == 22)
    {
      goto LABEL_56;
    }

    HIBYTE(v109) = (HIBYTE(v109) + 1) & 0x7F;
    v56 = &v107 + v54;
    *v56 = v51;
    v56[1] = 0;
    if (locale == v53)
    {
      goto LABEL_50;
    }

LABEL_60:
    v59 = (locale + 1);
    v60 = (locale + 1);
    do
    {
      v61 = *v60++;
      v51 = v61;
      if (v61)
      {
        v62 = 1;
      }

      else
      {
        v62 = v59 == v53;
      }

      v59 = v60;
    }

    while (!v62);
    locale = (v60 - 1);
    v52 -= v51;
  }

  while (v52 > 0);
LABEL_98:
  v82 = v51 + v52;
  if (SHIBYTE(v109) < 0)
  {
    v85 = (v109 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v84 = v101;
    v42 = v98;
    if (v108 == v85)
    {
      if ((v109 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23C36FA14();
      }

LABEL_104:
      operator new();
    }

    v87 = v107.__locale_;
    v86 = v108++;
  }

  else
  {
    v83 = HIBYTE(v109);
    v84 = v101;
    if (HIBYTE(v109) == 22)
    {
      goto LABEL_104;
    }

    v42 = v98;
LABEL_106:
    v86 = v83;
    HIBYTE(v109) = (v83 + 1) & 0x7F;
    v87 = &v107;
  }

  v88 = &v87[v86];
  *v88 = v82;
  v88[1] = 0;
  v89 = (v42->__vftable[1].~facet_0)(v42);
  sub_23C3AC958(v47, v11, v19, v84, &v107, v89, v105, v99);
  if (SHIBYTE(v109) < 0)
  {
    operator delete(v107.__locale_);
  }

  if (v112 < 0)
  {
    operator delete(v110.__locale_);
  }

  return v47;
}

void sub_23C3AFE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23C3AFEC0(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) >= a3)
  {
    v6 = a3 * a3;
    v7 = a3 * a3 * a3;
    v3 = 4;
    while (1)
    {
      if (__PAIR128__(a2, a1) < v6)
      {
        return (v3 - 2);
      }

      if (__PAIR128__(a2, a1) < v7)
      {
        break;
      }

      if (__PAIR128__(a2, a1) < v6 * v6)
      {
        return v3;
      }

      a1 = __udivti3();
      v3 = (v3 + 4);
      if (__PAIR128__(a2, a1) < a3)
      {
        return (v3 - 3);
      }
    }

    return (v3 - 1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_23C3AFFA8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 >= v6)
  {
    a2 = a1 + v6;
    if (__PAIR128__(a4, a3) < 0x11)
    {
      v8 = a3;
      v10 = a4;
      v7 = a2;
    }

    else
    {
      v7 = a1 + v6;
      do
      {
        *(&v9 + 1) = a4;
        *&v9 = a3;
        v8 = v9 >> 4;
        v10 = a4 >> 4;
        *(v7 - 4) = *&a00010203040506[4 * (a3 & 0xF) + 200];
        v7 -= 4;
        v11 = a3 <= 0x10F;
        a3 = v8;
        a4 >>= 4;
      }

      while (!v11);
    }

    v12 = (v7 - 1);
    do
    {
      v13 = v8 & 1;
      v11 = v8 <= 1;
      *(&v14 + 1) = v10;
      *&v14 = v8;
      v8 = v14 >> 1;
      v10 >>= 1;
      *v12-- = a01[v13];
    }

    while (!v11);
  }

  return a2;
}

uint64_t sub_23C3B0064(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 >= v6)
  {
    a2 = a1 + v6;
    if (__PAIR128__(a4, a3) < 0x41)
    {
      v8 = a3;
      v7 = a2;
    }

    else
    {
      v7 = a1 + v6;
      do
      {
        *(&v9 + 1) = a4;
        *&v9 = a3;
        v8 = v9 >> 6;
        a4 >>= 6;
        *(v7 - 2) = *&a00010203040506[2 * (a3 & 0x3F) + 264];
        v7 -= 2;
        a3 = v8;
      }

      while (v8 > 0x40);
    }

    v10 = (v7 - 1);
    do
    {
      v11 = v8 & 7;
      v12 = v8 <= 7;
      *(&v13 + 1) = a4;
      *&v13 = v8;
      v8 = v13 >> 3;
      a4 >>= 3;
      *v10-- = a01234567[v11];
    }

    while (!v12);
  }

  return a2;
}

uint64_t sub_23C3B0128(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (131 - v5) >> 2;
  if (a2 - a1 >= v6)
  {
    a2 = a1 + v6;
    if (__PAIR128__(a4, a3) < 0x101)
    {
      v8 = a3;
      v7 = a2;
    }

    else
    {
      v7 = a1 + v6;
      do
      {
        *(&v9 + 1) = a4;
        *&v9 = a3;
        v8 = v9 >> 8;
        a4 >>= 8;
        *(v7 - 2) = *&a00010203040506[2 * a3 + 392];
        v7 -= 2;
        a3 = v8;
      }

      while (v8 > 0x100);
    }

    v10 = (v7 - 1);
    do
    {
      v11 = v8 & 0xF;
      v12 = v8 <= 0xF;
      *(&v13 + 1) = a4;
      *&v13 = v8;
      v8 = v13 >> 4;
      a4 >>= 4;
      *v10-- = a0123456789abcd_0[v11];
    }

    while (!v12);
  }

  return a2;
}

uint64_t sub_23C3B01E0(uint64_t a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  if (a4)
  {
    p_src = v14;
    __src = 45;
    if (BYTE1(a2) > 0x10u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = (a2 >> 3) & 3;
    if (v7 == 2)
    {
      p_src = v14;
      __src = 43;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }

    else if (v7 == 3)
    {
      p_src = v14;
      __src = 32;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }

    else
    {
      p_src = &__src;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }
  }

  if (((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v8 = 6;
    goto LABEL_15;
  }

LABEL_13:
  v8 = 6;
  if (BYTE1(a2) != 18)
  {
    v8 = 0;
  }

LABEL_15:
  v9 = 3;
  if (!a5)
  {
    v9 = 0;
  }

  v10 = &aInfnaninfnan[v8 + v9];
  *p_src = *v10;
  p_src[2] = v10[2];
  if ((a2 & 7) == 4)
  {
    v11 = a2 & 0xF8 | 3;
  }

  else
  {
    v11 = a2;
  }

  sub_23C3AAB0C(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v11, a3, p_src - &__src + 3);
  return a1;
}

uint64_t sub_23C3B0328(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7, size_t a8)
{
  v8 = a8;
  v13 = HIDWORD(a5);
  v14 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      sub_23C3ABED4(a3, 0, SHIDWORD(a5));
      v15 = a7 - a1;
      v16 = *(a3 + 32);
      if (!v16)
      {
        goto LABEL_17;
      }

LABEL_7:
      v17 = *v16;
      v18 = v16[1];
      if (*v16 - v18 >= v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = *v16 - v18;
      }

      v20 = v18 + v15;
      v16[1] = v20;
      if (v17 <= v18 || v19 == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

    goto LABEL_6;
  }

  if ((a4 & 7) == 3)
  {
LABEL_6:
    v14 = 0;
    sub_23C3ABED4(a3, (a4 >> 32) - (a6 + a8), SHIDWORD(a5));
    v15 = a7 - a1;
    v16 = *(a3 + 32);
    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  v22 = v14 >> 1;
  v14 -= v14 >> 1;
  sub_23C3ABED4(a3, v22, SHIDWORD(a5));
  v15 = a7 - a1;
  v16 = *(a3 + 32);
  if (v16)
  {
    goto LABEL_7;
  }

LABEL_17:
  v19 = v15;
LABEL_18:
  v23 = *(a3 + 16);
  do
  {
    v25 = *(a3 + 8) - v23;
    if (v25 < v19 + 1)
    {
      (*(a3 + 24))(a3, v19 + 2);
      v23 = *(a3 + 16);
      v25 = *(a3 + 8) - v23;
    }

    if (v25 >= v19)
    {
      v26 = v19;
    }

    else
    {
      v26 = v25;
    }

    if (v26)
    {
      memmove((*a3 + v23), a1, v26);
      v23 = *(a3 + 16);
    }

    v23 += v26;
    *(a3 + 16) = v23;
    a1 += v26;
    v24 = v19 > v25;
    v19 -= v26;
  }

  while (v24);
  v16 = *(a3 + 32);
  if (!v16)
  {
    goto LABEL_40;
  }

  v17 = *v16;
  v20 = v16[1];
LABEL_30:
  v27 = v17 - v20;
  if (v17 - v20 >= v8)
  {
    v27 = v8;
  }

  v24 = v17 > v20;
  v28 = v20 + v8;
  v16[1] = v28;
  if (!v24 || v27 == 0)
  {
    v30 = a2 - a7;
    goto LABEL_49;
  }

  v23 = *(a3 + 16);
  v8 = v27;
  do
  {
LABEL_40:
    v31 = *(a3 + 8) - v23;
    if (v31 < v8 + 1)
    {
      (*(a3 + 24))(a3, v8 + 2);
      v23 = *(a3 + 16);
      v31 = *(a3 + 8) - v23;
    }

    if (v31 >= v8)
    {
      v32 = v8;
    }

    else
    {
      v32 = v31;
    }

    if (v32)
    {
      memset((*a3 + v23), 48, v32);
      v23 = *(a3 + 16);
    }

    v23 += v32;
    *(a3 + 16) = v23;
    v24 = v8 > v31;
    v8 -= v32;
  }

  while (v24);
  v16 = *(a3 + 32);
  v30 = a2 - a7;
  if (!v16)
  {
    goto LABEL_61;
  }

  v17 = *v16;
  v28 = v16[1];
LABEL_49:
  v33 = v17 - v28;
  if (v17 - v28 >= v30)
  {
    v33 = v30;
  }

  v16[1] = v28 + v30;
  if (v17 > v28 && v33 != 0)
  {
    v23 = *(a3 + 16);
    v30 = v33;
    do
    {
LABEL_61:
      v36 = *(a3 + 8) - v23;
      if (v36 < v30 + 1)
      {
        (*(a3 + 24))(a3, v30 + 2);
        v23 = *(a3 + 16);
        v36 = *(a3 + 8) - v23;
      }

      if (v36 >= v30)
      {
        v37 = v30;
      }

      else
      {
        v37 = v36;
      }

      if (v37)
      {
        memmove((*a3 + v23), a7, v37);
        v23 = *(a3 + 16);
      }

      v23 += v37;
      *(a3 + 16) = v23;
      a7 += v37;
      v24 = v30 > v36;
      v30 -= v37;
    }

    while (v24);
  }

  return sub_23C3ABED4(a3, v14, v13);
}

uint64_t sub_23C3B0618(uint64_t a1, uint64_t a2, void *a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v126 = std::locale::use_facet(this, MEMORY[0x277D826C0]);
  (v126->__vftable[1].__on_zero_shared)(__p);
  v10 = a3[2];
  v11 = *a3;
  v128 = a3;
  if (v10 >= a3[1])
  {
    v10 = a3[1];
  }

  v12 = v10 - v11;
  if ((SHIBYTE(v133) & 0x8000000000000000) != 0)
  {
    v13 = __p[1];
    if (!__p[1])
    {
      goto LABEL_42;
    }

    v16 = __p[0];
    v15 = *__p[0];
    if (v12 <= v15)
    {
      *__p[0] = 0;
      __p[1] = 0;
      goto LABEL_42;
    }

    v122 = a6;
    v123 = a5;
    *__c = v10 - v11;
    v17 = *__p[0];
    v14 = __p[0];
  }

  else
  {
    if (!HIBYTE(v133))
    {
      goto LABEL_42;
    }

    if (v12 <= SLOBYTE(__p[0]))
    {
      LOBYTE(__p[0]) = 0;
      HIBYTE(v133) = 0;
      goto LABEL_42;
    }

    v122 = a6;
    v123 = a5;
    *__c = v10 - v11;
    v14 = __p[0];
    v13 = __p[1];
    v15 = SLOBYTE(__p[0]);
    v16 = __p;
    v17 = __p[0];
  }

  v130 = 0uLL;
  v131 = 0;
  v18 = &v13[v14];
  if (v133 >= 0)
  {
    v19 = __p + SHIBYTE(v133);
  }

  else
  {
    v19 = v18;
  }

  v20 = *__c - v15;
  if (*__c <= v15)
  {
    v32 = 0;
    v31 = v17 + v20;
    goto LABEL_39;
  }

  v21 = (v19 - 1);
  do
  {
    while (1)
    {
      v22 = HIBYTE(v131);
      if ((SHIBYTE(v131) & 0x80000000) == 0)
      {
        break;
      }

      v23 = (v131 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (*(&v130 + 1) == v23)
      {
        if ((v131 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23C36FA14();
        }

LABEL_21:
        operator new();
      }

      v25 = v130;
      ++*(&v130 + 1);
      v26 = (v25 + *(&v25 + 1));
      *v26 = v17;
      v26[1] = 0;
      if (v16 != v21)
      {
        goto LABEL_25;
      }

LABEL_15:
      v17 = *v16;
      v20 -= *v16;
      if (v20 <= 0)
      {
        goto LABEL_34;
      }
    }

    if (HIBYTE(v131) == 22)
    {
      goto LABEL_21;
    }

    HIBYTE(v131) = (HIBYTE(v131) + 1) & 0x7F;
    v24 = &v130 + v22;
    *v24 = v17;
    v24[1] = 0;
    if (v16 == v21)
    {
      goto LABEL_15;
    }

LABEL_25:
    v27 = (v16 + 1);
    v28 = (v16 + 1);
    do
    {
      v29 = *v28;
      v28 = (v28 + 1);
      v17 = v29;
      if (v29)
      {
        v30 = 1;
      }

      else
      {
        v30 = v27 == v21;
      }

      v27 = v28;
    }

    while (!v30);
    v16 = (v28 - 1);
    v20 -= v17;
  }

  while (v20 > 0);
LABEL_34:
  v31 = v17 + v20;
  if (SHIBYTE(v131) < 0)
  {
    v119 = (v131 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (*(&v130 + 1) == v119)
    {
      if ((v131 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23C36FA14();
      }

LABEL_187:
      operator new();
    }

    v120 = v130;
    ++*(&v130 + 1);
    v121 = (v120 + *(&v120 + 1));
    *v121 = v31;
    v121[1] = 0;
    if (SHIBYTE(v133) < 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v32 = HIBYTE(v131);
    if (HIBYTE(v131) == 22)
    {
      goto LABEL_187;
    }

LABEL_39:
    HIBYTE(v131) = (v32 + 1) & 0x7F;
    v33 = &v130 + v32;
    *v33 = v31;
    v33[1] = 0;
    if (SHIBYTE(v133) < 0)
    {
LABEL_40:
      operator delete(__p[0]);
    }
  }

  *__p = v130;
  v133 = v131;
  a5 = v123;
  v12 = *__c;
  a6 = v122;
LABEL_42:
  v34 = HIDWORD(a6);
  v35 = *(a2 + 16);
  v36 = HIBYTE(v133);
  if (v133 < 0)
  {
    v36 = __p[1];
  }

  v37 = &v36[v128[3] - v35 + *(a2 + 4) - (v36 != 0)];
  v38 = a5 & 7;
  v39 = (a5 >> 32) - v37;
  if (a5 >> 32 <= v37)
  {
    *v129 = 0;
    v39 = 0;
    v40 = v34;
    if (v38 == 4)
    {
      goto LABEL_61;
    }

    goto LABEL_66;
  }

  if (v38 == 4)
  {
    v40 = 48;
  }

  else
  {
    v40 = v34;
  }

  if (v38 == 4)
  {
    v41 = 3;
  }

  else
  {
    v41 = v38;
  }

  if (v41 > 1)
  {
    if (v41 != 3)
    {
      *v129 = v39 - (v39 >> 1);
      v39 >>= 1;
      if (v38 != 4)
      {
        goto LABEL_66;
      }

      goto LABEL_61;
    }

    goto LABEL_58;
  }

  if (!v41)
  {
LABEL_58:
    *v129 = 0;
    if (v38 == 4)
    {
      goto LABEL_61;
    }

    goto LABEL_66;
  }

  *v129 = v39;
  v39 = 0;
  if (v38 != 4)
  {
    goto LABEL_66;
  }

LABEL_61:
  if (v11 != v35)
  {
    v42 = *v35;
    v43 = *(a1 + 32);
    if (!v43 || (v45 = *v43, v44 = v43[1], v43[1] = v44 + 1, v44 < v45))
    {
      v46 = *a1;
      v47 = *(a1 + 16);
      *(a1 + 16) = v47 + 1;
      *(v46 + v47) = v42;
      if (*(a1 + 16) == *(a1 + 8))
      {
        v48 = v39;
        (*(a1 + 24))(a1, 2);
        v39 = v48;
      }
    }
  }

LABEL_66:
  __ca = v34 & 0xFFFFFF00 | v40;
  sub_23C3ABED4(a1, v39, __ca);
  if (v38 != 4)
  {
    v49 = *(a2 + 16);
    if (v11 != v49)
    {
      v50 = *v49;
      v51 = *(a1 + 32);
      if (!v51 || (v53 = *v51, v52 = v51[1], v51[1] = v52 + 1, v52 < v53))
      {
        v54 = *a1;
        v55 = *(a1 + 16);
        *(a1 + 16) = v55 + 1;
        *(v54 + v55) = v50;
        if (*(a1 + 16) == *(a1 + 8))
        {
          (*(a1 + 24))(a1, 2);
        }
      }
    }
  }

  v56 = SHIBYTE(v133);
  if ((SHIBYTE(v133) & 0x8000000000000000) != 0)
  {
    v56 = __p[1];
    if (!__p[1])
    {
      goto LABEL_103;
    }

    v57 = __p[0];
LABEL_77:
    v58 = v56 + v57;
    v59 = (v126->__vftable[1].~facet_0)(v126);
    v60 = v57 + 1;
    while (1)
    {
      v62 = v58 - 1;
      v61 = *(v58 - 1);
      v63 = *(a1 + 32);
      if (v63)
      {
        v65 = *v63;
        v64 = v63[1];
        if (*v63 - v64 >= v61)
        {
          v66 = *(v58 - 1);
        }

        else
        {
          v66 = *v63 - v64;
        }

        v63[1] = v64 + v61;
        if (v65 <= v64 || v66 == 0)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v66 = *(v58 - 1);
      }

      v73 = *(a1 + 16);
      v74 = v11;
      do
      {
        v76 = *(a1 + 8) - v73;
        if (v76 < v66 + 1)
        {
          (*(a1 + 24))(a1, v66 + 2);
          v73 = *(a1 + 16);
          v76 = *(a1 + 8) - v73;
        }

        if (v76 >= v66)
        {
          v77 = v66;
        }

        else
        {
          v77 = v76;
        }

        if (v77)
        {
          memmove((*a1 + v73), v74, v77);
          v73 = *(a1 + 16);
        }

        v73 += v77;
        *(a1 + 16) = v73;
        v74 += v77;
        v75 = v66 > v76;
        v66 -= v77;
      }

      while (v75);
LABEL_87:
      if (v58 == v60)
      {
        goto LABEL_109;
      }

      v11 += *(v58 - 1);
      v68 = *(a1 + 32);
      if (v68)
      {
        v70 = *v68;
        v69 = v68[1];
        v68[1] = v69 + 1;
        --v58;
        if (v69 >= v70)
        {
          continue;
        }
      }

      v71 = *a1;
      v72 = *(a1 + 16);
      *(a1 + 16) = v72 + 1;
      *(v71 + v72) = v59;
      v58 = v62;
      if (*(a1 + 16) == *(a1 + 8))
      {
        (*(a1 + 24))(a1, 2);
        v58 = v62;
      }
    }
  }

  if (HIBYTE(v133))
  {
    v57 = __p;
    goto LABEL_77;
  }

LABEL_103:
  v78 = *(a1 + 32);
  if (v78)
  {
    v80 = *v78;
    v79 = v78[1];
    if (*v78 - v79 >= v12)
    {
      v81 = v12;
    }

    else
    {
      v81 = *v78 - v79;
    }

    v78[1] = v79 + v12;
    if (v80 <= v79 || !v81)
    {
      goto LABEL_109;
    }
  }

  else
  {
    v81 = v12;
  }

  v116 = *(a1 + 16);
  do
  {
    v117 = *(a1 + 8) - v116;
    if (v117 < v81 + 1)
    {
      (*(a1 + 24))(a1, v81 + 2);
      v116 = *(a1 + 16);
      v117 = *(a1 + 8) - v116;
    }

    if (v117 >= v81)
    {
      v118 = v81;
    }

    else
    {
      v118 = v117;
    }

    if (v118)
    {
      memmove((*a1 + v116), v11, v118);
      v116 = *(a1 + 16);
    }

    v116 += v118;
    *(a1 + 16) = v116;
    v11 += v118;
    v75 = v81 > v117;
    v81 -= v118;
  }

  while (v75);
LABEL_109:
  if (v128[1] != v128[3])
  {
    v82 = (v126->__vftable[1].~facet)(v126);
    v83 = *(a1 + 32);
    if (!v83 || (v85 = *v83, v84 = v83[1], v83[1] = v84 + 1, v84 < v85))
    {
      v86 = *a1;
      v87 = *(a1 + 16);
      *(a1 + 16) = v87 + 1;
      *(v86 + v87) = v82;
      if (*(a1 + 16) == *(a1 + 8))
      {
        (*(a1 + 24))(a1, 2);
      }
    }

    v88 = v128[1];
    v89 = (v88 + 1);
    v90 = v128[2] - (v88 + 1);
    v91 = *(a1 + 32);
    if (v91)
    {
      v92 = *v91;
      v93 = v91[1];
      if (*v91 - v93 >= v90)
      {
        v94 = v90;
      }

      else
      {
        v94 = *v91 - v93;
      }

      v95 = v93 + v90;
      v91[1] = v95;
      if (v92 <= v93 || !v94)
      {
        v96 = *(a2 + 4);
        goto LABEL_134;
      }
    }

    else
    {
      v94 = v128[2] - (v88 + 1);
    }

    v97 = *(a1 + 16);
    do
    {
      v98 = *(a1 + 8) - v97;
      if (v98 < v94 + 1)
      {
        (*(a1 + 24))(a1, v94 + 2);
        v97 = *(a1 + 16);
        v98 = *(a1 + 8) - v97;
      }

      if (v98 >= v94)
      {
        v99 = v94;
      }

      else
      {
        v99 = v98;
      }

      if (v99)
      {
        memmove((*a1 + v97), v89, v99);
        v97 = *(a1 + 16);
      }

      v97 += v99;
      *(a1 + 16) = v97;
      v89 += v99;
      v75 = v94 > v98;
      v94 -= v99;
    }

    while (v75);
    v91 = *(a1 + 32);
    v96 = *(a2 + 4);
    if (v91)
    {
      v92 = *v91;
      v95 = v91[1];
LABEL_134:
      v100 = v92 - v95;
      if (v92 - v95 >= v96)
      {
        v100 = v96;
      }

      v91[1] = v95 + v96;
      if (v92 > v95 && v100 != 0)
      {
        v97 = *(a1 + 16);
        v96 = v100;
        goto LABEL_167;
      }
    }

    else
    {
      do
      {
LABEL_167:
        v114 = *(a1 + 8) - v97;
        if (v114 < v96 + 1)
        {
          (*(a1 + 24))(a1, v96 + 2);
          v97 = *(a1 + 16);
          v114 = *(a1 + 8) - v97;
        }

        if (v114 >= v96)
        {
          v115 = v96;
        }

        else
        {
          v115 = v114;
        }

        if (v115)
        {
          memset((*a1 + v97), 48, v115);
          v97 = *(a1 + 16);
        }

        v97 += v115;
        *(a1 + 16) = v97;
        v75 = v96 > v114;
        v96 -= v115;
      }

      while (v75);
    }
  }

  v103 = v128[2];
  v102 = v128[3];
  if (v103 != v102)
  {
    v104 = v102 - v103;
    v105 = *(a1 + 32);
    if (v105)
    {
      v107 = *v105;
      v106 = v105[1];
      if (*v105 - v106 >= v104)
      {
        v108 = v104;
      }

      else
      {
        v108 = *v105 - v106;
      }

      v105[1] = v106 + v104;
      if (v107 > v106 && v108 != 0)
      {
        goto LABEL_155;
      }
    }

    else
    {
      v108 = v104;
LABEL_155:
      v111 = *(a1 + 16);
      do
      {
        v112 = *(a1 + 8) - v111;
        if (v112 < v108 + 1)
        {
          (*(a1 + 24))(a1, v108 + 2);
          v111 = *(a1 + 16);
          v112 = *(a1 + 8) - v111;
        }

        if (v112 >= v108)
        {
          v113 = v108;
        }

        else
        {
          v113 = v112;
        }

        if (v113)
        {
          memmove((*a1 + v111), v103, v113);
          v111 = *(a1 + 16);
        }

        v111 += v113;
        *(a1 + 16) = v111;
        v103 += v113;
        v75 = v108 > v112;
        v108 -= v113;
      }

      while (v75);
    }
  }

  sub_23C3ABED4(a1, *v129, __ca);
  if (SHIBYTE(v133) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_23C3B10F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    v27 = a1;
    operator delete(__p);
    a1 = v27;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23C3B116C(uint64_t a1, unsigned __int8 *a2, size_t a3, uint64_t *a4)
{
  v6 = *(a1 + 1);
  v7 = *a4;
  v9 = sub_23C3AA640(a1, a4);
  v10 = v8;
  if (v6 != 19)
  {
    if ((v8 & 0x80000000) != 0)
    {
      sub_23C3AA940(a2, a3, v7, v9, v8);
      return v7;
    }

    v11 = 0;
    v12 = a2;
    if (a3 && v10)
    {
      v13 = v10 & 0x7FFFFFFF;
      if (*a2 < 0)
      {
        v15 = a2;
      }

      else
      {
        v14 = 0;
        v12 = &a2[v13];
        v15 = &a2[v13 - 1];
        while (1)
        {
          if (a3 - 1 == v14)
          {
            v11 = a3;
            v12 = &a2[a3];
            goto LABEL_45;
          }

          if (v13 - 1 == v14)
          {
            break;
          }

          v16 = a2[++v14];
          if (v16 < 0)
          {
            v13 = v13 - v14 + 1;
            v15 = &a2[v14 - 1];
            goto LABEL_38;
          }
        }

        if ((*v12 & 0x80000000) == 0)
        {
          v11 = v10 & 0x7FFFFFFF;
          goto LABEL_45;
        }

        v13 = 1;
      }

LABEL_38:
      v11 = v15 - a2 + sub_23C3AAD28(v15, &a2[a3], v13, 0);
    }

LABEL_45:
    sub_23C3AAB0C(a2, v12 - a2, v7, v9, v10, v11);
    return v7;
  }

  __p.__r_.__value_.__r.__words[2] = 0x100000000000000;
  *&__p.__r_.__value_.__l.__data_ = 0x22uLL;
  sub_23C3AD708(&__p, a2, a3, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v17 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__p.__r_.__value_.__l.__size_ == v17)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23C36FA14();
      }

LABEL_17:
      operator new();
    }

    size = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
    ++__p.__r_.__value_.__l.__size_;
  }

  else
  {
    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
    {
      goto LABEL_17;
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(&__p.__r_.__value_.__s + 23) = (*(&__p.__r_.__value_.__s + 23) + 1) & 0x7F;
    p_p = &__p;
  }

  *(&p_p->__r_.__value_.__l.__data_ + size) = 34;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __p.__r_.__value_.__l.__size_;
  }

  if ((v10 & 0x80000000) != 0)
  {
    sub_23C3AA940(v20, v21, v7, v9, v10);
    goto LABEL_48;
  }

  LODWORD(v22) = 0;
  if (v10 && v21)
  {
    v22 = v10 & 0x7FFFFFFF;
    if (v20->__r_.__value_.__s.__data_[0] < 0)
    {
      v25 = v20;
    }

    else
    {
      v23 = 0;
      v24 = (v20 + v22);
      v25 = v20 + v22 - 1;
      while (1)
      {
        if (v21 - 1 == v23)
        {
          LODWORD(v22) = v21;
          v24 = (v20 + v21);
          goto LABEL_47;
        }

        if (v22 - 1 == v23)
        {
          break;
        }

        v26 = v20->__r_.__value_.__s.__data_[++v23];
        if (v26 < 0)
        {
          v22 = v22 - v23 + 1;
          v25 = v20 + v23 - 1;
          goto LABEL_40;
        }
      }

      if ((v24->__r_.__value_.__s.__data_[0] & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

      v22 = 1;
    }

LABEL_40:
    v27 = v25 - v20;
    v28 = v20;
    v29 = sub_23C3AAD28(v25, v20 + v21, v22, 0);
    v20 = v28;
    v24 = v30;
    LODWORD(v22) = v27 + v29;
  }

  else
  {
    v24 = v20;
  }

LABEL_47:
  sub_23C3AAB0C(v20, v24 - v20, v7, v9, v10, v22);
LABEL_48:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23C3B1514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23C3B1530(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char *a5, uint64_t a6, _BYTE *a7, unsigned int a8)
{
  v8 = a5;
  v12 = (a3 >> 3) & 3;
  if (v12 == 2)
  {
    v14 = 43;
    goto LABEL_5;
  }

  v13 = a5;
  if (v12 == 3)
  {
    v14 = 32;
LABEL_5:
    *a5 = v14;
    v13 = a5 + 1;
  }

  if ((a3 & 0x20) != 0)
  {
    if (a7)
    {
      v15 = *a7;
      if (*a7)
      {
        v16 = a7 + 1;
        do
        {
          *v13 = v15;
          v13 = (v13 + 1);
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }
  }

  v18 = sub_23C3AEA8C(v13, a6, a1, a8);
  if ((a3 & 0x40) == 0)
  {
    goto LABEL_48;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x23EECF2D0](&v74);
    v19 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v19, &v74);
    }

    else
    {
      std::locale::locale(v19, &v74);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(&v74);
  }

  std::locale::locale(&v71, (a2 + 32));
  v20 = std::locale::use_facet(&v71, MEMORY[0x277D826C0]);
  v21 = v18 - v13;
  std::locale::~locale(&v71);
  (v20->__vftable[1].__on_zero_shared)(&v74, v20);
  if ((v76 & 0x8000000000000000) != 0)
  {
    locale = v74.__locale_;
    v23 = v75;
    if (v75 && v21 > *v74.__locale_)
    {
      v66 = v20;
      v67 = v18;
      v65 = a3;
      v69 = a4;
      v24 = v74.__locale_;
      goto LABEL_24;
    }

    operator delete(v74.__locale_);
LABEL_48:
    v41 = HIDWORD(a3);
    v25 = *a2;
    if ((a3 & 7) == 4)
    {
      v68 = v18;
      v70 = a4;
      v42 = v13 - v8;
      v43 = *(v25 + 32);
      v44 = v13 - v8;
      if (!v43 || ((v46 = *v43, v45 = v43[1], *v43 - v45 >= v42) ? (v44 = v13 - v8) : (v44 = *v43 - v45), (v43[1] = v45 + v42, v46 > v45) ? (v47 = v44 == 0) : (v47 = 1), !v47))
      {
        v54 = *(v25 + 16);
        do
        {
          v56 = *(v25 + 8) - v54;
          if (v56 < v44 + 1)
          {
            (*(v25 + 24))(v25, v44 + 2);
            v54 = *(v25 + 16);
            v56 = *(v25 + 8) - v54;
          }

          if (v56 >= v44)
          {
            v57 = v44;
          }

          else
          {
            v57 = v56;
          }

          if (v57)
          {
            memmove((*v25 + v54), v8, v57);
            v54 = *(v25 + 16);
          }

          v54 += v57;
          *(v25 + 16) = v54;
          v8 += v57;
          v55 = v44 > v56;
          v44 -= v57;
        }

        while (v55);
      }

      v48 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v42)
      {
        v49 = v42;
      }

      else
      {
        v49 = HIDWORD(a3);
      }

      v41 = (HIDWORD(a3) - v49);
      v25 = *a2;
      v50 = 48;
      v18 = v68;
      a4 = v70;
    }

    else
    {
      v50 = BYTE4(a4);
      v48 = a3;
      v13 = v8;
    }

    v51 = v41 << 32;
    v52 = a4 & 0xFFFFFF00FFFFFFFFLL | (v50 << 32);
    if ((a3 & 0xFF00) == 0x700)
    {
      sub_23C3ACED8(v13, v18, v25, a3 & 0xFFFF0700 | v51 | v48, v52);
    }

    else
    {
      sub_23C3AAB0C(v13, v18 - v13, v25, v51 | a3 & 0xFFFFFF00 | v48, v52, v18 - v13);
    }

    return v25;
  }

  if (!v76 || v21 <= SLOBYTE(v74.__locale_))
  {
    goto LABEL_48;
  }

  v66 = v20;
  v67 = v18;
  v65 = a3;
  v69 = a4;
  locale = &v74;
  v24 = v74.__locale_;
  v23 = v75;
LABEL_24:
  v25 = *a2;
  v71.__locale_ = 0;
  v72 = 0;
  v73 = 0;
  v26 = v24 + v23;
  if (v76 >= 0)
  {
    v27 = &v74 + v76;
  }

  else
  {
    v27 = v26;
  }

  v28 = *locale;
  v29 = *locale;
  v30 = v21 - v28;
  if (v21 <= v28)
  {
    v59 = 0;
    v58 = v29 + v30;
    goto LABEL_80;
  }

  v31 = v27 - 1;
  do
  {
    while (1)
    {
      v32 = HIBYTE(v73);
      if ((SHIBYTE(v73) & 0x80000000) == 0)
      {
        break;
      }

      v33 = (v73 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v72 == v33)
      {
        if ((v73 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23C36FA14();
        }

LABEL_35:
        operator new();
      }

      v35 = v72++;
      v36 = v71.__locale_ + v35;
      *v36 = v29;
      v36[1] = 0;
      if (locale != v31)
      {
        goto LABEL_39;
      }

LABEL_29:
      v29 = *locale;
      v30 -= *locale;
      if (v30 <= 0)
      {
        goto LABEL_76;
      }
    }

    if (HIBYTE(v73) == 22)
    {
      goto LABEL_35;
    }

    HIBYTE(v73) = (HIBYTE(v73) + 1) & 0x7F;
    v34 = &v71 + v32;
    *v34 = v29;
    v34[1] = 0;
    if (locale == v31)
    {
      goto LABEL_29;
    }

LABEL_39:
    v37 = (locale + 1);
    v38 = (locale + 1);
    do
    {
      v39 = *v38++;
      v29 = v39;
      if (v39)
      {
        v40 = 1;
      }

      else
      {
        v40 = v37 == v31;
      }

      v37 = v38;
    }

    while (!v40);
    locale = (v38 - 1);
    v30 -= v29;
  }

  while (v30 > 0);
LABEL_76:
  v58 = v29 + v30;
  if (SHIBYTE(v73) < 0)
  {
    v62 = (v73 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v72 == v62)
    {
      if ((v73 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23C36FA14();
      }

LABEL_83:
      operator new();
    }

    v61 = v71.__locale_;
    v60 = v72++;
  }

  else
  {
    v59 = HIBYTE(v73);
    if (HIBYTE(v73) == 22)
    {
      goto LABEL_83;
    }

LABEL_80:
    v60 = v59;
    HIBYTE(v73) = (v59 + 1) & 0x7F;
    v61 = &v71;
  }

  v63 = &v61[v60];
  *v63 = v58;
  v63[1] = 0;
  v64 = (v66->__vftable[1].~facet_0)(v66);
  sub_23C3AC958(v25, v8, v13, v67, &v71, v64, v65, v69);
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v71.__locale_);
  }

  if (v76 < 0)
  {
    operator delete(v74.__locale_);
  }

  return v25;
}

void sub_23C3B1B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23C3B1BE0(uint64_t result)
{
  *result = off_284F01FD0;
  qword_27E1F3D10 = 0;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_23C3B1C44(uint64_t a1)
{
  *a1 = off_284F01FD0;
  qword_27E1F3D10 = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x23EECF470);
}

uint64_t (***sub_23C3B1CE0())()
{
  if (atomic_load_explicit(&qword_27E1F3F10, memory_order_acquire))
  {
    return &off_281A0B1E8;
  }

  if (__cxa_guard_acquire(&qword_27E1F3F10))
  {
    __cxa_atexit(sub_23C3B1BE0, &off_281A0B1E8, &dword_23C368000);
    __cxa_guard_release(&qword_27E1F3F10);
  }

  return &off_281A0B1E8;
}

void **sub_23C3B1D5C(void **__dst, const void *a2, size_t __len)
{
  LODWORD(v5) = *(__dst + 23);
  if ((v5 & 0x80000000) != 0)
  {
    v7 = __dst[2];
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__len > v8)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v7 & 0x7FFFFFFFFFFFFFFFLL) >= __len - v8)
      {
        v9 = *__dst;
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          operator new();
        }

LABEL_8:
        operator new();
      }

LABEL_17:
      sub_23C36FA14();
    }

    v5 = HIBYTE(v7);
    v6 = *__dst;
  }

  else
  {
    v6 = __dst;
    if (__len > 0x16)
    {
      if (__len - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  if (__len)
  {
    memmove(v6, a2, __len);
    LOBYTE(v5) = *(__dst + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    __dst[1] = __len;
  }

  else
  {
    *(__dst + 23) = __len & 0x7F;
  }

  *(v6 + __len) = 0;
  return __dst;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7918]();
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x2821F7E98](this, a2, a3, a4);
}

{
  return MEMORY[0x2821F7EB0](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x2821F7EA0]();
}

{
  return MEMORY[0x2821F7EA8]();
}

{
  return MEMORY[0x2821F7EB8]();
}

{
  return MEMORY[0x2821F7EC0]();
}

{
  return MEMORY[0x2821F7ED0]();
}

{
  return MEMORY[0x2821F7ED8]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}