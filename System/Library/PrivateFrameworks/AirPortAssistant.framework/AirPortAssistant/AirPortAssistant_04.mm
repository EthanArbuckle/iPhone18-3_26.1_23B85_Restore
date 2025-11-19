void sub_23EB9D5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9D5D0(uint64_t a1)
{
  sub_23EB8CCB8(&__p, "WiFi.radios.[*].");
  v6 = 0;
  sub_23EB8FB78(&__p, 1651723853, &__p);
  v2 = 0;
  if (!sub_23EB97374(a1, &__p, &v6, 0) && v6 == 1)
  {
    if (sub_23EB8BE08(a1, 1884509249))
    {
      v5 = 0;
      sub_23EB8FB78(&__p, 1651724357, &__p);
      v3 = sub_23EB97588(a1, &__p, &v5, 0) == 0;
      v2 = v3 && !v5;
    }

    else
    {
      v2 = 1;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_23EB9D6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9D6D8(uint64_t a1, const __CFString *a2, const std::string *a3, int a4, std::string *a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v61 = 0;
  v62 = 0;
  memset(&__p, 0, sizeof(__p));
  v59 = 0;
  value = 0;
  size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (size >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = a3->__r_.__value_.__r.__words[0];
  }

  if (size < 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (size < 8)
  {
LABEL_11:
    v14 = 4294967292;
    goto LABEL_12;
  }

  v11 = v6 + size;
  v12 = v6;
  while (1)
  {
    v13 = memchr(v12, 118, size - 7);
    if (!v13)
    {
      goto LABEL_11;
    }

    if (*v13 == 0x5D2A5B2E73706176)
    {
      break;
    }

    v12 = (v13 + 1);
    size = v11 - v12;
    if (v11 - v12 < 8)
    {
      goto LABEL_11;
    }
  }

  if (v13 == v11)
  {
    v16 = -1;
  }

  else
  {
    v16 = v13 - v6;
  }

  v14 = 4294967292;
  if (a2 && v16 != -1)
  {
    std::string::basic_string(&v57, a3, 0, v16, &v63);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v57;
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = SHIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v57.__r_.__value_.__l.__size_;
    }

    v19 = p_p + v18;
    if (v18 >= 1)
    {
      v20 = p_p;
      do
      {
        v21 = memchr(v20, 46, v18);
        if (!v21)
        {
          break;
        }

        if (*v21 == 46)
        {
          goto LABEL_34;
        }

        v20 = (v21 + 1);
        v18 = v19 - v20;
      }

      while (v19 - v20 > 0);
    }

    v21 = v19;
LABEL_34:
    if (v21 == v19)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21 - p_p + 1;
    }

    std::string::basic_string(&v57, &__p, v22, 0xFFFFFFFFFFFFFFFFLL, &v63);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v57;
    v28 = (v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : v57.__r_.__value_.__r.__words[0];
    sub_23EB6FF14(a2, &v62, v28, v23, v24, v25, v26, v27, v56);
    v14 = v34;
    if (!v34)
    {
      sub_23EB6FF14(v62, &v61, "%kO", v29, v30, v31, v32, v33, @"vaps");
      if ((a4 & 1) != 0 || (v14 = v35, !v35))
      {
        if (v61)
        {
          Count = CFArrayGetCount(v61);
          if (Count >= 1)
          {
            v47 = 0;
            while (1)
            {
              sub_23EB6FF14(v61, &v59, "[*].%kO:int", v41, v42, v43, v44, v45, v47);
              v14 = v48;
              if (v48)
              {
                goto LABEL_12;
              }

              if (v59 == 6)
              {
                value = CFArrayGetValueAtIndex(v61, v47);
                if (!value)
                {
                  goto LABEL_55;
                }

                goto LABEL_60;
              }

              if (Count == ++v47)
              {
                v47 = Count;
                goto LABEL_55;
              }
            }
          }

          v47 = 0;
LABEL_55:
          if (!a4)
          {
            v14 = 4294967291;
            goto LABEL_12;
          }

          v14 = sub_23EB6F348(*MEMORY[0x277CBECE8], &value, "{%kO=%b%kO=%i%kO=%O%kO=%i%kO=%b}", v41, v42, v43, v44, v45, @"Enabled");
          if (v14)
          {
            goto LABEL_12;
          }

          CFArrayAppendValue(v61, value);
          CFRelease(value);
        }

        else
        {
          v14 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v61, "[{%kO=%b%kO=%i%kO=%O%kO=%i%kO=%b}]", v36, v37, v38, v39, v40, @"Enabled");
          if (v14)
          {
            goto LABEL_12;
          }

          CFDictionarySetValue(v62, @"vaps", v61);
          CFRelease(v61);
          v47 = 0;
        }

LABEL_60:
        snprintf(__str, 0x20uLL, "%ld", v47);
        v49 = SHIBYTE(a5->__r_.__value_.__r.__words[2]);
        if (v49 >= 0)
        {
          v50 = a5;
        }

        else
        {
          v50 = a5->__r_.__value_.__r.__words[0];
        }

        if (v49 >= 0)
        {
          v51 = SHIBYTE(a5->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v51 = a5->__r_.__value_.__l.__size_;
        }

        v52 = v50 + v51;
        if (v51 >= 1)
        {
          v53 = v50;
          do
          {
            v54 = memchr(v53, 42, v51);
            if (!v54)
            {
              break;
            }

            if (*v54 == 42)
            {
              goto LABEL_72;
            }

            v53 = (v54 + 1);
            v51 = v52 - v53;
          }

          while (v52 - v53 > 0);
        }

        v54 = v52;
LABEL_72:
        if (v54 == v52)
        {
          v55 = -1;
        }

        else
        {
          v55 = v54 - v50;
        }

        std::string::replace(a5, v55, 1uLL, __str);
        v14 = 0;
      }
    }
  }

LABEL_12:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_23EB9DB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9DB70(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (*(a1 + 143) < 0)
  {
    sub_23EBADCE0(__p, *(a1 + 120), *(a1 + 128));
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *__p = *(a1 + 120);
    v18 = *(a1 + 136);
    if (a3)
    {
LABEL_3:
      v6 = *MEMORY[0x277CBECE8];
      if (v18 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v7, 0x8000100u);
      *a3 = v8;
      if (v8)
      {
        if (*(a2 + 23) >= 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = *a2;
        }

        v15 = sub_23EB6FDFC(v6, *(a1 + 48), "%ks=%O", v9, v10, v11, v12, v13, v14);
        CFRelease(*a3);
      }

      else
      {
        v15 = 4294960568;
      }

      goto LABEL_14;
    }
  }

  v15 = 4294967292;
LABEL_14:
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

void sub_23EB9DC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9DC80(std::string *a1, uint64_t a2, const __CFString *a3)
{
  v8 = 0;
  v7 = 0;
  v4 = sub_23EB70FE4(a3, &v8, &v7);
  if (!v4)
  {
    sub_23EB8CCB8(&__str, v8);
    std::string::operator=(a1 + 5, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if (v7)
  {
    free(v7);
  }

  return v4;
}

void sub_23EB9DD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9DD20(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  result = 0;
  if (*(a1 + 372))
  {
    v5 = MEMORY[0x277CBED28];
  }

  else
  {
    v5 = MEMORY[0x277CBED10];
  }

  *a3 = *v5;
  return result;
}

uint64_t sub_23EB9DD5C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v4 = sub_23EB97EAC(a1);
  result = 0;
  if (v4)
  {
    v6 = MEMORY[0x277CBED28];
  }

  else
  {
    v6 = MEMORY[0x277CBED10];
  }

  *a3 = *v6;
  return result;
}

uint64_t sub_23EB9DDB8(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  memset(&v29, 0, sizeof(v29));
  v28 = 0;
  cf = 0;
  memset(&v26, 0, sizeof(v26));
  if (!a3)
  {
    v9 = 4294967292;
    goto LABEL_10;
  }

  sub_23EB8CCB8(__p, "raWM");
  sub_23EB90814(a2, __p, &v29);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_23EB97374(a1, &v29, &v28, a4);
  v9 = v8;
  if ((a4 != 1 || v8 != -5) && !v8)
  {
    if ((v28 - 1) > 1)
    {
      if ((v28 - 3) <= 5)
      {
        sub_23EB8CCB8(__p, "raCr");
        sub_23EB90814(a2, __p, &v29);
        if (v31 < 0)
        {
          operator delete(__p[0]);
        }

        *(a1 + 386) = 1;
        v14 = sub_23EB97710(a1, &v29, &v26, a4);
        v9 = v14;
        *(a1 + 386) = 0;
        if (v14 != -5)
        {
          if (v14)
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {
      sub_23EB8CCB8(__p, "raWE");
      sub_23EB90814(a2, __p, &v29);
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = sub_23EB912D0(a1, &v29, &cf, a4);
      if (v9)
      {
        goto LABEL_7;
      }

      BytePtr = CFDataGetBytePtr(cf);
      for (i = CFDataGetLength(cf); i; --i)
      {
        v13 = *BytePtr++;
        snprintf(__p, 0x20uLL, "%.2X", v13);
        v25 = 2;
        *__s = __p[0];
        __s[2] = 0;
        std::string::append(&v26, __s, 2uLL);
        if (v25 < 0)
        {
          operator delete(*__s);
        }
      }
    }

    v15 = *MEMORY[0x277CBECE8];
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v26;
    }

    else
    {
      v16 = v26.__r_.__value_.__r.__words[0];
    }

    v17 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v16, 0x8000100u);
    *a3 = v17;
    if (v17)
    {
      if (*(a2 + 23) >= 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = *a2;
      }

      v9 = sub_23EB6FDFC(v15, *(a1 + 48), "%ks=%O", v18, v19, v20, v21, v22, v23);
      CFRelease(*a3);
    }

    else
    {
      v9 = 4294960568;
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_10:
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EB9E09C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9E110(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_23EBADCE0(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
  }

  v28 = 0;
  v26 = 0;
  v27 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  cf = 0;
  if (a3)
  {
    v7 = sub_23EB70FE4(a3, &v27, &v26);
    if (v7)
    {
      goto LABEL_51;
    }

    MEMORY[0x23EF1EFD0](&v23, v27);
  }

  else
  {
    LOBYTE(v23) = 0;
    HIBYTE(v25) = 0;
  }

  sub_23EB8CCB8(__p, "raCr");
  sub_23EB90814(&__dst, __p, &__dst);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 386) = 1;
  v7 = sub_23EB97710(a1, &__dst, &v20, a4);
  *(a1 + 386) = 0;
  if (!v7)
  {
    if (v22 >= 0)
    {
      v8 = HIBYTE(v22);
    }

    else
    {
      v8 = v21;
    }

    v9 = HIBYTE(v25);
    if (v25 < 0)
    {
      v9 = v24;
    }

    if (v8 == v9)
    {
      v10 = v22 >= 0 ? &v20 : v20;
      v11 = v25 >= 0 ? &v23 : v23;
      if (!memcmp(v10, v11, v8))
      {
        v7 = 0;
        goto LABEL_51;
      }
    }

    sub_23EB8CCB8(__p, "raWM");
    sub_23EB90814(&__dst, __p, &__dst);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB97374(a1, &__dst, &v28, a4);
    if (!v7)
    {
      v12 = HIBYTE(v25);
      if (v25 < 0)
      {
        v12 = v24;
      }

      if (v12)
      {
        if (!sub_23EB9B750(a1, &__dst, &v23, v28, &v17))
        {
          sub_23EB8CCB8(__p, "raCr");
          sub_23EB90814(&__dst, __p, &__dst);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }

          *(a1 + 386) = 1;
          sub_23EB8CCB8(__p, "");
          v7 = sub_23EB97684(a1, &__dst, __p, a4);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_50;
        }

        v7 = sub_23EB4EBC4(1918981957, v17, v18 - v17, 1, &cf);
        if (!v7)
        {
          sub_23EB8CCB8(__p, "raWE");
          sub_23EB90814(&__dst, __p, &__dst);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }

          v7 = sub_23EB8FC04(a1, &__dst, cf, a4);
          if (!v7)
          {
            if ((v28 - 3) >= 6)
            {
              MEMORY[0x23EF1EFD0](&v23, "");
            }

LABEL_43:
            sub_23EB8CCB8(__p, "raCr");
            sub_23EB90814(&__dst, __p, &__dst);
            if (v15 < 0)
            {
              operator delete(__p[0]);
            }

            *(a1 + 386) = 1;
            v7 = sub_23EB97684(a1, &__dst, &v23, a4);
LABEL_50:
            *(a1 + 386) = 0;
          }
        }
      }

      else
      {
        v7 = sub_23EB4EBC4(1918981957, 0, 0, 1, &cf);
        if (!v7)
        {
          sub_23EB8CCB8(__p, "raWE");
          sub_23EB90814(&__dst, __p, &__dst);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }

          v7 = sub_23EB8FC04(a1, &__dst, cf, a4);
          if (!v7)
          {
            goto LABEL_43;
          }
        }
      }
    }
  }

LABEL_51:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    free(v26);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EB9E54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9E5EC(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_23EBADCE0(&__dst, *a2, *(a2 + 8));
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = 4294967292;
    goto LABEL_8;
  }

  __dst = *a2;
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_23EB8CCB8(__p, "raNm");
  sub_23EB90814(&__dst, __p, &__dst);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 386) = 1;
  v7 = sub_23EB94960(a1, &__dst, a3, a4);
  *(a1 + 386) = 0;
LABEL_8:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EB9E6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9E6FC(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_23EBADCE0(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
  }

  v16 = 0;
  v14 = 0;
  cf = 0;
  v12 = 0;
  v13 = 0;
  sub_23EB8CCB8(__p, "raNm");
  sub_23EB90814(&__dst, __p, &__dst);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB912D0(a1, &__dst, &cf, a4);
  if (!v7)
  {
    if (!cf)
    {
      v7 = 4294967291;
      goto LABEL_28;
    }

    *(a1 + 386) = 1;
    v7 = sub_23EB8FC04(a1, &__dst, a3, a4);
    *(a1 + 386) = 0;
    if (!v7)
    {
      sub_23EB8CCB8(__p, "raWM");
      sub_23EB90814(&__dst, __p, &__dst);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      v7 = sub_23EB97374(a1, &__dst, &v16, a4);
      if (!v7 && a3 && (v16 - 3) <= 5)
      {
        if (CFStringCompare(a3, cf, 0) == kCFCompareEqualTo)
        {
          goto LABEL_33;
        }

        sub_23EB8CCB8(__p, "raCr");
        sub_23EB90814(&__dst, __p, &__dst);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        *(a1 + 386) = 1;
        v7 = sub_23EB97710(a1, &__dst, &v12, a4);
        *(a1 + 386) = 0;
        if (v7)
        {
          goto LABEL_7;
        }

        v8 = HIBYTE(v14);
        if (v14 < 0)
        {
          v8 = v13;
        }

        if (v8)
        {
          *(a1 + 386) = 1;
          sub_23EB8CCB8(__p, "");
          v7 = sub_23EB97684(a1, &__dst, __p, a4);
          if (v11 < 0)
          {
            operator delete(__p[0]);
          }

          *(a1 + 386) = 0;
          if (!v7)
          {
            sub_23EB8FB78(&__dst, 1651725131, &__dst);
            v7 = sub_23EB97684(a1, &__dst, &v12, a4);
          }
        }

        else
        {
LABEL_33:
          v7 = 0;
        }
      }
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_28:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v12);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EB9E988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9E9E8(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&v27, 0, sizeof(v27));
  v8 = sub_23EB8BE08(a1, 1095062317);
  valuePtr = 0;
  v25 = 0;
  if (a3)
  {
    v9 = v8;
    sub_23EB8CCB8(__p, "raEA");
    sub_23EB90814(a2, __p, &v27);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = sub_23EB97588(a1, &v27, &v25, a4);
    v11 = v10;
    if ((a4 != 1 || v10 != -5) && !v10)
    {
      sub_23EB8CCB8(__p, "raWM");
      sub_23EB90814(a2, __p, &v27);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      v11 = sub_23EB97374(a1, &v27, &valuePtr + 4, a4);
      if (!v11)
      {
        if (SHIDWORD(valuePtr) <= 2)
        {
          if (HIDWORD(valuePtr))
          {
            if (HIDWORD(valuePtr) == 1)
            {
              v12 = 2;
            }

            else
            {
              if (HIDWORD(valuePtr) != 2)
              {
                goto LABEL_44;
              }

              v12 = 3;
            }
          }

          else
          {
            v12 = 1;
          }

          goto LABEL_43;
        }

        if (HIDWORD(valuePtr) == 3)
        {
          if (v9)
          {
            if (v25)
            {
              v12 = 11;
            }

            else
            {
              v12 = 6;
            }
          }

          else if (v25)
          {
            v12 = 9;
          }

          else
          {
            v12 = 4;
          }

          goto LABEL_43;
        }

        if (HIDWORD(valuePtr) != 4)
        {
          if (HIDWORD(valuePtr) != 5)
          {
            goto LABEL_44;
          }

          if (v25)
          {
            v12 = 12;
          }

          else
          {
            v12 = 7;
          }

LABEL_43:
          LODWORD(valuePtr) = v12;
LABEL_44:
          v14 = *MEMORY[0x277CBECE8];
          v15 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
          *a3 = v15;
          if (v15)
          {
            if (*(a2 + 23) >= 0)
            {
              v21 = a2;
            }

            else
            {
              v21 = *a2;
            }

            v11 = sub_23EB6FDFC(v14, *(a1 + 48), "%ks=%O", v16, v17, v18, v19, v20, v21);
            CFRelease(*a3);
          }

          else
          {
            v11 = 4294960568;
          }

          goto LABEL_16;
        }

        v22 = 0;
        sub_23EB8CCB8(__p, "rTSN");
        sub_23EB90814(a2, __p, &v27);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        if (!sub_23EB8BE08(a1, 1414745645) || (v11 = sub_23EB97588(a1, &v27, &v22, a4), !v11))
        {
          if (v25)
          {
            v12 = 10;
          }

          else if (v22)
          {
            v12 = 8;
          }

          else
          {
            v12 = 5;
          }

          goto LABEL_43;
        }
      }
    }
  }

  else
  {
    v11 = 4294967292;
  }

LABEL_16:
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_23EB9ECA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9ECF0(uint64_t a1, uint64_t a2, const __CFNumber *a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_23EBADCE0(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
  }

  v7 = sub_23EB8BE08(a1, 1095062317);
  valuePtr = 0;
  if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr + 4))
  {
    v8 = 4294960553;
    goto LABEL_38;
  }

  v8 = 4294967292;
  if (SHIDWORD(valuePtr) <= 3)
  {
    switch(HIDWORD(valuePtr))
    {
      case 1:
        sub_23EB8CCB8(__p, "raWM");
        sub_23EB90814(&__dst, __p, &__dst);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        v10 = sub_23EB906B8(a1, &__dst, 0, a4);
        break;
      case 2:
        sub_23EB8CCB8(__p, "raWM");
        sub_23EB90814(&__dst, __p, &__dst);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        v10 = sub_23EB906B8(a1, &__dst, 1, a4);
        break;
      case 3:
        sub_23EB8CCB8(__p, "raWM");
        sub_23EB90814(&__dst, __p, &__dst);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        v10 = sub_23EB906B8(a1, &__dst, 2, a4);
        break;
      default:
        goto LABEL_38;
    }
  }

  else
  {
    if (HIDWORD(valuePtr) > 0xC)
    {
      goto LABEL_38;
    }

    if (((1 << SBYTE4(valuePtr)) & 0xA50) != 0)
    {
      sub_23EB8CCB8(__p, "raWM");
      sub_23EB90814(&__dst, __p, &__dst);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = sub_23EB906B8(a1, &__dst, 3, a4);
    }

    else
    {
      if (((1 << SBYTE4(valuePtr)) & 0x520) != 0)
      {
        sub_23EB8CCB8(__p, "raWM");
        sub_23EB90814(&__dst, __p, &__dst);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        if (v7)
        {
          v9 = 4;
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        if (((1 << SBYTE4(valuePtr)) & 0x1080) == 0)
        {
          goto LABEL_38;
        }

        sub_23EB8CCB8(__p, "raWM");
        sub_23EB90814(&__dst, __p, &__dst);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        if (v7)
        {
          v9 = 5;
        }

        else
        {
          v9 = 3;
        }
      }

      v10 = sub_23EB906B8(a1, &__dst, v9, a4);
    }
  }

  v8 = v10;
  if (!v10)
  {
    if (SHIDWORD(valuePtr) > 8)
    {
      sub_23EB8CCB8(__p, "raEA");
      sub_23EB90814(&__dst, __p, &__dst);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = sub_23EB8FC04(a1, &__dst, *MEMORY[0x277CBED28], a4);
      if (v8)
      {
        goto LABEL_38;
      }

      sub_23EB8CCB8(__p, "acEn");
      sub_23EB90814(&__dst, __p, &__dst);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = *MEMORY[0x277CBED10];
      v8 = sub_23EB8FC04(a1, &__dst, *MEMORY[0x277CBED10], a4);
      if (v8)
      {
        goto LABEL_38;
      }

      sub_23EB8CCB8(__p, "raFl");
      sub_23EB90814(&__dst, __p, &__dst);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = sub_23EB906B8(a1, &__dst, 0, a4);
      if (v8)
      {
        goto LABEL_38;
      }

      sub_23EB8CCB8(__p, "raF2");
      sub_23EB90814(&__dst, __p, &__dst);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v13 = sub_23EB906B8(a1, &__dst, 0, a4);
    }

    else
    {
      sub_23EB8CCB8(__p, "raEA");
      sub_23EB90814(&__dst, __p, &__dst);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = *MEMORY[0x277CBED10];
      v13 = sub_23EB8FC04(a1, &__dst, *MEMORY[0x277CBED10], a4);
    }

    v8 = v13;
    if (!v13)
    {
      if (!sub_23EB8BE08(a1, 1414745645))
      {
        goto LABEL_53;
      }

      sub_23EB8CCB8(__p, "rTSN");
      sub_23EB90814(&__dst, __p, &__dst);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v14 = (HIDWORD(valuePtr) == 8 ? *MEMORY[0x277CBED28] : v12);
      v8 = sub_23EB8FC04(a1, &__dst, v14, a4);
      if (!v8)
      {
LABEL_53:
        sub_23EB8CCB8(__p, "raKT");
        sub_23EB90814(&__dst, __p, &__dst);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        v8 = sub_23EB97374(a1, &__dst, &valuePtr, a4);
        if (!v8 && SHIDWORD(valuePtr) >= 4 && !valuePtr)
        {
          sub_23EB8CCB8(__p, "raKT");
          sub_23EB90814(&__dst, __p, &__dst);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }

          v8 = sub_23EB906B8(a1, &__dst, 3600, a4);
        }
      }
    }
  }

LABEL_38:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EB9F28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9F330(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&v23, 0, sizeof(v23));
  valuePtr = 1000;
  if (a3)
  {
    sub_23EB8CCB8(__p, "raCA");
    sub_23EB90814(a2, __p, &v23);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v22 = 0;
    v8 = sub_23EB97588(a1, &v23, &v22, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      if (v22)
      {
        goto LABEL_11;
      }

      sub_23EB8CCB8(__p, "raCh");
      sub_23EB90814(a2, __p, &v23);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = sub_23EB97374(a1, &v23, &valuePtr, a4);
      if (!v9)
      {
LABEL_11:
        v10 = *MEMORY[0x277CBECE8];
        v11 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
        *a3 = v11;
        if (v11)
        {
          if (*(a2 + 23) >= 0)
          {
            v17 = a2;
          }

          else
          {
            v17 = *a2;
          }

          v9 = sub_23EB6FDFC(v10, *(a1 + 48), "%ks=%O", v12, v13, v14, v15, v16, v17);
          CFRelease(*a3);
        }

        else
        {
          v9 = 4294960568;
        }
      }
    }
  }

  else
  {
    v9 = 4294967292;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EB9F4B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9F4F8(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  v4 = a4;
  v41 = *MEMORY[0x277D85DE8];
  memset(&v38, 0, sizeof(v38));
  valuePtr = 0;
  theArray = 0;
  if (number)
  {
    if (!CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
    {
      v7 = 4294960553;
      goto LABEL_78;
    }

    v7 = valuePtr;
    switch(valuePtr)
    {
      case 0u:
        goto LABEL_78;
      case 0x3E8u:
        sub_23EB8CCB8(__p, "raCA");
        sub_23EB90814(a2, __p, &v38);
        if (v40 < 0)
        {
          operator delete(__p[0]);
        }

        v32 = MEMORY[0x277CBED28];
        goto LABEL_76;
      case 0x7D0u:
        v8 = sub_23EB9C218(a1, v4);
        if (v8)
        {
          goto LABEL_10;
        }

        MEMORY[0x23EF1EFD0](&v38, "WiFi.radios.[*].");
        sub_23EB8CCB8(__p, "raCA");
        sub_23EB90814(&v38, __p, &v38);
        if (v40 < 0)
        {
          operator delete(__p[0]);
        }

        v7 = sub_23EB8FC04(a1, &v38, *MEMORY[0x277CBED10], v4);
        if (!v7)
        {
LABEL_10:
          v9 = sub_23EB8F428(a1, 0);
          v35 = 0;
          if (v9 < 1)
          {
LABEL_83:
            v7 = 0;
          }

          else
          {
            v10 = 0;
            v11 = "WiFi.radios.[*].";
            while (1)
            {
              MEMORY[0x23EF1EFD0](&v38, v11);
              sub_23EB8FB78(&v38, 1651724867, &v38);
              snprintf(__p, 0x10uLL, "%ld", v10);
              if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v12 = &v38;
              }

              else
              {
                v12 = v38.__r_.__value_.__r.__words[0];
              }

              if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = SHIBYTE(v38.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v38.__r_.__value_.__l.__size_;
              }

              v14 = v12 + size;
              if (size >= 1)
              {
                v15 = v12;
                do
                {
                  v16 = memchr(v15, 42, size);
                  if (!v16)
                  {
                    break;
                  }

                  if (*v16 == 42)
                  {
                    goto LABEL_24;
                  }

                  v15 = (v16 + 1);
                  size = v14 - v15;
                }

                while (v14 - v15 > 0);
              }

              v16 = v14;
LABEL_24:
              v17 = v16 == v14 ? -1 : v16 - v12;
              std::string::replace(&v38, v17, 1uLL, __p);
              v7 = sub_23EB97374(a1, &v38, &v35, 0);
              if (v7)
              {
                break;
              }

              if (!sub_23EB90740(a1, &v38, v35, 1))
              {
                if (!v8)
                {
                  v22 = v11;
                  v34 = 0;
                  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v23 = &v38;
                  }

                  else
                  {
                    v23 = v38.__r_.__value_.__r.__words[0];
                  }

                  v7 = sub_23EBD4674(a1, v23, &theArray, 1);
                  if (v7)
                  {
                    goto LABEL_78;
                  }

                  if (!theArray)
                  {
                    v7 = 4294967293;
                    goto LABEL_78;
                  }

                  Count = CFArrayGetCount(theArray);
                  if (Count >= 1)
                  {
                    v26 = 0;
                    do
                    {
                      sub_23EB6FF14(theArray, &v34, "[*]:int", v24, v18, v19, v20, v21, v26);
                      v7 = v27;
                      if (v27)
                      {
                        goto LABEL_78;
                      }

                      v28 = v34;
                      if (v34 != 1000 && v34 != 8888)
                      {
                        if (dword_27E381AB0 <= 8000)
                        {
                          if (dword_27E381AB0 != -1 || (v30 = sub_23EB74AC8(&dword_27E381AB0, 0x1F40u), v28 = v34, v30))
                          {
                            sub_23EB75374(&dword_27E381AB0, "virtual ACPStatus BaseStation::SetBSSimpleChannel(const std::string &, CFTypeRef, eWhichValue)", 8000, "%s: Fixing radio channel value for index: %ld @ %s to be %d.\n", v18, v19, v20, v21, "virtual ACPStatus BaseStation::SetBSSimpleChannel(const std::string &, CFTypeRef, eWhichValue)");
                            v28 = v34;
                          }
                        }

                        v7 = sub_23EB906B8(a1, &v38, v28, 0);
                        if (!v7)
                        {
                          v11 = v22;
                          goto LABEL_50;
                        }

                        goto LABEL_78;
                      }
                    }

                    while (Count != ++v26);
                  }

                  v11 = v22;
                }

                if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
                {
                  sub_23EB75374(&dword_27E381AB0, "virtual ACPStatus BaseStation::SetBSSimpleChannel(const std::string &, CFTypeRef, eWhichValue)", 8000, "%s: Fixing radio channel value for index: %ld @ %s to be BSChannelAuto.\n", v18, v19, v20, v21, "virtual ACPStatus BaseStation::SetBSSimpleChannel(const std::string &, CFTypeRef, eWhichValue)");
                }

                v7 = sub_23EB906B8(a1, &v38, 1000, 0);
                if (v7)
                {
                  goto LABEL_78;
                }
              }

LABEL_50:
              if (++v10 == v9)
              {
                goto LABEL_83;
              }
            }
          }
        }

        goto LABEL_78;
    }

    sub_23EB8CCB8(__p, "raCh");
    sub_23EB90814(a2, __p, &v38);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB906B8(a1, &v38, valuePtr, v4);
    if (!v7)
    {
      sub_23EB8CCB8(__p, "raCA");
      sub_23EB90814(a2, __p, &v38);
      if (v40 < 0)
      {
        operator delete(__p[0]);
      }

      v32 = MEMORY[0x277CBED10];
LABEL_76:
      v31 = *v32;
LABEL_77:
      v7 = sub_23EB8FC04(a1, &v38, v31, v4);
    }
  }

  else
  {
    if (a4 != 1)
    {
      v7 = 0;
      goto LABEL_80;
    }

    sub_23EB8CCB8(__p, "raCh");
    sub_23EB90814(a2, __p, &v38);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB8FC04(a1, &v38, 0, 1);
    if (!v7)
    {
      sub_23EB8CCB8(__p, "raCA");
      sub_23EB90814(a2, __p, &v38);
      if (v40 < 0)
      {
        operator delete(__p[0]);
      }

      v31 = 0;
      v4 = 1;
      goto LABEL_77;
    }
  }

LABEL_78:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_80:
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EB9FAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9FB20(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&v23, 0, sizeof(v23));
  if (a3)
  {
    sub_23EB8CCB8(__p, "raCi");
    sub_23EB90814(a2, __p, &v23);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v22 = 0;
    v8 = sub_23EB97588(a1, &v23, &v22, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      valuePtr = v22;
      v10 = *MEMORY[0x277CBECE8];
      v11 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
      *a3 = v11;
      if (v11)
      {
        if (*(a2 + 23) >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = *a2;
        }

        v9 = sub_23EB6FDFC(v10, *(a1 + 48), "%ks=%O", v12, v13, v14, v15, v16, v17);
        CFRelease(*a3);
      }

      else
      {
        v9 = 4294960568;
      }
    }
  }

  else
  {
    v9 = 4294967292;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EB9FC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9FC8C(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  memset(&v13, 0, sizeof(v13));
  valuePtr = 0;
  if (!CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    return 4294960553;
  }

  sub_23EB8CCB8(__p, "raCi");
  sub_23EB90814(a2, __p, &v13);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = MEMORY[0x277CBED28];
  if (!valuePtr)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = sub_23EB8FC04(a1, &v13, *v7, a4);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EB9FD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9FDA0(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&v15, 0, sizeof(v15));
  v14 = 0;
  if (a3)
  {
    sub_23EB8CCB8(__p, "wdFl");
    sub_23EB90814(a2, __p, &v15);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = sub_23EB97374(a1, &v15, &v14, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      if ((v14 & 4) != 0)
      {
        v10 = MEMORY[0x277CBED28];
      }

      else
      {
        v10 = MEMORY[0x277CBED10];
      }

      *a3 = *v10;
    }
  }

  else
  {
    v9 = 4294967292;
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EB9FE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9FEC0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&v13, 0, sizeof(v13));
  v12 = 0;
  sub_23EB8CCB8(__p, "wdFl");
  sub_23EB90814(a2, __p, &v13);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_23EB97374(a1, &v13, &v12, a4);
  if (!v8)
  {
    v12 = v12 & 0xFFFFFFFB | (4 * (*MEMORY[0x277CBED28] == a3));
    sub_23EB8CCB8(__p, "wdFl");
    sub_23EB90814(a2, __p, &v13);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = sub_23EB906B8(a1, &v13, v12, a4);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EB9FFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA0018(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  valuePtr = 0;
  v21 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 2002864494, &__p);
    v8 = sub_23EB97374(a1, &__p, &valuePtr, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      sub_23EB8FB78(a2, 2002862934, &__p);
      v10 = sub_23EB97374(a1, &__p, &v21, a4);
      v9 = v10;
      if ((a4 != 1 || v10 != -5) && !v10)
      {
        if (valuePtr == 16)
        {
          if ((~v21 & 0x900) != 0)
          {
            if ((v21 & 0x300) != 0)
            {
              v11 = 6;
            }

            else
            {
              v11 = 7;
            }
          }

          else
          {
            v11 = 2;
          }

          HIDWORD(valuePtr) = v11;
        }

        v13 = *MEMORY[0x277CBECE8];
        v14 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr + 4);
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
      }
    }
  }

  else
  {
    v9 = 4294967292;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA01A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA01C4(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  memset(&v22, 0, sizeof(v22));
  valuePtr = 0;
  v19 = 0;
  v20 = 0;
  __p = 0;
  v17 = 0;
  v18 = 0;
  if (!CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    v7 = 4294960553;
    goto LABEL_11;
  }

  sub_23EB8FB78(a2, 2002862934, &v22);
  v7 = sub_23EB97374(a1, &v22, &v19, a4);
  if (v7)
  {
    goto LABEL_11;
  }

  if ((valuePtr - 6) < 2)
  {
    sub_23EB8FB78(a2, 2002864494, &v22);
    v7 = sub_23EB906B8(a1, &v22, 16, a4);
    if (v7)
    {
      goto LABEL_11;
    }

    if (valuePtr == 7)
    {
      v8 = 1024;
    }

    else
    {
      v8 = 768;
    }

    v19 = v19 & 0xFFFFF0FF | v8;
    sub_23EB8FB78(a2, 2002862934, &v22);
    v9 = v19;
    goto LABEL_9;
  }

  if (valuePtr != 2)
  {
    goto LABEL_29;
  }

  sub_23EB8FB78(a2, 2002864494, &v22);
  v7 = sub_23EB906B8(a1, &v22, 16, a4);
  if (!v7)
  {
    v19 = v19 & 0xFFFFF0FF | 0x900;
    sub_23EB8FB78(a2, 2002862934, &v22);
    v7 = sub_23EB906B8(a1, &v22, v19, a4);
    if (!v7)
    {
      sub_23EB8FB78(a2, 2002864464, &v22);
      v7 = sub_23EB97710(a1, &v22, &__p, a4);
      if (!v7)
      {
        v11 = HIBYTE(v18);
        if (v18 < 0)
        {
          v11 = v17;
        }

        if (v11)
        {
          goto LABEL_40;
        }

        sub_23EB8CCB8(v14, "169.254.255.1");
        v7 = sub_23EB97684(a1, &v22, v14, a4);
        if (v15 < 0)
        {
          operator delete(v14[0]);
        }

        if (!v7)
        {
          sub_23EB8FB78(a2, 2002867021, &v22);
          sub_23EB8CCB8(v14, "255.255.255.0");
          v7 = sub_23EB97684(a1, &v22, v14, a4);
          if (v15 < 0)
          {
            operator delete(v14[0]);
          }

          if (!v7)
          {
LABEL_40:
            sub_23EB8FB78(a2, 1651724877, &v22);
            v7 = sub_23EB973DC(a1, &v22, 0, a4);
            if (!v7)
            {
              sub_23EB8FB78(a2, 912483943, &v22);
              v7 = sub_23EB97374(a1, &v22, &v20, a4);
              if (!v7)
              {
                v12 = sub_23EB8BE08(a1, 1347437878);
                if (v20)
                {
                  v13 = v12;
                }

                else
                {
                  v13 = 1;
                }

                if ((v13 & 1) == 0)
                {
                  sub_23EB8FB78(a2, 912483943, &v22);
                  v9 = 0;
LABEL_9:
                  v7 = sub_23EB906B8(a1, &v22, v9, a4);
                  goto LABEL_11;
                }

LABEL_29:
                v7 = 0;
              }
            }
          }
        }
      }
    }
  }

LABEL_11:
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBA050C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA055C(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1836010822, &__p);
    v7 = sub_23EB97374(a1, &__p, &v11, a4);
    v8 = v7;
    if ((a4 != 1 || v7 != -5) && !v7)
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
    v8 = 4294967292;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA0624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA0640(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  sub_23EB8FB78(a2, 1836010822, &__p);
  v7 = sub_23EB906B8(a1, &__p, *MEMORY[0x277CBED28] == a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBA06D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA06EC(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1885619820, &__p);
    v7 = sub_23EB97374(a1, &__p, &v11, a4);
    v8 = v7;
    if ((a4 != 1 || v7 != -5) && !v7)
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
    v8 = 4294967292;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA07B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA07D0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  sub_23EB8FB78(a2, 1885619820, &__p);
  v7 = sub_23EB906B8(a1, &__p, *MEMORY[0x277CBED28] == a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBA0860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA087C(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  if (a3)
  {
    sub_23EB8FB78(a2, 1836011588, &__p);
    v21 = 0;
    v8 = sub_23EB97588(a1, &__p, &v21, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      if (v21)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      valuePtr = v10;
      v11 = *MEMORY[0x277CBECE8];
      v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
      *a3 = v12;
      if (v12)
      {
        if (*(a2 + 23) >= 0)
        {
          v18 = a2;
        }

        else
        {
          v18 = *a2;
        }

        v9 = sub_23EB6FDFC(v11, *(a1 + 48), "%ks=%O", v13, v14, v15, v16, v17, v18);
        CFRelease(*a3);
      }

      else
      {
        v9 = 4294960568;
      }
    }
  }

  else
  {
    v9 = 4294967292;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA09A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA09BC(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  valuePtr = 0;
  if (!CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    return 4294960553;
  }

  v7 = valuePtr;
  sub_23EB8FB78(a2, 1836011588, &__p);
  v8 = MEMORY[0x277CBED28];
  if (v7 != 2)
  {
    v8 = MEMORY[0x277CBED10];
  }

  v9 = sub_23EB8FC04(a1, &__p, *v8, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA0A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA0A98(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v19 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1836008265, &__p);
    v8 = sub_23EB97374(a1, &__p, &v19, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      valuePtr = sub_23EB9BE68(a1, v19);
      if (valuePtr == -1)
      {
        v9 = 4294967291;
      }

      else
      {
        v10 = *MEMORY[0x277CBECE8];
        v11 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
        *a3 = v11;
        if (v11)
        {
          if (*(a2 + 23) >= 0)
          {
            v17 = a2;
          }

          else
          {
            v17 = *a2;
          }

          v9 = sub_23EB6FDFC(v10, *(a1 + 48), "%ks=%O", v12, v13, v14, v15, v16, v17);
          CFRelease(*a3);
        }

        else
        {
          v9 = 4294960568;
        }
      }
    }
  }

  else
  {
    v9 = 4294967292;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA0BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA0BE4(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  if (!number)
  {
    sub_23EB8FB78(a2, 1836008259, &__p);
    v13 = sub_23EB8FC04(a1, &__p, 0, a4);
    if (v13)
    {
      goto LABEL_21;
    }

    sub_23EB8FB78(a2, 1836008265, &__p);
    v15 = sub_23EB8FC04(a1, &__p, 0, a4);
    goto LABEL_18;
  }

  valuePtr = 0;
  if (CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    if (valuePtr > 0x25)
    {
      v13 = 4294960586;
    }

    else
    {
      v7 = &unk_23EC21E30 + 5 * valuePtr - 5;
      v8 = *(a1 + 260);
      v9 = v8 == 1 || v8 == 4;
      if (v9)
      {
        v10 = 3;
      }

      else
      {
        v10 = 4;
      }

      v11 = 1;
      if (!v9)
      {
        v11 = 2;
      }

      v12 = v7[v10];
      v13 = 4294960561;
      if ((v12 & 0x80000000) == 0)
      {
        v14 = v7[v11];
        if ((v14 & 0x80000000) == 0)
        {
          sub_23EB8FB78(a2, 1836008259, &__p);
          v13 = sub_23EB906B8(a1, &__p, v12, a4);
          if (!v13)
          {
            sub_23EB8FB78(a2, 1836008265, &__p);
            v15 = sub_23EB906B8(a1, &__p, v14, a4);
LABEL_18:
            v13 = v15;
          }
        }
      }
    }
  }

  else
  {
    v13 = 4294960553;
  }

LABEL_21:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_23EBA0D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA0D98(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&v22, 0, sizeof(v22));
  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1853117270, &v22);
    v8 = sub_23EB97710(a1, &v22, __p, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      v10 = *MEMORY[0x277CBECE8];
      if (v21 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      v12 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v11, 0x8000100u);
      *a3 = v12;
      if (v12)
      {
        if (*(a2 + 23) >= 0)
        {
          v18 = a2;
        }

        else
        {
          v18 = *a2;
        }

        v9 = sub_23EB6FDFC(v10, *(a1 + 48), "%ks=%O", v13, v14, v15, v16, v17, v18);
        CFRelease(*a3);
      }

      else
      {
        v9 = 4294960568;
      }
    }
  }

  else
  {
    v9 = 4294967292;
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA0ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA0EFC(uint64_t a1, unsigned __int8 *a2, const __CFString *a3, uint64_t a4)
{
  memset(&v13, 0, sizeof(v13));
  v11 = 0;
  __s = 0;
  v7 = sub_23EB70FE4(a3, &__s, &v11);
  if (!v7)
  {
    sub_23EB8FB78(a2, 1853117270, &v13);
    sub_23EB8CCB8(__p, __s);
    v7 = sub_23EB97684(a1, &v13, __p, a4);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v11)
  {
    free(v11);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBA0FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA0FFC(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  memset(&v22, 0, sizeof(v22));
  v21 = 0;
  if (a3)
  {
    sub_23EB8CCB8(__p, "raAu");
    sub_23EB90814(a2, __p, &v22);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = sub_23EB97374(a1, &v22, &v21, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      snprintf(__str, 0x20uLL, "%u", v21);
      v10 = *MEMORY[0x277CBECE8];
      v11 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], __str, 0x8000100u);
      *a3 = v11;
      if (v11)
      {
        if (*(a2 + 23) >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = *a2;
        }

        v9 = sub_23EB6FDFC(v10, *(a1 + 48), "%ks=%O", v12, v13, v14, v15, v16, v17);
        CFRelease(*a3);
      }

      else
      {
        v9 = 4294960568;
      }
    }
  }

  else
  {
    v9 = 4294967292;
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA1174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

uint64_t sub_23EBA11AC(uint64_t a1, unsigned __int8 *a2, CFStringRef theString1, uint64_t a4)
{
  memset(&v15, 0, sizeof(v15));
  v14 = 0;
  v12 = 0;
  v13 = 0;
  if (theString1 && CFStringCompare(theString1, &stru_285145FE8, 0))
  {
    v8 = sub_23EB70FE4(theString1, &v13, &v12);
    if (v8)
    {
      goto LABEL_9;
    }

    sscanf(v13, "%u", &v14);
  }

  else
  {
    v14 = 0;
  }

  sub_23EB8CCB8(__p, "raAu");
  sub_23EB90814(a2, __p, &v15);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_23EB906B8(a1, &v15, v14, a4);
LABEL_9:
  if (v12)
  {
    free(v12);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA12B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA12EC(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  memset(&v22, 0, sizeof(v22));
  v21 = 0;
  if (a3)
  {
    sub_23EB8CCB8(__p, "raU2");
    sub_23EB90814(a2, __p, &v22);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = sub_23EB97374(a1, &v22, &v21, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      snprintf(__str, 0x20uLL, "%u", v21);
      v10 = *MEMORY[0x277CBECE8];
      v11 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], __str, 0x8000100u);
      *a3 = v11;
      if (v11)
      {
        if (*(a2 + 23) >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = *a2;
        }

        v9 = sub_23EB6FDFC(v10, *(a1 + 48), "%ks=%O", v12, v13, v14, v15, v16, v17);
        CFRelease(*a3);
      }

      else
      {
        v9 = 4294960568;
      }
    }
  }

  else
  {
    v9 = 4294967292;
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA1464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

uint64_t sub_23EBA149C(uint64_t a1, unsigned __int8 *a2, CFStringRef theString1, uint64_t a4)
{
  memset(&v15, 0, sizeof(v15));
  v14 = 0;
  v12 = 0;
  v13 = 0;
  if (theString1 && CFStringCompare(theString1, &stru_285145FE8, 0))
  {
    v8 = sub_23EB70FE4(theString1, &v13, &v12);
    if (v8)
    {
      goto LABEL_9;
    }

    sscanf(v13, "%u", &v14);
  }

  else
  {
    v14 = 0;
  }

  sub_23EB8CCB8(__p, "raU2");
  sub_23EB90814(a2, __p, &v15);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_23EB906B8(a1, &v15, v14, a4);
LABEL_9:
  if (v12)
  {
    free(v12);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA15A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA15DC(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&v23, 0, sizeof(v23));
  valuePtr = 0;
  if (a3)
  {
    sub_23EB8CCB8(__p, "wdFl");
    sub_23EB90814(a2, __p, &v23);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = sub_23EB97374(a1, &v23, &valuePtr, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      if (valuePtr)
      {
        if ((valuePtr & 2) != 0)
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        if ((valuePtr & 2) == 0)
        {
          goto LABEL_18;
        }

        v10 = 3;
      }

      HIDWORD(valuePtr) = v10;
LABEL_18:
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
    }
  }

  else
  {
    v9 = 4294967292;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA1730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA1768(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  memset(&v13, 0, sizeof(v13));
  valuePtr = 0;
  if (!CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr + 4))
  {
    v7 = 4294960553;
    goto LABEL_19;
  }

  sub_23EB8CCB8(__p, "wdFl");
  sub_23EB90814(a2, __p, &v13);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB97374(a1, &v13, &valuePtr, a4);
  if (!v7)
  {
    if (SHIDWORD(valuePtr) > 1)
    {
      if (HIDWORD(valuePtr) == 2)
      {
        v8 = valuePtr | 3;
        goto LABEL_15;
      }

      if (HIDWORD(valuePtr) == 3)
      {
        v8 = valuePtr & 0xFFFFFFFC | 2;
        goto LABEL_15;
      }
    }

    else
    {
      if (!HIDWORD(valuePtr))
      {
        v8 = valuePtr & 0xFFFFFFFC;
        goto LABEL_15;
      }

      if (HIDWORD(valuePtr) == 1)
      {
        v8 = valuePtr & 0xFFFFFFFC | 1;
LABEL_15:
        LODWORD(valuePtr) = v8;
      }
    }

    sub_23EB8CCB8(__p, "wdFl");
    sub_23EB90814(a2, __p, &v13);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB906B8(a1, &v13, valuePtr, a4);
  }

LABEL_19:
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBA18D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA1914(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  if (a3)
  {
    sub_23EB8FB78(a2, 1885684035, &__p);
    v22 = 0;
    v8 = sub_23EB97588(a1, &__p, &v22, a4);
    v9 = v8;
    if (a4 == 1 && v8 == -5)
    {
      goto LABEL_10;
    }

    if (v8)
    {
      goto LABEL_10;
    }

    sub_23EB8FB78(a2, 1885688643, &__p);
    v21 = 0;
    v9 = sub_23EB97588(a1, &__p, &v21, a4);
    if (v9)
    {
      goto LABEL_10;
    }

    if (v22)
    {
      if (v21)
      {
        valuePtr = 0;
        goto LABEL_16;
      }

      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    valuePtr = v11;
LABEL_16:
    v12 = *MEMORY[0x277CBECE8];
    v13 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
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

    goto LABEL_10;
  }

  v9 = 4294967292;
LABEL_10:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA1A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA1AA4(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  valuePtr = 0;
  if (CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    v7 = valuePtr;
    if (valuePtr > 2)
    {
      v11 = 0;
    }

    else
    {
      sub_23EB8FB78(a2, 1885684035, &__p);
      v8 = *MEMORY[0x277CBED28];
      v9 = *MEMORY[0x277CBED10];
      if ((3u >> (v7 & 7)))
      {
        v10 = *MEMORY[0x277CBED28];
      }

      else
      {
        v10 = *MEMORY[0x277CBED10];
      }

      v11 = sub_23EB8FC04(a1, &__p, v10, a4);
      if (!v11)
      {
        sub_23EB8FB78(a2, 1885688643, &__p);
        v12 = 1u >> (v7 & 7);
        v13 = (v12 ? v8 : v9);
        v11 = sub_23EB8FC04(a1, &__p, v13, a4);
        if (!v11 && v12 != 0)
        {
          sub_23EB8FB78(a2, 1885686084, &__p);
          v11 = sub_23EB906B8(a1, &__p, 0, 0);
        }
      }
    }
  }

  else
  {
    v11 = 4294960553;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_23EBA1C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA1C28(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  if (a3)
  {
    sub_23EB8FB78(a2, 1918977107, &__p);
    v22 = 0;
    v8 = sub_23EB97588(a1, &__p, &v22, a4);
    v9 = v8;
    if (a4 == 1 && v8 == -5)
    {
      goto LABEL_10;
    }

    if (v8)
    {
      goto LABEL_10;
    }

    sub_23EB8FB78(a2, 1918979649, &__p);
    v21 = 0;
    v9 = sub_23EB97588(a1, &__p, &v21, a4);
    if (v9)
    {
      goto LABEL_10;
    }

    if (v22)
    {
      if (v21)
      {
        valuePtr = 0;
        goto LABEL_18;
      }

      v11 = 1;
    }

    else if (v21)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    valuePtr = v11;
LABEL_18:
    v12 = *MEMORY[0x277CBECE8];
    v13 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
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

    goto LABEL_10;
  }

  v9 = 4294967292;
LABEL_10:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA1DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA1DC0(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  valuePtr = 0;
  if (CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    v7 = valuePtr;
    if (valuePtr > 3)
    {
      goto LABEL_18;
    }

    sub_23EB8FB78(a2, 1918979649, &__p);
    v8 = *MEMORY[0x277CBED28];
    v9 = *MEMORY[0x277CBED10];
    if (v7)
    {
      v10 = *MEMORY[0x277CBED10];
    }

    else
    {
      v10 = *MEMORY[0x277CBED28];
    }

    v11 = sub_23EB8FC04(a1, &__p, v10, a4);
    if (v11)
    {
      goto LABEL_19;
    }

    sub_23EB8FB78(a2, 1918977107, &__p);
    v12 = (((3u >> (v7 & 0xF)) & 1) != 0 ? v8 : v9);
    v11 = sub_23EB8FC04(a1, &__p, v12, a4);
    if (v11)
    {
      goto LABEL_19;
    }

    sub_23EB8FB78(a2, 1918981954, &__p);
    v13 = ((v7 & 1) != 0 ? v8 : v9);
    v11 = sub_23EB8FC04(a1, &__p, v13, a4);
    if (v11)
    {
      goto LABEL_19;
    }

    if ((sub_23EB8BE08(a1, 1396995415) & v7) == 1)
    {
      sub_23EB8FB78(a2, 2002867012, &__p);
      v11 = sub_23EB906B8(a1, &__p, 0, a4);
    }

    else
    {
LABEL_18:
      v11 = 0;
    }
  }

  else
  {
    v11 = 4294960553;
  }

LABEL_19:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_23EBA1F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA1F80(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1936605510, &__p);
    v7 = sub_23EB97374(a1, &__p, &v11, a4);
    v8 = v7;
    if ((a4 != 1 || v7 != -5) && !v7)
    {
      if ((v11 & 0xFFFFFFFE) == 2)
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

void sub_23EBA204C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA2068(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  sub_23EB8FB78(a2, 1936605510, &__p);
  v8 = sub_23EB97374(a1, &__p, &v11, a4);
  if (!v8)
  {
    if (*MEMORY[0x277CBED28] == a3)
    {
      v9 = v11 & 0xFFFFFFFD;
    }

    else
    {
      v9 = v11 | 3;
    }

    v11 = v9;
    sub_23EB8FB78(a2, 1936605510, &__p);
    v8 = sub_23EB906B8(a1, &__p, v11, a4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA214C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA2168(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1936605510, &__p);
    v7 = sub_23EB97374(a1, &__p, &v11, a4);
    v8 = v7;
    if ((a4 != 1 || v7 != -5) && !v7)
    {
      if (((v11 - 1) & 0xFFFFFFFD) != 0)
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

void sub_23EBA2234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA2250(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  sub_23EB8FB78(a2, 1936605510, &__p);
  v8 = sub_23EB97374(a1, &__p, &v11, a4);
  if (!v8)
  {
    v9 = v11 & 0xFFFFFFFE;
    if (*MEMORY[0x277CBED28] != a3)
    {
      ++v9;
    }

    v11 = v9;
    sub_23EB8FB78(a2, 1936605510, &__p);
    v8 = sub_23EB906B8(a1, &__p, v11, a4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA2330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA234C(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1970496070, &__p);
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

void sub_23EBA2414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA2430(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v10 = 0;
  sub_23EB8FB78(a2, 1970496070, &__p);
  v8 = sub_23EB97374(a1, &__p, &v10, a4);
  if (!v8)
  {
    v10 = v10 & 0xFFFFFFFD | (2 * (*MEMORY[0x277CBED28] == a3));
    sub_23EB8FB78(a2, 1970496070, &__p);
    v8 = sub_23EB906B8(a1, &__p, v10, a4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA2510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA252C(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1970496070, &__p);
    v7 = sub_23EB97374(a1, &__p, &v11, a4);
    v8 = v7;
    if ((a4 != 1 || v7 != -5) && !v7)
    {
      if ((v11 & 0x100) != 0)
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

void sub_23EBA25F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA2610(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v10 = 0;
  sub_23EB8FB78(a2, 1970496070, &__p);
  v8 = sub_23EB97374(a1, &__p, &v10, a4);
  if (!v8)
  {
    v10 = v10 & 0xFFFFFEFF | ((*MEMORY[0x277CBED28] == a3) << 8);
    sub_23EB8FB78(a2, 1970496070, &__p);
    v8 = sub_23EB906B8(a1, &__p, v10, a4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA26F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA270C(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  if (a3)
  {
    sub_23EB8FB78(a2, 2002865741, &__p);
    v11 = 0;
    v7 = sub_23EB97588(a1, &__p, &v11, a4);
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

void sub_23EBA27D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA27F0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v6 = *MEMORY[0x277CBED10];
  if (*MEMORY[0x277CBED28] == a3)
  {
    v7 = *MEMORY[0x277CBED10];
  }

  else
  {
    v7 = *MEMORY[0x277CBED28];
  }

  sub_23EB8FB78(a2, 2002865741, &__p);
  v8 = sub_23EB8FC04(a1, &__p, v7, a4);
  if (!v8)
  {
    v11 = 0;
    v8 = sub_23EB975E8(a1, 2002929006, &v11, 0);
    if (!v8)
    {
      v9 = v7 == v6 && v11;
      v8 = sub_23EB8BE98(a1, 2002927939, v9, 0);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA28D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA28F4(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&v22, 0, sizeof(v22));
  valuePtr = 0;
  if (a3)
  {
    sub_23EB8CCB8(__p, "raKT");
    sub_23EB90814(a2, __p, &v22);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = sub_23EB97374(a1, &v22, &valuePtr, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      valuePtr /= 0x3Cu;
      v10 = *MEMORY[0x277CBECE8];
      v11 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
      *a3 = v11;
      if (v11)
      {
        if (*(a2 + 23) >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = *a2;
        }

        v9 = sub_23EB6FDFC(v10, *(a1 + 48), "%ks=%O", v12, v13, v14, v15, v16, v17);
        CFRelease(*a3);
      }

      else
      {
        v9 = 4294960568;
      }
    }
  }

  else
  {
    v9 = 4294967292;
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA2A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA2A70(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  memset(&v12, 0, sizeof(v12));
  valuePtr = 0;
  if (!CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    return 4294960553;
  }

  sub_23EB8CCB8(__p, "raKT");
  sub_23EB90814(a2, __p, &v12);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB906B8(a1, &v12, 60 * valuePtr, a4);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBA2B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA2B70(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&v24, 0, sizeof(v24));
  valuePtr = 0;
  v22 = 0;
  if (a3)
  {
    sub_23EB8CCB8(__p, "wdFl");
    sub_23EB90814(a2, __p, &v24);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = sub_23EB97374(a1, &v24, &valuePtr + 4, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      sub_23EB8CCB8(__p, "raSt");
      sub_23EB90814(a2, __p, &v24);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = sub_23EB97374(a1, &v24, &valuePtr, a4);
      if (!v9)
      {
        if (sub_23EB8BE08(a1, 1146569811))
        {
          sub_23EB8CCB8(__p, "dWDS");
          sub_23EB90814(a2, __p, &v24);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          sub_23EB97588(a1, &v24, &v22, a4);
        }

        if (valuePtr == 1)
        {
          if (!v22)
          {
            goto LABEL_25;
          }

          v10 = 20;
        }

        else
        {
          if (valuePtr || (valuePtr & 0x300000000) == 0)
          {
LABEL_25:
            v12 = *MEMORY[0x277CBECE8];
            v13 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
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

            goto LABEL_19;
          }

          v10 = 10;
        }

        LODWORD(valuePtr) = v10;
        goto LABEL_25;
      }
    }
  }

  else
  {
    v9 = 4294967292;
  }

LABEL_19:
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA2D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t sub_23EBA2DC4(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(&v19, 0, sizeof(v19));
  valuePtr = 0;
  if (!CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    v7 = 4294960553;
    goto LABEL_17;
  }

  sub_23EB8CCB8(&__p, "wdFl");
  sub_23EB90814(a2, &__p, &v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_23EB97374(a1, &v19, &valuePtr + 4, a4);
  if (v7)
  {
    goto LABEL_17;
  }

  v8 = 0;
  v9 = 1;
  if (valuePtr > 2)
  {
    if (valuePtr != 3)
    {
      if (valuePtr == 10)
      {
        if ((valuePtr & 0x300000000) == 0)
        {
          v13 = sub_23EB8F4AC(a1, 0);
          sub_23EBA33E0(__s, 0x11uLL, v13);
          sub_23EB8CCB8(&__p, __s);
          sub_23EB8CCB8(v15, "wdFl");
          sub_23EB90814(&__p, v15, &__p);
          if (v16 < 0)
          {
            operator delete(v15[0]);
          }

          HIDWORD(valuePtr) |= 1u;
          sub_23EB8CCB8(v15, "wdFl");
          sub_23EB90814(a2, v15, &v19);
          if (v16 < 0)
          {
            operator delete(v15[0]);
          }

          if (!sub_23EB9B1C4(&v19, &__p))
          {
            goto LABEL_52;
          }

          v7 = sub_23EB906B8(a1, &v19, SHIDWORD(valuePtr), a4);
          if (v7)
          {
            goto LABEL_49;
          }

          sub_23EB8CCB8(v15, "raCA");
          sub_23EB90814(&v19, v15, &v19);
          if (v16 < 0)
          {
            operator delete(v15[0]);
          }

          v7 = sub_23EB8FC04(a1, &v19, *MEMORY[0x277CBED10], a4);
          if (v7)
          {
LABEL_49:
            v14 = 0;
          }

          else
          {
LABEL_52:
            v7 = 0;
            v14 = 1;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if ((v14 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v8 = 0;
        LODWORD(valuePtr) = 0;
      }

      else if (valuePtr == 20)
      {
        v10 = sub_23EB8BE08(a1, 1196311928);
        sub_23EB8CCB8(&__p, "wdFl");
        sub_23EB90814(a2, &__p, &v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v7 = sub_23EB906B8(a1, &v19, 0, a4);
        if (v7)
        {
          goto LABEL_17;
        }

        sub_23EB8CCB8(&__p, "dWDS");
        sub_23EB90814(a2, &__p, &v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v7 = sub_23EB8FC04(a1, &v19, *MEMORY[0x277CBED28], a4);
        if (v7)
        {
          goto LABEL_17;
        }

        v8 = !v10;
        LODWORD(valuePtr) = 1;
      }

      goto LABEL_57;
    }

    goto LABEL_23;
  }

  if (!valuePtr)
  {
LABEL_24:
    sub_23EB8CCB8(&__p, "wdFl");
    sub_23EB90814(a2, &__p, &v19);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v7 = sub_23EB906B8(a1, &v19, 0, a4);
    if (v7)
    {
      goto LABEL_17;
    }

    if (sub_23EB8BE08(a1, 1146569811))
    {
      sub_23EB8CCB8(&__p, "dWDS");
      sub_23EB90814(a2, &__p, &v19);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v12 = MEMORY[0x277CBED28];
      if (valuePtr)
      {
        v12 = MEMORY[0x277CBED10];
      }

      v7 = sub_23EB8FC04(a1, &v19, *v12, a4);
      if (v7)
      {
        goto LABEL_17;
      }
    }

    if (valuePtr == 3)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 0;
      v7 = sub_23EB89D74(a1, 1651724358, &__p, 0);
      if (v7)
      {
        goto LABEL_17;
      }

      if (LODWORD(__p.__r_.__value_.__l.__data_) == 4)
      {
        v7 = sub_23EB8CB80(a1, 1651724877, 3, a4);
        if (v7)
        {
          goto LABEL_17;
        }
      }

      if ((v9 & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else if (!v9)
    {
LABEL_61:
      if (!v8 || !sub_23EB8BE08(a1, 1198748750) || (sub_23EB8FB78(a2, 1651722053, &v19), v7 = sub_23EB8FC04(a1, &v19, *MEMORY[0x277CBED10], a4), !v7))
      {
        sub_23EB8CCB8(&__p, "raSt");
        sub_23EB90814(a2, &__p, &v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v7 = sub_23EB906B8(a1, &v19, valuePtr, a4);
      }

      goto LABEL_17;
    }

    goto LABEL_57;
  }

  if (valuePtr == 1)
  {
    v9 = 0;
LABEL_23:
    v8 = 1;
    goto LABEL_24;
  }

LABEL_57:
  if (!sub_23EB8BE08(a1, 1884509249))
  {
    goto LABEL_61;
  }

  sub_23EB8CCB8(&__p, "pSTA");
  sub_23EB90814(a2, &__p, &v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_23EB8FC04(a1, &v19, *MEMORY[0x277CBED10], a4);
  if (!v7)
  {
    goto LABEL_61;
  }

LABEL_17:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBA3340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23EBA33E0(void *a1, std::string::size_type a2, uint64_t a3)
{
  if (a1 && a2 >= 0x11)
  {
    bzero(a1, a2);
    sub_23EB8E260(a3, &v7);
    __src = v7;
    if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__src.__r_.__value_.__l.__size_ < a2)
      {
        strcpy(a1, __src.__r_.__value_.__l.__data_);
      }

      operator delete(__src.__r_.__value_.__l.__data_);
    }

    else if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < a2)
    {
      strcpy(a1, &__src);
    }
  }

  return a1;
}

uint64_t sub_23EBA3490(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&v26, 0, sizeof(v26));
  valuePtr = 0;
  v24 = 0;
  v23 = 0;
  if (a3)
  {
    sub_23EB8CCB8(__p, "acEn");
    sub_23EB90814(a2, __p, &v26);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = sub_23EB97588(a1, &v26, &v24, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      sub_23EB8CCB8(__p, "raFl");
      sub_23EB90814(a2, __p, &v26);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = sub_23EB97374(a1, &v26, &v23 + 4, a4);
      v9 = v10;
      if ((a4 != 1 || v10 != -5) && !v10)
      {
        sub_23EB8CCB8(__p, "raF2");
        sub_23EB90814(a2, __p, &v26);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        v9 = sub_23EB97374(a1, &v26, &v23, a4);
        if (!v9)
        {
          if (v24)
          {
            if (sub_23EB8BE08(a1, 1950434124))
            {
              v11 = 3;
            }

            else
            {
              v11 = 1;
            }
          }

          else
          {
            if ((v23 & 0x100000000) == 0 && (v23 & 1) == 0)
            {
LABEL_27:
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

              goto LABEL_19;
            }

            v11 = 2;
          }

          valuePtr = v11;
          goto LABEL_27;
        }
      }
    }
  }

  else
  {
    v9 = 4294967292;
  }

LABEL_19:
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA36B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t sub_23EBA36FC(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  memset(&v16, 0, sizeof(v16));
  valuePtr = 0;
  v14 = 0;
  if (!CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr + 4))
  {
    v7 = 4294960553;
    goto LABEL_13;
  }

  sub_23EB8CCB8(__p, "raFl");
  sub_23EB90814(a2, __p, &v16);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB97374(a1, &v16, &valuePtr, a4);
  if (!v7)
  {
    sub_23EB8CCB8(__p, "raF2");
    sub_23EB90814(a2, __p, &v16);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB97374(a1, &v16, &v14, a4);
    if (!v7)
    {
      if (SHIDWORD(valuePtr) > 1)
      {
        if (HIDWORD(valuePtr) == 2)
        {
          v10 = *MEMORY[0x277CBED10];
          LODWORD(valuePtr) = valuePtr | 1;
          v11 = v14 | 1;
          goto LABEL_22;
        }

        if (HIDWORD(valuePtr) != 3)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (!HIDWORD(valuePtr))
        {
          v9 = MEMORY[0x277CBED10];
          goto LABEL_20;
        }

        if (HIDWORD(valuePtr) != 1)
        {
          goto LABEL_13;
        }
      }

      v9 = MEMORY[0x277CBED28];
LABEL_20:
      v10 = *v9;
      LODWORD(valuePtr) = valuePtr & 0xFFFFFFFE;
      v11 = v14 & 0xFFFFFFFE;
LABEL_22:
      v14 = v11;
      sub_23EB8CCB8(__p, "acEn");
      sub_23EB90814(a2, __p, &v16);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      v7 = sub_23EB8FC04(a1, &v16, v10, a4);
      if (!v7)
      {
        sub_23EB8CCB8(__p, "raFl");
        sub_23EB90814(a2, __p, &v16);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        v7 = sub_23EB906B8(a1, &v16, valuePtr, a4);
        if (!v7)
        {
          sub_23EB8CCB8(__p, "raF2");
          sub_23EB90814(a2, __p, &v16);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }

          v7 = sub_23EB906B8(a1, &v16, v14, a4);
        }
      }
    }
  }

LABEL_13:
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBA3970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA39C8(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1970496070, &__p);
    v7 = sub_23EB97374(a1, &__p, &v11, a4);
    v8 = v7;
    if ((a4 != 1 || v7 != -5) && !v7)
    {
      if ((v11 & 4) != 0)
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

void sub_23EBA3A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA3AAC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v10 = 0;
  sub_23EB8FB78(a2, 1970496070, &__p);
  v8 = sub_23EB97374(a1, &__p, &v10, a4);
  if (!v8)
  {
    v10 = v10 & 0xFFFFFFFB | (4 * (*MEMORY[0x277CBED28] != a3));
    sub_23EB8FB78(a2, 1970496070, &__p);
    v8 = sub_23EB906B8(a1, &__p, v10, a4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA3B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA3BA8(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1970496070, &__p);
    v7 = sub_23EB97374(a1, &__p, &v11, a4);
    v8 = v7;
    if ((a4 != 1 || v7 != -5) && !v7)
    {
      if ((v11 & 8) != 0)
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

void sub_23EBA3C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA3C8C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v13 = 0;
  sub_23EB8FB78(a2, 1970496070, &__p);
  v8 = sub_23EB97374(a1, &__p, &v13, a4);
  if (!v8)
  {
    v9 = *MEMORY[0x277CBED28];
    v13 = v13 & 0xFFFFFFF7 | (8 * (*MEMORY[0x277CBED28] == a3));
    sub_23EB8FB78(a2, 1970496070, &__p);
    v8 = sub_23EB906B8(a1, &__p, v13, a4);
    if (!v8)
    {
      v12 = 0;
      v8 = sub_23EB975E8(a1, 2002929006, &v12, 0);
      if (!v8)
      {
        if (v12 && v9 == a3)
        {
          v10 = v9;
        }

        else
        {
          v10 = *MEMORY[0x277CBED10];
        }

        v8 = (*(*a1 + 504))(a1, a2, v10, a4);
      }
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA3DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA3E0C(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1970496070, &__p);
    v7 = sub_23EB97374(a1, &__p, &v11, a4);
    v8 = v7;
    if ((a4 != 1 || v7 != -5) && !v7)
    {
      if ((v11 & 0x200) != 0)
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

void sub_23EBA3ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA3EF0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v10 = 0;
  sub_23EB8FB78(a2, 1970496070, &__p);
  v8 = sub_23EB97374(a1, &__p, &v10, a4);
  if (!v8)
  {
    v10 = v10 & 0xFFFFFDFF | ((*MEMORY[0x277CBED28] == a3) << 9);
    sub_23EB8FB78(a2, 1970496070, &__p);
    v8 = sub_23EB906B8(a1, &__p, v10, a4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA3FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA3FEC(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v21 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1970496070, &__p);
    v8 = sub_23EB97374(a1, &__p, &v21, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      if ((v21 & 0x10) != 0)
      {
        valuePtr = 0;
      }

      else
      {
        if ((v21 & 0x20) != 0)
        {
          v10 = 1;
        }

        else
        {
          v10 = 2;
        }

        valuePtr = v10;
      }

      v12 = *MEMORY[0x277CBECE8];
      v13 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
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
    }
  }

  else
  {
    v9 = 4294967292;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA4120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA413C(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v10 = 0;
  if (CFNumberGetValue(number, kCFNumberSInt32Type, &v10))
  {
    sub_23EB8FB78(a2, 1970496070, &__p);
    v7 = sub_23EB97374(a1, &__p, &v10 + 4, a4);
    if (!v7)
    {
      if (v10 == 1)
      {
        v8 = HIDWORD(v10) & 0xFFFFFFCF | 0x20;
      }

      else if (v10 == 2)
      {
        v8 = HIDWORD(v10) & 0xFFFFFFCF;
      }

      else
      {
        v8 = HIDWORD(v10) | 0x30;
      }

      HIDWORD(v10) = v8;
      sub_23EB8FB78(a2, 1970496070, &__p);
      v7 = sub_23EB906B8(a1, &__p, SHIDWORD(v10), a4);
    }
  }

  else
  {
    v7 = 4294960553;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBA4240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA425C(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&v27, 0, sizeof(v27));
  v26 = 0;
  __p = 0;
  v24 = 0;
  v25 = 0;
  if (!a3)
  {
    v9 = 4294967292;
    goto LABEL_8;
  }

  sub_23EB8FB78(a2, 1970496070, &v27);
  v8 = sub_23EB97374(a1, &v27, &v26, a4);
  v9 = v8;
  if ((a4 != 1 || v8 != -5) && !v8)
  {
    if ((v26 & 0x40) != 0)
    {
      sub_23EB8FB78(a2, 1718842224, &v27);
      v11 = sub_23EB97710(a1, &v27, &__p, a4);
      v9 = v11;
      if (v11)
      {
        if (v11 != -5)
        {
          goto LABEL_8;
        }

        MEMORY[0x23EF1EFD0](&__p, "");
      }

      v12 = HIBYTE(v25);
      if (v25 < 0)
      {
        v12 = v24;
      }

      if (v12 || *(a1 + 384) == 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      valuePtr = v13;
    }

    else
    {
      valuePtr = 0;
    }

    v14 = *MEMORY[0x277CBECE8];
    v15 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
    *a3 = v15;
    if (v15)
    {
      if (*(a2 + 23) >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      v9 = sub_23EB6FDFC(v14, *(a1 + 48), "%ks=%O", v16, v17, v18, v19, v20, v21);
      CFRelease(*a3);
    }

    else
    {
      v9 = 4294960568;
    }
  }

LABEL_8:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA4410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA443C(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  memset(&v12, 0, sizeof(v12));
  valuePtr = 0;
  if (!number)
  {
    v7 = 4294960591;
    goto LABEL_15;
  }

  if (!CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    v7 = 4294960553;
    goto LABEL_15;
  }

  sub_23EB8FB78(a2, 1970496070, &v12);
  v7 = sub_23EB97374(a1, &v12, &valuePtr + 4, a4);
  if (v7)
  {
    goto LABEL_15;
  }

  *(a1 + 384) = 0;
  if (valuePtr == 1)
  {
    HIDWORD(valuePtr) |= 0x40u;
    *(a1 + 384) = 1;
LABEL_14:
    sub_23EB8FB78(a2, 1970496070, &v12);
    v7 = sub_23EB906B8(a1, &v12, SHIDWORD(valuePtr), a4);
    goto LABEL_15;
  }

  if (valuePtr == 2)
  {
    HIDWORD(valuePtr) |= 0x40u;
  }

  else
  {
    HIDWORD(valuePtr) &= ~0x40u;
  }

  sub_23EB8FB78(a2, 1718842224, &v12);
  sub_23EB8CCB8(__p, "");
  v7 = sub_23EB97684(a1, &v12, __p, a4);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBA45E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA4624(CFDictionaryRef *a1, unsigned __int8 *a2, __CFString **a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  theDict = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1953066362, &__p);
    v7 = sub_23EB94960(a1, &__p, &theDict, a4);
    v8 = v7;
    if ((a4 != 1 || v7 != -5) && !v7)
    {
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"zoneName");
        v10 = Value;
        if (!Value || !CFStringGetLength(Value))
        {
          v10 = @"GMT";
        }

        v8 = 0;
        *a3 = v10;
      }

      else
      {
        v8 = 0;
      }
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

void sub_23EBA4708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA4724(uint64_t a1, unsigned __int8 *a2, CFStringRef theString, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v9 = 0;
  if (!theString)
  {
    return 4294960591;
  }

  v7 = sub_23EBD557C(theString, &v9);
  if (!v7)
  {
    sub_23EB8FB78(a2, 1953066362, &__p);
    v7 = sub_23EB8FC04(a1, &__p, v9, a4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v7;
}

void sub_23EBA47C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA47E4(CFDictionaryRef *a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  cf = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1668573549, &__p);
    sub_23EB97374(a1, &__p, &v33, a4);
    sub_23EB8FB78(a2, 1937331060, &__p);
    v8 = sub_23EB94960(a1, &__p, &cf, a4);
    if (!v8)
    {
      if (!cf)
      {
        v8 = 4294967291;
        goto LABEL_12;
      }

      CFRetain(cf);
      Value = CFDictionaryGetValue(cf, @"problems");
      theArray = Value;
      if (Value)
      {
        Count = CFArrayGetCount(Value);
        sub_23EB8FB78(a2, 1937328487, &__p);
        v15 = 0;
        if (sub_23EB94960(a1, &__p, &v37, a4))
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          if (v37)
          {
            CFRetain(v37);
            v17 = CFDictionaryGetValue(v37, @"problems");
            v16 = v17;
            if (v17)
            {
              v15 = CFArrayGetCount(v17);
            }

            else
            {
              v15 = 0;
            }
          }
        }

        v30 = *MEMORY[0x277CBECE8];
        v8 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v35, "{%kO=[%@]}", v10, v11, v12, v13, v14, @"problems");
        if (!v8)
        {
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              sub_23EB6FF14(theArray, &v38, "[*].%kO:code", v19, v20, v21, v22, v23, i);
              v8 = v25;
              if (v25)
              {
                goto LABEL_10;
              }

              if (v15 >= 1)
              {
                v26 = 0;
                while (1)
                {
                  sub_23EB6FF14(v16, &v36, "[*].%kO:code", v19, v20, v21, v22, v23, v26);
                  v8 = v27;
                  if (v27)
                  {
                    goto LABEL_10;
                  }

                  if (v38 == v36)
                  {
                    goto LABEL_32;
                  }

                  if (v15 == ++v26)
                  {
                    goto LABEL_33;
                  }
                }
              }

              v26 = 0;
LABEL_32:
              if (v26 == v15)
              {
LABEL_33:
                if (v33)
                {
                  goto LABEL_34;
                }

                if (v38 > 2002862917)
                {
                  if (v38 == 2002862918)
                  {
                    continue;
                  }

                  v28 = 2002867022;
                }

                else
                {
                  if (v38 == 1869631063)
                  {
                    continue;
                  }

                  v28 = 1886741072;
                }

                if (v38 != v28)
                {
LABEL_34:
                  v8 = sub_23EB6FDFC(v30, v34, "{%kO=%C}", v19, v20, v21, v22, v23, @"code");
                  if (v8)
                  {
                    goto LABEL_10;
                  }
                }
              }
            }
          }

          *a3 = v35;
          if (*(a2 + 23) >= 0)
          {
            v29 = a2;
          }

          else
          {
            v29 = *a2;
          }

          v8 = sub_23EB6FDFC(v30, a1[6], "%ks=%O", v19, v20, v21, v22, v23, v29);
          CFRelease(*a3);
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 4294967292;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  if (v37)
  {
    CFRelease(v37);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA4B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA4B58(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&v15, 0, sizeof(v15));
  v14 = 0;
  if (a3)
  {
    sub_23EB8CCB8(__p, "dwFl");
    sub_23EB90814(a2, __p, &v15);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = sub_23EB97374(a1, &v15, &v14, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      if ((v14 & 2) != 0)
      {
        v10 = MEMORY[0x277CBED10];
      }

      else
      {
        v10 = MEMORY[0x277CBED28];
      }

      *a3 = *v10;
    }
  }

  else
  {
    v9 = 4294967292;
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA4C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA4C78(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  memset(&v13, 0, sizeof(v13));
  v12 = 0;
  sub_23EB8CCB8(__p, "dwFl");
  sub_23EB90814(a2, __p, &v13);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_23EB97374(a1, &v13, &v12, a4);
  if (!v8)
  {
    v12 = v12 & 0xFFFFFFFD | (2 * (*MEMORY[0x277CBED28] != a3));
    sub_23EB8CCB8(__p, "dwFl");
    sub_23EB90814(a2, __p, &v13);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = sub_23EB906B8(a1, &v13, v12, a4);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA4D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA4DD0(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  v11 = 0;
  if (a3)
  {
    sub_23EB8FB78(a2, 1936017004, &__p);
    v7 = sub_23EB97374(a1, &__p, &v11, a4);
    v8 = v7;
    if ((a4 != 1 || v7 != -5) && !v7)
    {
      v9 = MEMORY[0x277CBED28];
      if ((~v11 & 0x10001) != 0)
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

void sub_23EBA4E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA4EC0(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  theData = 0;
  if (a3)
  {
    v8 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      sub_23EB8FB78(a2, 1346918739, &__p);
      v10 = sub_23EB912D0(a1, &__p, &theData, a4);
      v11 = v10;
      if ((a4 != 1 || v10 != -5) && !v10)
      {
        Length = CFDataGetLength(theData);
        if (Length && (BytePtr = CFDataGetBytePtr(theData), Length >= 4))
        {
          v19 = BytePtr;
          v20 = Length >> 2;
          while (1)
          {
            v21 = *v19++;
            v11 = sub_23EB6FDFC(v8, Mutable, "%i", v12, v13, v14, v15, v16, bswap32(v21));
            if (v11)
            {
              break;
            }

            if (!--v20)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          *a3 = Mutable;
          if (*(a2 + 23) >= 0)
          {
            v22 = a2;
          }

          else
          {
            v22 = *a2;
          }

          v11 = sub_23EB6FDFC(v8, *(a1 + 48), "%ks=%O", v12, v13, v14, v15, v16, v22);
          CFRelease(*a3);
        }
      }
    }

    else
    {
      v11 = 4294960568;
    }

    if (theData)
    {
      CFRelease(theData);
      theData = 0;
    }

    if (v11 && Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v11 = 4294967292;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_23EBA5064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA5090(int a1, uint64_t a2, uint64_t a3, std::string *this)
{
  v6 = *(a2 + 23);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = *(a2 + 23);
  }

  v10 = &v8[v9];
  if (!v9)
  {
    v19 = v8;
LABEL_28:
    v22 = v19 - v8;
    if (v19 == v10)
    {
      v16 = -1;
    }

    else
    {
      v16 = v22;
    }

    goto LABEL_31;
  }

  v11 = v8;
  v12 = &v8[v9];
  do
  {
    if (*v11 == 46)
    {
      v13 = 1u;
      while (v13 != 6)
      {
        if (&v11[v13] == v10)
        {
          goto LABEL_18;
        }

        v14 = v11[v13];
        v15 = aVaps_1[v13++];
        if (v14 != v15)
        {
          goto LABEL_10;
        }
      }

      v12 = v11;
    }

LABEL_10:
    ++v11;
  }

  while (v11 != v10);
LABEL_18:
  if (v12 == v10 || (v16 = v12 - v8, v12 - v8 == -1))
  {
    v17 = v8;
    v18 = &v8[v9];
    do
    {
      v19 = v17;
      v20 = v17;
      while (1)
      {
        v21 = *v20++;
        if (v21 == 46)
        {
          break;
        }

        v19 = v20;
        if (v20 == v10)
        {
          v19 = v18;
          goto LABEL_28;
        }
      }

      v17 = v19 + 1;
      v18 = v19;
    }

    while (v20 != v10);
    goto LABEL_28;
  }

LABEL_31:
  std::string::operator=(this, a2);
  if (v16 == -1)
  {
    return 4294967292;
  }

  std::string::basic_string(&v29, this, 0, v16, &v28);
  v23 = v29.__r_.__value_.__r.__words[0];
  v24 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
  sub_23EB8CCB8(&v28, "vaps.[*]");
  v25 = std::string::append(&v28, ".");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  sub_23EB90814(this, &v29, this);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  sub_23EB90814(this, a3, this);
  if (v24 < 0)
  {
    operator delete(v23);
  }

  return 0;
}

void sub_23EBA5288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA52D4(CFDictionaryRef *a1, uint64_t a2, CFMutableDictionaryRef *a3, uint64_t a4)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  if (!a3)
  {
    v9 = 4294967292;
    goto LABEL_9;
  }

  sub_23EB8CCB8(__p, "Enabled");
  v8 = (*(*a1 + 2))(a1, a2, __p, v13);
  v9 = v8;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_9;
    }
  }

  else if (v8)
  {
    goto LABEL_9;
  }

  v9 = sub_23EB94960(a1, v13, a3, a4);
  if (v9 == -5)
  {
    v9 = 0;
    *a3 = *MEMORY[0x277CBED10];
  }

LABEL_9:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  return v9;
}

void sub_23EBA53D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA5408(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  sub_23EB8CCB8(__p, "Enabled");
  v8 = (*(*a1 + 16))(a1, a2, __p, v13);
  v9 = v8;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_9;
    }
  }

  else if (v8)
  {
    goto LABEL_9;
  }

  v9 = sub_23EB8FC04(a1, v13, a3, a4);
  if (!v9)
  {
    if (*MEMORY[0x277CBED10] != a3)
    {
      (*(*a1 + 712))(a1, a2, *MEMORY[0x277CBED10], a4);
    }

    v9 = 0;
  }

LABEL_9:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  return v9;
}

void sub_23EBA5538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA5570(CFDictionaryRef *a1, uint64_t a2, CFMutableDictionaryRef *a3, uint64_t a4)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  if (!a3)
  {
    v9 = 4294967292;
    goto LABEL_9;
  }

  sub_23EB8CCB8(__p, "raNm");
  v8 = (*(*a1 + 2))(a1, a2, __p, v13);
  v9 = v8;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_9;
    }
  }

  else if (v8)
  {
    goto LABEL_9;
  }

  *(a1 + 386) = 1;
  v9 = sub_23EB94960(a1, v13, a3, a4);
  *(a1 + 386) = 0;
  if (v9 == -5)
  {
    v9 = 0;
    *a3 = &stru_285145FE8;
  }

LABEL_9:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  return v9;
}

void sub_23EBA5674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA56AC(_BYTE *a1, unsigned __int8 *a2, const __CFString *a3, uint64_t a4)
{
  memset(&v21, 0, sizeof(v21));
  cf = 0;
  sub_23EB8CCB8(&__p, "Enabled");
  v8 = (*(*a1 + 16))(a1, a2, &__p, &v21);
  v9 = v8;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else if (v8)
  {
    goto LABEL_14;
  }

  if (sub_23EB97588(a1, &v21, &v20, a4) == -5)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v15 = 0;
  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_23EB8CCB8(v13, "raNm");
  v10 = (*(*a1 + 16))(a1, a2, v13, &v21);
  v9 = v10;
  if (v14 < 0)
  {
    operator delete(v13[0]);
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else if (!v10)
  {
LABEL_11:
    v9 = sub_23EB912D0(a1, &v21, &cf, a4);
    if (!v9)
    {
      if (cf)
      {
        a1[386] = 1;
        v9 = sub_23EB8FC04(a1, &v21, a3, a4);
        a1[386] = 0;
        if (!v9)
        {
          sub_23EB8CCB8(v13, "raWM");
          sub_23EB90814(&v21, v13, &v21);
          if (v14 < 0)
          {
            operator delete(v13[0]);
          }

          v9 = sub_23EB97374(a1, &v21, &v15, a4);
          if (!v9)
          {
            if (!a3 || (v15 - 3) > 5 || CFStringCompare(a3, cf, 0) == kCFCompareEqualTo)
            {
              goto LABEL_37;
            }

            sub_23EB8CCB8(v13, "raCr");
            sub_23EB90814(&v21, v13, &v21);
            if (v14 < 0)
            {
              operator delete(v13[0]);
            }

            a1[386] = 1;
            v9 = sub_23EB97710(a1, &v21, &__p, a4);
            a1[386] = 0;
            if (!v9)
            {
              v12 = HIBYTE(v18);
              if (v18 < 0)
              {
                v12 = v17;
              }

              if (!v12)
              {
                goto LABEL_37;
              }

              a1[386] = 1;
              sub_23EB8CCB8(v13, "");
              v9 = sub_23EB97684(a1, &v21, v13, a4);
              if (v14 < 0)
              {
                operator delete(v13[0]);
              }

              a1[386] = 0;
              if (!v9)
              {
                sub_23EB8FB78(a2, 1651722064, &v21);
                v9 = sub_23EB97684(a1, &v21, &__p, a4);
                if (!v9)
                {
LABEL_37:
                  v9 = 0;
                }
              }
            }
          }
        }
      }

      else
      {
        v9 = 4294967291;
      }
    }
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA59F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA5A68(__CFArray **a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v25 = 0;
  valuePtr = 1;
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  if (!a3)
  {
    v9 = 4294967292;
    goto LABEL_20;
  }

  sub_23EB8CCB8(__p, "raWM");
  v8 = (*(*a1 + 2))(a1, a2, __p, v23);
  v9 = v8;
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_20;
    }
  }

  else if (v8)
  {
    goto LABEL_20;
  }

  v10 = sub_23EB97374(a1, v23, &v25, a4);
  v9 = v10;
  if (v10 == -5 || !v10)
  {
    if (v25 == 5)
    {
      v11 = 7;
    }

    else if (v25 == 4)
    {
      v11 = 5;
    }

    else
    {
      v11 = 1;
    }

    valuePtr = v11;
    v12 = *MEMORY[0x277CBECE8];
    v13 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
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

      v9 = sub_23EB6FDFC(v12, a1[6], "%ks=%O", v14, v15, v16, v17, v18, v19);
      CFRelease(*a3);
    }

    else
    {
      v9 = 4294960568;
    }
  }

LABEL_20:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return v9;
}

void sub_23EBA5BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA5C28(CFDictionaryRef *a1, uint64_t a2, CFNumberRef number, uint64_t a4)
{
  valuePtr = 1;
  memset(&__str, 0, sizeof(__str));
  if (!CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    v10 = 4294960553;
    goto LABEL_39;
  }

  v7 = *MEMORY[0x277CBED10];
  if ((valuePtr | 2) != 7)
  {
    theDict = 0;
    sub_23EB8CCB8(&__p, "");
    v11 = (*(*a1 + 2))(a1, a2, &__p, &__str);
    v10 = v11;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v10)
      {
        goto LABEL_39;
      }
    }

    else if (v11)
    {
      goto LABEL_39;
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&__p, &__str, 0, size - 1, &v18);
    if (!sub_23EB94960(a1, &__p, &theDict, a4) && theDict)
    {
      CFDictionaryRemoveValue(theDict, @"raKT");
      CFDictionaryRemoveValue(theDict, @"rTSN");
      CFDictionaryRemoveValue(theDict, @"raEA");
      CFDictionaryRemoveValue(theDict, @"raWE");
      CFDictionaryRemoveValue(theDict, @"raCr");
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v8 = 0;
    goto LABEL_33;
  }

  if (valuePtr == 5)
  {
    v8 = 4;
  }

  else
  {
    v8 = 5;
  }

  sub_23EB8CCB8(&__p, "");
  v9 = (*(*a1 + 2))(a1, a2, &__p, &__str);
  v10 = v9;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v10)
    {
      goto LABEL_39;
    }
  }

  else if (v9)
  {
    goto LABEL_39;
  }

  sub_23EB8CCB8(&__p, "raKT");
  sub_23EB90814(&__str, &__p, &__str);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = sub_23EB906B8(a1, &__str, 3600, a4);
  if (!v10)
  {
    sub_23EB8CCB8(&__p, "rTSN");
    sub_23EB90814(&__str, &__p, &__str);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v10 = sub_23EB8FC04(a1, &__str, v7, a4);
    if (!v10)
    {
      sub_23EB8CCB8(&__p, "raEA");
      sub_23EB90814(&__str, &__p, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v10 = sub_23EB8FC04(a1, &__str, v7, a4);
      if (!v10)
      {
        v7 = *MEMORY[0x277CBED28];
LABEL_33:
        sub_23EB8CCB8(&__p, "raWM");
        sub_23EB90814(&__str, &__p, &__str);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v10 = sub_23EB906B8(a1, &__str, v8, a4);
        if (!v10)
        {
          sub_23EB8CCB8(&__p, "raSk");
          sub_23EB90814(&__str, &__p, &__str);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v10 = sub_23EB8FC04(a1, &__str, v7, a4);
        }
      }
    }
  }

LABEL_39:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_23EBA5FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA6044(CFDictionaryRef *a1, uint64_t a2, CFMutableDictionaryRef *a3, uint64_t a4)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  if (!a3)
  {
    v9 = 4294967292;
    goto LABEL_9;
  }

  sub_23EB8CCB8(__p, "raCr");
  v8 = (*(*a1 + 2))(a1, a2, __p, v13);
  v9 = v8;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_9;
    }
  }

  else if (v8)
  {
    goto LABEL_9;
  }

  *(a1 + 386) = 1;
  v9 = sub_23EB94960(a1, v13, a3, a4);
  *(a1 + 386) = 0;
  if (v9 == -5)
  {
    v9 = 0;
    *a3 = &stru_285145FE8;
  }

LABEL_9:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  return v9;
}

void sub_23EBA6148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA6180(CFDictionaryRef *a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  v25 = 0;
  memset(&__str, 0, sizeof(__str));
  sub_23EB8CCB8(&__p, "raWM");
  v8 = (*(*a1 + 2))(a1, a2, &__p, &__str);
  v9 = v8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  v9 = sub_23EB70FE4(a3, &v29, &v28);
  if (!v9)
  {
    MEMORY[0x23EF1EFD0](v26, v29);
    v11 = sub_23EB97374(a1, &__str, &v30, a4);
    v9 = v11;
    if (v11 != -5)
    {
      if (v11)
      {
        goto LABEL_6;
      }

      if ((v30 & 0xFFFFFFFE) == 4)
      {
        memset(&__p, 0, sizeof(__p));
        theDict[0] = 0;
        theDict[1] = 0;
        v22 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        sub_23EB8CCB8(v16, "raCr");
        sub_23EB90814(&__str, v16, &__str);
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }

        *(a1 + 386) = 1;
        v12 = sub_23EB97710(a1, &__str, theDict, a4);
        v9 = v12;
        *(a1 + 386) = 0;
        if (v12 != -5 && v12)
        {
          goto LABEL_47;
        }

        if (sub_23EB9B1C4(v26, theDict))
        {
          v9 = 0;
LABEL_47:
          if (v18)
          {
            v19 = v18;
            operator delete(v18);
          }

          if (SHIBYTE(v22) < 0)
          {
            operator delete(theDict[0]);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_6;
        }

        sub_23EB8CCB8(v16, "raNm");
        sub_23EB90814(&__str, v16, &__str);
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }

        *(a1 + 386) = 1;
        v9 = sub_23EB97710(a1, &__str, &__p, a4);
        *(a1 + 386) = 0;
        if (v9)
        {
          goto LABEL_47;
        }

        if (sub_23EB9BCD0(v26, &__p.__r_.__value_.__l.__data_, &v18, 0))
        {
          v14 = sub_23EB9AC64("raWE");
          v9 = sub_23EB4EBC4(v14, v18, v19 - v18, 1, &v25);
          if (v9)
          {
            goto LABEL_47;
          }

          sub_23EB8CCB8(v16, "raWE");
          sub_23EB90814(&__str, v16, &__str);
          if (v17 < 0)
          {
            operator delete(v16[0]);
          }

          v15 = sub_23EB8FC04(a1, &__str, v25, a4);
        }

        else
        {
          MEMORY[0x23EF1EFD0](v26, "");
          sub_23EB8CCB8(v16, "raWE");
          sub_23EB90814(&__str, v16, &__str);
          if (v17 < 0)
          {
            operator delete(v16[0]);
          }

          v25 = CFDataCreate(*MEMORY[0x277CBECE8], 0, 0);
          v15 = sub_23EB8FC04(a1, &__str, v25, a4);
        }

        v9 = v15;
        if (!v15)
        {
          sub_23EB8CCB8(v16, "raCr");
          sub_23EB90814(&__str, v16, &__str);
          if (v17 < 0)
          {
            operator delete(v16[0]);
          }

          *(a1 + 386) = 1;
          v9 = sub_23EB97684(a1, &__str, v26, a4);
          *(a1 + 386) = 0;
        }

        goto LABEL_47;
      }

      theDict[0] = 0;
      sub_23EB8CCB8(&__p, "");
      v9 = (*(*a1 + 2))(a1, a2, &__p, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v9)
      {
        goto LABEL_6;
      }

      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      std::string::basic_string(&__p, &__str, 0, size - 1, &v18);
      if (!sub_23EB94960(a1, &__p, theDict, a4) && theDict[0])
      {
        CFDictionaryRemoveValue(theDict[0], @"raWE");
        CFDictionaryRemoveValue(theDict[0], @"raCr");
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v9 = 0;
  }

LABEL_6:
  if (v25)
  {
    CFRelease(v25);
  }

  if (v28)
  {
    free(v28);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  return v9;
}

void sub_23EBA6648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 73) < 0)
  {
    operator delete(*(v35 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA6704(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&v35, 0, sizeof(v35));
  __p = 0;
  v33 = 0;
  v34 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  if (!a3)
  {
    v8 = 4294967292;
    goto LABEL_18;
  }

  sub_23EB8FB78(a2, 1684554343, &v35);
  v8 = sub_23EB97710(a1, &v35, &__p, a4);
  if (!v8)
  {
    v9 = v34 >= 0 ? &__p : __p;
    v8 = sub_23EB7DE5C(v9, 0, &v31 + 1, 0, 0, 0, 0);
    if (!v8)
    {
      sub_23EB8FB78(a2, 1684555118, &v35);
      v8 = sub_23EB97710(a1, &v35, &__p, a4);
      if (!v8)
      {
        v10 = v34 >= 0 ? &__p : __p;
        v8 = sub_23EB7DE5C(v10, 0, &v31, 0, 0, 0, 0);
        if (!v8)
        {
          sub_23EB8FB78(a2, 1735283534, &v35);
          v11 = sub_23EB97710(a1, &v35, &__p, a4);
          if (v11)
          {
            goto LABEL_13;
          }

          if (SHIBYTE(v34) < 0)
          {
            if (!v33)
            {
              goto LABEL_13;
            }

            p_p = __p;
          }

          else
          {
            if (!HIBYTE(v34))
            {
              goto LABEL_13;
            }

            p_p = &__p;
          }

          v8 = sub_23EB7DE5C(p_p, 0, &v29, 0, 0, 0, 0);
          if (v8)
          {
            goto LABEL_18;
          }

LABEL_13:
          v12 = v29;
          if (!v29)
          {
            v8 = sub_23EB7DE5C("255.255.255.0", 0, &v29, 0, 0, 0, 0);
            if (v8)
            {
              goto LABEL_18;
            }

            v11 = 0;
            v12 = v29;
          }

          v31 = _byteswap_uint64(__PAIR64__(v31, HIDWORD(v31)));
          LODWORD(v29) = bswap32(v12);
          v13 = malloc_type_malloc(0x1BuLL, 0x100004077774924uLL);
          v14 = v13;
          v8 = v11;
          if (!v13)
          {
            goto LABEL_18;
          }

          *v13 = 0;
          *(v13 + 1) = 0;
          *(v13 + 23) = 0;
          *(v13 + 2) = 0;
          if (SHIBYTE(v34) < 0)
          {
            *__p = 0;
            v33 = 0;
          }

          else
          {
            LOBYTE(__p) = 0;
            HIBYTE(v34) = 0;
          }

          sub_23EB8FB78(a2, 1735279207, &v35);
          if (!sub_23EB97710(a1, &v35, &__p, a4))
          {
            if (SHIBYTE(v34) < 0)
            {
              if (!v33)
              {
                goto LABEL_30;
              }

              v17 = __p;
            }

            else
            {
              if (!HIBYTE(v34))
              {
                goto LABEL_30;
              }

              v17 = &__p;
            }

            v8 = sub_23EB7DE5C(v17, 0, &v30 + 1, 0, 0, 0, 0);
            if (v8)
            {
              goto LABEL_77;
            }
          }

LABEL_30:
          if (!HIDWORD(v30))
          {
            v8 = sub_23EB7DE5C("172.16.42.2", 0, &v30 + 1, 0, 0, 0, 0);
            if (v8)
            {
              goto LABEL_77;
            }

            v18 = bswap32(HIDWORD(v30)) & v29;
            HIDWORD(v30) = bswap32(v18 & 0xFFFFFF) & 0xFFFFFF00 | ((v18 + (HIBYTE(v31) << 24)) >> 24);
          }

          if (SHIBYTE(v34) < 0)
          {
            *__p = 0;
            v33 = 0;
          }

          else
          {
            LOBYTE(__p) = 0;
            HIBYTE(v34) = 0;
          }

          sub_23EB8FB78(a2, 1735279982, &v35);
          if (!sub_23EB97710(a1, &v35, &__p, a4))
          {
            if (SHIBYTE(v34) < 0)
            {
              if (!v33)
              {
                goto LABEL_44;
              }

              v19 = __p;
            }

            else
            {
              if (!HIBYTE(v34))
              {
                goto LABEL_44;
              }

              v19 = &__p;
            }

            v8 = sub_23EB7DE5C(v19, 0, &v30, 0, 0, 0, 0);
            if (v8)
            {
              goto LABEL_77;
            }
          }

LABEL_44:
          if (!v30)
          {
            v8 = sub_23EB7DE5C("172.16.42.200", 0, &v30, 0, 0, 0, 0);
            if (v8)
            {
              goto LABEL_77;
            }

            LODWORD(v30) = (bswap32(v30) & v29) + (BYTE3(v31) << 24);
          }

          if (SHIBYTE(v34) < 0)
          {
            *__p = 0;
            v33 = 0;
          }

          else
          {
            LOBYTE(__p) = 0;
            HIBYTE(v34) = 0;
          }

          sub_23EB8FB78(a2, 1735283311, &v35);
          if (sub_23EB97710(a1, &v35, &__p, a4))
          {
            goto LABEL_54;
          }

          if (SHIBYTE(v34) < 0)
          {
            if (v33)
            {
              v28 = __p;
              goto LABEL_73;
            }
          }

          else if (HIBYTE(v34))
          {
            v28 = &__p;
LABEL_73:
            v8 = sub_23EB7DE5C(v28, 0, &v29 + 1, 0, 0, 0, 0);
            if (v8)
            {
              goto LABEL_77;
            }

            if (HIDWORD(v29))
            {
LABEL_55:
              sub_23EB765A4(HIDWORD(v30), 0, v14);
              v20 = *MEMORY[0x277CBECE8];
              v21 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v14, 0x8000100u);
              *a3 = v21;
              if (v21)
              {
                if (*(a2 + 23) >= 0)
                {
                  v27 = a2;
                }

                else
                {
                  v27 = *a2;
                }

                v8 = sub_23EB6FDFC(v20, *(a1 + 48), "%ks=%O", v22, v23, v24, v25, v26, v27);
                CFRelease(*a3);
              }

              else
              {
                v8 = 4294960568;
              }

              goto LABEL_77;
            }
          }

LABEL_54:
          v8 = sub_23EB7DE5C("172.16.42.1", 0, &v29 + 1, 0, 0, 0, 0);
          if (!v8)
          {
            goto LABEL_55;
          }

LABEL_77:
          free(v14);
        }
      }
    }
  }

LABEL_18:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA6C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t sub_23EBA6CB8(uint64_t a1, unsigned __int8 *a2, const __CFString *a3, uint64_t a4)
{
  memset(&v36, 0, sizeof(v36));
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v27 = 0;
  v7 = sub_23EB70FE4(a3, &v29, &v28);
  if (v7)
  {
    goto LABEL_12;
  }

  MEMORY[0x23EF1EFD0](__p, v29);
  sub_23EB8FB78(a2, 1684554343, &v36);
  v7 = sub_23EB97710(a1, &v36, &v33, a4);
  if (v7)
  {
    goto LABEL_12;
  }

  v8 = v35 >= 0 ? &v33 : v33;
  v7 = sub_23EB7DE5C(v8, 0, &v32 + 1, 0, 0, 0, 0);
  if (v7)
  {
    goto LABEL_12;
  }

  sub_23EB8FB78(a2, 1684555118, &v36);
  v7 = sub_23EB97710(a1, &v36, &v33, a4);
  if (v7)
  {
    goto LABEL_12;
  }

  v9 = v35 >= 0 ? &v33 : v33;
  v7 = sub_23EB7DE5C(v9, 0, &v32, 0, 0, 0, 0);
  if (v7)
  {
    goto LABEL_12;
  }

  sub_23EB8FB78(a2, 1735283534, &v36);
  if (!sub_23EB97710(a1, &v36, &v33, a4))
  {
    if (SHIBYTE(v35) < 0)
    {
      if (!v34)
      {
        goto LABEL_25;
      }

      v22 = v33;
    }

    else
    {
      if (!HIBYTE(v35))
      {
        goto LABEL_25;
      }

      v22 = &v33;
    }

    v7 = sub_23EB7DE5C(v22, 0, &v30, 0, 0, 0, 0);
    if (v7)
    {
      goto LABEL_12;
    }
  }

LABEL_25:
  v12 = v30;
  if (!v30)
  {
    MEMORY[0x23EF1EFD0](&v33, "255.255.255.0");
    if (v35 >= 0)
    {
      v23 = &v33;
    }

    else
    {
      v23 = v33;
    }

    v7 = sub_23EB7DE5C(v23, 0, &v30, 0, 0, 0, 0);
    if (v7)
    {
      goto LABEL_12;
    }

    sub_23EB8FB78(a2, 1735283534, &v36);
    v7 = sub_23EB97684(a1, &v36, &v33, a4);
    if (v7)
    {
      goto LABEL_12;
    }

    v12 = v30;
  }

  v32 = _byteswap_uint64(__PAIR64__(v32, HIDWORD(v32)));
  v30 = bswap32(v12);
  if (v27 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  sub_23EB7DE5C(v13, 0, &v31 + 1, 0, 0, 0, 0);
  v14 = v32;
  v15 = bswap32(HIDWORD(v31));
  HIDWORD(v31) = v15;
  v16 = v30;
  v17 = HIBYTE(v32);
  v7 = sub_23EB7DE5C("172.16.42.1", 0, &v31, 0, 0, 0, 0);
  if (v7)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v18 = v16 & v15;
  v19 = v18 | (v17 << 24);
  LODWORD(v31) = v30 & v19 | (v31 << 24);
  v20 = malloc_type_malloc(0x1BuLL, 0x100004077774924uLL);
  v10 = v20;
  if (v20)
  {
    *v20 = 0;
    *(v20 + 1) = 0;
    *(v20 + 23) = 0;
    *(v20 + 2) = 0;
    v21 = bswap32(v18 & 0xFFFFFF);
    sub_23EB765A4(v21 & 0xFFFFFF00 | HIBYTE(v19), 0, v20);
    sub_23EB8FB78(a2, 1735279207, &v36);
    sub_23EB8CCB8(v24, v10);
    v7 = sub_23EB97684(a1, &v36, v24, a4);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    if (!v7)
    {
      sub_23EB765A4(v21 | ((v14 | v18) >> 24), 0, v10);
      sub_23EB8FB78(a2, 1735279982, &v36);
      sub_23EB8CCB8(v24, v10);
      v7 = sub_23EB97684(a1, &v36, v24, a4);
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (!v7)
      {
        sub_23EB765A4(bswap32(v31), 0, v10);
        sub_23EB8FB78(a2, 1735283311, &v36);
        sub_23EB8CCB8(v24, v10);
        v7 = sub_23EB97684(a1, &v36, v24, a4);
        if (v25 < 0)
        {
          operator delete(v24[0]);
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_13:
  if (v28)
  {
    free(v28);
  }

  if (v10)
  {
    free(v10);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBA7168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v32 - 65) < 0)
  {
    operator delete(*(v32 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA71D0(__CFArray **a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  valuePtr = 0;
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  if (!a3)
  {
    v9 = 4294967292;
    goto LABEL_16;
  }

  sub_23EB8CCB8(__p, "tlna_limit");
  v8 = (*(*a1 + 2))(a1, a2, __p, v22);
  v9 = v8;
  if (v21 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_16;
    }
  }

  else if (v8)
  {
    goto LABEL_16;
  }

  v10 = sub_23EB97374(a1, v22, &valuePtr, a4);
  v9 = v10;
  if (!v10)
  {
    goto LABEL_10;
  }

  if (v10 == -5)
  {
    valuePtr = 0;
LABEL_10:
    v11 = *MEMORY[0x277CBECE8];
    v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
    *a3 = v12;
    if (v12)
    {
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      v9 = sub_23EB6FDFC(v11, a1[6], "%ks=%O", v13, v14, v15, v16, v17, v18);
      CFRelease(*a3);
    }

    else
    {
      v9 = 4294960568;
    }
  }

LABEL_16:
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  return v9;
}

void sub_23EBA732C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA7364(uint64_t a1, uint64_t a2, const __CFNumber *a3, uint64_t a4)
{
  valuePtr = 0;
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, "tlna_limit");
  v8 = (*(*a1 + 16))(a1, a2, __p, &v13);
  v9 = v8;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
    goto LABEL_11;
  }

  if (CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
  {
    v9 = sub_23EB906B8(a1, &v13, valuePtr, a4);
    if (!v9)
    {
      sub_23EB8CCB8(__p, "tlna_period");
      sub_23EB90814(&v13, __p, &v13);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = sub_23EB906B8(a1, &v13, 1440, a4);
    }
  }

  else
  {
    v9 = 4294960553;
  }

LABEL_11:
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA74A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA74E4(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  sub_23EB8CCB8(__p, "Enabled");
  v8 = (*(*a1 + 16))(a1, a2, __p, v15);
  v9 = v8;
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_12;
    }
  }

  else if (v8)
  {
    goto LABEL_12;
  }

  if (sub_23EB97588(a1, v15, &v14, a4) == -5)
  {
    v9 = 0;
    goto LABEL_12;
  }

  sub_23EB8CCB8(__p, "raCl");
  v10 = (*(*a1 + 16))(a1, a2, __p, v15);
  v9 = v10;
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_12;
    }
  }

  else if (v10)
  {
    goto LABEL_12;
  }

  v9 = sub_23EB8FC04(a1, v15, a3, a4);
LABEL_12:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  return v9;
}

void sub_23EBA7648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA7688(CFDictionaryRef *a1, uint64_t a2, CFMutableDictionaryRef *a3, uint64_t a4)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  if (!a3)
  {
    v9 = 4294967292;
    goto LABEL_9;
  }

  sub_23EB8CCB8(__p, "raCl");
  v8 = (*(*a1 + 2))(a1, a2, __p, v13);
  v9 = v8;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_9;
    }
  }

  else if (v8)
  {
    goto LABEL_9;
  }

  v9 = sub_23EB94960(a1, v13, a3, a4);
  if (v9 == -5)
  {
    v9 = 0;
    *a3 = *MEMORY[0x277CBED10];
  }

LABEL_9:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  return v9;
}

void sub_23EBA7784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA77BC(CFDictionaryRef *a1, uint64_t a2, CFMutableDictionaryRef *a3, uint64_t a4)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    __dst = *a2;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_8:
    v7 = 4294967292;
    goto LABEL_10;
  }

  sub_23EBADCE0(&__dst, *a2, *(a2 + 8));
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (sub_23EB8BE08(a1, 2003390540))
  {
    sub_23EB8CCB8(__p, "pSTA");
    sub_23EB90814(&__dst, __p, &__dst);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB94960(a1, &__dst, a3, a4);
  }

  else
  {
    v7 = 0;
  }

LABEL_10:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBA78A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA78DC(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_23EBADCE0(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
  }

  if (sub_23EB8BE08(a1, 2003390540))
  {
    sub_23EB8CCB8(__p, "pSTA");
    sub_23EB90814(&__dst, __p, &__dst);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB8FC04(a1, &__dst, a3, a4);
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBA79B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA79F0(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v30[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    sub_23EBADCE0(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    *&__p[16] = *(a2 + 16);
  }

  valuePtr = 0;
  if (a3)
  {
    v8 = __p[23];
    if (__p[23] < 0)
    {
      v8 = *&__p[8];
    }

    if (v8 == 4)
    {
      sub_23EB4BD2C(1953645423, __s);
      sub_23EB8CCB8(&v25, __s);
      v9 = std::string::append(&v25, ".");
      v10 = *&v9->__r_.__value_.__l.__data_;
      v26.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v26.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      v11 = std::string::append(&v26, "1stMileUplinkBandwidth");
      v12 = v11->__r_.__value_.__r.__words[0];
      v30[0] = v11->__r_.__value_.__l.__size_;
      *(v30 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
      v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      *__p = v12;
      *&__p[8] = v30[0];
      *&__p[15] = *(v30 + 7);
      __p[23] = v13;
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }

    v14 = sub_23EB97374(a1, __p, &valuePtr, a4);
    v15 = v14;
    if (!v14)
    {
      goto LABEL_17;
    }

    if (v14 == -5)
    {
      valuePtr = 128;
LABEL_17:
      v16 = *MEMORY[0x277CBECE8];
      v17 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
      *a3 = v17;
      if (v17)
      {
        if (*(a2 + 23) >= 0)
        {
          v23 = a2;
        }

        else
        {
          v23 = *a2;
        }

        v15 = sub_23EB6FDFC(v16, *(a1 + 48), "%ks=%O", v18, v19, v20, v21, v22, v23);
        CFRelease(*a3);
      }

      else
      {
        v15 = 4294960568;
      }
    }
  }

  else
  {
    v15 = 4294967292;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  return v15;
}

void sub_23EBA7C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA7C78(uint64_t a1, uint64_t a2, CFNumberRef number, uint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    sub_23EBADCE0(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    *&__p[16] = *(a2 + 16);
  }

  valuePtr = 0;
  if (CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    v7 = __p[23];
    if (__p[23] < 0)
    {
      v7 = *&__p[8];
    }

    if (v7 == 4)
    {
      sub_23EB4BD2C(1953645423, __s);
      sub_23EB8CCB8(&v15, __s);
      v8 = std::string::append(&v15, ".");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v16.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v16.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v16, "1stMileUplinkBandwidth");
      v11 = v10->__r_.__value_.__r.__words[0];
      v20[0] = v10->__r_.__value_.__l.__size_;
      *(v20 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
      v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      *__p = v11;
      *&__p[8] = v20[0];
      *&__p[15] = *(v20 + 7);
      __p[23] = v12;
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    v13 = sub_23EB906B8(a1, __p, valuePtr, a4);
  }

  else
  {
    v13 = 4294960553;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  return v13;
}

void sub_23EBA7E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA7E94(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v30[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    sub_23EBADCE0(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    *&__p[16] = *(a2 + 16);
  }

  valuePtr = 0;
  if (a3)
  {
    v8 = __p[23];
    if (__p[23] < 0)
    {
      v8 = *&__p[8];
    }

    if (v8 == 4)
    {
      sub_23EB4BD2C(1953645423, __s);
      sub_23EB8CCB8(&v25, __s);
      v9 = std::string::append(&v25, ".");
      v10 = *&v9->__r_.__value_.__l.__data_;
      v26.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v26.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      v11 = std::string::append(&v26, "1stMileDownlinkBandwidth");
      v12 = v11->__r_.__value_.__r.__words[0];
      v30[0] = v11->__r_.__value_.__l.__size_;
      *(v30 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
      v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      *__p = v12;
      *&__p[8] = v30[0];
      *&__p[15] = *(v30 + 7);
      __p[23] = v13;
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }

    v14 = sub_23EB97374(a1, __p, &valuePtr, a4);
    v15 = v14;
    if (!v14)
    {
      goto LABEL_17;
    }

    if (v14 == -5)
    {
      valuePtr = 768;
LABEL_17:
      v16 = *MEMORY[0x277CBECE8];
      v17 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
      *a3 = v17;
      if (v17)
      {
        if (*(a2 + 23) >= 0)
        {
          v23 = a2;
        }

        else
        {
          v23 = *a2;
        }

        v15 = sub_23EB6FDFC(v16, *(a1 + 48), "%ks=%O", v18, v19, v20, v21, v22, v23);
        CFRelease(*a3);
      }

      else
      {
        v15 = 4294960568;
      }
    }
  }

  else
  {
    v15 = 4294967292;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  return v15;
}

void sub_23EBA80C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA811C(uint64_t a1, uint64_t a2, CFNumberRef number, uint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    sub_23EBADCE0(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    *&__p[16] = *(a2 + 16);
  }

  valuePtr = 0;
  if (CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    v7 = __p[23];
    if (__p[23] < 0)
    {
      v7 = *&__p[8];
    }

    if (v7 == 4)
    {
      sub_23EB4BD2C(1953645423, __s);
      sub_23EB8CCB8(&v15, __s);
      v8 = std::string::append(&v15, ".");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v16.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v16.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v16, "1stMileDownlinkBandwidth");
      v11 = v10->__r_.__value_.__r.__words[0];
      v20[0] = v10->__r_.__value_.__l.__size_;
      *(v20 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
      v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      *__p = v11;
      *&__p[8] = v20[0];
      *&__p[15] = *(v20 + 7);
      __p[23] = v12;
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    v13 = sub_23EB906B8(a1, __p, valuePtr, a4);
  }

  else
  {
    v13 = 4294960553;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  return v13;
}

void sub_23EBA82DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA8338(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    sub_23EBADCE0(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    *&__p[16] = *(a2 + 16);
  }

  v20 = 0;
  if (a3)
  {
    v7 = __p[23];
    if (__p[23] < 0)
    {
      v7 = *&__p[8];
    }

    if (v7 == 4)
    {
      sub_23EB4BD2C(1953645423, __s);
      sub_23EB8CCB8(&v17, __s);
      v8 = std::string::append(&v17, ".");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v18.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v18.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v18, "flags");
      v11 = v10->__r_.__value_.__r.__words[0];
      v22[0] = v10->__r_.__value_.__l.__size_;
      *(v22 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
      v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      *__p = v11;
      *&__p[8] = v22[0];
      *&__p[15] = *(v22 + 7);
      __p[23] = v12;
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }
    }

    v13 = sub_23EB97374(a1, __p, &v20, a4);
    v14 = v13;
    if (v13 == -5)
    {
      goto LABEL_19;
    }

    if (v13)
    {
      goto LABEL_21;
    }

    if ((v20 & 3) == 0)
    {
LABEL_19:
      v15 = MEMORY[0x277CBED10];
    }

    else
    {
      v15 = MEMORY[0x277CBED28];
    }

    v14 = 0;
    *a3 = *v15;
  }

  else
  {
    v14 = 4294967292;
  }

LABEL_21:
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  return v14;
}

void sub_23EBA8520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA857C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    sub_23EBADCE0(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    *&__p[16] = *(a2 + 16);
  }

  v21 = 0;
  v7 = __p[23];
  if (__p[23] < 0)
  {
    v7 = *&__p[8];
  }

  if (v7 == 4)
  {
    sub_23EB4BD2C(1953645423, __s);
    sub_23EB8CCB8(&v18, __s);
    v8 = std::string::append(&v18, ".");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v19, "flags");
    v11 = v10->__r_.__value_.__r.__words[0];
    v23[0] = v10->__r_.__value_.__l.__size_;
    *(v23 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    *__p = v11;
    *&__p[8] = v23[0];
    *&__p[15] = *(v23 + 7);
    __p[23] = v12;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  v13 = sub_23EB97374(a1, __p, &v21, a4);
  v14 = v13;
  if (v13 == -5)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if (!v13)
  {
    v15 = v21 & 0xFFFFFFFC;
LABEL_17:
    if (*MEMORY[0x277CBED28] == a3)
    {
      v16 = 3;
    }

    else
    {
      v16 = 0;
    }

    v21 = v15 | v16;
    v14 = sub_23EB906B8(a1, __p, v15 | v16, a4);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  return v14;
}

uint64_t sub_23EBA87CC(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  memset(&v25, 0, sizeof(v25));
  v24 = 0;
  if (a3)
  {
    sub_23EB8CCB8(__p, "raMu");
    sub_23EB90814(a2, __p, &v25);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = sub_23EB97374(a1, &v25, &v24, a4);
    v9 = v8;
    if ((a4 != 1 || v8 != -5) && !v8)
    {
      v10 = sub_23EB8BE08(a1, 1935819842);
      v11 = v24;
      if (!v10)
      {
        goto LABEL_21;
      }

      if (v24 > 35)
      {
        if (v24 == 85)
        {
          goto LABEL_19;
        }

        if (v24 != 36)
        {
LABEL_20:
          v11 = 1000;
LABEL_21:
          valuePtr = v11;
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

      else if (v24 != 17)
      {
        if (v24 != 18)
        {
          goto LABEL_20;
        }

LABEL_19:
        v11 = 2000;
        goto LABEL_21;
      }

      v11 = 3000;
      goto LABEL_21;
    }
  }

  else
  {
    v9 = 4294967292;
  }

LABEL_13:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBA8954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA898C(uint64_t a1, unsigned __int8 *a2, const __CFNumber *a3, uint64_t a4)
{
  memset(&v20, 0, sizeof(v20));
  valuePtr = 0;
  sub_23EB8CCB8(__p, "raMd");
  sub_23EB90814(a2, __p, &v20);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_23EB97374(a1, &v20, &valuePtr, a4);
  if (!v8)
  {
    v9 = sub_23EBB6BB0(valuePtr);
    if ((valuePtr & 0xFFFFFFFB) == 3)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr + 4))
    {
      v8 = 4294967293;
      goto LABEL_25;
    }

    v11 = sub_23EB8BE08(a1, 1935819842);
    v12 = HIDWORD(valuePtr);
    if (!v11)
    {
      goto LABEL_22;
    }

    if (SHIDWORD(valuePtr) > 1999)
    {
      if (HIDWORD(valuePtr) == 2000)
      {
        v13 = v10 == 0;
        v14 = 85;
        v15 = 18;
        goto LABEL_19;
      }

      if (HIDWORD(valuePtr) == 3000)
      {
        v13 = v10 == 0;
        v14 = 17;
        v15 = 36;
        goto LABEL_19;
      }
    }

    else if ((HIDWORD(valuePtr) - 1) < 2 || HIDWORD(valuePtr) == 85)
    {
      goto LABEL_22;
    }

    v13 = v10 == 0;
    v14 = 2;
    v15 = 6;
LABEL_19:
    if (v13)
    {
      v12 = v14;
    }

    else
    {
      v12 = v15;
    }

LABEL_22:
    sub_23EB8CCB8(__p, "raMu");
    sub_23EB90814(a2, __p, &v20);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = sub_23EB906B8(a1, &v20, v12, a4);
  }

LABEL_25:
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA8B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA8B70(uint64_t a1, unsigned __int8 *a2, CFNumberRef number, uint64_t a4)
{
  memset(&v20, 0, sizeof(v20));
  valuePtr = 0;
  v18 = 0;
  v17 = 0;
  if (!CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    v8 = 4294967293;
    goto LABEL_45;
  }

  v7 = valuePtr;
  if (!valuePtr)
  {
    v8 = 4294967284;
    goto LABEL_45;
  }

  if (sub_23EB8BE08(a1, 1935819842))
  {
    sub_23EB8CCB8(__p, "raMd");
    sub_23EB90814(a2, __p, &v20);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = sub_23EB97464(a1, &v20, &v18, a4);
    if (v8)
    {
      goto LABEL_45;
    }

    if (sub_23EBB6BB0(v18))
    {
      v8 = sub_23EB973DC(a1, &v20, SHIWORD(v7), a4);
      if (v8)
      {
        goto LABEL_45;
      }

      v7 >>= 16;
    }

    else
    {
      if ((sub_23EBB6BD8(v18) & 1) == 0)
      {
        LOWORD(v7) = v18;
        goto LABEL_19;
      }

      v8 = sub_23EB973DC(a1, &v20, v7, a4);
      if (v8)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    sub_23EB8CCB8(__p, "raMd");
    sub_23EB90814(a2, __p, &v20);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = HIWORD(v7);
    if (v7 < 0x10000)
    {
      LOWORD(v9) = v7;
    }

    v8 = sub_23EB973DC(a1, &v20, v9, a4);
    if (v8)
    {
      goto LABEL_45;
    }

    LOWORD(v7) = valuePtr;
  }

  v18 = v7;
LABEL_19:
  if (!sub_23EBB6BB0(v7))
  {
    sub_23EB8CCB8(__p, "raWC");
    sub_23EB90814(a2, __p, &v20);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = sub_23EB8FC04(a1, &v20, *MEMORY[0x277CBED10], a4);
    goto LABEL_33;
  }

  v10 = sub_23EB9A90C(a1, @"ht40_5GHz");
  sub_23EB8CCB8(__p, "raWC");
  sub_23EB90814(a2, __p, &v20);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *MEMORY[0x277CBED10];
  if (v10)
  {
    v12 = *MEMORY[0x277CBED28];
  }

  else
  {
    v12 = *MEMORY[0x277CBED10];
  }

  v8 = sub_23EB8FC04(a1, &v20, v12, a4);
  if (!v8)
  {
    if (sub_23EB8BE08(a1, 1381123655))
    {
LABEL_34:
      sub_23EB8CCB8(__p, "raMu");
      sub_23EB90814(a2, __p, &v20);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = sub_23EB97374(a1, &v20, &v17, a4);
      if (!v8)
      {
        if (sub_23EB90740(a1, &v20, v17, 1))
        {
          v8 = 0;
        }

        else
        {
          v8 = sub_23EB9AA24(a1, &v20, &v17);
          if (!v8)
          {
            v8 = sub_23EB906B8(a1, &v20, v17, a4);
          }
        }
      }

      goto LABEL_45;
    }

    sub_23EB8CCB8(__p, "raRo");
    sub_23EB90814(a2, __p, &v20);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = sub_23EB8FC04(a1, &v20, v11, a4);
LABEL_33:
    v8 = v13;
    if (v13)
    {
      goto LABEL_45;
    }

    goto LABEL_34;
  }

LABEL_45:
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA8F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA8F64(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  memset(&v36, 0, sizeof(v36));
  v35 = 0;
  if (!a3)
  {
    goto LABEL_35;
  }

  if (sub_23EB8BE08(a1, 1935819842))
  {
    if (sub_23EB8F428(a1, 0) == 2)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 1;
      while (1)
      {
        v12 = v11;
        MEMORY[0x23EF1EFD0](&v36, "WiFi.radios.[*].");
        snprintf(__str, 0x10uLL, "%ld", v9);
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v36;
        }

        else
        {
          v13 = v36.__r_.__value_.__r.__words[0];
        }

        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v36.__r_.__value_.__l.__size_;
        }

        v15 = v13 + size;
        if (size >= 1)
        {
          v16 = v13;
          do
          {
            v17 = memchr(v16, 42, size);
            if (!v17)
            {
              break;
            }

            if (*v17 == 42)
            {
              goto LABEL_17;
            }

            v16 = (v17 + 1);
            size = v15 - v16;
          }

          while (v15 - v16 > 0);
        }

        v17 = v15;
LABEL_17:
        if (v17 == v15)
        {
          v18 = -1;
        }

        else
        {
          v18 = v17 - v13;
        }

        std::string::replace(&v36, v18, 1uLL, __str);
        sub_23EB8CCB8(__p, "raMd");
        sub_23EB90814(&v36, __p, &v36);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }

        v19 = sub_23EB97464(a1, &v36, &v35, a4);
        v20 = v19;
        if (a4 == 1 && v19 == -5)
        {
          goto LABEL_48;
        }

        if (v19)
        {
          goto LABEL_48;
        }

        if (sub_23EBB6BB0(v35))
        {
          v10 = v35;
        }

        else if (sub_23EBB6BD8(v35))
        {
          v8 = v35;
        }

        else
        {
          if (sub_23EB8BE08(a1, 825319779))
          {
            v10 = 10;
          }

          else
          {
            v10 = 5;
          }

          v8 = 6;
        }

        v11 = 0;
        v9 = 1;
        if ((v12 & 1) == 0)
        {
          v21 = v8 + (v10 << 16);
          goto LABEL_42;
        }
      }
    }

LABEL_35:
    v20 = 4294967292;
    goto LABEL_48;
  }

  sub_23EB8CCB8(__p, "raMd");
  sub_23EB90814(a2, __p, &v36);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = sub_23EB97464(a1, &v36, &v35, a4);
  v20 = v22;
  if ((a4 != 1 || v22 != -5) && !v22)
  {
    v21 = v35;
LABEL_42:
    valuePtr = v21;
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

      v20 = sub_23EB6FDFC(v23, *(a1 + 48), "%ks=%O", v25, v26, v27, v28, v29, v30);
      CFRelease(*a3);
    }

    else
    {
      v20 = 4294960568;
    }
  }

LABEL_48:
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  return v20;
}

void sub_23EBA926C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

uint64_t sub_23EBA92B4(uint64_t a1, unsigned __int8 *a2, const __CFString *a3, uint64_t a4)
{
  memset(&v11, 0, sizeof(v11));
  sub_23EB8FB78(a2, 1937068114, &v11);
  std::string::append(&v11, ".");
  sub_23EB8CCB8(__p, "enabled");
  sub_23EB90814(&v11, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB8FC04(a1, &v11, a3, a4);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBA9374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_23EBA93AC(CFDictionaryRef *a1, unsigned __int8 *a2, CFMutableDictionaryRef *a3, uint64_t a4)
{
  memset(&v11, 0, sizeof(v11));
  if (a3)
  {
    sub_23EB8FB78(a2, 1937068114, &v11);
    std::string::append(&v11, ".");
    sub_23EB8CCB8(__p, "enabled");
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
    v7 = 4294967292;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBA9494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_23EBA94D4(CFDictionaryRef *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_23EBA33E0(__s, 0x11uLL, 0);
  sub_23EB8CCB8(&v17, __s);
  sub_23EBA33E0(__s, 0x11uLL, 1);
  sub_23EB8CCB8(&v16, __s);
  v14 = 0;
  v15 = 0;
  if (a3)
  {
    if (!sub_23EB8BE08(a1, 1935819842) || sub_23EB8F428(a1, 0) < 2)
    {
      v10 = MEMORY[0x277CBED10];
LABEL_16:
      v8 = 0;
      *a3 = *v10;
      goto LABEL_18;
    }

    sub_23EB8CCB8(__p, "raNm");
    sub_23EB90814(&v17, __p, &v17);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_23EB8CCB8(__p, "raNm");
    sub_23EB90814(&v16, __p, &v16);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB94960(a1, &v17, &v15, a4);
    v8 = v7;
    if ((a4 != 1 || v7 != -5) && !v7)
    {
      v8 = sub_23EB94960(a1, &v16, &v14, a4);
      if (!v8)
      {
        v9 = CFStringCompare(v15, v14, 0);
        v10 = MEMORY[0x277CBED28];
        if (v9 == kCFCompareEqualTo)
        {
          v10 = MEMORY[0x277CBED10];
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
    v8 = 4294967292;
  }

LABEL_18:
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

void sub_23EBA96B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA9710(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  memset(&v12, 0, sizeof(v12));
  if (!a3)
  {
    return 4294967292;
  }

  v7 = sub_23EB9C020(a1, 0);
  sub_23EBA33E0(v13, 0x11uLL, v7);
  MEMORY[0x23EF1EFD0](&v12, v13);
  sub_23EB8CCB8(__p, "raNm");
  sub_23EB90814(&v12, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 386) = 1;
  v8 = sub_23EB94960(a1, &v12, a3, a4);
  *(a1 + 386) = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA9814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_23EBA984C(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  memset(&v20, 0, sizeof(v20));
  v19 = 0;
  v17 = 0;
  cf = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v7 = sub_23EB8F4AC(a1, 0);
  sub_23EBA33E0(v21, 0x11uLL, v7);
  MEMORY[0x23EF1EFD0](&v20, v21);
  sub_23EB8CCB8(__p, "raNm");
  sub_23EB90814(&v20, __p, &v20);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_23EB94960(a1, &v20, &v17, a4);
  if (!v8)
  {
    v9 = sub_23EB9C020(a1, 0);
    sub_23EBA33E0(v21, 0x11uLL, v9);
    MEMORY[0x23EF1EFD0](&v20, v21);
    sub_23EB8CCB8(__p, "raNm");
    sub_23EB90814(&v20, __p, &v20);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = sub_23EB94960(a1, &v20, &cf, a4);
    if (!v8)
    {
      if (!cf)
      {
        v8 = 4294967291;
        goto LABEL_9;
      }

      CFRetain(cf);
      *(a1 + 386) = 1;
      if (!CFStringGetLength(a3))
      {
        a3 = v17;
      }

      v8 = sub_23EB8FC04(a1, &v20, a3, a4);
      *(a1 + 386) = 0;
      if (!v8)
      {
        sub_23EB8CCB8(__p, "raWM");
        sub_23EB90814(&v20, __p, &v20);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        v8 = sub_23EB97374(a1, &v20, &v19, a4);
        if (!v8 && a3 && (v19 - 3) <= 5)
        {
          if (CFStringCompare(a3, cf, 0) == kCFCompareEqualTo)
          {
            goto LABEL_35;
          }

          sub_23EB8CCB8(__p, "raCr");
          sub_23EB90814(&v20, __p, &v20);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }

          *(a1 + 386) = 1;
          v8 = sub_23EB97710(a1, &v20, &v14, a4);
          *(a1 + 386) = 0;
          if (v8)
          {
            goto LABEL_7;
          }

          v11 = HIBYTE(v16);
          if (v16 < 0)
          {
            v11 = v15;
          }

          if (v11)
          {
            *(a1 + 386) = 1;
            sub_23EB8CCB8(__p, "");
            v8 = sub_23EB97684(a1, &v20, __p, a4);
            if (v13 < 0)
            {
              operator delete(__p[0]);
            }

            *(a1 + 386) = 0;
            if (!v8)
            {
              sub_23EB8FB78(&v20, 1651725131, &v20);
              v8 = sub_23EB97684(a1, &v20, &v14, a4);
            }
          }

          else
          {
LABEL_35:
            v8 = 0;
          }
        }
      }
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_9:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBA9B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBA9C00(CFDictionaryRef *a1, uint64_t a2, CFNumberRef *a3, uint64_t a4)
{
  cf = 0;
  if (!a3)
  {
    return 4294967292;
  }

  v7 = sub_23EB8F4AC(a1, 0);
  result = sub_23EBA9CF4(a1, "raMA", v7, &cf, a4);
  if ((a4 != 1 || result != -5) && !result)
  {
    if (cf && (v9 = CFGetTypeID(cf), v9 == CFStringGetTypeID()) && CFStringGetLength(cf) && CFStringCompare(cf, @"00:00:00:00:00:00", 0))
    {
      v10 = cf;
      *a3 = cf;
    }

    else
    {
      v10 = *a3;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return sub_23EB8C68C(a1, 1918979393, a3, a4);
    }
  }

  return result;
}

uint64_t sub_23EBA9CF4(CFDictionaryRef *a1, char *a2, uint64_t a3, CFMutableDictionaryRef *a4, uint64_t a5)
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

    v9 = sub_23EB94960(a1, &v13, a4, a5);
    if (v9 == -5)
    {
      v9 = 0;
      *a4 = &stru_285145FE8;
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