void sub_19B514968(void ***a1)
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
        v4 -= 48;
        sub_19B5149EC(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_19B5149EC(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_19B514A44(uint64_t a1)
{
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

std::locale *sub_19B514A88(std::locale *a1)
{
  a1->__locale_ = &unk_1F0E2AE08;
  v7 = a1 + 17;
  sub_19B50FEB8(&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  sub_19B514968(&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F0E2AEF8;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_19B514B70(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_19B50FE08(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19B514C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B514C28(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_19B50FE08(&__s, a2, a3, a3 - a2);
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

void sub_19B514DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_19B514DD4(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_19B50FE08(__p, a2, a3, a3 - a2);
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

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19B514EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B514EE4(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_19B5BE690();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_19B514FD4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x19EAE74F0](exception, 5);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *sub_19B51502C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
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
  v9 = 0;
  v10 = 0;
  v30 = 0uLL;
  v31 = 0;
  if (a2 + 1 != a3 && v5 == 91)
  {
    v11 = a2[1];
    switch(v11)
    {
      case '.':
        v4 = sub_19B515654(a1, a2 + 2, a3, &v30);
        v9 = HIBYTE(v31);
        v10 = *(&v30 + 1);
        break;
      case ':':
        v12 = sub_19B5155C0(a1, a2 + 2, a3, a4);
        goto LABEL_10;
      case '=':
        v12 = sub_19B515404(a1, a2 + 2, a3, a4);
LABEL_10:
        v6 = v12;
        v13 = 0;
        goto LABEL_48;
      default:
        v10 = 0;
        v9 = 0;
        break;
    }
  }

  v14 = *(a1 + 24) & 0x1F0;
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  if (v10)
  {
    v15 = v4;
    goto LABEL_28;
  }

  if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
  {
    v16 = *v4;
    if (v16 == 92)
    {
      if (v14)
      {
        v17 = sub_19B51588C(a1, v4 + 1, a3, &v30);
      }

      else
      {
        v17 = sub_19B51571C(a1, v4 + 1, a3, &v30, v6);
      }

      v15 = v17;
      goto LABEL_28;
    }
  }

  else
  {
    LOBYTE(v16) = *v4;
  }

  if ((v9 & 0x80) != 0)
  {
    v18 = v30;
    *(&v30 + 1) = 1;
  }

  else
  {
    HIBYTE(v31) = 1;
    v18 = &v30;
  }

  *v18 = v16;
  *(v18 + 1) = 0;
  v15 = v4 + 1;
LABEL_28:
  if (v15 == a3 || (v19 = *v15, v19 == 93) || (v21 = v15 + 1, v15 + 1 == a3) || v19 != 45 || *v21 == 93)
  {
    if (SHIBYTE(v31) < 0)
    {
      if (*(&v30 + 1))
      {
        if (*(&v30 + 1) != 1)
        {
          v20 = v30;
LABEL_46:
          sub_19B515F70(v6, *v20, *(v20 + 1));
          goto LABEL_47;
        }

        v20 = v30;
        goto LABEL_37;
      }
    }

    else if (HIBYTE(v31))
    {
      v20 = &v30;
      if (HIBYTE(v31) != 1)
      {
        goto LABEL_46;
      }

LABEL_37:
      sub_19B513FAC(v6, *v20);
    }

LABEL_47:
    v13 = 1;
    v4 = v15;
    goto LABEL_48;
  }

  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  v4 = v15 + 2;
  if (v15 + 2 != a3 && *v21 == 91 && *v4 == 46)
  {
    v22 = sub_19B515654(a1, v15 + 3, a3, v28);
LABEL_60:
    v4 = v22;
    goto LABEL_61;
  }

  if ((v14 | 0x40) == 0x40)
  {
    LODWORD(v21) = *v21;
    if (v21 == 92)
    {
      if (v14)
      {
        v22 = sub_19B51588C(a1, v15 + 2, a3, v28);
      }

      else
      {
        v22 = sub_19B51571C(a1, v15 + 2, a3, v28, v6);
      }

      goto LABEL_60;
    }
  }

  else
  {
    LOBYTE(v21) = *v21;
  }

  HIBYTE(v29) = 1;
  LOWORD(v28[0]) = v21;
LABEL_61:
  *v26 = v30;
  v27 = v31;
  v31 = 0;
  v30 = 0uLL;
  *__p = *v28;
  v25 = v29;
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  sub_19B515B70(v6, v26, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  v13 = 1;
LABEL_48:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (v13)
  {
    return v4;
  }

  return v6;
}

void sub_19B5153A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_19B515404(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
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
    sub_19B514FD4();
  }

  sub_19B5160A4(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    sub_19B51604C();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  sub_19B516250(a1, v11, &v11[v10], __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    sub_19B516360((a4 + 136), __p);
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

      sub_19B515F70(a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        sub_19B51604C();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      sub_19B513FAC(a4, *v14);
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

void sub_19B515588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_19B5155C0(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
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
    sub_19B514FD4();
  }

  v9 = sub_19B516684(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    sub_19B51662C();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *sub_19B515654(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
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
    sub_19B514FD4();
  }

  sub_19B5160A4(a1, a2, v6, &v12);
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
    sub_19B51604C();
  }

  return v6 + 2;
}

unsigned __int8 *sub_19B51571C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_19B512B50();
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
        sub_19B513FAC(a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
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
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        *(a4 + 8) = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v6 == 68)
    {
      v7 = *(a5 + 164) | 0x400;
LABEL_22:
      *(a5 + 164) = v7;
      return a2 + 1;
    }

    goto LABEL_25;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    sub_19B516758(a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return sub_19B512D30(a1, a2, a3, a4);
}

unsigned __int8 *sub_19B51588C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_71:
    sub_19B512B50();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 12;
          goto LABEL_66;
        }

        goto LABEL_50;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 10;
          goto LABEL_66;
        }

        goto LABEL_50;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 13;
            goto LABEL_66;
          }

          goto LABEL_50;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 9;
            goto LABEL_66;
          }

          goto LABEL_50;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 11;
            goto LABEL_66;
          }

          goto LABEL_50;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_50;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 7;
        goto LABEL_66;
      }

LABEL_50:
      sub_19B51312C(a1);
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 8;
LABEL_66:
        *a4 = v9;
        return a2 + 1;
      }

      goto LABEL_50;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_71;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3 && (*v7 & 0xF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v7 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v7 + 8 * v6 - 48;
      if ((*v7 & 0xF8) == 0x30)
      {
        v7 = a2 + 3;
        v6 = v8;
      }
    }
  }

  if (!a4)
  {
    sub_19B51312C(a1);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v6;
  *(a4 + 1) = 0;
  return v7;
}

void sub_19B515B70(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = v4[23];
        v8 = v7 < 0 ? *(v4 + 1) : v4[23];
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (v4[23] < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = v3[23];
        v21 = v20 < 0 ? *(v3 + 1) : v3[23];
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 40))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (v3[23] < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = a3[23];
        v27 = v26 < 0 ? *(a3 + 1) : a3[23];
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = v4[23];
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    sub_19B516954(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    sub_19B516954(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    sub_19B5167F4(a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = a2[23];
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = a2[23];
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = a3[23];
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      sub_19B516A0C();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v35);
      v37 = v4;
      if (v4[23] < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (v3[23] < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v38);
      v40 = v3;
      if (v3[23] < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    sub_19B5167F4(a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
}

void sub_19B515F70(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  sub_19B516B0C(v6, v7);
}

void sub_19B51604C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x19EAE74F0](exception, 1);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_19B5160A4(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_19B50FE08(&__s, a2, a3, a3 - a2);
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

void sub_19B51621C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_19B516250(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_19B50FE08(__p, a2, a3, a3 - a2);
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

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19B516344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B516360(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_19B516400(a1, a2);
  }

  else
  {
    sub_19B5163A0(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_19B5163A0(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_19B4C5138(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_19B516400(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_19B5BE690();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_19B516540(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_19B4C5138(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_19B516598(&v17);
  return v11;
}

void sub_19B51652C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B516598(va);
  _Unwind_Resume(a1);
}

void sub_19B516540(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_19B4C5080();
}

uint64_t sub_19B516598(uint64_t a1)
{
  sub_19B5165D0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B5165D0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_19B51662C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x19EAE74F0](exception, 2);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

uint64_t sub_19B516684(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  sub_19B50FE08(__p, a2, a3, a3 - a2);
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

void sub_19B51673C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B516758(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    sub_19B514EE4(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_19B514EE4(a1 + 64, &v7);
}

uint64_t sub_19B5167F4(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_19B5BE690();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = result;
    if (v12)
    {
      sub_19B516A64(result, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = *(result + 8) - *result;
    v17 = v13 - v16;
    memcpy((v13 - v16), *result, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_19B516ABC(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v4 + 48;
  }

  v3[1] = v8;
  return result;
}

void sub_19B516954(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_19B50FE08(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19B5169F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B516A0C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x19EAE74F0](exception, 9);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_19B516A64(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_19B4C5080();
}

uint64_t sub_19B516ABC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_19B5149EC(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B516B0C(uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      sub_19B5BE690();
    }

    v8 = v4 - *a1;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_19B516BDC(a1, v10);
    }

    v11 = (2 * v7);
    *v11 = *a2;
    v6 = 2 * v7 + 2;
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

void sub_19B516BDC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_19B4C5080();
}

void *sub_19B516C20(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_19B516C8C(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B516D18(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_19B516D48(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_19B516DB4(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B516E40(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned __int8 *sub_19B517008(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
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
            sub_19B5170A4();
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

void sub_19B5170A4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x19EAE74F0](exception, 8);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_19B5170FC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x19EAE74F0](exception, 7);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_19B517158(void *a1)
{
  sub_19B5172AC(a1);

  JUMPOUT(0x19EAE76F0);
}

unsigned int *sub_19B517190(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return sub_19B517360(result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *sub_19B517240(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return sub_19B517360(result, a3);
  }

  return result;
}

void sub_19B517274(void *a1)
{
  sub_19B5172AC(a1);

  JUMPOUT(0x19EAE76F0);
}

void *sub_19B5172AC(void *a1)
{
  *a1 = &unk_1F0E2AEC8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_1F0E2AEF8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *sub_19B517360(unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_19B5173C8(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_19B5173E0(void *a1)
{
  sub_19B5172AC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B517424(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_19B517460(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_19B517474()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x19EAE74F0](exception, 15);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *sub_19B5174CC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_19B517568(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = (*(a1 + 28) + 1);

  return sub_19B51766C(a1, v8, a3);
}

_BYTE *sub_19B517568(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v6 = sub_19B517830(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = v6 + 2;
      sub_19B512888(a1);
      v10 = *(a1 + 28);
      do
      {
        v11 = v9;
        v12 = sub_19B5174CC(a1, v9, a3);
        v9 = v12;
      }

      while (v12 != v11);
      if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
      {
        sub_19B511E04();
      }

      v7 = v12 + 2;
      sub_19B512910(a1);
    }

    else
    {
      v13 = sub_19B517B24(a1, v8);
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

unsigned __int8 *sub_19B51766C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 42)
    {
      sub_19B516E78();
    }

    if (a2 + 1 != a3 && v4 == 92 && a2[1] == 123)
    {
      v7 = a2 + 2;
      v13 = 0;
      v8 = sub_19B517008(a1, a2 + 2, a3, &v13);
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
          v11 = sub_19B517008(a1, v9, a3, &v12);
          if (v11 != a3 && v11 + 1 != a3 && *v11 == 92 && v11[1] == 125)
          {
            if (v12 == -1 || v12 >= v13)
            {
              sub_19B516E78();
            }

LABEL_24:
            sub_19B5170A4();
          }
        }

        else if (v9 != a3 && v10 == 92 && *v9 == 125)
        {
          sub_19B516E78();
        }
      }

      sub_19B5170FC();
    }
  }

  return a2;
}

_BYTE *sub_19B517830(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if ((a2 + 1 != a3 || v6 != 36) && ((v6 - 46) > 0x2E || ((1 << (v6 - 46)) & 0x600000000001) == 0))
    {
      sub_19B51312C(a1);
    }

    v8 = sub_19B517974(a1, a2, a3);
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

  v9 = sub_19B517974(a1, a2, a3);
  if (v9 != a2)
  {
    return v9;
  }

LABEL_12:

  return sub_19B51276C(a1, a2, a3);
}

_BYTE *sub_19B517974(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v3 = a2[1];
    if ((v3 - 36) <= 0x3A && ((1 << (v3 - 36)) & 0x580000000000441) != 0)
    {
      sub_19B51312C(a1);
    }
  }

  return a2;
}

void *sub_19B5179EC(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_19B517A58(void *a1)
{
  *a1 = &unk_1F0E2AEF8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B517AE4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_19B517B24(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_19B5132C4(a1);
    }

    sub_19B51326C();
  }

  return 0;
}

unsigned __int8 *sub_19B517B84(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_19B517BE4(a1, a2, a3);
  if (v6 == a2)
  {
    sub_19B517474();
  }

  do
  {
    v7 = v6;
    v6 = sub_19B517BE4(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *sub_19B517BE4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_19B517D28(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        sub_19B511C4C();
      case '(':
        sub_19B512888(a1);
        v11 = *(a1 + 28);
        ++*(a1 + 36);
        v12 = sub_19B510B3C(a1, v9 + 1, a3);
        if (v12 == a3 || (v13 = v12, *v12 != 41))
        {
          sub_19B511E04();
        }

        sub_19B512910(a1);
        --*(a1 + 36);
        v9 = v13 + 1;
        break;
      case '^':
        sub_19B511BC8();
    }
  }

  if (v9 == a2)
  {
    return v9;
  }

  v14 = (*(a1 + 28) + 1);

  return sub_19B5118C4(a1, v9, a3);
}

unsigned __int8 *sub_19B517D28(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_19B517E1C(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_19B517EA8(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return sub_19B51276C(a1, a2, a3);
}

unsigned __int8 *sub_19B517E1C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36);
    if (v4 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (v3 - 36)) & 0x5800000080004D1) != 0)
    {
      return a2;
    }

    if (v4 == 5)
    {
      if (*(a1 + 36))
      {
        return a2;
      }
    }

    else
    {
LABEL_8:
      if ((v3 - 123) < 2)
      {
        return a2;
      }
    }

    sub_19B51312C(a1);
  }

  return a2;
}

unsigned __int8 *sub_19B517EA8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
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
    sub_19B51312C(a1);
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = sub_19B517B24(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    v3 += v9;
    return v3;
  }

  return sub_19B51588C(a1, v4, a3, 0);
}

void *sub_19B517F80(void *a1)
{
  *a1 = &unk_1F0E2B838;
  bzero(a1 + 1, 0x2B0uLL);
  bzero(a1 + 88, 0xC9CuLL);
  return a1;
}

void sub_19B517FD4(PB::Base *this)
{
  *this = &unk_1F0E2B838;
  v2 = *(this + 490);
  *(this + 490) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 489);
  *(this + 489) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 488);
  *(this + 488) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 487);
  *(this + 487) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 486);
  *(this + 486) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 485);
  *(this + 485) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 484);
  *(this + 484) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 483);
  *(this + 483) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 482);
  *(this + 482) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 481);
  *(this + 481) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 480);
  *(this + 480) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 479);
  *(this + 479) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 478);
  *(this + 478) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 477);
  *(this + 477) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 476);
  *(this + 476) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 475);
  *(this + 475) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 474);
  *(this + 474) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(this + 473);
  *(this + 473) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 472);
  *(this + 472) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(this + 471);
  *(this + 471) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(this + 470);
  *(this + 470) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(this + 469);
  *(this + 469) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(this + 468);
  *(this + 468) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(this + 467);
  *(this + 467) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(this + 466);
  *(this + 466) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(this + 465);
  *(this + 465) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(this + 464);
  *(this + 464) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = *(this + 463);
  *(this + 463) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(this + 462);
  *(this + 462) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(this + 461);
  *(this + 461) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(this + 460);
  *(this + 460) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(this + 459);
  *(this + 459) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(this + 458);
  *(this + 458) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *(this + 457);
  *(this + 457) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(this + 456);
  *(this + 456) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  v37 = *(this + 455);
  *(this + 455) = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v38 = *(this + 454);
  *(this + 454) = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  v39 = *(this + 453);
  *(this + 453) = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  v40 = *(this + 452);
  *(this + 452) = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  v41 = *(this + 451);
  *(this + 451) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = *(this + 450);
  *(this + 450) = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  v43 = *(this + 449);
  *(this + 449) = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  v44 = *(this + 448);
  *(this + 448) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  v45 = *(this + 447);
  *(this + 447) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v46 = *(this + 446);
  *(this + 446) = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  v47 = *(this + 445);
  *(this + 445) = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  v48 = *(this + 444);
  *(this + 444) = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  v49 = *(this + 443);
  *(this + 443) = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v50 = *(this + 442);
  *(this + 442) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  v51 = *(this + 441);
  *(this + 441) = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  v52 = *(this + 440);
  *(this + 440) = 0;
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  v53 = *(this + 439);
  *(this + 439) = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = *(this + 438);
  *(this + 438) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  v55 = *(this + 437);
  *(this + 437) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  v56 = *(this + 436);
  *(this + 436) = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  v57 = *(this + 435);
  *(this + 435) = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  v58 = *(this + 434);
  *(this + 434) = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  v59 = *(this + 433);
  *(this + 433) = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  v60 = *(this + 432);
  *(this + 432) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  v61 = *(this + 431);
  *(this + 431) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *(this + 430);
  *(this + 430) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  v63 = *(this + 429);
  *(this + 429) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  v64 = *(this + 428);
  *(this + 428) = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  v65 = *(this + 427);
  *(this + 427) = 0;
  if (v65)
  {
    (*(*v65 + 8))(v65);
  }

  v66 = *(this + 426);
  *(this + 426) = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  v67 = *(this + 425);
  *(this + 425) = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  v68 = *(this + 424);
  *(this + 424) = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  v69 = *(this + 423);
  *(this + 423) = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  v70 = *(this + 422);
  *(this + 422) = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  v71 = *(this + 421);
  *(this + 421) = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  v72 = *(this + 420);
  *(this + 420) = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  v73 = *(this + 419);
  *(this + 419) = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  v74 = *(this + 418);
  *(this + 418) = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  v75 = *(this + 417);
  *(this + 417) = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  v76 = *(this + 416);
  *(this + 416) = 0;
  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  v77 = *(this + 415);
  *(this + 415) = 0;
  if (v77)
  {
    (*(*v77 + 8))(v77);
  }

  v78 = *(this + 414);
  *(this + 414) = 0;
  if (v78)
  {
    (*(*v78 + 8))(v78);
  }

  v79 = *(this + 413);
  *(this + 413) = 0;
  if (v79)
  {
    (*(*v79 + 8))(v79);
  }

  v80 = *(this + 412);
  *(this + 412) = 0;
  if (v80)
  {
    (*(*v80 + 8))(v80);
  }

  v81 = *(this + 411);
  *(this + 411) = 0;
  if (v81)
  {
    (*(*v81 + 8))(v81);
  }

  v82 = *(this + 410);
  *(this + 410) = 0;
  if (v82)
  {
    (*(*v82 + 8))(v82);
  }

  v83 = *(this + 409);
  *(this + 409) = 0;
  if (v83)
  {
    (*(*v83 + 8))(v83);
  }

  v84 = *(this + 408);
  *(this + 408) = 0;
  if (v84)
  {
    (*(*v84 + 8))(v84);
  }

  v85 = *(this + 407);
  *(this + 407) = 0;
  if (v85)
  {
    (*(*v85 + 8))(v85);
  }

  v86 = *(this + 406);
  *(this + 406) = 0;
  if (v86)
  {
    (*(*v86 + 8))(v86);
  }

  v87 = *(this + 405);
  *(this + 405) = 0;
  if (v87)
  {
    (*(*v87 + 8))(v87);
  }

  v88 = *(this + 404);
  *(this + 404) = 0;
  if (v88)
  {
    (*(*v88 + 8))(v88);
  }

  v89 = *(this + 403);
  *(this + 403) = 0;
  if (v89)
  {
    (*(*v89 + 8))(v89);
  }

  v90 = *(this + 402);
  *(this + 402) = 0;
  if (v90)
  {
    (*(*v90 + 8))(v90);
  }

  v91 = *(this + 401);
  *(this + 401) = 0;
  if (v91)
  {
    (*(*v91 + 8))(v91);
  }

  v92 = *(this + 400);
  *(this + 400) = 0;
  if (v92)
  {
    (*(*v92 + 8))(v92);
  }

  v93 = *(this + 399);
  *(this + 399) = 0;
  if (v93)
  {
    (*(*v93 + 8))(v93);
  }

  v94 = *(this + 398);
  *(this + 398) = 0;
  if (v94)
  {
    (*(*v94 + 8))(v94);
  }

  v95 = *(this + 397);
  *(this + 397) = 0;
  if (v95)
  {
    (*(*v95 + 8))(v95);
  }

  v96 = *(this + 396);
  *(this + 396) = 0;
  if (v96)
  {
    (*(*v96 + 8))(v96);
  }

  v97 = *(this + 395);
  *(this + 395) = 0;
  if (v97)
  {
    (*(*v97 + 8))(v97);
  }

  v98 = *(this + 394);
  *(this + 394) = 0;
  if (v98)
  {
    (*(*v98 + 8))(v98);
  }

  v99 = *(this + 393);
  *(this + 393) = 0;
  if (v99)
  {
    (*(*v99 + 8))(v99);
  }

  v100 = *(this + 392);
  *(this + 392) = 0;
  if (v100)
  {
    (*(*v100 + 8))(v100);
  }

  v101 = *(this + 391);
  *(this + 391) = 0;
  if (v101)
  {
    (*(*v101 + 8))(v101);
  }

  v102 = *(this + 390);
  *(this + 390) = 0;
  if (v102)
  {
    (*(*v102 + 8))(v102);
  }

  v103 = *(this + 389);
  *(this + 389) = 0;
  if (v103)
  {
    (*(*v103 + 8))(v103);
  }

  v104 = *(this + 388);
  *(this + 388) = 0;
  if (v104)
  {
    (*(*v104 + 8))(v104);
  }

  v105 = *(this + 387);
  *(this + 387) = 0;
  if (v105)
  {
    (*(*v105 + 8))(v105);
  }

  v106 = *(this + 386);
  *(this + 386) = 0;
  if (v106)
  {
    (*(*v106 + 8))(v106);
  }

  v107 = *(this + 385);
  *(this + 385) = 0;
  if (v107)
  {
    (*(*v107 + 8))(v107);
  }

  v108 = *(this + 384);
  *(this + 384) = 0;
  if (v108)
  {
    (*(*v108 + 8))(v108);
  }

  v109 = *(this + 383);
  *(this + 383) = 0;
  if (v109)
  {
    (*(*v109 + 8))(v109);
  }

  v110 = *(this + 382);
  *(this + 382) = 0;
  if (v110)
  {
    (*(*v110 + 8))(v110);
  }

  v111 = *(this + 381);
  *(this + 381) = 0;
  if (v111)
  {
    (*(*v111 + 8))(v111);
  }

  v112 = *(this + 380);
  *(this + 380) = 0;
  if (v112)
  {
    (*(*v112 + 8))(v112);
  }

  v113 = *(this + 379);
  *(this + 379) = 0;
  if (v113)
  {
    (*(*v113 + 8))(v113);
  }

  v114 = *(this + 378);
  *(this + 378) = 0;
  if (v114)
  {
    (*(*v114 + 8))(v114);
  }

  v115 = *(this + 377);
  *(this + 377) = 0;
  if (v115)
  {
    (*(*v115 + 8))(v115);
  }

  v116 = *(this + 376);
  *(this + 376) = 0;
  if (v116)
  {
    (*(*v116 + 8))(v116);
  }

  v117 = *(this + 375);
  *(this + 375) = 0;
  if (v117)
  {
    (*(*v117 + 8))(v117);
  }

  v118 = *(this + 374);
  *(this + 374) = 0;
  if (v118)
  {
    (*(*v118 + 8))(v118);
  }

  v119 = *(this + 373);
  *(this + 373) = 0;
  if (v119)
  {
    (*(*v119 + 8))(v119);
  }

  v120 = *(this + 372);
  *(this + 372) = 0;
  if (v120)
  {
    (*(*v120 + 8))(v120);
  }

  v121 = *(this + 371);
  *(this + 371) = 0;
  if (v121)
  {
    (*(*v121 + 8))(v121);
  }

  v122 = *(this + 370);
  *(this + 370) = 0;
  if (v122)
  {
    (*(*v122 + 8))(v122);
  }

  v123 = *(this + 369);
  *(this + 369) = 0;
  if (v123)
  {
    (*(*v123 + 8))(v123);
  }

  v124 = *(this + 368);
  *(this + 368) = 0;
  if (v124)
  {
    (*(*v124 + 8))(v124);
  }

  v125 = *(this + 367);
  *(this + 367) = 0;
  if (v125)
  {
    (*(*v125 + 8))(v125);
  }

  v126 = *(this + 366);
  *(this + 366) = 0;
  if (v126)
  {
    (*(*v126 + 8))(v126);
  }

  v127 = *(this + 365);
  *(this + 365) = 0;
  if (v127)
  {
    (*(*v127 + 8))(v127);
  }

  v128 = *(this + 364);
  *(this + 364) = 0;
  if (v128)
  {
    (*(*v128 + 8))(v128);
  }

  v129 = *(this + 363);
  *(this + 363) = 0;
  if (v129)
  {
    (*(*v129 + 8))(v129);
  }

  v130 = *(this + 362);
  *(this + 362) = 0;
  if (v130)
  {
    (*(*v130 + 8))(v130);
  }

  v131 = *(this + 361);
  *(this + 361) = 0;
  if (v131)
  {
    (*(*v131 + 8))(v131);
  }

  v132 = *(this + 360);
  *(this + 360) = 0;
  if (v132)
  {
    (*(*v132 + 8))(v132);
  }

  v133 = *(this + 359);
  *(this + 359) = 0;
  if (v133)
  {
    (*(*v133 + 8))(v133);
  }

  v134 = *(this + 358);
  *(this + 358) = 0;
  if (v134)
  {
    (*(*v134 + 8))(v134);
  }

  v135 = *(this + 357);
  *(this + 357) = 0;
  if (v135)
  {
    (*(*v135 + 8))(v135);
  }

  v136 = *(this + 356);
  *(this + 356) = 0;
  if (v136)
  {
    (*(*v136 + 8))(v136);
  }

  v137 = *(this + 355);
  *(this + 355) = 0;
  if (v137)
  {
    (*(*v137 + 8))(v137);
  }

  v138 = *(this + 354);
  *(this + 354) = 0;
  if (v138)
  {
    (*(*v138 + 8))(v138);
  }

  v139 = *(this + 353);
  *(this + 353) = 0;
  if (v139)
  {
    (*(*v139 + 8))(v139);
  }

  v140 = *(this + 352);
  *(this + 352) = 0;
  if (v140)
  {
    (*(*v140 + 8))(v140);
  }

  v141 = *(this + 351);
  *(this + 351) = 0;
  if (v141)
  {
    (*(*v141 + 8))(v141);
  }

  v142 = *(this + 350);
  *(this + 350) = 0;
  if (v142)
  {
    (*(*v142 + 8))(v142);
  }

  v143 = *(this + 349);
  *(this + 349) = 0;
  if (v143)
  {
    (*(*v143 + 8))(v143);
  }

  v144 = *(this + 348);
  *(this + 348) = 0;
  if (v144)
  {
    (*(*v144 + 8))(v144);
  }

  v145 = *(this + 347);
  *(this + 347) = 0;
  if (v145)
  {
    (*(*v145 + 8))(v145);
  }

  v146 = *(this + 346);
  *(this + 346) = 0;
  if (v146)
  {
    (*(*v146 + 8))(v146);
  }

  v147 = *(this + 345);
  *(this + 345) = 0;
  if (v147)
  {
    (*(*v147 + 8))(v147);
  }

  v148 = *(this + 344);
  *(this + 344) = 0;
  if (v148)
  {
    (*(*v148 + 8))(v148);
  }

  v149 = *(this + 343);
  *(this + 343) = 0;
  if (v149)
  {
    (*(*v149 + 8))(v149);
  }

  v150 = *(this + 342);
  *(this + 342) = 0;
  if (v150)
  {
    (*(*v150 + 8))(v150);
  }

  v151 = *(this + 341);
  *(this + 341) = 0;
  if (v151)
  {
    (*(*v151 + 8))(v151);
  }

  v152 = *(this + 340);
  *(this + 340) = 0;
  if (v152)
  {
    (*(*v152 + 8))(v152);
  }

  v153 = *(this + 339);
  *(this + 339) = 0;
  if (v153)
  {
    (*(*v153 + 8))(v153);
  }

  v154 = *(this + 338);
  *(this + 338) = 0;
  if (v154)
  {
    (*(*v154 + 8))(v154);
  }

  v155 = *(this + 337);
  *(this + 337) = 0;
  if (v155)
  {
    (*(*v155 + 8))(v155);
  }

  v156 = *(this + 336);
  *(this + 336) = 0;
  if (v156)
  {
    (*(*v156 + 8))(v156);
  }

  v157 = *(this + 335);
  *(this + 335) = 0;
  if (v157)
  {
    (*(*v157 + 8))(v157);
  }

  v158 = *(this + 334);
  *(this + 334) = 0;
  if (v158)
  {
    (*(*v158 + 8))(v158);
  }

  v159 = *(this + 333);
  *(this + 333) = 0;
  if (v159)
  {
    (*(*v159 + 8))(v159);
  }

  v160 = *(this + 332);
  *(this + 332) = 0;
  if (v160)
  {
    (*(*v160 + 8))(v160);
  }

  v161 = *(this + 331);
  *(this + 331) = 0;
  if (v161)
  {
    (*(*v161 + 8))(v161);
  }

  v162 = *(this + 330);
  *(this + 330) = 0;
  if (v162)
  {
    (*(*v162 + 8))(v162);
  }

  v163 = *(this + 329);
  *(this + 329) = 0;
  if (v163)
  {
    (*(*v163 + 8))(v163);
  }

  v164 = *(this + 328);
  *(this + 328) = 0;
  if (v164)
  {
    (*(*v164 + 8))(v164);
  }

  v165 = *(this + 327);
  *(this + 327) = 0;
  if (v165)
  {
    (*(*v165 + 8))(v165);
  }

  v166 = *(this + 326);
  *(this + 326) = 0;
  if (v166)
  {
    (*(*v166 + 8))(v166);
  }

  v167 = *(this + 325);
  *(this + 325) = 0;
  if (v167)
  {
    (*(*v167 + 8))(v167);
  }

  v168 = *(this + 324);
  *(this + 324) = 0;
  if (v168)
  {
    (*(*v168 + 8))(v168);
  }

  v169 = *(this + 323);
  *(this + 323) = 0;
  if (v169)
  {
    (*(*v169 + 8))(v169);
  }

  v170 = *(this + 322);
  *(this + 322) = 0;
  if (v170)
  {
    (*(*v170 + 8))(v170);
  }

  v171 = *(this + 321);
  *(this + 321) = 0;
  if (v171)
  {
    (*(*v171 + 8))(v171);
  }

  v172 = *(this + 320);
  *(this + 320) = 0;
  if (v172)
  {
    (*(*v172 + 8))(v172);
  }

  v173 = *(this + 319);
  *(this + 319) = 0;
  if (v173)
  {
    (*(*v173 + 8))(v173);
  }

  v174 = *(this + 318);
  *(this + 318) = 0;
  if (v174)
  {
    (*(*v174 + 8))(v174);
  }

  v175 = *(this + 317);
  *(this + 317) = 0;
  if (v175)
  {
    (*(*v175 + 8))(v175);
  }

  v176 = *(this + 316);
  *(this + 316) = 0;
  if (v176)
  {
    (*(*v176 + 8))(v176);
  }

  v177 = *(this + 315);
  *(this + 315) = 0;
  if (v177)
  {
    (*(*v177 + 8))(v177);
  }

  v178 = *(this + 314);
  *(this + 314) = 0;
  if (v178)
  {
    (*(*v178 + 8))(v178);
  }

  v179 = *(this + 313);
  *(this + 313) = 0;
  if (v179)
  {
    (*(*v179 + 8))(v179);
  }

  v180 = *(this + 312);
  *(this + 312) = 0;
  if (v180)
  {
    (*(*v180 + 8))(v180);
  }

  v181 = *(this + 311);
  *(this + 311) = 0;
  if (v181)
  {
    (*(*v181 + 8))(v181);
  }

  v182 = *(this + 310);
  *(this + 310) = 0;
  if (v182)
  {
    (*(*v182 + 8))(v182);
  }

  v183 = *(this + 309);
  *(this + 309) = 0;
  if (v183)
  {
    (*(*v183 + 8))(v183);
  }

  v184 = *(this + 308);
  *(this + 308) = 0;
  if (v184)
  {
    (*(*v184 + 8))(v184);
  }

  v185 = *(this + 307);
  *(this + 307) = 0;
  if (v185)
  {
    (*(*v185 + 8))(v185);
  }

  v186 = *(this + 306);
  *(this + 306) = 0;
  if (v186)
  {
    (*(*v186 + 8))(v186);
  }

  v187 = *(this + 305);
  *(this + 305) = 0;
  if (v187)
  {
    (*(*v187 + 8))(v187);
  }

  v188 = *(this + 304);
  *(this + 304) = 0;
  if (v188)
  {
    (*(*v188 + 8))(v188);
  }

  v189 = *(this + 303);
  *(this + 303) = 0;
  if (v189)
  {
    (*(*v189 + 8))(v189);
  }

  v190 = *(this + 302);
  *(this + 302) = 0;
  if (v190)
  {
    (*(*v190 + 8))(v190);
  }

  v191 = *(this + 301);
  *(this + 301) = 0;
  if (v191)
  {
    (*(*v191 + 8))(v191);
  }

  v192 = *(this + 300);
  *(this + 300) = 0;
  if (v192)
  {
    (*(*v192 + 8))(v192);
  }

  v193 = *(this + 299);
  *(this + 299) = 0;
  if (v193)
  {
    (*(*v193 + 8))(v193);
  }

  v194 = *(this + 298);
  *(this + 298) = 0;
  if (v194)
  {
    (*(*v194 + 8))(v194);
  }

  v195 = *(this + 297);
  *(this + 297) = 0;
  if (v195)
  {
    (*(*v195 + 8))(v195);
  }

  v196 = *(this + 296);
  *(this + 296) = 0;
  if (v196)
  {
    (*(*v196 + 8))(v196);
  }

  v197 = *(this + 295);
  *(this + 295) = 0;
  if (v197)
  {
    (*(*v197 + 8))(v197);
  }

  v198 = *(this + 294);
  *(this + 294) = 0;
  if (v198)
  {
    (*(*v198 + 8))(v198);
  }

  v199 = *(this + 293);
  *(this + 293) = 0;
  if (v199)
  {
    (*(*v199 + 8))(v199);
  }

  v200 = *(this + 292);
  *(this + 292) = 0;
  if (v200)
  {
    (*(*v200 + 8))(v200);
  }

  v201 = *(this + 291);
  *(this + 291) = 0;
  if (v201)
  {
    (*(*v201 + 8))(v201);
  }

  v202 = *(this + 290);
  *(this + 290) = 0;
  if (v202)
  {
    (*(*v202 + 8))(v202);
  }

  v203 = *(this + 289);
  *(this + 289) = 0;
  if (v203)
  {
    (*(*v203 + 8))(v203);
  }

  v204 = *(this + 288);
  *(this + 288) = 0;
  if (v204)
  {
    (*(*v204 + 8))(v204);
  }

  v205 = *(this + 287);
  *(this + 287) = 0;
  if (v205)
  {
    (*(*v205 + 8))(v205);
  }

  v206 = *(this + 286);
  *(this + 286) = 0;
  if (v206)
  {
    (*(*v206 + 8))(v206);
  }

  v207 = *(this + 285);
  *(this + 285) = 0;
  if (v207)
  {
    (*(*v207 + 8))(v207);
  }

  v208 = *(this + 284);
  *(this + 284) = 0;
  if (v208)
  {
    (*(*v208 + 8))(v208);
  }

  v209 = *(this + 283);
  *(this + 283) = 0;
  if (v209)
  {
    (*(*v209 + 8))(v209);
  }

  v210 = *(this + 282);
  *(this + 282) = 0;
  if (v210)
  {
    (*(*v210 + 8))(v210);
  }

  v211 = *(this + 281);
  *(this + 281) = 0;
  if (v211)
  {
    (*(*v211 + 8))(v211);
  }

  v212 = *(this + 280);
  *(this + 280) = 0;
  if (v212)
  {
    (*(*v212 + 8))(v212);
  }

  v213 = *(this + 279);
  *(this + 279) = 0;
  if (v213)
  {
    (*(*v213 + 8))(v213);
  }

  v214 = *(this + 278);
  *(this + 278) = 0;
  if (v214)
  {
    (*(*v214 + 8))(v214);
  }

  v215 = *(this + 277);
  *(this + 277) = 0;
  if (v215)
  {
    (*(*v215 + 8))(v215);
  }

  v216 = *(this + 276);
  *(this + 276) = 0;
  if (v216)
  {
    (*(*v216 + 8))(v216);
  }

  v217 = *(this + 275);
  *(this + 275) = 0;
  if (v217)
  {
    (*(*v217 + 8))(v217);
  }

  v218 = *(this + 274);
  *(this + 274) = 0;
  if (v218)
  {
    (*(*v218 + 8))(v218);
  }

  v219 = *(this + 273);
  *(this + 273) = 0;
  if (v219)
  {
    (*(*v219 + 8))(v219);
  }

  v220 = *(this + 272);
  *(this + 272) = 0;
  if (v220)
  {
    (*(*v220 + 8))(v220);
  }

  v221 = *(this + 271);
  *(this + 271) = 0;
  if (v221)
  {
    (*(*v221 + 8))(v221);
  }

  v222 = *(this + 270);
  *(this + 270) = 0;
  if (v222)
  {
    (*(*v222 + 8))(v222);
  }

  v223 = *(this + 269);
  *(this + 269) = 0;
  if (v223)
  {
    (*(*v223 + 8))(v223);
  }

  v224 = *(this + 268);
  *(this + 268) = 0;
  if (v224)
  {
    (*(*v224 + 8))(v224);
  }

  v225 = *(this + 267);
  *(this + 267) = 0;
  if (v225)
  {
    (*(*v225 + 8))(v225);
  }

  v226 = *(this + 266);
  *(this + 266) = 0;
  if (v226)
  {
    (*(*v226 + 8))(v226);
  }

  v227 = *(this + 265);
  *(this + 265) = 0;
  if (v227)
  {
    (*(*v227 + 8))(v227);
  }

  v228 = *(this + 264);
  *(this + 264) = 0;
  if (v228)
  {
    (*(*v228 + 8))(v228);
  }

  v229 = *(this + 263);
  *(this + 263) = 0;
  if (v229)
  {
    (*(*v229 + 8))(v229);
  }

  v230 = *(this + 262);
  *(this + 262) = 0;
  if (v230)
  {
    (*(*v230 + 8))(v230);
  }

  v231 = *(this + 261);
  *(this + 261) = 0;
  if (v231)
  {
    (*(*v231 + 8))(v231);
  }

  v232 = *(this + 260);
  *(this + 260) = 0;
  if (v232)
  {
    (*(*v232 + 8))(v232);
  }

  v233 = *(this + 259);
  *(this + 259) = 0;
  if (v233)
  {
    (*(*v233 + 8))(v233);
  }

  v234 = *(this + 258);
  *(this + 258) = 0;
  if (v234)
  {
    (*(*v234 + 8))(v234);
  }

  v235 = *(this + 257);
  *(this + 257) = 0;
  if (v235)
  {
    (*(*v235 + 8))(v235);
  }

  v236 = *(this + 256);
  *(this + 256) = 0;
  if (v236)
  {
    (*(*v236 + 8))(v236);
  }

  v237 = *(this + 255);
  *(this + 255) = 0;
  if (v237)
  {
    (*(*v237 + 8))(v237);
  }

  v238 = *(this + 254);
  *(this + 254) = 0;
  if (v238)
  {
    (*(*v238 + 8))(v238);
  }

  v239 = *(this + 253);
  *(this + 253) = 0;
  if (v239)
  {
    (*(*v239 + 8))(v239);
  }

  v240 = *(this + 252);
  *(this + 252) = 0;
  if (v240)
  {
    (*(*v240 + 8))(v240);
  }

  v241 = *(this + 251);
  *(this + 251) = 0;
  if (v241)
  {
    (*(*v241 + 8))(v241);
  }

  v242 = *(this + 250);
  *(this + 250) = 0;
  if (v242)
  {
    (*(*v242 + 8))(v242);
  }

  v243 = *(this + 249);
  *(this + 249) = 0;
  if (v243)
  {
    (*(*v243 + 8))(v243);
  }

  v244 = *(this + 248);
  *(this + 248) = 0;
  if (v244)
  {
    (*(*v244 + 8))(v244);
  }

  v245 = *(this + 247);
  *(this + 247) = 0;
  if (v245)
  {
    (*(*v245 + 8))(v245);
  }

  v246 = *(this + 246);
  *(this + 246) = 0;
  if (v246)
  {
    (*(*v246 + 8))(v246);
  }

  v247 = *(this + 245);
  *(this + 245) = 0;
  if (v247)
  {
    (*(*v247 + 8))(v247);
  }

  v248 = *(this + 244);
  *(this + 244) = 0;
  if (v248)
  {
    (*(*v248 + 8))(v248);
  }

  v249 = *(this + 243);
  *(this + 243) = 0;
  if (v249)
  {
    (*(*v249 + 8))(v249);
  }

  v250 = *(this + 242);
  *(this + 242) = 0;
  if (v250)
  {
    (*(*v250 + 8))(v250);
  }

  v251 = *(this + 241);
  *(this + 241) = 0;
  if (v251)
  {
    (*(*v251 + 8))(v251);
  }

  v252 = *(this + 240);
  *(this + 240) = 0;
  if (v252)
  {
    (*(*v252 + 8))(v252);
  }

  v253 = *(this + 239);
  *(this + 239) = 0;
  if (v253)
  {
    (*(*v253 + 8))(v253);
  }

  v254 = *(this + 238);
  *(this + 238) = 0;
  if (v254)
  {
    (*(*v254 + 8))(v254);
  }

  v255 = *(this + 237);
  *(this + 237) = 0;
  if (v255)
  {
    (*(*v255 + 8))(v255);
  }

  v256 = *(this + 236);
  *(this + 236) = 0;
  if (v256)
  {
    (*(*v256 + 8))(v256);
  }

  v257 = *(this + 235);
  *(this + 235) = 0;
  if (v257)
  {
    (*(*v257 + 8))(v257);
  }

  v258 = *(this + 234);
  *(this + 234) = 0;
  if (v258)
  {
    (*(*v258 + 8))(v258);
  }

  v259 = *(this + 233);
  *(this + 233) = 0;
  if (v259)
  {
    (*(*v259 + 8))(v259);
  }

  v260 = *(this + 232);
  *(this + 232) = 0;
  if (v260)
  {
    (*(*v260 + 8))(v260);
  }

  v261 = *(this + 231);
  *(this + 231) = 0;
  if (v261)
  {
    (*(*v261 + 8))(v261);
  }

  v262 = *(this + 230);
  *(this + 230) = 0;
  if (v262)
  {
    (*(*v262 + 8))(v262);
  }

  v263 = *(this + 229);
  *(this + 229) = 0;
  if (v263)
  {
    (*(*v263 + 8))(v263);
  }

  v264 = *(this + 228);
  *(this + 228) = 0;
  if (v264)
  {
    (*(*v264 + 8))(v264);
  }

  v265 = *(this + 227);
  *(this + 227) = 0;
  if (v265)
  {
    (*(*v265 + 8))(v265);
  }

  v266 = *(this + 226);
  *(this + 226) = 0;
  if (v266)
  {
    (*(*v266 + 8))(v266);
  }

  v267 = *(this + 225);
  *(this + 225) = 0;
  if (v267)
  {
    (*(*v267 + 8))(v267);
  }

  v268 = *(this + 224);
  *(this + 224) = 0;
  if (v268)
  {
    (*(*v268 + 8))(v268);
  }

  v269 = *(this + 223);
  *(this + 223) = 0;
  if (v269)
  {
    (*(*v269 + 8))(v269);
  }

  v270 = *(this + 222);
  *(this + 222) = 0;
  if (v270)
  {
    (*(*v270 + 8))(v270);
  }

  v271 = *(this + 221);
  *(this + 221) = 0;
  if (v271)
  {
    (*(*v271 + 8))(v271);
  }

  v272 = *(this + 220);
  *(this + 220) = 0;
  if (v272)
  {
    (*(*v272 + 8))(v272);
  }

  v273 = *(this + 219);
  *(this + 219) = 0;
  if (v273)
  {
    (*(*v273 + 8))(v273);
  }

  v274 = *(this + 218);
  *(this + 218) = 0;
  if (v274)
  {
    (*(*v274 + 8))(v274);
  }

  v275 = *(this + 217);
  *(this + 217) = 0;
  if (v275)
  {
    (*(*v275 + 8))(v275);
  }

  v276 = *(this + 216);
  *(this + 216) = 0;
  if (v276)
  {
    (*(*v276 + 8))(v276);
  }

  v277 = *(this + 215);
  *(this + 215) = 0;
  if (v277)
  {
    (*(*v277 + 8))(v277);
  }

  v278 = *(this + 214);
  *(this + 214) = 0;
  if (v278)
  {
    (*(*v278 + 8))(v278);
  }

  v279 = *(this + 213);
  *(this + 213) = 0;
  if (v279)
  {
    (*(*v279 + 8))(v279);
  }

  v280 = *(this + 212);
  *(this + 212) = 0;
  if (v280)
  {
    (*(*v280 + 8))(v280);
  }

  v281 = *(this + 211);
  *(this + 211) = 0;
  if (v281)
  {
    (*(*v281 + 8))(v281);
  }

  v282 = *(this + 210);
  *(this + 210) = 0;
  if (v282)
  {
    (*(*v282 + 8))(v282);
  }

  v283 = *(this + 209);
  *(this + 209) = 0;
  if (v283)
  {
    (*(*v283 + 8))(v283);
  }

  v284 = *(this + 208);
  *(this + 208) = 0;
  if (v284)
  {
    (*(*v284 + 8))(v284);
  }

  v285 = *(this + 207);
  *(this + 207) = 0;
  if (v285)
  {
    (*(*v285 + 8))(v285);
  }

  v286 = *(this + 206);
  *(this + 206) = 0;
  if (v286)
  {
    (*(*v286 + 8))(v286);
  }

  v287 = *(this + 205);
  *(this + 205) = 0;
  if (v287)
  {
    (*(*v287 + 8))(v287);
  }

  v288 = *(this + 204);
  *(this + 204) = 0;
  if (v288)
  {
    (*(*v288 + 8))(v288);
  }

  v289 = *(this + 203);
  *(this + 203) = 0;
  if (v289)
  {
    (*(*v289 + 8))(v289);
  }

  v290 = *(this + 202);
  *(this + 202) = 0;
  if (v290)
  {
    (*(*v290 + 8))(v290);
  }

  v291 = *(this + 201);
  *(this + 201) = 0;
  if (v291)
  {
    (*(*v291 + 8))(v291);
  }

  v292 = *(this + 200);
  *(this + 200) = 0;
  if (v292)
  {
    (*(*v292 + 8))(v292);
  }

  v293 = *(this + 199);
  *(this + 199) = 0;
  if (v293)
  {
    (*(*v293 + 8))(v293);
  }

  v294 = *(this + 198);
  *(this + 198) = 0;
  if (v294)
  {
    (*(*v294 + 8))(v294);
  }

  v295 = *(this + 197);
  *(this + 197) = 0;
  if (v295)
  {
    (*(*v295 + 8))(v295);
  }

  v296 = *(this + 196);
  *(this + 196) = 0;
  if (v296)
  {
    (*(*v296 + 8))(v296);
  }

  v297 = *(this + 195);
  *(this + 195) = 0;
  if (v297)
  {
    (*(*v297 + 8))(v297);
  }

  v298 = *(this + 194);
  *(this + 194) = 0;
  if (v298)
  {
    (*(*v298 + 8))(v298);
  }

  v299 = *(this + 193);
  *(this + 193) = 0;
  if (v299)
  {
    (*(*v299 + 8))(v299);
  }

  v300 = *(this + 192);
  *(this + 192) = 0;
  if (v300)
  {
    (*(*v300 + 8))(v300);
  }

  v301 = *(this + 191);
  *(this + 191) = 0;
  if (v301)
  {
    (*(*v301 + 8))(v301);
  }

  v302 = *(this + 190);
  *(this + 190) = 0;
  if (v302)
  {
    (*(*v302 + 8))(v302);
  }

  v303 = *(this + 189);
  *(this + 189) = 0;
  if (v303)
  {
    (*(*v303 + 8))(v303);
  }

  v304 = *(this + 188);
  *(this + 188) = 0;
  if (v304)
  {
    (*(*v304 + 8))(v304);
  }

  v305 = *(this + 187);
  *(this + 187) = 0;
  if (v305)
  {
    (*(*v305 + 8))(v305);
  }

  v306 = *(this + 186);
  *(this + 186) = 0;
  if (v306)
  {
    (*(*v306 + 8))(v306);
  }

  v307 = *(this + 185);
  *(this + 185) = 0;
  if (v307)
  {
    (*(*v307 + 8))(v307);
  }

  v308 = *(this + 184);
  *(this + 184) = 0;
  if (v308)
  {
    (*(*v308 + 8))(v308);
  }

  v309 = *(this + 183);
  *(this + 183) = 0;
  if (v309)
  {
    (*(*v309 + 8))(v309);
  }

  v310 = *(this + 182);
  *(this + 182) = 0;
  if (v310)
  {
    (*(*v310 + 8))(v310);
  }

  v311 = *(this + 181);
  *(this + 181) = 0;
  if (v311)
  {
    (*(*v311 + 8))(v311);
  }

  v312 = *(this + 180);
  *(this + 180) = 0;
  if (v312)
  {
    (*(*v312 + 8))(v312);
  }

  v313 = *(this + 179);
  *(this + 179) = 0;
  if (v313)
  {
    (*(*v313 + 8))(v313);
  }

  v314 = *(this + 178);
  *(this + 178) = 0;
  if (v314)
  {
    (*(*v314 + 8))(v314);
  }

  v315 = *(this + 177);
  *(this + 177) = 0;
  if (v315)
  {
    (*(*v315 + 8))(v315);
  }

  v316 = *(this + 176);
  *(this + 176) = 0;
  if (v316)
  {
    (*(*v316 + 8))(v316);
  }

  v317 = *(this + 175);
  *(this + 175) = 0;
  if (v317)
  {
    (*(*v317 + 8))(v317);
  }

  v318 = *(this + 174);
  *(this + 174) = 0;
  if (v318)
  {
    (*(*v318 + 8))(v318);
  }

  v319 = *(this + 173);
  *(this + 173) = 0;
  if (v319)
  {
    (*(*v319 + 8))(v319);
  }

  v320 = *(this + 172);
  *(this + 172) = 0;
  if (v320)
  {
    (*(*v320 + 8))(v320);
  }

  v321 = *(this + 171);
  *(this + 171) = 0;
  if (v321)
  {
    (*(*v321 + 8))(v321);
  }

  v322 = *(this + 170);
  *(this + 170) = 0;
  if (v322)
  {
    (*(*v322 + 8))(v322);
  }

  v323 = *(this + 169);
  *(this + 169) = 0;
  if (v323)
  {
    (*(*v323 + 8))(v323);
  }

  v324 = *(this + 168);
  *(this + 168) = 0;
  if (v324)
  {
    (*(*v324 + 8))(v324);
  }

  v325 = *(this + 167);
  *(this + 167) = 0;
  if (v325)
  {
    (*(*v325 + 8))(v325);
  }

  v326 = *(this + 166);
  *(this + 166) = 0;
  if (v326)
  {
    (*(*v326 + 8))(v326);
  }

  v327 = *(this + 165);
  *(this + 165) = 0;
  if (v327)
  {
    (*(*v327 + 8))(v327);
  }

  v328 = *(this + 164);
  *(this + 164) = 0;
  if (v328)
  {
    (*(*v328 + 8))(v328);
  }

  v329 = *(this + 163);
  *(this + 163) = 0;
  if (v329)
  {
    (*(*v329 + 8))(v329);
  }

  v330 = *(this + 162);
  *(this + 162) = 0;
  if (v330)
  {
    (*(*v330 + 8))(v330);
  }

  v331 = *(this + 161);
  *(this + 161) = 0;
  if (v331)
  {
    (*(*v331 + 8))(v331);
  }

  v332 = *(this + 160);
  *(this + 160) = 0;
  if (v332)
  {
    (*(*v332 + 8))(v332);
  }

  v333 = *(this + 159);
  *(this + 159) = 0;
  if (v333)
  {
    (*(*v333 + 8))(v333);
  }

  v334 = *(this + 158);
  *(this + 158) = 0;
  if (v334)
  {
    (*(*v334 + 8))(v334);
  }

  v335 = *(this + 157);
  *(this + 157) = 0;
  if (v335)
  {
    (*(*v335 + 8))(v335);
  }

  v336 = *(this + 156);
  *(this + 156) = 0;
  if (v336)
  {
    (*(*v336 + 8))(v336);
  }

  v337 = *(this + 155);
  *(this + 155) = 0;
  if (v337)
  {
    (*(*v337 + 8))(v337);
  }

  v338 = *(this + 154);
  *(this + 154) = 0;
  if (v338)
  {
    (*(*v338 + 8))(v338);
  }

  v339 = *(this + 153);
  *(this + 153) = 0;
  if (v339)
  {
    (*(*v339 + 8))(v339);
  }

  v340 = *(this + 152);
  *(this + 152) = 0;
  if (v340)
  {
    (*(*v340 + 8))(v340);
  }

  v341 = *(this + 151);
  *(this + 151) = 0;
  if (v341)
  {
    (*(*v341 + 8))(v341);
  }

  v342 = *(this + 150);
  *(this + 150) = 0;
  if (v342)
  {
    (*(*v342 + 8))(v342);
  }

  v343 = *(this + 149);
  *(this + 149) = 0;
  if (v343)
  {
    (*(*v343 + 8))(v343);
  }

  v344 = *(this + 148);
  *(this + 148) = 0;
  if (v344)
  {
    (*(*v344 + 8))(v344);
  }

  v345 = *(this + 147);
  *(this + 147) = 0;
  if (v345)
  {
    (*(*v345 + 8))(v345);
  }

  v346 = *(this + 146);
  *(this + 146) = 0;
  if (v346)
  {
    (*(*v346 + 8))(v346);
  }

  v347 = *(this + 145);
  *(this + 145) = 0;
  if (v347)
  {
    (*(*v347 + 8))(v347);
  }

  v348 = *(this + 144);
  *(this + 144) = 0;
  if (v348)
  {
    (*(*v348 + 8))(v348);
  }

  v349 = *(this + 143);
  *(this + 143) = 0;
  if (v349)
  {
    (*(*v349 + 8))(v349);
  }

  v350 = *(this + 142);
  *(this + 142) = 0;
  if (v350)
  {
    (*(*v350 + 8))(v350);
  }

  v351 = *(this + 141);
  *(this + 141) = 0;
  if (v351)
  {
    (*(*v351 + 8))(v351);
  }

  v352 = *(this + 140);
  *(this + 140) = 0;
  if (v352)
  {
    (*(*v352 + 8))(v352);
  }

  v353 = *(this + 139);
  *(this + 139) = 0;
  if (v353)
  {
    (*(*v353 + 8))(v353);
  }

  v354 = *(this + 138);
  *(this + 138) = 0;
  if (v354)
  {
    (*(*v354 + 8))(v354);
  }

  v355 = *(this + 137);
  *(this + 137) = 0;
  if (v355)
  {
    (*(*v355 + 8))(v355);
  }

  v356 = *(this + 136);
  *(this + 136) = 0;
  if (v356)
  {
    (*(*v356 + 8))(v356);
  }

  v357 = *(this + 135);
  *(this + 135) = 0;
  if (v357)
  {
    (*(*v357 + 8))(v357);
  }

  v358 = *(this + 134);
  *(this + 134) = 0;
  if (v358)
  {
    (*(*v358 + 8))(v358);
  }

  v359 = *(this + 133);
  *(this + 133) = 0;
  if (v359)
  {
    (*(*v359 + 8))(v359);
  }

  v360 = *(this + 132);
  *(this + 132) = 0;
  if (v360)
  {
    (*(*v360 + 8))(v360);
  }

  v361 = *(this + 131);
  *(this + 131) = 0;
  if (v361)
  {
    (*(*v361 + 8))(v361);
  }

  v362 = *(this + 130);
  *(this + 130) = 0;
  if (v362)
  {
    (*(*v362 + 8))(v362);
  }

  v363 = *(this + 129);
  *(this + 129) = 0;
  if (v363)
  {
    (*(*v363 + 8))(v363);
  }

  v364 = *(this + 128);
  *(this + 128) = 0;
  if (v364)
  {
    (*(*v364 + 8))(v364);
  }

  v365 = *(this + 127);
  *(this + 127) = 0;
  if (v365)
  {
    (*(*v365 + 8))(v365);
  }

  v366 = *(this + 126);
  *(this + 126) = 0;
  if (v366)
  {
    (*(*v366 + 8))(v366);
  }

  v367 = *(this + 125);
  *(this + 125) = 0;
  if (v367)
  {
    (*(*v367 + 8))(v367);
  }

  v368 = *(this + 124);
  *(this + 124) = 0;
  if (v368)
  {
    (*(*v368 + 8))(v368);
  }

  v369 = *(this + 123);
  *(this + 123) = 0;
  if (v369)
  {
    (*(*v369 + 8))(v369);
  }

  v370 = *(this + 122);
  *(this + 122) = 0;
  if (v370)
  {
    (*(*v370 + 8))(v370);
  }

  v371 = *(this + 121);
  *(this + 121) = 0;
  if (v371)
  {
    (*(*v371 + 8))(v371);
  }

  v372 = *(this + 120);
  *(this + 120) = 0;
  if (v372)
  {
    (*(*v372 + 8))(v372);
  }

  v373 = *(this + 119);
  *(this + 119) = 0;
  if (v373)
  {
    (*(*v373 + 8))(v373);
  }

  v374 = *(this + 118);
  *(this + 118) = 0;
  if (v374)
  {
    (*(*v374 + 8))(v374);
  }

  v375 = *(this + 117);
  *(this + 117) = 0;
  if (v375)
  {
    (*(*v375 + 8))(v375);
  }

  v376 = *(this + 116);
  *(this + 116) = 0;
  if (v376)
  {
    (*(*v376 + 8))(v376);
  }

  v377 = *(this + 115);
  *(this + 115) = 0;
  if (v377)
  {
    (*(*v377 + 8))(v377);
  }

  v378 = *(this + 114);
  *(this + 114) = 0;
  if (v378)
  {
    (*(*v378 + 8))(v378);
  }

  v379 = *(this + 113);
  *(this + 113) = 0;
  if (v379)
  {
    (*(*v379 + 8))(v379);
  }

  v380 = *(this + 112);
  *(this + 112) = 0;
  if (v380)
  {
    (*(*v380 + 8))(v380);
  }

  v381 = *(this + 111);
  *(this + 111) = 0;
  if (v381)
  {
    (*(*v381 + 8))(v381);
  }

  v382 = *(this + 110);
  *(this + 110) = 0;
  if (v382)
  {
    (*(*v382 + 8))(v382);
  }

  v383 = *(this + 109);
  *(this + 109) = 0;
  if (v383)
  {
    (*(*v383 + 8))(v383);
  }

  v384 = *(this + 108);
  *(this + 108) = 0;
  if (v384)
  {
    (*(*v384 + 8))(v384);
  }

  v385 = *(this + 107);
  *(this + 107) = 0;
  if (v385)
  {
    (*(*v385 + 8))(v385);
  }

  v386 = *(this + 106);
  *(this + 106) = 0;
  if (v386)
  {
    (*(*v386 + 8))(v386);
  }

  v387 = *(this + 105);
  *(this + 105) = 0;
  if (v387)
  {
    (*(*v387 + 8))(v387);
  }

  v388 = *(this + 104);
  *(this + 104) = 0;
  if (v388)
  {
    (*(*v388 + 8))(v388);
  }

  v389 = *(this + 103);
  *(this + 103) = 0;
  if (v389)
  {
    (*(*v389 + 8))(v389);
  }

  v390 = *(this + 102);
  *(this + 102) = 0;
  if (v390)
  {
    (*(*v390 + 8))(v390);
  }

  v391 = *(this + 101);
  *(this + 101) = 0;
  if (v391)
  {
    (*(*v391 + 8))(v391);
  }

  v392 = *(this + 100);
  *(this + 100) = 0;
  if (v392)
  {
    (*(*v392 + 8))(v392);
  }

  v393 = *(this + 99);
  *(this + 99) = 0;
  if (v393)
  {
    (*(*v393 + 8))(v393);
  }

  v394 = *(this + 98);
  *(this + 98) = 0;
  if (v394)
  {
    (*(*v394 + 8))(v394);
  }

  v395 = *(this + 97);
  *(this + 97) = 0;
  if (v395)
  {
    (*(*v395 + 8))(v395);
  }

  v396 = *(this + 96);
  *(this + 96) = 0;
  if (v396)
  {
    (*(*v396 + 8))(v396);
  }

  v397 = *(this + 95);
  *(this + 95) = 0;
  if (v397)
  {
    (*(*v397 + 8))(v397);
  }

  v398 = *(this + 94);
  *(this + 94) = 0;
  if (v398)
  {
    (*(*v398 + 8))(v398);
  }

  v399 = *(this + 93);
  *(this + 93) = 0;
  if (v399)
  {
    (*(*v399 + 8))(v399);
  }

  v400 = *(this + 92);
  *(this + 92) = 0;
  if (v400)
  {
    (*(*v400 + 8))(v400);
  }

  v401 = *(this + 91);
  *(this + 91) = 0;
  if (v401)
  {
    (*(*v401 + 8))(v401);
  }

  v402 = *(this + 90);
  *(this + 90) = 0;
  if (v402)
  {
    (*(*v402 + 8))(v402);
  }

  v403 = *(this + 89);
  *(this + 89) = 0;
  if (v403)
  {
    (*(*v403 + 8))(v403);
  }

  v404 = *(this + 88);
  *(this + 88) = 0;
  if (v404)
  {
    (*(*v404 + 8))(v404);
  }

  v405 = *(this + 86);
  *(this + 86) = 0;
  if (v405)
  {
    (*(*v405 + 8))(v405);
  }

  v406 = *(this + 85);
  *(this + 85) = 0;
  if (v406)
  {
    (*(*v406 + 8))(v406);
  }

  v407 = *(this + 84);
  *(this + 84) = 0;
  if (v407)
  {
    (*(*v407 + 8))(v407);
  }

  v408 = *(this + 83);
  *(this + 83) = 0;
  if (v408)
  {
    (*(*v408 + 8))(v408);
  }

  v409 = *(this + 82);
  *(this + 82) = 0;
  if (v409)
  {
    (*(*v409 + 8))(v409);
  }

  v410 = *(this + 81);
  *(this + 81) = 0;
  if (v410)
  {
    (*(*v410 + 8))(v410);
  }

  v411 = *(this + 80);
  *(this + 80) = 0;
  if (v411)
  {
    (*(*v411 + 8))(v411);
  }

  v412 = *(this + 79);
  *(this + 79) = 0;
  if (v412)
  {
    (*(*v412 + 8))(v412);
  }

  v413 = *(this + 78);
  *(this + 78) = 0;
  if (v413)
  {
    (*(*v413 + 8))(v413);
  }

  v414 = *(this + 77);
  *(this + 77) = 0;
  if (v414)
  {
    (*(*v414 + 8))(v414);
  }

  v415 = *(this + 76);
  *(this + 76) = 0;
  if (v415)
  {
    (*(*v415 + 8))(v415);
  }

  v416 = *(this + 75);
  *(this + 75) = 0;
  if (v416)
  {
    (*(*v416 + 8))(v416);
  }

  v417 = *(this + 74);
  *(this + 74) = 0;
  if (v417)
  {
    (*(*v417 + 8))(v417);
  }

  v418 = *(this + 73);
  *(this + 73) = 0;
  if (v418)
  {
    (*(*v418 + 8))(v418);
  }

  v419 = *(this + 72);
  *(this + 72) = 0;
  if (v419)
  {
    (*(*v419 + 8))(v419);
  }

  v420 = *(this + 71);
  *(this + 71) = 0;
  if (v420)
  {
    (*(*v420 + 8))(v420);
  }

  v421 = *(this + 70);
  *(this + 70) = 0;
  if (v421)
  {
    (*(*v421 + 8))(v421);
  }

  v422 = *(this + 69);
  *(this + 69) = 0;
  if (v422)
  {
    (*(*v422 + 8))(v422);
  }

  v423 = *(this + 68);
  *(this + 68) = 0;
  if (v423)
  {
    (*(*v423 + 8))(v423);
  }

  v424 = *(this + 67);
  *(this + 67) = 0;
  if (v424)
  {
    (*(*v424 + 8))(v424);
  }

  v425 = *(this + 66);
  *(this + 66) = 0;
  if (v425)
  {
    (*(*v425 + 8))(v425);
  }

  v426 = *(this + 65);
  *(this + 65) = 0;
  if (v426)
  {
    (*(*v426 + 8))(v426);
  }

  v427 = *(this + 64);
  *(this + 64) = 0;
  if (v427)
  {
    (*(*v427 + 8))(v427);
  }

  v428 = *(this + 63);
  *(this + 63) = 0;
  if (v428)
  {
    (*(*v428 + 8))(v428);
  }

  v429 = *(this + 62);
  *(this + 62) = 0;
  if (v429)
  {
    (*(*v429 + 8))(v429);
  }

  v430 = *(this + 61);
  *(this + 61) = 0;
  if (v430)
  {
    (*(*v430 + 8))(v430);
  }

  v431 = *(this + 60);
  *(this + 60) = 0;
  if (v431)
  {
    (*(*v431 + 8))(v431);
  }

  v432 = *(this + 59);
  *(this + 59) = 0;
  if (v432)
  {
    (*(*v432 + 8))(v432);
  }

  v433 = *(this + 58);
  *(this + 58) = 0;
  if (v433)
  {
    (*(*v433 + 8))(v433);
  }

  v434 = *(this + 57);
  *(this + 57) = 0;
  if (v434)
  {
    (*(*v434 + 8))(v434);
  }

  v435 = *(this + 56);
  *(this + 56) = 0;
  if (v435)
  {
    (*(*v435 + 8))(v435);
  }

  v436 = *(this + 55);
  *(this + 55) = 0;
  if (v436)
  {
    (*(*v436 + 8))(v436);
  }

  v437 = *(this + 54);
  *(this + 54) = 0;
  if (v437)
  {
    (*(*v437 + 8))(v437);
  }

  v438 = *(this + 53);
  *(this + 53) = 0;
  if (v438)
  {
    (*(*v438 + 8))(v438);
  }

  v439 = *(this + 52);
  *(this + 52) = 0;
  if (v439)
  {
    (*(*v439 + 8))(v439);
  }

  v440 = *(this + 51);
  *(this + 51) = 0;
  if (v440)
  {
    (*(*v440 + 8))(v440);
  }

  v441 = *(this + 50);
  *(this + 50) = 0;
  if (v441)
  {
    (*(*v441 + 8))(v441);
  }

  v442 = *(this + 49);
  *(this + 49) = 0;
  if (v442)
  {
    (*(*v442 + 8))(v442);
  }

  v443 = *(this + 48);
  *(this + 48) = 0;
  if (v443)
  {
    (*(*v443 + 8))(v443);
  }

  v444 = *(this + 47);
  *(this + 47) = 0;
  if (v444)
  {
    (*(*v444 + 8))(v444);
  }

  v445 = *(this + 46);
  *(this + 46) = 0;
  if (v445)
  {
    (*(*v445 + 8))(v445);
  }

  v446 = *(this + 45);
  *(this + 45) = 0;
  if (v446)
  {
    (*(*v446 + 8))(v446);
  }

  v447 = *(this + 44);
  *(this + 44) = 0;
  if (v447)
  {
    (*(*v447 + 8))(v447);
  }

  v448 = *(this + 43);
  *(this + 43) = 0;
  if (v448)
  {
    (*(*v448 + 8))(v448);
  }

  v449 = *(this + 42);
  *(this + 42) = 0;
  if (v449)
  {
    (*(*v449 + 8))(v449);
  }

  v450 = *(this + 41);
  *(this + 41) = 0;
  if (v450)
  {
    (*(*v450 + 8))(v450);
  }

  v451 = *(this + 40);
  *(this + 40) = 0;
  if (v451)
  {
    (*(*v451 + 8))(v451);
  }

  v452 = *(this + 39);
  *(this + 39) = 0;
  if (v452)
  {
    (*(*v452 + 8))(v452);
  }

  v453 = *(this + 38);
  *(this + 38) = 0;
  if (v453)
  {
    (*(*v453 + 8))(v453);
  }

  v454 = *(this + 37);
  *(this + 37) = 0;
  if (v454)
  {
    (*(*v454 + 8))(v454);
  }

  v455 = *(this + 36);
  *(this + 36) = 0;
  if (v455)
  {
    (*(*v455 + 8))(v455);
  }

  v456 = *(this + 35);
  *(this + 35) = 0;
  if (v456)
  {
    (*(*v456 + 8))(v456);
  }

  v457 = *(this + 34);
  *(this + 34) = 0;
  if (v457)
  {
    (*(*v457 + 8))(v457);
  }

  v458 = *(this + 33);
  *(this + 33) = 0;
  if (v458)
  {
    (*(*v458 + 8))(v458);
  }

  v459 = *(this + 32);
  *(this + 32) = 0;
  if (v459)
  {
    (*(*v459 + 8))(v459);
  }

  v460 = *(this + 31);
  *(this + 31) = 0;
  if (v460)
  {
    (*(*v460 + 8))(v460);
  }

  v461 = *(this + 30);
  *(this + 30) = 0;
  if (v461)
  {
    (*(*v461 + 8))(v461);
  }

  v462 = *(this + 29);
  *(this + 29) = 0;
  if (v462)
  {
    (*(*v462 + 8))(v462);
  }

  v463 = *(this + 28);
  *(this + 28) = 0;
  if (v463)
  {
    (*(*v463 + 8))(v463);
  }

  v464 = *(this + 27);
  *(this + 27) = 0;
  if (v464)
  {
    (*(*v464 + 8))(v464);
  }

  v465 = *(this + 26);
  *(this + 26) = 0;
  if (v465)
  {
    (*(*v465 + 8))(v465);
  }

  v466 = *(this + 25);
  *(this + 25) = 0;
  if (v466)
  {
    (*(*v466 + 8))(v466);
  }

  v467 = *(this + 24);
  *(this + 24) = 0;
  if (v467)
  {
    (*(*v467 + 8))(v467);
  }

  v468 = *(this + 23);
  *(this + 23) = 0;
  if (v468)
  {
    (*(*v468 + 8))(v468);
  }

  v469 = *(this + 22);
  *(this + 22) = 0;
  if (v469)
  {
    (*(*v469 + 8))(v469);
  }

  v470 = *(this + 21);
  *(this + 21) = 0;
  if (v470)
  {
    (*(*v470 + 8))(v470);
  }

  v471 = *(this + 20);
  *(this + 20) = 0;
  if (v471)
  {
    (*(*v471 + 8))(v471);
  }

  v472 = *(this + 19);
  *(this + 19) = 0;
  if (v472)
  {
    (*(*v472 + 8))(v472);
  }

  v473 = *(this + 18);
  *(this + 18) = 0;
  if (v473)
  {
    (*(*v473 + 8))(v473);
  }

  v474 = *(this + 17);
  *(this + 17) = 0;
  if (v474)
  {
    (*(*v474 + 8))(v474);
  }

  v475 = *(this + 16);
  *(this + 16) = 0;
  if (v475)
  {
    (*(*v475 + 8))(v475);
  }

  v476 = *(this + 15);
  *(this + 15) = 0;
  if (v476)
  {
    (*(*v476 + 8))(v476);
  }

  v477 = *(this + 14);
  *(this + 14) = 0;
  if (v477)
  {
    (*(*v477 + 8))(v477);
  }

  v478 = *(this + 13);
  *(this + 13) = 0;
  if (v478)
  {
    (*(*v478 + 8))(v478);
  }

  v479 = *(this + 12);
  *(this + 12) = 0;
  if (v479)
  {
    (*(*v479 + 8))(v479);
  }

  v480 = *(this + 11);
  *(this + 11) = 0;
  if (v480)
  {
    (*(*v480 + 8))(v480);
  }

  v481 = *(this + 10);
  *(this + 10) = 0;
  if (v481)
  {
    (*(*v481 + 8))(v481);
  }

  v482 = *(this + 9);
  *(this + 9) = 0;
  if (v482)
  {
    (*(*v482 + 8))(v482);
  }

  v483 = *(this + 8);
  *(this + 8) = 0;
  if (v483)
  {
    (*(*v483 + 8))(v483);
  }

  v484 = *(this + 7);
  *(this + 7) = 0;
  if (v484)
  {
    (*(*v484 + 8))(v484);
  }

  v485 = *(this + 6);
  *(this + 6) = 0;
  if (v485)
  {
    (*(*v485 + 8))(v485);
  }

  v486 = *(this + 5);
  *(this + 5) = 0;
  if (v486)
  {
    (*(*v486 + 8))(v486);
  }

  v487 = *(this + 4);
  *(this + 4) = 0;
  if (v487)
  {
    (*(*v487 + 8))(v487);
  }

  v488 = *(this + 3);
  *(this + 3) = 0;
  if (v488)
  {
    (*(*v488 + 8))(v488);
  }

  v489 = *(this + 2);
  *(this + 2) = 0;
  if (v489)
  {
    (*(*v489 + 8))(v489);
  }

  v490 = *(this + 1);
  *(this + 1) = 0;
  if (v490)
  {
    (*(*v490 + 8))(v490);
  }

  PB::Base::~Base(this);
}

void sub_19B51DBD8(PB::Base *a1)
{
  sub_19B517FD4(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B51DC10(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "aFDeviceMotionConfig");
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "aFHeartRate");
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    (*(*v7 + 32))(v7, this, "aPSleep");
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(*v8 + 32))(v8, this, "aPWake");
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(*v9 + 32))(v9, this, "accel");
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(*v10 + 32))(v10, this, "accel800");
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(*v11 + 32))(v11, this, "accelBatch");
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    (*(*v12 + 32))(v12, this, "accelBiasEstimate");
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    (*(*v13 + 32))(v13, this, "accelGesture");
  }

  v14 = *(a1 + 80);
  if (v14)
  {
    (*(*v14 + 32))(v14, this, "accelGps");
  }

  v15 = *(a1 + 88);
  if (v15)
  {
    (*(*v15 + 32))(v15, this, "accelOscarEmu");
  }

  v16 = *(a1 + 96);
  if (v16)
  {
    (*(*v16 + 32))(v16, this, "accelTNBFrame");
  }

  v17 = *(a1 + 104);
  if (v17)
  {
    (*(*v17 + 32))(v17, this, "accelerometerPace");
  }

  v18 = *(a1 + 112);
  if (v18)
  {
    (*(*v18 + 32))(v18, this, "accessoryAccel");
  }

  v19 = *(a1 + 120);
  if (v19)
  {
    (*(*v19 + 32))(v19, this, "accessoryAccelConfig");
  }

  v20 = *(a1 + 128);
  if (v20)
  {
    (*(*v20 + 32))(v20, this, "accessoryActivityAsleepConfidenceEpoch");
  }

  v21 = *(a1 + 136);
  if (v21)
  {
    (*(*v21 + 32))(v21, this, "accessoryActivityStateUpdate");
  }

  v22 = *(a1 + 144);
  if (v22)
  {
    (*(*v22 + 32))(v22, this, "accessoryBatchedPPG");
  }

  v23 = *(a1 + 152);
  if (v23)
  {
    (*(*v23 + 32))(v23, this, "accessoryConfig");
  }

  v24 = *(a1 + 160);
  if (v24)
  {
    (*(*v24 + 32))(v24, this, "accessoryDeviceMotion");
  }

  v25 = *(a1 + 168);
  if (v25)
  {
    (*(*v25 + 32))(v25, this, "accessoryDeviceMotionConfig");
  }

  v26 = *(a1 + 176);
  if (v26)
  {
    (*(*v26 + 32))(v26, this, "accessoryGyro");
  }

  v27 = *(a1 + 184);
  if (v27)
  {
    (*(*v27 + 32))(v27, this, "accessoryGyroCachedBias");
  }

  v28 = *(a1 + 192);
  if (v28)
  {
    (*(*v28 + 32))(v28, this, "accessoryGyroConfig");
  }

  v29 = *(a1 + 200);
  if (v29)
  {
    (*(*v29 + 32))(v29, this, "accessoryGyroGYTT");
  }

  v30 = *(a1 + 208);
  if (v30)
  {
    (*(*v30 + 32))(v30, this, "accessoryHeartRate");
  }

  v31 = *(a1 + 216);
  if (v31)
  {
    (*(*v31 + 32))(v31, this, "accessoryInEarDetection");
  }

  v32 = *(a1 + 224);
  if (v32)
  {
    (*(*v32 + 32))(v32, this, "accessoryInEarStatus");
  }

  v33 = *(a1 + 232);
  if (v33)
  {
    (*(*v33 + 32))(v33, this, "accessoryMagnetometer");
  }

  v34 = *(a1 + 240);
  if (v34)
  {
    (*(*v34 + 32))(v34, this, "accessoryMagnetometerConfig");
  }

  v35 = *(a1 + 248);
  if (v35)
  {
    (*(*v35 + 32))(v35, this, "accessoryPPG");
  }

  v36 = *(a1 + 256);
  if (v36)
  {
    (*(*v36 + 32))(v36, this, "accessoryProx");
  }

  v37 = *(a1 + 264);
  if (v37)
  {
    (*(*v37 + 32))(v37, this, "accessoryProxSensorDrop");
  }

  v38 = *(a1 + 272);
  if (v38)
  {
    (*(*v38 + 32))(v38, this, "accessoryProxTempComp");
  }

  v39 = *(a1 + 280);
  if (v39)
  {
    (*(*v39 + 32))(v39, this, "accessoryProximityConfig");
  }

  v40 = *(a1 + 288);
  if (v40)
  {
    (*(*v40 + 32))(v40, this, "accessorySleepStateConfidenceEpoch");
  }

  v41 = *(a1 + 296);
  if (v41)
  {
    (*(*v41 + 32))(v41, this, "accessorySleepStateUpdate");
  }

  v42 = *(a1 + 304);
  if (v42)
  {
    (*(*v42 + 32))(v42, this, "accessoryStepDetectorDebug");
  }

  v43 = *(a1 + 312);
  if (v43)
  {
    (*(*v43 + 32))(v43, this, "accessoryWake");
  }

  v44 = *(a1 + 320);
  if (v44)
  {
    (*(*v44 + 32))(v44, this, "accessoryWakeDebug");
  }

  v45 = *(a1 + 328);
  if (v45)
  {
    (*(*v45 + 32))(v45, this, "airpodEvent");
  }

  v46 = *(a1 + 336);
  if (v46)
  {
    (*(*v46 + 32))(v46, this, "alsData");
  }

  v47 = *(a1 + 344);
  if (v47)
  {
    (*(*v47 + 32))(v47, this, "alsPhone");
  }

  v48 = *(a1 + 352);
  if (v48)
  {
    (*(*v48 + 32))(v48, this, "altimeter");
  }

  v49 = *(a1 + 360);
  if (v49)
  {
    (*(*v49 + 32))(v49, this, "altimeterKF");
  }

  v50 = *(a1 + 368);
  if (v50)
  {
    (*(*v50 + 32))(v50, this, "anchorCorrection");
  }

  v51 = *(a1 + 376);
  if (v51)
  {
    (*(*v51 + 32))(v51, this, "anchorMotionCorrespondence");
  }

  v52 = *(a1 + 384);
  if (v52)
  {
    (*(*v52 + 32))(v52, this, "appleCV3DSLAMState");
  }

  v53 = *(a1 + 392);
  if (v53)
  {
    (*(*v53 + 32))(v53, this, "arSessionState");
  }

  v54 = *(a1 + 400);
  if (v54)
  {
    (*(*v54 + 32))(v54, this, "arkitWorldPose");
  }

  v55 = *(a1 + 408);
  if (v55)
  {
    (*(*v55 + 32))(v55, this, "audioAFDeviceMotion");
  }

  v56 = *(a1 + 416);
  if (v56)
  {
    (*(*v56 + 32))(v56, this, "audioAccessoryDeviceMotion");
  }

  v57 = *(a1 + 424);
  if (v57)
  {
    (*(*v57 + 32))(v57, this, "auxiliaryDeviceMotion");
  }

  v58 = *(a1 + 432);
  if (v58)
  {
    (*(*v58 + 32))(v58, this, "averagedALSData");
  }

  v59 = *(a1 + 440);
  if (v59)
  {
    (*(*v59 + 32))(v59, this, "bTConnection");
  }

  v60 = *(a1 + 448);
  if (v60)
  {
    (*(*v60 + 32))(v60, this, "backlightState");
  }

  v61 = *(a1 + 456);
  if (v61)
  {
    (*(*v61 + 32))(v61, this, "basebandCompassCoex");
  }

  v62 = *(a1 + 464);
  if (v62)
  {
    (*(*v62 + 32))(v62, this, "basebandCompassCoexConstraints");
  }

  v63 = *(a1 + 472);
  if (v63)
  {
    (*(*v63 + 32))(v63, this, "basebandSpeed");
  }

  v64 = *(a1 + 480);
  if (v64)
  {
    (*(*v64 + 32))(v64, this, "baselineResetCheck");
  }

  v65 = *(a1 + 488);
  if (v65)
  {
    (*(*v65 + 32))(v65, this, "batchedLocationFromOdometer");
  }

  v66 = *(a1 + 496);
  if (v66)
  {
    (*(*v66 + 32))(v66, this, "batchedPPGData");
  }

  v67 = *(a1 + 504);
  if (v67)
  {
    (*(*v67 + 32))(v67, this, "batterySaverModeStatus");
  }

  v68 = *(a1 + 512);
  if (v68)
  {
    (*(*v68 + 32))(v68, this, "batteryStatus");
  }

  v69 = *(a1 + 520);
  if (v69)
  {
    (*(*v69 + 32))(v69, this, "bioMotionAnchorPose");
  }

  v70 = *(a1 + 528);
  if (v70)
  {
    (*(*v70 + 32))(v70, this, "bioMotionClassification");
  }

  v71 = *(a1 + 536);
  if (v71)
  {
    (*(*v71 + 32))(v71, this, "bioMotionLinkLengthFitParameters");
  }

  v72 = *(a1 + 544);
  if (v72)
  {
    (*(*v72 + 32))(v72, this, "bioMotionOnlineLinkLengthUpdate");
  }

  v73 = *(a1 + 552);
  if (v73)
  {
    (*(*v73 + 32))(v73, this, "bioMotionPose");
  }

  v74 = *(a1 + 560);
  if (v74)
  {
    (*(*v74 + 32))(v74, this, "bioMotionPredictedPose");
  }

  v75 = *(a1 + 568);
  if (v75)
  {
    (*(*v75 + 32))(v75, this, "bioMotionPropagatedAnchor");
  }

  v76 = *(a1 + 576);
  if (v76)
  {
    (*(*v76 + 32))(v76, this, "bleedToZeroCorrection");
  }

  v77 = *(a1 + 584);
  if (v77)
  {
    (*(*v77 + 32))(v77, this, "bodyMetrics");
  }

  v78 = *(a1 + 592);
  if (v78)
  {
    (*(*v78 + 32))(v78, this, "braveHeartAccel");
  }

  v79 = *(a1 + 600);
  if (v79)
  {
    (*(*v79 + 32))(v79, this, "braveHeartDeviceMotion");
  }

  v80 = *(a1 + 608);
  if (v80)
  {
    (*(*v80 + 32))(v80, this, "braveHeartNatalieData");
  }

  v81 = *(a1 + 616);
  if (v81)
  {
    (*(*v81 + 32))(v81, this, "braveHeartVO2MaxInput");
  }

  v82 = *(a1 + 624);
  if (v82)
  {
    (*(*v82 + 32))(v82, this, "braveHeartWorkoutEvent");
  }

  v83 = *(a1 + 632);
  if (v83)
  {
    (*(*v83 + 32))(v83, this, "bumpToWakeState");
  }

  v84 = *(a1 + 640);
  if (v84)
  {
    (*(*v84 + 32))(v84, this, "cMPedEntry");
  }

  v85 = *(a1 + 648);
  if (v85)
  {
    (*(*v85 + 32))(v85, this, "cMPedometerStep");
  }

  v86 = *(a1 + 656);
  if (v86)
  {
    (*(*v86 + 32))(v86, this, "cV3DPredictedPose");
  }

  v87 = *(a1 + 664);
  if (v87)
  {
    (*(*v87 + 32))(v87, this, "cVIMUMeasurement");
  }

  v88 = *(a1 + 672);
  if (v88)
  {
    (*(*v88 + 32))(v88, this, "calorimetryMETsConsumed");
  }

  v89 = *(a1 + 680);
  if (v89)
  {
    (*(*v89 + 32))(v89, this, "calorimetryPauseEvent");
  }

  v90 = *(a1 + 688);
  if (v90)
  {
    (*(*v90 + 32))(v90, this, "catherineHealthKitData");
  }

  if (*(a1 + 3928))
  {
    PB::TextFormatter::format(this, "cftime", *(a1 + 696));
  }

  v91 = *(a1 + 704);
  if (v91)
  {
    (*(*v91 + 32))(v91, this, "clefCalibration");
  }

  v92 = *(a1 + 712);
  if (v92)
  {
    (*(*v92 + 32))(v92, this, "coarseElevationChange");
  }

  v93 = *(a1 + 720);
  if (v93)
  {
    (*(*v93 + 32))(v93, this, "companionStepCountElevation");
  }

  v94 = *(a1 + 728);
  if (v94)
  {
    (*(*v94 + 32))(v94, this, "compass");
  }

  v95 = *(a1 + 736);
  if (v95)
  {
    (*(*v95 + 32))(v95, this, "compassAlignment");
  }

  v96 = *(a1 + 744);
  if (v96)
  {
    (*(*v96 + 32))(v96, this, "compassCalibration");
  }

  v97 = *(a1 + 752);
  if (v97)
  {
    (*(*v97 + 32))(v97, this, "compassCalibrationAttempt");
  }

  v98 = *(a1 + 760);
  if (v98)
  {
    (*(*v98 + 32))(v98, this, "compassConstraints");
  }

  v99 = *(a1 + 768);
  if (v99)
  {
    (*(*v99 + 32))(v99, this, "compassCorrection");
  }

  v100 = *(a1 + 776);
  if (v100)
  {
    (*(*v100 + 32))(v100, this, "complexHandMotion");
  }

  v101 = *(a1 + 784);
  if (v101)
  {
    (*(*v101 + 32))(v101, this, "constrainedIntegratorModelPredictedPose");
  }

  v102 = *(a1 + 792);
  if (v102)
  {
    (*(*v102 + 32))(v102, this, "constrainedIntegratorPose");
  }

  v103 = *(a1 + 800);
  if (v103)
  {
    (*(*v103 + 32))(v103, this, "coprocessorReplyGaitMetrics");
  }

  v104 = *(a1 + 808);
  if (v104)
  {
    (*(*v104 + 32))(v104, this, "courseConstraints");
  }

  v105 = *(a1 + 816);
  if (v105)
  {
    (*(*v105 + 32))(v105, this, "courseCorrection");
  }

  v106 = *(a1 + 824);
  if (v106)
  {
    (*(*v106 + 32))(v106, this, "courseFusion");
  }

  v107 = *(a1 + 832);
  if (v107)
  {
    (*(*v107 + 32))(v107, this, "cvWatchCalories");
  }

  v108 = *(a1 + 840);
  if (v108)
  {
    (*(*v108 + 32))(v108, this, "deviceMotion");
  }

  v109 = *(a1 + 848);
  if (v109)
  {
    (*(*v109 + 32))(v109, this, "deviceMotionAlwaysOn");
  }

  v110 = *(a1 + 856);
  if (v110)
  {
    (*(*v110 + 32))(v110, this, "deviceMotionCovariance");
  }

  v111 = *(a1 + 864);
  if (v111)
  {
    (*(*v111 + 32))(v111, this, "directionOfTravelMetrics");
  }

  v112 = *(a1 + 872);
  if (v112)
  {
    (*(*v112 + 32))(v112, this, "displacingState");
  }

  v113 = *(a1 + 880);
  if (v113)
  {
    (*(*v113 + 32))(v113, this, "displayPoseState");
  }

  v114 = *(a1 + 888);
  if (v114)
  {
    (*(*v114 + 32))(v114, this, "displayStatus");
  }

  v115 = *(a1 + 896);
  if (v115)
  {
    (*(*v115 + 32))(v115, this, "dopplerDebugRecord");
  }

  v116 = *(a1 + 904);
  if (v116)
  {
    (*(*v116 + 32))(v116, this, "dopplerProximityEvent");
  }

  v117 = *(a1 + 912);
  if (v117)
  {
    (*(*v117 + 32))(v117, this, "dopplerRawDataInput");
  }

  v118 = *(a1 + 920);
  if (v118)
  {
    (*(*v118 + 32))(v118, this, "dopplerSample");
  }

  v119 = *(a1 + 928);
  if (v119)
  {
    (*(*v119 + 32))(v119, this, "dotEstimatorHandSwing");
  }

  v120 = *(a1 + 936);
  if (v120)
  {
    (*(*v120 + 32))(v120, this, "dotEstimatorWithTNB");
  }

  v121 = *(a1 + 944);
  if (v121)
  {
    (*(*v121 + 32))(v121, this, "doubleTap");
  }

  v122 = *(a1 + 952);
  if (v122)
  {
    (*(*v122 + 32))(v122, this, "elevationBatchProcessingTimestamps");
  }

  v123 = *(a1 + 960);
  if (v123)
  {
    (*(*v123 + 32))(v123, this, "elevationChange");
  }

  v124 = *(a1 + 968);
  if (v124)
  {
    (*(*v124 + 32))(v124, this, "elevationGradeEstimator");
  }

  v125 = *(a1 + 976);
  if (v125)
  {
    (*(*v125 + 32))(v125, this, "elevationThreshold");
  }

  v126 = *(a1 + 984);
  if (v126)
  {
    (*(*v126 + 32))(v126, this, "emergencyState");
  }

  v127 = *(a1 + 992);
  if (v127)
  {
    (*(*v127 + 32))(v127, this, "enhancedDeviceMotion");
  }

  v128 = *(a1 + 1000);
  if (v128)
  {
    (*(*v128 + 32))(v128, this, "faceBlendShapeCoefficientsSample");
  }

  v129 = *(a1 + 1008);
  if (v129)
  {
    (*(*v129 + 32))(v129, this, "faceCovered");
  }

  v130 = *(a1 + 1016);
  if (v130)
  {
    (*(*v130 + 32))(v130, this, "faceDownDetection");
  }

  v131 = *(a1 + 1024);
  if (v131)
  {
    (*(*v131 + 32))(v131, this, "facePose");
  }

  v132 = *(a1 + 1032);
  if (v132)
  {
    (*(*v132 + 32))(v132, this, "facePoseSynchronized");
  }

  v133 = *(a1 + 1040);
  if (v133)
  {
    (*(*v133 + 32))(v133, this, "fallDetectionActivityClassifierReplay");
  }

  v134 = *(a1 + 1048);
  if (v134)
  {
    (*(*v134 + 32))(v134, this, "fallDetectionDetector");
  }

  v135 = *(a1 + 1056);
  if (v135)
  {
    (*(*v135 + 32))(v135, this, "fallDetectionGyroControllerReplay");
  }

  v136 = *(a1 + 1064);
  if (v136)
  {
    (*(*v136 + 32))(v136, this, "fallDetectionReferee");
  }

  v137 = *(a1 + 1072);
  if (v137)
  {
    (*(*v137 + 32))(v137, this, "fallDetectionReplay");
  }

  v138 = *(a1 + 1080);
  if (v138)
  {
    (*(*v138 + 32))(v138, this, "fallDetectionStateMachine");
  }

  v139 = *(a1 + 1088);
  if (v139)
  {
    (*(*v139 + 32))(v139, this, "fallDetectionWristStateReplay");
  }

  v140 = *(a1 + 1096);
  if (v140)
  {
    (*(*v140 + 32))(v140, this, "fallDistanceReplay");
  }

  v141 = *(a1 + 1104);
  if (v141)
  {
    (*(*v141 + 32))(v141, this, "fallFalsePositiveSuppressionFeatures");
  }

  v142 = *(a1 + 1112);
  if (v142)
  {
    (*(*v142 + 32))(v142, this, "fallSnippet");
  }

  v143 = *(a1 + 1120);
  if (v143)
  {
    (*(*v143 + 32))(v143, this, "fallStats");
  }

  v144 = *(a1 + 1128);
  if (v144)
  {
    (*(*v144 + 32))(v144, this, "firstStepFeatures");
  }

  v145 = *(a1 + 1136);
  if (v145)
  {
    (*(*v145 + 32))(v145, this, "fitnessMachineData");
  }

  v146 = *(a1 + 1144);
  if (v146)
  {
    (*(*v146 + 32))(v146, this, "fitnessMachineSample");
  }

  v147 = *(a1 + 1152);
  if (v147)
  {
    (*(*v147 + 32))(v147, this, "flickControlParameters");
  }

  v148 = *(a1 + 1160);
  if (v148)
  {
    (*(*v148 + 32))(v148, this, "flickFPDetectorFeatures");
  }

  v149 = *(a1 + 1168);
  if (v149)
  {
    (*(*v149 + 32))(v149, this, "flickFeatures");
  }

  v150 = *(a1 + 1176);
  if (v150)
  {
    (*(*v150 + 32))(v150, this, "flickGesture");
  }

  v151 = *(a1 + 1184);
  if (v151)
  {
    (*(*v151 + 32))(v151, this, "flickGyroMaxima");
  }

  v152 = *(a1 + 1192);
  if (v152)
  {
    (*(*v152 + 32))(v152, this, "flickLPFDM6Data");
  }

  v153 = *(a1 + 1200);
  if (v153)
  {
    (*(*v153 + 32))(v153, this, "flickMaxima");
  }

  v154 = *(a1 + 1208);
  if (v154)
  {
    (*(*v154 + 32))(v154, this, "focusModes");
  }

  v155 = *(a1 + 1216);
  if (v155)
  {
    (*(*v155 + 32))(v155, this, "frequencyResponse");
  }

  v156 = *(a1 + 1224);
  if (v156)
  {
    (*(*v156 + 32))(v156, this, "fusedBioMotionClassification");
  }

  v157 = *(a1 + 1232);
  if (v157)
  {
    (*(*v157 + 32))(v157, this, "gPSCalibrationBin");
  }

  v158 = *(a1 + 1240);
  if (v158)
  {
    (*(*v158 + 32))(v158, this, "gaitCycleSegment");
  }

  v159 = *(a1 + 1248);
  if (v159)
  {
    (*(*v159 + 32))(v159, this, "gaitCycleSegmentationState");
  }

  v160 = *(a1 + 1256);
  if (v160)
  {
    (*(*v160 + 32))(v160, this, "gaitEventsHKResult");
  }

  v161 = *(a1 + 1264);
  if (v161)
  {
    (*(*v161 + 32))(v161, this, "gaitEventsModelOutput");
  }

  v162 = *(a1 + 1272);
  if (v162)
  {
    (*(*v162 + 32))(v162, this, "gaitEventsStrideAggregation");
  }

  v163 = *(a1 + 1280);
  if (v163)
  {
    (*(*v163 + 32))(v163, this, "geomagneticData");
  }

  v164 = *(a1 + 1288);
  if (v164)
  {
    (*(*v164 + 32))(v164, this, "gestureLogSource");
  }

  v165 = *(a1 + 1296);
  if (v165)
  {
    (*(*v165 + 32))(v165, this, "gestureQuaternion");
  }

  v166 = *(a1 + 1304);
  if (v166)
  {
    (*(*v166 + 32))(v166, this, "gnssAvailabilityPredictorData");
  }

  v167 = *(a1 + 1312);
  if (v167)
  {
    (*(*v167 + 32))(v167, this, "gnssLeechLocationData");
  }

  v168 = *(a1 + 1320);
  if (v168)
  {
    (*(*v168 + 32))(v168, this, "gravityConstraints");
  }

  v169 = *(a1 + 1328);
  if (v169)
  {
    (*(*v169 + 32))(v169, this, "gravityCorrection");
  }

  v170 = *(a1 + 1336);
  if (v170)
  {
    (*(*v170 + 32))(v170, this, "gyro");
  }

  v171 = *(a1 + 1344);
  if (v171)
  {
    (*(*v171 + 32))(v171, this, "gyroBiasAndVariance");
  }

  v172 = *(a1 + 1352);
  if (v172)
  {
    (*(*v172 + 32))(v172, this, "gyroBiasConstraints");
  }

  v173 = *(a1 + 1360);
  if (v173)
  {
    (*(*v173 + 32))(v173, this, "gyroBiasCorrection");
  }

  v174 = *(a1 + 1368);
  if (v174)
  {
    (*(*v174 + 32))(v174, this, "gyroBiasEstimate");
  }

  v175 = *(a1 + 1376);
  if (v175)
  {
    (*(*v175 + 32))(v175, this, "gyroBiasEstimateError");
  }

  v176 = *(a1 + 1384);
  if (v176)
  {
    (*(*v176 + 32))(v176, this, "gyroBiasFit");
  }

  v177 = *(a1 + 1392);
  if (v177)
  {
    (*(*v177 + 32))(v177, this, "gyroCalibrationDataFactory");
  }

  v178 = *(a1 + 1400);
  if (v178)
  {
    (*(*v178 + 32))(v178, this, "gyroCalibrationDataNonlinearNonFactory");
  }

  v179 = *(a1 + 1408);
  if (v179)
  {
    (*(*v179 + 32))(v179, this, "gyroCalibrationSample");
  }

  v180 = *(a1 + 1416);
  if (v180)
  {
    (*(*v180 + 32))(v180, this, "gyroCalibrationSampleNonlinear");
  }

  v181 = *(a1 + 1424);
  if (v181)
  {
    (*(*v181 + 32))(v181, this, "gyroCompass");
  }

  v182 = *(a1 + 1432);
  if (v182)
  {
    (*(*v182 + 32))(v182, this, "gyroController");
  }

  v183 = *(a1 + 1440);
  if (v183)
  {
    (*(*v183 + 32))(v183, this, "gyroDt");
  }

  v184 = *(a1 + 1448);
  if (v184)
  {
    (*(*v184 + 32))(v184, this, "gyroFactoryCalibrationData");
  }

  v185 = *(a1 + 1456);
  if (v185)
  {
    (*(*v185 + 32))(v185, this, "gyroGps");
  }

  v186 = *(a1 + 1464);
  if (v186)
  {
    (*(*v186 + 32))(v186, this, "gyroOscarEmu");
  }

  v187 = *(a1 + 1472);
  if (v187)
  {
    (*(*v187 + 32))(v187, this, "gyroScaleEstimate");
  }

  v188 = *(a1 + 1480);
  if (v188)
  {
    (*(*v188 + 32))(v188, this, "gyroTemperature");
  }

  v189 = *(a1 + 1488);
  if (v189)
  {
    (*(*v189 + 32))(v189, this, "hapticModuleState");
  }

  v190 = *(a1 + 1496);
  if (v190)
  {
    (*(*v190 + 32))(v190, this, "harmonicMetrics");
  }

  v191 = *(a1 + 1504);
  if (v191)
  {
    (*(*v191 + 32))(v191, this, "headToHeadsetAttitudeEstimatorMeasurementUpdate");
  }

  v192 = *(a1 + 1512);
  if (v192)
  {
    (*(*v192 + 32))(v192, this, "headToHeadsetTransformationEstimate");
  }

  v193 = *(a1 + 1520);
  if (v193)
  {
    (*(*v193 + 32))(v193, this, "headTrackingBehaviorUpdate");
  }

  v194 = *(a1 + 1528);
  if (v194)
  {
    (*(*v194 + 32))(v194, this, "headTrackingClientModeUpdate");
  }

  v195 = *(a1 + 1536);
  if (v195)
  {
    (*(*v195 + 32))(v195, this, "heartRateReference");
  }

  v196 = *(a1 + 1544);
  if (v196)
  {
    (*(*v196 + 32))(v196, this, "heartRateSourceDevice");
  }

  v197 = *(a1 + 1552);
  if (v197)
  {
    (*(*v197 + 32))(v197, this, "hgAccel");
  }

  v198 = *(a1 + 1560);
  if (v198)
  {
    (*(*v198 + 32))(v198, this, "hidShower");
  }

  v199 = *(a1 + 1568);
  if (v199)
  {
    (*(*v199 + 32))(v199, this, "imuComboPacket");
  }

  v200 = *(a1 + 1576);
  if (v200)
  {
    (*(*v200 + 32))(v200, this, "inEarAdditionalState");
  }

  v201 = *(a1 + 1584);
  if (v201)
  {
    (*(*v201 + 32))(v201, this, "inEarBaseline");
  }

  v202 = *(a1 + 1592);
  if (v202)
  {
    (*(*v202 + 32))(v202, this, "inEarBaselining");
  }

  v203 = *(a1 + 1600);
  if (v203)
  {
    (*(*v203 + 32))(v203, this, "inEarConstraints");
  }

  v204 = *(a1 + 1608);
  if (v204)
  {
    (*(*v204 + 32))(v204, this, "inEarOpenLid");
  }

  v205 = *(a1 + 1616);
  if (v205)
  {
    (*(*v205 + 32))(v205, this, "inEarOptical");
  }

  v206 = *(a1 + 1624);
  if (v206)
  {
    (*(*v206 + 32))(v206, this, "inEarSession");
  }

  v207 = *(a1 + 1632);
  if (v207)
  {
    (*(*v207 + 32))(v207, this, "inEarTransition");
  }

  v208 = *(a1 + 1640);
  if (v208)
  {
    (*(*v208 + 32))(v208, this, "inEarTransitionEntry");
  }

  v209 = *(a1 + 1648);
  if (v209)
  {
    (*(*v209 + 32))(v209, this, "inertialOdometry");
  }

  v210 = *(a1 + 1656);
  if (v210)
  {
    (*(*v210 + 32))(v210, this, "initialHistoricalMeanSeaLevelPressure");
  }

  v211 = *(a1 + 1664);
  if (v211)
  {
    (*(*v211 + 32))(v211, this, "interpolatedAccessoryAccel");
  }

  v212 = *(a1 + 1672);
  if (v212)
  {
    (*(*v212 + 32))(v212, this, "intersiloNSCodingData");
  }

  v213 = *(a1 + 1680);
  if (v213)
  {
    (*(*v213 + 32))(v213, this, "ispPacket");
  }

  v214 = *(a1 + 1688);
  if (v214)
  {
    (*(*v214 + 32))(v214, this, "jitterBufferLevel");
  }

  v215 = *(a1 + 1696);
  if (v215)
  {
    (*(*v215 + 32))(v215, this, "jointLinkModelPose");
  }

  v216 = *(a1 + 1704);
  if (v216)
  {
    (*(*v216 + 32))(v216, this, "jointLinkModelPredictedPose");
  }

  v217 = *(a1 + 1712);
  if (v217)
  {
    (*(*v217 + 32))(v217, this, "kappaActivityPhone");
  }

  v218 = *(a1 + 1720);
  if (v218)
  {
    (*(*v218 + 32))(v218, this, "kappaActivityWatch");
  }

  v219 = *(a1 + 1728);
  if (v219)
  {
    (*(*v219 + 32))(v219, this, "kappaAirbagResult");
  }

  v220 = *(a1 + 1736);
  if (v220)
  {
    (*(*v220 + 32))(v220, this, "kappaAudioResult");
  }

  v221 = *(a1 + 1744);
  if (v221)
  {
    (*(*v221 + 32))(v221, this, "kappaBaroResult");
  }

  v222 = *(a1 + 1752);
  if (v222)
  {
    (*(*v222 + 32))(v222, this, "kappaCrashResult");
  }

  v223 = *(a1 + 1760);
  if (v223)
  {
    (*(*v223 + 32))(v223, this, "kappaDirectionOfTravel");
  }

  v224 = *(a1 + 1768);
  if (v224)
  {
    (*(*v224 + 32))(v224, this, "kappaGpsResult");
  }

  v225 = *(a1 + 1776);
  if (v225)
  {
    (*(*v225 + 32))(v225, this, "kappaGravityAutocorrelationResult");
  }

  v226 = *(a1 + 1784);
  if (v226)
  {
    (*(*v226 + 32))(v226, this, "kappaHighSpeedCrashResult");
  }

  v227 = *(a1 + 1792);
  if (v227)
  {
    (*(*v227 + 32))(v227, this, "kappaLackOfMotionResult");
  }

  v228 = *(a1 + 1800);
  if (v228)
  {
    (*(*v228 + 32))(v228, this, "kappaLocalAudioResult");
  }

  v229 = *(a1 + 1808);
  if (v229)
  {
    (*(*v229 + 32))(v229, this, "kappaMildImpactResult");
  }

  v230 = *(a1 + 1816);
  if (v230)
  {
    (*(*v230 + 32))(v230, this, "kappaPeakDetectorMapMagTimestamps");
  }

  v231 = *(a1 + 1824);
  if (v231)
  {
    (*(*v231 + 32))(v231, this, "kappaPeakDetectorMapResult");
  }

  v232 = *(a1 + 1832);
  if (v232)
  {
    (*(*v232 + 32))(v232, this, "kappaPulseDeltaV");
  }

  v233 = *(a1 + 1840);
  if (v233)
  {
    (*(*v233 + 32))(v233, this, "kappaPulseInertialAccel");
  }

  v234 = *(a1 + 1848);
  if (v234)
  {
    (*(*v234 + 32))(v234, this, "kappaPulseInertialHgAccel");
  }

  v235 = *(a1 + 1856);
  if (v235)
  {
    (*(*v235 + 32))(v235, this, "kappaPulseResult");
  }

  v236 = *(a1 + 1864);
  if (v236)
  {
    (*(*v236 + 32))(v236, this, "kappaQuiescenceResult");
  }

  v237 = *(a1 + 1872);
  if (v237)
  {
    (*(*v237 + 32))(v237, this, "kappaRecoveryResult");
  }

  v238 = *(a1 + 1880);
  if (v238)
  {
    (*(*v238 + 32))(v238, this, "kappaRemoteAudioResult");
  }

  v239 = *(a1 + 1888);
  if (v239)
  {
    (*(*v239 + 32))(v239, this, "kappaRoads");
  }

  v240 = *(a1 + 1896);
  if (v240)
  {
    (*(*v240 + 32))(v240, this, "kappaRoadsResult");
  }

  v241 = *(a1 + 1904);
  if (v241)
  {
    (*(*v241 + 32))(v241, this, "kappaRolloverCrashResult");
  }

  v242 = *(a1 + 1912);
  if (v242)
  {
    (*(*v242 + 32))(v242, this, "kappaSevereCrashResult");
  }

  v243 = *(a1 + 1920);
  if (v243)
  {
    (*(*v243 + 32))(v243, this, "kappaSpinResult");
  }

  v244 = *(a1 + 1928);
  if (v244)
  {
    (*(*v244 + 32))(v244, this, "kappaSteps");
  }

  v245 = *(a1 + 1936);
  if (v245)
  {
    (*(*v245 + 32))(v245, this, "kappaStepsResult");
  }

  v246 = *(a1 + 1944);
  if (v246)
  {
    (*(*v246 + 32))(v246, this, "kappaTrigger");
  }

  v247 = *(a1 + 1952);
  if (v247)
  {
    (*(*v247 + 32))(v247, this, "kappaTriggerClustersResult");
  }

  v248 = *(a1 + 1960);
  if (v248)
  {
    (*(*v248 + 32))(v248, this, "kappaTriggerDebug");
  }

  v249 = *(a1 + 1968);
  if (v249)
  {
    (*(*v249 + 32))(v249, this, "kappaZgDetected");
  }

  v250 = *(a1 + 1976);
  if (v250)
  {
    (*(*v250 + 32))(v250, this, "kappaZgResult");
  }

  v251 = *(a1 + 1984);
  if (v251)
  {
    (*(*v251 + 32))(v251, this, "keyboardAttached");
  }

  v252 = *(a1 + 1992);
  if (v252)
  {
    (*(*v252 + 32))(v252, this, "keyboardKeyPress");
  }

  v253 = *(a1 + 2000);
  if (v253)
  {
    (*(*v253 + 32))(v253, this, "keyboardMotionFeatures");
  }

  v254 = *(a1 + 2008);
  if (v254)
  {
    (*(*v254 + 32))(v254, this, "keyboardMotionState");
  }

  v255 = *(a1 + 2016);
  if (v255)
  {
    (*(*v255 + 32))(v255, this, "keyboardMotionTrackpad");
  }

  v256 = *(a1 + 2024);
  if (v256)
  {
    (*(*v256 + 32))(v256, this, "kmVelocityEstimatorState");
  }

  v257 = *(a1 + 2032);
  if (v257)
  {
    (*(*v257 + 32))(v257, this, "legacyALS5CHInput");
  }

  v258 = *(a1 + 2040);
  if (v258)
  {
    (*(*v258 + 32))(v258, this, "liftToWakeFeaturesNeo");
  }

  v259 = *(a1 + 2048);
  if (v259)
  {
    (*(*v259 + 32))(v259, this, "liftToWakeOnHeadStatus");
  }

  v260 = *(a1 + 2056);
  if (v260)
  {
    (*(*v260 + 32))(v260, this, "liftToWakeState");
  }

  v261 = *(a1 + 2064);
  if (v261)
  {
    (*(*v261 + 32))(v261, this, "liftToWakeStatusNeo");
  }

  v262 = *(a1 + 2072);
  if (v262)
  {
    (*(*v262 + 32))(v262, this, "locationOscarEmu");
  }

  v263 = *(a1 + 2080);
  if (v263)
  {
    (*(*v263 + 32))(v263, this, "lockScreenStatus");
  }

  v264 = *(a1 + 2088);
  if (v264)
  {
    (*(*v264 + 32))(v264, this, "lslHeadingEstimation");
  }

  v265 = *(a1 + 2096);
  if (v265)
  {
    (*(*v265 + 32))(v265, this, "mLBasedBioMotionClassification");
  }

  v266 = *(a1 + 2104);
  if (v266)
  {
    (*(*v266 + 32))(v266, this, "magicMountState");
  }

  v267 = *(a1 + 2112);
  if (v267)
  {
    (*(*v267 + 32))(v267, this, "magneticAccessoryType1");
  }

  v268 = *(a1 + 2120);
  if (v268)
  {
    (*(*v268 + 32))(v268, this, "magneticAccessoryType2");
  }

  v269 = *(a1 + 2128);
  if (v269)
  {
    (*(*v269 + 32))(v269, this, "magnetometer");
  }

  v270 = *(a1 + 2136);
  if (v270)
  {
    (*(*v270 + 32))(v270, this, "magnetometerCalibratorFilterParameters");
  }

  v271 = *(a1 + 2144);
  if (v271)
  {
    (*(*v271 + 32))(v271, this, "magnetometerReset");
  }

  v272 = *(a1 + 2152);
  if (v272)
  {
    (*(*v272 + 32))(v272, this, "mapsRouteHintData");
  }

  v273 = *(a1 + 2160);
  if (v273)
  {
    (*(*v273 + 32))(v273, this, "metsInfo");
  }

  v274 = *(a1 + 2168);
  if (v274)
  {
    (*(*v274 + 32))(v274, this, "mobilityBoutMetrics");
  }

  v275 = *(a1 + 2176);
  if (v275)
  {
    (*(*v275 + 32))(v275, this, "mobilityCalibrationMessage");
  }

  v276 = *(a1 + 2184);
  if (v276)
  {
    (*(*v276 + 32))(v276, this, "mobilitySmoothedGaitMetrics");
  }

  v277 = *(a1 + 2192);
  if (v277)
  {
    (*(*v277 + 32))(v277, this, "modelBasedBioMotionClassification");
  }

  v278 = *(a1 + 2200);
  if (v278)
  {
    (*(*v278 + 32))(v278, this, "motionActivity");
  }

  v279 = *(a1 + 2208);
  if (v279)
  {
    (*(*v279 + 32))(v279, this, "motionActivityReplay");
  }

  v280 = *(a1 + 2216);
  if (v280)
  {
    (*(*v280 + 32))(v280, this, "motionContextActivity");
  }

  v281 = *(a1 + 2224);
  if (v281)
  {
    (*(*v281 + 32))(v281, this, "motionGPSLocation");
  }

  v282 = *(a1 + 2232);
  if (v282)
  {
    (*(*v282 + 32))(v282, this, "motionHint");
  }

  v283 = *(a1 + 2240);
  if (v283)
  {
    (*(*v283 + 32))(v283, this, "motionLocation");
  }

  v284 = *(a1 + 2248);
  if (v284)
  {
    (*(*v284 + 32))(v284, this, "motionLoiAltitudeData");
  }

  v285 = *(a1 + 2256);
  if (v285)
  {
    (*(*v285 + 32))(v285, this, "motionLoiData");
  }

  v286 = *(a1 + 2264);
  if (v286)
  {
    (*(*v286 + 32))(v286, this, "motionStateUpdate");
  }

  v287 = *(a1 + 2272);
  if (v287)
  {
    (*(*v287 + 32))(v287, this, "motionWifiAssociation");
  }

  v288 = *(a1 + 2280);
  if (v288)
  {
    (*(*v288 + 32))(v288, this, "motionWifiLocation");
  }

  v289 = *(a1 + 2288);
  if (v289)
  {
    (*(*v289 + 32))(v289, this, "movementStats");
  }

  v290 = *(a1 + 2296);
  if (v290)
  {
    (*(*v290 + 32))(v290, this, "movementStatsGravityProjection");
  }

  v291 = *(a1 + 2304);
  if (v291)
  {
    (*(*v291 + 32))(v291, this, "movementStatsSignal");
  }

  v292 = *(a1 + 2312);
  if (v292)
  {
    (*(*v292 + 32))(v292, this, "natalieData");
  }

  v293 = *(a1 + 2320);
  if (v293)
  {
    (*(*v293 + 32))(v293, this, "nonlinearBiasFit");
  }

  v294 = *(a1 + 2328);
  if (v294)
  {
    (*(*v294 + 32))(v294, this, "normalGammaCalibrationBin");
  }

  v295 = *(a1 + 2336);
  if (v295)
  {
    (*(*v295 + 32))(v295, this, "odometer");
  }

  v296 = *(a1 + 2344);
  if (v296)
  {
    (*(*v296 + 32))(v296, this, "odometerWithAltitude");
  }

  v297 = *(a1 + 2352);
  if (v297)
  {
    (*(*v297 + 32))(v297, this, "odtPose");
  }

  v298 = *(a1 + 2360);
  if (v298)
  {
    (*(*v298 + 32))(v298, this, "onsetHeartRateData");
  }

  v299 = *(a1 + 2368);
  if (v299)
  {
    (*(*v299 + 32))(v299, this, "orientation");
  }

  v300 = *(a1 + 2376);
  if (v300)
  {
    (*(*v300 + 32))(v300, this, "pdrAlgType");
  }

  v301 = *(a1 + 2384);
  if (v301)
  {
    (*(*v301 + 32))(v301, this, "pdrDOTEstimatorState");
  }

  v302 = *(a1 + 2392);
  if (v302)
  {
    (*(*v302 + 32))(v302, this, "pdrDOTEstimatorStateArmSwing");
  }

  v303 = *(a1 + 2400);
  if (v303)
  {
    (*(*v303 + 32))(v303, this, "pdrDOTEstimatorStateBody");
  }

  v304 = *(a1 + 2408);
  if (v304)
  {
    (*(*v304 + 32))(v304, this, "pdrDOTEstimatorStateBodyDebug");
  }

  v305 = *(a1 + 2416);
  if (v305)
  {
    (*(*v305 + 32))(v305, this, "pdrDOTEstimatorStateDebug");
  }

  v306 = *(a1 + 2424);
  if (v306)
  {
    (*(*v306 + 32))(v306, this, "pdrDOTEstimatorStateHeading");
  }

  v307 = *(a1 + 2432);
  if (v307)
  {
    (*(*v307 + 32))(v307, this, "pdrDOTEstimatorStateSwingDebug");
  }

  v308 = *(a1 + 2440);
  if (v308)
  {
    (*(*v308 + 32))(v308, this, "pdrDOTEstimatorStateTNBDebug");
  }

  v309 = *(a1 + 2448);
  if (v309)
  {
    (*(*v309 + 32))(v309, this, "pdrDOTEstimatorUncertaintyModelOnBody");
  }

  v310 = *(a1 + 2456);
  if (v310)
  {
    (*(*v310 + 32))(v310, this, "pdrDOTMeasurementSelectorState");
  }

  v311 = *(a1 + 2464);
  if (v311)
  {
    (*(*v311 + 32))(v311, this, "pdrFeatures");
  }

  v312 = *(a1 + 2472);
  if (v312)
  {
    (*(*v312 + 32))(v312, this, "pdrFenceReference");
  }

  v313 = *(a1 + 2480);
  if (v313)
  {
    (*(*v313 + 32))(v313, this, "pdrFenceState");
  }

  v314 = *(a1 + 2488);
  if (v314)
  {
    (*(*v314 + 32))(v314, this, "pdrImpulse");
  }

  v315 = *(a1 + 2496);
  if (v315)
  {
    (*(*v315 + 32))(v315, this, "pdrMLModelOutput");
  }

  v316 = *(a1 + 2504);
  if (v316)
  {
    (*(*v316 + 32))(v316, this, "pdrPedestrianClassifierState");
  }

  v317 = *(a1 + 2512);
  if (v317)
  {
    (*(*v317 + 32))(v317, this, "pdrPlacementClassifierState");
  }

  v318 = *(a1 + 2520);
  if (v318)
  {
    (*(*v318 + 32))(v318, this, "pdrSpeedEstimatorState");
  }

  v319 = *(a1 + 2528);
  if (v319)
  {
    (*(*v319 + 32))(v319, this, "pdrSpeedEstimatorStateDebug");
  }

  v320 = *(a1 + 2536);
  if (v320)
  {
    (*(*v320 + 32))(v320, this, "pdrVelocityEstimatorState");
  }

  v321 = *(a1 + 2544);
  if (v321)
  {
    (*(*v321 + 32))(v321, this, "pearlAttitude");
  }

  v322 = *(a1 + 2552);
  if (v322)
  {
    (*(*v322 + 32))(v322, this, "pedOdomFusionExtendedModeSegment");
  }

  v323 = *(a1 + 2560);
  if (v323)
  {
    (*(*v323 + 32))(v323, this, "pedestrianCalorieModelDebugging");
  }

  v324 = *(a1 + 2568);
  if (v324)
  {
    (*(*v324 + 32))(v324, this, "pedestrianFenceExit");
  }

  v325 = *(a1 + 2576);
  if (v325)
  {
    (*(*v325 + 32))(v325, this, "pedometerPathStraightness");
  }

  v326 = *(a1 + 2584);
  if (v326)
  {
    (*(*v326 + 32))(v326, this, "peerState");
  }

  v327 = *(a1 + 2592);
  if (v327)
  {
    (*(*v327 + 32))(v327, this, "pencilDeviceMotion");
  }

  v328 = *(a1 + 2600);
  if (v328)
  {
    (*(*v328 + 32))(v328, this, "pencilFusionDMYawAlignmentUpdate");
  }

  v329 = *(a1 + 2608);
  if (v329)
  {
    (*(*v329 + 32))(v329, this, "pencilFusionReplayResult");
  }

  v330 = *(a1 + 2616);
  if (v330)
  {
    (*(*v330 + 32))(v330, this, "pencilFusionResult");
  }

  v331 = *(a1 + 2624);
  if (v331)
  {
    (*(*v331 + 32))(v331, this, "pencilFusionRingSensorTrustModelUpdate");
  }

  v332 = *(a1 + 2632);
  if (v332)
  {
    (*(*v332 + 32))(v332, this, "pencilTipForce");
  }

  v333 = *(a1 + 2640);
  if (v333)
  {
    (*(*v333 + 32))(v333, this, "pencilTouch");
  }

  v334 = *(a1 + 2648);
  if (v334)
  {
    (*(*v334 + 32))(v334, this, "physicalEffortInput");
  }

  v335 = *(a1 + 2656);
  if (v335)
  {
    (*(*v335 + 32))(v335, this, "physicalEffortSample");
  }

  v336 = *(a1 + 2664);
  if (v336)
  {
    (*(*v336 + 32))(v336, this, "pocketDetectionPacket");
  }

  v337 = *(a1 + 2672);
  if (v337)
  {
    (*(*v337 + 32))(v337, this, "pose");
  }

  v338 = *(a1 + 2680);
  if (v338)
  {
    (*(*v338 + 32))(v338, this, "poseState");
  }

  v339 = *(a1 + 2688);
  if (v339)
  {
    (*(*v339 + 32))(v339, this, "postureJoint");
  }

  v340 = *(a1 + 2696);
  if (v340)
  {
    (*(*v340 + 32))(v340, this, "postureSkeleton");
  }

  v341 = *(a1 + 2704);
  if (v341)
  {
    (*(*v341 + 32))(v341, this, "powerManagementUserActivity");
  }

  v342 = *(a1 + 2712);
  if (v342)
  {
    (*(*v342 + 32))(v342, this, "precisionFindingDOTEstimate");
  }

  v343 = *(a1 + 2720);
  if (v343)
  {
    (*(*v343 + 32))(v343, this, "precisionFindingRangeFilter");
  }

  v344 = *(a1 + 2728);
  if (v344)
  {
    (*(*v344 + 32))(v344, this, "precisionFindingSessionStartStop");
  }

  v345 = *(a1 + 2736);
  if (v345)
  {
    (*(*v345 + 32))(v345, this, "precisionFindingState");
  }

  v346 = *(a1 + 2744);
  if (v346)
  {
    (*(*v346 + 32))(v346, this, "precisionFindingVelocityEstimate");
  }

  v347 = *(a1 + 2752);
  if (v347)
  {
    (*(*v347 + 32))(v347, this, "precisionFindingVerticalState");
  }

  v348 = *(a1 + 2760);
  if (v348)
  {
    (*(*v348 + 32))(v348, this, "predictedRelativeDeviceMotion");
  }

  v349 = *(a1 + 2768);
  if (v349)
  {
    (*(*v349 + 32))(v349, this, "pressure");
  }

  v350 = *(a1 + 2776);
  if (v350)
  {
    (*(*v350 + 32))(v350, this, "pressureCalibration");
  }

  v351 = *(a1 + 2784);
  if (v351)
  {
    (*(*v351 + 32))(v351, this, "pressureCompensated");
  }

  v352 = *(a1 + 2792);
  if (v352)
  {
    (*(*v352 + 32))(v352, this, "pressureFiltered");
  }

  v353 = *(a1 + 2800);
  if (v353)
  {
    (*(*v353 + 32))(v353, this, "pressureFiltered1HzLowPass");
  }

  v354 = *(a1 + 2808);
  if (v354)
  {
    (*(*v354 + 32))(v354, this, "pressureFilteredNoTemperature");
  }

  v355 = *(a1 + 2816);
  if (v355)
  {
    (*(*v355 + 32))(v355, this, "pressureGps");
  }

  v356 = *(a1 + 2824);
  if (v356)
  {
    (*(*v356 + 32))(v356, this, "pressureOscarEmu");
  }

  v357 = *(a1 + 2832);
  if (v357)
  {
    (*(*v357 + 32))(v357, this, "prox");
  }

  v358 = *(a1 + 2840);
  if (v358)
  {
    (*(*v358 + 32))(v358, this, "proxBaselineEstimatorState");
  }

  v359 = *(a1 + 2848);
  if (v359)
  {
    (*(*v359 + 32))(v359, this, "proxCalibration");
  }

  v360 = *(a1 + 2856);
  if (v360)
  {
    (*(*v360 + 32))(v360, this, "proxPDP");
  }

  v361 = *(a1 + 2864);
  if (v361)
  {
    (*(*v361 + 32))(v361, this, "ptsConsumedGNSS");
  }

  v362 = *(a1 + 2872);
  if (v362)
  {
    (*(*v362 + 32))(v362, this, "ptsForwardPropagation");
  }

  v363 = *(a1 + 2880);
  if (v363)
  {
    (*(*v363 + 32))(v363, this, "ptsMapMatchedRoute");
  }

  v364 = *(a1 + 2888);
  if (v364)
  {
    (*(*v364 + 32))(v364, this, "ptsReconstructedRoute");
  }

  v365 = *(a1 + 2896);
  if (v365)
  {
    (*(*v365 + 32))(v365, this, "ptsSmoothedRoute");
  }

  v366 = *(a1 + 2904);
  if (v366)
  {
    (*(*v366 + 32))(v366, this, "rawAudio");
  }

  v367 = *(a1 + 2912);
  if (v367)
  {
    (*(*v367 + 32))(v367, this, "relDMInSystemConfig");
  }

  v368 = *(a1 + 2920);
  if (v368)
  {
    (*(*v368 + 32))(v368, this, "relativeDeviceMotionComplexTransition");
  }

  v369 = *(a1 + 2928);
  if (v369)
  {
    (*(*v369 + 32))(v369, this, "relativeDeviceMotionCorrelatedMotion");
  }

  v370 = *(a1 + 2936);
  if (v370)
  {
    (*(*v370 + 32))(v370, this, "relativeDeviceMotionInternal");
  }

  v371 = *(a1 + 2944);
  if (v371)
  {
    (*(*v371 + 32))(v371, this, "relativeGravityConstraints");
  }

  v372 = *(a1 + 2952);
  if (v372)
  {
    (*(*v372 + 32))(v372, this, "relativeGravityCorrection");
  }

  v373 = *(a1 + 2960);
  if (v373)
  {
    (*(*v373 + 32))(v373, this, "rhythmicGnssOperatorStatus");
  }

  v374 = *(a1 + 2968);
  if (v374)
  {
    (*(*v374 + 32))(v374, this, "rotationRate");
  }

  v375 = *(a1 + 2976);
  if (v375)
  {
    (*(*v375 + 32))(v375, this, "runningArmSwingSignals");
  }

  v376 = *(a1 + 2984);
  if (v376)
  {
    (*(*v376 + 32))(v376, this, "runningCentripetalAccelSignals");
  }

  v377 = *(a1 + 2992);
  if (v377)
  {
    (*(*v377 + 32))(v377, this, "runningFormMetrics");
  }

  v378 = *(a1 + 3000);
  if (v378)
  {
    (*(*v378 + 32))(v378, this, "runningPower");
  }

  v379 = *(a1 + 3008);
  if (v379)
  {
    (*(*v379 + 32))(v379, this, "runningRotationAxis");
  }

  v380 = *(a1 + 3016);
  if (v380)
  {
    (*(*v380 + 32))(v380, this, "runningSpeedKFResult");
  }

  v381 = *(a1 + 3024);
  if (v381)
  {
    (*(*v381 + 32))(v381, this, "runningStrideLength");
  }

  v382 = *(a1 + 3032);
  if (v382)
  {
    (*(*v382 + 32))(v382, this, "runningVerticalOscillation");
  }

  v383 = *(a1 + 3040);
  if (v383)
  {
    (*(*v383 + 32))(v383, this, "runningVerticalOscillationGradientBoostedSignals");
  }

  v384 = *(a1 + 3048);
  if (v384)
  {
    (*(*v384 + 32))(v384, this, "runningVerticalOscillationSignals");
  }

  v385 = *(a1 + 3056);
  if (v385)
  {
    (*(*v385 + 32))(v385, this, "safetyCompanionStatus");
  }

  v386 = *(a1 + 3064);
  if (v386)
  {
    (*(*v386 + 32))(v386, this, "safetyHertzSample");
  }

  v387 = *(a1 + 3072);
  if (v387)
  {
    (*(*v387 + 32))(v387, this, "safetyRemoteSample");
  }

  v388 = *(a1 + 3080);
  if (v388)
  {
    (*(*v388 + 32))(v388, this, "safetyTrustedAudioResult");
  }

  v389 = *(a1 + 3088);
  if (v389)
  {
    (*(*v389 + 32))(v389, this, "sessionOverride");
  }

  v390 = *(a1 + 3096);
  if (v390)
  {
    (*(*v390 + 32))(v390, this, "signalEnvironment");
  }

  v391 = *(a1 + 3104);
  if (v391)
  {
    (*(*v391 + 32))(v391, this, "simActivityEvent");
  }

  v392 = *(a1 + 3112);
  if (v392)
  {
    (*(*v392 + 32))(v392, this, "sitStandDetectorFeatures");
  }

  v393 = *(a1 + 3120);
  if (v393)
  {
    (*(*v393 + 32))(v393, this, "sitStandDetectorPosteriorBufferStatsForSitToStand");
  }

  v394 = *(a1 + 3128);
  if (v394)
  {
    (*(*v394 + 32))(v394, this, "sitStandDetectorPosteriorBufferStatsForStandToSit");
  }

  v395 = *(a1 + 3136);
  if (v395)
  {
    (*(*v395 + 32))(v395, this, "sitStandDetectorTransitions");
  }

  v396 = *(a1 + 3144);
  if (v396)
  {
    (*(*v396 + 32))(v396, this, "skeleton2D");
  }

  v397 = *(a1 + 3152);
  if (v397)
  {
    (*(*v397 + 32))(v397, this, "skeleton3D");
  }

  v398 = *(a1 + 3160);
  if (v398)
  {
    (*(*v398 + 32))(v398, this, "skeleton3DLifted");
  }

  v399 = *(a1 + 3168);
  if (v399)
  {
    (*(*v399 + 32))(v399, this, "skeleton3DRetargeted");
  }

  v400 = *(a1 + 3176);
  if (v400)
  {
    (*(*v400 + 32))(v400, this, "spatialEvent");
  }

  v401 = *(a1 + 3184);
  if (v401)
  {
    (*(*v401 + 32))(v401, this, "spl");
  }

  v402 = *(a1 + 3192);
  if (v402)
  {
    (*(*v402 + 32))(v402, this, "spuPlaybackExampleDeviceMotion");
  }

  v403 = *(a1 + 3200);
  if (v403)
  {
    (*(*v403 + 32))(v403, this, "spuPlaybackExampleMotionStateUpdate");
  }

  v404 = *(a1 + 3208);
  if (v404)
  {
    (*(*v404 + 32))(v404, this, "steadinessEvent");
  }

  v405 = *(a1 + 3216);
  if (v405)
  {
    (*(*v405 + 32))(v405, this, "steadinessModelBalanceFeatures");
  }

  v406 = *(a1 + 3224);
  if (v406)
  {
    (*(*v406 + 32))(v406, this, "steadinessModelContinuousWalkingFeatures");
  }

  v407 = *(a1 + 3232);
  if (v407)
  {
    (*(*v407 + 32))(v407, this, "steadinessModelGaitBaselineFeatures");
  }

  v408 = *(a1 + 3240);
  if (v408)
  {
    (*(*v408 + 32))(v408, this, "steadinessModelHarmonicFeatures");
  }

  v409 = *(a1 + 3248);
  if (v409)
  {
    (*(*v409 + 32))(v409, this, "steadinessModelResult");
  }

  v410 = *(a1 + 3256);
  if (v410)
  {
    (*(*v410 + 32))(v410, this, "steadinessModelTemporalDispersionFeatures");
  }

  v411 = *(a1 + 3264);
  if (v411)
  {
    (*(*v411 + 32))(v411, this, "steadinessModelTemporalEntropyFeatures");
  }

  v412 = *(a1 + 3272);
  if (v412)
  {
    (*(*v412 + 32))(v412, this, "stepCadenceToStrideLengthBin");
  }

  v413 = *(a1 + 3280);
  if (v413)
  {
    (*(*v413 + 32))(v413, this, "stepCountEntry");
  }

  v414 = *(a1 + 3288);
  if (v414)
  {
    (*(*v414 + 32))(v414, this, "stepCountEntryAddition");
  }

  v415 = *(a1 + 3296);
  if (v415)
  {
    (*(*v415 + 32))(v415, this, "stepDistanceFusionResult");
  }

  v416 = *(a1 + 3304);
  if (v416)
  {
    (*(*v416 + 32))(v416, this, "stepLikelihoodFeatures");
  }

  v417 = *(a1 + 3312);
  if (v417)
  {
    (*(*v417 + 32))(v417, this, "streamingHeartRateData");
  }

  v418 = *(a1 + 3320);
  if (v418)
  {
    (*(*v418 + 32))(v418, this, "streamingHeartRateDataWatch");
  }

  v419 = *(a1 + 3328);
  if (v419)
  {
    (*(*v419 + 32))(v419, this, "streamingHighFrequencyHeartRateData");
  }

  v420 = *(a1 + 3336);
  if (v420)
  {
    (*(*v420 + 32))(v420, this, "streamingHighFrequencyHeartRateDataWatch");
  }

  v421 = *(a1 + 3344);
  if (v421)
  {
    (*(*v421 + 32))(v421, this, "strideCalBin");
  }

  v422 = *(a1 + 3352);
  if (v422)
  {
    (*(*v422 + 32))(v422, this, "strideCalEntry");
  }

  v423 = *(a1 + 3360);
  if (v423)
  {
    (*(*v423 + 32))(v423, this, "subStats");
  }

  v424 = *(a1 + 3368);
  if (v424)
  {
    (*(*v424 + 32))(v424, this, "swingDoTCandidate");
  }

  v425 = *(a1 + 3376);
  if (v425)
  {
    (*(*v425 + 32))(v425, this, "tapAccept");
  }

  v426 = *(a1 + 3384);
  if (v426)
  {
    (*(*v426 + 32))(v426, this, "tapDetect");
  }

  v427 = *(a1 + 3392);
  if (v427)
  {
    (*(*v427 + 32))(v427, this, "tempestPoCAuxiliaryDeviceMotion");
  }

  v428 = *(a1 + 3400);
  if (v428)
  {
    (*(*v428 + 32))(v428, this, "tempestPoCListenerOrientation");
  }

  v429 = *(a1 + 3408);
  if (v429)
  {
    (*(*v429 + 32))(v429, this, "timestamp");
  }

  v430 = *(a1 + 3416);
  if (v430)
  {
    (*(*v430 + 32))(v430, this, "tnb");
  }

  v431 = *(a1 + 3424);
  if (v431)
  {
    (*(*v431 + 32))(v431, this, "touchOscarEmu");
  }

  v432 = *(a1 + 3432);
  if (v432)
  {
    (*(*v432 + 32))(v432, this, "trackRunData");
  }

  v433 = *(a1 + 3440);
  if (v433)
  {
    (*(*v433 + 32))(v433, this, "ultraFastAccel");
  }

  v434 = *(a1 + 3448);
  if (v434)
  {
    (*(*v434 + 32))(v434, this, "userInteraction");
  }

  v435 = *(a1 + 3456);
  if (v435)
  {
    (*(*v435 + 32))(v435, this, "userStudyEvent");
  }

  v436 = *(a1 + 3464);
  if (v436)
  {
    (*(*v436 + 32))(v436, this, "uwbRange");
  }

  v437 = *(a1 + 3472);
  if (v437)
  {
    (*(*v437 + 32))(v437, this, "vO2MaxModelInput");
  }

  v438 = *(a1 + 3480);
  if (v438)
  {
    (*(*v438 + 32))(v438, this, "velocityEstimatorFusionState");
  }

  v439 = *(a1 + 3488);
  if (v439)
  {
    (*(*v439 + 32))(v439, this, "vibrationEvent");
  }

  v440 = *(a1 + 3496);
  if (v440)
  {
    (*(*v440 + 32))(v440, this, "viewObstructedMachineLearningDecision");
  }

  v441 = *(a1 + 3504);
  if (v441)
  {
    (*(*v441 + 32))(v441, this, "viewObstructedMachineLearningFeatures");
  }

  v442 = *(a1 + 3512);
  if (v442)
  {
    (*(*v442 + 32))(v442, this, "viewObstructedMachineLearningProbabilities");
  }

  v443 = *(a1 + 3520);
  if (v443)
  {
    (*(*v443 + 32))(v443, this, "viewObstructedState");
  }

  v444 = *(a1 + 3528);
  if (v444)
  {
    (*(*v444 + 32))(v444, this, "vioEstimation");
  }

  v445 = *(a1 + 3536);
  if (v445)
  {
    (*(*v445 + 32))(v445, this, "vioPose");
  }

  v446 = *(a1 + 3544);
  if (v446)
  {
    (*(*v446 + 32))(v446, this, "vioReplayPose");
  }

  v447 = *(a1 + 3552);
  if (v447)
  {
    (*(*v447 + 32))(v447, this, "visionCompassBias");
  }

  v448 = *(a1 + 3560);
  if (v448)
  {
    (*(*v448 + 32))(v448, this, "visualLocalization");
  }

  v449 = *(a1 + 3568);
  if (v449)
  {
    (*(*v449 + 32))(v449, this, "visualLocalizationAttitudeConstraints");
  }

  v450 = *(a1 + 3576);
  if (v450)
  {
    (*(*v450 + 32))(v450, this, "visualLocalizationAttitudeCorrection");
  }

  v451 = *(a1 + 3584);
  if (v451)
  {
    (*(*v451 + 32))(v451, this, "visualStateMeasurement");
  }

  v452 = *(a1 + 3592);
  if (v452)
  {
    (*(*v452 + 32))(v452, this, "vo2MaxInput");
  }

  v453 = *(a1 + 3600);
  if (v453)
  {
    (*(*v453 + 32))(v453, this, "vo2MaxOutput");
  }

  v454 = *(a1 + 3608);
  if (v454)
  {
    (*(*v454 + 32))(v454, this, "wakeGestureNotification");
  }

  v455 = *(a1 + 3616);
  if (v455)
  {
    (*(*v455 + 32))(v455, this, "wakeGestureSample");
  }

  v456 = *(a1 + 3624);
  if (v456)
  {
    (*(*v456 + 32))(v456, this, "walkingDetectionResult");
  }

  v457 = *(a1 + 3632);
  if (v457)
  {
    (*(*v457 + 32))(v457, this, "walkingSteadinessClassification");
  }

  v458 = *(a1 + 3640);
  if (v458)
  {
    (*(*v458 + 32))(v458, this, "watchActiveCalories");
  }

  v459 = *(a1 + 3648);
  if (v459)
  {
    (*(*v459 + 32))(v459, this, "watchBasalCalories");
  }

  v460 = *(a1 + 3656);
  if (v460)
  {
    (*(*v460 + 32))(v460, this, "watchEnclosureMaterial");
  }

  v461 = *(a1 + 3664);
  if (v461)
  {
    (*(*v461 + 32))(v461, this, "watchHeartRateData");
  }

  v462 = *(a1 + 3672);
  if (v462)
  {
    (*(*v462 + 32))(v462, this, "watchOnWristState");
  }

  v463 = *(a1 + 3680);
  if (v463)
  {
    (*(*v463 + 32))(v463, this, "watchOrientationSettings");
  }

  v464 = *(a1 + 3688);
  if (v464)
  {
    (*(*v464 + 32))(v464, this, "wifiScanResults");
  }

  v465 = *(a1 + 3696);
  if (v465)
  {
    (*(*v465 + 32))(v465, this, "workoutActivity");
  }

  v466 = *(a1 + 3704);
  if (v466)
  {
    (*(*v466 + 32))(v466, this, "workoutEvent");
  }

  v467 = *(a1 + 3712);
  if (v467)
  {
    (*(*v467 + 32))(v467, this, "workoutRecorderALSData");
  }

  v468 = *(a1 + 3720);
  if (v468)
  {
    (*(*v468 + 32))(v468, this, "workoutRecorderAccel");
  }

  v469 = *(a1 + 3728);
  if (v469)
  {
    (*(*v469 + 32))(v469, this, "workoutRecorderAccel800");
  }

  v470 = *(a1 + 3736);
  if (v470)
  {
    (*(*v470 + 32))(v470, this, "workoutRecorderAccessoryDeviceMotionConfig");
  }

  v471 = *(a1 + 3744);
  if (v471)
  {
    (*(*v471 + 32))(v471, this, "workoutRecorderAudioAccessoryDeviceMotion");
  }

  v472 = *(a1 + 3752);
  if (v472)
  {
    (*(*v472 + 32))(v472, this, "workoutRecorderAveragedALSData");
  }

  v473 = *(a1 + 3760);
  if (v473)
  {
    (*(*v473 + 32))(v473, this, "workoutRecorderBodyMetrics");
  }

  v474 = *(a1 + 3768);
  if (v474)
  {
    (*(*v474 + 32))(v474, this, "workoutRecorderCompassCalibration");
  }

  v475 = *(a1 + 3776);
  if (v475)
  {
    (*(*v475 + 32))(v475, this, "workoutRecorderElevation");
  }

  v476 = *(a1 + 3784);
  if (v476)
  {
    (*(*v476 + 32))(v476, this, "workoutRecorderFaceCovered");
  }

  v477 = *(a1 + 3792);
  if (v477)
  {
    (*(*v477 + 32))(v477, this, "workoutRecorderFitnessMachineData");
  }

  v478 = *(a1 + 3800);
  if (v478)
  {
    (*(*v478 + 32))(v478, this, "workoutRecorderHealthKitInfo");
  }

  v479 = *(a1 + 3808);
  if (v479)
  {
    (*(*v479 + 32))(v479, this, "workoutRecorderHeartRate");
  }

  v480 = *(a1 + 3816);
  if (v480)
  {
    (*(*v480 + 32))(v480, this, "workoutRecorderHeartRateAccessory");
  }

  v481 = *(a1 + 3824);
  if (v481)
  {
    (*(*v481 + 32))(v481, this, "workoutRecorderHeartRateSourceDevice");
  }

  v482 = *(a1 + 3832);
  if (v482)
  {
    (*(*v482 + 32))(v482, this, "workoutRecorderHighFrequencyHeartRateWatch");
  }

  v483 = *(a1 + 3840);
  if (v483)
  {
    (*(*v483 + 32))(v483, this, "workoutRecorderMagnetometer");
  }

  v484 = *(a1 + 3848);
  if (v484)
  {
    (*(*v484 + 32))(v484, this, "workoutRecorderOdometer");
  }

  v485 = *(a1 + 3856);
  if (v485)
  {
    (*(*v485 + 32))(v485, this, "workoutRecorderPressure");
  }

  v486 = *(a1 + 3864);
  if (v486)
  {
    (*(*v486 + 32))(v486, this, "workoutRecorderRotationRate");
  }

  v487 = *(a1 + 3872);
  if (v487)
  {
    (*(*v487 + 32))(v487, this, "workoutRecorderWatchOnWristStatus");
  }

  v488 = *(a1 + 3880);
  if (v488)
  {
    (*(*v488 + 32))(v488, this, "workoutRecorderWatchOrientationSettings");
  }

  v489 = *(a1 + 3888);
  if (v489)
  {
    (*(*v489 + 32))(v489, this, "workoutRecorderWifiScanResults");
  }

  v490 = *(a1 + 3896);
  if (v490)
  {
    (*(*v490 + 32))(v490, this, "workoutRecorderWorkoutEvent");
  }

  v491 = *(a1 + 3904);
  if (v491)
  {
    (*(*v491 + 32))(v491, this, "workoutRecorderWorkoutSessionPriors");
  }

  v492 = *(a1 + 3912);
  if (v492)
  {
    (*(*v492 + 32))(v492, this, "workoutSessionPriors");
  }

  v493 = *(a1 + 3920);
  if (v493)
  {
    (*(*v493 + 32))(v493, this, "zeroVelocityCorrection");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B524768(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  while (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v7 = *this;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = v3 >= v2;
      v18 = v3 - v2;
      if (!v17)
      {
        v18 = 0;
      }

      v19 = (v7 + v2);
      v20 = v2 + 1;
      while (1)
      {
        if (!v18)
        {
          v10 = 0;
          *(this + 24) = 1;
          goto LABEL_21;
        }

        v21 = *v19;
        *(this + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        --v18;
        ++v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
LABEL_17:
          v10 = 0;
          goto LABEL_21;
        }
      }

      if (*(this + 24))
      {
        v10 = 0;
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_21:
    v4 = *(this + 24);
    if ((v4 & 1) != 0 || (v10 & 7) == 4)
    {
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 2047)
    {
      switch(v22)
      {
        case 1:
          *(a1 + 3928) |= 1u;
          v23 = *(this + 1);
          if (v23 <= 0xFFFFFFFFFFFFFFF7 && v23 + 8 <= *(this + 2))
          {
            *(a1 + 696) = *(*this + v23);
            *(this + 1) += 8;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_525;
        case 2:
          operator new();
        case 3:
          operator new();
        case 4:
          operator new();
        case 5:
          operator new();
        case 6:
          operator new();
        case 7:
          operator new();
        case 8:
          operator new();
        case 9:
          operator new();
        case 10:
          operator new();
        case 11:
          operator new();
        case 12:
        case 13:
        case 14:
        case 15:
        case 69:
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 75:
        case 76:
        case 77:
        case 78:
        case 79:
        case 80:
        case 81:
        case 82:
        case 83:
        case 84:
        case 85:
        case 86:
        case 87:
        case 88:
        case 89:
        case 90:
        case 91:
        case 92:
        case 93:
        case 94:
        case 95:
        case 96:
        case 97:
        case 98:
        case 99:
        case 137:
        case 138:
        case 146:
        case 147:
        case 149:
        case 211:
        case 283:
        case 284:
        case 285:
        case 286:
        case 287:
        case 288:
        case 289:
        case 290:
        case 291:
        case 292:
        case 293:
        case 294:
        case 295:
        case 296:
        case 297:
        case 298:
        case 299:
        case 300:
        case 301:
        case 302:
        case 303:
        case 304:
        case 305:
        case 306:
        case 307:
        case 308:
        case 309:
        case 310:
        case 311:
        case 312:
        case 313:
        case 314:
        case 315:
        case 316:
        case 317:
        case 318:
        case 319:
        case 320:
        case 321:
        case 322:
        case 323:
        case 324:
        case 325:
        case 326:
        case 327:
        case 328:
        case 329:
        case 330:
        case 331:
        case 332:
        case 333:
        case 334:
        case 335:
        case 336:
        case 337:
        case 338:
        case 339:
        case 340:
        case 341:
        case 342:
        case 343:
        case 344:
        case 345:
        case 346:
        case 347:
        case 348:
        case 349:
        case 350:
        case 351:
        case 352:
        case 353:
        case 354:
        case 355:
        case 356:
        case 357:
        case 358:
        case 359:
        case 360:
        case 361:
        case 362:
        case 363:
        case 364:
        case 365:
        case 366:
        case 367:
        case 368:
        case 369:
        case 370:
        case 371:
        case 372:
        case 373:
        case 374:
        case 375:
        case 376:
        case 377:
        case 378:
        case 379:
        case 380:
        case 381:
        case 382:
        case 383:
        case 384:
        case 385:
        case 386:
        case 387:
        case 388:
        case 389:
        case 390:
        case 391:
        case 392:
        case 393:
        case 394:
        case 395:
        case 396:
        case 397:
        case 398:
        case 399:
        case 400:
        case 401:
        case 402:
        case 403:
        case 404:
        case 405:
        case 406:
        case 407:
        case 408:
        case 409:
        case 410:
        case 411:
        case 412:
        case 413:
        case 414:
        case 415:
        case 416:
        case 417:
        case 418:
        case 419:
        case 420:
        case 421:
        case 422:
        case 423:
        case 424:
        case 425:
        case 426:
        case 427:
        case 428:
        case 429:
        case 430:
        case 431:
        case 432:
        case 433:
        case 434:
        case 435:
        case 436:
        case 437:
        case 438:
        case 439:
        case 440:
        case 441:
        case 442:
        case 443:
        case 444:
        case 445:
        case 446:
        case 447:
        case 448:
        case 449:
        case 450:
        case 451:
        case 452:
        case 453:
        case 454:
        case 455:
        case 456:
        case 457:
        case 458:
        case 459:
        case 460:
        case 461:
        case 462:
        case 463:
        case 464:
        case 465:
        case 466:
        case 467:
        case 468:
        case 469:
        case 470:
        case 471:
        case 472:
        case 473:
        case 474:
        case 475:
        case 476:
        case 477:
        case 478:
        case 479:
        case 480:
        case 481:
        case 482:
        case 483:
        case 484:
        case 485:
        case 486:
        case 487:
        case 488:
        case 489:
        case 490:
        case 491:
        case 492:
        case 493:
        case 494:
        case 495:
        case 496:
        case 497:
        case 498:
        case 499:
        case 500:
        case 501:
        case 502:
        case 503:
        case 504:
        case 505:
        case 506:
        case 507:
        case 508:
        case 509:
        case 510:
        case 511:
          goto LABEL_230;
        case 16:
          operator new();
        case 17:
          operator new();
        case 18:
          operator new();
        case 19:
          operator new();
        case 20:
          operator new();
        case 21:
          operator new();
        case 22:
          operator new();
        case 23:
          operator new();
        case 24:
          operator new();
        case 25:
          operator new();
        case 26:
          operator new();
        case 27:
          operator new();
        case 28:
          operator new();
        case 29:
          operator new();
        case 30:
          operator new();
        case 31:
          operator new();
        case 32:
          operator new();
        case 33:
          operator new();
        case 34:
          operator new();
        case 35:
          operator new();
        case 36:
          operator new();
        case 37:
          operator new();
        case 38:
          operator new();
        case 39:
          operator new();
        case 40:
          operator new();
        case 41:
          operator new();
        case 42:
          operator new();
        case 43:
          operator new();
        case 44:
          operator new();
        case 45:
          operator new();
        case 46:
          operator new();
        case 47:
          operator new();
        case 48:
          operator new();
        case 49:
          operator new();
        case 50:
          operator new();
        case 51:
          operator new();
        case 52:
          operator new();
        case 53:
          operator new();
        case 54:
          operator new();
        case 55:
          operator new();
        case 56:
          operator new();
        case 57:
          operator new();
        case 58:
          operator new();
        case 59:
          operator new();
        case 60:
          operator new();
        case 61:
          operator new();
        case 62:
          operator new();
        case 63:
          operator new();
        case 64:
          operator new();
        case 65:
          operator new();
        case 66:
          operator new();
        case 67:
          operator new();
        case 68:
          operator new();
        case 100:
          operator new();
        case 101:
          operator new();
        case 102:
          operator new();
        case 103:
          operator new();
        case 104:
          operator new();
        case 105:
          operator new();
        case 106:
          operator new();
        case 107:
          operator new();
        case 108:
          operator new();
        case 109:
          operator new();
        case 110:
          operator new();
        case 111:
          operator new();
        case 112:
          operator new();
        case 113:
          operator new();
        case 114:
          operator new();
        case 115:
          operator new();
        case 116:
          operator new();
        case 117:
          operator new();
        case 118:
          operator new();
        case 119:
          operator new();
        case 120:
          operator new();
        case 121:
          operator new();
        case 122:
          operator new();
        case 123:
          operator new();
        case 124:
          operator new();
        case 125:
          operator new();
        case 126:
          operator new();
        case 127:
          operator new();
        case 128:
          operator new();
        case 129:
          operator new();
        case 130:
          operator new();
        case 131:
          operator new();
        case 132:
          operator new();
        case 133:
          operator new();
        case 134:
          operator new();
        case 135:
          operator new();
        case 136:
          operator new();
        case 139:
          operator new();
        case 140:
          operator new();
        case 141:
          operator new();
        case 142:
          operator new();
        case 143:
          operator new();
        case 144:
          operator new();
        case 145:
          operator new();
        case 148:
          operator new();
        case 150:
          operator new();
        case 151:
          operator new();
        case 152:
          operator new();
        case 153:
          operator new();
        case 154:
          operator new();
        case 155:
          operator new();
        case 156:
          operator new();
        case 157:
          operator new();
        case 158:
          operator new();
        case 159:
          operator new();
        case 160:
          operator new();
        case 161:
          operator new();
        case 162:
          operator new();
        case 163:
          operator new();
        case 164:
          operator new();
        case 165:
          operator new();
        case 166:
          operator new();
        case 167:
          operator new();
        case 168:
          operator new();
        case 169:
          operator new();
        case 170:
          operator new();
        case 171:
          operator new();
        case 172:
          operator new();
        case 173:
          operator new();
        case 174:
          operator new();
        case 175:
          operator new();
        case 176:
          operator new();
        case 177:
          operator new();
        case 178:
          operator new();
        case 179:
          operator new();
        case 180:
          operator new();
        case 181:
          operator new();
        case 182:
          operator new();
        case 183:
          operator new();
        case 184:
          operator new();
        case 185:
          operator new();
        case 186:
          operator new();
        case 187:
          operator new();
        case 188:
          operator new();
        case 189:
          operator new();
        case 190:
          operator new();
        case 191:
          operator new();
        case 192:
          operator new();
        case 193:
          operator new();
        case 194:
          operator new();
        case 195:
          operator new();
        case 196:
          operator new();
        case 197:
          operator new();
        case 198:
          operator new();
        case 199:
          operator new();
        case 200:
          operator new();
        case 201:
          operator new();
        case 202:
          operator new();
        case 203:
          operator new();
        case 204:
          operator new();
        case 205:
          operator new();
        case 206:
          operator new();
        case 207:
          operator new();
        case 208:
          operator new();
        case 209:
          operator new();
        case 210:
          operator new();
        case 212:
          operator new();
        case 213:
          operator new();
        case 214:
          operator new();
        case 215:
          operator new();
        case 216:
          operator new();
        case 217:
          operator new();
        case 218:
          operator new();
        case 219:
          operator new();
        case 220:
          operator new();
        case 221:
          operator new();
        case 222:
          operator new();
        case 223:
          operator new();
        case 224:
          operator new();
        case 225:
          operator new();
        case 226:
          operator new();
        case 227:
          operator new();
        case 228:
          operator new();
        case 229:
          operator new();
        case 230:
          operator new();
        case 231:
          operator new();
        case 232:
          operator new();
        case 233:
          operator new();
        case 234:
          operator new();
        case 235:
          operator new();
        case 236:
          operator new();
        case 237:
          operator new();
        case 238:
          operator new();
        case 239:
          operator new();
        case 240:
          operator new();
        case 241:
          operator new();
        case 242:
          operator new();
        case 243:
          operator new();
        case 244:
          operator new();
        case 245:
          operator new();
        case 246:
          operator new();
        case 247:
          operator new();
        case 248:
          operator new();
        case 249:
          operator new();
        case 250:
          operator new();
        case 251:
          operator new();
        case 252:
          operator new();
        case 253:
          operator new();
        case 254:
          operator new();
        case 255:
          operator new();
        case 256:
          operator new();
        case 257:
          operator new();
        case 258:
          operator new();
        case 259:
          operator new();
        case 260:
          operator new();
        case 261:
          operator new();
        case 262:
          operator new();
        case 263:
          operator new();
        case 264:
          operator new();
        case 265:
          operator new();
        case 266:
          operator new();
        case 267:
          operator new();
        case 268:
          operator new();
        case 269:
          operator new();
        case 270:
          operator new();
        case 271:
          operator new();
        case 272:
          operator new();
        case 273:
          operator new();
        case 274:
          operator new();
        case 275:
          operator new();
        case 276:
          operator new();
        case 277:
          operator new();
        case 278:
          operator new();
        case 279:
          operator new();
        case 280:
          operator new();
        case 281:
          operator new();
        case 282:
          operator new();
        case 512:
          operator new();
        default:
          switch(v22)
          {
            case 1001:
              operator new();
            case 1002:
              operator new();
            case 1003:
              operator new();
            case 1004:
              operator new();
            case 1005:
              operator new();
            case 1006:
              operator new();
            case 1007:
              operator new();
            case 1008:
              operator new();
            case 1009:
              operator new();
            case 1010:
              operator new();
            case 1011:
              operator new();
            case 1012:
              operator new();
            case 1013:
              operator new();
            case 1014:
              operator new();
            case 1015:
              operator new();
            case 1016:
              operator new();
            case 1017:
              operator new();
            case 1018:
              operator new();
            case 1019:
              operator new();
            case 1020:
              operator new();
            case 1021:
              operator new();
            case 1022:
              operator new();
            case 1023:
              operator new();
            case 1024:
              operator new();
            case 1025:
              operator new();
            case 1026:
              operator new();
            case 1027:
              operator new();
            case 1028:
              operator new();
            case 1029:
              operator new();
            case 1030:
              operator new();
            case 1031:
              operator new();
            case 1032:
              operator new();
            case 1033:
              operator new();
            case 1034:
              operator new();
            case 1035:
              operator new();
            case 1036:
              operator new();
            case 1037:
              operator new();
            case 1038:
              operator new();
            case 1039:
              operator new();
            case 1040:
              operator new();
            case 1041:
              operator new();
            case 1042:
              operator new();
            case 1043:
              operator new();
            case 1044:
              operator new();
            case 1045:
              operator new();
            case 1046:
              operator new();
            case 1047:
              operator new();
            case 1048:
              operator new();
            case 1049:
              operator new();
            case 1050:
              operator new();
            case 1051:
              operator new();
            case 1052:
              operator new();
            case 1053:
              operator new();
            default:
              goto LABEL_230;
          }

          goto LABEL_230;
      }
    }

    if (v22 > 29999)
    {
      switch(v22)
      {
        case 0x7530:
          operator new();
        case 0x7531:
          operator new();
        case 0x7532:
          operator new();
      }
    }

    else
    {
      switch(v22)
      {
        case 2048:
          operator new();
        case 2049:
          operator new();
        case 2050:
          operator new();
        case 2051:
          operator new();
        case 2052:
          operator new();
        case 2053:
          operator new();
        case 2054:
          operator new();
        case 2055:
          operator new();
        case 2056:
          operator new();
        case 2057:
          operator new();
        case 2058:
          operator new();
        case 2059:
          operator new();
        case 2060:
          operator new();
        case 2061:
          operator new();
        case 2062:
          operator new();
        case 2063:
          operator new();
        case 2064:
          operator new();
        case 2065:
          operator new();
        case 2066:
          operator new();
        case 2067:
          operator new();
        case 2068:
          operator new();
        case 2069:
          operator new();
        case 2070:
          operator new();
        case 2071:
          operator new();
        case 2072:
          operator new();
        case 2073:
          operator new();
        case 2074:
          operator new();
        case 2075:
          operator new();
        case 2076:
          operator new();
        case 2080:
          operator new();
        case 2089:
          operator new();
        case 2090:
          operator new();
        case 2091:
          operator new();
        case 2098:
          operator new();
        case 2099:
          operator new();
        case 2100:
          operator new();
        case 2101:
          operator new();
        case 2102:
          operator new();
        case 2103:
          operator new();
        case 2104:
          operator new();
        case 2105:
          operator new();
        case 2106:
          operator new();
        case 2107:
          operator new();
        case 2108:
          operator new();
        case 2109:
          operator new();
        case 2110:
          operator new();
        case 2111:
          operator new();
        case 2112:
          operator new();
        case 2113:
          operator new();
        case 2114:
          operator new();
        case 2115:
          operator new();
        case 2116:
          operator new();
        case 2117:
          operator new();
        case 2118:
          operator new();
        case 2119:
          operator new();
        case 2120:
          operator new();
        case 2121:
          operator new();
        case 2122:
          operator new();
        case 2123:
          operator new();
        case 2124:
          operator new();
        case 2125:
          operator new();
        case 2126:
          operator new();
        case 2127:
          operator new();
        case 2128:
          operator new();
        case 2129:
          operator new();
        case 2130:
          operator new();
        case 2131:
          operator new();
        case 2132:
          operator new();
        case 2133:
          operator new();
        case 2134:
          operator new();
        case 2135:
          operator new();
        case 2136:
          operator new();
        case 2137:
          operator new();
        case 2138:
          operator new();
        case 2139:
          operator new();
        case 2140:
          operator new();
        case 2141:
          operator new();
        case 2142:
          operator new();
        case 2143:
          operator new();
        case 2144:
          operator new();
        case 2145:
          operator new();
        case 2146:
          operator new();
        case 2147:
          operator new();
        case 2148:
          operator new();
        case 2149:
          operator new();
        case 2150:
          operator new();
        case 2151:
          operator new();
        case 2152:
          operator new();
        case 2153:
          operator new();
        case 2154:
          operator new();
        case 2155:
          operator new();
        case 2156:
          operator new();
        case 2157:
          operator new();
        case 2158:
          operator new();
        case 2159:
          operator new();
        case 2160:
          operator new();
        case 2161:
          operator new();
        case 2162:
          operator new();
        case 2163:
          operator new();
        case 2164:
          operator new();
        case 2165:
          operator new();
        case 2166:
          operator new();
        case 2167:
          operator new();
        case 2168:
          operator new();
        case 2169:
          operator new();
        case 2170:
          operator new();
        case 2171:
          operator new();
        case 2172:
          operator new();
        case 2173:
          operator new();
        case 2174:
          operator new();
        case 2175:
          operator new();
        case 2176:
          operator new();
        case 2177:
          operator new();
        case 2178:
          operator new();
        case 2179:
          operator new();
        case 2180:
          operator new();
        case 2181:
          operator new();
        case 2182:
          operator new();
        case 2183:
          operator new();
        case 2184:
          operator new();
        case 2185:
          operator new();
        case 2186:
          operator new();
        case 2187:
          operator new();
        case 2188:
          operator new();
        case 2189:
          operator new();
        case 2190:
          operator new();
        case 2191:
          operator new();
        case 2192:
          operator new();
        case 2193:
          operator new();
        case 2194:
          operator new();
        case 2195:
          operator new();
        case 2196:
          operator new();
        case 2197:
          operator new();
        case 2198:
          operator new();
        case 2199:
          operator new();
        case 2200:
          operator new();
        case 2201:
          operator new();
        case 2202:
          operator new();
        case 2203:
          operator new();
        case 2204:
          operator new();
        case 2205:
          operator new();
        case 2206:
          operator new();
        case 2207:
          operator new();
        case 2208:
          operator new();
        case 2209:
          operator new();
        case 2210:
          operator new();
        case 2211:
          operator new();
        case 2212:
          operator new();
        case 2213:
          operator new();
        case 2214:
          operator new();
        case 2215:
          operator new();
        case 2216:
          operator new();
        case 2217:
          operator new();
        case 2218:
          operator new();
        case 2219:
          operator new();
        case 2220:
          operator new();
        case 2221:
          operator new();
        case 2222:
          operator new();
        case 2223:
          operator new();
        case 2224:
          operator new();
        case 2225:
          operator new();
        case 2226:
          operator new();
        case 2227:
          operator new();
        case 2228:
          operator new();
        case 2229:
          operator new();
        case 2230:
          operator new();
        case 2231:
          operator new();
        case 2232:
          operator new();
        case 2233:
          operator new();
        case 2234:
          operator new();
        case 2235:
          operator new();
        case 2236:
          operator new();
        case 2237:
          operator new();
        case 2238:
          operator new();
        case 2239:
          operator new();
        case 2240:
          operator new();
        case 2241:
          operator new();
        case 2242:
          operator new();
        case 2243:
          operator new();
        case 2244:
          operator new();
        case 2245:
          operator new();
        case 2246:
          operator new();
        case 2247:
          operator new();
        case 2248:
          operator new();
        case 2249:
          operator new();
        case 2250:
          operator new();
        case 2251:
          operator new();
        case 2252:
          operator new();
        case 2253:
          operator new();
        case 2254:
          operator new();
        case 2257:
          operator new();
        case 2258:
          operator new();
        default:
          break;
      }
    }

LABEL_230:
    if (!PB::Reader::skip(this))
    {
      v24 = 0;
      return v24 & 1;
    }

LABEL_525:
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(this + 24);
  }

  v24 = v4 ^ 1;
  return v24 & 1;
}