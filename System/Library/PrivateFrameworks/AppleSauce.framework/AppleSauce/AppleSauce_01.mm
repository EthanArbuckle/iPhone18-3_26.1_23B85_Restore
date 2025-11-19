void sub_240F27D58(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_240F27D94(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_240F27D94(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_240F1B5A8();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_240F1F4BC(a1, v9);
    }

    v12 = 24 * a2;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = 24 * v6 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = 24 * v6 + *a1 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[2];
        *v17 = v18;
        v17 += 24;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = 24 * v6 + 24 * a2;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t sub_240F27F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0u;
  v9 = a1 + 32;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 57) = 0u;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  *__p = 0u;
  memset(v12, 0, sizeof(v12));
  sub_240F26004(a4, a2, a3, __p, a5);
  sub_240F261D0(v9, a2, a3, __p, (v5 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_240F27FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F28014(const std::locale *a1, const char *a2, int a3)
{
  v5 = sub_240F1CE88(a1);
  LODWORD(v5[3].__locale_) = a3;
  *(&v5[3].__locale_ + 4) = 0u;
  *(&v5[5].__locale_ + 4) = 0u;
  HIDWORD(v5[7].__locale_) = 0;
  strlen(a2);
  sub_240F280AC();
}

void sub_240F2808C(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    sub_240F1BA44(locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_240F282A0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = sub_240F28844(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3 && *v7 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v7 + 1;
    v11 = v7 + 1;
    do
    {
      v12 = v11;
      v11 = sub_240F28844(a1, v11, a3);
    }

    while (v11 != v12);
    if (v12 == v10)
    {
      operator new();
    }

    sub_240F1DB30();
  }

  return v7;
}

unsigned __int8 *sub_240F28410(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      sub_240F1E3EC();
    }

    if (a2 != a3)
    {
      do
      {
        v6 = v3;
        v7 = sub_240F2A2B0(a1, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        sub_240F1E470();
      }
    }

    if (v3 != a3)
    {
      sub_240F25008();
    }
  }

  return v3;
}

unsigned __int8 *sub_240F284C4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = sub_240F2A7D0(a1, a2, a3);
  if (result == a2)
  {
LABEL_7:
    sub_240F25008();
  }

  if (result != a3 && *result == 124)
  {
    v8 = *(a1 + 56);
    if (sub_240F2A7D0(a1, result + 1, a3) != result + 1)
    {
      sub_240F1DB30();
    }

    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *sub_240F28564(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_240F28410(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  if (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v8)
    {
      sub_240F28410(a1, v8, v10);
      sub_240F1DB30();
    }

    operator new();
  }

  return v8;
}

unsigned __int8 *sub_240F286D4(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_240F284C4(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  if (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v8)
    {
      sub_240F284C4(a1, v8, v10);
      sub_240F1DB30();
    }

    operator new();
  }

  return v8;
}

unsigned __int8 *sub_240F28844(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_240F288EC(a1, a2, a3);
  if (result == a2)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 28);
    v9 = sub_240F28AFC(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = (*(a1 + 28) + 1);

      return sub_240F28D44(a1, v9, a3);
    }
  }

  return result;
}

unsigned __int8 *sub_240F288EC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 > 0x5B)
    {
      if (v6 == 92)
      {
        if (a2 + 1 != a3)
        {
          v14 = a2[1];
          if (v14 == 66 || v14 == 98)
          {
            sub_240F1E4F4();
          }
        }
      }

      else if (v6 == 94)
      {
        sub_240F1E3EC();
      }
    }

    else
    {
      if (v6 == 36)
      {
        sub_240F1E470();
      }

      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            sub_240F1CE88(v16);
            v17 = 0u;
            v19 = 0;
            v18 = 0u;
            LODWORD(v17) = *(a1 + 24);
            sub_240F280AC(v16, a2 + 3, a3);
            v15 = *(a1 + 28);
            sub_240F1E588();
          }

          if (v11 == 61)
          {
            sub_240F1CE88(v16);
            v17 = 0u;
            v19 = 0;
            v18 = 0u;
            LODWORD(v17) = *(a1 + 24);
            sub_240F280AC(v16, a2 + 3, a3);
            v12 = *(a1 + 28);
            sub_240F1E588();
          }
        }
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_240F28AFC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      sub_240F2029C();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        v8 = (a1 + 36);
        ++*(a1 + 36);
        v9 = sub_240F282A0(a1, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      sub_240F20194(a1);
      v11 = *(a1 + 28);
      v8 = (a1 + 36);
      ++*(a1 + 36);
      v12 = sub_240F282A0(a1, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          sub_240F2021C(a1);
LABEL_25:
          --*v8;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    sub_240F1E628();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return sub_240F290F0(a1, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return sub_240F202F4(a1, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return sub_240F29048(a1, a2, a3);
}

unsigned __int8 *sub_240F28D44(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = *(a1 + 24) & 0x1F0;
  v6 = *a2;
  if (v6 > 0x3E)
  {
    if (v6 == 63)
    {
      v14 = a2 + 1;
      if (v5)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14 == a3;
      }

      if (!v15)
      {
        *v14;
      }
    }

    else
    {
      if (v6 != 123)
      {
        return a2;
      }

      v8 = a2 + 1;
      v9 = sub_240F2A214(a1, a2 + 1, a3, &v21);
      if (v9 == v8)
      {
        goto LABEL_47;
      }

      if (v9 == a3)
      {
        goto LABEL_48;
      }

      v10 = *v9;
      if (v10 != 44)
      {
        if (v10 == 125)
        {
          v11 = v9 + 1;
          if (!v5 && v11 != a3)
          {
            *v11;
          }

          goto LABEL_37;
        }

LABEL_47:
        sub_240F24BEC();
      }

      v16 = v9 + 1;
      if (v9 + 1 == a3)
      {
        goto LABEL_47;
      }

      if (*v16 == 125)
      {
        v17 = v9 + 2;
        if (!v5 && v17 != a3)
        {
          *v17;
        }

        goto LABEL_37;
      }

      v20 = -1;
      v19 = sub_240F2A214(a1, v16, a3, &v20);
      if (v19 == v16 || v19 == a3 || *v19 != 125)
      {
LABEL_48:
        sub_240F24C44();
      }

      if (v20 < v21)
      {
        goto LABEL_47;
      }

      if (!v5 && v19 + 1 != a3)
      {
        v13 = v19[1] == 63;
      }
    }

LABEL_37:
    sub_240F249BC();
  }

  if (v6 == 42)
  {
    v12 = a2 + 1;
    if (v5)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12 == a3;
    }

    if (!v13)
    {
      *v12;
    }

    goto LABEL_37;
  }

  if (v6 == 43)
  {
    v7 = a2 + 1;
    if (!v5 && v7 != a3)
    {
      *v7;
    }

    goto LABEL_37;
  }

  return a2;
}

unsigned __int8 *sub_240F29048(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      sub_240F2045C();
    }

    v7 = sub_240F2920C(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = sub_240F2056C(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = sub_240F292C4(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

_BYTE *sub_240F290F0(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      v3 = a2[1] == 94;
      sub_240F21714();
    }

    sub_240F22AE8();
  }

  return a2;
}

unsigned __int8 *sub_240F2920C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      sub_240F20928(a1);
    }

    if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      v6 = a2 + 1;
      if (v6 == a3)
      {
        goto LABEL_10;
      }

      do
      {
        v7 = *v6;
        if ((v7 - 48) > 9)
        {
          break;
        }

        if (v5 >= 0x19999999)
        {
          goto LABEL_13;
        }

        v5 = v7 + 10 * v5 - 48;
        ++v6;
      }

      while (v6 != a3);
      if (v5)
      {
LABEL_10:
        if (v5 <= *(a1 + 28))
        {
          sub_240F20AC0(a1);
        }
      }

LABEL_13:
      sub_240F20A68();
    }
  }

  return a2;
}

unsigned __int8 *sub_240F292C4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 > 0x71u)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!this)
        {
          goto LABEL_67;
        }

        v8 = this;
        v9 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_62;
        }

        if (!this)
        {
          goto LABEL_67;
        }

        v8 = this;
        v9 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_69;
        }

        v10 = a2[1];
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
        {
          goto LABEL_69;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_69;
        }

        v11 = *v4;
        v12 = -48;
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
        {
          v11 |= 0x20u;
          if ((v11 - 97) >= 6)
          {
            goto LABEL_69;
          }

          v12 = -87;
        }

        v6 = 16 * (v12 + v11);
LABEL_39:
        if (v4 + 1 == a3)
        {
          goto LABEL_69;
        }

        v13 = v4[1];
        v14 = -48;
        if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
        {
          v13 |= 0x20u;
          if ((v13 - 97) >= 6)
          {
            goto LABEL_69;
          }

          v14 = -87;
        }

        if (v4 + 2 != a3)
        {
          v15 = v4[2];
          v16 = -48;
          if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
          {
            goto LABEL_49;
          }

          v15 |= 0x20u;
          if ((v15 - 97) < 6)
          {
            v16 = -87;
LABEL_49:
            if (!this)
            {
              sub_240F20928(a1);
            }

            std::string::operator=(this, v16 + v15 + 16 * (v14 + v6 + v13));
            v4 += 3;
            return v4;
          }
        }

LABEL_69:
        sub_240F2045C();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_39;
        }

LABEL_62:
        if ((v5 & 0x80) == 0 && (*(*(*(a1 + 8) + 16) + 4 * v5) & 0x500) != 0)
        {
          goto LABEL_69;
        }

        v9 = *a2;
        if (this)
        {
          v8 = this;
          goto LABEL_66;
        }

LABEL_67:
        sub_240F20928(a1);
      }

      if (!this)
      {
        goto LABEL_67;
      }

      v8 = this;
      v9 = 11;
    }

LABEL_66:
    std::string::operator=(v8, v9);
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!this)
      {
        goto LABEL_67;
      }

      v8 = this;
      v9 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_62;
      }

      if (!this)
      {
        goto LABEL_67;
      }

      v8 = this;
      v9 = 10;
    }

    goto LABEL_66;
  }

  if (v5 == 48)
  {
    if (!this)
    {
      goto LABEL_67;
    }

    v8 = this;
    v9 = 0;
    goto LABEL_66;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_69;
    }

    goto LABEL_62;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_69;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_69;
  }

  if (!this)
  {
    sub_240F20928(a1);
  }

  std::string::operator=(this, v7 & 0x1F);
  v4 += 2;
  return v4;
}

unsigned __int8 *sub_240F295B4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  memset(&v25, 0, sizeof(v25));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v11 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v9 = a2[1];
  if (v9 != 46)
  {
    if (v9 == 58)
    {
      v10 = sub_240F29B24(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = sub_240F29968(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v18 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v19 = sub_240F29BB8(a1, a2 + 2, a3, &v25);
  v4 = v19;
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v13 = v19;
  if (!size)
  {
LABEL_10:
    if ((v11 | 0x40) == 0x40)
    {
      v12 = *v4;
      if (v12 == 92)
      {
        if (v11)
        {
          v13 = sub_240F29DB8(a1, v4 + 1, a3, &v25);
        }

        else
        {
          v13 = sub_240F29C80(a1, v4 + 1, a3, &v25, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v25, v12);
    v13 = v4 + 1;
  }

LABEL_16:
  if (v13 == a3 || (v14 = *v13, v14 == 93) || (v16 = v13 + 1, v13 + 1 == a3) || v14 != 45 || *v16 == 93)
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v25.__r_.__value_.__l.__size_)
      {
        if (v25.__r_.__value_.__l.__size_ != 1)
        {
          v15 = v25.__r_.__value_.__r.__words[0];
LABEL_40:
          sub_240F23968(v6, v15->__r_.__value_.__s.__data_[0], v15->__r_.__value_.__s.__data_[1]);
          goto LABEL_41;
        }

        v15 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_25;
      }
    }

    else if (*(&v25.__r_.__value_.__s + 23))
    {
      v15 = &v25;
      if (HIBYTE(v25.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_40;
      }

LABEL_25:
      sub_240F217A8(v6, v15->__r_.__value_.__s.__data_[0]);
    }

LABEL_41:
    v18 = 1;
    v4 = v13;
    goto LABEL_42;
  }

  memset(&v24, 0, sizeof(v24));
  v4 = v13 + 2;
  if (v13 + 2 != a3 && *v16 == 91 && *v4 == 46)
  {
    v17 = sub_240F29BB8(a1, v13 + 3, a3, &v24);
LABEL_55:
    v4 = v17;
    goto LABEL_56;
  }

  if ((v11 | 0x40) == 0x40)
  {
    LODWORD(v16) = *v16;
    if (v16 == 92)
    {
      if (v11)
      {
        v17 = sub_240F29DB8(a1, v13 + 2, a3, &v24);
      }

      else
      {
        v17 = sub_240F29C80(a1, v13 + 2, a3, &v24, v6);
      }

      goto LABEL_55;
    }
  }

  else
  {
    LOBYTE(v16) = *v16;
  }

  std::string::operator=(&v24, v16);
LABEL_56:
  v23 = v25;
  memset(&v25, 0, sizeof(v25));
  __p = v24;
  memset(&v24, 0, sizeof(v24));
  sub_240F23568(v6, &v23, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v18 = 1;
LABEL_42:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    return v4;
  }

  return v6;
}

void sub_240F29908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_240F29968(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_32:
    sub_240F22AE8();
  }

  sub_240F29F94(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    sub_240F23A44();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  sub_240F23CC4(a1, v11, &v11[v10], __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    sub_240F23DD4((a4 + 136), __p);
  }

  else
  {
    v13 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v15 = v19;
      }

      sub_240F23968(a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        sub_240F23A44();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      sub_240F217A8(a4, *v14);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v7 + 2;
}

void sub_240F29AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_240F29B24(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    sub_240F22AE8();
  }

  v9 = sub_240F2A140(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    sub_240F24144();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *sub_240F29BB8(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    sub_240F22AE8();
  }

  sub_240F29F94(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    sub_240F23A44();
  }

  return v6 + 2;
}

unsigned __int8 *sub_240F29C80(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_240F2045C();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        sub_240F217A8(a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        v9 = this;
        v10 = 8;
LABEL_19:
        std::string::operator=(v9, v10);
        return a2 + 1;
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return a2 + 1;
      }

      goto LABEL_25;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    sub_240F24270(a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return sub_240F292C4(a1, a2, a3, this);
}

unsigned __int8 *sub_240F29DB8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_43:
    sub_240F2045C();
  }

  v5 = *a2;
  if (v5 <= 0x65u)
  {
    if (v5 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v5 = 7;
          goto LABEL_31;
        }

        goto LABEL_40;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::string::operator=(v6, v5);
          return a2 + 1;
        }

        goto LABEL_40;
      }

      goto LABEL_32;
    }

    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (v5 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v5 = 12;
        goto LABEL_31;
      }

      goto LABEL_40;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v5 = 10;
        goto LABEL_31;
      }

      goto LABEL_40;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          v5 = 13;
          goto LABEL_31;
        }

        goto LABEL_40;
      case 't':
        if (this)
        {
          v6 = this;
          v5 = 9;
          goto LABEL_31;
        }

        goto LABEL_40;
      case 'v':
        if (this)
        {
          v6 = this;
          v5 = 11;
          goto LABEL_31;
        }

LABEL_40:
        sub_240F20928(a1);
    }
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_43;
  }

  v7 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3 && (*v9 & 0xF8) == 0x30)
  {
    v7 = *v9 + 8 * v7 - 48;
    v9 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v9 + 8 * v7 - 48;
      if ((*v9 & 0xF8) == 0x30)
      {
        v9 = a2 + 3;
        v7 = v8;
      }
    }
  }

  if (!this)
  {
    sub_240F20928(a1);
  }

  std::string::operator=(this, v7);
  return v9;
}

void sub_240F29F94(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_240F22838(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_240F2A10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240F2A140(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  sub_240F22838(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v7, v7 + v6);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  classname = std::__get_classname(v8, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return classname;
}

void sub_240F2A1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_240F2A214(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 != a3)
      {
        do
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            sub_240F24BEC();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          ++a2;
        }

        while (a2 != a3);
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_240F2A2B0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_240F2A34C(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = (*(a1 + 28) + 1);

  return sub_240F2A450(a1, v8, a3);
}

_BYTE *sub_240F2A34C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v6 = sub_240F2A614(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = v6 + 2;
      sub_240F20194(a1);
      v10 = *(a1 + 28);
      do
      {
        v11 = v9;
        v12 = sub_240F2A2B0(a1, v9, a3);
        v9 = v12;
      }

      while (v12 != v11);
      if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
      {
        sub_240F1E628();
      }

      v7 = v12 + 2;
      sub_240F2021C(a1);
    }

    else
    {
      v13 = sub_240F256E0(a1, v8);
      v14 = 2;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }
  }

  return v7;
}

unsigned __int8 *sub_240F2A450(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 42)
    {
      sub_240F249BC();
    }

    if (a2 + 1 != a3 && v4 == 92 && a2[1] == 123)
    {
      v7 = a2 + 2;
      v13 = 0;
      v8 = sub_240F2A214(a1, a2 + 2, a3, &v13);
      if (v8 == v7)
      {
        goto LABEL_24;
      }

      if (v8 != a3)
      {
        v9 = v8 + 1;
        v10 = *v8;
        if (v10 == 44)
        {
          v12 = -1;
          v11 = sub_240F2A214(a1, v9, a3, &v12);
          if (v11 != a3 && v11 + 1 != a3 && *v11 == 92 && v11[1] == 125)
          {
            if (v12 == -1 || v12 >= v13)
            {
              sub_240F249BC();
            }

LABEL_24:
            sub_240F24BEC();
          }
        }

        else if (v9 != a3 && v10 == 92 && *v9 == 125)
        {
          sub_240F249BC();
        }
      }

      sub_240F24C44();
    }
  }

  return a2;
}

_BYTE *sub_240F2A614(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if ((a2 + 1 != a3 || v6 != 36) && ((v6 - 46) > 0x2E || ((1 << (v6 - 46)) & 0x600000000001) == 0))
    {
      sub_240F20928(a1);
    }

    v8 = sub_240F2A758(a1, a2, a3);
    v9 = v8;
    if (v8 == a2)
    {
      if (*v8 == 46)
      {
        operator new();
      }

      goto LABEL_12;
    }

    return v9;
  }

  v9 = sub_240F2A758(a1, a2, a3);
  if (v9 != a2)
  {
    return v9;
  }

LABEL_12:

  return sub_240F290F0(a1, a2, a3);
}

_BYTE *sub_240F2A758(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v3 = a2[1];
    if ((v3 - 36) <= 0x3A && ((1 << (v3 - 36)) & 0x580000000000441) != 0)
    {
      sub_240F20928(a1);
    }
  }

  return a2;
}

unsigned __int8 *sub_240F2A7D0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_240F2A830(a1, a2, a3);
  if (v6 == a2)
  {
    sub_240F25008();
  }

  do
  {
    v7 = v6;
    v6 = sub_240F2A830(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *sub_240F2A830(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_240F2A974(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        sub_240F1E470();
      case '(':
        sub_240F20194(a1);
        v11 = *(a1 + 28);
        ++*(a1 + 36);
        v12 = sub_240F284C4(a1, v9 + 1, a3);
        if (v12 == a3 || (v13 = v12, *v12 != 41))
        {
          sub_240F1E628();
        }

        sub_240F2021C(a1);
        --*(a1 + 36);
        v9 = v13 + 1;
        break;
      case '^':
        sub_240F1E3EC();
    }
  }

  if (v9 == a2)
  {
    return v9;
  }

  v14 = (*(a1 + 28) + 1);

  return sub_240F28D44(a1, v9, a3);
}

unsigned __int8 *sub_240F2A974(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_240F259D4(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_240F2AA68(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return sub_240F290F0(a1, a2, a3);
}

unsigned __int8 *sub_240F2AA68(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a2 + 1;
  if (v3 + 1 == a3 || *v3 != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    sub_240F20928(a1);
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = sub_240F256E0(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    v3 += v9;
    return v3;
  }

  return sub_240F29DB8(a1, v4, a3, 0);
}

BOOL sub_240F2AB40(const void **a1, void *__s1)
{
  v2 = *(a1 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = a1[1];
  }

  v4 = *(__s1 + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (v2 >= v4)
    {
      goto LABEL_9;
    }

    return 0;
  }

  v4 = __s1[1];
  if (v2 < v4)
  {
    return 0;
  }

  __s1 = *__s1;
LABEL_9:
  if (v3 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  return memcmp(__s1, v6, v4) == 0;
}

void sub_240F2ABB8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85[2] = *MEMORY[0x277D85DE8];
  *(v85 + 7) = 0;
  v85[0] = 0;
  *(v84 + 7) = 0;
  v84[0] = 0;
  v80 = 1;
  LOBYTE(v81) = 0;
  v3 = *(a1 + 23);
  v4 = *a1;
  v5 = *(a1 + 8);
  if ((v3 & 0x80u) == 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if ((v3 & 0x80u) == 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = &v7[v6];
  if (v6 >= 2)
  {
    v9 = v7;
    do
    {
      v10 = memchr(v9, 32, v6 - 1);
      if (!v10)
      {
        break;
      }

      if (*v10 == 8224)
      {
        goto LABEL_13;
      }

      v9 = v10 + 1;
      v6 = v8 - v9;
    }

    while (v8 - v9 > 1);
  }

  v10 = v8;
LABEL_13:
  v11 = v10 - v7;
  if (v10 == v8)
  {
    v11 = -1;
  }

  if ((v3 & 0x80) != 0)
  {
    if (v11 == -1)
    {
      v12 = v4 + v5;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v4 = a1;
  if (v11 != -1)
  {
LABEL_19:
    v12 = v11 + v4;
    goto LABEL_20;
  }

  v12 = a1 + v3;
LABEL_20:
  if ((atomic_load_explicit(&qword_27E51D548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E51D548))
  {
    sub_240F28014(&unk_27E51D508, "(-{1,2})?(.*?)([,= ]|$)", 0);
  }

  if (*(a1 + 23) >= 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = *a1;
  }

  sub_240F27F10(&v74, v13, v12, &unk_27E51D508, 32);
  v53 = 0;
  __p = 0;
  v52 = 0;
  v14 = 0;
  v15 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  *&v64[32] = 0u;
  memset(v65, 0, 25);
  memset(v64, 0, 28);
  while (!sub_240F25D00(&v74, v64))
  {
    v16 = 0xAAAAAAAAAAAAAAABLL * ((v76 - v75) >> 3);
    v17 = (v75 + 40);
    if (v16 <= 1)
    {
      v17 = &v79;
    }

    if (*v17 == 1)
    {
      v18 = (v75 + 24);
      if (v16 <= 1)
      {
        v18 = &v77;
      }

      v19 = *v18;
      v20 = v75 + 32;
      if (v16 <= 1)
      {
        v20 = &v78;
      }

      v21 = *v20 - v19;
      v22 = (v75 + 64);
      if (v16 <= 2)
      {
        v22 = &v79;
      }

      if (v21 == 1)
      {
        if (*v22 == 1)
        {
          v23 = v16 > 2;
          if (v16 <= 2)
          {
            v24 = &v77;
          }

          else
          {
            v24 = (v75 + 48);
          }

          v25 = v75 + 56;
          if (!v23)
          {
            v25 = &v78;
          }

          sub_240F22838(&__dst, *v24, *v25, *v25 - *v24);
        }

        else
        {
          memset(&__dst, 0, sizeof(__dst));
        }

        v34 = std::string::insert(&__dst, 0, "-");
        v35 = v34->__r_.__value_.__r.__words[0];
        v83[0] = v34->__r_.__value_.__l.__size_;
        *(v83 + 7) = *(&v34->__r_.__value_.__r.__words[1] + 7);
        v36 = HIBYTE(v34->__r_.__value_.__r.__words[2]);
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        if (v53 < 0)
        {
          operator delete(__p);
        }

        v85[0] = v83[0];
        *(v85 + 7) = *(v83 + 7);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v53 = v36;
        __p = v35;
      }

      else
      {
        if (*v22 == 1)
        {
          v31 = v16 > 2;
          if (v16 <= 2)
          {
            v32 = &v77;
          }

          else
          {
            v32 = (v75 + 48);
          }

          v33 = v75 + 56;
          if (!v31)
          {
            v33 = &v78;
          }

          sub_240F22838(&__dst, *v32, *v33, *v33 - *v32);
        }

        else
        {
          memset(&__dst, 0, sizeof(__dst));
        }

        v37 = std::string::insert(&__dst, 0, "--");
        v38 = v37->__r_.__value_.__r.__words[0];
        v83[0] = v37->__r_.__value_.__l.__size_;
        *(v83 + 7) = *(&v37->__r_.__value_.__r.__words[1] + 7);
        v39 = HIBYTE(v37->__r_.__value_.__r.__words[2]);
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        if (v14 < 0)
        {
          operator delete(v52);
        }

        v84[0] = v83[0];
        *(v84 + 7) = *(v83 + 7);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v52 = v38;
        v14 = v39;
      }
    }

    else
    {
      v26 = (v75 + 64);
      if (v16 <= 2)
      {
        v26 = &v79;
      }

      if (*v26 == 1)
      {
        v27 = v16 > 2;
        if (v16 <= 2)
        {
          v28 = &v77;
        }

        else
        {
          v28 = (v75 + 48);
        }

        v29 = *v28;
        v30 = v75 + 56;
        if (!v27)
        {
          v30 = &v78;
        }

        if (*v30 - v29 > 0)
        {
          v15 = 1;
        }
      }
    }

    v40 = 0xAAAAAAAAAAAAAAABLL * ((v76 - v75) >> 3);
    v41 = (v75 + 88);
    if (v40 <= 3)
    {
      v41 = &v79;
    }

    if (*v41 != 1)
    {
      break;
    }

    v42 = v40 > 3;
    if (v40 <= 3)
    {
      v43 = &v77;
    }

    else
    {
      v43 = (v75 + 72);
    }

    v44 = *v43;
    v45 = v75 + 80;
    if (!v42)
    {
      v45 = &v78;
    }

    if (*v45 == v44)
    {
      break;
    }

    sub_240F25B1C(&v74);
  }

  if (*&v64[32])
  {
    *&v64[40] = *&v64[32];
    operator delete(*&v64[32]);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v15)
  {
    memset(v65, 0, 17);
    *&v65[24] = 0;
    v66 = 0;
    LOBYTE(v67) = 0;
    v68 = 0;
    v69 = 0;
    memset(v64, 0, 41);
    if (*(a1 + 23) >= 0)
    {
      v47 = *(a1 + 23);
    }

    else
    {
      v46 = *a1;
      v47 = *(a1 + 8);
    }

    sub_240F28014(&__dst, "\\[default: (.*)\\]", 1);
  }

  v60 = __p;
  *v61 = v85[0];
  *&v61[7] = *(v85 + 7);
  v62 = v53;
  v57 = v52;
  *v58 = v84[0];
  *&v58[7] = *(v84 + 7);
  v59 = v14;
  v54 = v80;
  if (v80 <= 2)
  {
    if (v80 != 1)
    {
      v48 = a2;
      if (v80 == 2)
      {
        v55[0] = v81;
      }

      goto LABEL_102;
    }

    LOBYTE(v55[0]) = v81;
LABEL_101:
    v48 = a2;
    goto LABEL_102;
  }

  if (v80 == 4)
  {
    *v55 = v81;
    v56 = v82;
    v82 = 0;
    v81 = 0uLL;
    goto LABEL_101;
  }

  v48 = a2;
  if (v80 == 3)
  {
    *v55 = v81;
    v56 = v82;
    v82 = 0;
    v81 = 0uLL;
  }

LABEL_102:
  sub_240F2D61C(v48, &v60, &v57, 0, &v54);
  if (v54 == 4)
  {
    v74 = v55;
    sub_240F365B8(&v74);
  }

  else if (v54 == 3 && SHIBYTE(v56) < 0)
  {
    operator delete(v55[0]);
  }

  if (v59 < 0)
  {
    operator delete(v57);
  }

  if (v62 < 0)
  {
    operator delete(v60);
  }

  if (v80 == 4)
  {
    v74 = &v81;
    sub_240F365B8(&v74);
  }

  else if (v80 == 3 && SHIBYTE(v82) < 0)
  {
    operator delete(v81);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void sub_240F2B414(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27E51D548);
  sub_240F2C9A0(v1 - 184);
  _Unwind_Resume(a1);
}

uint64_t sub_240F2B524(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_240F1B5A8();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_240F2D344(a1, v6);
  }

  v13 = 0;
  v14 = 120 * v2;
  sub_240F2B650(120 * v2, a2);
  v15 = 120 * v2 + 120;
  v7 = a1[1];
  v8 = 120 * v2 + *a1 - v7;
  sub_240F2D39C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_240F2D59C(&v13);
  return v12;
}

void sub_240F2B63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_240F2D59C(va);
  _Unwind_Resume(a1);
}

__n128 sub_240F2B650(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2852CC500;
  v2 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3 > 2)
  {
    if (v3 == 4)
    {
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
    }

    else if (v3 == 3)
    {
      v4 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v4;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      *(a2 + 40) = 0;
    }
  }

  else if (v3 == 1)
  {
    *(a1 + 40) = *(a2 + 40);
  }

  else if (v3 == 2)
  {
    *(a1 + 40) = *(a2 + 40);
  }

  *a1 = &unk_2852CC2E8;
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v5;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  result = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = result;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0;
  *(a1 + 112) = *(a2 + 112);
  return result;
}

uint64_t sub_240F2B760@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = a2();
  if (result)
  {
    v7 = a1;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    result = sub_240F1B4F8(a3, &v7, &v8, 1uLL);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240F2B7F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a2) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_240F1B5A8();
    }

    v7 = v3 - *a2;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_240F1B5C0(a2, v9);
    }

    v10 = (8 * v6);
    *v10 = a1;
    v5 = 8 * v6 + 8;
    v11 = *(a2 + 8) - *a2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a2, v11);
    v13 = *a2;
    *a2 = v12;
    *(a2 + 8) = v5;
    *(a2 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = a1;
    v5 = (v4 + 1);
  }

  *(a2 + 8) = v5;
}

BOOL sub_240F2B8BC(_DWORD *a1, uint64_t a2, uint64_t **a3)
{
  (*(*a1 + 64))(&v44);
  v6 = v45;
  if (!v45)
  {
    goto LABEL_63;
  }

  sub_240F2CA04(&v41, (*a2 + 16 * v44 + 16), *(a2 + 8), *a2 + 16 * v44);
  v8 = v7;
  for (i = *(a2 + 8); i != v8; i -= 16)
  {
    v10 = *(i - 8);
    if (v10)
    {
      sub_240F1BA44(v10);
    }
  }

  *(a2 + 8) = v8;
  v11 = *a3;
  v12 = a3[1];
  if (*a3 != v12)
  {
    while (1)
    {
      v13 = (*(**v11 + 24))();
      v14 = (*(*a1 + 24))(a1);
      v15 = *(v13 + 23);
      if (v15 >= 0)
      {
        v16 = *(v13 + 23);
      }

      else
      {
        v16 = *(v13 + 8);
      }

      v17 = *(v14 + 23);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v14 + 8);
      }

      if (v16 == v17)
      {
        v19 = v15 >= 0 ? v13 : *v13;
        v20 = v18 >= 0 ? v14 : *v14;
        if (!memcmp(v19, v20, v16))
        {
          break;
        }
      }

      v11 += 2;
      if (v11 == v12)
      {
        v11 = v12;
        break;
      }
    }
  }

  v21 = a1[8];
  if (v21 == 4)
  {
    *v38 = 0;
    v39 = 0;
    v40 = 0;
    v24 = v45;
    v25 = (v45 + 32);
    if (*(v45 + 32) == 4)
    {
      sub_240F1ABDC(v25, 4u);
      if (v38 != (v24 + 40))
      {
        sub_240F2CAF8(v38, *(v24 + 40), *(v24 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(v24 + 48) - *(v24 + 40)) >> 3));
      }
    }

    else if (*(v45 + 32) == 3)
    {
      sub_240F1ABDC(v25, 3u);
      sub_240F23DD4(v38, (v24 + 40));
    }

    if (v11 == a3[1])
    {
      sub_240F2C7A4(a3, &v45);
      v28 = v45;
      v37 = 0;
      v36 = 0uLL;
      sub_240F36530(&v36, *v38, v39, 0xAAAAAAAAAAAAAAABLL * ((v39 - *v38) >> 3));
      LODWORD(v41) = 4;
      *__p = v36;
      v43 = v37;
      v36 = 0uLL;
      v37 = 0;
      sub_240F2C8B8(v28, &v41);
      if (v41 == 4)
      {
        v46 = __p;
        sub_240F365B8(&v46);
      }

      else if (v41 == 3 && SHIBYTE(v43) < 0)
      {
        operator delete(__p[0]);
      }

      v30 = &v36;
    }

    else
    {
      v26 = *v11;
      if (*(*v11 + 32) == 4)
      {
        sub_240F1ABDC((*v11 + 32), 4u);
        sub_240F2CEB4(v38, *v38, *(v26 + 40), *(v26 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(v26 + 48) - *(v26 + 40)) >> 3));
        v27 = *v11;
        v35 = 0;
        v34 = 0uLL;
        sub_240F36530(&v34, *v38, v39, 0xAAAAAAAAAAAAAAABLL * ((v39 - *v38) >> 3));
        LODWORD(v41) = 4;
        *__p = v34;
        v43 = v35;
        v34 = 0uLL;
        v35 = 0;
        sub_240F2C8B8(v27, &v41);
        if (v41 == 4)
        {
          v46 = __p;
          sub_240F365B8(&v46);
        }

        else if (v41 == 3 && SHIBYTE(v43) < 0)
        {
          operator delete(__p[0]);
        }

        v30 = &v34;
      }

      else
      {
        v33 = 0;
        v32 = 0uLL;
        sub_240F36530(&v32, *v38, v39, 0xAAAAAAAAAAAAAAABLL * ((v39 - *v38) >> 3));
        LODWORD(v41) = 4;
        *__p = v32;
        v43 = v33;
        v32 = 0uLL;
        v33 = 0;
        sub_240F2C8B8(v26, &v41);
        if (v41 == 4)
        {
          v46 = __p;
          sub_240F365B8(&v46);
        }

        else if (v41 == 3 && SHIBYTE(v43) < 0)
        {
          operator delete(__p[0]);
        }

        v30 = &v32;
      }
    }

    v46 = v30;
    sub_240F365B8(&v46);
    v41 = v38;
    v29 = &v41;
    goto LABEL_62;
  }

  if (v21 != 2)
  {
    sub_240F2C7A4(a3, &v45);
    goto LABEL_63;
  }

  if (v11 == a3[1])
  {
    sub_240F2C7A4(a3, &v45);
    v22 = v45;
  }

  else
  {
    v22 = *v11;
    if (*(*v11 + 32) == 2)
    {
      v23 = sub_240F18D04(*v11 + 32) + 1;
      v22 = *v11;
      LODWORD(v41) = 2;
      goto LABEL_34;
    }
  }

  LODWORD(v41) = 2;
  v23 = 1;
LABEL_34:
  __p[0] = v23;
  sub_240F2C8B8(v22, &v41);
  if (v41 == 4)
  {
    *v38 = __p;
    v29 = v38;
LABEL_62:
    sub_240F365B8(v29);
    goto LABEL_63;
  }

  if (v41 == 3 && SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_63:
  if (*(&v45 + 1))
  {
    sub_240F1BA44(*(&v45 + 1));
  }

  return v6 != 0;
}

void sub_240F2BDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void **a23)
{
  a23 = &a20;
  sub_240F365B8(&a23);
  v25 = *(v23 - 80);
  if (v25)
  {
    sub_240F1BA44(v25);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240F2BE2C(uint64_t a1)
{
  v2 = sub_240F2C1A4(a1);
  v3 = ((v2 << 6) + (v2 >> 2) + sub_240F2C2F8(&v6, a1 + 64) + 2654435769u) ^ v2;
  v4 = (sub_240F2C2F8(&v7, a1 + 88) + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  return (*(a1 + 112) + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
}

uint64_t sub_240F2BEBC(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = &unk_2852CC500;
  v2 = *(a1 + 32);
  if (v2 == 4)
  {
    v4 = (a1 + 40);
    sub_240F365B8(&v4);
  }

  else if (v2 == 3 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return MEMORY[0x245CD48A0](a1, 0x10B3C406F8632FBLL);
}

void sub_240F2BF80(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a3;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v8 = (a1 + 8);
    do
    {
      v9 = *v5;
      if (*v5)
      {
        v10 = **v9;
        v11 = __dynamic_cast(v9, &unk_2852CC938, &unk_2852CCA20, 0);
        if (v11)
        {
          v12 = *(v5 + 8);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v13 = (*(*v11 + 24))(v11);
          v14 = *(a1 + 31);
          if (v14 >= 0)
          {
            v15 = *(a1 + 31);
          }

          else
          {
            v15 = *(a1 + 16);
          }

          v16 = *(v13 + 23);
          v17 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v16 = *(v13 + 8);
          }

          if (v15 == v16)
          {
            if (v14 >= 0)
            {
              v18 = v8;
            }

            else
            {
              v18 = *v8;
            }

            if (v17 >= 0)
            {
              v19 = v13;
            }

            else
            {
              v19 = *v13;
            }

            v20 = memcmp(v18, v19, v15);
            if (v12)
            {
              sub_240F1BA44(v12);
            }

            if (!v20)
            {
              goto LABEL_27;
            }
          }

          else if (v12)
          {
            sub_240F1BA44(v12);
          }
        }
      }

      v5 += 16;
    }

    while (v5 != v6);
    v5 = v6;
LABEL_27:
    v6 = a2[1];
    v4 = a3;
  }

  if (v5 == v6)
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  else
  {
    v21 = (v5 - *a2) >> 4;
    v22 = *v5;
    if (*v5 && (v23 = **v22, (v22 = __dynamic_cast(v22, &unk_2852CC938, &unk_2852CCA20, 0)) != 0))
    {
      v24 = *(v5 + 8);
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v24 = 0;
    }

    *v4 = v21;
    v4[1] = v22;
    v4[2] = v24;
  }
}

void sub_240F2C18C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_240F1BA44(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240F2C1A4(uint64_t a1)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v2 = *(*(*a1 - 8) + 8);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v3 = (v2 & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  v6 = sub_240F2C2F8(&v14, a1 + 8);
  v7 = *(a1 + 32);
  i = 0xD7C06285B9DE677ALL;
  if (v7 > 2)
  {
    if (v7 == 4)
    {
      v11 = a1 + 40;
      v9 = *(a1 + 40);
      v10 = *(v11 + 8);
      for (i = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3); v9 != v10; v9 += 24)
      {
        i ^= (i << 6) + 2654435769u + (i >> 2) + sub_240F2C2F8(&v16, v9);
      }
    }

    else if (v7 == 3)
    {
      i = sub_240F2C2F8(&v15, a1 + 40);
    }
  }

  else if (v7 == 1)
  {
    i = *(a1 + 40);
  }

  else if (v7 == 2)
  {
    i = *(a1 + 40);
  }

  v12 = ((v2 << 6) + 2654435769u + (v2 >> 2) + v6) ^ v2;
  return ((v12 << 6) + 2654435769u + (v12 >> 2) + i) ^ v12;
}

unint64_t sub_240F2C2F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_240F2C338(&v5, a2, v3);
}

unint64_t sub_240F2C338(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_240F2C6E4(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_240F2C638(a2, a3);
  }

  else
  {
    return sub_240F2C540(a2, a3);
  }
}

unint64_t sub_240F2C540(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_240F2C638(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_240F2C6E4(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void **sub_240F2C7A4(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_240F1B5A8();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_240F1B8F8(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_240F2CA70(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

__n128 sub_240F2C8B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 == 4)
  {
    v7 = (a1 + 40);
    sub_240F365B8(&v7);
  }

  else if (v4 == 3 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v6 = *a2;
  *(a1 + 32) = *a2;
  if (v6 > 2)
  {
    if (v6 == 4)
    {
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      result = *(a2 + 8);
      *(a1 + 40) = result;
      *(a1 + 56) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
    }

    else if (v6 == 3)
    {
      result = *(a2 + 8);
      *(a1 + 56) = *(a2 + 24);
      *(a1 + 40) = result;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
    }
  }

  else if (v6 == 1)
  {
    *(a1 + 40) = *(a2 + 8);
  }

  else if (v6 == 2)
  {
    *(a1 + 40) = *(a2 + 8);
  }

  return result;
}

uint64_t sub_240F2C9A0(uint64_t a1)
{
  if (*a1 == 4)
  {
    v3 = (a1 + 8);
    sub_240F365B8(&v3);
  }

  else if (*a1 == 3 && *(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

__int128 *sub_240F2CA04(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
        sub_240F1BA44(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **sub_240F2CA70(void **a1)
{
  sub_240F2CAA4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_240F2CAA4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_240F1BA44(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void sub_240F2CAF8(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_240F2CC98(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_240F2CCD8(a1, v10);
    }

    sub_240F1B5A8();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_240F2CD24(a1, (v6 + v12), a3, v11);
  }
}

void sub_240F2CC98(uint64_t a1)
{
  if (*a1)
  {
    sub_240F2CE64(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_240F2CCD8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_240F24058(a1, a2);
  }

  sub_240F1B5A8();
}

char *sub_240F2CD24(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_240F23FB4(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_240F2CDE4(v9);
  return v4;
}

uint64_t sub_240F2CDE4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_240F2CE1C(a1);
  }

  return a1;
}

void sub_240F2CE1C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_240F2CE64(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

std::string *sub_240F2CEB4(void *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v19 = a5;
        sub_240F2D100(a1, a2, a1[1], a2 + 24 * a5);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          std::string::operator=(v21++, v7++);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = sub_240F2D204(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          sub_240F2D100(a1, v5, v10, &v5[a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18++, v7++);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_240F1B5A8();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v33 = a1;
      if (v15)
      {
        sub_240F24058(a1, v15);
      }

      v30 = 0;
      v31 = 8 * (v13 >> 3);
      v32 = v31;
      sub_240F2D170(&v30, a3, a5);
      v22 = v31;
      memcpy(v32, v5, a1[1] - v5);
      v23 = *a1;
      v24 = v31;
      *&v32 = v32 + a1[1] - v5;
      a1[1] = v5;
      v25 = v5 - v23;
      v26 = (v24 - (v5 - v23));
      memcpy(v26, v23, v25);
      v27 = *a1;
      *a1 = v26;
      v28 = a1[2];
      *(a1 + 1) = v32;
      *&v32 = v27;
      *(&v32 + 1) = v28;
      v30 = v27;
      v31 = v27;
      sub_240F240B0(&v30);
      return v22;
    }
  }

  return v5;
}

uint64_t sub_240F2D100(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      v8 += 24;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_240F2D2C4(&v12, a2, v7, v6);
}

void *sub_240F2D170(void *result, __int128 *a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 24 * a3;
    v7 = 24 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        result = sub_240F23FB4(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        *(v4 + 16) = *(a2 + 2);
        *v4 = v8;
      }

      v4 += 24;
      a2 = (a2 + 24);
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

char *sub_240F2D204(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_240F23FB4(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_240F2CDE4(v9);
  return v4;
}

uint64_t sub_240F2D2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

void sub_240F2D344(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  sub_240F1AEC4();
}

uint64_t sub_240F2D39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_240F2B650(a4, v7);
      v7 += 120;
      a4 = v12 + 120;
      v12 += 120;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_240F2D464(a1, v5);
      v5 += 120;
    }
  }

  return sub_240F2D510(v9);
}

void sub_240F2D464(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  if (*(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  *a2 = &unk_2852CC500;
  v3 = *(a2 + 32);
  if (v3 == 4)
  {
    v4 = (a2 + 40);
    sub_240F365B8(&v4);
  }

  else if (v3 == 3 && *(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

uint64_t sub_240F2D510(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_240F2D548(a1);
  }

  return a1;
}

void sub_240F2D548(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 120;
      sub_240F2D464(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_240F2D59C(uint64_t a1)
{
  sub_240F2D5D4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_240F2D5D4(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 120;
    sub_240F2D464(v5, v4 - 120);
  }
}

uint64_t sub_240F2D61C(uint64_t a1, __int128 *a2, __int128 *a3, int a4, uint64_t a5)
{
  v10 = *(a3 + 23);
  if (v10 < 0)
  {
    v10 = *(a3 + 1);
  }

  if (v10)
  {
    v11 = a3;
  }

  else
  {
    v11 = a2;
  }

  if (*(v11 + 23) < 0)
  {
    sub_240F23FB4(__dst, *v11, *(v11 + 1));
  }

  else
  {
    *__dst = *v11;
    v23 = *(v11 + 2);
  }

  v12 = *a5;
  v19 = v12;
  if (v12 > 2)
  {
    if (v12 == 4)
    {
      *__p = *(a5 + 8);
      v21 = *(a5 + 24);
    }

    else
    {
      if (v12 != 3)
      {
        goto LABEL_19;
      }

      *__p = *(a5 + 8);
      v21 = *(a5 + 24);
    }

    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 8) = 0;
  }

  else if (v12 == 1)
  {
    LOBYTE(__p[0]) = *(a5 + 8);
  }

  else if (v12 == 2)
  {
    __p[0] = *(a5 + 8);
  }

LABEL_19:
  sub_240F2D868(a1, __dst, &v19);
  if (v19 == 4)
  {
    v16 = __p;
    sub_240F365B8(&v16);
  }

  else if (v19 == 3 && SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst[0]);
  }

  *a1 = &unk_2852CC2E8;
  v13 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v13;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v14 = *a3;
  *(a1 + 104) = *(a3 + 2);
  *(a1 + 88) = v14;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *(a1 + 112) = a4;
  if (a4)
  {
    if (*a5 == 1)
    {
      sub_240F1ABDC(a5, 1u);
      if ((*(a5 + 8) & 1) == 0)
      {
        LODWORD(v16) = 0;
        sub_240F2C8B8(a1, &v16);
        if (v16 == 4)
        {
          v24 = &v17;
          sub_240F365B8(&v24);
        }

        else if (v16 == 3 && v18 < 0)
        {
          operator delete(v17);
        }
      }
    }
  }

  return a1;
}

void sub_240F2D834(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  sub_240F2D924(v1);
  _Unwind_Resume(a1);
}

__n128 sub_240F2D868(uint64_t a1, __n128 *a2, uint64_t a3)
{
  *a1 = &unk_2852CC500;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  v4 = *a3;
  *(a1 + 32) = *a3;
  if (v4 > 2)
  {
    if (v4 == 4)
    {
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      result = *(a3 + 8);
      *(a1 + 40) = result;
      *(a1 + 56) = *(a3 + 24);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
    }

    else if (v4 == 3)
    {
      result = *(a3 + 8);
      *(a1 + 56) = *(a3 + 24);
      *(a1 + 40) = result;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 8) = 0;
    }
  }

  else if (v4 == 1)
  {
    *(a1 + 40) = *(a3 + 8);
  }

  else if (v4 == 2)
  {
    *(a1 + 40) = *(a3 + 8);
  }

  return result;
}

uint64_t sub_240F2D924(uint64_t a1)
{
  *a1 = &unk_2852CC500;
  v2 = *(a1 + 32);
  if (v2 == 4)
  {
    v4 = (a1 + 40);
    sub_240F365B8(&v4);
  }

  else if (v2 == 3 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_240F2D9B4(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = &unk_2852CC500;
  v2 = *(a1 + 32);
  if (v2 == 4)
  {
    v4 = (a1 + 40);
    sub_240F365B8(&v4);
  }

  else if (v2 == 3 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_240F2DA64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_27E51D590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E51D590))
  {
    sub_240F28014(&unk_27E51D550, "(?:\\s*)([\\[\\]\\(\\)\\|]|\\.\\.\\.)", 0);
  }

  if ((atomic_load_explicit(&qword_27E51D5D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E51D5D8))
  {
    sub_240F28014(&unk_27E51D598, "(?:\\s*)(\\S*<.*?>|[^<>\\s]+)", 0);
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  sub_240F27F10(v21, v5, v5 + v4, &unk_27E51D550, 0);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  *__p = 0u;
  memset(v12, 0, sizeof(v12));
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  sub_240F2E1A4(v21, v9, &v24);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  v7 = 0uLL;
  v8 = 0;
  sub_240F36530(&v7, v24, v25, 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3));
  *a2 = v7;
  v6 = v8;
  v8 = 0;
  v7 = 0uLL;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v27 = &v7;
  sub_240F365B8(&v27);
  v27 = &v24;
  sub_240F365B8(&v27);
}

void sub_240F2DCD4(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  sub_240F2E450(a1, a2, &v36);
  v6 = sub_240F2F0FC(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (v6[1] != 1)
    {
LABEL_8:
      *a3 = v36;
      *(a3 + 16) = v37;
      v37 = 0;
      v36 = 0uLL;
      goto LABEL_43;
    }

    v6 = *v6;
  }

  else if (v7 != 1)
  {
    goto LABEL_8;
  }

  if (*v6 != 124)
  {
    goto LABEL_8;
  }

  __src = 0;
  i = 0;
  v35 = 0;
  sub_240F2F174(&v36, &v42);
  v8 = __src;
  v9 = i - __src;
  v10 = (i - __src) >> 4;
  v11 = v10 + 1;
  if ((v10 + 1) >> 60)
  {
    sub_240F1B5A8();
  }

  v12 = v35 - __src;
  if ((v35 - __src) >> 3 > v11)
  {
    v11 = v12 >> 3;
  }

  v13 = v12 >= 0x7FFFFFFFFFFFFFF0;
  v14 = 0xFFFFFFFFFFFFFFFLL;
  if (!v13)
  {
    v14 = v11;
  }

  p_src = &__src;
  if (v14)
  {
    sub_240F1B8F8(&__src, v14);
  }

  *(16 * v10) = v42;
  memcpy(0, v8, v9);
  v15 = __src;
  v16 = v35;
  __src = 0;
  i = (16 * v10 + 16);
  v35 = 0;
  v39 = v15;
  v40 = v16;
  *&v38 = v15;
  *(&v38 + 1) = v15;
  sub_240F2CA70(&v38);
  for (i = (16 * v10 + 16); ; i = v20)
  {
    v17 = sub_240F2F0FC(a1);
    v18 = *(v17 + 23);
    if (v18 < 0)
    {
      if (v17[1] != 1)
      {
        break;
      }

      v17 = *v17;
    }

    else if (v18 != 1)
    {
      break;
    }

    if (*v17 != 124)
    {
      break;
    }

    sub_240F2F1D4(a1, &__p);
    if (v32 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    sub_240F2E450(a1, a2, &v38);
    sub_240F1BC98(&v36);
    v36 = v38;
    v37 = v39;
    v39 = 0;
    v38 = 0uLL;
    v42.n128_u64[0] = &v38;
    sub_240F1BAB0(&v42);
    sub_240F2F174(&v36, &v42);
    v19 = i;
    if (i >= v35)
    {
      v21 = __src;
      v22 = i - __src;
      v23 = (i - __src) >> 4;
      v24 = v23 + 1;
      if ((v23 + 1) >> 60)
      {
        sub_240F1B5A8();
      }

      v25 = v35 - __src;
      if ((v35 - __src) >> 3 > v24)
      {
        v24 = v25 >> 3;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF0)
      {
        v26 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      p_src = &__src;
      if (v26)
      {
        sub_240F1B8F8(&__src, v26);
      }

      *(16 * v23) = v42;
      v20 = 16 * v23 + 16;
      memcpy(0, v21, v22);
      v27 = __src;
      v28 = v35;
      __src = 0;
      i = v20;
      v35 = 0;
      v39 = v27;
      v40 = v28;
      *&v38 = v27;
      *(&v38 + 1) = v27;
      sub_240F2CA70(&v38);
    }

    else
    {
      *i = v42;
      v20 = &v19[1];
    }
  }

  v29 = __src;
  if (i - __src != 16)
  {
    sub_240F333F8();
  }

  v42 = *__src;
  *__src = 0;
  v29[1] = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_240F33B84(a3, &v42, &v43, 1uLL);
  if (v42.n128_u64[1])
  {
    sub_240F1BA44(v42.n128_u64[1]);
  }

  *&v38 = &__src;
  sub_240F1BAB0(&v38);
LABEL_43:
  *&v38 = &v36;
  sub_240F1BAB0(&v38);
  v30 = *MEMORY[0x277D85DE8];
}

void sub_240F2E080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v15 - 112) = &a12;
  sub_240F1BAB0((v15 - 112));
  a12 = &a15;
  sub_240F1BAB0(&a12);
  _Unwind_Resume(a1);
}

void sub_240F2E0EC(void *a1@<X0>, std::string *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[1];
  if (v3 >= 0xAAAAAAAAAAAAAAABLL * (&v4[-*a1] >> 3))
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v5 = (*a1 + 24 * v3);
    sub_240F1A870(__p, " ");
    sub_240F1A794(v5, v4, __p, a2);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_240F2E188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240F2E1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v7 = a3;
  if (!sub_240F25D00(a1, a2))
  {
    do
    {
      sub_240F2E214(&v7, (a1 + 32));
      sub_240F25B1C(a1);
    }

    while (!sub_240F25D00(a1, a2));
    return v7;
  }

  return v3;
}

void sub_240F2E214(uint64_t *a1, uint64_t *a2)
{
  if (*(a2 + 64) == 1)
  {
    sub_240F27F10(v20, a2[6], a2[7], &unk_27E51D598, 0);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *__p = 0u;
    memset(v11, 0, sizeof(v11));
    memset(v8, 0, sizeof(v8));
    v9 = 0;
    sub_240F2E368(v20, v8, *a1);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= 1)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (*(v4 + 40) == 1)
  {
    v5 = *a1;
    sub_240F22838(__dst, v4[3], v4[4], v4[4] - v4[3]);
    sub_240F25ED4(v5, __dst);
    if (v7 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_240F2E328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240F2E368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (!sub_240F25D00(a1, a2))
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - *(a1 + 32)) >> 3) <= 1)
    {
      v6 = a1 + 32;
    }

    else
    {
      v6 = *(a1 + 32);
    }

    if (*(v6 + 40) == 1)
    {
      sub_240F22838(&__p, *(v6 + 24), *(v6 + 32), *(v6 + 32) - *(v6 + 24));
    }

    else
    {
      __p = 0uLL;
      v9 = 0;
    }

    sub_240F25ED4(a3, &__p);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p);
    }

    sub_240F25B1C(a1);
  }

  return a3;
}

void sub_240F2E434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F2E450(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a1[3] < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3))
  {
    v6 = MEMORY[0x277D85DE0];
    while (1)
    {
      v7 = sub_240F2F0FC(a1);
      v8 = *(v7 + 23);
      if ((v8 & 0x80000000) == 0)
      {
        break;
      }

      if (v7[1] == 1 && **v7 == 93 || v7[1] == 1 && **v7 == 41)
      {
        return;
      }

      if (v7[1] == 1)
      {
        v9 = **v7;
LABEL_14:
        if (v9 == 124)
        {
          return;
        }
      }

LABEL_15:
      v10 = sub_240F2F0FC(a1);
      v11 = v10;
      __src[1] = 0;
      v44 = 0;
      __src[0] = 0;
      v12 = *(v10 + 23);
      if ((v12 & 0x80) != 0)
      {
        if (v10[1] == 1 && **v10 == 91)
        {
          goto LABEL_27;
        }

        v14 = v10[1];
        if (v14 == 7)
        {
          v13 = *v10;
LABEL_38:
          v20 = *v13;
          v21 = *(v13 + 3);
          if (v20 == 1769238639 && v21 == 1936617321)
          {
            sub_240F2F1D4(a1, &__p);
            if (v49 < 0)
            {
              operator delete(__p.n128_u64[0]);
            }

            sub_240F30CC8();
          }

          goto LABEL_42;
        }

        if (v14 == 1 && **v10 == 40)
        {
LABEL_32:
          v18 = sub_240F2F1D4(a1, &__p);
          if (v49 < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          sub_240F2DCD4(v47, a1, a2, v18);
          sub_240F2F1D4(a1, &v45);
          if (v46 < 0)
          {
            if (v45.n128_u64[1] == 1)
            {
              v19 = v45.n128_u64[0];
              goto LABEL_100;
            }
          }

          else if (v46 == 1)
          {
            v19 = &v45;
LABEL_100:
            if (v19->n128_u8[0] == 41)
            {
              sub_240F30B20();
            }
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Mismatched '('");
          exception->__vftable = &unk_2852CC3A0;
          __cxa_throw(exception, &unk_2852CC990, std::runtime_error::~runtime_error);
        }
      }

      else
      {
        if (v12 != 1)
        {
          v13 = v10;
          if (v12 != 7)
          {
            goto LABEL_42;
          }

          goto LABEL_38;
        }

        v15 = *v10;
        if (v15 == 40)
        {
          goto LABEL_32;
        }

        if (v15 == 91)
        {
LABEL_27:
          v16 = sub_240F2F1D4(a1, &__p);
          if (v49 < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          sub_240F2DCD4(v47, a1, a2, v16);
          sub_240F2F1D4(a1, &v45);
          if (v46 < 0)
          {
            if (v45.n128_u64[1] == 1)
            {
              v17 = v45.n128_u64[0];
              goto LABEL_71;
            }
          }

          else if (v46 == 1)
          {
            v17 = &v45;
LABEL_71:
            if (v17->n128_u8[0] == 93)
            {
              sub_240F30840();
            }
          }

          v41 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v41, "Mismatched '['");
          v41->__vftable = &unk_2852CC3A0;
          __cxa_throw(v41, &unk_2852CC990, std::runtime_error::~runtime_error);
        }
      }

LABEL_42:
      sub_240F1A870(&__s1, "--");
      if (!sub_240F2AB40(v11, &__s1))
      {
        if (SHIBYTE(v51) < 0)
        {
          operator delete(__s1);
        }

        goto LABEL_56;
      }

      v23 = *(v11 + 23);
      if (v23 < 0)
      {
        if (v11[1] == 2)
        {
          v24 = *v11;
LABEL_50:
          v25 = *v24 != 11565;
          goto LABEL_52;
        }
      }

      else
      {
        v24 = v11;
        if (v23 == 2)
        {
          goto LABEL_50;
        }
      }

      v25 = 1;
LABEL_52:
      if (SHIBYTE(v51) < 0)
      {
        operator delete(__s1);
        if (v25)
        {
LABEL_54:
          sub_240F2F234(a1, a2, &__s1);
        }
      }

      else if (v25)
      {
        goto LABEL_54;
      }

LABEL_56:
      sub_240F1A870(&__s1, "-");
      if (!sub_240F2AB40(v11, &__s1))
      {
        goto LABEL_74;
      }

      if (*(v11 + 23) < 0)
      {
        if (v11[1] == 1 && **v11 == 45)
        {
LABEL_74:
          if (SHIBYTE(v51) < 0)
          {
            operator delete(__s1);
          }

LABEL_81:
          v28 = *(v11 + 23);
          if (v28 < 0)
          {
            v31 = v11[1];
            if (v31)
            {
              v30 = *v11;
              v29 = *v11;
              if (**v11 != 60)
              {
                goto LABEL_90;
              }

LABEL_87:
              if (v30[v31 - 1] == 62)
              {
                goto LABEL_96;
              }

              if ((v28 & 0x80000000) == 0)
              {
                goto LABEL_89;
              }

              v40 = v11[1];
              if (!v40)
              {
LABEL_96:
                sub_240F2F1D4(a1, &__p);
                sub_240F31DA4();
              }

              v32 = &v29[v40];
LABEL_91:
              while (1)
              {
                v33 = *v29;
                if (!((v33 & 0x80000000) != 0 ? __maskrune(v33, 0x8000uLL) : *(v6 + 4 * v33 + 60) & 0x8000))
                {
                  break;
                }

                if (++v29 == v32)
                {
                  goto LABEL_96;
                }
              }
            }
          }

          else if (*(v11 + 23))
          {
            if (*v11 == 60)
            {
              v29 = *v11;
              v30 = v11;
              v31 = *(v11 + 23);
              goto LABEL_87;
            }

LABEL_89:
            v30 = v11;
            v31 = *(v11 + 23);
LABEL_90:
            v32 = &v30[v31];
            v29 = v30;
            goto LABEL_91;
          }

          sub_240F2F1D4(a1, &__p);
          sub_240F32498();
        }

        if (v11[1] == 2)
        {
          v26 = *v11;
LABEL_68:
          v27 = *v26 != 11565;
          goto LABEL_77;
        }
      }

      else if (*(v11 + 23) == 1)
      {
        if (*v11 == 45)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v26 = v11;
        if (*(v11 + 23) == 2)
        {
          goto LABEL_68;
        }
      }

      v27 = 1;
LABEL_77:
      if (SHIBYTE(v51) < 0)
      {
        operator delete(__s1);
        if (!v27)
        {
          goto LABEL_81;
        }
      }

      else if (!v27)
      {
        goto LABEL_81;
      }

      sub_240F2FED4(a1, a2, &__s1);
      sub_240F1BC98(__src);
      *__src = __s1;
      v44 = v51;
      v51 = 0;
      __s1 = 0uLL;
      __p.n128_u64[0] = &__s1;
      sub_240F1BAB0(&__p);
      v35 = sub_240F2F0FC(a1);
      v36 = *(v35 + 23);
      if (v36 < 0)
      {
        if (v35[1] == 3)
        {
          v35 = *v35;
LABEL_107:
          if (*v35 == 11822 && *(v35 + 2) == 46)
          {
            sub_240F32DC8();
          }
        }
      }

      else if (v36 == 3)
      {
        goto LABEL_107;
      }

      v39 = __src[0];
      v38 = __src[1];
      while (v39 != v38)
      {
        sub_240F31200(a3, v39);
        v39 += 16;
      }

      *&__s1 = __src;
      sub_240F1BAB0(&__s1);
      if (a1[3] >= 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3))
      {
        return;
      }
    }

    if (v8 != 1)
    {
      goto LABEL_15;
    }

    v9 = *v7;
    if (v9 == 41 || v9 == 93)
    {
      return;
    }

    goto LABEL_14;
  }
}

void sub_240F2EFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char *a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a27)
  {
    sub_240F1BA44(a27);
  }

  a26 = &a13;
  sub_240F1BAB0(&a26);
  sub_240F1BAB0(&a26);
  _Unwind_Resume(a1);
}

uint64_t *sub_240F2F0FC(void *a1)
{
  v3 = a1[3];
  if (v3 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3))
  {
    return (*a1 + 24 * v3);
  }

  if (atomic_load_explicit(&qword_27E51D5E0, memory_order_acquire))
  {
    return &qword_281504260;
  }

  v5[1] = v1;
  v5[2] = v2;
  sub_240F38528(v5);
  return v5[0];
}

__n128 sub_240F2F174@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  if (a1[1] - *a1 != 16)
  {
    sub_240F30B20();
  }

  result = *v3;
  *a2 = *v3;
  v3->n128_u64[0] = 0;
  v3->n128_u64[1] = 0;
  return result;
}

__n128 sub_240F2F1D4@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[3];
  a1[3] = v2 + 1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= v2)
  {
    sub_240F333E0();
  }

  v3 = (*a1 + 24 * v2);
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u64[0] = v3[1].n128_u64[0];
  v3->n128_u64[1] = 0;
  v3[1].n128_u64[0] = 0;
  v3->n128_u64[0] = 0;
  return result;
}

void sub_240F2F234(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  __s1 = 0;
  v56 = 0;
  v57 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v49 = 0;
  sub_240F2F1D4(a1, &__str);
  sub_240F1A870(&v44, "=");
  v47 = 0u;
  memset(&v48, 0, sizeof(v48));
  memset(__p, 0, sizeof(__p));
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v44;
  }

  else
  {
    v8 = v44.__r_.__value_.__r.__words[0];
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v44.__r_.__value_.__l.__size_;
  }

  if (v9)
  {
    if (size < v9)
    {
      goto LABEL_23;
    }

    v10 = p_str + size;
    v11 = v8->__r_.__value_.__s.__data_[0];
    v12 = p_str;
    while (1)
    {
      v13 = size - v9;
      if (v13 == -1)
      {
        goto LABEL_23;
      }

      v14 = memchr(v12, v11, v13 + 1);
      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = v14;
      if (!memcmp(v14, v8, v9))
      {
        break;
      }

      v12 = (v15 + 1);
      size = v10 - (v15 + 1);
      if (size < v9)
      {
        goto LABEL_23;
      }
    }

    if (v15 == v10 || (v16 = v15 - p_str, v15 - p_str == -1))
    {
LABEL_23:
      *__p = __str;
      *(&__str.__r_.__value_.__s + 23) = 0;
      __str.__r_.__value_.__s.__data_[0] = 0;
      v58.__r_.__value_.__r.__words[0] = &__s1;
      v58.__r_.__value_.__l.__size_ = &v52;
      v58.__r_.__value_.__r.__words[2] = &v49;
      sub_240F312F4(&v58, __p);
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47) < 0)
      {
        operator delete(*&__p[24]);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v17 = HIBYTE(v54);
      if (v54 < 0)
      {
        v17 = v53;
      }

      if (v17)
      {
        goto LABEL_36;
      }

      *__p = 0;
      if (v49 == 3)
      {
        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50);
        }
      }

      else
      {
        if (v49 != 4)
        {
          v49 = 0;
LABEL_36:
          memset(&v58, 0, sizeof(v58));
          v18 = a2[1];
          if (*a2 == v18)
          {
            v26 = 0;
          }

          else
          {
            v19 = *a2 + 88;
            do
            {
              v20 = *(v19 + 23);
              if (v20 >= 0)
              {
                v21 = *(v19 + 23);
              }

              else
              {
                v21 = *(v19 + 8);
              }

              v22 = HIBYTE(v57);
              if (v57 < 0)
              {
                v22 = v56;
              }

              if (v21 == v22)
              {
                v23 = v20 >= 0 ? v19 : *v19;
                v24 = v57 >= 0 ? &__s1 : __s1;
                if (!memcmp(v23, v24, v21))
                {
                  *__p = v19 - 88;
                  sub_240F30F80(&v58, __p);
                }
              }

              v25 = v19 + 32;
              v19 += 120;
            }

            while (v25 != v18);
            v26 = v58.__r_.__value_.__r.__words[0];
          }

          if (*(a1 + 32) != 1 || v26 != v58.__r_.__value_.__l.__size_ || (v27 = a2[1], *a2 == v27))
          {
LABEL_70:
            *a3 = 0;
            a3[1] = 0;
            a3[2] = 0;
            if (v58.__r_.__value_.__l.__size_ - v26 < 9)
            {
              if (v26 != v58.__r_.__value_.__l.__size_)
              {
                v30 = *v26;
                sub_240F31A68();
              }

              v31 = HIBYTE(v54);
              if (v54 < 0)
              {
                v31 = v53;
              }

              LODWORD(v41[0]) = v31 != 0;
              v32 = a2[1];
              if (v32 >= a2[2])
              {
                v33 = sub_240F314B0(a2, &unk_240F3AC61, &__s1, v41);
              }

              else
              {
                sub_240F315FC(a2, a2[1], &unk_240F3AC61, &__s1, v41);
                v33 = v32 + 120;
                a2[1] = v32 + 120;
              }

              a2[1] = v33;
              sub_240F31724();
            }

            sub_240F31054(v26, v58.__r_.__value_.__l.__size_, __p);
            std::operator+<char>();
            v34 = std::string::append(&v43, "' is not a unique prefix: ");
            v35 = *&v34->__r_.__value_.__l.__data_;
            v44.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
            *&v44.__r_.__value_.__l.__data_ = v35;
            v34->__r_.__value_.__l.__size_ = 0;
            v34->__r_.__value_.__r.__words[2] = 0;
            v34->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v43.__r_.__value_.__l.__data_);
            }

            v36 = *__p;
            v37 = *&__p[8];
            sub_240F1A870(v41, ", ");
            sub_240F31120(v36, v37, v41, &v43);
            if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &v43;
            }

            else
            {
              v38 = v43.__r_.__value_.__r.__words[0];
            }

            if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v39 = v43.__r_.__value_.__l.__size_;
            }

            std::string::append(&v44, v38, v39);
            if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v43.__r_.__value_.__l.__data_);
            }

            if (v42 < 0)
            {
              operator delete(v41[0]);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, &v44);
            exception->__vftable = &unk_2852CC558;
            __cxa_throw(exception, &unk_2852CCA38, std::runtime_error::~runtime_error);
          }

          v28 = *a2 + 88;
          while (1)
          {
            if ((*(v28 + 23) & 0x8000000000000000) != 0)
            {
              if (*(v28 + 8))
              {
LABEL_66:
                if (sub_240F2AB40(v28, &__s1))
                {
                  *__p = v28 - 88;
                  sub_240F30F80(&v58, __p);
                }
              }
            }

            else if (*(v28 + 23))
            {
              goto LABEL_66;
            }

            v29 = v28 + 32;
            v28 += 120;
            if (v29 == v27)
            {
              v26 = v58.__r_.__value_.__r.__words[0];
              goto LABEL_70;
            }
          }
        }

        v58.__r_.__value_.__r.__words[0] = &v50;
        sub_240F365B8(&v58);
      }

      v49 = *__p;
      if (*__p > 2)
      {
        if (*__p == 4)
        {
          v50 = *&__p[8];
          v51 = *&__p[24];
          memset(&__p[8], 0, 24);
          v58.__r_.__value_.__r.__words[0] = &__p[8];
          sub_240F365B8(&v58);
        }

        else if (*__p == 3)
        {
          v50 = *&__p[8];
          v51 = *&__p[24];
        }
      }

      else if (*__p == 1)
      {
        LOBYTE(v50) = __p[8];
      }

      else if (*__p == 2)
      {
        *&v50 = *&__p[8];
      }

      goto LABEL_36;
    }
  }

  else
  {
    v16 = 0;
  }

  std::string::basic_string(&v58, &__str, v16 + v9, 0xFFFFFFFFFFFFFFFFLL, &v43);
  v48 = v58;
  std::string::operator=(&__p[24], &v44);
  std::string::resize(&__str, v16, 0);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  goto LABEL_23;
}

void sub_240F2FD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void **__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  __p = &a37;
  sub_240F365B8(&__p);
  sub_240F1BAB0(&a37);
  v51 = *(v49 - 120);
  if (v51)
  {
    *(v49 - 112) = v51;
    operator delete(v51);
  }

  sub_240F2C9A0(&a49);
  if (*(v49 - 145) < 0)
  {
    operator delete(*(v49 - 168));
  }

  if (*(v49 - 121) < 0)
  {
    operator delete(*(v49 - 144));
  }

  _Unwind_Resume(a1);
}

void sub_240F2FED4(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_240F2F1D4(a1, &v36);
  v5 = v37;
  v6 = v36.n128_u64[0];
  if ((v37 & 0x80u) == 0)
  {
    v6 = &v36;
  }

  v7 = (v6->n128_u64 + 1);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if ((v5 & 0x80) == 0)
  {
    if (v7 == (&v36 + v5))
    {
      return;
    }

LABEL_7:
    v8 = v7->n128_u8[0];
    v35 = 2;
    LOWORD(v34[0]) = (v8 << 8) | 0x2D;
    BYTE2(v34[0]) = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v9 = a2[1];
    if (*a2 != v9)
    {
      v10 = *a2 + 64;
      do
      {
        v11 = *(v10 + 23);
        if (v11 >= 0)
        {
          v12 = *(v10 + 23);
        }

        else
        {
          v12 = *(v10 + 8);
        }

        v13 = v35;
        if (v35 < 0)
        {
          v13 = v34[1];
        }

        if (v12 == v13)
        {
          v14 = v11 >= 0 ? v10 : *v10;
          v15 = v35 >= 0 ? v34 : v34[0];
          if (!memcmp(v14, v15, v12))
          {
            __p.__r_.__value_.__r.__words[0] = v10 - 64;
            sub_240F30F80(&v31, &__p);
          }
        }

        v16 = v10 + 56;
        v10 += 120;
      }

      while (v16 != v9);
      if ((v32 - v31) > 8)
      {
        sub_240F1ACEC(" is specified ambiguously ", v34, &v30.__r_.__value_.__l.__data_);
        std::to_string(&v29, (v32 - v31) >> 3);
        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v29;
        }

        else
        {
          v20 = v29.__r_.__value_.__r.__words[0];
        }

        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v29.__r_.__value_.__l.__size_;
        }

        v22 = std::string::append(&v30, v20, size);
        v23 = *&v22->__r_.__value_.__l.__data_;
        v27.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v27.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v27, " times");
        v25 = *&v24->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, &__p);
        exception->__vftable = &unk_2852CC558;
        __cxa_throw(exception, &unk_2852CCA38, std::runtime_error::~runtime_error);
      }

      if (v31 != v32)
      {
        v17 = *v31;
        sub_240F31A68();
      }
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    v18 = a2[1];
    if (v18 >= a2[2])
    {
      v19 = sub_240F31B30(a2, v34, &unk_240F3AC61, &__p);
    }

    else
    {
      sub_240F31C7C(a2, a2[1], v34, &unk_240F3AC61, &__p);
      v19 = v18 + 120;
      a2[1] = v18 + 120;
    }

    a2[1] = v19;
    sub_240F31724();
  }

  if (v7 != (v36.n128_u64[0] + v36.n128_u64[1]))
  {
    goto LABEL_7;
  }

  operator delete(v36.n128_u64[0]);
}

void sub_240F306F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a41)
  {
    a42 = a41;
    operator delete(a41);
  }

  if (*(v42 - 113) < 0)
  {
    operator delete(*(v42 - 136));
  }

  sub_240F1BAB0(&__p);
  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240F308AC(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2852CBC30;
  v3 = *(a2 + 2);
  v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
  v6 = 0;
  v7 = 0u;
  *(a1 + 24) = &unk_2852CC1D8;
  v8 = &v6;
  sub_240F1BAB0(&v8);
  return a1;
}

void sub_240F3096C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852CBC30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F309E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  while (v3 != v4)
  {
    v7 = *v3;
    v3 += 2;
    (*(*v7 + 16))(v7, a2, a3);
  }

  return 1;
}

uint64_t sub_240F30A5C(uint64_t a1)
{
  *a1 = &unk_2852CC4A0;
  v3 = (a1 + 8);
  sub_240F1BAB0(&v3);
  return a1;
}

uint64_t sub_240F30AB4(uint64_t a1)
{
  *a1 = &unk_2852CC4A0;
  v3 = (a1 + 8);
  sub_240F1BAB0(&v3);
  return MEMORY[0x245CD48A0](a1, 0xA1C4030951706);
}

uint64_t sub_240F30B8C(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2852CBBF8;
  v3 = *(a2 + 2);
  v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
  v6 = 0;
  v7 = 0u;
  *(a1 + 24) = &unk_2852CC178;
  v8 = &v6;
  sub_240F1BAB0(&v8);
  return a1;
}

void sub_240F30C4C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852CBBF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F30D24(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2852CBD48;
  *(a1 + 24) = &unk_2852CC4A0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  v3 = 0;
  v4 = 0u;
  v5 = &v3;
  sub_240F1BAB0(&v5);
  *(a1 + 24) = &unk_2852CC418;
  return a1;
}

void sub_240F30DEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852CBD48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F30E68(uint64_t a1)
{
  *a1 = &unk_2852CC4A0;
  v3 = (a1 + 8);
  sub_240F1BAB0(&v3);
  return a1;
}

uint64_t sub_240F30EC0(uint64_t a1)
{
  *a1 = &unk_2852CC4A0;
  v3 = (a1 + 8);
  sub_240F1BAB0(&v3);
  return MEMORY[0x245CD48A0](a1, 0xA1C4030951706);
}

uint64_t sub_240F30F2C(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_240F30F80(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_240F1B5A8();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_240F31430(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

void sub_240F31054(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      v6 = *v4;
      if (*(*v4 + 111) < 0)
      {
        sub_240F23FB4(__p, *(v6 + 88), *(v6 + 96));
      }

      else
      {
        *__p = *(v6 + 88);
        v8 = *(v6 + 104);
      }

      sub_240F25ED4(a3, __p);
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      ++v4;
    }

    while (v4 != a2);
  }
}

char *sub_240F31120@<X0>(char *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (result == a2)
  {
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v7 = result;
    if (result[23] < 0)
    {
      result = sub_240F23FB4(a4, *result, *(result + 1));
    }

    else
    {
      v8 = *result;
      a4->__r_.__value_.__r.__words[2] = *(result + 2);
      *&a4->__r_.__value_.__l.__data_ = v8;
    }

    for (i = v7 + 24; i != a2; i += 24)
    {
      v10 = *(a3 + 23);
      if (v10 >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      if (v10 >= 0)
      {
        v12 = *(a3 + 23);
      }

      else
      {
        v12 = *(a3 + 8);
      }

      std::string::append(a4, v11, v12);
      v13 = i[23];
      if (v13 >= 0)
      {
        v14 = i;
      }

      else
      {
        v14 = *i;
      }

      if (v13 >= 0)
      {
        v15 = i[23];
      }

      else
      {
        v15 = *(i + 1);
      }

      result = std::string::append(a4, v14, v15);
    }
  }

  return result;
}

void sub_240F311E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_240F31200(void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_240F1B5A8();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      sub_240F1B8F8(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_240F2CA70(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void sub_240F312F4(void *a1, __int128 *a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (*(*a1 + 23) < 0)
  {
    operator delete(*v4);
  }

  v5 = *a2;
  *(v4 + 16) = *(a2 + 2);
  *v4 = v5;
  *(a2 + 23) = 0;
  *a2 = 0;
  v6 = a1[1];
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  v7 = *(a2 + 24);
  *(v6 + 16) = *(a2 + 5);
  *v6 = v7;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  v8 = *(a2 + 6);
  v14[0] = *(a2 + 7);
  *(v14 + 7) = *(a2 + 63);
  v9 = *(a2 + 71);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v15[0] = v14[0];
  *(v15 + 7) = *(v14 + 7);
  v10 = a1[2];
  if (*v10 == 4)
  {
    v13 = (v10 + 8);
    sub_240F365B8(&v13);
  }

  else if (*v10 == 3 && *(v10 + 31) < 0)
  {
    operator delete(*(v10 + 8));
  }

  *v10 = 3;
  v11 = v15[0];
  *(v10 + 8) = v8;
  *(v10 + 16) = v11;
  *(v10 + 23) = *(v15 + 7);
  *(v10 + 31) = v9;
  v12 = *MEMORY[0x277D85DE8];
}

void sub_240F31430(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_240F1AEC4();
}

void sub_240F31478(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F314B0(uint64_t *a1, char *a2, uint64_t a3, int *a4)
{
  v4 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x222222222222222)
  {
    sub_240F1B5A8();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v8 = 0x222222222222222;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    sub_240F2D344(a1, v8);
  }

  v15 = 0;
  v16 = 120 * v4;
  sub_240F315FC(a1, 120 * v4, a2, a3, a4);
  v17 = 120 * v4 + 120;
  v9 = a1[1];
  v10 = 120 * v4 + *a1 - v9;
  sub_240F2D39C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_240F2D59C(&v15);
  return v14;
}

void sub_240F315E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_240F2D59C(va);
  _Unwind_Resume(a1);
}

void sub_240F315FC(int a1, uint64_t a2, char *__s, uint64_t a4, int *a5)
{
  sub_240F1A870(v14, __s);
  if (*(a4 + 23) < 0)
  {
    sub_240F23FB4(__dst, *a4, *(a4 + 8));
  }

  else
  {
    *__dst = *a4;
    v13 = *(a4 + 16);
  }

  v8 = *a5;
  v9 = 1;
  LOBYTE(__p) = 0;
  sub_240F2D61C(a2, v14, __dst, v8, &v9);
  if (v9 == 4)
  {
    p_p = &__p;
    sub_240F365B8(&p_p);
  }

  else if (v9 == 3 && v11 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_240F316E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_240F31790(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2852CBCD8;
  sub_240F31868((a1 + 3), a2);
  return a1;
}

void sub_240F3180C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852CBCD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F31868(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2852CC500;
  if (*(a2 + 31) < 0)
  {
    sub_240F23FB4((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  v5 = *(a2 + 32);
  *(a1 + 32) = v5;
  if (v5 > 2)
  {
    if (v5 == 4)
    {
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      sub_240F36530(a1 + 40, *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    else if (v5 == 3)
    {
      if (*(a2 + 63) < 0)
      {
        sub_240F23FB4((a1 + 40), *(a2 + 40), *(a2 + 48));
      }

      else
      {
        v6 = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 40) = v6;
      }
    }
  }

  else if (v5 == 1)
  {
    *(a1 + 40) = *(a2 + 40);
  }

  else if (v5 == 2)
  {
    *(a1 + 40) = *(a2 + 40);
  }

  *a1 = &unk_2852CC2E8;
  if (*(a2 + 87) < 0)
  {
    sub_240F23FB4((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v7 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v7;
  }

  if (*(a2 + 111) < 0)
  {
    sub_240F23FB4((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v8 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v8;
  }

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void sub_240F319F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_240F31AD4(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2852CBCD8;
  sub_240F31868((a1 + 3), a2);
  return a1;
}

uint64_t sub_240F31B30(uint64_t *a1, uint64_t a2, char *a3, int *a4)
{
  v4 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x222222222222222)
  {
    sub_240F1B5A8();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v8 = 0x222222222222222;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    sub_240F2D344(a1, v8);
  }

  v15 = 0;
  v16 = 120 * v4;
  sub_240F31C7C(a1, 120 * v4, a2, a3, a4);
  v17 = 120 * v4 + 120;
  v9 = a1[1];
  v10 = 120 * v4 + *a1 - v9;
  sub_240F2D39C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_240F2D59C(&v15);
  return v14;
}

void sub_240F31C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_240F2D59C(va);
  _Unwind_Resume(a1);
}

void sub_240F31C7C(int a1, uint64_t a2, uint64_t a3, char *__s, int *a5)
{
  if (*(a3 + 23) < 0)
  {
    sub_240F23FB4(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v15 = *(a3 + 16);
  }

  sub_240F1A870(v12, __s);
  v8 = *a5;
  v9 = 1;
  LOBYTE(__p) = 0;
  sub_240F2D61C(a2, __dst, v12, v8, &v9);
  if (v9 == 4)
  {
    p_p = &__p;
    sub_240F365B8(&p_p);
  }

  else if (v9 == 3 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_240F31D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_240F2C9A0(&a10);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void *sub_240F31E10(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2852CBC68;
  sub_240F31F1C(&v4, (a1 + 3), a2);
  return a1;
}

void sub_240F31EA0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852CBC68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CD48A0);
}

void sub_240F31F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v7 = *a3;
  v8 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v4 = 0;
  sub_240F2D868(a2, v7, &v4);
  *v3 = &unk_2852CC238;
  if (v4 == 4)
  {
    p_p = &__p;
    sub_240F365B8(&p_p);
  }

  else if (v4 == 3 && v6 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }
}

uint64_t sub_240F31FD4(uint64_t a1)
{
  *a1 = &unk_2852CC500;
  v2 = *(a1 + 32);
  if (v2 == 4)
  {
    v4 = (a1 + 40);
    sub_240F365B8(&v4);
  }

  else if (v2 == 3 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_240F32064(uint64_t a1)
{
  *a1 = &unk_2852CC500;
  v2 = *(a1 + 32);
  if (v2 == 4)
  {
    v4 = (a1 + 40);
    sub_240F365B8(&v4);
  }

  else if (v2 == 3 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return MEMORY[0x245CD48A0](a1, 0x10B3C40F41401DALL);
}

char **sub_240F32108@<X0>(char **result@<X0>, char ****a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v5 = a2[1] - *a2;
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = v5 >> 4;
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    do
    {
      result = *v4;
      if (*v4)
      {
        v10 = **result;
        result = __dynamic_cast(result, &unk_2852CC938, &unk_2852CC920, 0);
        if (result)
        {
          *a3 = v7;
          (*(*v6 + 3))(v6);
          sub_240F32224();
        }
      }

      ++v7;
      v4 += 2;
    }

    while (v9 != v7);
  }

  return result;
}

void *sub_240F32298(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2852CBC68;
  sub_240F3230C(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_240F3230C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_240F23FB4(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v11 = *(a3 + 16);
  }

  v6 = *a4;
  v7 = v6;
  if (v6 > 2)
  {
    if (v6 == 4)
    {
      __p = 0uLL;
      v9 = 0;
      sub_240F36530(&__p, *(a4 + 8), *(a4 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 16) - *(a4 + 8)) >> 3));
    }

    else if (v6 == 3)
    {
      if (*(a4 + 31) < 0)
      {
        sub_240F23FB4(&__p, *(a4 + 8), *(a4 + 16));
      }

      else
      {
        __p = *(a4 + 8);
        v9 = *(a4 + 24);
      }
    }
  }

  else if (v6 == 1)
  {
    LOBYTE(__p) = *(a4 + 8);
  }

  else if (v6 == 2)
  {
    *&__p = *(a4 + 8);
  }

  sub_240F2D868(a2, __dst, &v7);
  *a2 = &unk_2852CC238;
  if (v7 == 4)
  {
    p_p = &__p;
    sub_240F365B8(&p_p);
  }

  else if (v7 == 3 && SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_240F3247C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_240F32504(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2852CBCA0;
  sub_240F32610(&v4, a1 + 3, a2);
  return a1;
}

void sub_240F32594(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852CBCA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CD48A0);
}

void sub_240F32610(uint64_t a1, void *a2, uint64_t a3)
{
  *v6 = *a3;
  v7 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v3 = 1;
  LOBYTE(__p) = 0;
  sub_240F326B4(a2, v6, &v3);
  if (v3 == 4)
  {
    p_p = &__p;
    sub_240F365B8(&p_p);
  }

  else if (v3 == 3 && v5 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

void *sub_240F326B4(void *a1, uint64_t a2, uint64_t a3)
{
  *v9 = *a2;
  v10 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *a3;
  v6 = v4;
  if (v4 > 2)
  {
    if (v4 == 4)
    {
      *__p = *(a3 + 8);
      v8 = *(a3 + 24);
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_11;
      }

      *__p = *(a3 + 8);
      v8 = *(a3 + 24);
    }

    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
  }

  else if (v4 == 1)
  {
    LOBYTE(__p[0]) = *(a3 + 8);
  }

  else if (v4 == 2)
  {
    __p[0] = *(a3 + 8);
  }

LABEL_11:
  sub_240F2D868(a1, v9, &v6);
  *a1 = &unk_2852CC238;
  if (v6 == 4)
  {
    v11 = __p;
    sub_240F365B8(&v11);
  }

  else if (v6 == 3 && SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  *a1 = &unk_2852CC290;
  return a1;
}

uint64_t sub_240F32800(uint64_t a1)
{
  *a1 = &unk_2852CC500;
  v2 = *(a1 + 32);
  if (v2 == 4)
  {
    v4 = (a1 + 40);
    sub_240F365B8(&v4);
  }

  else if (v2 == 3 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_240F32890(uint64_t a1)
{
  *a1 = &unk_2852CC500;
  v2 = *(a1 + 32);
  if (v2 == 4)
  {
    v4 = (a1 + 40);
    sub_240F365B8(&v4);
  }

  else if (v2 == 3 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return MEMORY[0x245CD48A0](a1, 0x10B3C40F41401DALL);
}

void sub_240F32934(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  if (v5)
  {
    v7 = 0;
    v8 = v5 >> 4;
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    while (1)
    {
      v10 = *v4;
      if (*v4)
      {
        v11 = **v10;
        v12 = __dynamic_cast(v10, &unk_2852CC938, &unk_2852CC920, 0);
        if (v12)
        {
          break;
        }
      }

      ++v7;
      v4 += 2;
      if (v9 == v7)
      {
        return;
      }
    }

    v13 = v12;
    v14 = (*(*a1 + 24))(a1);
    if (*(v14 + 23) < 0)
    {
      sub_240F23FB4(__dst, *v14, *(v14 + 8));
    }

    else
    {
      v15 = *v14;
      v26 = *(v14 + 16);
      *__dst = v15;
    }

    *__p = *__dst;
    v29 = v26;
    __dst[1] = 0;
    v26 = 0;
    __dst[0] = 0;
    if (v13[8] != 3)
    {
      goto LABEL_26;
    }

    if (v29 >= 0)
    {
      v16 = HIBYTE(v29);
    }

    else
    {
      v16 = __p[1];
    }

    v17 = *(v13 + 63);
    v18 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(v13 + 6);
    }

    if (v16 == v17)
    {
      if (v29 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      v22 = *(v13 + 5);
      v21 = v13 + 10;
      v20 = v22;
      if (v18 >= 0)
      {
        v23 = v21;
      }

      else
      {
        v23 = v20;
      }

      v24 = memcmp(v19, v23, v16) == 0;
    }

    else
    {
LABEL_26:
      v24 = 0;
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__dst[0]);
      if (!v24)
      {
        return;
      }
    }

    else if (!v24)
    {
      return;
    }

    *a3 = v7;
    (*(*a1 + 24))(a1);
    v27 = 1;
    LOBYTE(__p[0]) = 1;
    sub_240F32BB4();
  }
}

void sub_240F32BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_240F2C9A0(va);
  _Unwind_Resume(a1);
}

void *sub_240F32C28(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2852CBCA0;
  sub_240F32C9C(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_240F32C9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_240F23FB4(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v11 = *(a3 + 16);
  }

  v6 = *a4;
  v7 = v6;
  if (v6 > 2)
  {
    if (v6 == 4)
    {
      *__p = *(a4 + 8);
      v9 = *(a4 + 24);
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_14;
      }

      *__p = *(a4 + 8);
      v9 = *(a4 + 24);
    }

    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
  }

  else if (v6 == 1)
  {
    LOBYTE(__p[0]) = *(a4 + 8);
  }

  else if (v6 == 2)
  {
    __p[0] = *(a4 + 8);
  }

LABEL_14:
  sub_240F326B4(a2, __dst, &v7);
  if (v7 == 4)
  {
    v12 = __p;
    sub_240F365B8(&v12);
  }

  else if (v7 == 3 && SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__dst[0]);
  }
}

uint64_t sub_240F32E34(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2852CBBC0;
  v3 = *(a2 + 2);
  v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
  v6 = 0;
  v7 = 0u;
  *(a1 + 24) = &unk_2852CC118;
  v8 = &v6;
  sub_240F1BAB0(&v8);
  return a1;
}

void sub_240F32EF4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852CBBC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CD48A0);
}

BOOL sub_240F32F70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v19 = 0uLL;
  v20 = 0;
  sub_240F1B834(&v19, *a2, a2[1], (a2[1] - *a2) >> 4);
  v17 = 0uLL;
  v18 = 0;
  sub_240F1BB50(&v17, *a3, a3[1], (a3[1] - *a3) >> 4);
  v6 = 0;
  v14 = 0;
  v15 = 0;
  v7 = 1;
  v8 = 1;
  v16 = 0;
  while ((v7 & 1) != 0)
  {
    v9 = (*(***(a1 + 8) + 16))(**(a1 + 8), &v19, &v17);
    v7 = v9;
    v6 += v9;
    v10 = *(&v19 + 1) - v19;
    if ((v8 & 1) == 0)
    {
      v11 = v14;
      if (v10 == v15 - v14)
      {
        if (v19 == *(&v19 + 1))
        {
          break;
        }

        v12 = v19;
        while (*v12 == *v11)
        {
          v12 += 2;
          v11 += 2;
          if (v12 == *(&v19 + 1))
          {
            goto LABEL_11;
          }
        }
      }
    }

    sub_240F33228(&v14, v19, *(&v19 + 1), v10 >> 4);
    v8 = 0;
  }

LABEL_11:
  if (v6)
  {
    sub_240F1BC98(a2);
    *a2 = v19;
    a2[2] = v20;
    v20 = 0;
    v19 = 0uLL;
    sub_240F1BC98(a3);
    *a3 = v17;
    a3[2] = v18;
    v18 = 0;
    v17 = 0uLL;
  }

  v21 = &v14;
  sub_240F1BAB0(&v21);
  v14 = &v17;
  sub_240F1BAB0(&v14);
  *&v17 = &v19;
  sub_240F1BAB0(&v17);
  return v6 != 0;
}

void sub_240F33120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a13 = &a17;
  sub_240F1BAB0(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_240F33164(uint64_t a1)
{
  *a1 = &unk_2852CC4A0;
  v3 = (a1 + 8);
  sub_240F1BAB0(&v3);
  return a1;
}

uint64_t sub_240F331BC(uint64_t a1)
{
  *a1 = &unk_2852CC4A0;
  v3 = (a1 + 8);
  sub_240F1BAB0(&v3);
  return MEMORY[0x245CD48A0](a1, 0xA1C4030951706);
}

void sub_240F33228(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_240F1BC98(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_240F1B8BC(a1, v11);
    }

    sub_240F1B5A8();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    sub_240F33368(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_240F1BA44(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    sub_240F33368(&v17, a2, (a2 + v12), v8);
    a1[1] = sub_240F1B940(a1, (a2 + v12), a3, a1[1]);
  }
}

uint64_t *sub_240F33368(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_240F1BA44(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_240F33464(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2852CBD10;
  v3 = *(a2 + 2);
  v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
  v6 = 0;
  v7 = 0u;
  *(a1 + 24) = &unk_2852CC340;
  v8 = &v6;
  sub_240F1BAB0(&v8);
  return a1;
}

void sub_240F33524(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852CBD10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F335A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    goto LABEL_24;
  }

  do
  {
    v23 = 0uLL;
    v24 = 0;
    sub_240F1B834(&v23, *a2, a2[1], (a2[1] - *a2) >> 4);
    v21 = 0uLL;
    v22 = 0;
    sub_240F1BB50(&v21, *a3, a3[1], (a3[1] - *a3) >> 4);
    if ((*(**v3 + 16))(*v3, &v23, &v21))
    {
      v7 = v26;
      if (v26 >= v27)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 4);
        v10 = v9 + 1;
        if (v9 + 1 > 0x555555555555555)
        {
          sub_240F1B5A8();
        }

        if (0x5555555555555556 * ((v27 - v25) >> 4) > v10)
        {
          v10 = 0x5555555555555556 * ((v27 - v25) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v27 - v25) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v11 = 0x555555555555555;
        }

        else
        {
          v11 = v10;
        }

        v32 = &v25;
        if (v11)
        {
          sub_240F339F0(&v25, v11);
        }

        v12 = (16 * ((v26 - v25) >> 4));
        *v12 = 0;
        v12[1] = 0;
        v12[2] = 0;
        *v12 = v23;
        v12[2] = v24;
        v23 = 0uLL;
        v24 = 0;
        v12[3] = 0;
        v12[4] = 0;
        v12[5] = 0;
        *(v12 + 3) = v21;
        v12[5] = v22;
        v21 = 0uLL;
        v22 = 0;
        v8 = 48 * v9 + 48;
        v13 = (48 * v9 - (v26 - v25));
        memcpy(v12 - (v26 - v25), v25, v26 - v25);
        v14 = v25;
        v15 = v27;
        v25 = v13;
        v26 = v8;
        v27 = 0;
        v30 = v14;
        v31 = v15;
        v28 = v14;
        v29 = v14;
        sub_240F33A48(&v28);
      }

      else
      {
        *v26 = 0;
        *(v7 + 1) = 0;
        *(v7 + 2) = 0;
        *v7 = v23;
        *(v7 + 2) = v24;
        v23 = 0uLL;
        v24 = 0;
        *(v7 + 24) = v21;
        *(v7 + 5) = v22;
        v21 = 0uLL;
        v22 = 0;
        v8 = (v7 + 48);
      }

      v26 = v8;
    }

    v28 = &v21;
    sub_240F1BAB0(&v28);
    v28 = &v23;
    sub_240F1BAB0(&v28);
    v3 += 2;
  }

  while (v3 != v4);
  v16 = v25;
  if (v25 != v26)
  {
    v17 = v25 + 48;
    if (v25 + 48 != v26)
    {
      v18 = *v25;
      do
      {
        if (*(v17 + 1) - *v17 < (*(v16 + 1) - v18))
        {
          v18 = *v17;
          v16 = v17;
        }

        v17 += 48;
      }

      while (v17 != v26);
    }
  }

  if (v16 == v26)
  {
LABEL_24:
    v19 = 0;
  }

  else
  {
    v28 = a2;
    v29 = a3;
    sub_240F33978(&v28, v16);
    v19 = 1;
  }

  v28 = &v25;
  sub_240F33AC0(&v28);
  return v19;
}

void sub_240F33864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void ***a19)
{
  a19 = &a9;
  sub_240F1BAB0(&a19);
  a9 = &a13;
  sub_240F1BAB0(&a9);
  a13 = &a16;
  sub_240F33AC0(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_240F338B4(uint64_t a1)
{
  *a1 = &unk_2852CC4A0;
  v3 = (a1 + 8);
  sub_240F1BAB0(&v3);
  return a1;
}

uint64_t sub_240F3390C(uint64_t a1)
{
  *a1 = &unk_2852CC4A0;
  v3 = (a1 + 8);
  sub_240F1BAB0(&v3);
  return MEMORY[0x245CD48A0](a1, 0xA1C4030951706);
}

uint64_t **sub_240F33978(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  sub_240F1BC98(*a1);
  *v4 = *a2;
  v4[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = a1[1];
  sub_240F1BC98(v5);
  *v5 = *(a2 + 24);
  v5[2] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return a1;
}

void sub_240F339F0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_240F1AEC4();
}

uint64_t sub_240F33A48(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 48);
    *(a1 + 16) = i - 48;
    v6 = (i - 24);
    sub_240F1BAB0(&v6);
    v6 = v4;
    sub_240F1BAB0(&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_240F33AC0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240F33B14(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_240F33B14(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 6;
      v6 = v4 - 3;
      sub_240F1BAB0(&v6);
      v6 = v5;
      sub_240F1BAB0(&v6);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t sub_240F33B84(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240F1B8BC(result, a4);
  }

  return result;
}

void sub_240F33BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_240F1BAB0(&a9);
  _Unwind_Resume(a1);
}

void sub_240F33C0C(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CD48A0);
}

void sub_240F33C44(const std::string *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a2 != -1)
  {
    v3 = a2;
    do
    {
      v6 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
      if (v6 >= 0)
      {
        v7 = a1;
      }

      else
      {
        v7 = a1->__r_.__value_.__r.__words[0];
      }

      if (v6 >= 0)
      {
        size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = a1->__r_.__value_.__l.__size_;
      }

      if (size <= v3)
      {
        break;
      }

      v9 = (v7 + size);
      v10 = v3;
      while (memchr(" \t\r\n\v\f", *(v7 + v10), 6uLL))
      {
        if (size == ++v10)
        {
          return;
        }
      }

      if (v10 == -1)
      {
        break;
      }

      if (size > v10)
      {
        v11 = (v7 + v10);
LABEL_17:
        v12 = 0;
        while (*v11 != asc_240F3ACC1[v12])
        {
          if (++v12 == 6)
          {
            if (++v11 != v9)
            {
              goto LABEL_17;
            }

            goto LABEL_25;
          }
        }

        if (v11 != v9)
        {
          v3 = &v11[-v7];
          if (&v11[-v7] != -1)
          {
            v13 = v3 - v10;
            goto LABEL_26;
          }
        }
      }

LABEL_25:
      v3 = -1;
      v13 = -1;
LABEL_26:
      std::string::basic_string(&__p, a1, v10, v13, v30);
      v15 = *(a3 + 8);
      v14 = *(a3 + 16);
      if (v15 >= v14)
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a3) >> 3);
        v18 = v17 + 1;
        if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_240F1B5A8();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a3) >> 3);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        v20 = v19 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v18;
        v30[4] = a3;
        if (v20)
        {
          sub_240F24058(a3, v20);
        }

        v21 = 24 * v17;
        v22 = *&__p.__r_.__value_.__l.__data_;
        *(v21 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v21 = v22;
        memset(&__p, 0, sizeof(__p));
        v23 = 24 * v17 + 24;
        v24 = *(a3 + 8) - *a3;
        v25 = 24 * v17 - v24;
        memcpy((v21 - v24), *a3, v24);
        v26 = *a3;
        *a3 = v25;
        *(a3 + 8) = v23;
        v27 = *(a3 + 16);
        *(a3 + 16) = 0;
        v30[2] = v26;
        v30[3] = v27;
        v30[0] = v26;
        v30[1] = v26;
        sub_240F240B0(v30);
        v28 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *(a3 + 8) = v23;
        if (v28 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v16 = *&__p.__r_.__value_.__l.__data_;
        *(v15 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v15 = v16;
        *(a3 + 8) = v15 + 24;
      }
    }

    while (v3 != -1);
  }
}

void sub_240F33E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_240F365B8(&__p);
  _Unwind_Resume(a1);
}

char **sub_240F33EC0(char **result)
{
  if (result)
  {
    v1 = **result;
    return (__dynamic_cast(result, &unk_2852CC938, &unk_2852CC960, 0) != 0);
  }

  return result;
}

uint64_t sub_240F33F24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_240F33FA0(a1, v5++);
    }

    while (v5 != a3);
  }

  return a1;
}

void *sub_240F33FA0(void *a1, uint64_t *a2)
{
  v4 = sub_240F2BE2C(*a2);
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
    operator new();
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

  v13 = *a2;
  v14 = sub_240F2BE2C(v11[2]);
  if (v14 != sub_240F2BE2C(v13))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_240F3420C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

char **sub_240F34258(char **result)
{
  if (result)
  {
    v1 = **result;
    return (__dynamic_cast(result, &unk_2852CC938, &unk_2852CC9D8, 0) != 0);
  }

  return result;
}

void *sub_240F342BC(void *a1, uint64_t *a2)
{
  v4 = sub_240F2BE2C(*a2);
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

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        v13 = *a2;
        v14 = sub_240F2BE2C(v11[2]);
        if (v14 == sub_240F2BE2C(v13))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *sub_240F343D0(void *a1, uint64_t *a2)
{
  v4 = sub_240F2BE2C(*a2);
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
    operator new();
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

  v13 = *a2;
  v14 = sub_240F2BE2C(v11[2]);
  if (v14 != sub_240F2BE2C(v13))
  {
    goto LABEL_17;
  }

  return v11;
}

void *sub_240F346B0(void *a1, char *__s, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2852CBC68;
  sub_240F34724(&v5, a1 + 3, __s, a3);
  return a1;
}

void sub_240F34724(int a1, void *a2, char *__s, uint64_t a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
  sub_240F1A870(&v13, __s);
  v6 = *a4;
  v16[0] = *(a4 + 8);
  *(v16 + 7) = *(a4 + 15);
  v7 = *(a4 + 23);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v9 = 3;
  __p = v6;
  *v11 = v16[0];
  *&v11[7] = *(v16 + 7);
  v12 = v7;
  sub_240F2D868(a2, &v13, &v9);
  *a2 = &unk_2852CC238;
  if (v9 == 4)
  {
    p_p = &__p;
    sub_240F365B8(&p_p);
  }

  else if (v9 == 3 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13.n128_u64[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_240F3483C(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CD48A0);
}

uint64_t sub_240F34874(uint64_t **a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    while (1)
    {
      v8 = *v3;
      v7 = v3[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = (*(*v8 + 24))(v8);
      v10 = v9;
      v11 = v9[23];
      if (v11 >= 0)
      {
        v12 = v9[23];
      }

      else
      {
        v12 = *(v9 + 1);
      }

      v13 = *(a2 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(a2 + 8);
      }

      if (v12 == v13)
      {
        if (v11 < 0)
        {
          v9 = *v9;
        }

        v15 = v14 >= 0 ? a2 : *a2;
        if (!memcmp(v9, v15, v12))
        {
          break;
        }
      }

      v16 = 0;
      v17 = *(a3 + 23);
      v18 = v17;
      if (v17 < 0)
      {
        v17 = a3[1];
      }

      if (v17 && v12 == v17)
      {
        if (v11 >= 0)
        {
          v19 = v10;
        }

        else
        {
          v19 = *v10;
        }

        if (v18 >= 0)
        {
          v20 = a3;
        }

        else
        {
          v20 = *a3;
        }

        if (!memcmp(v19, v20, v12))
        {
          break;
        }

        v16 = 0;
      }

      if (v7)
      {
        goto LABEL_29;
      }

LABEL_30:
      v3 += 2;
      if (v3 == v4)
      {
        v21 = 1;
      }

      else
      {
        v21 = v16;
      }

      if (v21 == 1)
      {
        return v16;
      }
    }

    v16 = (*(*v8 + 32))(v8);
    if (!v7)
    {
      goto LABEL_30;
    }

LABEL_29:
    sub_240F1BA44(v7);
    goto LABEL_30;
  }

  return 0;
}

void sub_240F34A04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_240F1BA44(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F34A24(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CD48A0);
}

void sub_240F34A5C(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CD48A0);
}

void sub_240F34A94(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v3 = 0uLL;
  sub_240F1B834(&v3, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 4);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v2 = 0;
  v8 = __p;
  sub_240F35620(__p, 1uLL);
}

void sub_240F354F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void ****a25, uint64_t a26, uint64_t a27, uint64_t a28, void ***a29)
{
  *(v29 - 144) = &a25;
  sub_240F1BAB0((v29 - 144));
  if (a10)
  {
    sub_240F1BA44(a10);
  }

  a25 = &a29;
  sub_240F1BAB0(&a25);
  a29 = &a15;
  sub_240F364BC(&a29);
  a15 = &a22;
  sub_240F364BC(&a15);
  a15 = &a19;
  sub_240F1BAB0(&a15);
  _Unwind_Resume(a1);
}

void sub_240F35620(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_240F1AEC4();
}

void **sub_240F35678(void **a1)
{
  sub_240F356AC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_240F356AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_240F1BAB0(&v5);
  }
}

uint64_t sub_240F35700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_240F1BC98(a4);
      *a4 = *v5;
      a4[2] = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_240F35774(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        sub_240F35958(a1, a2, a1[1], &a2[2 * a5]);
        v18 = &v7[2 * a5];
      }

      else
      {
        a1[1] = sub_240F1B940(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        sub_240F35958(a1, v5, v10, &v5[2 * a5]);
        v18 = (v7 + v16);
      }

      sub_240F33368(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_240F1B5A8();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      sub_240F1B8F8(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v7;
      v22 = v7[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v7 += 2;
    }

    while (v21 != v20);
    memcpy(v20, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v20[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    sub_240F2CA70(v30);
    return v19;
  }

  return v5;
}

void *sub_240F35958(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_240F359BC(&v11, a2, v7, v6);
}

void *sub_240F359BC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        sub_240F1BA44(v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

void *sub_240F35A20(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        sub_240F35958(a1, a2, a1[1], &a2[2 * a5]);
        v18 = &v7[2 * a5];
      }

      else
      {
        a1[1] = sub_240F1B940(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        sub_240F35958(a1, v5, v10, &v5[2 * a5]);
        v18 = (v7 + v16);
      }

      sub_240F33368(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_240F1B5A8();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      sub_240F1B8F8(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v7;
      v22 = v7[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v7 += 2;
    }

    while (v21 != v20);
    memcpy(v20, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v20[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    sub_240F2CA70(v30);
    return v19;
  }

  return v5;
}

uint64_t sub_240F35C04(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a2 != a3)
  {
    sub_240F35C7C();
  }

  return result;
}

void sub_240F35CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_240F1C210(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F35D90(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_240F1C210(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_240F35DAC(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = (*(*a2[2] + 40))(a2[2]);
  a2[1] = v5;
  v6 = sub_240F35E2C(a1, v5, v4);
  sub_240F35F8C(a1, a2, v6);
  return a2;
}

void *sub_240F35E2C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_240F36074(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *sub_240F35F8C(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_240F36074(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_240F36164(a1, prime);
    }
  }
}

void sub_240F36164(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_240F1AEC4();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_240F362E0(uint64_t a1)
{
  sub_240F3631C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_240F3631C(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        sub_240F1BA44(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_240F36364(void *a1, void *a2)
{
  v3 = sub_240F363BC(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = 1;
  do
  {
    v5 = v4;
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    ++v4;
  }

  while (v3[2] == *a2);
  return v5;
}

void *sub_240F363BC(void *a1, uint64_t a2)
{
  v4 = (*(**a2 + 40))();
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = i[1];
      if (v4 == v9)
      {
        if (i[2] == *a2)
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

void sub_240F364BC(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_240F1BAB0(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_240F36530(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240F2CCD8(result, a4);
  }

  return result;
}

void sub_240F36598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_240F365B8(&a9);
  _Unwind_Resume(a1);
}

void sub_240F365B8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240F2CE64(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_240F3660C(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245CD4740](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_240F367B4(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x245CD4750](v13);
  return a1;
}

void sub_240F3674C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x245CD4750](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x240F3672CLL);
}

uint64_t sub_240F367B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      sub_240F225DC(__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_240F36920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F3693C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240F36990(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_240F36990(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_240F2D464(a1, i))
  {
    i -= 120;
  }

  *(a1 + 8) = a2;
}

void sub_240F369E4(uint64_t *a1)
{
  if (*a1)
  {
    sub_240F36990(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_240F36A24(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_240F36A24(a1, *a2);
    sub_240F36A24(a1, *(a2 + 1));
    v4 = *(a2 + 14);
    if (v4 == 4)
    {
      v5 = (a2 + 64);
      sub_240F365B8(&v5);
    }

    else if (v4 == 3 && a2[87] < 0)
    {
      operator delete(*(a2 + 8));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_240F36ABC(uint64_t a1, const void **a2)
{
  result = *sub_240F36B54(a1, &v3, a2);
  if (!result)
  {
    sub_240F36C5C();
  }

  return result;
}

void *sub_240F36B54(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_240F36CF8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_240F36F08(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_240F36D14(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_240F36D6C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_240F36D6C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}