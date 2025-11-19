void sub_23EBA9DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_23EBA9E38(CFDictionaryRef *a1, uint64_t a2, CFMutableDictionaryRef *a3, uint64_t a4)
{
  if (!a3)
  {
    return 4294967292;
  }

  v7 = sub_23EB9C020(a1, 0);

  return sub_23EBA9CF4(a1, "raMA", v7, a3, a4);
}

uint64_t sub_23EBA9EAC(CFDictionaryRef *a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  if (!a3)
  {
    v10 = 4294967292;
LABEL_15:
    *a3 = &stru_285145FE8;
    return v10;
  }

  v8 = sub_23EB9C020(a1, 0);
  v9 = sub_23EBA9CF4(a1, "raMA", v8, &v26, a4);
  v10 = v9;
  if ((a4 != 1 || v9 != -5) && !v9)
  {
    v11 = sub_23EB8F4AC(a1, 0);
    v12 = sub_23EBA9CF4(a1, "raMA", v11, &v25, a4);
    v10 = v12;
    if ((a4 != 1 || v12 != -5) && !v12 && v25 && v26)
    {
      v14 = sub_23EB710E8(v25, &v24);
      if (v14)
      {
        goto LABEL_20;
      }

      if (!v24)
      {
        v10 = 4294960568;
        goto LABEL_10;
      }

      v14 = sub_23EB710E8(v26, &v23);
      if (v14)
      {
LABEL_20:
        v10 = v14;
      }

      else if (v23)
      {
        v15 = *MEMORY[0x277CBECE8];
        v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s / %s", v23, v24);
        *a3 = v16;
        if (v16)
        {
          if (*(a2 + 23) >= 0)
          {
            v22 = a2;
          }

          else
          {
            v22 = *a2;
          }

          v10 = sub_23EB6FDFC(v15, a1[6], "%ks=%O", v17, v18, v19, v20, v21, v22);
          CFRelease(*a3);
        }

        else
        {
          v10 = 4294960579;
        }
      }

      else
      {
        v10 = 4294960568;
      }
    }
  }

  if (v24)
  {
    free(v24);
  }

LABEL_10:
  if (v23)
  {
    free(v23);
  }

  if (v10)
  {
    goto LABEL_15;
  }

  return v10;
}

uint64_t sub_23EBAA070(CFDictionaryRef *a1, uint64_t a2, CFMutableDictionaryRef *a3, uint64_t a4)
{
  sub_23EB8CCB8(&v11, "WiFi.");
  if (a3)
  {
    if (sub_23EB8BE08(a1, 2003390540) && sub_23EB8BE08(a1, 1198748750))
    {
      sub_23EB8CCB8(__p, "guestnet_intrabss");
      sub_23EB90814(&v11, __p, &v11);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      v7 = sub_23EB94960(a1, &v11, a3, a4);
      if (v7 == -5)
      {
        v7 = 0;
        *a3 = *MEMORY[0x277CBED10];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 4294967292;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBAA16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_23EBAA1A4(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  sub_23EB8CCB8(&v11, "WiFi.");
  if (sub_23EB8BE08(a1, 2003390540) && sub_23EB8BE08(a1, 1198748750))
  {
    sub_23EB8CCB8(__p, "guestnet_intrabss");
    sub_23EB90814(&v11, __p, &v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB8FC04(a1, &v11, a3, a4);
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBAA278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_23EBAA2B0(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&__str, 0, sizeof(__str));
  valuePtr = 0;
  if (a3)
  {
    if (!sub_23EB8BD6C(a1, 1937326413, &__str, a4))
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      v9 = p_str + size;
      if (size >= 11)
      {
        v10 = size;
        v11 = p_str;
        while (1)
        {
          v12 = memchr(v11, 84, v10 - 10);
          if (!v12)
          {
            goto LABEL_22;
          }

          if (*v12 == 0x73706143656D6954 && *(v12 + 3) == 0x656C757370614365)
          {
            break;
          }

          v11 = (v12 + 1);
          v10 = v9 - v11;
          if (v9 - v11 < 11)
          {
            goto LABEL_22;
          }
        }

        if (v12 != v9 && v12 - p_str != -1)
        {
          valuePtr = 6;
          goto LABEL_45;
        }
      }

LABEL_22:
      if (size >= 7)
      {
        v15 = p_str;
        while (1)
        {
          v16 = memchr(v15, 65, size - 6);
          if (!v16)
          {
            goto LABEL_43;
          }

          if (*v16 == 1349675329 && *(v16 + 3) == 1953656656)
          {
            break;
          }

          v15 = (v16 + 1);
          size = v9 - v15;
          if (v9 - v15 < 7)
          {
            goto LABEL_43;
          }
        }

        if (v16 == v9)
        {
          goto LABEL_43;
        }

        v18 = v16 - p_str;
        if (v18 == -1)
        {
          goto LABEL_43;
        }

        v19 = std::string::find(&__str, 44, 0);
        std::string::basic_string(&v32, &__str, v18 + 7, v19 - (v18 + 7), &v35);
        v20 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v20 = v32.__r_.__value_.__l.__size_;
          if (!v32.__r_.__value_.__l.__size_)
          {
            v22 = 0;
LABEL_41:
            operator delete(v32.__r_.__value_.__l.__data_);
LABEL_42:
            if (v22)
            {
              goto LABEL_45;
            }

            goto LABEL_43;
          }

          v21 = v32.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (!*(&v32.__r_.__value_.__s + 23))
          {
            goto LABEL_43;
          }

          v21 = &v32;
        }

        v22 = sub_23EB7EB84(v21, v20, 10);
        valuePtr = v22;
        if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

LABEL_43:
    LODWORD(v32.__r_.__value_.__l.__data_) = 0;
    v14 = sub_23EB89D74(a1, 1937326416, &v32, 0);
    if (!v14)
    {
      valuePtr = sub_23EB4BDDC(LODWORD(v32.__r_.__value_.__l.__data_));
LABEL_45:
      v23 = *MEMORY[0x277CBECE8];
      v24 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
      *a3 = v24;
      if (v24)
      {
        if (*(a2 + 23) >= 0)
        {
          v30 = a2;
        }

        else
        {
          v30 = *a2;
        }

        v14 = sub_23EB6FDFC(v23, *(a1 + 48), "%ks=%O", v25, v26, v27, v28, v29, v30);
        CFRelease(*a3);
      }

      else
      {
        v14 = 4294960568;
      }
    }
  }

  else
  {
    v14 = 4294967292;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_23EBAA54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAA590(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (sub_23EB8BE08(a1, 2003390540))
  {
    sub_23EB8FB78(a2, 1381328492, &__p);
    v8 = sub_23EB97374(a1, &__p, &v11, a4);
    if (!v8)
    {
      if (v11)
      {
        v9 = MEMORY[0x277CBED28];
      }

      else
      {
        v9 = MEMORY[0x277CBED10];
      }

      *a3 = *v9;
    }
  }

  else
  {
    v8 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBAA658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAA674(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (sub_23EB8BE08(a1, 2003390540))
  {
    sub_23EB8FB78(a2, 1381328492, &__p);
    v8 = sub_23EB97374(a1, &__p, &v11, a4);
    if (!v8)
    {
      if (*MEMORY[0x277CBED28] == a3)
      {
        v9 = (v11 & 0xFFFFFFFE) + 1;
      }

      else
      {
        v9 = v11 & 0xFFFFFFFE;
      }

      v11 = v9;
      v8 = sub_23EB906B8(a1, &__p, v9, a4);
    }
  }

  else
  {
    v8 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBAA74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAA768(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (sub_23EB8BE08(a1, 2003390540))
  {
    sub_23EB8FB78(a2, 1381328492, &__p);
    v8 = sub_23EB97374(a1, &__p, &v11, a4);
    if (!v8)
    {
      if ((v11 & 2) != 0)
      {
        v9 = MEMORY[0x277CBED28];
      }

      else
      {
        v9 = MEMORY[0x277CBED10];
      }

      *a3 = *v9;
    }
  }

  else
  {
    v8 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBAA830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAA84C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v10 = 0;
  if (sub_23EB8BE08(a1, 2003390540))
  {
    sub_23EB8FB78(a2, 1381328492, &__p);
    v8 = sub_23EB97374(a1, &__p, &v10, a4);
    if (!v8)
    {
      v10 = v10 & 0xFFFFFFFD | (2 * (*MEMORY[0x277CBED28] == a3));
      v8 = sub_23EB906B8(a1, &__p, v10, a4);
    }
  }

  else
  {
    v8 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBAA924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAA940(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (sub_23EB8BE08(a1, 2003390540))
  {
    sub_23EB8FB78(a2, 1381328492, &__p);
    v8 = sub_23EB97374(a1, &__p, &v11, a4);
    if (!v8)
    {
      if ((v11 & 4) != 0)
      {
        v9 = MEMORY[0x277CBED28];
      }

      else
      {
        v9 = MEMORY[0x277CBED10];
      }

      *a3 = *v9;
    }
  }

  else
  {
    v8 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBAAA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAAA24(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v10 = 0;
  if (sub_23EB8BE08(a1, 2003390540))
  {
    sub_23EB8FB78(a2, 1381328492, &__p);
    v8 = sub_23EB97374(a1, &__p, &v10, a4);
    if (!v8)
    {
      v10 = v10 & 0xFFFFFFFB | (4 * (*MEMORY[0x277CBED28] == a3));
      v8 = sub_23EB906B8(a1, &__p, v10, a4);
    }
  }

  else
  {
    v8 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBAAAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAAB18(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1163543366, &__p);
    v7 = sub_23EB97374(a1, &__p, &v11, a4);
    v8 = v7;
    if ((a4 != 1 || v7 != -5) && !v7)
    {
      if (v11)
      {
        v9 = MEMORY[0x277CBED10];
      }

      else
      {
        v9 = MEMORY[0x277CBED28];
      }

      *a3 = *v9;
    }
  }

  else
  {
    v8 = 4294967292;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBAABE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAABFC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  sub_23EB8FB78(a2, 1163543366, &__p);
  v8 = sub_23EB97374(a1, &__p, &v11, a4);
  if (!v8)
  {
    v9 = v11 & 0xFFFFFFFE;
    if (*MEMORY[0x277CBED28] != a3)
    {
      ++v9;
    }

    v11 = v9;
    sub_23EB8FB78(a2, 1163543366, &__p);
    v8 = sub_23EB906B8(a1, &__p, v11, a4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBAACDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAACF8(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1163543366, &__p);
    v7 = sub_23EB97374(a1, &__p, &v11, a4);
    v8 = v7;
    if ((a4 != 1 || v7 != -5) && !v7)
    {
      if ((v11 & 2) != 0)
      {
        v9 = MEMORY[0x277CBED28];
      }

      else
      {
        v9 = MEMORY[0x277CBED10];
      }

      *a3 = *v9;
    }
  }

  else
  {
    v8 = 4294967292;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBAADC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAADDC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v10 = 0;
  sub_23EB8FB78(a2, 1163543366, &__p);
  v8 = sub_23EB97374(a1, &__p, &v10, a4);
  if (!v8)
  {
    v10 = v10 & 0xFFFFFFFD | (2 * (*MEMORY[0x277CBED28] == a3));
    sub_23EB8FB78(a2, 1163543366, &__p);
    v8 = sub_23EB906B8(a1, &__p, v10, a4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBAAEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAAED8(CFDictionaryRef *a1, unsigned __int8 *a2, CFMutableDictionaryRef *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  sub_23EB8FB78(a2, 1229213293, &__p);
  v7 = sub_23EB94960(a1, &__p, a3, a4);
  if (v7 == -5 || !*a3 || !CFStringGetLength(*a3))
  {
    v10 = 0;
    v7 = sub_23EB8C68C(a1, 1298223988, &v10, 0);
    if (!v7)
    {
      if (v10)
      {
        sub_23EBB0B44(v10, 0, 0, a3);
        if (v8)
        {
          v7 = 4294967291;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 4294967291;
      }
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBAAFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAAFE0(uint64_t a1, unsigned __int8 *a2, const __CFString *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  sub_23EB8FB78(a2, 1229213293, &__p);
  v7 = sub_23EB8FC04(a1, &__p, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBAB060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAB07C(CFDictionaryRef *a1, uint64_t a2, CFTypeRef *a3)
{
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v6 = sub_23EB8C68C(a1, 1298223988, &v24, 0);
  if (v6)
  {
    return v6;
  }

  if (!v24)
  {
    return 4294967291;
  }

  sub_23EBB064C(v24, 0, &v23, &v22, &v21);
  if (v6)
  {
    return v6;
  }

  v14 = *MEMORY[0x277CBECE8];
  v6 = sub_23EB6F348(*MEMORY[0x277CBECE8], a3, "{%kO=%i%kO=%i%kO=%i}", v9, v10, v11, v12, v13, @"mbsize");
  if (v6)
  {
    return v6;
  }

  if (!*a3)
  {
    return 4294960568;
  }

  if (*(a2 + 23) >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  v7 = sub_23EB6FDFC(v14, a1[6], "%ks=%O", v15, v16, v17, v18, v19, v20);
  CFRelease(*a3);
  return v7;
}

uint64_t sub_23EBAB1B0(CFDictionaryRef *a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  theDict = 0;
  *a3 = 0;
  sub_23EB8FB78(a2, 1668050755, &__p);
  v7 = sub_23EB94960(a1, &__p, &theDict, a4);
  if (v7)
  {
    if (*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  Value = CFDictionaryGetValue(theDict, @"enabled");
  *a3 = Value;
  if (!Value)
  {
LABEL_3:
    *a3 = *MEMORY[0x277CBED28];
  }

LABEL_4:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBAB270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAB28C(CFDictionaryRef *a1, unsigned __int8 *a2, const void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  theDict = 0;
  sub_23EB8FB78(a2, 1668050755, &__p);
  v7 = sub_23EB94960(a1, &__p, &theDict, a4);
  if (!v7)
  {
    CFDictionarySetValue(theDict, @"enabled", a3);
    v7 = sub_23EB8FC04(a1, &__p, theDict, a4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBAB340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAB35C(CFDictionaryRef *a1, uint64_t a2, __CFArray **a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  *a3 = 0;
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (sub_23EB8BE08(a1, 1766018116) && (theDict = 0, sub_23EB8FB78(a2, 1766026340, &__p), !sub_23EB94960(a1, &__p, &theDict, a4)) && (v18 = CFDictionaryGetValue(theDict, @"users"), (v19 = v18) != 0) && (Count = CFArrayGetCount(v18), Count >= 1))
  {
    v21 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v19, v21);
      if (!ValueAtIndex)
      {
        break;
      }

      v23 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      Value = CFDictionaryGetValue(ValueAtIndex, @"appleID");
      if (!Value)
      {
        break;
      }

      CFDictionarySetValue(v23, @"appleID", Value);
      v25 = CFDictionaryGetValue(ValueAtIndex, @"ncBag");
      if (v25)
      {
        CFDictionarySetValue(v23, @"ncBag", v25);
      }

      v26 = CFDictionaryGetValue(ValueAtIndex, @"accountStatus");
      if (v26)
      {
        CFDictionarySetValue(v23, @"status", v26);
      }

      else
      {
        v16 = sub_23EB6FDFC(v8, v23, "%kO=%i", v27, v28, v29, v30, v31, @"status");
        if (v16)
        {
          goto LABEL_7;
        }
      }

      CFArrayAppendValue(Mutable, v23);
      CFRelease(v23);
      if (Count == ++v21)
      {
        goto LABEL_3;
      }
    }

    v16 = 0;
  }

  else
  {
LABEL_3:
    *a3 = Mutable;
    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    v16 = sub_23EB6FDFC(v8, a1[6], "%ks=%O", v10, v11, v12, v13, v14, v15);
  }

LABEL_7:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_23EBAB5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAB5D4(CFDictionaryRef *a1, unsigned __int8 *a2, const __CFArray *a3, unsigned int a4)
{
  memset(&__p, 0, sizeof(__p));
  theDict = 0;
  if (!a3 || !sub_23EB8BE08(a1, 1766018116))
  {
    v15 = 0;
    goto LABEL_34;
  }

  allocator = *MEMORY[0x277CBECE8];
  theArray = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  Count = CFArrayGetCount(a3);
  if (Count < 1)
  {
LABEL_10:
    sub_23EB8FB78(a2, 1766026340, &__p);
    v15 = sub_23EB94960(a1, &__p, &theDict, a4);
    if (v15)
    {
      goto LABEL_32;
    }

    Value = CFDictionaryGetValue(theDict, @"users");
    v17 = Value;
    if (Value)
    {
      v18 = CFArrayGetCount(Value);
    }

    else
    {
      v18 = 0;
    }

    if (CFArrayGetCount(theArray) == v18)
    {
      cf1 = 0;
      theString1 = 0;
      cf2 = 0;
      theString2 = 0;
      if (v18 >= 1)
      {
        v24 = 0;
        do
        {
          sub_23EB6FF14(v17, &theString1, "[*].%kO", v19, v20, v21, v22, v23, v24);
          v15 = v30;
          if (v30)
          {
            goto LABEL_32;
          }

          sub_23EB6FF14(theArray, &theString2, "[*].%kO", v25, v26, v27, v28, v29, v24);
          v15 = v31;
          if (v31)
          {
            goto LABEL_32;
          }

          if (!theString1 || CFStringCompare(theString1, theString2, 0))
          {
            goto LABEL_29;
          }

          sub_23EB6FF14(v17, &cf1, "[*].%kO", v32, v33, v34, v35, v36, v24);
          v15 = v42;
          if (v42)
          {
            goto LABEL_32;
          }

          sub_23EB6FF14(theArray, &cf2, "[*].%kO", v37, v38, v39, v40, v41, v24);
          v15 = v43;
          if (v43)
          {
            goto LABEL_32;
          }

          if (!cf1 || !CFEqual(cf1, cf2))
          {
            goto LABEL_29;
          }
        }

        while (v18 != ++v24);
      }
    }

    else
    {
LABEL_29:
      DeepCopy = CFPropertyListCreateDeepCopy(allocator, theDict, 2uLL);
      v45 = DeepCopy;
      if (DeepCopy)
      {
        CFDictionarySetValue(DeepCopy, @"users", theArray);
        v15 = sub_23EB8FC04(a1, &__p, v45, a4);
        CFRelease(v45);
        goto LABEL_32;
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = MEMORY[0x277CBF138];
    v9 = MEMORY[0x277CBF150];
    while (1)
    {
      Mutable = CFDictionaryCreateMutable(allocator, 0, v8, v9);
      if (!Mutable)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a3, v7);
      v12 = ValueAtIndex;
      if (!ValueAtIndex)
      {
        CFRelease(Mutable);
        break;
      }

      v13 = CFDictionaryGetValue(ValueAtIndex, @"appleID");
      if (!v13)
      {
        break;
      }

      CFDictionarySetValue(Mutable, @"appleID", v13);
      v14 = CFDictionaryGetValue(v12, @"ncBag");
      if (!v14)
      {
        break;
      }

      CFDictionarySetValue(Mutable, @"ncBag", v14);
      CFArrayAppendValue(theArray, Mutable);
      CFRelease(Mutable);
      if (Count == ++v7)
      {
        goto LABEL_10;
      }
    }
  }

  v15 = 0;
LABEL_32:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_34:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_23EBAB900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAB92C(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v24 = 0;
  v23 = 0;
  valuePtr = 0;
  memset(&__p, 0, sizeof(__p));
  if (a3)
  {
    *a3 = 0;
    sub_23EB8FB78(a2, 912483943, &__p);
    v8 = sub_23EB97374(a1, &__p, &v24, a4);
    v9 = v8;
    if (a4 == 1 && v8 == -5)
    {
      goto LABEL_13;
    }

    if (v8)
    {
      goto LABEL_13;
    }

    sub_23EB8FB78(a2, 912356724, &__p);
    v10 = sub_23EB97588(a1, &__p, &v23, 0);
    v9 = v10;
    if (a4 == 1 && v10 == -5)
    {
      goto LABEL_13;
    }

    if (v10)
    {
      goto LABEL_13;
    }

    if (v24 > 2)
    {
      if (v24 != 5 && v24 != 3)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (!v24)
      {
        valuePtr = 0;
        goto LABEL_23;
      }

      if (v24 != 1)
      {
LABEL_23:
        v13 = *MEMORY[0x277CBECE8];
        v14 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
        *a3 = v14;
        if (v14)
        {
          if (*(a2 + 23) >= 0)
          {
            v20 = a2;
          }

          else
          {
            v20 = *a2;
          }

          v9 = sub_23EB6FDFC(v13, *(a1 + 48), "%ks=%O", v15, v16, v17, v18, v19, v20);
          CFRelease(*a3);
        }

        else
        {
          v9 = 4294960568;
        }

        goto LABEL_13;
      }
    }

    if (v23)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    valuePtr = v12;
    goto LABEL_23;
  }

  v9 = 4294967292;
LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBABAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBABAEC(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  valuePtr = 0;
  v14 = 0;
  memset(&__p, 0, sizeof(__p));
  if (!number)
  {
    goto LABEL_19;
  }

  if (!CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    v8 = 4294967293;
    goto LABEL_20;
  }

  sub_23EB8FB78(a2, 912356724, &__p);
  v15 = 0;
  v7 = sub_23EB97588(a1, &__p, &v15, a4);
  v8 = v7;
  if (a4 == 1 && v7 == -5)
  {
    goto LABEL_20;
  }

  if (v7)
  {
    goto LABEL_20;
  }

  sub_23EB8FB78(a2, 912483943, &__p);
  v9 = sub_23EB97374(a1, &__p, &v14, a4);
  v8 = v9;
  if (a4 == 1 && v9 == -5)
  {
    goto LABEL_20;
  }

  if (v9)
  {
    goto LABEL_20;
  }

  if ((valuePtr - 1) < 2)
  {
    v15 = valuePtr == 1;
    if (!v14)
    {
      v14 = 1;
    }

    goto LABEL_15;
  }

  if (valuePtr)
  {
LABEL_19:
    v8 = 4294967292;
    goto LABEL_20;
  }

  v14 = 0;
LABEL_15:
  sub_23EB8FB78(a2, 912356724, &__p);
  v10 = MEMORY[0x277CBED28];
  if (!v15)
  {
    v10 = MEMORY[0x277CBED10];
  }

  v8 = sub_23EB8FC04(a1, &__p, *v10, a4);
  if (!v8)
  {
    sub_23EB8FB78(a2, 912483943, &__p);
    v8 = sub_23EB906B8(a1, &__p, v14, a4);
  }

LABEL_20:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBABCA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBABCC0(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  valuePtr = 0;
  memset(&__p, 0, sizeof(__p));
  if (a3)
  {
    *a3 = 0;
    sub_23EB8FB78(a2, 912483943, &__p);
    v8 = sub_23EB97374(a1, &__p, &valuePtr, a4);
    v9 = v8;
    if (a4 == 1 && v8 == -5 || v8)
    {
      goto LABEL_8;
    }

    if (valuePtr == 3)
    {
      v10 = 1;
    }

    else
    {
      if (!sub_23EB9D5D0(a1))
      {
        HIDWORD(valuePtr) = 0;
LABEL_15:
        v12 = *MEMORY[0x277CBECE8];
        v13 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr + 4);
        *a3 = v13;
        if (v13)
        {
          if (*(a2 + 23) >= 0)
          {
            v19 = a2;
          }

          else
          {
            v19 = *a2;
          }

          v9 = sub_23EB6FDFC(v12, *(a1 + 48), "%ks=%O", v14, v15, v16, v17, v18, v19);
          CFRelease(*a3);
        }

        else
        {
          v9 = 4294960568;
        }

        goto LABEL_8;
      }

      v10 = 2;
    }

    HIDWORD(valuePtr) = v10;
    goto LABEL_15;
  }

  v9 = 4294967292;
LABEL_8:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBABE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBABE1C(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  if (!number)
  {
    return 4294967292;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    return 4294967293;
  }

  if (valuePtr > 2)
  {
    return 4294967292;
  }

  v7 = dword_23EC21F40[valuePtr];
  sub_23EB8FB78(a2, 912483943, &__p);
  v8 = sub_23EB906B8(a1, &__p, v7, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBABEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBABF00(CFDictionaryRef *a1, uint64_t a2, CFMutableArrayRef *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  if (a3)
  {
    v8 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    *a3 = Mutable;
    if (Mutable)
    {
      if (sub_23EB8BE08(a1, 1181898604) && (theDict = 0, sub_23EB8FB78(a2, 1718186597, &__p), !sub_23EB94960(a1, &__p, &theDict, a4)) && theDict && (v10 = CFDictionaryGetValue(theDict, @"entries"), (v11 = v10) != 0) && (v12 = CFArrayGetCount(v10), v41 = 0, v12 >= 1))
      {
        v13 = 0;
        v14 = *MEMORY[0x277CBED10];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, v13);
          v21 = ValueAtIndex;
          if (!ValueAtIndex)
          {
            break;
          }

          sub_23EB6FF14(ValueAtIndex, &v41, "%kO:BOOL", v16, v17, v18, v19, v20, @"entryEnabled");
          if (v22 || v41)
          {
            DeepCopy = CFPropertyListCreateDeepCopy(v8, v21, 2uLL);
            v24 = DeepCopy;
            if (!DeepCopy)
            {
              goto LABEL_29;
            }

            CFDictionarySetValue(DeepCopy, @"firewallEntryIsIPv6", v14);
            CFArrayAppendValue(*a3, v24);
            CFRelease(v24);
          }

          if (v12 == ++v13)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        if (!sub_23EB8BE08(a1, 1768961606) || (theDict = 0, sub_23EB8FB78(a2, 912684908, &__p), sub_23EB94960(a1, &__p, &theDict, a4)) || !theDict || (Value = CFDictionaryGetValue(theDict, @"entries"), (v31 = Value) == 0) || (Count = CFArrayGetCount(Value), Count < 1))
        {
LABEL_24:
          if (*(a2 + 23) >= 0)
          {
            v38 = a2;
          }

          else
          {
            v38 = *a2;
          }

          v39 = sub_23EB6FDFC(v8, a1[6], "%ks=%O", v25, v26, v27, v28, v29, v38);
          CFRelease(*a3);
          goto LABEL_30;
        }

        v33 = 0;
        v34 = *MEMORY[0x277CBED28];
        while (1)
        {
          v35 = CFArrayGetValueAtIndex(v31, v33);
          if (!v35)
          {
            break;
          }

          v36 = CFPropertyListCreateDeepCopy(v8, v35, 2uLL);
          v37 = v36;
          if (!v36)
          {
            goto LABEL_29;
          }

          CFDictionarySetValue(v36, @"firewallEntryIsIPv6", v34);
          CFArrayAppendValue(*a3, v37);
          CFRelease(v37);
          if (Count == ++v33)
          {
            goto LABEL_24;
          }
        }
      }

      v39 = 4294967291;
    }

    else
    {
LABEL_29:
      v39 = 4294967293;
    }
  }

  else
  {
    v39 = 4294967292;
  }

LABEL_30:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v39;
}

void sub_23EBAC1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAC220(CFDictionaryRef *a1, unsigned __int8 *a2, CFTypeRef cf, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v44 = 0;
  v42 = 0;
  theDict = 0;
  if (!cf || (v8 = CFGetTypeID(cf), v8 != CFArrayGetTypeID()))
  {
    v9 = 4294967292;
    goto LABEL_51;
  }

  Count = CFArrayGetCount(cf);
  if (sub_23EB8BE08(a1, 1181898604))
  {
    sub_23EB8FB78(a2, 1718186597, &__p);
    v9 = sub_23EB94960(a1, &__p, &theDict, a4);
    if (v9)
    {
      Value = 0;
    }

    else
    {
      Value = CFDictionaryGetValue(theDict, @"entries");
      if (!Value)
      {
        v9 = 4294967291;
        goto LABEL_51;
      }
    }

    theArray = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  }

  else
  {
    Value = 0;
    theArray = 0;
    v9 = 0;
  }

  if (sub_23EB8BE08(a1, 1768961606))
  {
    sub_23EB8FB78(a2, 912684908, &__p);
    v9 = sub_23EB94960(a1, &__p, &v42, a4);
    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = CFDictionaryGetValue(v42, @"entries");
      if (!v11)
      {
        Mutable = 0;
LABEL_46:
        v9 = 4294967291;
        goto LABEL_47;
      }
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  }

  else
  {
    v11 = 0;
    Mutable = 0;
  }

  if (Count >= 1)
  {
    v36 = v11;
    v37 = Value;
    v38 = a2;
    v39 = a1;
    v13 = 0;
    v14 = *MEMORY[0x277CBECE8];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(cf, v13);
      if (!ValueAtIndex)
      {
        goto LABEL_46;
      }

      DeepCopy = CFPropertyListCreateDeepCopy(v14, ValueAtIndex, 2uLL);
      v22 = DeepCopy;
      if (!DeepCopy)
      {
        v9 = 4294967293;
        goto LABEL_47;
      }

      sub_23EB6FF14(DeepCopy, &v44, "%kO:BOOL", v17, v18, v19, v20, v21, @"firewallEntryIsIPv6");
      v9 = v23;
      v24 = v23 == 0;
      v25 = v44;
      CFDictionaryRemoveValue(v22, @"firewallEntryIsIPv6");
      v26 = v24 & v25;
      if (Mutable)
      {
        v27 = v24 & v25;
      }

      else
      {
        v27 = 0;
      }

      v28 = Mutable;
      if (v27 == 1)
      {
        goto LABEL_27;
      }

      v28 = theArray;
      if (!theArray)
      {
        v26 = 1;
      }

      if (v26 != 1)
      {
LABEL_27:
        CFArrayAppendValue(v28, v22);
      }

      CFRelease(v22);
      if (Count == ++v13)
      {
        a4 = a4;
        a2 = v38;
        a1 = v39;
        v11 = v36;
        Value = v37;
        break;
      }
    }
  }

  v29 = 0;
  if (theArray && Value)
  {
    v29 = CFEqual(theArray, Value) == 0;
  }

  v30 = 0;
  if (Mutable && v11)
  {
    v30 = CFEqual(Mutable, v11) == 0;
  }

  if (!v29)
  {
    goto LABEL_39;
  }

  v31 = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], theDict, 2uLL);
  v32 = v31;
  if (!v31)
  {
    goto LABEL_43;
  }

  CFDictionarySetValue(v31, @"entries", theArray);
  sub_23EB8FB78(a2, 1718186597, &__p);
  v9 = sub_23EB8FC04(a1, &__p, v32, a4);
  CFRelease(v32);
  if (!v9)
  {
LABEL_39:
    if (v30)
    {
      v33 = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], v42, 2uLL);
      v34 = v33;
      if (v33)
      {
        CFDictionarySetValue(v33, @"entries", Mutable);
        sub_23EB8FB78(a2, 912684908, &__p);
        v9 = sub_23EB8FC04(a1, &__p, v34, a4);
        CFRelease(v34);
        goto LABEL_47;
      }

LABEL_43:
      v9 = 4294960568;
    }
  }

LABEL_47:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_51:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBAC634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAC65C(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  __p = 0;
  v25 = 0;
  v26 = 0;
  if (!a3)
  {
    v9 = 4294967292;
    goto LABEL_12;
  }

  v23 = 0;
  sub_23EB8FB78(a2, 911696228, &v27);
  v8 = sub_23EB97710(a1, &v27, &__p, a4);
  v9 = v8;
  if ((a4 != 1 || v8 != -5) && !v8)
  {
    sub_23EB8FB78(a2, 911697528, &v27);
    v10 = sub_23EB97374(a1, &v27, &v23, a4);
    v9 = v10;
    if ((a4 != 1 || v10 != -5) && !v10)
    {
      if (SHIBYTE(v26) < 0)
      {
        p_p = __p;
        if (!v25)
        {
          goto LABEL_24;
        }
      }

      else
      {
        p_p = &__p;
        if (!HIBYTE(v26))
        {
LABEL_24:
          v15 = *MEMORY[0x277CBECE8];
          v16 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], p_p, 0x8000100u);
          *a3 = v16;
          if (v16)
          {
            if (*(a2 + 23) >= 0)
            {
              v22 = a2;
            }

            else
            {
              v22 = *a2;
            }

            v9 = sub_23EB6FDFC(v15, *(a1 + 48), "%ks=%O", v17, v18, v19, v20, v21, v22);
            CFRelease(*a3);
          }

          else
          {
            v9 = 4294960568;
          }

          goto LABEL_12;
        }
      }

      v9 = sub_23EB7D978(p_p, 0, &v28, 0, 0, 0, 0);
      if (v9)
      {
        goto LABEL_12;
      }

      v13 = v23;
      if ((v23 & 0xFFFFFFBF) == 0)
      {
        v13 = -1;
        v23 = -1;
      }

      v14 = sub_23EB7E0B8(&v28, 0, 0, v13, v29);
      MEMORY[0x23EF1EFD0](&__p, v14);
      if (SHIBYTE(v26) < 0)
      {
        p_p = __p;
      }

      else
      {
        p_p = &__p;
      }

      goto LABEL_24;
    }
  }

LABEL_12:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBAC87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAC8A8(uint64_t a1, unsigned __int8 *a2, const __CFString *a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(&v18, 0, sizeof(v18));
  v16 = 0;
  v17 = 0;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  if (!a3)
  {
    v7 = 4294967292;
    goto LABEL_6;
  }

  v7 = sub_23EB70FE4(a3, &v17, &v16);
  if (!v7)
  {
    MEMORY[0x23EF1EFD0](&__p, v17);
    v12 = 0;
    if (SHIBYTE(v15) < 0)
    {
      p_p = __p;
      if (v14)
      {
LABEL_15:
        v7 = sub_23EB7D978(p_p, 0, &v20, 0, 0, &v12, 0);
        if (v7)
        {
          goto LABEL_3;
        }

        v10 = sub_23EB7E0B8(&v20, 0, 0, 0xFFFFFFFF, v19);
        MEMORY[0x23EF1EFD0](&__p, v10);
        sub_23EB8FB78(a2, 911696228, &v18);
        v7 = sub_23EB97684(a1, &v18, &__p, a4);
        if (v7)
        {
          goto LABEL_3;
        }

        if (!v12)
        {
          v12 = 64;
        }

        sub_23EB8FB78(a2, 911697528, &v18);
        v11 = v12;
LABEL_24:
        v7 = sub_23EB906B8(a1, &v18, v11, a4);
        goto LABEL_3;
      }

      *__p = 0;
      v14 = 0;
    }

    else
    {
      if (HIBYTE(v15))
      {
        p_p = &__p;
        goto LABEL_15;
      }

      LOBYTE(__p) = 0;
    }

    sub_23EB8FB78(a2, 911696228, &v18);
    v7 = sub_23EB97684(a1, &v18, &__p, a4);
    if (v7)
    {
      goto LABEL_3;
    }

    sub_23EB8FB78(a2, 911697528, &v18);
    v11 = 0;
    goto LABEL_24;
  }

LABEL_3:
  if (v16)
  {
    free(v16);
    v16 = 0;
  }

LABEL_6:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBACAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBACAEC(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  __p = 0;
  v25 = 0;
  v26 = 0;
  if (!a3)
  {
    v9 = 4294967292;
    goto LABEL_12;
  }

  v23 = 0;
  sub_23EB8FB78(a2, 910382945, &v27);
  v8 = sub_23EB97710(a1, &v27, &__p, a4);
  v9 = v8;
  if ((a4 != 1 || v8 != -5) && !v8)
  {
    sub_23EB8FB78(a2, 910382960, &v27);
    v10 = sub_23EB97374(a1, &v27, &v23, a4);
    v9 = v10;
    if ((a4 != 1 || v10 != -5) && !v10)
    {
      if (SHIBYTE(v26) < 0)
      {
        p_p = __p;
        if (!v25)
        {
          goto LABEL_24;
        }
      }

      else
      {
        p_p = &__p;
        if (!HIBYTE(v26))
        {
LABEL_24:
          v15 = *MEMORY[0x277CBECE8];
          v16 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], p_p, 0x8000100u);
          *a3 = v16;
          if (v16)
          {
            if (*(a2 + 23) >= 0)
            {
              v22 = a2;
            }

            else
            {
              v22 = *a2;
            }

            v9 = sub_23EB6FDFC(v15, *(a1 + 48), "%ks=%O", v17, v18, v19, v20, v21, v22);
            CFRelease(*a3);
          }

          else
          {
            v9 = 4294960568;
          }

          goto LABEL_12;
        }
      }

      v9 = sub_23EB7D978(p_p, 0, &v28, 0, 0, 0, 0);
      if (v9)
      {
        goto LABEL_12;
      }

      v13 = v23;
      if ((v23 & 0xFFFFFFBF) == 0)
      {
        v13 = -1;
        v23 = -1;
      }

      v14 = sub_23EB7E0B8(&v28, 0, 0, v13, v29);
      MEMORY[0x23EF1EFD0](&__p, v14);
      if (SHIBYTE(v26) < 0)
      {
        p_p = __p;
      }

      else
      {
        p_p = &__p;
      }

      goto LABEL_24;
    }
  }

LABEL_12:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBACD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBACD40(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  __p = 0;
  v25 = 0;
  v26 = 0;
  if (!a3)
  {
    v9 = 4294967292;
    goto LABEL_12;
  }

  v23 = 0;
  sub_23EB8FB78(a2, 911230049, &v27);
  v8 = sub_23EB97710(a1, &v27, &__p, a4);
  v9 = v8;
  if ((a4 != 1 || v8 != -5) && !v8)
  {
    sub_23EB8FB78(a2, 911230060, &v27);
    v10 = sub_23EB97374(a1, &v27, &v23, a4);
    v9 = v10;
    if ((a4 != 1 || v10 != -5) && !v10)
    {
      if (SHIBYTE(v26) < 0)
      {
        p_p = __p;
        if (!v25)
        {
          goto LABEL_24;
        }
      }

      else
      {
        p_p = &__p;
        if (!HIBYTE(v26))
        {
LABEL_24:
          v15 = *MEMORY[0x277CBECE8];
          v16 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], p_p, 0x8000100u);
          *a3 = v16;
          if (v16)
          {
            if (*(a2 + 23) >= 0)
            {
              v22 = a2;
            }

            else
            {
              v22 = *a2;
            }

            v9 = sub_23EB6FDFC(v15, *(a1 + 48), "%ks=%O", v17, v18, v19, v20, v21, v22);
            CFRelease(*a3);
          }

          else
          {
            v9 = 4294960568;
          }

          goto LABEL_12;
        }
      }

      v9 = sub_23EB7D978(p_p, 0, &v28, 0, 0, 0, 0);
      if (v9)
      {
        goto LABEL_12;
      }

      v13 = v23;
      if (!v23)
      {
        v13 = 48;
        v23 = 48;
      }

      v14 = sub_23EB7E0B8(&v28, 0, 0, v13, v29);
      MEMORY[0x23EF1EFD0](&__p, v14);
      if (SHIBYTE(v26) < 0)
      {
        p_p = __p;
      }

      else
      {
        p_p = &__p;
      }

      goto LABEL_24;
    }
  }

LABEL_12:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBACF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBACF88(uint64_t a1, unsigned __int8 *a2, const __CFString *a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(&v18, 0, sizeof(v18));
  v16 = 0;
  v17 = 0;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  if (!a3)
  {
    v7 = 4294967292;
    goto LABEL_6;
  }

  v7 = sub_23EB70FE4(a3, &v17, &v16);
  if (!v7)
  {
    MEMORY[0x23EF1EFD0](&__p, v17);
    v12 = 0;
    if (SHIBYTE(v15) < 0)
    {
      p_p = __p;
      if (v14)
      {
LABEL_15:
        v7 = sub_23EB7D978(p_p, 0, &v20, 0, 0, &v12, 0);
        if (v7)
        {
          goto LABEL_3;
        }

        v10 = sub_23EB7E0B8(&v20, 0, 0, 0xFFFFFFFF, v19);
        MEMORY[0x23EF1EFD0](&__p, v10);
        sub_23EB8FB78(a2, 911230049, &v18);
        v7 = sub_23EB97684(a1, &v18, &__p, a4);
        if (v7)
        {
          goto LABEL_3;
        }

        if (!v12)
        {
          v12 = 48;
        }

        sub_23EB8FB78(a2, 911230060, &v18);
        v11 = v12;
LABEL_24:
        v7 = sub_23EB906B8(a1, &v18, v11, a4);
        goto LABEL_3;
      }

      *__p = 0;
      v14 = 0;
    }

    else
    {
      if (HIBYTE(v15))
      {
        p_p = &__p;
        goto LABEL_15;
      }

      LOBYTE(__p) = 0;
    }

    sub_23EB8FB78(a2, 911230049, &v18);
    v7 = sub_23EB97684(a1, &v18, &__p, a4);
    if (v7)
    {
      goto LABEL_3;
    }

    sub_23EB8FB78(a2, 911230060, &v18);
    v11 = 0;
    goto LABEL_24;
  }

LABEL_3:
  if (v16)
  {
    free(v16);
    v16 = 0;
  }

LABEL_6:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBAD1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAD1CC(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  __p = 0;
  v25 = 0;
  v26 = 0;
  if (!a3)
  {
    v9 = 4294967292;
    goto LABEL_12;
  }

  v23 = 0;
  sub_23EB8FB78(a2, 910381153, &v27);
  v8 = sub_23EB97710(a1, &v27, &__p, a4);
  v9 = v8;
  if ((a4 != 1 || v8 != -5) && !v8)
  {
    sub_23EB8FB78(a2, 910381164, &v27);
    v10 = sub_23EB97374(a1, &v27, &v23, a4);
    v9 = v10;
    if ((a4 != 1 || v10 != -5) && !v10)
    {
      if (SHIBYTE(v26) < 0)
      {
        p_p = __p;
        if (!v25)
        {
          goto LABEL_24;
        }
      }

      else
      {
        p_p = &__p;
        if (!HIBYTE(v26))
        {
LABEL_24:
          v15 = *MEMORY[0x277CBECE8];
          v16 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], p_p, 0x8000100u);
          *a3 = v16;
          if (v16)
          {
            if (*(a2 + 23) >= 0)
            {
              v22 = a2;
            }

            else
            {
              v22 = *a2;
            }

            v9 = sub_23EB6FDFC(v15, *(a1 + 48), "%ks=%O", v17, v18, v19, v20, v21, v22);
            CFRelease(*a3);
          }

          else
          {
            v9 = 4294960568;
          }

          goto LABEL_12;
        }
      }

      v9 = sub_23EB7D978(p_p, 0, &v28, 0, 0, 0, 0);
      if (v9)
      {
        goto LABEL_12;
      }

      v13 = v23;
      if (!v23)
      {
        v13 = 48;
        v23 = 48;
      }

      v14 = sub_23EB7E0B8(&v28, 0, 0, v13, v29);
      MEMORY[0x23EF1EFD0](&__p, v14);
      if (SHIBYTE(v26) < 0)
      {
        p_p = __p;
      }

      else
      {
        p_p = &__p;
      }

      goto LABEL_24;
    }
  }

LABEL_12:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBAD3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAD41C(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  v12 = 0;
  memset(&__p, 0, sizeof(__p));
  if (a3)
  {
    *a3 = 0;
    sub_23EB8FB78(a2, 912483943, &__p);
    v7 = sub_23EB97374(a1, &__p, &v12, a4);
    v8 = v7;
    if ((a4 != 1 || v7 != -5) && !v7)
    {
      if (((v12 - 3) & 0xFFFFFFFD) != 0)
      {
        v9 = MEMORY[0x277CBED10];
      }

      else
      {
        v9 = MEMORY[0x277CBED28];
      }

      *a3 = *v9;
    }
  }

  else
  {
    v8 = 4294967292;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBAD4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAD508(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  if (!a3)
  {
    return 4294967292;
  }

  sub_23EB8FB78(a2, 912483943, &__p);
  if (*MEMORY[0x277CBED28] == a3)
  {
    v7 = 5;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_23EB906B8(a1, &__p, v7, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBAD5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23EBAD5C4(void *a1, std::string::size_type a2, uint64_t a3, int a4)
{
  if (a1 && a2 >= 0x15)
  {
    bzero(a1, a2);
    sub_23EBAD67C(a3, a4, &v9);
    __src = v9;
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__src.__r_.__value_.__l.__size_ < a2)
      {
        strcpy(a1, __src.__r_.__value_.__l.__data_);
      }

      operator delete(__src.__r_.__value_.__l.__data_);
    }

    else if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < a2)
    {
      strcpy(a1, &__src);
    }
  }

  return a1;
}

void sub_23EBAD6B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBAD6D0(uint64_t a1)
{
  cf = 0;
  if (sub_23EB8BFFC(a1, 1684362100, &cf, 0) || !CFDictionaryGetCount(cf))
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (sub_23EB8BFFC(a1, 1684099956, &cf, 0) || !CFDictionaryGetCount(cf))
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v2 = sub_23EB8BFFC(a1, 1684886388, &cf, 0);
      v3 = 0;
      if (!v2)
      {
        if (CFDictionaryGetCount(cf))
        {
          v3 = 1298753353;
        }

        else
        {
          v3 = 0;
        }
      }
    }

    else
    {
      v3 = 1098015561;
    }
  }

  else
  {
    v3 = 1165123913;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

BOOL sub_23EBAD7C8(uint64_t a1, int a2, BOOL *a3, uint64_t a4)
{
  cf = 0;
  if (!a2)
  {
    return 0;
  }

  if (sub_23EB8BFFC(a1, 1937331060, &cf, a4))
  {
LABEL_3:
    v8 = 0;
    goto LABEL_4;
  }

  if (!cf)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(cf, @"problems");
  if (!Value)
  {
    goto LABEL_3;
  }

  v8 = sub_23EBB0560(Value, a2) != -1;
  if (a3)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!sub_23EB8BFFC(a1, 1937328487, &cf, a4))
    {
      if (!cf)
      {
        return v8;
      }

      v10 = CFDictionaryGetValue(cf, @"problems");
      if (v10)
      {
        *a3 = sub_23EBB0560(v10, a2) != -1;
      }
    }
  }

LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t sub_23EBAD8D0(uint64_t a1, int a2)
{
  cf = 0;
  if (!a2)
  {
    return 4294960591;
  }

  v4 = sub_23EB8BFFC(a1, 1937328487, &cf, 0);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
  }

  else
  {
    if (!cf)
    {
      return 4294960569;
    }

    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], cf, 2uLL);
    v6 = DeepCopy;
    if (DeepCopy)
    {
      Value = CFDictionaryGetValue(DeepCopy, @"problems");
      if (Value)
      {
        v10 = sub_23EBB04E4(Value, a2);
        if (!v10)
        {
          v10 = sub_23EB8A18C(a1, 1937328487, v6, 0);
        }

        v5 = v10;
      }

      else
      {
        v5 = 4294960569;
      }
    }

    else
    {
      v5 = 4294960568;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

uint64_t sub_23EBAD9D0(uint64_t a1, int a2)
{
  cf = 0;
  if (!a2)
  {
    return 4294960591;
  }

  v4 = sub_23EB8BFFC(a1, 1937328487, &cf, 0);
  if (!v4)
  {
    if (!cf)
    {
      return 4294960569;
    }

    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], cf, 2uLL);
    if (DeepCopy)
    {
      v7 = DeepCopy;
      Value = CFDictionaryGetValue(DeepCopy, @"problems");
      if (Value)
      {
        v4 = sub_23EBB0600(Value, a2);
        if (!v4)
        {
          v4 = sub_23EB8A18C(a1, 1937328487, v7, 0);
        }
      }

      else
      {
        v4 = 4294960569;
      }

      CFRelease(v7);
    }

    else
    {
      v4 = 4294960568;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t sub_23EBADAC4(void *a1)
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
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_23EBADB70(a1);
}

uint64_t sub_23EBADB70(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_23EBADBC0(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    --*(v2 + 456);
    pthread_mutex_unlock((v2 + 392));
  }

  return a1;
}

void sub_23EBADC1C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EBADC78(exception, a1);
  __cxa_throw(exception, off_278C668B0, MEMORY[0x277D825F0]);
}

std::logic_error *sub_23EBADC78(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_23EBADCAC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *sub_23EBADCE0(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_23EBADC04();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_23EBADD9C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EBADDF8(exception, a1);
  __cxa_throw(exception, off_278C668B8, MEMORY[0x277D825F8]);
}

std::logic_error *sub_23EBADDF8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_23EBADE2C(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_23EBADF64();
    }

    v9 = v4 - v6;
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

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *sub_23EBADF7C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = sub_23EBAE004(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *sub_23EBAE004(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_23EBAE600(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_23EBAE1D8(a1, &v10);
}

void sub_23EBAE18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_23EBAE1D8(void *result, void *a2)
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

      sub_23EBAE600(result, v11);
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

const void **sub_23EBAE2E0(const void **result, void *a2)
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

      sub_23EBAE600(result, v9);
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

void *sub_23EBAE3EC(void *result, void *a2)
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

      sub_23EBAE600(result[4], v11);
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

const void **sub_23EBAE4F4(const void **result, void *a2)
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

      sub_23EBAE600(result[4], v9);
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

void sub_23EBAE600(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_23EBADCAC();
}

uint64_t sub_23EBAE648(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

__CFString *sub_23EBAE6B8(int *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  sub_23EB4BD2C(*a1, cStr);
  CFStringAppendCString(Mutable, cStr, 0x8000100u);
  CFStringAppendCString(Mutable, ".", 0x8000100u);
  v6 = 0;
  *v5 = 0;
  v3 = a1[1];
  if ((v3 - 1732604481) > 8)
  {
    sub_23EB4BD2C(v3, v5);
  }

  else
  {
    __sprintf_chk(v5, 0, 5uLL, "%c", (v3 - 1732604416));
  }

  CFStringAppendCString(Mutable, v5, 0x8000100u);
  return Mutable;
}

uint64_t sub_23EBAE7A0(uint64_t a1, int a2, __CFString **a3)
{
  v3 = 0;
  v8 = a2;
  v6 = 0;
  v7 = 0;
  if (a1)
  {
    if (a2)
    {
      v3 = 1;
      sub_23EBB42C8(a1, &v8, 1uLL, &v7, &v6);
      if (v6)
      {
        v3 = 0;
        if (a3)
        {
          *a3 = sub_23EBAE6B8(v7);
        }
      }
    }
  }

  if (v7)
  {
    free(v7);
  }

  return v3;
}

uint64_t sub_23EBAE828(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  result = sub_23EBB4248(a1, 1381253996);
  if (result)
  {
    v6 = 0;
    sub_23EBB3A94(a1, 1651725402, &v6);
    result = 0;
    if (!v6)
    {
      v5 = sub_23EBD551C(0, v3, v4);
      if (v5)
      {
        return sub_23EBB3DBC(a1, 1651725402, v5);
      }

      else
      {
        return 4294960569;
      }
    }
  }

  return result;
}

uint64_t sub_23EBAE8B8(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  v8 = 0;
  sub_23EBB3A94(a1, 1937330789, &v8);
  result = 0;
  if (!v8)
  {
    v5 = sub_23EBAE948(a1);
    if (v5 != -1 || a2 == 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    if (v7 == -1)
    {
      return 4294960569;
    }

    else
    {
      return sub_23EBB3E08(a1, 1937330789, v7);
    }
  }

  return result;
}

uint64_t sub_23EBAE948(uint64_t a1)
{
  v6 = 0;
  v7 = 0;
  if (a1)
  {
    v2 = CFLocaleCopyCurrent();
    v3 = v2;
    if (v2)
    {
      Value = CFLocaleGetValue(v2, *MEMORY[0x277CBEE98]);
      if (!sub_23EB710E8(Value, &v6) && (sub_23EBAE9E4(a1, v6, &v7) & 1) == 0)
      {
        v7 = -1;
      }
    }

    if (v6)
    {
      free(v6);
      v6 = 0;
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  return v7;
}

uint64_t sub_23EBAE9E4(uint64_t a1, char *a2, uint64_t a3)
{
  v19 = 0;
  cf = 0;
  sub_23EB4BD2C(1937330789, __s);
  if (a3)
  {
    *a3 = sub_23EBAF454(a2);
    if (!sub_23EBAEB04(a1, __s, 0, &cf))
    {
      if (!cf)
      {
        return 0;
      }

      Count = CFArrayGetCount(cf);
      if (Count >= 1)
      {
        v13 = Count;
        for (i = 0; v13 != i; ++i)
        {
          sub_23EB6FF14(cf, &v19, "[*]:int", v8, v9, v10, v11, v12, i);
          if (v15)
          {
            break;
          }

          v16 = *a3;
          if (v19 == 51)
          {
            if (v16 == 1)
            {
LABEL_21:
              *a3 = v19;
LABEL_22:
              a3 = 1;
              goto LABEL_4;
            }
          }

          else if (v19 == 50)
          {
            if (!v16)
            {
              goto LABEL_21;
            }
          }

          else if (v16 == v19)
          {
            goto LABEL_22;
          }
        }
      }
    }

    a3 = 0;
  }

LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  return a3;
}

uint64_t sub_23EBAEB04(uint64_t a1, char *__s, uint64_t a3, void *a4)
{
  if (!a1)
  {
    return 4294967292;
  }

  v8 = strlen(__s);
  if (!a4 || v8 < 4)
  {
    return 4294967292;
  }

  return sub_23EBB469C(a1, __s, a4, a3);
}

uint64_t sub_23EBAEB84(CFNumberRef number, int a2, CFNumberRef *a3)
{
  result = 4294960591;
  if (number && a2 && a3)
  {
    valuePtr = 0;
    if (CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
    {
      valuePtr &= a2;
      v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
      if (v7)
      {
        v8 = v7;
        result = 0;
        *a3 = v8;
      }

      else
      {
        return 4294960568;
      }
    }

    else
    {
      return 4294960553;
    }
  }

  return result;
}

uint64_t sub_23EBAEC24(unsigned __int8 *a1, char *__s, __CFDictionary *a3)
{
  result = 0;
  v13 = *MEMORY[0x277D85DE8];
  if (a1 && __s && a3)
  {
    v7 = strlen(__s);
    if (v7 >= 0x14)
    {
      v8 = 20;
    }

    else
    {
      v8 = v7;
    }

    v9 = *MEMORY[0x277CBECE8];
    result = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], __s, v8, 0x8000100u, 0);
    if (result)
    {
      v10 = result;
      CFDictionarySetValue(a3, @"Description", result);
      CFRelease(v10);
      memset(v12, 0, sizeof(v12));
      sub_23EB7E798(a1, 6, v12);
      result = CFStringCreateWithCString(v9, v12, 0x8000100u);
      if (result)
      {
        v11 = result;
        CFDictionarySetValue(a3, @"PeerMAC", result);
        CFRelease(v11);
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_23EBAED48(const __CFDictionary *a1, uint64_t a2, _BYTE *a3, size_t a4)
{
  v4 = 0;
  v24 = *MEMORY[0x277D85DE8];
  __s = 0;
  if (a1 && a2 && a3)
  {
    *(a2 + 4) = 0;
    *a2 = 0;
    bzero(a3, a4);
    Value = CFDictionaryGetValue(a1, @"PeerMAC");
    if (Value && (*buffer = 0u, v23 = 0u, CFStringGetCString(Value, buffer, 32, 0x8000100u)) && (v10 = strlen(buffer), !sub_23EB7E668(buffer, v10, 6, a2)))
    {
      sub_23EB6FF14(a1, &__s, "%kO:utf8", v11, v12, v13, v14, v15, @"Description");
      if (v17 || (v18 = __s, (v19 = strlen(__s)) == 0))
      {
        *a3 = 0;
      }

      else
      {
        v20 = v19;
        if (v19 > a4)
        {
          v20 = sub_23EB7F574(__s, v19, a4);
          v18 = __s;
        }

        strncpy(a3, v18, v20);
      }

      v4 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  if (__s)
  {
    free(__s);
  }

  return v4;
}

__CFString *sub_23EBAEEBC(uint64_t a1, __CFDictionary *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v5 = *MEMORY[0x277CBECE8];
      result = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (a1 + 136), 0x8000100u);
      if (result)
      {
        v6 = result;
        CFDictionarySetValue(a2, @"USB_PRINTER_NAME", result);
        CFRelease(v6);
        result = CFStringCreateWithCString(v5, (a1 + 8), 0x8000100u);
        if (result)
        {
          v7 = result;
          CFDictionarySetValue(a2, @"USB_PRINTER_UNIQUEID", result);
          CFRelease(v7);
          result = CFStringCreateMutable(v5, 0);
          if (result)
          {
            v8 = result;
            CFStringAppendCString(result, (a1 + 204), 0x8000100u);
            CFStringAppendCString(v8, " ", 0x8000100u);
            CFStringAppendCString(v8, (a1 + 460), 0x8000100u);
            CFDictionarySetValue(a2, @"USB_PRINTER_MAKE_MODEL", v8);
            CFRelease(v8);
            result = CFDataCreate(v5, a1, 720);
            if (result)
            {
              v9 = result;
              CFDictionarySetValue(a2, @"USB_PRINTER_ENTRY", result);
              CFRelease(v9);
              v10 = MEMORY[0x277CBED28];
              if (!*(a1 + 716))
              {
                v10 = MEMORY[0x277CBED10];
              }

              CFDictionarySetValue(a2, @"USB_PRINTER_PLUGGED_IN", *v10);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_23EBAF044(const __CFDictionary *a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(a1, @"USB_PRINTER_ENTRY");
      if (Value)
      {
        v5 = Value;
        if (CFDataGetLength(Value) == 720)
        {
          v10.location = 0;
          v10.length = 720;
          CFDataGetBytes(v5, v10, a2);
          v6 = CFDictionaryGetValue(a1, @"USB_PRINTER_NAME");
          if (v6)
          {
            *(a2 + 136) = 0u;
            *(a2 + 168) = 0u;
            *(a2 + 184) = 0u;
            *(a2 + 152) = 0u;
            if (CFStringGetCString(v6, (a2 + 136), 64, 0x8000100u))
            {
              v7 = CFDictionaryGetValue(a1, @"USB_PRINTER_UNIQUEID");
              if (v7)
              {
                *(a2 + 8) = 0u;
                v8 = a2 + 8;
                *(v8 + 96) = 0u;
                *(v8 + 112) = 0u;
                *(v8 + 64) = 0u;
                *(v8 + 80) = 0u;
                *(v8 + 32) = 0u;
                *(v8 + 48) = 0u;
                *(v8 + 16) = 0u;
                if (CFStringGetCString(v7, v8, 128, 0x8000100u))
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CFStringRef sub_23EBAF138(uint64_t a1, __CFDictionary *a2)
{
  result = 0;
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      *cStr = 0u;
      v11 = 0u;
      v5 = *MEMORY[0x277CBECE8];
      v6 = sub_23EB765A4(*a1, 0, cStr);
      result = CFStringCreateWithCString(v5, v6, 0x8000100u);
      if (result)
      {
        v7 = result;
        CFDictionarySetValue(a2, @"PORT_MAP_PRIV_IP", result);
        CFRelease(v7);
        *cStr = 0u;
        v11 = 0u;
        __sprintf_chk(cStr, 0, 0x20uLL, "%d", *(a1 + 4));
        result = CFStringCreateWithCString(v5, cStr, 0x8000100u);
        if (result)
        {
          v8 = result;
          CFDictionarySetValue(a2, @"PORT_MAP_PRIV_PORT", result);
          CFRelease(v8);
          *cStr = 0u;
          v11 = 0u;
          __sprintf_chk(cStr, 0, 0x20uLL, "%d", *(a1 + 6));
          result = CFStringCreateWithCString(v5, cStr, 0x8000100u);
          if (result)
          {
            v9 = result;
            CFDictionarySetValue(a2, @"PORT_MAP_PUB_PORT", result);
            CFRelease(v9);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EBAF2C4(CFDictionaryRef theDict, uint64_t a2)
{
  result = 0;
  v11 = *MEMORY[0x277D85DE8];
  if (theDict)
  {
    if (a2)
    {
      result = CFDictionaryGetValue(theDict, @"PORT_MAP_PRIV_IP");
      if (result)
      {
        v9 = 0u;
        v10 = 0u;
        result = CFStringGetCString(result, &v9, 32, 0x8000100u);
        if (result)
        {
          if (sub_23EB7DE5C(&v9, 0, a2, 0, 0, 0, 0))
          {
            return 0;
          }

          result = CFDictionaryGetValue(theDict, @"PORT_MAP_PRIV_PORT");
          if (result)
          {
            v5 = result;
            if (CFStringGetLength(result))
            {
              v9 = 0u;
              v10 = 0u;
              result = CFStringGetCString(v5, &v9, 32, 0x8000100u);
              if (!result)
              {
                return result;
              }

              v6 = strlen(&v9);
              *(a2 + 4) = sub_23EB7EB84(&v9, v6, 10);
            }

            result = CFDictionaryGetValue(theDict, @"PORT_MAP_PUB_PORT");
            if (result)
            {
              v7 = result;
              if (!CFStringGetLength(result))
              {
                return 1;
              }

              v9 = 0u;
              v10 = 0u;
              result = CFStringGetCString(v7, &v9, 32, 0x8000100u);
              if (result)
              {
                v8 = strlen(&v9);
                *(a2 + 6) = sub_23EB7EB84(&v9, v8, 10);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EBAF454(char *__s1)
{
  if (!__s1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v5 = *(&unk_27E381B10 + v2);
    v6 = *(&unk_27E381B10 + v2 + 8);
    if (!strncmp(__s1, &v5, 2uLL) || !strncmp(__s1, &v5 + 3, 3uLL))
    {
      v3 = v6;
    }

    v2 += 12;
  }

  while (v2 != 1956);
  return v3;
}

uint64_t sub_23EBAF4FC(unsigned int *a1, __CFArray **a2)
{
  v2 = 4294960591;
  if (a1 && a2)
  {
    v4 = a1;
    if (*a1)
    {
      v5 = *MEMORY[0x277CBECE8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v12 = Mutable;
        while (1)
        {
          v13 = *v4;
          if (!v13)
          {
            break;
          }

          ++v4;
          v14 = sub_23EB6FDFC(v5, v12, "%C", v7, v8, v9, v10, v11, v13);
          if (v14)
          {
            v2 = v14;
            CFRelease(v12);
            return v2;
          }
        }

        v2 = 0;
        *a2 = v12;
      }

      else
      {
        return 4294960568;
      }
    }

    else
    {
      return 4294960553;
    }
  }

  return v2;
}

CFStringRef sub_23EBAF5D4(int a1)
{
  v1 = *MEMORY[0x277CBECE8];
  v2 = sub_23EB4BD2C(a1, v4);
  return CFStringCreateWithCString(v1, v2, 0x8000100u);
}

uint64_t sub_23EBAF620(const __CFString *a1)
{
  v5 = 0;
  __s = 0;
  if (a1)
  {
    if (!sub_23EB710E8(a1, &__s))
    {
      v2 = __s;
      if (__s)
      {
        v3 = strlen(__s);
        if (!v3)
        {
LABEL_8:
          free(v2);
          return v5;
        }

        if (!sub_23EB4BD54(__s, v3, &v5))
        {
          v2 = __s;
          goto LABEL_8;
        }
      }
    }
  }

  return v5;
}

const __CFArray *sub_23EBAF698(const __CFDictionary *a1, const __CFString *a2)
{
  v2 = 0;
  v23 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v21 = 0;
  v22 = 0;
  v20 = 0;
  if (CFDictionaryGetCount(a1) && !sub_23EB71A18(a1, &v23))
  {
    v7 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      if (!sub_23EB71AC0(v23, &v22, &v21))
      {
LABEL_18:
        Count = CFArrayGetCount(Mutable);
        if (Count)
        {
          v2 = Mutable;
        }

        else
        {
          v2 = 0;
        }

        if (Count)
        {
          Mutable = 0;
        }

        goto LABEL_6;
      }

      while (1)
      {
        sub_23EB6FF14(a2, &v20, "%kO", v8, v9, v10, v11, v12, v22);
        if (v13 == -6727)
        {
          goto LABEL_27;
        }

        if (v13)
        {
          break;
        }

        if (!CFEqual(v21, v20))
        {
LABEL_27:
          if (sub_23EB6FDFC(v7, Mutable, "%O", v14, v15, v16, v17, v18, v22))
          {
            break;
          }
        }

        if (!sub_23EB71AC0(v23, &v22, &v21))
        {
          goto LABEL_18;
        }
      }
    }

    v2 = 0;
  }

  else
  {
    v2 = 0;
    Mutable = 0;
  }

LABEL_6:
  if (v23)
  {
    sub_23EB71AB4(v23);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v2;
}

uint64_t sub_23EBAF7F8(uint64_t a1, __CFArray **a2)
{
  v106 = *MEMORY[0x277D85DE8];
  v101 = 0;
  cf = 0;
  __s = 0;
  v98 = 0;
  v4 = sub_23EBB4248(a1, 1935819842);
  v5 = 4294967292;
  if (a1 && a2)
  {
    v6 = v4;
    v7 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      v5 = 4294967293;
      goto LABEL_10;
    }

    v9 = Mutable;
    v10 = sub_23EBB3F30(a1, 1918979393, &cf);
    if (v10)
    {
LABEL_5:
      v5 = v10;
      goto LABEL_10;
    }

    __s = 0;
    v5 = sub_23EB710E8(cf, &__s);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v5)
    {
      goto LABEL_10;
    }

    v12 = __s;
    if (!__s)
    {
      goto LABEL_54;
    }

    v105 = 0;
    *cStr = 0u;
    v104 = 0u;
    if (strlen(__s) == 17)
    {
      v95 = __tolower(__s[9]);
      v94 = __tolower(v12[10]);
      v13 = __tolower(v12[12]);
      v14 = __tolower(v12[13]);
      v15 = __tolower(v12[15]);
      v16 = __tolower(v12[16]);
      __sprintf_chk(cStr, 0, 0x28uLL, "Apple Network %c%c%c%c%c%c", v95, v94, v13, v14, v15, v16);
      v12 = __s;
    }

    free(v12);
    if (!cStr[0])
    {
      v5 = 4294967281;
      goto LABEL_10;
    }

    v10 = sub_23EB6FDFC(v7, v9, "%kC=%s", v17, v18, v19, v20, v21, 1918979693);
    if (v10)
    {
      goto LABEL_5;
    }

    v10 = sub_23EB6FDFC(v7, v9, "%kC=%i", v22, v23, v24, v25, v26, 1651725133);
    if (v10)
    {
      goto LABEL_5;
    }

    v10 = sub_23EB6FDFC(v7, v9, "%kC=%i", v27, v28, v29, v30, v31, 1651723853);
    if (v10)
    {
      goto LABEL_5;
    }

    v10 = sub_23EB6FDFC(v7, v9, "%kC=%i", v32, v33, v34, v35, v36, 2003060332);
    if (v10)
    {
      goto LABEL_5;
    }

    v10 = sub_23EB6FDFC(v7, v9, "%kC=%i", v37, v38, v39, v40, v41, 1651720515);
    if (v10)
    {
      goto LABEL_5;
    }

    v10 = sub_23EB6FDFC(v7, v9, "%kC=[]", v42, v43, v44, v45, v46, 2003061875);
    if (v10)
    {
      goto LABEL_5;
    }

    if (sub_23EBB4248(a1, 1146569811) && sub_23EBB4248(a1, 1685540419))
    {
      valuePtr = 0;
      sub_23EBB65EC(v102, 0x15uLL);
      sub_23EB4BD2C(1685538412, v97);
      __strcat_chk();
      v10 = sub_23EBB3E20(a1, v102, &v98);
      if (v10)
      {
        goto LABEL_5;
      }

      if (!CFNumberGetValue(v98, kCFNumberIntType, &valuePtr))
      {
        v5 = 0;
        goto LABEL_10;
      }

      if (v98)
      {
        CFRelease(v98);
        v98 = 0;
      }

      valuePtr &= ~2u;
      v5 = sub_23EB6FDFC(v7, v9, "%kC=%i", v47, v48, v49, v50, v51, 1685538412);
      if (v5)
      {
        goto LABEL_10;
      }
    }

    if (!sub_23EBB4248(a1, 825319779) && !v6)
    {
      sub_23EBB4248(a1, 942682734);
    }

    v10 = sub_23EB6FDFC(v7, v9, "%kC=%i", v52, v53, v54, v55, v56, 1651718221);
    if (v10)
    {
      goto LABEL_5;
    }

    v10 = sub_23EB6FDFC(v7, v9, "%kC=%i", v57, v58, v59, v60, v61, 1651724877);
    if (v10)
    {
      goto LABEL_5;
    }

    v10 = sub_23EB6FDFC(v7, v9, "%kC=%i", v62, v63, v64, v65, v66, 1651722563);
    if (v10)
    {
      goto LABEL_5;
    }

    cf = 0;
    v10 = sub_23EBB3F30(a1, 1684554343, &cf);
    if (v10)
    {
      goto LABEL_5;
    }

    v105 = 0;
    *cStr = 0u;
    v104 = 0u;
    __s = 0;
    v5 = sub_23EB710E8(cf, &__s);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v5)
    {
      goto LABEL_10;
    }

    if (!__s)
    {
LABEL_54:
      v5 = 4294967270;
      goto LABEL_10;
    }

    v10 = sub_23EB7DE5C(__s, 0, &v101, 0, 0, 0, 0);
    if (v10)
    {
      goto LABEL_5;
    }

    free(__s);
    v105 = 0;
    *cStr = 0u;
    v104 = 0u;
    sub_23EB765A4(v101 - 1, 0, cStr);
    cf = CFStringCreateWithCString(v7, cStr, 0x8000100u);
    if (!cf)
    {
      v5 = 4294967293;
      goto LABEL_12;
    }

    v67 = sub_23EBAF5D4(1818315088);
    if (v67)
    {
      v68 = v67;
      CFDictionarySetValue(v9, v67, cf);
      CFRelease(v68);
      CFRelease(cf);
      cf = 0;
      v10 = sub_23EB6FDFC(v7, v9, "%kC=%O", v69, v70, v71, v72, v73, 2002864464);
      if (!v10)
      {
        v10 = sub_23EB6FDFC(v7, v9, "%kC=%O", v74, v75, v76, v77, v78, 2002867021);
        if (!v10)
        {
          v10 = sub_23EB6FDFC(v7, v9, "%kC=%O", v79, v80, v81, v82, v83, 2002866753);
          if (!v10)
          {
            v10 = sub_23EB6FDFC(v7, v9, "%kC=%O", v84, v85, v86, v87, v88, 2002863153);
            if (!v10)
            {
              v5 = sub_23EB6FDFC(v7, v9, "%kC=%O", v89, v90, v91, v92, v93, 2002863154);
              if (!v5)
              {
                *a2 = v9;
              }

              goto LABEL_10;
            }
          }
        }
      }

      goto LABEL_5;
    }

    v5 = 4294967292;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_12:
  if (v98)
  {
    CFRelease(v98);
  }

  return v5;
}

char *sub_23EBAFDF4(const __CFString *a1, const __CFString *a2)
{
  __s = 0;
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  v5 = 0;
  if (!a2 || !Length)
  {
    goto LABEL_8;
  }

  if (!CFStringGetLength(a2))
  {
    goto LABEL_7;
  }

  sub_23EB710E8(a1, &__s);
  v5 = __s;
  if (!__s)
  {
    return v5;
  }

  v6 = strlen(__s);
  if (sub_23EB7E668(__s, v6, 6, &v10))
  {
    goto LABEL_7;
  }

  free(__s);
  __s = 0;
  sub_23EB710E8(a2, &__s);
  if (!__s)
  {
    return 0;
  }

  v7 = strlen(__s);
  if (sub_23EB7E668(__s, v7, 6, &v9))
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v5 = (sub_23EB7D944(&v10, &v9) == 0);
LABEL_8:
  if (__s)
  {
    free(__s);
  }

  return v5;
}

void sub_23EBAFEF4(const __CFString *a1, const __CFString *a2, CFPropertyListRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        theArray = 0;
        sub_23EB6FF14(a1, &theArray, "%kO", a4, a5, a6, a7, a8, @"entries");
        if (!v10)
        {
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
            if (Count)
            {
              v17 = Count;
              if (Count >= 1)
              {
                for (i = 0; v17 != i; ++i)
                {
                  v26 = 0;
                  propertyList = 0;
                  sub_23EB6FF14(theArray, &propertyList, "[*]", v12, v13, v14, v15, v16, i);
                  if (v24)
                  {
                    break;
                  }

                  if (!propertyList)
                  {
                    break;
                  }

                  sub_23EB6FF14(propertyList, &v26, "%kO", v19, v20, v21, v22, v23, @"macAddress");
                  if (v25 || !v26)
                  {
                    break;
                  }

                  if (sub_23EBAFDF4(v26, a2))
                  {
                    if (propertyList)
                    {
                      *a3 = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], propertyList, 2uLL);
                    }

                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23EBB0050(const __CFString *a1, const void *a2, CFIndex a3, uint64_t a4, const __CFString *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        if (a5)
        {
          theArray = 0;
          sub_23EB6FF14(a1, &theArray, "%kO", a4, a5, a6, a7, a8, @"entries");
          if (!v11)
          {
            if (theArray)
            {
              Count = CFArrayGetCount(theArray);
              if (Count)
              {
                v18 = Count;
                if (Count < 1)
                {
LABEL_25:
                  sub_23EB6FDFC(*MEMORY[0x277CBECE8], theArray, "{%kO=[%O]%kO=%O%kO=%i%kO=%O}", v13, v14, v15, v16, v17, @"wirelessAccessTimes");
                }

                else
                {
                  v19 = 0;
                  while (1)
                  {
                    v34 = 0;
                    v35 = 0;
                    sub_23EB6FF14(theArray, &v35, "[*]", v13, v14, v15, v16, v17, v19);
                    if (v25)
                    {
                      break;
                    }

                    if (!v35)
                    {
                      break;
                    }

                    sub_23EB6FF14(v35, &v34, "%kO", v20, v21, v22, v23, v24, @"macAddress");
                    if (v26 || !v34)
                    {
                      break;
                    }

                    if (sub_23EBAFDF4(v34, a5))
                    {
                      v27 = v35;
                      if (!v35)
                      {
                        goto LABEL_25;
                      }

                      v35 = 0;
                      sub_23EB6FF14(v27, &v35, "%kO", v13, v14, v15, v16, v17, @"wirelessAccessTimes");
                      if (!v33 && v35)
                      {
                        if (a3 == -2)
                        {
                          sub_23EB6FDFC(*MEMORY[0x277CBECE8], v27, "%kO=[%O]", v28, v29, v30, v31, v32, @"wirelessAccessTimes");
                        }

                        else if (a3 == -1)
                        {
                          sub_23EB6FDFC(*MEMORY[0x277CBECE8], v35, "%O", v28, v29, v30, v31, v32, a2);
                        }

                        else if (CFArrayGetCount(v35) > a3)
                        {
                          CFArraySetValueAtIndex(v35, a3, a2);
                        }
                      }

                      return;
                    }

                    if (v18 == ++v19)
                    {
                      goto LABEL_25;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

BOOL sub_23EBB0294(const __CFString *a1, const __CFString *a2)
{
  v2 = 0;
  v15 = 0;
  v9 = 0;
  if (a1 && a2)
  {
    v16 = 0;
    v13 = 0;
    v14 = 0;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    v5 = 0;
    v2 = !sub_23EB70FE4(a1, &v16, &v15) && !sub_23EB70FE4(a2, &v10, &v9) && !sub_23EB80544(v16, &v14 + 1) && !sub_23EB80544(v10, &v8 + 1) && HIDWORD(v14) == HIDWORD(v8) && !sub_23EB807CC(v16, &v14, &v13 + 1, &v13, &v12 + 1, &v12, &v11) && !sub_23EB807CC(v10, &v8, &v7 + 1, &v7, &v6 + 1, &v6, &v5) && v14 == v8 && v13 == v7 && v12 == v6 && v11 == v5;
    if (v15)
    {
      free(v15);
      v15 = 0;
    }

    if (v9)
    {
      free(v9);
    }
  }

  return v2;
}

CFArrayRef sub_23EBB0414(CFArrayRef result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    theArray = 0;
    sub_23EB6FF14(result, &theArray, "%kO", a4, a5, a6, a7, a8, @"wirelessAccessTimes");
    if (v8)
    {
      return 0;
    }

    result = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v15 = Count;
        v16 = 0;
        while (1)
        {
          v18 = 0;
          sub_23EB6FF14(theArray, &v18, "[*]", v10, v11, v12, v13, v14, v16);
          if (v17)
          {
            break;
          }

          result = v18;
          if (!v18)
          {
            return result;
          }

          result = sub_23EBB0294(v18, @"days=mtwtfss;t=0-0");
          if (result)
          {
            return 1;
          }

          if (v15 == ++v16)
          {
            return result;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_23EBB04E4(__CFArray *a1, int a2)
{
  result = 4294967292;
  if (a1 && a2)
  {
    if (sub_23EBB0560(a1, a2) == -1)
    {
      return sub_23EB6FDFC(*MEMORY[0x277CBECE8], a1, "{%kO=%C}", v4, v5, v6, v7, v8, @"code");
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23EBB0560(const __CFArray *a1, int a2)
{
  v13 = 0;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        sub_23EB6FF14(a1, &v13, "[*].%kO:code", v5, v6, v7, v8, v9, i);
        if (!v13)
        {
          break;
        }

        if (v13 == a2)
        {
          return i;
        }
      }
    }
  }

  return -1;
}

uint64_t sub_23EBB0600(const __CFArray *a1, int a2)
{
  result = 4294967292;
  if (a1 && a2)
  {
    v4 = sub_23EBB0560(a1, a2);
    if (v4 != -1)
    {
      CFArrayRemoveValueAtIndex(a1, v4);
    }

    return 0;
  }

  return result;
}

void sub_23EBB064C(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v10 = CFGetTypeID(a1);
    if (v10 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v17 = Count;
        v18 = 0;
        while (1)
        {
          v24 = 0;
          sub_23EB6FF14(a1, &v24, "[*].%ks:BOOL", v12, v13, v14, v15, v16, v18);
          if (v19 != -6727 && v24 != 0)
          {
            break;
          }

          if (v17 == ++v18)
          {
            return;
          }
        }

        if (!v19)
        {
          if (!a2 || (sub_23EB6FF14(a1, a2, "[*].%ks.[0].%ks:int", v12, v13, v14, v15, v16, v18), !v21))
          {
            if (!a3 || (sub_23EB6FF14(a1, a3, "[*].%ks.[0].%ks:int", v12, v13, v14, v15, v16, v18), !v22))
            {
              if (!a4 || (sub_23EB6FF14(a1, a4, "[*].%ks.[0].%ks:int", v12, v13, v14, v15, v16, v18), !v23))
              {
                if (a5)
                {
                  sub_23EB6FF14(a1, a5, "[*].%ks.[0].%ks:int", v12, v13, v14, v15, v16, v18);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23EBB07FC(const __CFArray *a1, const __CFArray *a2, __CFString **a3)
{
  v3 = 4294960591;
  if (!a1)
  {
    return v3;
  }

  if (!a2)
  {
    return v3;
  }

  if (!a3)
  {
    return v3;
  }

  Count = CFArrayGetCount(a1);
  v8 = CFArrayGetCount(a2);
  v3 = 4294960569;
  if (!Count)
  {
    return v3;
  }

  v9 = v8;
  if (!v8)
  {
    return v3;
  }

  v43 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v16 = Mutable;
  v47 = 0;
  v48 = 0;
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      sub_23EB6FF14(a1, &v48, "[*]", v11, v12, v13, v14, v15, i);
      if (v18)
      {
        v3 = v18;
        goto LABEL_38;
      }

      v19 = sub_23EC0FB28(v48);
      if (v19)
      {
        v20 = v19;
        if (CFDataGetLength(v19))
        {
          v21 = sub_23EBB0A98(v20);
          if (!v21)
          {
            v3 = 4294960568;
            goto LABEL_38;
          }

          v27 = v21;
          if (v9 >= 1)
          {
            v28 = 0;
            while (1)
            {
              v45 = 0;
              v46 = 0;
              v44 = 0;
              sub_23EB6FF14(a2, &v46, "[*]", v22, v23, v24, v25, v26, v28);
              if (v29)
              {
                break;
              }

              if (!v46)
              {
                goto LABEL_34;
              }

              sub_23EB6FF14(v46, &v47, "%kO", v30, v31, v32, v33, v34, @"raMA");
              if (!v47)
              {
                goto LABEL_34;
              }

              if (sub_23EBAFDF4(v47, v27))
              {
                sub_23EB6FF14(v16, &v45, "%kO", v22, v23, v24, v25, v26, v47);
                v3 = v40;
                if (v40 == -6727)
                {
                  v3 = sub_23EB6FDFC(v43, v16, "%kO=[%@]", v35, v36, v37, v38, v39, v47);
                }

                if (v3)
                {
                  goto LABEL_37;
                }

                if (!v45)
                {
                  goto LABEL_34;
                }

                sub_23EB6FF14(v48, &v44, "%kO", v35, v36, v37, v38, v39, @"SSID_STR");
                if (v41 != -6727)
                {
                  v3 = v41;
                  if (v41)
                  {
                    goto LABEL_37;
                  }

                  if (!v44)
                  {
LABEL_34:
                    v3 = 4294960568;
                    goto LABEL_37;
                  }

                  v29 = sub_23EB6FDFC(v43, v45, "%O", v22, v23, v24, v25, v26, v44);
                  if (!v29)
                  {
                    goto LABEL_29;
                  }

                  break;
                }
              }

              if (v9 == ++v28)
              {
                goto LABEL_29;
              }
            }

            v3 = v29;
LABEL_37:
            CFRelease(v27);
LABEL_38:
            CFRelease(v16);
            return v3;
          }

LABEL_29:
          CFRelease(v27);
        }
      }
    }
  }

  if (!CFDictionaryGetCount(v16))
  {
    v3 = 4294960569;
    goto LABEL_38;
  }

  v3 = 0;
  *a3 = v16;
  return v3;
}

UInt8 *sub_23EBB0A98(UInt8 *result)
{
  v6 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFDataGetTypeID())
    {
      result = CFDataGetBytePtr(v1);
      if (result)
      {
        v3 = *MEMORY[0x277CBECE8];
        v4 = sub_23EB7E798(result, 6, v5);
        return CFStringCreateWithCString(v3, v4, 0x8000100u);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_23EBB0B44(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  if (a1)
  {
    v8 = CFGetTypeID(a1);
    if (v8 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v15 = Count;
        v16 = 0;
        while (1)
        {
          sub_23EB6FF14(a1, &v21, "[*].%ks:BOOL", v10, v11, v12, v13, v14, v16);
          if (!v17 && v21 != 0)
          {
            break;
          }

          if (v15 == ++v16)
          {
            return;
          }
        }

        if (!a2 || (sub_23EB6FF14(a1, a2, "[*].%ks.[0].%ks:obj", v10, v11, v12, v13, v14, v16), !v19))
        {
          if (!a3 || (sub_23EB6FF14(a1, a3, "[*].%ks.[0].%ks:obj", v10, v11, v12, v13, v14, v16), !v20))
          {
            if (a4)
            {
              sub_23EB6FF14(a1, a4, "[*].%ks.[0].%ks:obj", v10, v11, v12, v13, v14, v16);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23EBB0CB4(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  if (*a1)
  {
    operator new();
  }

  if ((*a1 & 4) == 0)
  {
    return 0;
  }

  return sub_23EB4C01C(2, 0, (a1 + 16));
}

int *sub_23EBB0D6C(int *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 3);
    if (v2)
    {
      sub_23EB4E93C(v2);
      *(v1 + 3) = 0;
    }

    v3 = *v1;
    if (*v1)
    {
      v4 = *(v1 + 1);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        *(v1 + 1) = 0;
        v3 = *v1;
      }
    }

    if ((v3 & 4) != 0)
    {
      v5 = *(v1 + 2);
      if (v5)
      {
        sub_23EB4C0BC(v5);
        *(v1 + 2) = 0;
      }
    }

    JUMPOUT(0x23EF1F030);
  }

  return result;
}

uint64_t sub_23EBB0E1C(uint64_t a1)
{
  if (a1)
  {
    if ((byte_27E383440 & 1) == 0)
    {
      sub_23EBD45CC();
      byte_27E383440 = 1;
    }

    operator new();
  }

  return 4294967292;
}

uint64_t sub_23EBB0F50(uint64_t a1, uint64_t a2)
{
  if ((byte_27E383440 & 1) == 0)
  {
    sub_23EBD45CC();
    byte_27E383440 = 1;
  }

  if (a1 && a2)
  {
    operator new();
  }

  sub_23EBB0D6C(0);
  return 4294967292;
}

void sub_23EBB10B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB10D4(uint64_t a1, const void *a2)
{
  result = 4294960591;
  if (a1)
  {
    if (a2)
    {
      sub_23EB892F4(*(a1 + 8), a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_23EBB1108(uint64_t a1, const __CFString *a2, int a3)
{
  v15 = 0;
  v3 = 4294960591;
  if (!a1 || !a2)
  {
    return v3;
  }

  v13 = 0;
  cf = 0;
  data = 0;
  v12 = 0;
  if (pthread_main_np())
  {
    v3 = 4294960593;
    goto LABEL_24;
  }

  v7 = sub_23EB70FE4(a2, &v13, &v12);
  if (v7)
  {
    goto LABEL_6;
  }

  v3 = sub_23EB70E50(v13, &data);
  if (v12)
  {
    free(v12);
    v12 = 0;
  }

  if (v3)
  {
    goto LABEL_24;
  }

  if (data)
  {
    v8 = CFPropertyListCreateWithData(0, data, 0, 0, 0);
    if (data)
    {
      CFRelease(data);
      data = 0;
    }

    if (v8)
    {
      v9 = sub_23EBD578C(v8);
      CFRelease(v8);
      if (v9)
      {
        v3 = sub_23EBB0F50(&v15, v9);
        CFRelease(v9);
        if (v3)
        {
          goto LABEL_24;
        }

        if (!v15)
        {
          return 4294960568;
        }

        v7 = sub_23EBB1294(v15);
        if (v7)
        {
          goto LABEL_6;
        }

        if (!v15)
        {
          return 4294960591;
        }

        v7 = sub_23EB98700(*(v15 + 1), &cf);
        if (v7)
        {
LABEL_6:
          v3 = v7;
          goto LABEL_24;
        }

        if (cf)
        {
          v3 = sub_23EB994F4(*(a1 + 8), cf, cf, a3 != 0);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          goto LABEL_24;
        }
      }
    }
  }

  v3 = 4294960568;
LABEL_24:
  if (v15)
  {
    sub_23EBB0D6C(v15);
  }

  return v3;
}

uint64_t sub_23EBB1294(uint64_t a1)
{
  if (!a1)
  {
    return 4294967292;
  }

  sub_23EB897A0(*(a1 + 8), 1);
  if (!sub_23EB8BE08(*(a1 + 8), 1400460148))
  {
    sub_23EBB6768(a1);
  }

  for (i = 0; i != 300; ++i)
  {
    if (sub_23EB97B0C(*(a1 + 8), dword_27E3822F8[i]))
    {
      sub_23EBB647C(a1, dword_27E3822F8[i]);
    }
  }

  return 0;
}

uint64_t sub_23EBB132C(uint64_t a1, const __CFString *a2, CFDictionaryRef theDict, int a4)
{
  if (a1)
  {
    return sub_23EB994F4(*(a1 + 8), theDict, a2, a4 != 0);
  }

  else
  {
    return 4294967292;
  }
}

uint64_t sub_23EBB1354(uint64_t a1, const void *a2)
{
  v9 = 0;
  v2 = 4294960591;
  if (a1 && a2)
  {
    v10 = 0;
    v11 = 0;
    v4 = sub_23EB71A18(a2, &v9);
    if (!v4)
    {
      if (!v9)
      {
        return 4294960568;
      }

      while (sub_23EB71AC0(v9, &v10, &v11))
      {
        v5 = sub_23EBAF620(v10);
        v6 = v11;
        v7 = sub_23EB4BD2C(v5, v12);
        v4 = sub_23EBB3D34(a1, v7, v6);
        if (v4)
        {
          goto LABEL_4;
        }
      }

      v4 = sub_23EBB1294(a1);
    }

LABEL_4:
    v2 = v4;
    if (v9)
    {
      sub_23EB71AB4(v9);
    }
  }

  return v2;
}

unsigned __int8 *sub_23EBB1414(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = sub_23EB4E93C(result);
    *(a1 + 24) = 0;
  }

  if ((*a1 & 4) != 0)
  {
    result = *(a1 + 16);
    if (result)
    {

      return sub_23EB4C180(result);
    }
  }

  return result;
}

uint64_t sub_23EBB1474(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 24);
    if (result)
    {
      result = sub_23EB4E93C(result);
      *(v1 + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_23EBB14AC(uint64_t a1, const __CFArray *a2, int a3)
{
  if (!a1)
  {
    return 4294967292;
  }

  result = sub_23EBB1504(*(a1 + 16), a2, a3, *(a1 + 8));
  if (!result)
  {

    return sub_23EBB1F5C(a1);
  }

  return result;
}

uint64_t sub_23EBB1504(uint64_t a1, const __CFArray *a2, int a3, const std::string *a4)
{
  v74 = 0;
  v8 = sub_23EB4C1C4(a1);
  cf = 0;
  v73 = 0;
  v71 = 0;
  v70 = 0;
  memset(&v69, 0, sizeof(v69));
  memset(&v68, 0, sizeof(v68));
  v9 = sub_23EB89D74(a4, 1937326416, &v70, 0);
  if (!v9)
  {
    if (v70 == 102 || v70 == 3)
    {
      v10 = v8 & 0xFFFFF3FF | 0x800;
    }

    else if (a3)
    {
      v10 = v8 & 0xFFFFF3FF | 0x400;
    }

    else
    {
      v10 = v8 & 0xFFFFFBFF;
    }

    sub_23EB4C1CC(a1, v10);
    sub_23EB8CD70(a4, 0, v11, v12, v13, v14, v15, &__str);
    std::string::operator=(&v69, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v68, a4 + 5);
    v20 = (v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v69 : v69.__r_.__value_.__r.__words[0];
    v21 = (v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v68 : v68.__r_.__value_.__r.__words[0];
    v9 = sub_23EB4C1D4(a1, v20, v21, v10, v16, v17, v18, v19);
    if (!v9)
    {
      v79 = 0;
      v80[0] = 0;
      v78 = 0;
      memset(&__str, 0, sizeof(__str));
      memset(&v76, 0, sizeof(v76));
      sub_23EB8CD70(a4, 0, v22, v23, v24, v25, v26, &v75);
      std::string::operator=(&__str, &v75);
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      std::string::operator=(&v76, a4 + 5);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v76;
      }

      else
      {
        v28 = v76.__r_.__value_.__r.__words[0];
      }

      v29 = sub_23EB4CE60(a1, 4, 60000, p_str, v28, 1717920116, v80, &v79);
      v9 = v29;
      if (v29 == -16)
      {
        goto LABEL_86;
      }

      if (!v29)
      {
        v9 = sub_23EB4EBC4(1717920116, v80[0], v79, 1, &v78);
        if (v9)
        {
          goto LABEL_86;
        }

        if (!v78)
        {
          goto LABEL_85;
        }

        v9 = sub_23EB8A18C(a4, 1717920116, v78, 2);
        if (v78)
        {
          CFRelease(v78);
          v78 = 0;
        }

        if (v9)
        {
          goto LABEL_86;
        }

        free(v80[0]);
        v80[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &__str;
      }

      else
      {
        v30 = __str.__r_.__value_.__r.__words[0];
      }

      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v76;
      }

      else
      {
        v31 = v76.__r_.__value_.__r.__words[0];
      }

      if (!sub_23EB4CE60(a1, 4, 60000, v30, v31, 1717907505, v80, &v79))
      {
        v9 = sub_23EB4EBC4(1717907505, v80[0], v79, 1, &v78);
        if (v9)
        {
          goto LABEL_86;
        }

        if (!v78)
        {
          goto LABEL_85;
        }

        v9 = sub_23EB8A18C(a4, 1717907505, v78, 2);
        if (v78)
        {
          CFRelease(v78);
          v78 = 0;
        }

        if (v9)
        {
          goto LABEL_86;
        }

        free(v80[0]);
        v80[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &__str;
      }

      else
      {
        v32 = __str.__r_.__value_.__r.__words[0];
      }

      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v76;
      }

      else
      {
        v33 = v76.__r_.__value_.__r.__words[0];
      }

      if (!sub_23EB4CE60(a1, 4, 60000, v32, v33, 1752641585, v80, &v79))
      {
        v9 = sub_23EB4EBC4(1752641585, v80[0], v79, 1, &v78);
        if (v9)
        {
          goto LABEL_86;
        }

        if (!v78)
        {
          goto LABEL_85;
        }

        v9 = sub_23EB8A18C(a4, 1752641585, v78, 2);
        if (v78)
        {
          CFRelease(v78);
          v78 = 0;
        }

        if (v9)
        {
          goto LABEL_86;
        }

        free(v80[0]);
        v80[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &__str;
      }

      else
      {
        v34 = __str.__r_.__value_.__r.__words[0];
      }

      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v76;
      }

      else
      {
        v35 = v76.__r_.__value_.__r.__words[0];
      }

      if (!sub_23EB4CE60(a1, 4, 60000, v34, v35, 1937326416, v80, &v79))
      {
        v9 = sub_23EB4EBC4(1937326416, v80[0], v79, 1, &v78);
        if (v9)
        {
          goto LABEL_86;
        }

        if (!v78)
        {
          goto LABEL_85;
        }

        v9 = sub_23EB8A18C(a4, 1937326416, v78, 2);
        if (v78)
        {
          CFRelease(v78);
          v78 = 0;
        }

        if (v9)
        {
          goto LABEL_86;
        }

        free(v80[0]);
        v80[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &__str;
      }

      else
      {
        v36 = __str.__r_.__value_.__r.__words[0];
      }

      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v76;
      }

      else
      {
        v37 = v76.__r_.__value_.__r.__words[0];
      }

      v9 = sub_23EB4CE60(a1, 4, 60000, v36, v37, 1937327724, v80, &v79);
      if (v9)
      {
        goto LABEL_86;
      }

      v9 = sub_23EB4EBC4(1937327724, v80[0], v79, 1, &v78);
      if (v9)
      {
        goto LABEL_86;
      }

      if (v78)
      {
        v9 = sub_23EB8A18C(a4, 1937327724, v78, 2);
        if (v78)
        {
          CFRelease(v78);
          v78 = 0;
        }

        if (!v9)
        {
          free(v80[0]);
          v80[0] = 0;
LABEL_88:
          if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v76.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
            if (v9)
            {
              goto LABEL_120;
            }
          }

          else if (v9)
          {
            goto LABEL_120;
          }

          sub_23EB897A0(a4, 0);
          if (!a2)
          {
            goto LABEL_99;
          }

          if (sub_23EB8BE08(a4, 2003390540))
          {
            goto LABEL_96;
          }

          v40 = sub_23EBAF5D4(1466517097);
          if (!v40)
          {
LABEL_119:
            v9 = 4294967293;
            goto LABEL_120;
          }

          v81.length = CFArrayGetCount(a2);
          v81.location = 0;
          v41 = CFArrayContainsValue(a2, v81, v40);
          CFRelease(v40);
          if (!v41)
          {
LABEL_96:
            Count = CFArrayGetCount(a2);
            v39 = 0;
            v73 = Count;
          }

          else
          {
LABEL_99:
            sub_23EB98EAC(a4, &v71, &v73);
            a2 = 0;
            v39 = 1;
            Count = v73;
          }

          if (!Count)
          {
            v9 = 0;
            goto LABEL_120;
          }

          v42 = malloc_type_malloc(12 * Count, 0x10000403E1C8BA9uLL);
          v48 = v42;
          if (v42)
          {
            v49 = v73;
            v67 = v42;
            if (!v73)
            {
              goto LABEL_112;
            }

            v50 = 0;
            v51 = 0;
            v52 = 0;
            while (1)
            {
              if (v39)
              {
                *v48 = *(v71 + v50);
              }

              else
              {
                sub_23EB6FF14(a2, v48, "[*]:code", v43, v44, v45, v46, v47, v52);
                v9 = v53;
                if (v53)
                {
                  goto LABEL_117;
                }

                if (!sub_23EB972F8(a4, *v48))
                {
                  ++v51;
                  goto LABEL_110;
                }
              }

              v48[1] = 0;
              v48[2] = 0;
              v48 += 3;
LABEL_110:
              ++v52;
              v50 += 12;
              if (v52 >= v73)
              {
                v49 = v73 - v51;
                v48 = v67;
LABEL_112:
                v73 = v49;
                std::string::operator=(&v68, a4 + 5);
                if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v54 = &v68;
                }

                else
                {
                  v54 = v68.__r_.__value_.__r.__words[0];
                }

                v9 = sub_23EB4D110(a1, 4, v54, v73, v48);
                if (v9 || (v9 = sub_23EB4D208(a1, 0, 60000, 0), v9))
                {
LABEL_117:
                  free(v67);
                  goto LABEL_120;
                }

                while (2)
                {
                  LODWORD(v76.__r_.__value_.__r.__words[1]) = 0;
                  v76.__r_.__value_.__r.__words[0] = 0;
                  v9 = sub_23EB4D2E4(a1, 0, 60000, &v76);
                  if (v9)
                  {
                    goto LABEL_117;
                  }

                  data_low = LODWORD(v76.__r_.__value_.__l.__data_);
                  if (LODWORD(v76.__r_.__value_.__l.__data_) && (v76.__r_.__value_.__s.__data_[4] & 1) == 0)
                  {
                    memset(&__str, 0, sizeof(__str));
                    sub_23EB994CC(&__str, LODWORD(v76.__r_.__value_.__r.__words[1]));
                    if (LODWORD(v76.__r_.__value_.__r.__words[1]))
                    {
                      v9 = sub_23EB4D344(a1, 0, 60000, LODWORD(v76.__r_.__value_.__r.__words[1]), __str.__r_.__value_.__l.__data_);
                      if (!v9)
                      {
                        if ((v76.__r_.__value_.__s.__data_[4] & 2) != 0)
                        {
                          sub_23EB4B8F8(LODWORD(v76.__r_.__value_.__r.__words[1]), __str.__r_.__value_.__l.__data_);
                        }

                        v9 = sub_23EB4EBC4(v76.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__data_, LODWORD(v76.__r_.__value_.__r.__words[1]), 1, &cf);
                        if (!v9)
                        {
LABEL_146:
                          v9 = sub_23EB8C09C(a4, LODWORD(v76.__r_.__value_.__l.__data_), cf, 2);
                          if (v9)
                          {
                            goto LABEL_147;
                          }

                          CFRelease(cf);
                          v65 = 0;
                          v9 = 0;
                          cf = 0;
                          v66 = 1;
LABEL_148:
                          if (__str.__r_.__value_.__r.__words[0])
                          {
                            __str.__r_.__value_.__l.__size_ = __str.__r_.__value_.__r.__words[0];
                            operator delete(__str.__r_.__value_.__l.__data_);
                          }

                          if (!v66)
                          {
LABEL_143:
                            if (v65)
                            {
                              goto LABEL_117;
                            }

                            continue;
                          }

LABEL_142:
                          v65 = 0;
                          goto LABEL_143;
                        }
                      }
                    }

                    else
                    {
                      v9 = sub_23EB4EBC4(v76.__r_.__value_.__l.__data_, 0, 0, 1, &cf);
                      if (!v9)
                      {
                        goto LABEL_146;
                      }
                    }

LABEL_147:
                    v66 = 0;
                    v65 = 6;
                    goto LABEL_148;
                  }

                  break;
                }

                v74 = 0;
                if (LODWORD(v76.__r_.__value_.__r.__words[1]) != 4)
                {
                  if (dword_27E3822B8 <= 8000)
                  {
                    if (dword_27E3822B8 != -1)
                    {
                      goto LABEL_157;
                    }

                    if (sub_23EB74AC8(&dword_27E3822B8, 0x1F40u))
                    {
                      data_low = LODWORD(v76.__r_.__value_.__l.__data_);
LABEL_157:
                      sub_23EB75374(&dword_27E3822B8, "ACPStatus _BSReadConfiguration(ACPClientRef, CFArrayRef, Boolean, BaseStation *)", 8000, "bad property size (code='%C', expected=%u, actual=%u)\n", v56, v57, v58, v59, data_low);
                    }
                  }

                  v9 = 4294960553;
                  goto LABEL_117;
                }

                v9 = sub_23EB4D344(a1, 0, 60000, 4, &v74);
                if (v9)
                {
                  goto LABEL_117;
                }

                v74 = bswap32(v74);
                if (dword_27E3822B8 <= 8000 && (dword_27E3822B8 != -1 || sub_23EB74AC8(&dword_27E3822B8, 0x1F40u)))
                {
                  sub_23EB75374(&dword_27E3822B8, "ACPStatus _BSReadConfiguration(ACPClientRef, CFArrayRef, Boolean, BaseStation *)", 8000, "read property error (code='%C' error = %m)\n", v61, v62, v63, v64, LODWORD(v76.__r_.__value_.__l.__data_));
                }

                if (!LODWORD(v76.__r_.__value_.__l.__data_))
                {
                  sub_23EB897A0(a4, 1);
                  v9 = 0;
                  a4[9].__r_.__value_.__s.__data_[10] = 1;
                  goto LABEL_117;
                }

                v9 = 0;
                goto LABEL_142;
              }
            }
          }

          goto LABEL_119;
        }

LABEL_86:
        if (v80[0])
        {
          free(v80[0]);
        }

        goto LABEL_88;
      }

LABEL_85:
      v9 = 4294960568;
      goto LABEL_86;
    }
  }

LABEL_120:
  sub_23EB4CC34(a1);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBB1EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB1F5C(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  if (sub_23EB8BE08(*(a1 + 8), 2003390540))
  {
    v7 = 0;
    goto LABEL_14;
  }

  v8 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=[{%@}]}", v2, v3, v4, v5, v6, @"radios");
  if (v8)
  {
    goto LABEL_13;
  }

  v8 = sub_23EBB75F0(a1, 0, 1918979693);
  if (v8)
  {
    goto LABEL_13;
  }

  v8 = sub_23EBB75F0(a1, 0, 1918976876);
  if (v8)
  {
    goto LABEL_13;
  }

  v9 = sub_23EBB75F0(a1, 0, 1918980971);
  if (v9 == -6727 || (v7 = v9, !v9) || v9 == -5)
  {
    v8 = sub_23EBB75F0(a1, 0, 1918981965);
    if (v8)
    {
      goto LABEL_13;
    }

    v8 = sub_23EBB75F0(a1, 0, 1918977345);
    if (v8)
    {
      goto LABEL_13;
    }

    v11 = sub_23EBB75F0(a1, 0, 1918976882);
    if (v11 != -6727)
    {
      v7 = v11;
      if (v11)
      {
        if (v11 != -5)
        {
          goto LABEL_14;
        }
      }
    }

    v12 = sub_23EBB75F0(a1, 0, 1918981957);
    if (v12 != -6727)
    {
      v7 = v12;
      if (v12)
      {
        if (v12 != -5)
        {
          goto LABEL_14;
        }
      }
    }

    v8 = sub_23EBB75F0(a1, 0, 1918978900);
    if (v8)
    {
      goto LABEL_13;
    }

    v8 = sub_23EBB75F0(a1, 0, 1918980719);
    if (v8)
    {
      goto LABEL_13;
    }

    v8 = sub_23EBB75F0(a1, 0, 1918976833);
    if (v8)
    {
      goto LABEL_13;
    }

    v8 = sub_23EBB75F0(a1, 0, 1918976872);
    if (v8)
    {
      goto LABEL_13;
    }

    v13 = sub_23EBB75F0(a1, 0, 1918981955);
    if (v13 != -6727)
    {
      v7 = v13;
      if (v13)
      {
        if (v13 != -5)
        {
          goto LABEL_14;
        }
      }
    }

    v8 = sub_23EBB75F0(a1, 0, 1918979445);
    if (v8)
    {
      goto LABEL_13;
    }

    v8 = sub_23EBB75F0(a1, 0, 1918979428);
    if (v8)
    {
      goto LABEL_13;
    }

    v8 = sub_23EBB75F0(a1, 0, 1918980207);
    if (v8)
    {
      goto LABEL_13;
    }

    v8 = sub_23EBB75F0(a1, 0, 1918980980);
    if (v8)
    {
      goto LABEL_13;
    }

    v8 = sub_23EBB75F0(a1, 0, 1918128974);
    if (v8)
    {
      goto LABEL_13;
    }

    v8 = sub_23EBB75F0(a1, 0, 1633895790);
    if (v8)
    {
      goto LABEL_13;
    }

    v8 = sub_23EBB75F0(a1, 0, 2003060332);
    if (v8)
    {
      goto LABEL_13;
    }

    v8 = sub_23EBB75F0(a1, 0, 2003061875);
    if (v8)
    {
      goto LABEL_13;
    }

    v14 = sub_23EBB75F0(a1, 0, 1683440723);
    if (v14 != -6727)
    {
      v7 = v14;
      if (v14)
      {
        if (v14 != -5)
        {
          goto LABEL_14;
        }
      }
    }

    v15 = sub_23EBB75F0(a1, 0, 1685538412);
    if (v15 != -6727)
    {
      v7 = v15;
      if (v15)
      {
        if (v15 != -5)
        {
          goto LABEL_14;
        }
      }
    }

    v8 = sub_23EBB75F0(a1, 0, 1918977644);
    if (v8)
    {
      goto LABEL_13;
    }

    v16 = sub_23EBB75F0(a1, 0, 1918978353);
    if (v16 != -6727)
    {
      v7 = v16;
      if (v16)
      {
        if (v16 != -5)
        {
          goto LABEL_14;
        }
      }
    }

    v8 = sub_23EBB75F0(a1, 0, 1918976373);
    if (v8)
    {
LABEL_13:
      v7 = v8;
      goto LABEL_14;
    }

    v17 = sub_23EBB75F0(a1, 0, 1918980965);
    if (v17 == -6727 || (v7 = v17, !v17) || v17 == -5)
    {
      v8 = sub_23EBB75F0(a1, 0, 1918977586);
      if (!v8)
      {
        v18 = sub_23EBB75F0(a1, 0, 1918978354);
        if (v18 != -6727)
        {
          v7 = v18;
          if (v18)
          {
            if (v18 != -5)
            {
              goto LABEL_14;
            }
          }
        }

        v19 = sub_23EBB75F0(a1, 0, 1918981426);
        if (v19 != -6727)
        {
          v7 = v19;
          if (v19)
          {
            if (v19 != -5)
            {
              goto LABEL_14;
            }
          }
        }

        v20 = sub_23EBB75F0(a1, 0, 1918980914);
        if (v20 != -6727)
        {
          v7 = v20;
          if (v20)
          {
            if (v20 != -5)
            {
              goto LABEL_14;
            }
          }
        }

        v8 = sub_23EBB75F0(a1, 0, 1918976873);
        if (!v8)
        {
          v8 = sub_23EB8A18C(*(a1 + 8), 1466517097, cf, 2);
        }
      }

      goto LABEL_13;
    }
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t sub_23EBB23B8(uint64_t a1, BOOL *a2, CFTypeRef *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  memset(&__str, 0, sizeof(__str));
  cf = 0;
  if (!a1)
  {
    v31 = 0;
    v6 = 4294967292;
    goto LABEL_25;
  }

  v6 = sub_23EC0F418(v48, 0x10u);
  if (v6)
  {
    goto LABEL_24;
  }

  MEMORY[0x23EF1EFD0](&__str, v48);
  v6 = sub_23EBB26A0(a1);
  if (v6)
  {
    goto LABEL_24;
  }

  std::string::operator=((*(a1 + 8) + 344), &__str);
  sub_23EB8CB80(*(a1 + 8), 1818449522, 0x2000000, 0);
  sub_23EB8C15C(*(a1 + 8));
  if (!sub_23EB8BE08(*(a1 + 8), 1835626098))
  {
    if (sub_23EB8BE08(*(a1 + 8), 1685214297))
    {
      v39 = sub_23EBB3000(a1);
    }

    else
    {
      v39 = sub_23EBB3360(a1, v32, v33, v34, v35, v36, v37, v38);
    }

    v6 = v39;
    goto LABEL_24;
  }

  v44 = 0;
  v45 = 0;
  theString1 = 0;
  v6 = sub_23EBB2C60(a1, &cf);
  if (v6)
  {
    goto LABEL_24;
  }

  if (!cf)
  {
LABEL_32:
    v31 = 0;
    v6 = 4294960568;
    goto LABEL_25;
  }

  sub_23EB6FF14(cf, &v45, "%ks", v7, v8, v9, v10, v11, "drTY");
  v6 = v16;
  if (v16)
  {
LABEL_24:
    v31 = 0;
    goto LABEL_25;
  }

  v17 = v45;
  if (!v45)
  {
    goto LABEL_32;
  }

  if (dword_27E3822B8 <= 1000)
  {
    if (dword_27E3822B8 != -1 || (v18 = sub_23EB74AC8(&dword_27E3822B8, 0x3E8u), v17 = v45, v18))
    {
      sub_23EB75374(&dword_27E3822B8, "ACPStatus BSWriteWithMinimalRestart(BSRef, Boolean *, CFArrayRef *)", 1000, "dirtyProperties: %@\n", v12, v13, v14, v15, v17);
      v17 = v45;
    }
  }

  v6 = sub_23EBB2E80(a1, v17);
  if (v6)
  {
    goto LABEL_24;
  }

  sub_23EB6FF14(cf, &theString1, "%ks", v19, v20, v21, v22, v23, "result");
  v6 = v24;
  if (v24)
  {
    goto LABEL_24;
  }

  if (!theString1)
  {
    goto LABEL_32;
  }

  v25 = CFStringCompare(theString1, @"minimal", 0);
  v31 = v25 == kCFCompareEqualTo;
  if (a3)
  {
    if (v25)
    {
      v31 = 0;
      v6 = 0;
      *a3 = 0;
    }

    else
    {
      sub_23EB6FF14(cf, &v44, "%ks", v26, v27, v28, v29, v30, "interruptions");
      v6 = v41;
      if (!v41)
      {
        v42 = v44;
        if (v44)
        {
          *a3 = v44;
          CFRetain(v42);
          v6 = 0;
        }

        else
        {
          v6 = 4294960568;
        }
      }

      v31 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_25:
  if (a2)
  {
    *a2 = v31;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_23EBB2680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB26A0(uint64_t a1)
{
  v40 = 0;
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  if (sub_23EB8BE08(*(a1 + 8), 2003390540))
  {
    v2 = 0;
  }

  else
  {
    v3 = sub_23EB8BFFC(*(a1 + 8), 1466517097, &cf, 0);
    if (!v3)
    {
      sub_23EB6FF14(cf, &v40, "%kO.[0]", v4, v5, v6, v7, v8, @"radios");
      if (!v3)
      {
        v10 = sub_23EBB74F4(a1, v40, 1918979693);
        if (v10 != -6727)
        {
          v2 = v10;
          if (v10)
          {
            if (v10 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v11 = sub_23EBB74F4(a1, v40, 1918976876);
        if (v11 != -6727)
        {
          v2 = v11;
          if (v11)
          {
            if (v11 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v12 = sub_23EBB74F4(a1, v40, 1918980971);
        if (v12 != -6727)
        {
          v2 = v12;
          if (v12)
          {
            if (v12 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v13 = sub_23EBB74F4(a1, v40, 1918981965);
        if (v13 != -6727)
        {
          v2 = v13;
          if (v13)
          {
            if (v13 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v14 = sub_23EBB74F4(a1, v40, 1918977345);
        if (v14 != -6727)
        {
          v2 = v14;
          if (v14)
          {
            if (v14 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v15 = sub_23EBB74F4(a1, v40, 1918976882);
        if (v15 != -6727)
        {
          v2 = v15;
          if (v15)
          {
            if (v15 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v16 = sub_23EBB74F4(a1, v40, 1918981957);
        if (v16 != -6727)
        {
          v2 = v16;
          if (v16)
          {
            if (v16 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v17 = sub_23EBB74F4(a1, v40, 1918978900);
        if (v17 != -6727)
        {
          v2 = v17;
          if (v17)
          {
            if (v17 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v18 = sub_23EBB74F4(a1, v40, 1918980719);
        if (v18 != -6727)
        {
          v2 = v18;
          if (v18)
          {
            if (v18 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v19 = sub_23EBB74F4(a1, v40, 1918976833);
        if (v19 != -6727)
        {
          v2 = v19;
          if (v19)
          {
            if (v19 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v20 = sub_23EBB74F4(a1, v40, 1918976872);
        if (v20 != -6727)
        {
          v2 = v20;
          if (v20)
          {
            if (v20 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v21 = sub_23EBB74F4(a1, v40, 1918981955);
        if (v21 != -6727)
        {
          v2 = v21;
          if (v21)
          {
            if (v21 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v22 = sub_23EBB74F4(a1, v40, 1918979445);
        if (v22 != -6727)
        {
          v2 = v22;
          if (v22)
          {
            if (v22 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v23 = sub_23EBB74F4(a1, v40, 1918979428);
        if (v23 != -6727)
        {
          v2 = v23;
          if (v23)
          {
            if (v23 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v24 = sub_23EBB74F4(a1, v40, 1918980207);
        if (v24 != -6727)
        {
          v2 = v24;
          if (v24)
          {
            if (v24 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v25 = sub_23EBB74F4(a1, v40, 1918980980);
        if (v25 != -6727)
        {
          v2 = v25;
          if (v25)
          {
            if (v25 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v26 = sub_23EBB74F4(a1, v40, 1918128974);
        if (v26 != -6727)
        {
          v2 = v26;
          if (v26)
          {
            if (v26 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v27 = sub_23EBB74F4(a1, v40, 1633895790);
        if (v27 != -6727)
        {
          v2 = v27;
          if (v27)
          {
            if (v27 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v28 = sub_23EBB74F4(a1, v40, 2003060332);
        if (v28 != -6727)
        {
          v2 = v28;
          if (v28)
          {
            if (v28 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v29 = sub_23EBB74F4(a1, v40, 2003061875);
        if (v29 != -6727)
        {
          v2 = v29;
          if (v29)
          {
            if (v29 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v30 = sub_23EBB74F4(a1, v40, 1683440723);
        if (v30 != -6727)
        {
          v2 = v30;
          if (v30)
          {
            if (v30 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v31 = sub_23EBB74F4(a1, v40, 1685538412);
        if (v31 != -6727)
        {
          v2 = v31;
          if (v31)
          {
            if (v31 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v32 = sub_23EBB74F4(a1, v40, 1918977644);
        if (v32 != -6727)
        {
          v2 = v32;
          if (v32)
          {
            if (v32 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v33 = sub_23EBB74F4(a1, v40, 1918978353);
        if (v33 != -6727)
        {
          v2 = v33;
          if (v33)
          {
            if (v33 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v34 = sub_23EBB74F4(a1, v40, 1918976373);
        if (v34 != -6727)
        {
          v2 = v34;
          if (v34)
          {
            if (v34 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v35 = sub_23EBB74F4(a1, v40, 1918980965);
        if (v35 != -6727)
        {
          v2 = v35;
          if (v35)
          {
            if (v35 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v36 = sub_23EBB74F4(a1, v40, 1918977586);
        if (v36 != -6727)
        {
          v2 = v36;
          if (v36)
          {
            if (v36 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v37 = sub_23EBB74F4(a1, v40, 1918978354);
        if (v37)
        {
          v2 = v37;
          if (v37 != -6727)
          {
            goto LABEL_8;
          }
        }

        v38 = sub_23EBB74F4(a1, v40, 1918981426);
        if (v38 != -6727)
        {
          v2 = v38;
          if (v38)
          {
            if (v38 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v39 = sub_23EBB74F4(a1, v40, 1918980914);
        if (v39 != -6727)
        {
          v2 = v39;
          if (v39)
          {
            if (v39 != -5)
            {
              goto LABEL_8;
            }
          }
        }

        v3 = sub_23EBB74F4(a1, v40, 1918976873);
      }
    }

    v2 = v3;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

uint64_t sub_23EBB2C60(uint64_t a1, CFTypeRef *a2)
{
  memset(&v23, 0, sizeof(v23));
  memset(&v22, 0, sizeof(v22));
  v2 = 4294967292;
  if (!a1 || !a2)
  {
    goto LABEL_24;
  }

  if (!sub_23EB8BE08(*(a1 + 8), 1835626098))
  {
    v2 = 0;
    goto LABEL_24;
  }

  sub_23EB8C15C(*(a1 + 8));
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v2 = 4294967293;
    goto LABEL_24;
  }

  v2 = sub_23EB97F04(*(a1 + 8), Mutable);
  if (!v2)
  {
    sub_23EB8CD70(*(a1 + 8), 0, v7, v8, v9, v10, v11, &__str);
    std::string::operator=(&v23, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v22, (*(a1 + 8) + 120));
    v12 = (v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v23 : v23.__r_.__value_.__r.__words[0];
    v13 = (v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v22 : v22.__r_.__value_.__r.__words[0];
    v2 = sub_23EB4DD6C(*(a1 + 16), 4u, 60000, v12, v13, a2, @"acpd.parseDirtyPlist", "%ks=%O", "drTY");
    if (!v2)
    {
      v19 = *a2;
      if (!*a2)
      {
        goto LABEL_21;
      }

      v2 = sub_23EB6F348(v5, a2, "{%##O%ks=%O}", v14, v15, v16, v17, v18, v19);
      if (v2)
      {
        goto LABEL_22;
      }

      if (*a2)
      {
        CFRelease(v19);
        v2 = 0;
      }

      else
      {
LABEL_21:
        v2 = 4294967293;
      }
    }
  }

LABEL_22:
  CFRelease(Mutable);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

LABEL_24:
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_23EBB2E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB2E80(uint64_t a1, uint64_t a2)
{
  memset(&v14, 0, sizeof(v14));
  memset(&v13, 0, sizeof(v13));
  v2 = 4294967292;
  if (a1 && a2)
  {
    if (sub_23EB8BE08(*(a1 + 8), 1835626098))
    {
      sub_23EB8CD70(*(a1 + 8), 0, v4, v5, v6, v7, v8, &__str);
      std::string::operator=(&v14, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      std::string::operator=(&v13, (*(a1 + 8) + 120));
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v14;
      }

      else
      {
        v9 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v13;
      }

      else
      {
        v10 = v13.__r_.__value_.__r.__words[0];
      }

      v2 = sub_23EB4DD6C(*(a1 + 16), 0, 60000, v9, v10, 0, @"acpd.setDirtyPlist", "%ks=%O%ks=%b", "drTY");
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v2 = 0;
    }
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_23EBB2FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB3000(uint64_t a1)
{
  v47 = 0;
  v48 = 0;
  cf = 0;
  theData = 0;
  memset(&v44, 0, sizeof(v44));
  memset(&v43, 0, sizeof(v43));
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v9 = sub_23EB97CE8(*(a1 + 8), Mutable);
    if (!v9)
    {
      v9 = sub_23EB6FDFC(v2, Mutable, "%C", v4, v5, v6, v7, v8, 1668573549);
      if (!v9)
      {
        v9 = sub_23EB6FDFC(v2, Mutable, "%C", v10, v11, v12, v13, v14, 1818449523);
        if (!v9)
        {
          Count = CFArrayGetCount(Mutable);
          v9 = sub_23EB6F348(v2, &v48, "{}", v16, v17, v18, v19, v20, v41);
          if (!v9)
          {
            if (Count < 1)
            {
LABEL_21:
              v9 = sub_23EB6E6A4(v2, v48, &theData);
              if (!v9)
              {
                sub_23EB8CD70(*(a1 + 8), 0, v30, v31, v32, v33, v34, &__str);
                std::string::operator=(&v44, &__str);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                v35 = &v43;
                std::string::operator=(&v43, (*(a1 + 8) + 120));
                v36 = *(a1 + 16);
                if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v37 = &v44;
                }

                else
                {
                  v37 = v44.__r_.__value_.__r.__words[0];
                }

                if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v35 = v43.__r_.__value_.__r.__words[0];
                }

                BytePtr = CFDataGetBytePtr(theData);
                Length = CFDataGetLength(theData);
                v9 = sub_23EB4D354(v36, 0, 60000, v37, v35, 1685214297, BytePtr, Length);
              }
            }

            else
            {
              v26 = 0;
              while (1)
              {
                __str.__r_.__value_.__s.__data_[0] = 0;
                sub_23EB6FF14(Mutable, &cf, "[*]:utf8", v21, v22, v23, v24, v25, v26);
                v9 = v27;
                if (v27)
                {
                  break;
                }

                if (!cf)
                {
                  v9 = 4294960569;
                  break;
                }

                v28 = sub_23EB9AC64(cf);
                free(cf);
                cf = 0;
                if (v28)
                {
                  if (sub_23EB972F8(*(a1 + 8), v28))
                  {
                    v29 = sub_23EB92884(*(a1 + 8), v28, &v47, &__str);
                    v9 = v29;
                    if (v28 != 1349676902 || v29 != -6720)
                    {
                      if (v29)
                      {
                        break;
                      }

                      v9 = sub_23EB6FDFC(v2, v48, "%kC=%O", v21, v22, v23, v24, v25, v28);
                      if (__str.__r_.__value_.__s.__data_[0] == 1)
                      {
                        if (v47)
                        {
                          CFRelease(v47);
                        }

                        v47 = 0;
                      }

                      if (v9)
                      {
                        break;
                      }
                    }
                  }
                }

                if (Count == ++v26)
                {
                  goto LABEL_21;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v9 = 4294960568;
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBB3314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB3360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MutableCopy = 0;
  v49 = 0;
  v50 = 0;
  cf = 0;
  v48 = 0;
  memset(&v46, 0, sizeof(v46));
  memset(&v45, 0, sizeof(v45));
  v9 = 4294967292;
  v10 = *(a1 + 16);
  if (!v10)
  {
    goto LABEL_18;
  }

  v12 = *(a1 + 8);
  if (!v12)
  {
    goto LABEL_18;
  }

  sub_23EB8CD70(*(a1 + 8), 0, a4, a5, a6, a7, a8, &__str);
  std::string::operator=(&v46, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::operator=(&v45, v12 + 5);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v46;
  }

  else
  {
    v17 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v45;
  }

  else
  {
    v18 = v45.__r_.__value_.__r.__words[0];
  }

  v9 = sub_23EB4C1D4(v10, v17, v18, 0, v13, v14, v15, v16);
  if (v9 || ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v19 = &v45) : (v19 = v45.__r_.__value_.__r.__words[0]), (v9 = sub_23EB4D4BC(v10, 4u, v19, 0x15u, 0xFFFFFFFFuLL, 0), v9) || (v9 = sub_23EB4D208(v10, 0, 60000, 0), v9)))
  {
LABEL_17:
    MutableCopy = 0;
    goto LABEL_18;
  }

  sub_23EB98EAC(v12, &v49, &v50);
  if (!v50)
  {
    MutableCopy = 0;
    v9 = 0;
    goto LABEL_18;
  }

  v21 = 0;
  v22 = 0;
  allocator = *MEMORY[0x277CBECE8];
  do
  {
    v43 = 0;
    v23 = *(v49 + v21);
    __str.__r_.__value_.__r.__words[0] = 0;
    v24 = sub_23EBB4964(v23, &__str);
    v9 = v24;
    if (v24)
    {
      v25 = 1;
    }

    else
    {
      v25 = __str.__r_.__value_.__r.__words[0] == 0;
    }

    if (v25)
    {
      if (v24 != -5 && v24 != 0)
      {
        goto LABEL_17;
      }
    }

    else if (*(__str.__r_.__value_.__r.__words[0] + 24))
    {
      goto LABEL_120;
    }

    v27 = *(v49 + v21);
    if (v27 > 1918979427)
    {
      if (v27 > 1918980964)
      {
        if (v27 <= 1918981954)
        {
          if (((v27 - 1918980965) > 0xF || ((1 << (v27 - 101)) & 0x8041) == 0) && v27 != 1918981426)
          {
            goto LABEL_97;
          }

          goto LABEL_96;
        }

        v28 = (v27 - 1918981955) <= 0xA && ((1 << (v27 - 67)) & 0x405) != 0 || v27 == 2003061875;
        v29 = 2003060332;
        goto LABEL_91;
      }

      if (v27 > 1918980206)
      {
        v28 = v27 == 1918980207 || v27 == 1918980719;
        v31 = 21298;
      }

      else
      {
        v28 = v27 == 1918979428 || v27 == 1918979445;
        v31 = 20077;
      }

      goto LABEL_90;
    }

    if (v27 > 1918977344)
    {
      if (v27 > 1918978352)
      {
        if ((v27 - 1918978353) >= 2 && v27 != 1918978900)
        {
          goto LABEL_97;
        }

        goto LABEL_96;
      }

      v28 = v27 == 1918977345 || v27 == 1918977586;
      v31 = 18028;
      goto LABEL_90;
    }

    if (v27 > 1918128973)
    {
      v28 = (v27 - 1918976833) <= 0x31 && ((1 << (v27 - 65)) & 0x2098000000001) != 0 || v27 == 1918128974;
      v31 = 16757;
LABEL_90:
      v29 = v31 | 0x72610000;
      goto LABEL_91;
    }

    v28 = v27 == 1633895790 || v27 == 1683440723;
    v29 = 1685538412;
LABEL_91:
    if (!v28 && v27 != v29)
    {
      goto LABEL_97;
    }

LABEL_96:
    if (sub_23EB8BE08(*(a1 + 8), 2003390540))
    {
      goto LABEL_120;
    }

LABEL_97:
    if (!sub_23EBB4AE8(a1, v27) || sub_23EB92884(v12, *(v49 + v21), &v48, &v43))
    {
      goto LABEL_120;
    }

    if (!v48)
    {
      v9 = 4294960559;
      goto LABEL_17;
    }

    v9 = sub_23EB4EF94(*(v49 + v21), v48, 1, &cf);
    if (v9)
    {
      goto LABEL_17;
    }

    LODWORD(v52) = *(v49 + v21);
    HIDWORD(v52) = *(v49 + v21 + 8);
    Length = CFDataGetLength(cf);
    v53 = Length;
    if (Length)
    {
      v38 = Length;
    }

    else
    {
      CFRelease(cf);
      cf = 0;
      __str.__r_.__value_.__r.__words[0] = 0;
      v9 = sub_23EB4BB3C(v52, &__str);
      if (v9)
      {
        goto LABEL_17;
      }

      if (*(__str.__r_.__value_.__r.__words[0] + 4) == 13)
      {
        goto LABEL_120;
      }

      v38 = v53;
    }

    if (cf)
    {
      MutableCopy = CFDataCreateMutableCopy(allocator, v38, cf);
      CFRelease(cf);
      cf = 0;
      if (!MutableCopy)
      {
        v9 = 0;
        goto LABEL_17;
      }

      v38 = v53;
    }

    else
    {
      MutableCopy = 0;
    }

    if (v38)
    {
      MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
    }

    else
    {
      MutableBytePtr = 0;
    }

    v9 = sub_23EB4D5E0(v10, 16, &v52, MutableBytePtr);
    if (v9)
    {
      goto LABEL_18;
    }

    if (v43 == 1)
    {
      if (v48)
      {
        CFRelease(v48);
      }

      v48 = 0;
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

LABEL_120:
    ++v22;
    v21 += 12;
  }

  while (v22 < v50);
  v52 = 1633896014;
  v53 = 0;
  v9 = sub_23EB4D5E0(v10, 16, &v52, 0);
  if (v9)
  {
    goto LABEL_17;
  }

  v40 = sub_23EB8BE08(v12, 1383287118);
  v53 = 0;
  v41 = v40 ? 1633899081 : 1633899074;
  v52 = v41;
  v9 = sub_23EB4D5E0(v10, 16, &v52, 0);
  if (v9)
  {
    goto LABEL_17;
  }

  v9 = sub_23EB4D690(v10, 16, 0);
  if (v9)
  {
    goto LABEL_17;
  }

  v9 = sub_23EB4DF48(v10, 0x7FFFFFFF);
  if (v9)
  {
    goto LABEL_17;
  }

  do
  {
    v9 = sub_23EB4D714(v10, 0, 60000, v51);
    MutableCopy = 0;
  }

  while (!v9 && v51[0].i32[0]);
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  sub_23EB4CC34(v10);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBB39A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB39F8(uint64_t a1)
{
  if (a1)
  {
    return sub_23EB98200(*(a1 + 8));
  }

  else
  {
    return 4294967292;
  }
}

uint64_t sub_23EBB3A0C(uint64_t a1, BOOL *a2)
{
  if (!a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = sub_23EB98318(v5);
      result = 0;
      *a2 = v6;
    }
  }

  return result;
}

uint64_t sub_23EBB3A64(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      result = 0;
      *a2 = *(v4 + 226);
    }
  }

  return result;
}

uint64_t sub_23EBB3AE0(uint64_t a1, char *a2, _BYTE *a3)
{
  if (!a1)
  {
    return 4294967292;
  }

  v4 = 4294967292;
  if (a3)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v9 = 0;
      sub_23EB8CCB8(__p, a2);
      v4 = sub_23EB9ADA4(v5, __p, &v9);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      *a3 = v9;
    }
  }

  return v4;
}

void sub_23EBB3B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB3B84(uint64_t a1, char *a2, const __CFString *a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = *(a1 + 8);
  sub_23EB8CCB8(__p, a2);
  v5 = sub_23EB8FC04(v4, __p, a3, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23EBB3BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB3C0C(uint64_t a1, char *a2, int a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = *(a1 + 8);
  sub_23EB8CCB8(__p, a2);
  v5 = sub_23EB906B8(v4, __p, a3, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23EBB3C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB3C94(uint64_t a1, char *a2, int a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = *(a1 + 8);
  sub_23EB8CCB8(__p, a2);
  v5 = sub_23EB97568(v4, __p, a3, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23EBB3D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB3D1C(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    return sub_23EB8BE98(*(a1 + 8), a2, a3, 0);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t sub_23EBB3D34(uint64_t a1, char *a2, const __CFString *a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = *(a1 + 8);
  sub_23EB8CCB8(__p, a2);
  v5 = sub_23EB8FC04(v4, __p, a3, 2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23EBB3DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB3E08(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    return sub_23EB8CB80(*(a1 + 8), a2, a3, 0);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t sub_23EBB3E20(uint64_t a1, char *a2, CFMutableDictionaryRef *a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = *(a1 + 8);
  sub_23EB8CCB8(__p, a2);
  v5 = sub_23EB912D0(v4, __p, a3, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23EBB3E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB3EA8(uint64_t a1, char *a2, CFMutableDictionaryRef *a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = *(a1 + 8);
  sub_23EB8CCB8(__p, a2);
  v5 = sub_23EB912D0(v4, __p, a3, 2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23EBB3F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB3F7C(uint64_t a1, int a2, void *a3)
{
  if (a1)
  {
    return sub_23EB89D74(*(a1 + 8), a2, a3, 0);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t sub_23EBB3F94(uint64_t a1, char *a2, void *a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = *(a1 + 8);
  sub_23EB8CCB8(__p, a2);
  v5 = sub_23EB97374(v4, __p, a3, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23EBB4000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB401C(uint64_t a1, int a2, _BYTE *a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v5 = 0;
  result = sub_23EB975E8(*(a1 + 8), a2, &v5, 0);
  *a3 = v5;
  return result;
}

uint64_t sub_23EBB4070(uint64_t a1, int a2, _BYTE *a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v5 = 0;
  result = sub_23EB975E8(*(a1 + 8), a2, &v5, 2);
  *a3 = v5;
  return result;
}

uint64_t sub_23EBB40C4(uint64_t a1, char *a2, _BYTE *a3)
{
  v3 = 4294960591;
  if (a1 && a3)
  {
    v9 = 0;
    v5 = *(a1 + 8);
    sub_23EB8CCB8(__p, a2);
    v3 = sub_23EB97588(v5, __p, &v9, 0);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    *a3 = v9;
  }

  return v3;
}

void sub_23EBB413C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef sub_23EBB415C(unsigned int a1)
{
  if (!a1)
  {
    return 0;
  }

  *bytes = bswap32(a1);
  return CFStringCreateWithBytes(*MEMORY[0x277CBECE8], bytes, 4, 0, 0);
}

uint64_t sub_23EBB41B0(uint64_t a1, const __CFArray **a2)
{
  if (a1)
  {
    return sub_23EB9B540(*(a1 + 8), a2);
  }

  else
  {
    return 4294960591;
  }
}

BOOL sub_23EBB41C4(_BOOL8 result)
{
  if (result)
  {
    return sub_23EB9B5C4(*(result + 8));
  }

  return result;
}

uint64_t sub_23EBB41D4(uint64_t result)
{
  if (result)
  {
    return sub_23EB89280(*(result + 8));
  }

  return result;
}

uint64_t sub_23EBB41E4(uint64_t result)
{
  if (result)
  {
    return sub_23EB9B624(*(result + 8));
  }

  return result;
}

uint64_t sub_23EBB41F4(uint64_t result, int a2)
{
  if (result)
  {
    return sub_23EB9B694(*(result + 8), a2 != 0);
  }

  return result;
}

uint64_t sub_23EBB420C(uint64_t a1, void *a2)
{
  if (a1)
  {
    return sub_23EB983A0(*(a1 + 8), a2);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t sub_23EBB4220(uint64_t a1, CFMutableDictionaryRef *a2)
{
  if (a1)
  {
    return sub_23EB985FC(*(a1 + 8), a2);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t sub_23EBB4234(uint64_t a1, CFMutableDictionaryRef *a2)
{
  if (a1)
  {
    return sub_23EB98680(*(a1 + 8), a2);
  }

  else
  {
    return 4294960591;
  }
}

BOOL sub_23EBB4248(_BOOL8 result, int a2)
{
  if (result)
  {
    return sub_23EB8BE08(*(result + 8), a2);
  }

  return result;
}

__CFArray *sub_23EBB426C(__CFArray *result)
{
  if (result)
  {
    return sub_23EB97BE0(*(result + 1));
  }

  return result;
}

BOOL sub_23EBB427C(_BOOL8 result, int a2, BOOL *a3)
{
  if (result)
  {
    return sub_23EBAD7C8(*(result + 8), a2, a3, 0);
  }

  return result;
}

uint64_t sub_23EBB4290(uint64_t result)
{
  if (result)
  {
    return sub_23EBAD6D0(*(result + 8));
  }

  return result;
}

uint64_t sub_23EBB42A0(uint64_t a1, int a2)
{
  if (a1)
  {
    return sub_23EBAD8D0(*(a1 + 8), a2);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t sub_23EBB42B4(uint64_t a1, int a2)
{
  if (a1)
  {
    return sub_23EBAD9D0(*(a1 + 8), a2);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t sub_23EBB42C8(uint64_t a1, int *a2, unint64_t a3, void *a4, void *a5)
{
  v7 = a2;
  *a4 = 0;
  *a5 = 0;
  if (a2)
  {
    if (a3 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = a3;
    }

    do
    {
      v10 = *v7++;
      result = sub_23EBCADF8(*(a1 + 8), v10, a4, a5);
      --v9;
    }

    while (v9);
  }

  else
  {
    do
    {
      result = sub_23EBCADF8(*(a1 + 8), *(dword_27E3822F8 + v7++), a4, a5);
    }

    while (v7 != 1200);
  }

  return result;
}

uint64_t sub_23EBB4360(uint64_t a1, const __CFString *theArray, __CFArray **a3)
{
  v41 = 0;
  v3 = 4294960591;
  if (!a1 || !a3)
  {
    return v3;
  }

  capacity = 0;
  if (theArray && (Count = CFArrayGetCount(theArray)) != 0)
  {
    v8 = Count;
    v9 = malloc_type_calloc(Count, 4uLL, 0x100004052888210uLL);
    v15 = v9;
    if (!v9)
    {
LABEL_42:
      v3 = 4294960568;
      goto LABEL_49;
    }

    v16 = 0;
    v17 = v9;
    do
    {
      sub_23EB6FF14(theArray, v17, "[*]:code", v10, v11, v12, v13, v14, v16);
      if (v18)
      {
        v3 = v18;
        goto LABEL_49;
      }

      ++v16;
      v17 += 4;
    }

    while (v8 != v16);
    sub_23EBB42C8(a1, v15, v8, &v41, &capacity);
    free(v15);
  }

  else
  {
    sub_23EBB42C8(a1, 0, 0, &v41, &capacity);
  }

  if (!capacity)
  {
    v15 = 0;
    v3 = 4294960569;
    goto LABEL_49;
  }

  v19 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], capacity, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v15 = 0;
    goto LABEL_42;
  }

  v21 = Mutable;
  if (!capacity)
  {
LABEL_40:
    v3 = 0;
    v15 = 0;
    *a3 = v21;
    goto LABEL_49;
  }

  v22 = 0;
  v23 = 4;
  while (1)
  {
    v24 = sub_23EBB415C(*(v41 + v23 - 4));
    v25 = sub_23EBB415C(*(v41 + v23));
    v31 = v25;
    if ((*(v41 + v23) - 1732604481) < 8)
    {
      v32 = v25;
      goto LABEL_20;
    }

    v33 = CFStringCreateWithFormat(v19, 0, @"vErr.%@", v25);
    if (!v33)
    {
      break;
    }

    v32 = v33;
    if (v31)
    {
      CFRelease(v31);
    }

LABEL_20:
    v34 = *(v41 + v23);
    if (v34 <= 1886741071)
    {
      v35 = v34 == 1849970259;
      v36 = 1869631063;
    }

    else
    {
      v35 = v34 == 1886741072 || v34 == 2002867022;
      v36 = 2002862918;
    }

    if (v35 || v34 == v36)
    {
      v38 = sub_23EB6FDFC(v19, v21, "{%kO=%O%kO=%O%kO=%C}", v26, v27, v28, v29, v30, @"kValidationErrorKey_BSSetting");
    }

    else
    {
      v38 = sub_23EB6FDFC(v19, v21, "{%kO=%O%kO=%O}", v26, v27, v28, v29, v30, @"kValidationErrorKey_BSSetting");
    }

    v3 = v38;
    if (v38)
    {
      v31 = v32;
      if (!v24)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    ++v22;
    v23 += 8;
    if (v22 >= capacity)
    {
      goto LABEL_40;
    }
  }

  v3 = 4294960568;
  if (v24)
  {
LABEL_45:
    CFRelease(v24);
  }

LABEL_46:
  if (v31)
  {
    CFRelease(v31);
  }

  CFRelease(v21);
  v15 = 0;
LABEL_49:
  if (v41)
  {
    free(v41);
    v41 = 0;
  }

  if (v15)
  {
    free(v15);
  }

  return v3;
}

uint64_t sub_23EBB469C(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  if (a1 && a3)
  {
    return sub_23EBD4674(*(a1 + 8), a2, a3, a4);
  }

  else
  {
    return 4294967292;
  }
}

uint64_t sub_23EBB46B4(int a1, int *a2)
{
  if ((byte_27E383440 & 1) == 0)
  {
    sub_23EBD45CC();
    byte_27E383440 = 1;
  }

  *a2 = 0;
  v4 = *(qword_27E383818 + 8);
  if (!v4)
  {
    return 4294967291;
  }

  v5 = qword_27E383818 + 8;
  do
  {
    if (*(v4 + 32) >= a1)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a1));
  }

  while (v4);
  if (v5 == qword_27E383818 + 8 || *(v5 + 32) > a1)
  {
    return 4294967291;
  }

  v7 = *(*(v5 + 40) + 8);
  result = 4294967291;
  if (v7 <= 6)
  {
    if (v7 <= 3)
    {
      if (v7 == 2)
      {
        v8 = 6;
        goto LABEL_41;
      }

      if (v7 != 3)
      {
        return result;
      }
    }

    else
    {
      if (v7 == 4)
      {
        v8 = 2;
        goto LABEL_41;
      }

      if (v7 == 5)
      {
        v8 = 3;
        goto LABEL_41;
      }
    }

    v8 = 1;
    goto LABEL_41;
  }

  if (v7 <= 10)
  {
    if (v7 == 7)
    {
      v8 = 4;
      goto LABEL_41;
    }

    if (v7 == 8)
    {
      v8 = 7;
      goto LABEL_41;
    }

    if (v7 != 9)
    {
      return result;
    }

    if (a1 > 1651722066)
    {
      if (a1 <= 1702261835)
      {
        if (a1 == 1651722067)
        {
          v8 = 13;
          goto LABEL_41;
        }

        if (a1 == 1651724371 || a1 == 1651725139)
        {
          v8 = 10;
          goto LABEL_41;
        }
      }

      else if (a1 > 1886547537)
      {
        if (a1 == 1886547538)
        {
          v8 = 17;
          goto LABEL_41;
        }

        if (a1 == 2003061875)
        {
          v8 = 16;
          goto LABEL_41;
        }
      }

      else
      {
        if (a1 == 1702261836)
        {
          v8 = 18;
          goto LABEL_41;
        }

        if (a1 == 1886213217)
        {
          v8 = 14;
LABEL_41:
          result = 0;
          *a2 = v8;
          return result;
        }
      }

      return result;
    }

    if (a1 > 1651722052)
    {
      if (a1 != 1651722053)
      {
        if (a1 == 1651722062)
        {
          goto LABEL_54;
        }

        v9 = 18256;
LABEL_53:
        if (a1 != (v9 | 0x62730000))
        {
          return result;
        }

LABEL_54:
        v8 = 12;
        goto LABEL_41;
      }
    }

    else
    {
      if (a1 == 1633899617)
      {
        v8 = 15;
        goto LABEL_41;
      }

      if (a1 != 1651722051)
      {
        v9 = 18244;
        goto LABEL_53;
      }
    }

    v8 = 11;
    goto LABEL_41;
  }

  switch(v7)
  {
    case 11:
      v8 = 5;
      goto LABEL_41;
    case 12:
      v8 = 8;
      goto LABEL_41;
    case 13:
      v8 = 9;
      goto LABEL_41;
  }

  return result;
}

uint64_t sub_23EBB4964(int a1, void *a2)
{
  if ((byte_27E383440 & 1) == 0)
  {
    sub_23EBD45CC();
    byte_27E383440 = 1;
  }

  if (!a2)
  {
    return 4294967291;
  }

  v4 = *(qword_27E383818 + 8);
  if (!v4)
  {
    return 4294967291;
  }

  v5 = qword_27E383818 + 8;
  do
  {
    if (*(v4 + 32) >= a1)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a1));
  }

  while (v4);
  if (v5 == qword_27E383818 + 8 || *(v5 + 32) > a1)
  {
    return 4294967291;
  }

  result = 0;
  *a2 = *(v5 + 40);
  return result;
}

uint64_t sub_23EBB4A04(int a1, _DWORD *a2)
{
  v5 = 0;
  result = 4294967292;
  if (a1)
  {
    if (a2)
    {
      result = sub_23EBB4964(a1, &v5);
      if (!result)
      {
        if (v5)
        {
          result = 0;
          *a2 = *(v5 + 12);
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EBB4A64(int a1)
{
  v2 = 0;
  sub_23EBB4A04(a1, &v2);
  return v2;
}

uint64_t sub_23EBB4A90(int a1, _DWORD *a2)
{
  v4 = 0;
  if (!a2)
  {
    return 4294967292;
  }

  result = sub_23EBB4964(a1, &v4);
  if (!result)
  {
    if (v4)
    {
      result = 0;
      *a2 = *(v4 + 32);
    }
  }

  return result;
}

BOOL sub_23EBB4AE8(_BOOL8 result, int a2)
{
  if (result)
  {
    v3 = result;
    return sub_23EB972F8(*(result + 8), a2) || sub_23EB97B0C(*(v3 + 8), a2);
  }

  return result;
}

uint64_t sub_23EBB4B34(uint64_t result)
{
  v1 = 0;
  if (result)
  {
    if (sub_23EBB4964(result, &v1) || !v1)
    {
      return 0;
    }

    else
    {
      return *(v1 + 20);
    }
  }

  return result;
}

uint64_t sub_23EBB4B78(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = 0;
  v25 = 0;
  v23 = 0;
  memset(&v22, 0, sizeof(v22));
  memset(&v21, 0, sizeof(v21));
  if (!a1)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 8);
  if (!v9)
  {
    v15 = 4294967279;
    goto LABEL_15;
  }

  if (!a2)
  {
LABEL_13:
    v15 = 4294967292;
    goto LABEL_15;
  }

  sub_23EB8CD70(v9, 0, a4, a5, a6, a7, a8, &__str);
  std::string::operator=(&v22, &__str);
  std::string::operator=(&v21, (*(a1 + 8) + 120));
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v22;
  }

  else
  {
    v12 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v21;
  }

  else
  {
    v13 = v21.__r_.__value_.__r.__words[0];
  }

  v14 = sub_23EB4CE60(*(a1 + 16), 4, 60000, v12, v13, a2, &v25, &v24);
  v15 = v14;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (v15)
    {
      goto LABEL_15;
    }
  }

  else if (v14)
  {
    goto LABEL_15;
  }

  if (v25)
  {
    if (v24)
    {
      v15 = sub_23EB4EBC4(a2, v25, v24, 1, &v23);
      if (!v15)
      {
        if (a4)
        {
          v19 = 0;
          __str.__r_.__value_.__r.__words[0] = 0;
          v17 = sub_23EB92884(*(a1 + 8), a2, &__str, &v19);
          v18 = __str.__r_.__value_.__r.__words[0];
          if (v17 || !__str.__r_.__value_.__r.__words[0])
          {
            if (v17 == -5 || v17 == -6727)
            {
              *a4 = 1;
            }
          }

          else
          {
            *a4 = CFEqual(__str.__r_.__value_.__l.__data_, v23) == 0;
            v18 = __str.__r_.__value_.__r.__words[0];
          }

          if (v19 == 1 && v18)
          {
            CFRelease(v18);
          }
        }

        v15 = sub_23EB8C09C(*(a1 + 8), a2, v23, 2);
        if (!v15)
        {
          CFRelease(v23);
          v23 = 0;
          v15 = sub_23EB8A18C(*(a1 + 8), a2, 0, 1);
        }
      }
    }
  }

LABEL_15:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v25)
  {
    free(v25);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_23EBB4D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB4E28(uint64_t a1, const char *a2)
{
  v10 = 0;
  result = 4294967292;
  if (a1 && a2 && *a2)
  {
    v4 = sub_23EB9AC64(a2);
    if (sub_23EB8F5B4(v4) && sub_23EB8BE08(*(a1 + 8), 2003390540))
    {
      v4 = 1466517097;
    }

    result = sub_23EBB4964(v4, &v10);
    if (!result)
    {
      if (*(v10 + 4))
      {
        result = sub_23EBB4AE8(a1, v4);
        if (result)
        {
          return sub_23EBB4B78(a1, *(v10 + 4), v5, 0, v6, v7, v8, v9);
        }
      }

      else
      {
        return 4294967291;
      }
    }
  }

  return result;
}

uint64_t sub_23EBB4EE8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, sizeof(v16));
  v8 = 4294967292;
  if (a1 && a2)
  {
    sub_23EB8CD70(*(a1 + 8), 0, a4, a5, a6, a7, a8, &__str);
    std::string::operator=(&v17, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v16, (*(a1 + 8) + 120));
    v19 = 0;
    v18 = a2;
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v17;
    }

    else
    {
      v12 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v16;
    }

    else
    {
      v13 = v16.__r_.__value_.__r.__words[0];
    }

    v8 = sub_23EB4DBF8(*(a1 + 16), 0, 60000, v12, v13, 1, &v18, v11);
    if (!v8)
    {
      if (a2 == 1633899078)
      {
        sub_23EB98168(*(a1 + 8));
      }

      v8 = 0;
    }
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBB5004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB504C(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v31, 0, sizeof(v31));
  memset(&v30, 0, sizeof(v30));
  v28 = 0;
  v29 = 0;
  __p = 0;
  v27 = 0;
  v25 = 0;
  if (!a1)
  {
    goto LABEL_8;
  }

  sub_23EB8CD70(*(a1 + 8), 0, a4, a5, a6, a7, a8, &__str);
  std::string::operator=(&v31, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0 && !v31.__r_.__value_.__r.__words[0] || (std::string::operator=(&v30, (*(a1 + 8) + 120)), SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0) && !v30.__r_.__value_.__r.__words[0])
  {
LABEL_8:
    v11 = 4294967292;
    goto LABEL_9;
  }

  v11 = sub_23EB4BCE8(a2, a3, &v29 + 1, 0, 0, &v25, 0, 0, 0);
  if (v11)
  {
    goto LABEL_9;
  }

  v11 = sub_23EB89D74(*(a1 + 8), 1937326416, &v29, 0);
  if (v11)
  {
    goto LABEL_9;
  }

  if (v29 != HIDWORD(v29))
  {
    goto LABEL_44;
  }

  if (!sub_23EB8BD6C(*(a1 + 8), 1835626067, &__p, 0))
  {
    v21 = SHIBYTE(v28);
    if ((SHIBYTE(v28) & 0x8000000000000000) != 0)
    {
      v21 = v27;
      if (!v27)
      {
        goto LABEL_20;
      }

      p_p = __p;
    }

    else
    {
      if (!HIBYTE(v28))
      {
        goto LABEL_20;
      }

      p_p = &__p;
    }

    v23 = sub_23EB7EE20(p_p, v21);
    if (v23)
    {
      if (v25 < v23)
      {
LABEL_44:
        v11 = 4294967277;
        goto LABEL_9;
      }
    }
  }

LABEL_20:
  v14 = sub_23EB8BE08(*(a1 + 8), 1634104688);
  v15 = *(a1 + 16);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v31;
  }

  else
  {
    v16 = v31.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v30;
  }

  else
  {
    v17 = v30.__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    v11 = sub_23EB4D354(v15, 4, 60000, v16, v17, 1718973808, a2, a3);
    if (v11)
    {
      goto LABEL_9;
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v31;
    }

    else
    {
      v18 = v31.__r_.__value_.__r.__words[0];
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v30;
    }

    else
    {
      v19 = v30.__r_.__value_.__r.__words[0];
    }

    v20 = sub_23EB4D354(*(a1 + 16), 4, 60000, v18, v19, 1718973300, 0, 0);
  }

  else
  {
    v20 = sub_23EB4D7D0(v15, 2, 60000, v16, v17, a3, a2, v13);
  }

  v11 = v20;
LABEL_9:
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_23EBB52BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v30 - 33) < 0)
  {
    operator delete(*(v30 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB5318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  memset(&v20, 0, sizeof(v20));
  memset(&v19, 0, sizeof(v19));
  v8 = 4294967292;
  if (a1 && a2 && a3)
  {
    v11 = a4;
    sub_23EB8CD70(*(a1 + 8), 0, a4, a5, a6, a7, a8, &__str);
    std::string::operator=(&v20, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v19, (*(a1 + 8) + 120));
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v20;
    }

    else
    {
      v13 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v19;
    }

    else
    {
      v14 = v19.__r_.__value_.__r.__words[0];
    }

    v8 = sub_23EB4CE60(*(a1 + 16), v11, 60000, v13, v14, 1718970224, &v22, &v21);
    if (!v8)
    {
      v16 = v21;
      v15 = v22;
      memcpy(__dst, v22, v21);
      __dst[v16] = 0;
      free(v15);
      if (sscanf(__dst, "%u/%u", a2, a3) == 2)
      {
        v8 = 0;
      }

      else
      {
        v8 = 4294967270;
      }
    }
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBB54A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB54E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = 0;
  memset(&v16, 0, sizeof(v16));
  memset(&v15, 0, sizeof(v15));
  v8 = 4294967292;
  if (a1 && a2)
  {
    sub_23EB8CD70(*(a1 + 8), 0, a4, a5, a6, a7, a8, &__p);
    std::string::operator=(&v16, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v15, (*(a1 + 8) + 120));
    v17 = 0;
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v16;
    }

    else
    {
      v11 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v15;
    }

    else
    {
      v12 = v15.__r_.__value_.__r.__words[0];
    }

    v8 = sub_23EB4DD6C(*(a1 + 16), 4u, 60000, v11, v12, &v17, @"acpd.system.interfaces", "", __p.__r_.__value_.__l.__data_);
    *a2 = v17;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBB55F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB5640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v15, 0, sizeof(v15));
  memset(&v14, 0, sizeof(v14));
  if (a1)
  {
    sub_23EB8CD70(*(a1 + 8), 0, a4, a5, a6, a7, a8, &__str);
    std::string::operator=(&v15, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v14, (*(a1 + 8) + 120));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v15;
    }

    else
    {
      v9 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v14;
    }

    else
    {
      v10 = v14.__r_.__value_.__r.__words[0];
    }

    v11 = sub_23EB4DD6C(*(a1 + 16), 4u, 60000, v9, v10, 0, @"wsc.start", "%kO=%i%kO=%i%kO=%i%kO=%i", @"mode");
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v11 = 4294967292;
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_23EBB5784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 49) < 0)
  {
    operator delete(*(v29 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB57CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v16, 0, sizeof(v16));
  memset(&v15, 0, sizeof(v15));
  if (a1)
  {
    sub_23EB8CD70(*(a1 + 8), 0, a4, a5, a6, a7, a8, &__str);
    std::string::operator=(&v16, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v15, (*(a1 + 8) + 120));
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v16;
    }

    else
    {
      v9 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v15;
    }

    else
    {
      v10 = v15.__r_.__value_.__r.__words[0];
    }

    v11 = sub_23EB4DD6C(*(a1 + 16), 4u, 60000, v9, v10, 0, @"wsc.stop", "", v13);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v11 = 4294967292;
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_23EBB58C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}