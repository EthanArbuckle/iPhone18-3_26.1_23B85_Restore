uint64_t sub_23EBB5908(uint64_t a1, CFDictionaryRef theDict)
{
  memset(&v15, 0, sizeof(v15));
  memset(&v14, 0, sizeof(v14));
  v2 = 4294967292;
  if (a1 && theDict && CFDictionaryGetCount(theDict))
  {
    sub_23EB8CD70(*(a1 + 8), 0, v5, v6, v7, v8, v9, &__str);
    std::string::operator=(&v15, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v14, (*(a1 + 8) + 120));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v15;
    }

    else
    {
      v10 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v14;
    }

    else
    {
      v11 = v14.__r_.__value_.__r.__words[0];
    }

    v2 = sub_23EB4DD6C(*(a1 + 16), 4u, 60000, v10, v11, 0, @"wsc.authorize", "%##O", theDict);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_23EBB5A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_23EBB5A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v15, 0, sizeof(v15));
  memset(&v14, 0, sizeof(v14));
  v8 = 4294967292;
  if (a1 && a2)
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
      v10 = &v15;
    }

    else
    {
      v10 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v14;
    }

    else
    {
      v11 = v14.__r_.__value_.__r.__words[0];
    }

    v8 = sub_23EB4DD6C(*(a1 + 16), 4u, 60000, v10, v11, 0, @"diskd.disconnectAll", "%kO=%O", @"message");
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBB5B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB5BB4(uint64_t a1, CFDictionaryRef theDict)
{
  memset(&v15, 0, sizeof(v15));
  memset(&v14, 0, sizeof(v14));
  v2 = 4294967292;
  if (a1 && theDict && CFDictionaryGetCount(theDict))
  {
    sub_23EB8CD70(*(a1 + 8), 0, v5, v6, v7, v8, v9, &__str);
    std::string::operator=(&v15, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v14, (*(a1 + 8) + 120));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v15;
    }

    else
    {
      v10 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v14;
    }

    else
    {
      v11 = v14.__r_.__value_.__r.__words[0];
    }

    v2 = sub_23EB4DD6C(*(a1 + 16), 4u, 60000, v10, v11, 0, @"diskd.eraseDisk", "%##O", theDict);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_23EBB5CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_23EBB5D0C(uint64_t a1, CFDictionaryRef theDict)
{
  memset(&v15, 0, sizeof(v15));
  memset(&v14, 0, sizeof(v14));
  v2 = 4294967292;
  if (a1 && theDict && CFDictionaryGetCount(theDict))
  {
    sub_23EB8CD70(*(a1 + 8), 0, v5, v6, v7, v8, v9, &__str);
    std::string::operator=(&v15, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v14, (*(a1 + 8) + 120));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v15;
    }

    else
    {
      v10 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v14;
    }

    else
    {
      v11 = v14.__r_.__value_.__r.__words[0];
    }

    v2 = sub_23EB4DD6C(*(a1 + 16), 4u, 60000, v10, v11, 0, @"diskd.archiveDisk", "%##O", theDict);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_23EBB5E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_23EBB5E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      v10 = &v16;
    }

    else
    {
      v10 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v15;
    }

    else
    {
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    v12 = sub_23EB4DD6C(*(a1 + 16), 4u, 60000, v10, v11, 0, a2, "", 0);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v12 = 4294967292;
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_23EBB5F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_23EBB5FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

    v11 = sub_23EB4DD6C(*(a1 + 16), 4u, 60000, v9, v10, 0, @"acpd.checkConnection", "", 0);
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

void sub_23EBB60A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_23EBB60EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, sizeof(v16));
  v4 = 4294967292;
  if (a2 && a1 && a3)
  {
    if (sub_23EB8BE08(*(a1 + 8), 1919052402))
    {
      sub_23EB8CD70(*(a1 + 8), 0, v7, v8, v9, v10, v11, &__str);
      std::string::operator=(&v17, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      std::string::operator=(&v16, (*(a1 + 8) + 120));
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

      v4 = sub_23EB4DD6C(*(a1 + 16), 4u, 60000, v12, v13, a4, @"remoteBonjour.browse", "%kO=%O%kO=%O", @"domain");
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v4 = 4294960561;
    }
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_23EBB6234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB627C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_23EB8CD70(*(a1 + 8), 0, a4, a5, a6, a7, a8, &v22);
  v12 = *(a1 + 8);
  if (*(v12 + 143) < 0)
  {
    sub_23EBADCE0(__p, *(v12 + 120), *(v12 + 128));
  }

  else
  {
    *__p = *(v12 + 120);
    v21 = *(v12 + 136);
  }

  v15 = *(a1 + 24);
  v14 = (a1 + 24);
  v13 = v15;
  if (v15)
  {
    sub_23EB4E93C(v13);
    *v14 = 0;
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v22;
  }

  else
  {
    v16 = v22.__r_.__value_.__r.__words[0];
  }

  if (v21 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = sub_23EB4E684(v14, v16, v17, 0, a2, a3, a4);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v18;
}

void sub_23EBB636C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23EBB63A0(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

void sub_23EBB63B4(char *__s)
{
  sub_23EB8CCB8(__p, __s);
  sub_23EB9B144(__p);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23EBB63FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB6418(uint64_t a1)
{
  result = sub_23EBB26A0(a1);
  if (!result)
  {
    if (!a1 || (result = sub_23EB8BF4C(*(a1 + 8)), !result) && (result = sub_23EB9B4DC(*(a1 + 8)), !result))
    {

      return sub_23EBB1F5C(a1);
    }
  }

  return result;
}

uint64_t sub_23EBB647C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294960591;
  }

  sub_23EB4BD2C(a2, v12);
  if (!sub_23EB8F5B4(a2))
  {
    if ((sub_23EB91370(*(a1 + 8), a2) & 1) == 0)
    {
      return sub_23EB9ABA8(*(a1 + 8), v12);
    }

    return 0;
  }

  memset(&__p, 0, sizeof(__p));
  v4 = sub_23EB8F428(*(a1 + 8), 0);
  if (v4 <= 0)
  {
    return 0;
  }

  v5 = 0;
  v6 = v4 - 1;
  do
  {
    sub_23EBA33E0(v13, 0x11uLL, v5);
    MEMORY[0x23EF1EFD0](&__p, v13);
    sub_23EB8FB78(&__p, a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v8 = sub_23EB9ABA8(*(a1 + 8), p_p);
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 == v5;
    }

    ++v5;
  }

  while (!v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

uint64_t sub_23EBB65F0(uint64_t result)
{
  if (result)
  {
    return sub_23EB9C020(*(result + 8), 0);
  }

  return result;
}

uint64_t sub_23EBB6604(uint64_t result)
{
  if (result)
  {
    return sub_23EB8F4AC(*(result + 8), 0);
  }

  return result;
}

uint64_t sub_23EBB6618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

    v11 = sub_23EB4DD6C(*(a1 + 16), 4u, 60000, v9, v10, 0, @"dhcp.client.lease.action", "%kO=%O", @"action");
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

void sub_23EBB6720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB6768(uint64_t a1)
{
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  sub_23EB8CCB8(&__p, "WiFi.radios.[*].");
  if (!a1)
  {
    v7 = 4294967292;
    goto LABEL_8;
  }

  v7 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v17, "{%kO=[%@]}", v2, v3, v4, v5, v6, @"problems");
  if (!v7)
  {
    v7 = sub_23EB89D74(*(a1 + 8), 1464626795, &v18, 0);
    if (!v7)
    {
      if (sub_23EB8BE08(*(a1 + 8), 1147761477))
      {
        v12 = 0;
        v7 = sub_23EB89D74(*(a1 + 8), 2002867012, &v12, 0);
        v8 = (v7 | ~v12 & 0xF) == 0;
        if (v7)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = 0;
      }

      v7 = sub_23EB89D74(*(a1 + 8), 2002864494, &v19 + 4, 0);
      if (!v7)
      {
        sub_23EB8FB78(&__p, 1651726157, &__p);
        v7 = sub_23EB97374(*(a1 + 8), &__p, &v18 + 4, 0);
        if (!v7)
        {
          sub_23EB8FB78(&__p, 1651723853, &__p);
          v7 = sub_23EB97374(*(a1 + 8), &__p, &v19, 0);
          if (!v7)
          {
            if (v8 || HIDWORD(v19) != 16 || (HIDWORD(v18) - 4) > 0xFFFFFFFD || v19 == 1 || v18 || (v7 = sub_23EBB04E4(v16, 2002865740), !v7))
            {
              v7 = sub_23EB975E8(*(a1 + 8), 2002866767, &v20, 0);
              if (!v7)
              {
                if (!v20 || (v7 = sub_23EBB04E4(v16, 2002866794), !v7))
                {
                  v7 = sub_23EB89D74(*(a1 + 8), 1937327724, &v15, 0);
                  if (!v7)
                  {
                    v10 = v15;
                    if ((v15 & 0x40) != 0)
                    {
                      v7 = sub_23EBB04E4(v16, 1668573549);
                      if (v7)
                      {
                        goto LABEL_8;
                      }

                      v10 = v15;
                    }

                    if ((v10 & 0x2000) == 0 || (v7 = sub_23EBB04E4(v16, 1936680564), !v7))
                    {
                      v11 = sub_23EB4BD2C(1937331060, v14);
                      v7 = sub_23EBB3D34(a1, v11, v17);
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

LABEL_8:
  if (v17)
  {
    CFRelease(v17);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBB6A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EBB6A50(const __CFString *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      v27 = 0;
      v26 = 0;
      sub_23EB6FF14(a1, &v27, "%ks:int", a4, a5, a6, a7, a8, "raWM");
      if (!v15)
      {
        sub_23EB6FF14(a1, &v26, "%ks:BOOL", v10, v11, v12, v13, v14, "raEA");
        if (!v21)
        {
          v25 = 0;
          sub_23EB6FF14(a1, &v25, "%ks:BOOL", v16, v17, v18, v19, v20, "rTSN");
          if (v27 <= 2)
          {
            switch(v27)
            {
              case 0:
                v22 = 1;
                goto LABEL_24;
              case 1:
                v22 = 2;
                goto LABEL_24;
              case 2:
                v22 = 3;
LABEL_24:
                *a2 = v22;
                return;
            }

LABEL_17:
            v22 = 0;
            goto LABEL_24;
          }

          switch(v27)
          {
            case 3:
              if (!v25)
              {
                v23 = v26 == 0;
                v22 = 11;
                v24 = 6;
                goto LABEL_22;
              }

              break;
            case 4:
              if (!v25)
              {
                v23 = v26 == 0;
                v22 = 10;
                v24 = 5;
                goto LABEL_22;
              }

              break;
            case 5:
              v23 = v26 == 0;
              v22 = 12;
              v24 = 7;
LABEL_22:
              if (v23)
              {
                v22 = v24;
              }

              goto LABEL_24;
            default:
              goto LABEL_17;
          }

          v22 = 8;
          goto LABEL_24;
        }
      }
    }
  }
}

uint64_t sub_23EBB6BB0(unsigned int a1)
{
  v1 = 0x530u >> a1;
  if (a1 > 0xA)
  {
    LOBYTE(v1) = 0;
  }

  if (HIWORD(a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  return v2 & 1;
}

uint64_t sub_23EBB6BD8(unsigned int a1)
{
  if (a1 >= 0x10000 && a1)
  {
    LOBYTE(v1) = 1;
  }

  else
  {
    v1 = 0xCEu >> a1;
    if ((a1 & 0xFFF8) != 0)
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_23EBB6C08(int a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v7 = 0;
    *a2 = 0;
    if (sub_23EBB4964(a1, &v7))
    {
      return 0;
    }

    v5 = v7;
    if (!v7)
    {
      return 0;
    }

    *a2 = *(v7 + 20);
    if (*(v5 + 12) == 2)
    {
      return 3;
    }

    v6 = *(v5 + 28) - 2;
    if (v6 > 0xD)
    {
      return 0;
    }

    else
    {
      return dword_23EC21F58[v6];
    }
  }

  return result;
}

uint64_t sub_23EBB6CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  if (!a1)
  {
    return 4294960591;
  }

  v9 = sub_23EBB4EE8(a1, 1633899078, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    v21 = 0;
    v10 = sub_23EB983A0(*(a1 + 8), &cf);
    if (!v10)
    {
      if (!cf)
      {
        return 4294960568;
      }

      v10 = sub_23EBAF7F8(a1, &v21);
      if (!v10)
      {
        if (!v21)
        {
          v9 = 4294960568;
LABEL_5:
          if (cf)
          {
            CFRelease(cf);
          }

          return v9;
        }

        v9 = sub_23EB994F4(*(a1 + 8), v21, cf, 1);
        if (v21)
        {
          CFRelease(v21);
          v21 = 0;
        }

        if (v9)
        {
          goto LABEL_5;
        }

        v12 = *(a1 + 8);
        sub_23EB8CCB8(&__str, "public");
        std::string::operator=(v12 + 5, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v10 = sub_23EBB4EE8(a1, 1633899074, v13, v14, v15, v16, v17, v18);
      }
    }

    v9 = v10;
    goto LABEL_5;
  }

  return v9;
}

void sub_23EBB6DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EBB6DD4(int a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    if (a3)
    {
      if (*a3)
      {
        if (*(a3 + 24))
        {
          v38 = 0;
          theString1 = 0;
          v36 = 0;
          v37 = 0;
          theArray = 0;
          sub_23EB6FF14(a2, &theString1, "%ks.%ks", a4, a5, a6, a7, a8, "ACPRemoteBonjour");
          if (!v10)
          {
            if (theString1)
            {
              if (CFStringCompare(theString1, *a3, 0) == kCFCompareEqualTo)
              {
                sub_23EB6FF14(a2, &v36, "%ks.%ks", v11, v12, v13, v14, v15, "ACPRemoteBonjour");
                if (!v21)
                {
                  if (v36)
                  {
                    sub_23EB6FF14(v36, &v38, "%ks.%ks", v16, v17, v18, v19, v20, "txt");
                    if (!v27)
                    {
                      if (v38)
                      {
                        if (!*(a3 + 16) || ((v34 = 0, sub_23EB6FF14(v36, &v34, "%ks.%ks", v22, v23, v24, v25, v26, "txt"), v28 == -6727) || !v28 && v34) && (sub_23EBAFDF4(v38, *(a3 + 16)) & 1) == 0 && (!v34 || (sub_23EBAFDF4(v34, *(a3 + 16)) & 1) == 0))
                        {
                          if (*(a3 + 8))
                          {
                            sub_23EB6FF14(v36, &theArray, "%ks", v22, v23, v24, v25, v26, "services");
                            if (!v29)
                            {
                              if (theArray)
                              {
                                Count = CFArrayGetCount(theArray);
                                if (Count >= 1)
                                {
                                  v31 = Count;
                                  for (i = 0; i != v31; ++i)
                                  {
                                    sub_23EB6FF14(theArray, &v37, "[*].%ks", v22, v23, v24, v25, v26, i);
                                    if (v33 || !v37)
                                    {
                                      break;
                                    }

                                    if (CFStringCompare(v37, *(a3 + 8), 0) == kCFCompareEqualTo)
                                    {
                                      goto LABEL_30;
                                    }
                                  }
                                }
                              }
                            }
                          }

                          else
                          {
LABEL_30:
                            sub_23EB6FDFC(*MEMORY[0x277CBECE8], *(a3 + 24), "%kO=%O", v22, v23, v24, v25, v26, v38);
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
    }
  }
}

uint64_t sub_23EBB7004(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, unsigned int a5, int a6, void *a7)
{
  v40 = 0;
  cf = 0;
  v42 = 0;
  v39 = 0;
  v7 = 4294960591;
  if (!a1 || !a2 || !a3 || !a7)
  {
    goto LABEL_9;
  }

  if (!sub_23EB8BE08(*(a1 + 8), 1919052402))
  {
    v7 = 4294960561;
    goto LABEL_9;
  }

  if (pthread_main_np())
  {
    v7 = 4294960593;
    goto LABEL_9;
  }

  if (a6)
  {
    v16 = sub_23EB4BD2C(1651716685, v43);
    v7 = sub_23EBB3E20(a1, v16, &v39);
    if (v7)
    {
      goto LABEL_9;
    }

    v17 = v39;
  }

  else
  {
    v17 = 0;
    v39 = 0;
  }

  v18 = malloc_type_calloc(1uLL, 0x20uLL, 0x60040FAD0F902uLL);
  if (!v18)
  {
LABEL_31:
    v7 = 4294960568;
    goto LABEL_9;
  }

  v19 = v18;
  *v18 = 0;
  v18[2] = v17;
  if (v17)
  {
    CFRetain(v17);
  }

  *(v19 + 8) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  v20 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v19 + 24) = Mutable;
  if (!Mutable)
  {
    sub_23EBB72F0(v19);
    goto LABEL_31;
  }

  v27 = sub_23EB6F348(v20, &v42, "{%ks={%ks={}}}", v22, v23, v24, v25, v26, "filters");
  if (v27)
  {
    goto LABEL_27;
  }

  v27 = sub_23EBB627C(a1, v42, sub_23EBB6DD4, v19, v28, v29, v30, v31);
  if (v27)
  {
    goto LABEL_27;
  }

  v27 = sub_23EBB60EC(a1, a2, a3, &cf);
  if (v27)
  {
    goto LABEL_27;
  }

  if (!cf)
  {
    v7 = 4294960569;
    goto LABEL_28;
  }

  sub_23EB6FF14(cf, &v40, "%ks", v32, v33, v34, v35, v36, "uuid");
  if (v27)
  {
    goto LABEL_27;
  }

  if (v40)
  {
    v27 = sub_23EBB72A0(v19, v40);
    if (!v27)
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      sleep(a5);
      v37 = *(a1 + 24);
      if (v37)
      {
        sub_23EB4E93C(v37);
        *(a1 + 24) = 0;
      }

      *a7 = 0;
      v38 = *(v19 + 24);
      if (v38)
      {
        *a7 = v38;
        CFRetain(v38);
        v7 = 0;
        goto LABEL_28;
      }

      goto LABEL_43;
    }

LABEL_27:
    v7 = v27;
    goto LABEL_28;
  }

LABEL_43:
  v7 = 4294960568;
LABEL_28:
  sub_23EBB72F0(v19);
  if (v42)
  {
    CFRelease(v42);
    v42 = 0;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return v7;
}

uint64_t sub_23EBB72A0(const void **a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = cf;
  CFRetain(cf);
  return 0;
}

void sub_23EBB72F0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
    a1[2] = 0;
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
    a1[1] = 0;
  }

  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t sub_23EBB7360(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, unsigned int a5, int a6, CFTypeRef *a7)
{
  v22 = 0;
  v23 = 0;
  cf = 0;
  v7 = 4294960591;
  if (a1 && a2 && a3 && a7)
  {
    if (pthread_main_np())
    {
      v7 = 4294960593;
      goto LABEL_9;
    }

    v19 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "[%C%C%C]", v14, v15, v16, v17, v18, 1466517097);
    if (v19)
    {
      goto LABEL_8;
    }

    if (!cf)
    {
      v7 = 4294960568;
      goto LABEL_11;
    }

    v19 = sub_23EBB0E1C(&v23);
    if (v19)
    {
      goto LABEL_8;
    }

    v19 = sub_23EBB14AC(v23, cf, 1);
    if (v19)
    {
      goto LABEL_8;
    }

    if (!v23 || !sub_23EB8BE08(*(v23 + 1), 1919052402))
    {
      v7 = 4294960561;
      goto LABEL_9;
    }

    v19 = sub_23EBB7004(v23, a2, a3, a4, a5, a6, &v22);
    if (v19)
    {
LABEL_8:
      v7 = v19;
      goto LABEL_9;
    }

    if (v22)
    {
      v7 = 0;
      *a7 = v22;
      v22 = 0;
    }

    else
    {
      v7 = 4294960568;
    }
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_11:
  if (v22)
  {
    CFRelease(v22);
    v22 = 0;
  }

  if (v23)
  {
    sub_23EBB0D6C(v23);
  }

  return v7;
}

uint64_t sub_23EBB74F4(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v17 = 0;
  v18 = 0;
  __p[0] = 0;
  __p[1] = 0;
  if (a3 == 2003061875)
  {
    MEMORY[0x23EF1EFD0](__p, "legacywds");
  }

  else
  {
    sub_23EB4BD2C(a3, v15);
    MEMORY[0x23EF1EFD0](__p, v15);
  }

  v11 = __p;
  if (v17 < 0)
  {
    v11 = __p[0];
  }

  sub_23EB6FF14(a2, &v18, "%ks", v6, v7, v8, v9, v10, v11);
  v13 = v12;
  if (!v12)
  {
    v13 = sub_23EB8A18C(*(a1 + 8), a3, v18, 0);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

void sub_23EBB75D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB75F0(uint64_t a1, __CFArray *a2, uint64_t a3)
{
  v19 = 0;
  sub_23EB4BD2C(a3, v18);
  v6 = sub_23EB8BFFC(*(a1 + 8), a3, &v19, 0);
  if (a3 != 2003061875)
  {
    v14 = v6;
    if (v6)
    {
      if (v6 != -5)
      {
        goto LABEL_19;
      }

      if (a3 != 1918128974)
      {
        if (a3 != 1918977586 && a3 != 1918980980)
        {
          v14 = 0;
          goto LABEL_19;
        }

        v15 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], a2, "%ks=%i", v7, v8, v9, v10, v11, v18);
LABEL_18:
        v14 = v15;
        goto LABEL_19;
      }

      v12 = *MEMORY[0x277CBECE8];
    }

    else
    {
      v12 = *MEMORY[0x277CBECE8];
    }

    v13 = v18;
    goto LABEL_17;
  }

  if (v19)
  {
LABEL_3:
    v12 = *MEMORY[0x277CBECE8];
    v13 = "legacywds";
LABEL_17:
    v15 = sub_23EB6FDFC(v12, a2, "%ks=%O", v7, v8, v9, v10, v11, v13);
    goto LABEL_18;
  }

  cf = 0;
  v15 = sub_23EB4EBC4(2003061875, 0, 0, 1, &cf);
  if (v15)
  {
    goto LABEL_18;
  }

  v14 = sub_23EB91744(*(a1 + 8), 2003061875, cf, &v19);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v14)
  {
    goto LABEL_3;
  }

LABEL_19:
  if (v19)
  {
    CFRelease(v19);
  }

  return v14;
}

uint64_t sub_23EBB779C(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  result = 4294960591;
  if (a2)
  {
    if (*(a1 + 144) == 1634561902)
    {
      result = 0;
      *a2 = *(a1 + 84);
    }
  }

  return result;
}

uint64_t sub_23EBB77D8(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  result = 4294960591;
  if (a2)
  {
    if (*(a1 + 144) == 1634561902)
    {
      result = 0;
      *a2 = *(a1 + 80);
    }
  }

  return result;
}

uint64_t sub_23EBB7814(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetTaskState(BSConfigurationContextRef, eBSConfigurationTaskState)", 800, " \n", a5, a6, a7, a8, v13);
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  if (a2 > 6)
  {
    return 4294960586;
  }

  v10 = *(a1 + 128);
  if (a2)
  {
    if (a2 == 6)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    sub_23EBEB3C0(v10, v11, a3, a4, a5, a6, a7, a8);
    if (*(a1 + 80))
    {
      return 4294960587;
    }
  }

  else
  {
    sub_23EBEB3C0(v10, 0, a3, a4, a5, a6, a7, a8);
  }

  result = 0;
  *(a1 + 80) = a2;
  *(a1 + 84) = 0;
  return result;
}

uint64_t sub_23EBB78F0(uint64_t a1, _DWORD *a2)
{
  if (a1 && *(a1 + 144) == 1634561902)
  {
    return sub_23EBEB384(*(a1 + 128), a2);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t sub_23EBB7918(void *context, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCRefreshClientListAndSystemInterfacesAsync(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v16);
  }

  if (!context)
  {
    return 4294960591;
  }

  if (*(context + 36) != 1634561902)
  {
    return 4294960591;
  }

  v9 = *(context + 15);
  if (!v9)
  {
    return 4294960591;
  }

  v10 = *(context + 14);
  if (!v10)
  {
    return 4294960591;
  }

  dispatch_group_async_f(v9, v10, context, sub_23EBB79E4);
  sub_23EBEB0B0(*(context + 16), 27, 0, 0, v11, v12, v13, v14);
  return 0;
}

void sub_23EBB79E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCRefreshClientListAndSystemInterfacesSync(void *)", 800, " \n", a5, a6, a7, a8, v20);
  }

  v21 = 0;
  cf = 0;
  if (a1)
  {
    if (*(a1 + 144) != 1634561902 || !*(a1 + 8))
    {
      v11 = 0;
      v10 = 4294960591;
      goto LABEL_11;
    }

    v9 = sub_23EBEA0DC(*(a1 + 128), a2, a3, a4, a5, a6, a7, a8);
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      goto LABEL_11;
    }

    v12 = sub_23EBB4DE4(*(a1 + 8), 1918980940);
    if (!v12)
    {
      v12 = sub_23EBB54E8(*(a1 + 8), &cf, v14, v15, v16, v17, v18, v19);
      if (!v12)
      {
        if (!cf)
        {
          v10 = 4294960568;
          goto LABEL_17;
        }

        sub_23EB6FF14(cf, &v21, "%ks", v15, v16, v17, v18, v19, "data");
        if (!v12)
        {
          if (v21)
          {
            v10 = 0;
          }

          else
          {
            v10 = 4294960568;
          }

          goto LABEL_17;
        }
      }
    }

    v10 = v12;
LABEL_17:
    sub_23EBEA18C(*(a1 + 128), v13, v14, v15, v16, v17, v18, v19);
    v11 = v21;
LABEL_11:
    sub_23EBEAF44(*(a1 + 128), 28, 1, v10, v11, a6, a7, a8);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t sub_23EBB7B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCStartRemoteBrowseAsync(BSConfigurationContextRef, CFStringRef, CFStringRef)", 800, " \n", a5, a6, a7, a8, v22);
  }

  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120))
  {
    return 4294960591;
  }

  v11 = 4294960591;
  if (a3)
  {
    if (a2)
    {
      if (*(a1 + 112))
      {
        cf = 0;
        context = 0;
        v11 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%O%kO=%O}", a4, a5, a6, a7, a8, @"kAsyncParam_RemoteBrowse_Domain");
        if (!v11)
        {
          if (!cf)
          {
            return 0;
          }

          v11 = sub_23EBB7CA8(a1, cf, &context, v12, v13, v14, v15, v16);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (!v11)
          {
            if (!context)
            {
              return 4294960568;
            }

            dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBB7D90);
            sub_23EBEB0B0(*(a1 + 128), 27, 0, 0, v17, v18, v19, v20);
            return 0;
          }
        }
      }
    }
  }

  return v11;
}

uint64_t sub_23EBB7CA8(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus __AsyncContext_Create(BSConfigurationContextRef, CFDictionaryRef, __AsyncContextRef *)", 800, " \n", a5, a6, a7, a8, v14);
  }

  result = 4294960591;
  if (a3 && *(a1 + 144) == 1634561902)
  {
    v12 = malloc_type_calloc(1uLL, 0x18uLL, 0x106004025F8D3E0uLL);
    if (v12)
    {
      v13 = v12;
      *v12 = a1;
      v12[1] = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      result = 0;
      *(v13 + 4) = 1634561902;
      *a3 = v13;
    }

    else
    {
      return 4294960568;
    }
  }

  return result;
}

void sub_23EBB7D90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCStartRemoteBrowseSync(void *)", 800, " \n", a5, a6, a7, a8, v23);
  }

  cf = 0;
  if (a1)
  {
    if (*(a1 + 4) == 1634561902)
    {
      v9 = *a1;
      if (*a1)
      {
        v25 = 0;
        v26 = 0;
        if (*(v9 + 144) != 1634561902 || !*(v9 + 8))
        {
          v13 = 0;
          v12 = 4294960591;
          goto LABEL_13;
        }

        v10 = sub_23EBEA0DC(*(v9 + 128), a2, a3, a4, a5, a6, a7, a8);
        if (v10)
        {
          v12 = v10;
          v13 = 0;
          goto LABEL_13;
        }

        sub_23EB6FF14(a1[1], &v25, "%kO", v11, a5, a6, a7, a8, @"kAsyncParam_RemoteBrowse_Domain");
        if (v14)
        {
          goto LABEL_17;
        }

        if (v25)
        {
          sub_23EB6FF14(a1[1], &v26, "%kO", v17, v18, v19, v20, v21, @"kAsyncParam_RemoteBrowse_Service");
          if (v14)
          {
LABEL_17:
            v12 = v14;
LABEL_18:
            sub_23EBEA18C(*(v9 + 128), v15, v16, v17, v18, v19, v20, v21);
            v13 = cf;
LABEL_13:
            sub_23EBEAB18(*(v9 + 128), 28, v12, v13, a5, a6, a7, a8);
            if (cf)
            {
              CFRelease(cf);
            }

            return;
          }

          v16 = v26;
          if (v26)
          {
            v22 = sub_23EBB60EC(*(v9 + 8), v25, v26, &cf);
            v12 = v22;
            if (v22 != -6735)
            {
              if (v22 == 0 && cf == 0)
              {
                v12 = 4294960568;
              }

              else
              {
                v12 = v22;
              }
            }

            goto LABEL_18;
          }
        }

        v12 = 4294960568;
        goto LABEL_18;
      }
    }
  }
}

uint64_t sub_23EBB7F44(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCRefreshBSSettingAsync(BSConfigurationContextRef, BSSetting)", 800, " \n", a5, a6, a7, a8, v21);
  }

  v10 = 4294960591;
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 144) == 1634561902)
      {
        if (*(a1 + 120))
        {
          if (*(a1 + 112))
          {
            cf = 0;
            context = 0;
            v10 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%i}", a4, a5, a6, a7, a8, @"kAsyncParam_Refresh_BSSetting");
            if (!v10)
            {
              if (!cf)
              {
                return 0;
              }

              v10 = sub_23EBB7CA8(a1, cf, &context, v11, v12, v13, v14, v15);
              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              if (!v10)
              {
                if (!context)
                {
                  return 4294960568;
                }

                dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBB8098);
                sub_23EBEB0B0(*(a1 + 128), 27, 0, 0, v16, v17, v18, v19);
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v10;
}

void sub_23EBB8098(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCRefreshBSSettingSync(void *)", 800, " \n", a5, a6, a7, a8, v23);
  }

  cf = 0;
  v25 = 0;
  if (a1)
  {
    v26 = 0;
    if (*(a1 + 4) != 1634561902)
    {
      goto LABEL_15;
    }

    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_15;
    }

    if (*(v9 + 144) != 1634561902 || !*(v9 + 8) || !a1[1])
    {
      v14 = 0;
      v13 = 4294960591;
      goto LABEL_14;
    }

    v10 = sub_23EBEA0DC(*(v9 + 128), a2, a3, a4, a5, a6, a7, a8);
    if (v10)
    {
      v13 = v10;
      v14 = 0;
LABEL_14:
      sub_23EBEAF44(*(v9 + 128), 28, 3, v13, v14, a6, a7, a8);
LABEL_15:
      sub_23EBC2368(a1, a2, a3, a4, a5, a6, a7, a8);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v25)
      {
        CFRelease(v25);
      }

      return;
    }

    sub_23EB6FF14(a1[1], &v26, "%kO:int", v11, v12, a6, a7, a8, @"kAsyncParam_Refresh_BSSetting");
    if (!v15)
    {
      v16 = v26;
      if (!v26)
      {
        v13 = 4294960568;
        goto LABEL_22;
      }

      v15 = sub_23EBB4DE4(*(v9 + 8), v26);
      if (!v15)
      {
        v15 = sub_23EBB3F30(*(v9 + 8), v26, &v25);
        if (!v15)
        {
          v15 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%O}", v18, v19, v20, v21, v22, @"kBSConfigurationRefreshBSSettingKey_Value");
          if (!v15)
          {
            if (cf)
            {
              v13 = 0;
            }

            else
            {
              v13 = 4294960568;
            }

            goto LABEL_22;
          }
        }
      }
    }

    v13 = v15;
LABEL_22:
    sub_23EBEA18C(*(v9 + 128), v16, v17, v18, v19, v20, v21, v22);
    v14 = cf;
    goto LABEL_14;
  }
}

uint64_t sub_23EBB825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCDisconnectAllDiskUsersWithMessageAsync(BSConfigurationContextRef, CFStringRef)", 800, " \n", a5, a6, a7, a8, v20);
  }

  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120) || !*(a1 + 112))
  {
    return 4294960591;
  }

  cf = 0;
  context = 0;
  v14 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%O}", a4, a5, a6, a7, a8, @"kAsyncParam_DisconnectMessage");
  if (!v14)
  {
    if (!cf)
    {
      return 0;
    }

    v14 = sub_23EBB7CA8(a1, cf, &context, v9, v10, v11, v12, v13);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!v14)
    {
      if (!context)
      {
        return 4294960568;
      }

      dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBB83A8);
      sub_23EBEB0B0(*(a1 + 128), 27, 0, 0, v15, v16, v17, v18);
      return 0;
    }
  }

  return v14;
}

void sub_23EBB83A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCDisconnectAllDiskUsersWithMessageSync(void *)", 800, " \n", a5, a6, a7, a8, v22);
  }

  if (a1)
  {
    v23 = 0;
    if (*(a1 + 4) != 1634561902)
    {
      goto LABEL_17;
    }

    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_17;
    }

    if (*(v9 + 144) == 1634561902 && *(v9 + 8) && a1[1])
    {
      v12 = sub_23EBEA0DC(*(v9 + 128), a2, a3, a4, a5, a6, a7, a8);
      if (!v12)
      {
        v13 = a1[1];
        v23 = 0;
        sub_23EB6FF14(v13, &v23, "%kO", v10, v11, a6, a7, a8, @"kAsyncParam_DisconnectMessage");
        if (v14)
        {
          v12 = v14;
          if (v14 != -6727)
          {
LABEL_21:
            sub_23EBEA18C(*(v9 + 128), v15, v16, v17, v18, v19, v20, v21);
            goto LABEL_16;
          }

          v15 = v23;
        }

        else
        {
          v15 = v23;
          if (!v23)
          {
            v12 = 4294960591;
            goto LABEL_21;
          }
        }

        v12 = sub_23EBB5A60(*(v9 + 8), v15, v16, v17, v18, v19, v20, v21);
        goto LABEL_21;
      }
    }

    else
    {
      v12 = 4294960591;
    }

LABEL_16:
    sub_23EBEAF44(*(v9 + 128), 28, 4, v12, 0, a6, a7, a8);
LABEL_17:
    sub_23EBC2368(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_23EBB84FC(void *context, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCRenewDHCPLeaseAsync(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v16);
  }

  if (!context)
  {
    return 4294960591;
  }

  if (*(context + 36) != 1634561902)
  {
    return 4294960591;
  }

  v9 = *(context + 15);
  if (!v9)
  {
    return 4294960591;
  }

  v10 = *(context + 14);
  if (!v10)
  {
    return 4294960591;
  }

  dispatch_group_async_f(v9, v10, context, sub_23EBB85C8);
  sub_23EBEB0B0(*(context + 16), 27, 0, 0, v11, v12, v13, v14);
  return 0;
}

void sub_23EBB85C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCRenewDHCPLeaseSync(void *)", 800, " \n", a5, a6, a7, a8, v22);
  }

  if (a1)
  {
    if (*(a1 + 144) == 1634561902 && *(a1 + 8))
    {
      v13 = sub_23EBEA0DC(*(a1 + 128), a2, a3, a4, a5, a6, a7, a8);
      if (!v13)
      {
        v13 = sub_23EBB6618(*(a1 + 8), v9, v10, v11, v12, a6, a7, a8);
        sub_23EBEA18C(*(a1 + 128), v14, v15, v16, v17, v18, v19, v20);
      }
    }

    else
    {
      v13 = 4294960591;
    }

    v21 = *(a1 + 128);

    sub_23EBEAF44(v21, 28, 5, v13, 0, a6, a7, a8);
  }
}

uint64_t sub_23EBB86B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCWPSStartAsync(BSConfigurationContextRef, Boolean, Boolean, uint32_t)", 800, " \n", a5, a6, a7, a8, v20);
  }

  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120) || !*(a1 + 112))
  {
    return 4294960591;
  }

  v22 = 0;
  cf = 0;
  v14 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%b%kO=%b%kO=%i}", a4, a5, a6, a7, a8, @"kAsyncParam_WPSStart_UsePIN");
  if (!v14)
  {
    if (!cf)
    {
      return 0;
    }

    v14 = sub_23EBB7CA8(a1, cf, &v22, v9, v10, v11, v12, v13);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!v14)
    {
      if (!v22)
      {
        return 4294960568;
      }

      dispatch_group_async_f(*(a1 + 120), *(a1 + 112), v22, sub_23EBB8828);
      sub_23EBEB0B0(*(a1 + 128), 27, 0, 0, v15, v16, v17, v18);
      return 0;
    }
  }

  return v14;
}

void sub_23EBB8828(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCWPSStartSync(void *)", 800, " \n", a5, a6, a7, a8, v29);
  }

  if (a1)
  {
    v31 = 0;
    v30 = 0;
    if (*(a1 + 4) == 1634561902)
    {
      v9 = *a1;
      if (*a1)
      {
        if (*(v9 + 144) == 1634561902 && *(v9 + 8) && a1[1])
        {
          v12 = sub_23EBEA0DC(*(v9 + 128), a2, a3, a4, a5, a6, a7, a8);
          if (!v12)
          {
            sub_23EB6FF14(a1[1], &v31 + 1, "%kO:BOOL", v10, v11, a6, a7, a8, @"kAsyncParam_WPSStart_UsePIN");
            if (!v13)
            {
              sub_23EB6FF14(a1[1], &v31, "%kO:BOOL", v16, v17, v18, v19, v20, @"kAsyncParam_WPSStart_DayPass");
              if (!v13)
              {
                sub_23EB6FF14(a1[1], &v30, "%kO:int", v16, v17, v18, v19, v20, @"kAsyncParam_WPSStart_Timeout");
                if (v25)
                {
                  v26 = 300;
                  v30 = 300;
                }

                else
                {
                  v26 = v30;
                }

                v27 = v31;
                *(v9 + 89) = v31;
                if (v27)
                {
                  v28 = 86400;
                }

                else
                {
                  v28 = 0xFFFFFFFFLL;
                }

                v13 = sub_23EBB5640(*(v9 + 8), HIBYTE(v31) != 0, v28, v26, v21, v22, v23, v24);
              }
            }

            v12 = v13;
            sub_23EBEA18C(*(v9 + 128), v14, v15, v16, v17, v18, v19, v20);
          }
        }

        else
        {
          v12 = 4294960591;
        }

        sub_23EBEAF44(*(v9 + 128), 28, 6, v12, 0, a6, a7, a8);
      }
    }

    sub_23EBC2368(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_23EBB89D4(void *context, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCWPSStopAsync(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v16);
  }

  if (!context)
  {
    return 4294960591;
  }

  if (*(context + 36) != 1634561902)
  {
    return 4294960591;
  }

  v9 = *(context + 15);
  if (!v9)
  {
    return 4294960591;
  }

  v10 = *(context + 14);
  if (!v10)
  {
    return 4294960591;
  }

  dispatch_group_async_f(v9, v10, context, sub_23EBB8AA0);
  sub_23EBEB0B0(*(context + 16), 27, 0, 0, v11, v12, v13, v14);
  return 0;
}

void sub_23EBB8AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x277D85DE8];
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCWPSStopSync(void *)", 800, " \n", a5, a6, a7, a8, v27);
  }

  if (a1)
  {
    if (*(a1 + 144) == 1634561902 && *(a1 + 8))
    {
      v13 = sub_23EBEA0DC(*(a1 + 128), a2, a3, a4, a5, a6, a7, a8);
      if (!v13)
      {
        v13 = sub_23EBB57CC(*(a1 + 8), v9, v10, v11, v12, a6, a7, a8);
        if (!v13)
        {
          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_WPSUpdateTimedAccess(BSConfigurationContextRef)", 800, " \n", v17, v18, v19, v20, v27);
          }

          if (*(a1 + 144) == 1634561902 && (v21 = *(a1 + 8)) != 0)
          {
            v13 = sub_23EBB4DE4(v21, 1633895790);
            if (!v13)
            {
              v30 = 0;
              sub_23EBB6A4C(v31, 0x15uLL);
              v13 = sub_23EBB40C4(*(a1 + 8), v31, &v30);
              if (!v13)
              {
                if (v30)
                {
                  cf = 0;
                  v29 = 0;
                  sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%i%kO=%b}", v16, v17, v18, v19, v20, @"kAsyncParam_Refresh_BSSetting");
                  v13 = sub_23EBB7CA8(a1, cf, &v29, v22, v23, v24, v25, v26);
                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }

                  if (!v13)
                  {
                    if (v29)
                    {
                      sub_23EBC2424(v29, v14, v15, v16, v17, v18, v19, v20);
                      v13 = 0;
                    }

                    else
                    {
                      v13 = 4294960568;
                    }
                  }
                }
              }
            }
          }

          else
          {
            v13 = 4294960591;
          }
        }

        sub_23EBEA18C(*(a1 + 128), v14, v15, v16, v17, v18, v19, v20);
      }
    }

    else
    {
      v13 = 4294960591;
    }

    sub_23EBEAF44(*(a1 + 128), 28, 7, v13, 0, a6, a7, a8);
  }
}

uint64_t sub_23EBB8CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCWPSAllowClientAsync(BSConfigurationContextRef, CFStringRef)", 800, " \n", a5, a6, a7, a8, v20);
  }

  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120) || !*(a1 + 112))
  {
    return 4294960591;
  }

  cf = 0;
  context = 0;
  v14 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%O}", a4, a5, a6, a7, a8, @"kAsyncParam_WPSAllowClient_PIN");
  if (!v14)
  {
    if (!cf)
    {
      return 0;
    }

    v14 = sub_23EBB7CA8(a1, cf, &context, v9, v10, v11, v12, v13);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!v14)
    {
      if (!context)
      {
        return 4294960568;
      }

      dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBB8E34);
      sub_23EBEB0B0(*(a1 + 128), 27, 0, 0, v15, v16, v17, v18);
      return 0;
    }
  }

  return v14;
}

void sub_23EBB8E34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCWPSAllowClientSync(void *)", 800, " \n", a5, a6, a7, a8, v21);
  }

  if (a1)
  {
    v22 = 0;
    v23 = 0;
    if (*(a1 + 4) != 1634561902)
    {
      goto LABEL_17;
    }

    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_17;
    }

    if (*(v9 + 144) != 1634561902 || !*(v9 + 8) || !a1[1])
    {
      v12 = 4294960591;
      goto LABEL_16;
    }

    v12 = sub_23EBEA0DC(*(v9 + 128), a2, a3, a4, a5, a6, a7, a8);
    if (v12)
    {
LABEL_16:
      sub_23EBEAF44(*(v9 + 128), 28, 8, v12, 0, a6, a7, a8);
LABEL_17:
      sub_23EBC2368(a1, a2, a3, a4, a5, a6, a7, a8);
      return;
    }

    sub_23EB6FF14(a1[1], &v23, "%kO", v10, v11, a6, a7, a8, @"kAsyncParam_WPSAllowClient_PIN");
    if (v13)
    {
      goto LABEL_13;
    }

    if (v23)
    {
      v13 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v22, "{%kO=%O%kO=%i%kO=%D%kO=%O}", v16, v17, v18, v19, v20, @"pin");
      if (v13)
      {
LABEL_13:
        v12 = v13;
LABEL_14:
        sub_23EBEA18C(*(v9 + 128), v14, v15, v16, v17, v18, v19, v20);
        goto LABEL_16;
      }

      v14 = v22;
      if (v22)
      {
        v12 = sub_23EBB5908(*(v9 + 8), v22);
        if (v22)
        {
          CFRelease(v22);
          v22 = 0;
        }

        goto LABEL_14;
      }
    }

    v12 = 4294960568;
    goto LABEL_14;
  }
}

uint64_t sub_23EBB900C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_TaskRestartAsync(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v14);
  }

  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120))
  {
    return 4294960591;
  }

  result = sub_23EBB7814(a1, 3u, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    dispatch_group_async_f(*(a1 + 120), *(a1 + 112), a1, sub_23EBB90E4);
    sub_23EBB9D84(a1, 3, 0, 1, v10, v11, v12, v13);
    return 0;
  }

  return result;
}

void sub_23EBB90E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, " \n", a5, a6, a7, a8, v44);
  }

  v50 = 0;
  cf = 0;
  v47 = 0;
  if (a1)
  {
    v48 = 0;
    v46 = 0;
    if (*(a1 + 144) != 1634561902 || !*(a1 + 8))
    {
      v17 = 0;
      v20 = 4294960591;
      goto LABEL_13;
    }

    v9 = sub_23EB6AE14(*a1, a2, a3, a4, a5, a6, a7, a8);
    v17 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v18 = sub_23EBEA0DC(*(a1 + 128), v10, v11, v12, v13, v14, v15, v16);
    if (v18)
    {
      v20 = v18;
LABEL_13:
      sub_23EBB7814(a1, 0, a3, a4, a5, a6, a7, a8);
      sub_23EBC2C4C(a1, 3, 0, v20, v21, v22, v23, v24);
      if (v50)
      {
        CFRelease(v50);
        v50 = 0;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v17)
      {
        CFRelease(v17);
      }

      return;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", a5, a6, a7, a8, "Stopping monitoring");
    }

    v25 = sub_23EBC2700(a1, v19, a3, a4, a5, a6, a7, a8);
    if (v25)
    {
      goto LABEL_39;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v29, v30, v31, v32, "Stopping monitoring");
    }

    v45 = 0;
    v25 = sub_23EBC2760(a1, &v50, &cf, &v47, &v46, &v45);
    if (v25)
    {
      goto LABEL_39;
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "finalNetworkName: %@ goingAwayNetwork: %@ networkMaytransition: %d deviceMayLoseTouch: %d \n", v29, v30, v31, v32, v50);
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v29, v30, v31, v32, "Sending restart action");
      }
    }

    sub_23EBEB0B0(*(a1 + 128), 20, 0, v17, v29, v30, v31, v32);
    v25 = sub_23EBB4EE8(*(a1 + 8), 1633899074, v33, v34, v35, v36, v37, v38);
    if (v25)
    {
      goto LABEL_39;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v29, v30, v31, v32, "Sending restart action");
    }

    sub_23EBEB0B0(*(a1 + 128), 21, 0, v17, v29, v30, v31, v32);
    if (*(a1 + 144) != 1634561902)
    {
      v20 = 4294960591;
      goto LABEL_40;
    }

    v25 = sub_23EBEB3C0(*(a1 + 128), 1u, v27, v28, v29, v30, v31, v32);
    if (v25)
    {
      goto LABEL_39;
    }

    if (v47)
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v29, v30, v31, v32, "Disassociating");
      }

      v25 = sub_23EBEBD2C(*(a1 + 128));
      if (v25)
      {
        goto LABEL_39;
      }

      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v29, v30, v31, v32, "Disassociating");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v29, v30, v31, v32, "Clearing Scan Cache");
        }
      }

      v25 = sub_23EBEC3FC(*(a1 + 128), v26, v27, v28, v29, v30, v31, v32);
      if (v25)
      {
        goto LABEL_39;
      }

      if (dword_27E3827A8 > 800)
      {
LABEL_70:
        sub_23EB6A6F0(*a1);
        v40 = v39;
        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          if (v40)
          {
            v41 = "base station is remote\n";
          }

          else
          {
            v41 = "base station is not remote\n";
          }

          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, v41, v29, v30, v31, v32, v44);
        }

        if (v40 == 1)
        {
          goto LABEL_78;
        }

        if (dword_27E3827A8 <= 800)
        {
          if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v29, v30, v31, v32, "Determining if base station is remote");
          }

          if (dword_27E3827A8 <= 800)
          {
            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v29, v30, v31, v32, "Pausing after restart");
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "pausing for: %d secs\n", v29, v30, v31, v32, 20);
            }
          }
        }

        v25 = sub_23EBEC174(*(a1 + 128), 20);
        if (v25)
        {
          goto LABEL_39;
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v29, v30, v31, v32, "Pausing after restart");
        }

        if (v50)
        {
          if (v46)
          {
            if (dword_27E3827A8 <= 800)
            {
              if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v29, v30, v31, v32, "Network transition pause");
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "pausing for: %d secs\n", v29, v30, v31, v32, 20);
              }
            }

            v25 = sub_23EBEC174(*(a1 + 128), 20);
            if (v25)
            {
              goto LABEL_39;
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v29, v30, v31, v32, "Network transition pause");
            }
          }

          if (!sub_23EBEBC34(*(a1 + 128), v50, 0, v28, v29, v30, v31, v32))
          {
            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v29, v30, v31, v32, "Joining Network");
            }

            v25 = sub_23EBEE184(*(a1 + 128), v50, cf, 1, 0, v30, v31, v32);
            if (v25)
            {
              goto LABEL_39;
            }

            if (dword_27E3827A8 > 800)
            {
              goto LABEL_117;
            }

            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v29, v30, v31, v32, "Joining Network");
            }
          }
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v29, v30, v31, v32, "Final waiting for target base");
        }

LABEL_117:
        if (!sub_23EB6B064(*a1, v26, v27, v28, v29, v30, v31, v32))
        {
          if (dword_27E3827A8 <= 800)
          {
            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v42, v43, v31, v32, "No bonjour seed pause");
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "pausing for: %d secs\n", v42, v43, v31, v32, 8);
            }
          }

          v25 = sub_23EBEC174(*(a1 + 128), 8);
          if (v25)
          {
            goto LABEL_39;
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v29, v30, v31, v32, "No bonjour seed pause");
          }
        }

        v25 = sub_23EBED690(*(a1 + 128), v17, *a1, 1, 120, &v48, v31, v32);
        if (!v25)
        {
          v26 = v48;
          if (!v48)
          {
            v20 = 4294960568;
            goto LABEL_40;
          }

          v20 = sub_23EBC2A30(a1, v48);
          if (v48)
          {
            CFRelease(v48);
            v48 = 0;
          }

          if (v20)
          {
            goto LABEL_40;
          }

          if (dword_27E3827A8 <= 800)
          {
            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v29, v30, v31, v32, "Final waiting for target base after restart");
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v29, v30, v31, v32, "Rereading settings after restart");
            }
          }

          v25 = sub_23EBBE61C(a1, 0, *a1, *(a1 + 8), 0, 0, 0, v32);
          if (!v25)
          {
            if (dword_27E3827A8 <= 800)
            {
              if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v29, v30, v31, v32, "Rereading settings after restart");
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v29, v30, v31, v32, "Checking if monitoring needs restored");
              }
            }

            v25 = sub_23EBC2B48(a1, v26, v27, v28, v29, v30, v31, v32);
            if (!v25)
            {
              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v29, v30, v31, v32, "Checking if monitoring needs restored");
              }

LABEL_78:
              v20 = 0;
              goto LABEL_40;
            }
          }
        }

LABEL_39:
        v20 = v25;
LABEL_40:
        sub_23EBEA18C(*(a1 + 128), v26, v27, v28, v29, v30, v31, v32);
        goto LABEL_13;
      }

      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v29, v30, v31, v32, "Clearing Scan Cache");
      }
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v29, v30, v31, v32, "Determining if base station is remote");
    }

    goto LABEL_70;
  }
}

void sub_23EBB9D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 144) == 1634561902)
  {
    v15[3] = v8;
    v15[4] = v9;
    v15[0] = 0;
    if (!sub_23EB6F348(*MEMORY[0x277CBECE8], v15, "{%kO=%i%kO=%i%kO=%b}", a4, a5, a6, a7, a8, @"kBSConfigurationTaskStart_TaskState"))
    {
      if (v15[0])
      {
        sub_23EBEAB18(*(a1 + 128), 29, 0, v15[0], v11, v12, v13, v14);
        if (v15[0])
        {
          CFRelease(v15[0]);
        }
      }
    }
  }
}

uint64_t sub_23EBB9E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_TaskRestoreDefaultsAsync(BSConfigurationContextRef, Boolean)", 800, " \n", a5, a6, a7, a8, v26);
  }

  context = 0;
  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120))
  {
    return 4294960591;
  }

  v14 = sub_23EBB7814(a1, 4u, a3, a4, a5, a6, a7, a8);
  if (!v14)
  {
    cf = 0;
    v14 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%ks=%b}", v9, v10, v11, v12, v13, "AsyncParam_WaitAndJoinFlag");
    if (v14)
    {
LABEL_10:
      sub_23EBB7814(a1, 0, v15, v16, v17, v18, v19, v20);
      return v14;
    }

    if (cf)
    {
      v14 = sub_23EBB7CA8(a1, cf, &context, v16, v17, v18, v19, v20);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v14)
      {
        goto LABEL_10;
      }

      v15 = context;
      if (!context)
      {
        v14 = 4294960568;
        goto LABEL_10;
      }

      dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBB9FA8);
      sub_23EBB9D84(a1, 4, 0, 1, v22, v23, v24, v25);
    }

    return 0;
  }

  return v14;
}

void sub_23EBB9FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, " \n", a5, a6, a7, a8, v47);
  }

  v52 = 0;
  cf = 0;
  v51 = 0;
  if (a1)
  {
    v54 = 0;
    v50 = 0;
    v49 = 0;
    if (*(a1 + 16) != 1634561902 || (v9 = *a1) == 0)
    {
      v14 = 0;
LABEL_17:
      if (v52)
      {
        CFRelease(v52);
        v52 = 0;
      }

      if (v51)
      {
        CFRelease(v51);
        v51 = 0;
      }

      if (v14)
      {
        CFRelease(v14);
      }

      sub_23EBC2368(a1, a2, a3, a4, a5, a6, a7, a8);
      return;
    }

    if (*(v9 + 144) != 1634561902 || !*(v9 + 8) || (v10 = *(a1 + 8)) == 0)
    {
      v14 = 0;
      v13 = 4294960591;
      goto LABEL_15;
    }

    sub_23EB6FF14(v10, &v54, "%ks:BOOL", a4, a5, a6, a7, a8, "AsyncParam_WaitAndJoinFlag");
    if (v11)
    {
      v13 = v11;
      v14 = 0;
      goto LABEL_15;
    }

    v19 = sub_23EB6AE14(*v9, v12, a3, a4, a5, a6, a7, a8);
    v14 = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    v27 = sub_23EBEA0DC(*(v9 + 128), v20, v21, v22, v23, v24, v25, v26);
    if (v27)
    {
      v13 = v27;
      goto LABEL_15;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", a5, a6, a7, a8, "Stopping monitoring");
    }

    v29 = sub_23EBC2700(v9, v28, a3, a4, a5, a6, a7, a8);
    if (v29)
    {
      goto LABEL_48;
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v33, v34, v35, v36, "Stopping monitoring");
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v33, v34, v35, v36, "Sending restore defaults action");
      }
    }

    sub_23EBEB0B0(*(v9 + 128), 20, 0, v14, v33, v34, v35, v36);
    v29 = sub_23EBB6CA4(*(v9 + 8), v37, v38, v39, v40, v41, v42, v43);
    if (v29)
    {
      goto LABEL_48;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v33, v34, v35, v36, "Sending restore defaults action");
    }

    sub_23EBEB0B0(*(v9 + 128), 21, 0, v14, v33, v34, v35, v36);
    v29 = sub_23EBC2760(v9, &cf, &v52, &v51, &v50 + 1, &v50);
    if (v29)
    {
      goto LABEL_48;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "finalNetworkName: %@ goingAwayNetwork: %@ networkMaytransition: %d deviceMayLoseTouch: %d \n", v33, v34, v35, v36, cf);
    }

    if (v51)
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v33, v34, v35, v36, "Disassociating");
      }

      v29 = sub_23EBEBD2C(*(v9 + 128));
      if (v29)
      {
        goto LABEL_48;
      }

      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v33, v34, v35, v36, "Disassociating");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v33, v34, v35, v36, "Clearing Scan Cache");
        }
      }

      v29 = sub_23EBEC3FC(*(v9 + 128), v30, v31, v32, v33, v34, v35, v36);
      if (v29)
      {
        goto LABEL_48;
      }

      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v33, v34, v35, v36, "Clearing Scan Cache");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v33, v34, v35, v36, "Waiting for network to GO AWAY");
        }
      }

      v29 = sub_23EBEBF74(*(v9 + 128), v51, *v9);
      if (v29)
      {
        goto LABEL_48;
      }

      if (dword_27E3827A8 > 800)
      {
        goto LABEL_86;
      }

      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v33, v34, v35, v36, "Waiting for network to GO AWAY");
      }
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v33, v34, v35, v36, "Determining if base station is remote");
    }

LABEL_86:
    sub_23EB6A6F0(*v9);
    v45 = v44;
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      if (v45)
      {
        v46 = "base station is remote\n";
      }

      else
      {
        v46 = "base station is not remote\n";
      }

      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, v46, v33, v34, v35, v36, v48);
    }

    if (v45 == 1)
    {
      goto LABEL_148;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v33, v34, v35, v36, "Determining if base station is remote");
    }

    if (!v54)
    {
      goto LABEL_148;
    }

    if (cf)
    {
      if (HIBYTE(v50) && !v51)
      {
        if (dword_27E3827A8 <= 800)
        {
          if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v33, v34, v35, v36, "Network transition pause");
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "pausing for: %d secs\n", v33, v34, v35, v36, 40);
          }
        }

        v29 = sub_23EBEC174(*(v9 + 128), 40);
        if (v29)
        {
          goto LABEL_48;
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v33, v34, v35, v36, "Network transition pause");
        }
      }

      if (!sub_23EBEBC34(*(v9 + 128), cf, 0, v32, v33, v34, v35, v36))
      {
        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v33, v34, v35, v36, "Joining Network");
        }

        v29 = sub_23EBEE184(*(v9 + 128), cf, v52, 1, 0, v34, v35, v36);
        if (v29)
        {
          goto LABEL_48;
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v33, v34, v35, v36, "Joining Network");
        }
      }
    }

    if (sub_23EB6B064(*v9, v30, v31, v32, v33, v34, v35, v36))
    {
      goto LABEL_117;
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v33, v34, v35, v36, "No bonjour seed pause");
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "pausing for: %d secs\n", v33, v34, v35, v36, 8);
      }
    }

    v29 = sub_23EBEC174(*(v9 + 128), 8);
    if (!v29)
    {
      if (dword_27E3827A8 > 800)
      {
        goto LABEL_121;
      }

      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v33, v34, v35, v36, "No bonjour seed pause");
      }

LABEL_117:
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v33, v34, v35, v36, "Final waiting for target base after restore defaults");
      }

LABEL_121:
      v29 = sub_23EBED690(*(v9 + 128), 0, *v9, 1, 120, &v49, v35, v36);
      if (v29)
      {
        goto LABEL_48;
      }

      v30 = v49;
      if (!v49)
      {
        v13 = 4294960568;
        goto LABEL_49;
      }

      v13 = sub_23EBC2A30(v9, v49);
      if (v49)
      {
        CFRelease(v49);
        v49 = 0;
      }

      if (v13)
      {
        goto LABEL_49;
      }

      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v33, v34, v35, v36, "Final waiting for target base after restore defaults");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v33, v34, v35, v36, "Rereading settings after restore");
        }
      }

      v29 = sub_23EBBE61C(v9, 0, *v9, *(v9 + 8), 0, 0, 0, v36);
      if (v29)
      {
        goto LABEL_48;
      }

      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v33, v34, v35, v36, "Rereading settings after restore");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v33, v34, v35, v36, "Checking if monitoring needs restored");
        }
      }

      v29 = sub_23EBC2B48(v9, v30, v31, v32, v33, v34, v35, v36);
      if (v29)
      {
        goto LABEL_48;
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v33, v34, v35, v36, "Checking if monitoring needs restored");
      }

LABEL_148:
      v13 = 0;
      goto LABEL_49;
    }

LABEL_48:
    v13 = v29;
LABEL_49:
    sub_23EBEA18C(*(v9 + 128), v30, v31, v32, v33, v34, v35, v36);
LABEL_15:
    sub_23EBB7814(v9, 0, a3, a4, a5, a6, a7, a8);
    sub_23EBC2C4C(v9, 4, 0, v13, v15, v16, v17, v18);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_17;
  }
}

uint64_t sub_23EBBAC3C(uint64_t a1, CFDataRef theData, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_TaskUploadFirmwareAsync(BSConfigurationContextRef, CFDataRef)", 800, " \n", a5, a6, a7, a8, v33);
  }

  context = 0;
  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v10 = 4294960591;
  if (theData)
  {
    if (*(a1 + 120))
    {
      if (CFDataGetLength(theData))
      {
        v10 = sub_23EBB7814(a1, 5u, v11, v12, v13, v14, v15, v16);
        if (!v10)
        {
          cf = 0;
          v10 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%ks=%O}", v17, v18, v19, v20, v21, "AsyncParam_FirmwareData");
          if (v10)
          {
LABEL_12:
            sub_23EBB7814(a1, 0, v22, v23, v24, v25, v26, v27);
            return v10;
          }

          if (cf)
          {
            v10 = sub_23EBB7CA8(a1, cf, &context, v23, v24, v25, v26, v27);
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (v10)
            {
              goto LABEL_12;
            }

            v22 = context;
            if (!context)
            {
              v10 = 4294960568;
              goto LABEL_12;
            }

            dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBBADC4);
            sub_23EBB9D84(a1, 5, 0, 1, v29, v30, v31, v32);
          }

          return 0;
        }
      }
    }
  }

  return v10;
}

void sub_23EBBADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, " \n", a5, a6, a7, a8, v65);
  }

  v73 = 0;
  cf = 0;
  v71 = 0;
  if (a1)
  {
    theData = 0;
    v72 = 0;
    v70 = 0;
    if (*(a1 + 16) != 1634561902 || (v9 = *a1) == 0)
    {
      v13 = 0;
LABEL_23:
      if (v73)
      {
        CFRelease(v73);
        v73 = 0;
      }

      if (v13)
      {
        CFRelease(v13);
      }

      sub_23EBC2368(a1, a2, a3, a4, a5, a6, a7, a8);
      return;
    }

    if (*(v9 + 144) != 1634561902)
    {
      goto LABEL_20;
    }

    if (!*(v9 + 8))
    {
      goto LABEL_20;
    }

    v10 = *(a1 + 8);
    if (!v10)
    {
      goto LABEL_20;
    }

    sub_23EB6FF14(v10, &theData, "%ks", a4, a5, a6, a7, a8, "AsyncParam_FirmwareData");
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      goto LABEL_21;
    }

    if (!theData)
    {
      v13 = 0;
      v12 = 4294960568;
      goto LABEL_21;
    }

    Length = CFDataGetLength(theData);
    if (!Length)
    {
LABEL_20:
      v13 = 0;
      v12 = 4294960591;
      goto LABEL_21;
    }

    v16 = Length;
    v17 = sub_23EB6AE14(*v9, v15, a3, a4, a5, a6, a7, a8);
    v13 = v17;
    if (v17)
    {
      CFRetain(v17);
    }

    v25 = sub_23EBEA0DC(*(v9 + 128), v18, v19, v20, v21, v22, v23, v24);
    if (v25)
    {
      v12 = v25;
      goto LABEL_21;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", a5, a6, a7, a8, "Stopping monitoring");
    }

    v31 = sub_23EBC2700(v9, v26, a3, a4, a5, a6, a7, a8);
    if (v31)
    {
      goto LABEL_49;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v35, v36, v37, v38, "Stopping monitoring");
    }

    v31 = sub_23EBC2760(v9, &cf, &v73, &v71, &v70 + 1, &v70);
    if (v31)
    {
      goto LABEL_49;
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "finalNetworkName: %@ goingAwayNetwork: %@ networkMaytransition: %d deviceMayLoseTouch: %d \n", v35, v36, v37, v38, cf);
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v35, v36, v37, v38, "Uploading firmware");
      }
    }

    sub_23EBEB0B0(*(v9 + 128), 20, 0, v13, v35, v36, v37, v38);
    v39 = *(v9 + 8);
    BytePtr = CFDataGetBytePtr(theData);
    v31 = sub_23EBB504C(v39, BytePtr, v16, v41, v42, v43, v44, v45);
    if (v31)
    {
      goto LABEL_49;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v35, v36, v37, v38, "Uploading firmware");
    }

    sub_23EBEB0B0(*(v9 + 128), 21, 0, v13, v35, v36, v37, v38);
    if (sub_23EBB4248(*(v9 + 8), 1634104688))
    {
      v68 = 0;
      v69 = 0;
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v35, v36, v37, v38, "Uploading firmware reading update status");
      }

      v68 = 0;
      v46 = *MEMORY[0x277CBECE8];
      for (i = 1; ; i = (i + 1))
      {
        v48 = sub_23EBEC174(*(v9 + 128), 1);
        if (v48)
        {
          v12 = v48;
          goto LABEL_50;
        }

        v31 = sub_23EBB5318(*(v9 + 8), &v69, &v68, 4, v35, v36, v37, v38);
        if (v31)
        {
          goto LABEL_49;
        }

        if (v68)
        {
          v67 = 0;
          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "Firmware progress: %u of %u \n", v35, v36, v37, v38, v69);
          }

          v31 = sub_23EB6F348(v46, &v67, "{%ks=%i%ks=%i}", v34, v35, v36, v37, v38, "kBSConfigurationFirmwareStatus_TotalBytesKey");
          if (v31)
          {
            goto LABEL_49;
          }

          v34 = v67;
          if (!v67)
          {
            goto LABEL_195;
          }

          sub_23EBEAB18(*(v9 + 128), 31, 0, v67, v35, v36, v37, v38);
          if (v67)
          {
            CFRelease(v67);
            v67 = 0;
          }

          if (v69 && v69 >= v68)
          {
            v31 = sub_23EB6F348(v46, &v67, "{%ks=%b}", v49, v50, v51, v52, v53, "kBSConfigurationFirmwareStatus_UploadComplete");
            if (!v31)
            {
              v34 = v67;
              if (!v67)
              {
                goto LABEL_195;
              }

              sub_23EBEAB18(*(v9 + 128), 31, 0, v67, v35, v36, v37, v38);
              if (v67)
              {
                CFRelease(v67);
                v67 = 0;
              }

              v31 = sub_23EBB7814(v9, 0, v54, v55, v56, v57, v58, v59);
              if (!v31)
              {
                v31 = sub_23EBB7814(v9, 3u, v33, v34, v35, v36, v37, v38);
                if (!v31)
                {
                  v12 = sub_23EBEC174(*(v9 + 128), 1);
                  if (!v12)
                  {
                    v12 = sub_23EBB4EE8(*(v9 + 8), 1633899074, v33, v34, v35, v36, v37, v38);
                    if (!v12)
                    {
                      if (dword_27E3827A8 < 801 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                      {
                        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v35, v36, v37, v38, "Uploading firmware reading update status");
                      }

                      break;
                    }
                  }

                  goto LABEL_50;
                }
              }
            }

            goto LABEL_49;
          }
        }

        else
        {
          if (i > 0x12B)
          {
            v12 = 4294960574;
            goto LABEL_50;
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "Still no progress for: %u seconds \n", v35, v36, v37, v38, i);
          }
        }
      }
    }

    if (*(v9 + 144) != 1634561902)
    {
      v12 = 4294960591;
      goto LABEL_50;
    }

    v31 = sub_23EBEB3C0(*(v9 + 128), 1u, v33, v34, v35, v36, v37, v38);
    if (v31)
    {
      goto LABEL_49;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v35, v36, v37, v38, "Determining if base station is remote");
    }

    sub_23EB6A6F0(*v9);
    v61 = v60;
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      if (v61)
      {
        v62 = "base station is remote\n";
      }

      else
      {
        v62 = "base station is not remote\n";
      }

      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, v62, v35, v36, v37, v38, v66);
    }

    if (v61 == 1)
    {
LABEL_108:
      v12 = 0;
      goto LABEL_50;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v35, v36, v37, v38, "Determining if base station is remote");
    }

    if (v71)
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v35, v36, v37, v38, "Disassociating");
      }

      v31 = sub_23EBEBD2C(*(v9 + 128));
      if (v31)
      {
        goto LABEL_49;
      }

      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v35, v36, v37, v38, "Disassociating");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v35, v36, v37, v38, "Clearing Scan Cache");
        }
      }

      v31 = sub_23EBEC3FC(*(v9 + 128), v32, v33, v34, v35, v36, v37, v38);
      if (v31)
      {
        goto LABEL_49;
      }

      if (dword_27E3827A8 > 800)
      {
LABEL_142:
        v31 = sub_23EBEC174(*(v9 + 128), 20);
        if (v31)
        {
          goto LABEL_49;
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v35, v36, v37, v38, "Pausing after restart");
        }

        if (cf)
        {
          if (HIBYTE(v70))
          {
            if (dword_27E3827A8 <= 800)
            {
              if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v35, v36, v37, v38, "Network transition pause");
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "pausing for: %d secs\n", v35, v36, v37, v38, 20);
              }
            }

            v31 = sub_23EBEC174(*(v9 + 128), 20);
            if (v31)
            {
              goto LABEL_49;
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v35, v36, v37, v38, "Network transition pause");
            }
          }

          if (!sub_23EBEBC34(*(v9 + 128), cf, 0, v34, v35, v36, v37, v38))
          {
            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v35, v36, v37, v38, "Joining Network");
            }

            v31 = sub_23EBEE184(*(v9 + 128), cf, v73, 1, 0, v36, v37, v38);
            if (v31)
            {
              goto LABEL_49;
            }

            if (dword_27E3827A8 > 800)
            {
              goto LABEL_167;
            }

            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v35, v36, v37, v38, "Joining Network");
            }
          }
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v35, v36, v37, v38, "Final waiting for target base");
        }

LABEL_167:
        if (!sub_23EB6B064(*v9, v32, v33, v34, v35, v36, v37, v38))
        {
          if (dword_27E3827A8 <= 800)
          {
            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v63, v64, v37, v38, "No bonjour seed pause");
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "pausing for: %d secs\n", v63, v64, v37, v38, 8);
            }
          }

          v31 = sub_23EBEC174(*(v9 + 128), 8);
          if (v31)
          {
            goto LABEL_49;
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v35, v36, v37, v38, "No bonjour seed pause");
          }
        }

        v31 = sub_23EBED690(*(v9 + 128), v13, *v9, 1, 120, &v72, v37, v38);
        if (v31)
        {
LABEL_49:
          v12 = v31;
          goto LABEL_50;
        }

        v32 = v72;
        if (!v72)
        {
LABEL_195:
          v12 = 4294960568;
          goto LABEL_50;
        }

        v12 = sub_23EBC2A30(v9, v72);
        if (v72)
        {
          CFRelease(v72);
          v72 = 0;
        }

        if (!v12)
        {
          if (dword_27E3827A8 <= 800)
          {
            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v35, v36, v37, v38, "Final waiting for target base after firmware update");
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v35, v36, v37, v38, "Rereading settings after firmware update");
            }
          }

          v31 = sub_23EBBE61C(v9, 0, *v9, *(v9 + 8), 0, 0, 0, v38);
          if (v31)
          {
            goto LABEL_49;
          }

          if (dword_27E3827A8 <= 800)
          {
            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v35, v36, v37, v38, "Rereading settings after firmware update");
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v35, v36, v37, v38, "Checking if monitoring needs restored");
            }
          }

          v31 = sub_23EBC2B48(v9, v32, v33, v34, v35, v36, v37, v38);
          if (v31)
          {
            goto LABEL_49;
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v35, v36, v37, v38, "Checking if monitoring needs restored");
          }

          goto LABEL_108;
        }

LABEL_50:
        sub_23EBEA18C(*(v9 + 128), v32, v33, v34, v35, v36, v37, v38);
LABEL_21:
        sub_23EBB7814(v9, 0, a3, a4, a5, a6, a7, a8);
        sub_23EBC2C4C(v9, 5, 0, v12, v27, v28, v29, v30);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        goto LABEL_23;
      }

      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v35, v36, v37, v38, "Clearing Scan Cache");
      }
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v35, v36, v37, v38, "Pausing after restart");
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "pausing for: %d secs\n", v35, v36, v37, v38, 20);
      }
    }

    goto LABEL_142;
  }
}

uint64_t sub_23EBBBDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_TaskEraseDiskAsync(BSConfigurationContextRef, CFDictionaryRef)", 800, " \n", a5, a6, a7, a8, v27);
  }

  context = 0;
  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v10 = 4294960591;
  if (a2)
  {
    if (*(a1 + 120))
    {
      v10 = sub_23EBBBF6C(a1, 1165123913, a3, a4, a5, a6, a7, a8);
      if (!v10)
      {
        cf = 0;
        v10 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%ks=%O}", v11, v12, v13, v14, v15, "kAsyncParam_DiskOptions");
        if (v10)
        {
LABEL_11:
          sub_23EBB7814(a1, 0, v16, v17, v18, v19, v20, v21);
          return v10;
        }

        if (cf)
        {
          v10 = sub_23EBB7CA8(a1, cf, &context, v17, v18, v19, v20, v21);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v10)
          {
            goto LABEL_11;
          }

          v16 = context;
          if (!context)
          {
            v10 = 4294960568;
            goto LABEL_11;
          }

          dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBBC00C);
          sub_23EBB9D84(a1, 6, 1165123913, 1, v23, v24, v25, v26);
        }

        return 0;
      }
    }
  }

  return v10;
}

uint64_t sub_23EBBBF6C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_SetTaskStateAndCode(BSConfigurationContextRef, eBSConfigurationTaskState, ACPTaskCode)", 800, " \n", a5, a6, a7, a8, v11);
  }

  if (*(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  result = sub_23EBB7814(a1, 6u, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    *(a1 + 84) = a2;
  }

  return result;
}

void sub_23EBBC00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskEraseDiskSync(void *)", 800, " \n", a5, a6, a7, a8, v27);
  }

  if (a1)
  {
    v28 = 0;
    theDict = 0;
    if (*(a1 + 16) != 1634561902)
    {
      goto LABEL_15;
    }

    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_15;
    }

    if (*(v9 + 144) == 1634561902 && *(v9 + 8) && (v10 = *(a1 + 8)) != 0)
    {
      sub_23EB6FF14(v10, &theDict, "%ks", a4, a5, a6, a7, a8, "kAsyncParam_DiskOptions");
      if (!v11)
      {
        if (!theDict)
        {
          v13 = 4294960568;
          goto LABEL_14;
        }

        v11 = sub_23EBEA0DC(*(v9 + 128), v12, a3, a4, a5, a6, a7, a8);
        if (!v11)
        {
          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskEraseDiskSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", a5, a6, a7, a8, "Starting monitoring if needed");
          }

          v19 = sub_23EBC2E2C(v9, v18, a3, a4, a5, a6, a7, a8);
          if (!v19)
          {
            if (dword_27E3827A8 <= 800)
            {
              if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskEraseDiskSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v23, v24, v25, v26, "Starting monitoring if needed");
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskEraseDiskSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v23, v24, v25, v26, "Setting internal disk name");
              }
            }

            sub_23EB6FF14(theDict, &v28, "%kO", v22, v23, v24, v25, v26, @"volumeName");
            if (!v19)
            {
              v21 = v28;
              if (!v28)
              {
                v13 = 4294960568;
                goto LABEL_34;
              }

              v19 = sub_23EBB3DBC(*(v9 + 8), 1229213293, v28);
              if (!v19)
              {
                if (dword_27E3827A8 <= 800)
                {
                  if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
                  {
                    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskEraseDiskSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v23, v24, v25, v26, "Setting internal disk name");
                  }

                  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                  {
                    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskEraseDiskSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v23, v24, v25, v26, "Sending erase command");
                  }
                }

                v19 = sub_23EBB5BB4(*(v9 + 8), theDict);
                if (!v19)
                {
                  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                  {
                    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskEraseDiskSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v23, v24, v25, v26, "Sending erase command");
                  }

                  if (*(v9 + 144) == 1634561902)
                  {
                    sub_23EBEB3C0(*(v9 + 128), 0, v21, v22, v23, v24, v25, v26);
                  }

                  sub_23EBEA18C(*(v9 + 128), v20, v21, v22, v23, v24, v25, v26);
                  goto LABEL_15;
                }
              }
            }
          }

          v13 = v19;
LABEL_34:
          sub_23EBEA18C(*(v9 + 128), v20, v21, v22, v23, v24, v25, v26);
          goto LABEL_14;
        }
      }

      v13 = v11;
    }

    else
    {
      v13 = 4294960591;
    }

LABEL_14:
    sub_23EBB7814(v9, 0, a3, a4, a5, a6, a7, a8);
    sub_23EBC2C4C(v9, 6, 0, v13, v14, v15, v16, v17);
LABEL_15:
    sub_23EBC2368(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_23EBBC3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_TaskArchiveDiskAsync(BSConfigurationContextRef, CFDictionaryRef)", 800, " \n", a5, a6, a7, a8, v27);
  }

  context = 0;
  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v10 = 4294960591;
  if (a2)
  {
    if (*(a1 + 120))
    {
      v10 = sub_23EBBBF6C(a1, 1098015561, a3, a4, a5, a6, a7, a8);
      if (!v10)
      {
        cf = 0;
        v10 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%ks=%O}", v11, v12, v13, v14, v15, "kAsyncParam_DiskOptions");
        if (v10)
        {
LABEL_11:
          sub_23EBB7814(a1, 0, v16, v17, v18, v19, v20, v21);
          return v10;
        }

        if (cf)
        {
          v10 = sub_23EBB7CA8(a1, cf, &context, v17, v18, v19, v20, v21);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v10)
          {
            goto LABEL_11;
          }

          v16 = context;
          if (!context)
          {
            v10 = 4294960568;
            goto LABEL_11;
          }

          dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBBC554);
          sub_23EBB9D84(a1, 6, 1098015561, 1, v23, v24, v25, v26);
        }

        return 0;
      }
    }
  }

  return v10;
}

void sub_23EBBC554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskArchiveDiskSync(void *)", 800, " \n", a5, a6, a7, a8, v27);
  }

  if (a1)
  {
    theDict = 0;
    if (*(a1 + 16) != 1634561902)
    {
      goto LABEL_15;
    }

    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_15;
    }

    if (*(v9 + 144) == 1634561902 && *(v9 + 8) && (v10 = *(a1 + 8)) != 0)
    {
      sub_23EB6FF14(v10, &theDict, "%ks", a4, a5, a6, a7, a8, "kAsyncParam_DiskOptions");
      if (!v11)
      {
        if (!theDict)
        {
          v13 = 4294960568;
          goto LABEL_14;
        }

        v11 = sub_23EBEA0DC(*(v9 + 128), v12, a3, a4, a5, a6, a7, a8);
        if (!v11)
        {
          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskArchiveDiskSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", a5, a6, a7, a8, "Starting monitoring if needed");
          }

          v19 = sub_23EBC2E2C(v9, v18, a3, a4, a5, a6, a7, a8);
          if (!v19)
          {
            if (dword_27E3827A8 <= 800)
            {
              if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskArchiveDiskSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v23, v24, v25, v26, "Starting monitoring if needed");
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskArchiveDiskSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v23, v24, v25, v26, "Sending erase command");
              }
            }

            v19 = sub_23EBB5D0C(*(v9 + 8), theDict);
            if (!v19)
            {
              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskArchiveDiskSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v23, v24, v25, v26, "Sending erase command");
              }

              if (*(v9 + 144) == 1634561902)
              {
                sub_23EBEB3C0(*(v9 + 128), 0, v21, v22, v23, v24, v25, v26);
              }

              sub_23EBEA18C(*(v9 + 128), v20, v21, v22, v23, v24, v25, v26);
              goto LABEL_15;
            }
          }

          v13 = v19;
          sub_23EBEA18C(*(v9 + 128), v20, v21, v22, v23, v24, v25, v26);
          goto LABEL_14;
        }
      }

      v13 = v11;
    }

    else
    {
      v13 = 4294960591;
    }

LABEL_14:
    sub_23EBB7814(v9, 0, a3, a4, a5, a6, a7, a8);
    sub_23EBC2C4C(v9, 6, 0, v13, v14, v15, v16, v17);
LABEL_15:
    sub_23EBC2368(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_23EBBC828(uint64_t a1, uint64_t a2, CFTypeRef cf, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetConfigurationModeAndSetupOptions(BSConfigurationContextRef, eBSConfigurationSettingsMode, CFDictionaryRef)", 800, "inMode: %d \n", a5, a6, a7, a8, a2);
  }

  result = 4294960591;
  if (a1 && cf && *(a1 + 144) == 1634561902)
  {
    *(a1 + 72) = a2;
    *(a1 + 64) = cf;
    CFRetain(cf);
    return 0;
  }

  return result;
}

uint64_t sub_23EBBC8E4(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetTargetNetwork(BSConfigurationContextRef, CFDictionaryRef)", 800, " \n", a5, a6, a7, a8, v12);
  }

  result = 4294960591;
  if (a1 && cf && *(a1 + 144) == 1634561902)
  {
    if (*(a1 + 56))
    {
      return 4294960577;
    }

    else
    {
      v11 = CFRetain(cf);
      result = 0;
      *(a1 + 56) = v11;
    }
  }

  return result;
}

uint64_t sub_23EBBC998(uint64_t a1, const __CFString *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetTargetBaseAndSettings(BSConfigurationContextRef, CFDictionaryRef, CFDictionaryRef)", 800, " \n", a5, a6, a7, a8, v13);
  }

  result = 4294960591;
  if (a1 && a2 && *(a1 + 144) == 1634561902)
  {
    if (*a1)
    {
      return 4294960577;
    }

    else
    {
      result = sub_23EBBCA7C(a1, a2);
      if (a3 && !result)
      {
        v12 = *(a1 + 8);

        return sub_23EBB1354(v12, a3);
      }
    }
  }

  return result;
}

uint64_t sub_23EBBCA7C(uint64_t a1, const __CFString *cf)
{
  if (!a1)
  {
    return 4294960578;
  }

  if (*(a1 + 144) != 1634561902)
  {
    return 4294960578;
  }

  v4 = *a1;
  if (*a1 == cf)
  {
    return 0;
  }

  if (!cf || !v4)
  {
    goto LABEL_15;
  }

  v5 = CFEqual(cf, v4);
  if (!v5 || dword_27E3827A8 > 800)
  {
    if (v5)
    {
      return 0;
    }

    v4 = *a1;
LABEL_15:
    if (v4)
    {
      CFRelease(v4);
    }

    *a1 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v20 = *a1;
    v19 = *(a1 + 8);
    if (v19)
    {
      if (v20)
      {
        result = sub_23EBB10D4(v19, v20);
        if (result)
        {
          return result;
        }
      }

      else
      {
        *(a1 + 8) = 0;
        sub_23EBB0D6C(v19);
      }
    }

    else if (v20)
    {
      v21 = 0;
      result = sub_23EBB0E1C(&v21);
      if (result)
      {
        return result;
      }

      if (!v21)
      {
        return 4294960568;
      }

      *(a1 + 8) = v21;
    }

    return 0;
  }

  if (dword_27E3827A8 != -1 || (result = sub_23EB74AC8(&dword_27E3827A8, 0x320u), result))
  {
    v14 = sub_23EB6AE14(cf, v6, v7, v8, v9, v10, v11, v12);
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetTargetBase(BSConfigurationContextRef, CFDictionaryRef)", 800, "equal SKIPPING update for: %@\n", v15, v16, v17, v18, v14);
    return 0;
  }

  return result;
}

uint64_t sub_23EBBCBC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_Create(BSConfigurationContextRef *)", 800, " \n", a5, a6, a7, a8, v27);
  }

  if (!a1)
  {
    return 4294960591;
  }

  v9 = malloc_type_calloc(1uLL, 0x98uLL, 0x1060040BBF23B49uLL);
  if (!v9)
  {
    return 4294960568;
  }

  v10 = v9;
  *(v9 + 17) = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 60) = 0u;
  *(v9 + 10) = 0;
  *(v9 + 87) = 0;
  *(v9 + 12) = 0;
  *(v9 + 13) = 0;
  *(v9 + 15) = dispatch_group_create();
  *(v10 + 112) = dispatch_queue_create("BSConfiguration_serial_queue", 0);
  v25 = sub_23EBE9B10((v10 + 128), v11, v12, v13, v14, v15, v16, v17);
  if (!v25)
  {
    if (*(v10 + 128))
    {
      v25 = 0;
      *(v10 + 144) = 1634561902;
      *a1 = v10;
      return v25;
    }

    v25 = 4294960568;
  }

  sub_23EBBCCF0(v10, v18, v19, v20, v21, v22, v23, v24);
  return v25;
}

uint64_t sub_23EBBCCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_Release(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v30);
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v9 = sub_23EBBCEC0(a1, 1, a3, a4, a5, a6, a7, a8);
  if (dword_27E3827A8 <= 800)
  {
    v17 = v9;
    if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
    {
      sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_Release(BSConfigurationContextRef)", 800, "cancel err: %#m \n", v13, v14, v15, v16, v17);
    }
  }

  *(a1 + 144) = 1095585614;
  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    sub_23EBB0D6C(v18);
  }

  v19 = *(a1 + 16);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 16) = 0;
  }

  v20 = *(a1 + 24);
  if (v20)
  {
    sub_23EBB0D6C(v20);
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 32) = 0;
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 40) = 0;
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 48) = 0;
  }

  v24 = *(a1 + 56);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 56) = 0;
  }

  v25 = *(a1 + 64);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 64) = 0;
  }

  v26 = *(a1 + 120);
  if (v26)
  {
    dispatch_release(v26);
  }

  *(a1 + 120) = 0;
  v27 = *(a1 + 112);
  if (v27)
  {
    dispatch_release(v27);
  }

  *(a1 + 112) = 0;
  v28 = *(a1 + 136);
  if (v28)
  {
    sub_23EC0F608(v28);
  }

  *(a1 + 136) = 0;
  sub_23EBE9CC0(*(a1 + 128), v10, v11, v12, v13, v14, v15, v16);
  free(a1);
  return 0;
}

uint64_t sub_23EBBCEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_Cancel(BSConfigurationContextRef, Boolean)", 800, " \n", a5, a6, a7, a8, v20);
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_23EBBD00C(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v12 = sub_23EBEA004(*(a1 + 128), a2, a3, a4, a5, a6, a7, a8);
  if (v12 == -6720)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    sub_23EBB1414(v14);
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    sub_23EBB1414(v15);
  }

  dispatch_group_wait(*(a1 + 120), 0xFFFFFFFFFFFFFFFFLL);
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_Cancel(BSConfigurationContextRef, Boolean)", 800, "Done waiting on dispatch group \n", v16, v17, v18, v19, v20);
  }

  result = 4294960525;
  if (v13 != -6771 && v10 != -6771)
  {
    if (v13)
    {
      return v13;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

uint64_t sub_23EBBD00C(void *context, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_CancelTask(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v11);
  }

  if (!context || *(context + 36) != 1634561902)
  {
    return 4294960591;
  }

  if (*(context + 20) == 6)
  {
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_CancelDiskTaskAsync(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v11);
    }

    if (*(context + 36) == 1634561902)
    {
      v9 = *(context + 15);
      if (v9)
      {
        dispatch_group_async_f(v9, *(context + 14), context, sub_23EBC3770);
        return 4294960525;
      }
    }

    return 4294960591;
  }

  return 0;
}

uint64_t sub_23EBBD130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetProgressCallback(BSConfigurationContextRef, assistant_progress_t, void *)", 800, " \n", a5, a6, a7, a8, v13);
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v11 = *(a1 + 128);

  return sub_23EBEAA74(v11, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_23EBBD1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetAssistantCallback(BSConfigurationContextRef, assistant_callback_t, void *)", 800, " \n", a5, a6, a7, a8, v13);
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v11 = *(a1 + 128);

  return sub_23EBEA4E8(v11, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_23EBBD2B8(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t sub_23EBBD2C4(uint64_t a1, uint64_t a2, CFTypeRef cf, CFTypeRef a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetModeSourceBaseAndSettings(BSConfigurationContextRef, eBSConfigurationSettingsMode, CFDictionaryRef, CFDictionaryRef)", 800, "inMode: %d \n", a5, a6, a7, a8, a2);
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  *(a1 + 72) = a2;
  if (cf)
  {
    *(a1 + 16) = cf;
    CFRetain(cf);
  }

  if (a4)
  {
    *(a1 + 32) = a4;
    CFRetain(a4);
  }

  return 0;
}

uint64_t sub_23EBBD398(uint64_t a1, CFTypeRef cf, int a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x277D85DE8];
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetSettingsToJoinNetwork(BSConfigurationContextRef, CFDictionaryRef, BSSecMode, CFStringRef)", 800, " \n", a5, a6, a7, a8, v16);
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  result = 4294960591;
  if (cf && *(a1 + 8))
  {
    *(a1 + 72) = 2;
    *(a1 + 48) = cf;
    CFRetain(cf);
    v14 = sub_23EC0F94C(*(a1 + 48), v13);
    if (v14)
    {
      v15 = v14;
      v17 = 0;
      result = sub_23EBB3F7C(*(a1 + 8), 1937327724, &v17);
      if (!result)
      {
        if ((v17 & 0x40) != 0 || (result = sub_23EBB3E08(*(a1 + 8), 2002862934, 768), !result))
        {
          sub_23EBB6A4C(v18, 0x15uLL);
          result = sub_23EBB3C0C(*(a1 + 8), v18, 1);
          if (!result)
          {
            sub_23EBB6A4C(v18, 0x15uLL);
            result = sub_23EBB3B84(*(a1 + 8), v18, v15);
            if (!result)
            {
              sub_23EBB6A4C(v18, 0x15uLL);
              result = sub_23EBB3C0C(*(a1 + 8), v18, a3);
              if (!result)
              {
                if (a3 == 1 || !a4 || (sub_23EBB6A4C(v18, 0x15uLL), result = sub_23EBB3B84(*(a1 + 8), v18, a4), !result))
                {
                  result = sub_23EBB3E08(*(a1 + 8), 1651724877, 3);
                  if (!result)
                  {
                    result = sub_23EBB4248(*(a1 + 8), 1884509249);
                    if (result)
                    {
                      sub_23EBB6A4C(v18, 0x15uLL);
                      return sub_23EBB3B84(*(a1 + 8), v18, *MEMORY[0x277CBED28]);
                    }
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
      return 4294960569;
    }
  }

  return result;
}

uint64_t sub_23EBBD5FC(uint64_t a1, const __CFString *a2, int a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[3] = *MEMORY[0x277D85DE8];
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetSettingsToCreateNetwork(BSConfigurationContextRef, CFStringRef, BSSecMode, CFStringRef, Boolean)", 800, " \n", a5, a6, a7, a8, v13[0]);
  }

  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 8) || a3 != 1 && !a4)
  {
    return 4294960591;
  }

  *(a1 + 72) = 1;
  sub_23EBB6A4C(v13 + 3, 0x15uLL);
  result = sub_23EBB3C0C(*(a1 + 8), v13 + 3, 0);
  if (!result)
  {
    sub_23EBB6A4C(v13 + 3, 0x15uLL);
    result = sub_23EBB3B84(*(a1 + 8), v13 + 3, a2);
    if (!result)
    {
      sub_23EBB6A4C(v13 + 3, 0x15uLL);
      result = sub_23EBB3C0C(*(a1 + 8), v13 + 3, a3);
      if (!result)
      {
        if (a3 == 1 || (sub_23EBB6A4C(v13 + 3, 0x15uLL), result = sub_23EBB3B84(*(a1 + 8), v13 + 3, a4), !result))
        {
          sub_23EBB6A4C(v13 + 3, 0x15uLL);
          result = sub_23EBB3B84(*(a1 + 8), v13 + 3, *MEMORY[0x277CBED28]);
          if (!result)
          {
            return sub_23EBB3E08(*(a1 + 8), 1651724877, 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EBBD7F0(uint64_t a1, CFTypeRef cf)
{
  if (!a1 || *(a1 + 144) != 1634561902 || *(a1 + 104))
  {
    return 4294960591;
  }

  *(a1 + 72) = 3;
  *(a1 + 104) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return 0;
}

uint64_t sub_23EBBD854(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 4294960591;
  }

  result = 4294960591;
  if (cf && *(a1 + 144) == 1634561902 && !*(a1 + 104))
  {
    *(a1 + 72) = 4;
    *(a1 + 104) = cf;
    CFRetain(cf);
    return 0;
  }

  return result;
}

uint64_t sub_23EBBD8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetupSecureWANManagementFlags(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v16);
  }

  if (!a1)
  {
    return 4294960591;
  }

  if (*(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v9 = *(a1 + 8);
  if (!v9)
  {
    return 4294960591;
  }

  v17 = 0;
  result = sub_23EBB3F7C(v9, 1937327724, &v17 + 4);
  if (!result)
  {
    if ((v17 & 0x4000000000) == 0)
    {
      return 0;
    }

    v11 = *MEMORY[0x277CBED10];
    result = sub_23EBB3DBC(*(a1 + 8), 1651725143, *MEMORY[0x277CBED10]);
    if (!result)
    {
      result = sub_23EBB3F7C(*(a1 + 8), 1936017004, &v17);
      if (!result)
      {
        if ((v17 & 0x10001) != 0x10000)
        {
          return 0;
        }

        result = sub_23EBB3DBC(*(a1 + 8), 1651726147, v11);
        if (!result)
        {
          if (dword_27E3827A8 > 800)
          {
            return 0;
          }

          if (dword_27E3827A8 != -1 || (result = sub_23EB74AC8(&dword_27E3827A8, 0x320u), result))
          {
            sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetupSecureWANManagementFlags(BSConfigurationContextRef)", 800, "BSSimpleWanConfiguration OFF \n", v12, v13, v14, v15, v16);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EBBDA3C(uint64_t a1, int a2, const __CFString *a3, const __CFString **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_CopySourceWiFIPlistForImport(BSConfigurationContextRef, eBSConfigurationSettingsMode, CFDictionaryRef, CFDictionaryRef *)", 800, " \n", a5, a6, a7, a8, v37);
  }

  v12 = 4294960591;
  if (a1)
  {
    if (a4)
    {
      if (a3)
      {
        if (*(a1 + 144) == 1634561902)
        {
          theData = 0;
          cf = 0;
          sub_23EB6FF14(a3, &cf, "%kC", a4, a5, a6, a7, a8, 1466517097);
          v12 = v13;
          if (!v13)
          {
            if (!cf)
            {
              return 4294960568;
            }

            TypeID = CFDictionaryGetTypeID();
            if (TypeID != CFGetTypeID(cf))
            {
              return 4294960540;
            }

            DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], cf, 2uLL);
            if (!DeepCopy)
            {
              return 4294960568;
            }

            v21 = DeepCopy;
            sub_23EB6FF14(a3, &theData, "%kC", v16, v17, v18, v19, v20, 1717920116);
            if (!v22)
            {
              if (!theData)
              {
                v12 = 4294960568;
                goto LABEL_15;
              }

              v28 = !sub_23EBB4248(*(a1 + 8), 1198748750) || sub_23EBEF2E4(theData, 1198748750) == 0;
              v29 = 0;
              while (1)
              {
                sub_23EB6C4D0(v21, 0, off_278C690E8[v29], 0, v24, v25, v26, v27);
                if (v22)
                {
                  break;
                }

                if (++v29 == 29)
                {
                  if (*(a1 + 144) == 1634561902 && (*(a1 + 72) - 13) >= 0xFFFFFFFC)
                  {
                    if (sub_23EBB4248(*(a1 + 8), 1884509249) && sub_23EBEF2E4(theData, 1884509249) || (sub_23EB6C4D0(v21, 0, @"pSTA", 0, v33, v34, v35, v36), !v22))
                    {
                      if (!v28 || (sub_23EB6C4D0(v21, 0, @"vaps", 0, v33, v34, v35, v36), !v22))
                      {
LABEL_52:
                        v12 = 0;
                        *a4 = v21;
                        return v12;
                      }
                    }
                  }

                  else
                  {
                    v30 = 0;
                    while (1)
                    {
                      sub_23EB6C4D0(v21, 0, off_278C691D8[v30], 0, v24, v25, v26, v27);
                      if (v22)
                      {
                        break;
                      }

                      if (++v30 == 4)
                      {
                        if (v28)
                        {
                          sub_23EB6C4D0(v21, 0, @"vaps", 0, v24, v25, v26, v27);
                          if (v22)
                          {
                            goto LABEL_14;
                          }
                        }

                        if (a2 != 8 && a2 != 6)
                        {
                          goto LABEL_38;
                        }

                        sub_23EB6C4D0(v21, 0, @"raCA", *MEMORY[0x277CBED28], v24, v25, v26, v27);
                        if (v22)
                        {
                          goto LABEL_14;
                        }

                        if (a2 != 8)
                        {
LABEL_38:
                          v31 = 0;
                          while (1)
                          {
                            sub_23EB6C4D0(v21, 0, off_278C69200[v31], 0, v24, v25, v26, v27);
                            if (v22)
                            {
                              goto LABEL_14;
                            }

                            if (++v31 == 16)
                            {
                              if (a2 != 7 && a2 != 2)
                              {
                                goto LABEL_52;
                              }

                              v32 = 0;
                              while (1)
                              {
                                sub_23EB6C4D0(v21, 0, off_278C69288[v32], 0, v24, v25, v26, v27);
                                if (v22)
                                {
                                  goto LABEL_14;
                                }

                                if (++v32 == 9)
                                {
                                  goto LABEL_52;
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_52;
                      }
                    }
                  }

                  break;
                }
              }
            }

LABEL_14:
            v12 = v22;
LABEL_15:
            CFRelease(v21);
          }
        }
      }
    }
  }

  return v12;
}

uint64_t sub_23EBBDDB0(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_UpdateSettingsWithConfigOptions(BSConfigurationContextRef, CFDictionaryRef)", 800, " \n", a5, a6, a7, a8, v125);
  }

  v132 = 0;
  v133 = 0;
  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960578;
  }

  if (!a2 || !*(a1 + 72))
  {
    return 4294960591;
  }

  v136 = 0;
  v137 = 0;
  v135 = 0;
  v134 = 0;
  v131 = 0;
  sub_23EB6FF14(a2, &v137, "%kO", a4, a5, a6, a7, a8, @"kBSAutoGuessSetupOptionKey_BaseName");
  if (v10)
  {
    return v10;
  }

  if (!v137)
  {
    return 4294960569;
  }

  sub_23EB6FF14(a2, &v136, "%kO", v11, v12, v13, v14, v15, @"kBSAutoGuessSetupOptionKey_TargetBase");
  if (v18 == -6727)
  {
    cf = 0;
    sub_23EB6FF14(a2, &v135, "%kO", v19, v20, v21, v22, v23, @"kBSAutoGuessSetupOptionKey_TargetNetwork");
    if (v10)
    {
      return v10;
    }

    if (!v135)
    {
      return 4294960568;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_UpdateSettingsWithConfigOptions(BSConfigurationContextRef, CFDictionaryRef)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v52, v53, v54, v55, "Joining/browsing for target");
    }

    v10 = sub_23EBEEA6C(*(a1 + 128), v135, 0, &cf, v52, v53, v54, v55);
    if (v10)
    {
      return v10;
    }

    if (cf)
    {
      v16 = sub_23EBBCA7C(a1, cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v16)
      {
        return v16;
      }
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_UpdateSettingsWithConfigOptions(BSConfigurationContextRef, CFDictionaryRef)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v56, v57, v58, v59, "Joining/browsing for target");
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_UpdateSettingsWithConfigOptions(BSConfigurationContextRef, CFDictionaryRef)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v56, v57, v58, v59, "Reading target settings");
      }
    }

    v10 = sub_23EBBE61C(a1, 0, *a1, *(a1 + 8), 0, 0, 1, v59);
    if (v10)
    {
      return v10;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_UpdateSettingsWithConfigOptions(BSConfigurationContextRef, CFDictionaryRef)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v32, v33, v34, v35, "Reading target settings");
    }
  }

  else
  {
    v16 = v18;
    if (v18)
    {
      return v16;
    }

    if (!v136)
    {
      return 4294960568;
    }

    sub_23EB6FF14(a2, &v134, "%kO", v19, v20, v21, v22, v23, @"kBSAutoGuessSetupOptionKey_TargetSettings");
    if (v10)
    {
      return v10;
    }

    if (!v134)
    {
      return 4294960568;
    }

    v10 = sub_23EBBC998(a1, v136, v134, v24, v25, v26, v27, v28);
    if (v10)
    {
      return v10;
    }
  }

  v10 = sub_23EBBD8BC(a1, v29, v30, v31, v32, v33, v34, v35);
  if (v10)
  {
    return v10;
  }

  v41 = *(a1 + 72);
  v16 = 4294960561;
  if (v41 > 3)
  {
    if ((v41 - 6) < 6)
    {
      sub_23EB6FF14(a2, &v133, "%kO", v36, v37, v38, v39, v40, @"kBSAutoGuessSetupOptionKey_SourceBase");
      if (!v10)
      {
        if (!v133)
        {
          return 4294960568;
        }

        sub_23EB6FF14(a2, &v132, "%kO", v42, v43, v44, v45, v46, @"kBSAutoGuessSetupOptionKey_SourceSettings");
        if (v47 != -6727)
        {
          v16 = v47;
          if (v47)
          {
            return v16;
          }

          if (!v132)
          {
            return 4294960568;
          }
        }

        goto LABEL_60;
      }

      return v10;
    }

    if (v41 != 4)
    {
      if (v41 != 12)
      {
        return v16;
      }

      sub_23EB6FF14(a2, &v133, "%kO", v36, v37, v38, v39, v40, @"kBSAutoGuessSetupOptionKey_SourceBase");
      if (v10)
      {
        return v10;
      }

      if (!v133)
      {
        return 4294960568;
      }

LABEL_67:
      v129 = 0;
      cf = 0;
      v127 = 0;
      v128 = 0;
      sub_23EB6FF14(a2, &cf, "%kO", v36, v37, v38, v39, v40, @"kBSAutoGuessSetupOptionKey_NetworkName");
      if (v10)
      {
        return v10;
      }

      if (!cf)
      {
        return 4294960568;
      }

      sub_23EB6FF14(a2, &v129, "%kO", v61, v62, v63, v64, v65, @"kBSAutoGuessSetupOptionKey_NetworkPassword");
      if (v10)
      {
        return v10;
      }

      if (!v129)
      {
        return 4294960568;
      }

      sub_23EB6FF14(a2, &v128, "%kO", v66, v67, v68, v69, v70, @"kBSAutoGuessSetupOptionKey_BasePassword");
      if (v10)
      {
        return v10;
      }

      if (!v128)
      {
        return 4294960568;
      }

      v131 = 0;
      sub_23EB6FF14(a2, &v131, "%kO:BOOL", v71, v72, v73, v74, v75, @"kBSAutoGuessSetupOptionKey_SkipInternetTests");
      if (!v76 || (v16 = v76, v76 == -6727))
      {
        if (!sub_23EBB4248(*(a1 + 8), 1464877357))
        {
          return 4294960561;
        }

        if (sub_23EBB4248(*(a1 + 8), 1095062317))
        {
          v80 = 7;
        }

        else
        {
          v80 = 4;
        }

        v10 = sub_23EBBD5FC(a1, cf, v80, v129, 0, v77, v78, v79);
        if (v10)
        {
          return v10;
        }

        v10 = sub_23EBB3DBC(*(a1 + 8), 1937330263, v128);
        if (v10)
        {
          return v10;
        }

        sub_23EBBEA58(a1, a2, v81, v82, v83, v84, v85, v86);
        if (v10)
        {
          return v10;
        }

        sub_23EB6FF14(a2, &v127, "%kO", v87, v88, v89, v90, v91, @"kBSAutoGuessSetupOptionKey_DiskSharing_Password");
        if (v92 == -6727)
        {
          goto LABEL_60;
        }

        v16 = v92;
        if (v92)
        {
          return v16;
        }

        if (!v127)
        {
          return 4294960568;
        }

        v10 = sub_23EBB3E08(*(a1 + 8), 1651721805, 1);
        if (v10)
        {
          return v10;
        }

        v93 = *(a1 + 8);
        v94 = v127;
        v95 = 1718842224;
LABEL_112:
        v10 = sub_23EBB3DBC(v93, v95, v94);
        if (v10)
        {
          return v10;
        }

        goto LABEL_60;
      }

      return v16;
    }

    v129 = 0;
    cf = 0;
    sub_23EB6FF14(a2, &v129, "%kO", v36, v37, v38, v39, v40, @"kBSAutoGuessSetupOptionKey_ConfigChangeLogDict");
    if (v10)
    {
      return v10;
    }

    if (!v129)
    {
      return 4294960568;
    }

    v10 = sub_23EBBD854(a1, v129);
    if (v10)
    {
      return v10;
    }

    sub_23EB6FF14(a2, &cf, "%kO", v115, v116, v117, v118, v119, @"kBSAutoGuessSetupOptionKey_BasePassword");
    if (v10)
    {
      return v10;
    }

    if (!cf)
    {
      return 4294960568;
    }

    v16 = sub_23EBB3DBC(*(a1 + 8), 1937330263, cf);
    if (v16)
    {
      return v16;
    }

LABEL_60:
    if (!v133)
    {
      return sub_23EBB3DBC(*(a1 + 8), 1937329773, v137);
    }

    v10 = sub_23EBBD2C4(a1, *(a1 + 72), v133, v132, v48, v49, v50, v51);
    if (!v10)
    {
      return sub_23EBB3DBC(*(a1 + 8), 1937329773, v137);
    }

    return v10;
  }

  if (v41 == 1)
  {
    goto LABEL_67;
  }

  if (v41 != 2)
  {
    if (v41 != 3)
    {
      return v16;
    }

    cf = 0;
    sub_23EB6FF14(a2, &cf, "%kO", v36, v37, v38, v39, v40, @"kBSAutoGuessSetupOptionKey_ConfigChangeLogDict");
    if (v60)
    {
      v16 = v60;
      if (v60 != -6727)
      {
        return v16;
      }
    }

    v10 = sub_23EBBD7F0(a1, cf);
    if (v10)
    {
      return v10;
    }

    goto LABEL_60;
  }

  cf = 0;
  v128 = 0;
  v126 = 0;
  sub_23EB6FF14(a2, &cf, "%kO", v36, v37, v38, v39, v40, @"kBSAutoGuessSetupOptionKey_SourceNetwork");
  if (v10)
  {
    return v10;
  }

  if (!cf)
  {
    return 4294960568;
  }

  sub_23EC0F8D8(cf, &v126, 0);
  if (v126 == 8)
  {
    v126 = 5;
  }

  v129 = 0;
  sub_23EB6FF14(a2, &v129, "%kO", v96, v97, v98, v99, v100, @"kBSAutoGuessSetupOptionKey_NetworkPassword");
  if (v101)
  {
    v16 = v101;
    if (v101 != -6727)
    {
      return v16;
    }
  }

  sub_23EB6FF14(a2, &v128, "%kO", v102, v103, v104, v105, v106, @"kBSAutoGuessSetupOptionKey_BasePassword");
  if (v107)
  {
    v16 = v107;
    if (v107 != -6727)
    {
      return v16;
    }

    if (sub_23EB6A30C(*a1, v108, v109, v110, v111, v112, v113, v114))
    {
      v128 = @"public";
      goto LABEL_106;
    }

    return 4294960569;
  }

  if (!v128)
  {
    return 4294960568;
  }

LABEL_106:
  v127 = 0;
  sub_23EB6FF14(a2, &v127, "%kO", v110, v111, v112, v113, v114, @"kBSAutoGuessSetupOptionKey_AirPlayPassword");
  if (!v120 || (v16 = v120, v120 == -6727))
  {
    v10 = sub_23EBBD398(a1, cf, v126, v129, v121, v122, v123, v124);
    if (v10)
    {
      return v10;
    }

    v10 = sub_23EBB3DBC(*(a1 + 8), 1937330263, v128);
    if (v10)
    {
      return v10;
    }

    v94 = v127;
    if (!v127)
    {
      goto LABEL_60;
    }

    v93 = *(a1 + 8);
    v95 = 1635077712;
    goto LABEL_112;
  }

  return v16;
}

uint64_t sub_23EBBE61C(uint64_t a1, const __CFArray *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_ReadPropertiesForBase(BSConfigurationContextRef, CFArrayRef, CFDictionaryRef, BSRef, Boolean, Boolean, Boolean)", 800, "\n", a5, a6, a7, a8, v61);
  }

  if (!a3 || !a4)
  {
    v32 = 4294960591;
    sub_23EBEB0B0(*(a1 + 128), 19, 4294960591, 0, a5, a6, a7, a8);
    return v32;
  }

  sub_23EB6A6F0(a3);
  v23 = 18;
  if (!v15)
  {
    v23 = 3;
  }

  v66 = v23;
  if (v15)
  {
    v24 = 10;
  }

  else
  {
    v24 = 6;
  }

  if (v9)
  {
    v25 = sub_23EBEA0DC(*(a1 + 128), v16, v17, v18, v19, v20, v21, v22);
    if (v25)
    {
      v30 = v25;
      v31 = 0;
      a3 = 0;
      goto LABEL_63;
    }
  }

  v65 = v24;
  CFRetain(a3);
  v31 = sub_23EB6AE14(a3, v33, v34, v35, v36, v37, v38, v39);
  if (!v31)
  {
    v30 = -6727;
    goto LABEL_61;
  }

  v62 = v8;
  sub_23EBEB0B0(*(a1 + 128), 18, 0, v31, v26, v27, v28, v29);
  v64 = 0;
  v63 = 0;
  v43 = 0;
  while (1)
  {
    while (1)
    {
      v44 = sub_23EBB14AC(a4, a2, 1);
      if (v44 != -16)
      {
        break;
      }

      if (v43)
      {
        v43 = 1;
        if (v10)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (*(a1 + 144) != 1634561902 || !sub_23EB6AE14(a3, v40, v41, v42, v26, v27, v28, v29))
        {
LABEL_60:
          v30 = -6705;
          goto LABEL_61;
        }

        cf = 0;
        v45 = sub_23EBECA80(*(a1 + 128), @"keychainBaseStationType", a3, &cf, v26, v27, v28, v29);
        if (v45)
        {
          v30 = v45;
          if (v45 == -6727)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v41 = cf;
          if (!cf)
          {
            v30 = -6728;
            goto LABEL_61;
          }

          v30 = sub_23EBB3DBC(a4, 1651721296, cf);
          if (cf)
          {
            CFRelease(cf);
          }
        }

        v43 = 1;
        if (v30)
        {
          if (v30 != -6727)
          {
            goto LABEL_61;
          }

LABEL_32:
          if (v62 && !*(a1 + 90))
          {
            v46 = sub_23EBEA310(*(a1 + 128), 0, v41, v42, v26, v27, v28, v29);
            if (v46 || !v10)
            {
              if (v46)
              {
                v30 = v46;
              }

              else
              {
                v30 = -16;
              }

              goto LABEL_61;
            }
          }

          else if (!v10)
          {
            v30 = -16;
            goto LABEL_61;
          }

LABEL_46:
          if (*(a1 + 144) != 1634561902)
          {
            goto LABEL_60;
          }

          cf = 0;
          CFRetain(a3);
          v54 = sub_23EB6AE14(a3, v47, v48, v49, v50, v51, v52, v53);
          if (!v54)
          {
            v30 = -6705;
LABEL_74:
            CFRelease(a3);
            goto LABEL_61;
          }

          v59 = sub_23EBECE2C(*(a1 + 128), @"keychainBaseStationType", v54, &cf, v55, v56, v57, v58);
          if (v59)
          {
            v30 = v59;
            goto LABEL_74;
          }

          if (!cf)
          {
            v30 = -6728;
            goto LABEL_74;
          }

          v30 = sub_23EBB3DBC(a4, 1651721296, cf);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          CFRelease(a3);
          v63 = 1;
          v43 = 1;
          if (v30)
          {
            goto LABEL_61;
          }
        }
      }
    }

    v30 = v44;
    if (v44 != -6753)
    {
      break;
    }

    if (v64 == v66 - 1)
    {
      v30 = -6753;
      goto LABEL_61;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_ReadPropertiesForBase(BSConfigurationContextRef, CFArrayRef, CFDictionaryRef, BSRef, Boolean, Boolean, Boolean)", 800, "## connection err, retries: %d of %d \n", v26, v27, v28, v29, v64 + 1);
    }

    ++v64;
    v30 = sub_23EBEC174(*(a1 + 128), v65);
    if (v30)
    {
      goto LABEL_61;
    }
  }

  if (!v44)
  {
    LOBYTE(cf) = 0;
    v30 = sub_23EBEA268(*(a1 + 128), &cf, v41, v42, v26, v27, v28, v29);
    if (!v30 && cf && v63)
    {
      sub_23EBC3980(a1, a3, a4, v42, v26, v27, v28, v29);
    }
  }

LABEL_61:
  if (v9)
  {
    sub_23EBEA18C(*(a1 + 128), v40, v41, v42, v26, v27, v28, v29);
  }

LABEL_63:
  if (v30 == -6735)
  {
    v32 = 4294967280;
  }

  else
  {
    v32 = v30;
  }

  sub_23EBEB0B0(*(a1 + 128), 19, v32, v31, v26, v27, v28, v29);
  if (a3)
  {
    CFRelease(a3);
  }

  return v32;
}

void sub_23EBBEA58(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a1 + 144) == 1634561902)
  {
    if (*(a1 + 8))
    {
      theString = 0;
      v30 = 0;
      v29 = 0;
      sub_23EB6FF14(a2, &v30, "%kO:BOOL", a4, a5, a6, a7, a8, @"kBSAutoGuessSetupOptionKey_GuestNetwork_On");
      if (!v10)
      {
        sub_23EBB6A4C(v32, 0x15uLL);
        if (!sub_23EBB3C94(*(a1 + 8), v32, v30 != 0))
        {
          if (v30)
          {
            sub_23EB6FF14(a2, &theString, "%kO", v11, v12, v13, v14, v15, @"kBSAutoGuessSetupOptionKey_GuestNetwork_Name");
            if (v16 == -6727 || !v16 && theString && (sub_23EBB6A4C(v32, 0x15uLL), !sub_23EBB3B84(*(a1 + 8), v32, theString)))
            {
              sub_23EB6FF14(a2, &v29, "%kO:int", v17, v18, v19, v20, v21, @"kBSAutoGuessSetupOptionKey_GuestNetwork_Security");
              if (!v22)
              {
                sub_23EBB6A4C(v32, 0x15uLL);
                if (!sub_23EBB3C0C(*(a1 + 8), v32, v29) && v29 != 1)
                {
                  sub_23EB6FF14(a2, &theString, "%kO", v23, v24, v25, v26, v27, @"kBSAutoGuessSetupOptionKey_GuestNetwork_Password");
                  if (!v28)
                  {
                    if (theString)
                    {
                      if (CFStringGetLength(theString))
                      {
                        sub_23EBB6A4C(v32, 0x15uLL);
                        sub_23EBB3B84(*(a1 + 8), v32, theString);
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
}

uint64_t sub_23EBBEC90(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  result = 4294960591;
  if (a2 && *(a1 + 144) == 1634561902)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      result = 0;
      *a2 = v4;
    }

    else
    {
      return 4294960569;
    }
  }

  return result;
}

uint64_t sub_23EBBECD8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_GetSaveBasePasswordToKeychain(BSConfigurationContextRef, Boolean *)", 800, " \n", a5, a6, a7, a8, v12);
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v10 = *(a1 + 128);

  return sub_23EBEA268(v10, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_23EBBED88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetSaveBasePasswordToKeychain(BSConfigurationContextRef, Boolean)", 800, " \n", a5, a6, a7, a8, v12);
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v10 = *(a1 + 128);

  return sub_23EBEA310(v10, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_23EBBEE38(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_GetSaveWiFiPasswordToKeychain(BSConfigurationContextRef, Boolean *)", 800, " \n", a5, a6, a7, a8, v12);
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v10 = *(a1 + 128);

  return sub_23EBEA3A8(v10, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_23EBBEEE8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetSaveWiFiPasswordToKeychain(BSConfigurationContextRef, Boolean)", 800, " \n", a5, a6, a7, a8, v12);
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v10 = *(a1 + 128);

  return sub_23EBEA450(v10, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_23EBBEF98(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetAskAboutSavingBasePasswords(BSConfigurationContextRef, Boolean)", 800, " \n", a5, a6, a7, a8, v11);
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  result = 0;
  *(a1 + 90) = a2;
  return result;
}

uint64_t sub_23EBBF030(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetSettingsModeIsAutomatic(BSConfigurationContextRef, Boolean)", 800, " \n", a5, a6, a7, a8, v11);
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  result = 0;
  *(a1 + 76) = a2;
  return result;
}

uint64_t sub_23EBBF0C8(uint64_t a1, void *a2)
{
  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960578;
  }

  if (!a2)
  {
    return 4294960591;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 4294960569;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t sub_23EBBF110(uint64_t *a1, void *a2)
{
  if (!a1 || *(a1 + 36) != 1634561902)
  {
    return 4294960578;
  }

  if (!a2)
  {
    return 4294960591;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 4294960569;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t sub_23EBBF158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_JoinAsync(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v10);
  }

  context = 0;
  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120))
  {
    return 4294960591;
  }

  result = sub_23EBB7CA8(a1, 0, &context, a4, a5, a6, a7, a8);
  if (!result)
  {
    if (context)
    {
      dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBBF238);
      return 0;
    }

    else
    {
      return 4294960568;
    }
  }

  return result;
}

void sub_23EBBF238(_DWORD *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_JoinSync(void *)", 800, " \n", a5, a6, a7, a8, v13);
  }

  if (a1)
  {
    if (a1[4] == 1634561902)
    {
      v9 = *a1;
      v10 = *(*a1 + 56);
      v11 = sub_23EC0F94C(v10, a2);
      if (v11)
      {
        v12 = v11;
        if (sub_23EC0F95C(v10, a2))
        {
          if (!sub_23EBEBC34(*(v9 + 128), v12, 0, a4, a5, a6, a7, a8))
          {
            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_JoinSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", a5, a6, a7, a8, "Joining Network");
            }

            if (!sub_23EBEE390(*(v9 + 128), v10, &stru_285145FE8, 1, 0, a6, a7, a8) && dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_JoinSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", a5, a6, a7, a8, "Joining Network");
            }
          }
        }
      }
    }

    sub_23EBC2368(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_23EBBF400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_JoinAndBrowseAsync(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v10);
  }

  context = 0;
  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120))
  {
    return 4294960591;
  }

  result = sub_23EBB7CA8(a1, 0, &context, a4, a5, a6, a7, a8);
  if (!result)
  {
    if (context)
    {
      dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBBF4E0);
      return 0;
    }

    else
    {
      return 4294960568;
    }
  }

  return result;
}

void sub_23EBBF4E0(_DWORD *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_JoinAndBrowseSync(void *)", 800, " \n", a5, a6, a7, a8, v26);
  }

  cf = 0;
  if (a1)
  {
    v28 = 0;
    if (a1[4] == 1634561902)
    {
      v9 = *a1;
      v10 = *(*a1 + 56);
      v11 = sub_23EC0F94C(v10, a2);
      if (v11)
      {
        v12 = v11;
        if (sub_23EC0F95C(v10, a2))
        {
          if (!sub_23EBEBC34(v9[16], v12, 0, a4, a5, a6, a7, a8))
          {
            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_JoinAndBrowseSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v13, v14, v15, v16, "Joining Network");
            }

            if (sub_23EBEE390(v9[16], v10, &stru_285145FE8, 1, 0, v14, v15, v16))
            {
              goto LABEL_22;
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_JoinAndBrowseSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", a5, a6, a7, a8, "Joining Network");
            }
          }

          v17 = sub_23EC0FA70(v10, a2);
          v18 = *MEMORY[0x277CBECE8];
          sub_23EC0F9F4(v10, v19);
          if (!sub_23EB6F348(v18, &v28, "{%ks={%ks=%O%ks=%i%ks=%i}}", v20, v21, v22, v23, v24, "txt") && sub_23EBAF5CC(v17, 1))
          {
            v25 = sub_23EBED690(v9[16], 0, v28, 0, 120, &cf, a7, a8);
            if (v28)
            {
              CFRelease(v28);
              v28 = 0;
            }

            if (!v25 && cf)
            {
              *v9 = cf;
              cf = 0;
            }
          }
        }
      }
    }

LABEL_22:
    sub_23EBC2368(a1, a2, a3, a4, a5, a6, a7, a8);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t sub_23EBBF76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_ReadPropertiesAsync(BSConfigurationContextRef, CFArrayRef)", 800, " \n", a5, a6, a7, a8, v14);
  }

  context = 0;
  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120))
  {
    return 4294960591;
  }

  cf = 0;
  if (a2)
  {
    v10 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%ks=%O}", a4, a5, a6, a7, a8, "AsyncParam_PropertiesArray");
    v11 = cf;
    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = cf == 0;
    }

    if (v12)
    {
      return v10;
    }
  }

  else
  {
    v11 = 0;
    cf = 0;
  }

  v10 = sub_23EBB7CA8(a1, v11, &context, a4, a5, a6, a7, a8);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (!v10)
  {
    if (context)
    {
      dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBBF8B4);
      return 0;
    }

    else
    {
      return 4294960568;
    }
  }

  return v10;
}

void sub_23EBBF8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_ReadPropertiesSync(void *)", 800, " \n", a5, a6, a7, a8, v14);
  }

  if (a1)
  {
    v15 = 0;
    if (*(a1 + 16) == 1634561902)
    {
      v9 = *a1;
      if (*a1)
      {
        if (*(v9 + 144) == 1634561902)
        {
          if (*v9)
          {
            if (*(v9 + 8))
            {
              v15 = 0;
              v10 = *(a1 + 8);
              if (!v10 || (sub_23EB6FF14(v10, &v15, "%ks", a4, a5, a6, a7, a8, "AsyncParam_PropertiesArray"), v11 == -6727) || !v11 && v15)
              {
                if (!sub_23EBEA238(*(v9 + 128)))
                {
                  goto LABEL_25;
                }

                v12 = *v9;
                CFRetain(*v9);
                v13 = sub_23EBC2A30(v9, v12);
                if (v12)
                {
                  CFRelease(v12);
                }

                if (!v13)
                {
LABEL_25:
                  if (!sub_23EBBE61C(v9, v15, *v9, *(v9 + 8), 1, 1, 0, a8) && !sub_23EBC2B48(v9, a2, a3, a4, a5, a6, a7, a8))
                  {
                    sub_23EBC386C(v9, a2, a3, a4, a5, a6, a7, a8);
                  }
                }
              }
            }
          }
        }
      }
    }

    sub_23EBC2368(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_23EBBFA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_WriteSettingsAsync(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v14);
  }

  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120))
  {
    return 4294960591;
  }

  result = sub_23EBB7814(a1, 1u, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    dispatch_group_async_f(*(a1 + 120), *(a1 + 112), a1, sub_23EBBFAFC);
    sub_23EBEB0B0(*(a1 + 128), 14, 0, 0, v10, v11, v12, v13);
    return 0;
  }

  return result;
}

void sub_23EBBFAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v277[3] = *MEMORY[0x277D85DE8];
  v263 = 0;
  v260 = 0;
  v261 = 0;
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, " \n", a5, a6, a7, a8, v255);
  }

  cf = 0;
  v273 = 0;
  v270 = 0;
  DeepCopy = 0;
  v268 = 0;
  v269 = 0;
  v266 = 0;
  v267 = 0;
  v264 = 0;
  v262 = 0;
  v265 = 0;
  v259 = 0;
  if (!a1)
  {
    goto LABEL_43;
  }

  v16 = sub_23EBEA0DC(*(a1 + 128), a2, a3, a4, a5, a6, a7, a8);
  if (v16)
  {
    goto LABEL_35;
  }

  LOBYTE(v262) = 0;
  v17 = *(a1 + 8);
  if (v17 && sub_23EBB63A0(v17))
  {
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v12, v13, v14, v15, "Stopping monitoring");
    }

    v18 = sub_23EBC2700(a1, v9, v10, v11, v12, v13, v14, v15);
    if (v18)
    {
      goto LABEL_33;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v12, v13, v14, v15, "Stopping monitoring");
    }
  }

  if (*(a1 + 90))
  {
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v12, v13, v14, v15, "Asking about keychain saving");
    }

    v19 = sub_23EBEDA58(*(a1 + 128), @"KeychainBasePasswordRemember.title", 0, 0, @"KeychainBasePasswordRemember.message", 0, 0, @"kSave", @"kDontSave") != -6723;
    v18 = sub_23EBBED88(a1, v19, v20, v21, v22, v23, v24, v25);
    if (v18)
    {
      goto LABEL_33;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v12, v13, v14, v15, "Done asking about keychain saving");
    }
  }

  if (*(a1 + 72))
  {
    v18 = sub_23EBBDDB0(a1, *(a1 + 64), v10, v11, v12, v13, v14, v15);
    if (v18)
    {
      goto LABEL_33;
    }
  }

  if (!*a1 || (v26 = *(a1 + 8)) == 0)
  {
    v16 = 4294960591;
    goto LABEL_34;
  }

  v18 = sub_23EBB3F30(v26, 1937329773, &v268);
  if (v18)
  {
    goto LABEL_33;
  }

  if (!v268)
  {
    v16 = 4294960568;
    goto LABEL_34;
  }

  v18 = sub_23EBEDC9C(*(a1 + 128), 300);
  if (v18)
  {
LABEL_33:
    v16 = v18;
    goto LABEL_34;
  }

  v31 = *(a1 + 72);
  if (v31 <= 1)
  {
    if (!v31)
    {
      goto LABEL_261;
    }

    if (v31 == 1)
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v12, v13, v14, v15, "Verify connection");
      }

      DeepCopy = 0;
      v42 = sub_23EBC3A64(a1, *(a1 + 8), *a1, &DeepCopy);
      if (v42)
      {
        v16 = v42;
        if (v42 != -6735)
        {
          goto LABEL_270;
        }

        if (dword_27E3827A8 > 800)
        {
          goto LABEL_260;
        }

        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "***No system status or monitoring support\n", v12, v13, v14, v15, v255);
        }
      }

      else
      {
        v9 = DeepCopy;
        if (DeepCopy)
        {
          v16 = sub_23EBBCA7C(a1, DeepCopy);
          if (DeepCopy)
          {
            CFRelease(DeepCopy);
            DeepCopy = 0;
          }

          if (v16)
          {
            goto LABEL_270;
          }
        }
      }

      if (dword_27E3827A8 > 800 || dword_27E3827A8 == -1 && !sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        goto LABEL_260;
      }

      v73 = "Verify connection";
LABEL_155:
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v12, v13, v14, v15, v73);
      goto LABEL_260;
    }
  }

  else
  {
    switch(v31)
    {
      case 2:
        LODWORD(v276[0]) = 0;
        sub_23EBB6A4C(v277, 0x15uLL);
        v32 = sub_23EBB3F94(*(a1 + 8), v277, v276);
        if (v32)
        {
          goto LABEL_269;
        }

        if (LODWORD(v276[0]) != 1)
        {
          if (!*(a1 + 48))
          {
            goto LABEL_219;
          }

          sub_23EBB6A4C(v277, 0x15uLL);
          v32 = sub_23EBB3E20(*(a1 + 8), v277, &v261);
          if (v32)
          {
            goto LABEL_269;
          }

          if (!v261)
          {
            goto LABEL_561;
          }

          sub_23EBB6A4C(v277, 0x15uLL);
          v32 = sub_23EBB3E20(*(a1 + 8), v277, &v260);
          if (v32)
          {
            goto LABEL_269;
          }

          if (!v260)
          {
            goto LABEL_561;
          }

          if (CFStringCompare(&stru_285145FE8, v260, 0) == kCFCompareEqualTo && v260)
          {
            CFRelease(v260);
            v260 = 0;
          }

          v86 = sub_23EBECA80(*(a1 + 128), @"keychainNetworkType", *(a1 + 48), &v273, v82, v83, v84, v85);
          if (v86)
          {
            v16 = v86;
            if (v86 != -6727)
            {
              goto LABEL_270;
            }

            v87 = v273;
          }

          else
          {
            v87 = v273;
            if (!v273)
            {
              goto LABEL_561;
            }
          }

          v43 = v260;
          if (!v260 || !v87 || (v87 = CFStringCompare(v87, v260, 0)) != 0)
          {
            v204 = sub_23EC0F77C(v87, v43, v44);
            v205 = *(a1 + 128);
            if (v204)
            {
              if (sub_23EBEBC34(v205, v261, 0, v199, v200, v201, v202, v203))
              {
                v32 = sub_23EBEE8B0(*(a1 + 128), *a1, 0, 0, 0, 0, &DeepCopy, v208);
                if (v32)
                {
                  goto LABEL_269;
                }

                if (DeepCopy)
                {
                  v16 = sub_23EBBCA7C(a1, DeepCopy);
                  if (DeepCopy)
                  {
                    CFRelease(DeepCopy);
                    DeepCopy = 0;
                  }

                  if (v16)
                  {
                    goto LABEL_270;
                  }
                }
              }

              v209 = (v260 ? v260 : v273);
              v16 = sub_23EBEE390(*(a1 + 128), *(a1 + 48), v209, 0, 1, v206, v207, v208);
              if (v16)
              {
                goto LABEL_270;
              }

              if (v273)
              {
                CFRelease(v273);
                v273 = 0;
              }

              v32 = sub_23EBECA80(*(a1 + 128), @"keychainNetworkType", *(a1 + 48), &v273, v210, v211, v212, v213);
              if (v32)
              {
                goto LABEL_269;
              }
            }

            else
            {
              v16 = sub_23EBECE2C(v205, @"keychainNetworkType", v261, &v273, v200, v201, v202, v203);
              if (v16)
              {
                goto LABEL_270;
              }
            }

            if (!v273)
            {
              goto LABEL_561;
            }

            v32 = sub_23EBB3B84(*(a1 + 8), v277, v273);
            if (v32)
            {
              goto LABEL_269;
            }

            if (v273)
            {
              CFRelease(v273);
              v273 = 0;
            }
          }
        }

        if (!sub_23EB6A30C(*a1, v43, v44, v45, v46, v47, v48, v49))
        {
          goto LABEL_260;
        }

        LODWORD(v275[0]) = 0;
        v32 = sub_23EBB4DE4(*(a1 + 8), 1937327724);
        if (v32)
        {
          goto LABEL_269;
        }

        v32 = sub_23EBB3F7C(*(a1 + 8), 1937327724, v275);
        if (v32)
        {
          goto LABEL_269;
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "target base systemFlags: 0x%X\n", v12, v13, v14, v15, LODWORD(v275[0]));
        }

        if ((v275[0] & 0x80) != 0)
        {
          goto LABEL_260;
        }

        v50 = sub_23EBC4054(a1, v9, v10, v11, v12, v13, v14, v15);
        v16 = v50;
        if (!(v50 == -6757 ? 0 : v50))
        {
          goto LABEL_260;
        }

        goto LABEL_270;
      case 4:
        v277[0] = 0;
        if (*(a1 + 104))
        {
          v32 = sub_23EBEE8B0(*(a1 + 128), *a1, 0, 0, 0, 0, &DeepCopy, v15);
          if (v32)
          {
            goto LABEL_269;
          }

          if (DeepCopy)
          {
            v16 = sub_23EBBCA7C(a1, DeepCopy);
            if (DeepCopy)
            {
              CFRelease(DeepCopy);
              DeepCopy = 0;
            }

            if (v16)
            {
              goto LABEL_270;
            }
          }

          sub_23EB6FF14(*(a1 + 104), v277, "%ks", v52, v53, v54, v55, v56, "path");
          if (v32)
          {
            goto LABEL_269;
          }

          v39 = v277[0];
          if (v277[0])
          {
            v40 = *(a1 + 8);
            v41 = 1;
LABEL_115:
            v16 = sub_23EBB1108(v40, v39, v41);
            if (!v16)
            {
              goto LABEL_260;
            }

            goto LABEL_270;
          }

LABEL_561:
          v16 = 4294960568;
          goto LABEL_270;
        }

LABEL_446:
        v16 = 4294960591;
        goto LABEL_270;
      case 3:
        LODWORD(v276[0]) = 0;
        v32 = sub_23EBEE8B0(*(a1 + 128), *a1, 0, 0, 0, 0, &DeepCopy, v15);
        if (v32)
        {
          goto LABEL_269;
        }

        if (DeepCopy)
        {
          v16 = sub_23EBBCA7C(a1, DeepCopy);
          if (DeepCopy)
          {
            CFRelease(DeepCopy);
            DeepCopy = 0;
          }

          if (v16)
          {
            goto LABEL_270;
          }
        }

        v32 = sub_23EBB3F7C(*(a1 + 8), 1937327724, v276);
        if (v32)
        {
          goto LABEL_269;
        }

        if ((BYTE2(v276[0]) & 2) != 0)
        {
          v32 = sub_23EBB4DE4(*(a1 + 8), 1349676902);
          if (!v32)
          {
            v32 = sub_23EBB6418(*(a1 + 8));
            if (!v32)
            {
              goto LABEL_260;
            }
          }

          goto LABEL_269;
        }

        v277[0] = 0;
        v38 = *(a1 + 104);
        if (v38)
        {
          sub_23EB6FF14(v38, v277, "%ks", v33, v34, v35, v36, v37, "path");
          if (v32)
          {
            goto LABEL_269;
          }

          v39 = v277[0];
          if (v277[0])
          {
            v40 = *(a1 + 8);
            v41 = 0;
            goto LABEL_115;
          }

          goto LABEL_561;
        }

        goto LABEL_446;
    }
  }

  if (v31 < 6)
  {
    goto LABEL_260;
  }

  v58 = (v31 - 9) < 4 && *(a1 + 144) == 1634561902;
  if (!*(a1 + 16))
  {
    goto LABEL_446;
  }

  if (!*(a1 + 32) || v58)
  {
    if (v31 == 12)
    {
      goto LABEL_128;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v12, v13, v14, v15, "Read source settings");
    }

    v88 = sub_23EB6AE14(*(a1 + 16), v9, v10, v11, v12, v13, v14, v15);
    if (!v88)
    {
      goto LABEL_446;
    }

    v90 = v88;
    v32 = sub_23EBEE8B0(*(a1 + 128), *(a1 + 16), 0, 0, 1, 0, &DeepCopy, v89);
    if (v32)
    {
      goto LABEL_269;
    }

    if (DeepCopy)
    {
      CFRelease(*(a1 + 16));
      *(a1 + 16) = DeepCopy;
      DeepCopy = 0;
    }

    sub_23EBEB0B0(*(a1 + 128), 18, 0, v90, v91, v92, v93, v94);
    v32 = sub_23EBC43AC(a1, v58, v95, v96, v97, v98, v99, v100);
    if (v32)
    {
      goto LABEL_269;
    }

    v101 = *(a1 + 24);
    if (v101)
    {
      v32 = sub_23EBB4220(v101, &v270);
      if (v32)
      {
        goto LABEL_269;
      }

      if (!v270)
      {
        goto LABEL_561;
      }

      if (sub_23EBB4248(*(a1 + 24), 1231975492))
      {
        v106 = sub_23EBB3F30(*(a1 + 24), 1651721294, &v259);
        if (v106 || !v259)
        {
LABEL_215:
          sub_23EBEB0B0(*(a1 + 128), 19, v106, v90, v102, v103, v104, v105);
          *(a1 + 32) = v270;
          v270 = 0;
          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v12, v13, v14, v15, "Read source settings");
          }

LABEL_128:
          v31 = *(a1 + 72);
          if (v58)
          {
            v258 = 0;
            if (v31 == 12)
            {
              if (sub_23EB6B5A0(*(a1 + 16), v9, v10, v11, v12, v13, v14, v15))
              {
                if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                {
                  sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "source base is unconfigurable, so found WAN link in bonjour record\n", v12, v13, v14, v15, v255);
                }

                v258 = 512;
              }
            }

            else
            {
              v32 = sub_23EBB4DE4(*(a1 + 24), 1937327724);
              if (v32)
              {
                goto LABEL_269;
              }

              v32 = sub_23EBB3F7C(*(a1 + 24), 1937327724, &v258);
              if (v32)
              {
                goto LABEL_269;
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "source base systemFlags: 0x%X\n", v12, v13, v14, v15, v258);
              }
            }

            if ((v258 & 0x200) != 0)
            {
              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v12, v13, v14, v15, "Prompting for Swap Cabling");
              }

              v32 = sub_23EBC44E8(a1, v9, v10, v11, v12, v13, v14, v15);
              if (v32 == -6757)
              {
                v16 = 0;
              }

              else
              {
                v16 = v32;
              }

              if (v16 == -6769 || v16 == -6723)
              {
                goto LABEL_270;
              }

              if (v16)
              {
                goto LABEL_269;
              }

              v108 = *(a1 + 24);
              if (v108)
              {
                sub_23EBB0D6C(v108);
                *(a1 + 24) = 0;
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v12, v13, v14, v15, "Prompting for Swap Cabling");
              }

              v59 = *(a1 + 72);
              if (v59 != 12)
              {
LABEL_138:
                if ((v59 - 10) >= 2)
                {
                  if (v59 != 12 || !*(a1 + 40))
                  {
                    goto LABEL_258;
                  }

                  goto LABEL_446;
                }

                sub_23EB6FF14(*(a1 + 32), &DeepCopy, "%kC", v11, v12, v13, v14, v15, 1466517097);
                if (v32)
                {
                  goto LABEL_269;
                }

                if (!DeepCopy)
                {
                  goto LABEL_561;
                }

                sub_23EB6C254(DeepCopy, 1, v60, v61, v62, v63, v64, v65);
                DeepCopy = 0;
                v66 = *(a1 + 72);
                if (v66 == 11)
                {
                  if (*(a1 + 40))
                  {
                    goto LABEL_446;
                  }

                  v242 = *MEMORY[0x277CBECE8];
                  v243 = sub_23EBB6A4C(v277, 0x15uLL);
                  sub_23EBB6A4C(v276, 0x15uLL);
                  sub_23EBB6A4C(v275, 0x15uLL);
                  v32 = sub_23EB6F348(v242, &DeepCopy, "{%ks=%i%ks=%O%ks=%O%kC=%i}", v244, v245, v246, v247, v248, v243);
                }

                else
                {
                  if (v66 != 10)
                  {
                    goto LABEL_258;
                  }

                  v257 = 0;
                  if (*(a1 + 40))
                  {
                    goto LABEL_446;
                  }

                  sub_23EB6FF14(*(a1 + 32), &v257, "%kC", v11, v12, v13, v14, v15, 1717920116);
                  if (v32)
                  {
                    goto LABEL_269;
                  }

                  if (!v257)
                  {
                    goto LABEL_561;
                  }

                  sub_23EBEF2E4(v257, 1884509249);
                  v256 = *MEMORY[0x277CBECE8];
                  v67 = sub_23EBB6A4C(v277, 0x15uLL);
                  sub_23EBB6A4C(v276, 0x15uLL);
                  sub_23EBB6A4C(v275, 0x15uLL);
                  sub_23EBB6A4C(v274, 0x15uLL);
                  v32 = sub_23EB6F348(v256, &DeepCopy, "{%ks=%i%ks=%O%ks=%O%ks=%O%kC=%i}", v68, v69, v70, v71, v72, v67);
                }

                if (v32)
                {
                  goto LABEL_269;
                }

                if (DeepCopy)
                {
                  *(a1 + 40) = DeepCopy;
                  DeepCopy = 0;
                  goto LABEL_258;
                }

                goto LABEL_561;
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v12, v13, v14, v15, "Verify connection");
              }

              DeepCopy = 0;
              v109 = sub_23EBC3A64(a1, *(a1 + 8), *a1, &DeepCopy);
              v16 = v109;
              if (v109 > -6724)
              {
                if (v109)
                {
                  goto LABEL_270;
                }

                v9 = DeepCopy;
                if (DeepCopy)
                {
                  v16 = sub_23EBBCA7C(a1, DeepCopy);
                  if (DeepCopy)
                  {
                    CFRelease(DeepCopy);
                    DeepCopy = 0;
                  }

                  if (v16)
                  {
                    goto LABEL_270;
                  }
                }
              }

              else
              {
                if (v109 != -6735)
                {
                  goto LABEL_270;
                }

                if (dword_27E3827A8 > 800)
                {
                  goto LABEL_137;
                }

                if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
                {
                  sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "***No system status or monitoring support\n", v12, v13, v14, v15, v255);
                }
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v12, v13, v14, v15, "Verify connection");
              }
            }

LABEL_137:
            v59 = *(a1 + 72);
            goto LABEL_138;
          }

          goto LABEL_156;
        }

        if (CFStringGetLength(v259))
        {
          v32 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], v270, "%kC=%O", v107, v102, v103, v104, v105, 1229213293);
          if (v32)
          {
            goto LABEL_269;
          }
        }
      }

      v106 = 0;
      goto LABEL_215;
    }

LABEL_219:
    v16 = 4294960569;
    goto LABEL_270;
  }

LABEL_156:
  if (v31 != 6)
  {
    goto LABEL_259;
  }

  LOBYTE(v258) = 0;
  v276[0] = 0;
  v275[0] = 0;
  if (dword_27E3827A8 <= 800)
  {
    if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "Verifying DWDS on Source\n", v12, v13, v14, v15, v255);
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v12, v13, v14, v15, "Verifying DWDS on Source");
    }
  }

  sub_23EB6FF14(*(a1 + 32), v276, "%kC", v11, v12, v13, v14, v15, 1466517097);
  if (v32)
  {
    goto LABEL_269;
  }

  if (!v276[0])
  {
    goto LABEL_561;
  }

  sub_23EBEF00C(v276[0], 0, 0, 0, &v258, v74, v75, v76);
  if (v32)
  {
    goto LABEL_269;
  }

  if (!v258)
  {
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "Enabling DWDS on source\n", v77, v78, v79, v80, v255);
    }

    if (*(a1 + 40))
    {
      goto LABEL_446;
    }

    sub_23EBB6A4C(v277, 0x15uLL);
    v32 = sub_23EB6F348(*MEMORY[0x277CBECE8], &DeepCopy, "{%ks=%b}", v235, v236, v237, v238, v239, v277);
    if (v32)
    {
      goto LABEL_269;
    }

    if (!DeepCopy)
    {
      goto LABEL_561;
    }

    *(a1 + 40) = DeepCopy;
    DeepCopy = 0;
  }

  if (dword_27E3827A8 <= 800)
  {
    if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v77, v78, v79, v80, "Verifying DWDS on Source");
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "Verifying Timed Access on Source\n", v77, v78, v79, v80, v255);
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v77, v78, v79, v80, "Verifying Timed Access on Source");
      }
    }
  }

  sub_23EB6C388(v276[0], 0, @"acEn", v275, v77, v78, v79, v80);
  if (v81 || !CFBooleanGetValue(v275[0]))
  {
    goto LABEL_182;
  }

  v277[0] = 0;
  sub_23EB6FF14(*(a1 + 32), v277, "%kC", v11, v12, v13, v14, v15, 1717920116);
  v16 = v214;
  if (v214)
  {
    goto LABEL_270;
  }

  if (!v277[0])
  {
    goto LABEL_561;
  }

  if (!sub_23EBEF2E4(v277[0], 1950434124))
  {
    goto LABEL_182;
  }

  v274[0] = 0;
  v257 = 0;
  sub_23EB6FF14(*(a1 + 32), v274, "%kC", v11, v12, v13, v14, v15, 1950434124);
  if (v32)
  {
    goto LABEL_269;
  }

  if (!v274[0])
  {
    goto LABEL_561;
  }

  sub_23EBAFEF4(v274[0], @"00:00:00:00:00:00", &v257, v215, v216, v217, v218, v219);
  if (v220)
  {
    goto LABEL_182;
  }

  if (!v257)
  {
    goto LABEL_561;
  }

  v221 = sub_23EBB0414(v257, v9, v10, v11, v12, v13, v14, v15);
  if (v257)
  {
    CFRelease(v257);
    v257 = 0;
  }

  if (v221)
  {
    goto LABEL_182;
  }

  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "Source default ACL is not Full Access\n", v12, v13, v14, v15, v255);
  }

  v222 = *MEMORY[0x277CBECE8];
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], v274[0], 2uLL);
  if (!DeepCopy)
  {
    goto LABEL_561;
  }

  v223 = 0;
  v224 = 1;
  do
  {
    while (1)
    {
      v225 = v223;
      v226 = sub_23EBB3F30(*(a1 + 8), *&aM2sbm5sb[4 * v223], &v273);
      v9 = v273;
      if (v226)
      {
        v227 = 1;
      }

      else
      {
        v227 = v273 == 0;
      }

      if (v227)
      {
        goto LABEL_497;
      }

      sub_23EBAFEF4(v274[0], v273, &v257, v11, v12, v13, v14, v15);
      if (v228)
      {
        v16 = v228;
        if (v228 != -6727)
        {
          goto LABEL_270;
        }

        goto LABEL_500;
      }

      if (!v257)
      {
        goto LABEL_561;
      }

      v233 = sub_23EBB0414(v257, v229, v230, v231, v232, v13, v14, v15);
      if (v257)
      {
        CFRelease(v257);
        v257 = 0;
      }

      if (v233)
      {
        break;
      }

LABEL_500:
      sub_23EBB0050(DeepCopy, @"days=mtwtfss;t=0-0", -2, v268, v273, v13, v14, v15);
      v16 = v234;
      if (v273)
      {
        CFRelease(v273);
        v273 = 0;
      }

      if (v16)
      {
        goto LABEL_270;
      }

      v224 = 0;
      v223 = 1;
      if (v225)
      {
        goto LABEL_554;
      }
    }

    if (v273)
    {
      CFRelease(v273);
      v273 = 0;
    }

LABEL_497:
    v223 = 1;
  }

  while (!v225);
  if (v224)
  {
    if (DeepCopy)
    {
      CFRelease(DeepCopy);
      DeepCopy = 0;
    }

    goto LABEL_182;
  }

LABEL_554:
  Mutable = *(a1 + 40);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(v222, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 40) = Mutable;
    if (!Mutable)
    {
      goto LABEL_561;
    }
  }

  v32 = sub_23EB6FDFC(v222, Mutable, "%kC=%O", v11, v12, v13, v14, v15, 1950434124);
  if (v32)
  {
    goto LABEL_269;
  }

  v16 = sub_23EB6FDFC(v222, *(a1 + 32), "%kC=%O", v250, v251, v252, v253, v254, 1950434124);
  if (DeepCopy)
  {
    CFRelease(DeepCopy);
    DeepCopy = 0;
  }

  if (v16)
  {
    goto LABEL_270;
  }

LABEL_182:
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v12, v13, v14, v15, "Verifying Timed Acces on Source");
  }

LABEL_258:
  v31 = *(a1 + 72);
LABEL_259:
  if (v31 != 12)
  {
    v32 = sub_23EBC4878(a1, *(a1 + 32), v10, v11, v12, v13, v14, v15);
    if (v32)
    {
      goto LABEL_269;
    }

    if (*(a1 + 144) != 1634561902)
    {
      goto LABEL_260;
    }

    v139 = *(a1 + 72);
    if (v139 > 0xB || ((1 << v139) & 0xC40) == 0 || !*(a1 + 40))
    {
      goto LABEL_260;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v12, v13, v14, v15, "Configurating source");
    }

    v32 = sub_23EBEE8B0(*(a1 + 128), *(a1 + 16), 0, 0, 1, 0, &DeepCopy, v15);
    if (v32)
    {
      goto LABEL_269;
    }

    if (DeepCopy)
    {
      CFRelease(*(a1 + 16));
      *(a1 + 16) = DeepCopy;
      DeepCopy = 0;
    }

    v32 = sub_23EBC4FC8(a1, *(a1 + 40), &v262, v140, v141, v142, v143, v144);
    if (v32)
    {
      goto LABEL_269;
    }

    v145 = *(a1 + 40);
    if (v145)
    {
      CFRelease(v145);
      *(a1 + 40) = 0;
    }

    if (dword_27E3827A8 > 800 || dword_27E3827A8 == -1 && !sub_23EB74AC8(&dword_27E3827A8, 0x320u))
    {
      goto LABEL_260;
    }

    v73 = "Configurating source";
    goto LABEL_155;
  }

LABEL_260:
  v32 = sub_23EBC553C(a1, v9, v10, v11, v12, v13, v14, v15);
  if (v32)
  {
    goto LABEL_269;
  }

LABEL_261:
  sub_23EBEB0B0(*(a1 + 128), 26, 0, 0, v12, v13, v14, v15);
  if (!sub_23EB6B0C8(*a1, v110, v111, v112, v113, v114, v115, v116))
  {
LABEL_264:
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v117, v118, v119, v120, "Rejoining target network if necessary");
    }

    v32 = sub_23EBEE8B0(*(a1 + 128), *a1, 0, 0, 0, 0, &DeepCopy, v120);
    if (v32)
    {
      goto LABEL_269;
    }

    if (DeepCopy)
    {
      v16 = sub_23EBBCA7C(a1, DeepCopy);
      if (DeepCopy)
      {
        CFRelease(DeepCopy);
        DeepCopy = 0;
      }

      if (v16)
      {
        goto LABEL_270;
      }
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v121, v122, v123, v124, "Rejoining target network if necessary");
    }

    v32 = sub_23EBC2760(a1, &v267, &v266, &v265, &v264, &v263);
    if (v32)
    {
      goto LABEL_269;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "finalNetworkName: %@ goingAwayNetwork: %@ networkMaytransition: %d deviceMayLoseTouch: %d \n", v125, v126, v127, v128, v267);
    }

    sub_23EBEB0B0(*(a1 + 128), 20, 0, v268, v125, v126, v127, v128);
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v129, v130, v131, v132, "Write target settings");
    }

    v16 = sub_23EBB23B8(*(a1 + 8), &v262 + 1, &cf);
    if (HIBYTE(v262))
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "Had minimal restart with interruptions: %@\n", v133, v134, v135, v136, cf);
      }

      v137 = cf;
      v278.length = CFArrayGetCount(cf);
      v278.location = 0;
      v138 = CFArrayContainsValue(v137, v278, @"wifi");
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    else
    {
      v138 = 0;
    }

    if (v16)
    {
      goto LABEL_270;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v133, v134, v135, v136, "Write target settings");
    }

    sub_23EBEB0B0(*(a1 + 128), 21, 0, v268, v133, v134, v135, v136);
    v16 = sub_23EBB39F8(*(a1 + 8));
    sub_23EBEB0B0(*(a1 + 128), 36, v16, v268, v146, v147, v148, v149);
    if (*(a1 + 72) != 9)
    {
      if (*(a1 + 144) != 1634561902)
      {
        goto LABEL_446;
      }

      v16 = sub_23EBEB3C0(*(a1 + 128), 1u, v150, v151, v152, v153, v154, v155);
      if (v16)
      {
        goto LABEL_270;
      }
    }

    if (v265 && (!HIBYTE(v262) || v138))
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v152, v153, v154, v155, "Disassociating");
      }

      v32 = sub_23EBEBD2C(*(a1 + 128));
      if (v32)
      {
        goto LABEL_269;
      }

      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v195, v196, v197, v198, "Disassociating");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v195, v196, v197, v198, "Clearing Scan Cache");
        }
      }

      v32 = sub_23EBEC3FC(*(a1 + 128), v192, v193, v194, v195, v196, v197, v198);
      if (v32)
      {
        goto LABEL_269;
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v152, v153, v154, v155, "Clearing Scan Cache");
      }

      v16 = 0;
    }

    if (*(a1 + 72) == 9)
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v152, v153, v154, v155, "Restoring source to defaults");
      }

      v162 = sub_23EBC5B5C(a1, *(a1 + 16), *(a1 + 24), v151, v152, v153, v154, v155);
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "restoreSourceErr: %#m \n", v158, v159, v160, v161, v162);
      }

      if (!v162)
      {
        v32 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v269, "{%kO=%O}", v157, v158, v159, v160, v161, @"kBSConfigurationSetupComplete_RemovedBase");
        if (v32)
        {
          goto LABEL_269;
        }

        if (!v269)
        {
          goto LABEL_561;
        }
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v158, v159, v160, v161, "Restoring source to defaults");
      }

      if (*(a1 + 144) != 1634561902)
      {
        goto LABEL_446;
      }

      v16 = sub_23EBEB3C0(*(a1 + 128), 1u, v156, v157, v158, v159, v160, v161);
      if (v16)
      {
        goto LABEL_270;
      }
    }

    if (v267)
    {
      if (v264 && (!HIBYTE(v262) || v138))
      {
        if (dword_27E3827A8 <= 800)
        {
          if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v152, v153, v154, v155, "Network transition pause");
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "pausing for: %d secs\n", v152, v153, v154, v155, 40);
          }
        }

        v32 = sub_23EBEC174(*(a1 + 128), 40);
        if (v32)
        {
          goto LABEL_269;
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v152, v153, v154, v155, "Network transition pause");
        }

        v16 = 0;
      }

      if (!sub_23EBEBC34(*(a1 + 128), v267, 0, v151, v152, v153, v154, v155))
      {
        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v152, v153, v154, v155, "Joining Network");
        }

        v32 = sub_23EBEE184(*(a1 + 128), v267, v266, 1, 0, v153, v154, v155);
        if (v32)
        {
          goto LABEL_269;
        }

        if (dword_27E3827A8 > 800)
        {
          v16 = 0;
          goto LABEL_363;
        }

        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v152, v153, v154, v155, "Joining Network");
        }

        v16 = 0;
      }
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v152, v153, v154, v155, "Determining if base station is remote");
    }

LABEL_363:
    sub_23EB6A6F0(*a1);
    v171 = v170;
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      if (v171)
      {
        v172 = "base station is remote\n";
      }

      else
      {
        v172 = "base station is not remote\n";
      }

      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, v172, v166, v167, v168, v169, v255);
    }

    if (v171 == 1)
    {
      goto LABEL_270;
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v166, v167, v168, v169, "Determining if base station is remote");
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v166, v167, v168, v169, "Final waiting for target base");
      }
    }

    if (!sub_23EB6B064(*a1, v163, v164, v165, v166, v167, v168, v169))
    {
      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v173, v174, v175, v176, "No bonjour seed pause");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "pausing for: %d secs\n", v173, v174, v175, v176, 8);
        }
      }

      v32 = sub_23EBEC174(*(a1 + 128), 8);
      if (v32)
      {
        goto LABEL_269;
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v240, v241, v175, v176, "No bonjour seed pause");
      }
    }

    v32 = sub_23EBED690(*(a1 + 128), v268, *a1, 1, 120, &DeepCopy, v175, v176);
    if (v32)
    {
      goto LABEL_269;
    }

    if (!DeepCopy)
    {
      goto LABEL_561;
    }

    v16 = sub_23EBC2A30(a1, DeepCopy);
    if (DeepCopy)
    {
      CFRelease(DeepCopy);
      DeepCopy = 0;
    }

    if (v16)
    {
      goto LABEL_270;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v177, v178, v179, v180, "Final waiting for target base");
    }

    if (v262)
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v177, v178, v179, v180, "Final waiting for source base");
      }

      v32 = sub_23EBED690(*(a1 + 128), 0, *(a1 + 16), 0, 120, &DeepCopy, v179, v180);
      if (v32)
      {
        goto LABEL_269;
      }

      if (!DeepCopy)
      {
        goto LABEL_561;
      }

      CFRelease(*(a1 + 16));
      *(a1 + 16) = DeepCopy;
      DeepCopy = 0;
      if (dword_27E3827A8 > 800)
      {
LABEL_404:
        v32 = sub_23EBBE61C(a1, 0, *a1, *(a1 + 8), 0, 0, 0, v180);
        if (v32)
        {
          goto LABEL_269;
        }

        if (dword_27E3827A8 <= 800)
        {
          if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v184, v185, v186, v187, "Rereading settings after restart");
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v184, v185, v186, v187, "Checking if monitoring needs restored");
          }
        }

        v32 = sub_23EBC2B48(a1, v181, v182, v183, v184, v185, v186, v187);
        if (v32)
        {
          goto LABEL_269;
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v188, v189, v190, v191, "Checking if monitoring needs restored");
        }

        v16 = 0;
        goto LABEL_270;
      }

      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v177, v178, v179, v180, "Final waiting for source base");
      }
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v177, v178, v179, v180, "Rereading settings after restart");
    }

    goto LABEL_404;
  }

  v32 = sub_23EBAE8B8(*(a1 + 8), 1);
  if (!v32)
  {
    sub_23EBAE828(*(a1 + 8));
    goto LABEL_264;
  }

LABEL_269:
  v16 = v32;
LABEL_270:
  sub_23EBEE150(*(a1 + 128));
LABEL_34:
  sub_23EBEA18C(*(a1 + 128), v9, v10, v11, v12, v13, v14, v15);
LABEL_35:
  *(a1 + 90) = 0;
  sub_23EBB7814(a1, 0, v10, v11, v12, v13, v14, v15);
  sub_23EBEAB18(*(a1 + 128), 15, v16, v269, v27, v28, v29, v30);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (DeepCopy)
  {
    CFRelease(DeepCopy);
    DeepCopy = 0;
  }

  if (v270)
  {
    CFRelease(v270);
    v270 = 0;
  }

  if (v269)
  {
    CFRelease(v269);
    v269 = 0;
  }

LABEL_43:
  if (v273)
  {
    CFRelease(v273);
    v273 = 0;
  }

  if (v268)
  {
    CFRelease(v268);
    v268 = 0;
  }

  if (v267)
  {
    CFRelease(v267);
    v267 = 0;
  }

  if (v266)
  {
    CFRelease(v266);
    v266 = 0;
  }

  if (v265)
  {
    CFRelease(v265);
    v265 = 0;
  }

  if (v261)
  {
    CFRelease(v261);
    v261 = 0;
  }

  if (v260)
  {
    CFRelease(v260);
    v260 = 0;
  }

  if (v259)
  {
    CFRelease(v259);
  }
}

uint64_t sub_23EBC220C(dispatch_group_t *context, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetMonitorForChanges(BSConfigurationContextRef, Boolean, Boolean)", 800, " \n", a5, a6, a7, a8, v12);
  }

  if (!context)
  {
    return 4294960591;
  }

  if (*(context + 88) != a2)
  {
    *(context + 88) = a2;
    if (!a3)
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_CheckMonitoringStateAsync(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v12);
      }

      dispatch_group_async_f(context[15], context[14], context, sub_23EBC6C4C);
    }
  }

  return 0;
}

uint64_t sub_23EBC2310(uint64_t a1, _BYTE *a2)
{
  result = 4294960591;
  if (a1 && a2)
  {
    *a2 = 0;
    result = *(a1 + 8);
    if (result)
    {
      v5 = sub_23EBB63A0(result);
      result = 0;
      *a2 = v5;
    }
  }

  return result;
}

void sub_23EBC2368(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus __AsyncContext_Release(__AsyncContextRef)", 800, " \n", a5, a6, a7, a8, v10);
  }

  if (a1[4] == 1634561902)
  {
    a1[4] = 1095585614;
    *a1 = 0;
    v9 = *(a1 + 1);
    if (v9)
    {
      CFRelease(v9);
    }

    free(a1);
  }
}

void sub_23EBC2424(_DWORD *a1, CFTypeRef a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_HandleBSSettingChangedSync(void *)", 800, " \n", a5, a6, a7, a8, v12);
  }

  v13 = 0;
  cf2 = 0;
  cf = 0;
  if (a1)
  {
    v17 = 0;
    v16 = 0;
    if (a1[4] != 1634561902)
    {
      goto LABEL_19;
    }

    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_19;
    }

    if (*(v9 + 144) != 1634561902 || !*(v9 + 8) || (v10 = *(a1 + 1)) == 0)
    {
      a3 = 4294960591;
      goto LABEL_14;
    }

    sub_23EB6FF14(v10, &v17, "%kO:int", a4, a5, a6, a7, a8, @"kAsyncParam_Refresh_BSSetting");
    if (v11)
    {
      goto LABEL_12;
    }

    if (!v17)
    {
      a3 = 4294960568;
      goto LABEL_14;
    }

    sub_23EB6FF14(*(a1 + 1), &v16, "%kO:BOOL", a4, a5, a6, a7, a8, @"kAsyncParam_Refresh_Notify");
    if (v11)
    {
      goto LABEL_12;
    }

    v11 = sub_23EBB3F30(*(v9 + 8), v17, &cf);
    if (v11)
    {
      goto LABEL_12;
    }

    v11 = sub_23EBB4DE4(*(v9 + 8), v17);
    if (v11)
    {
      goto LABEL_12;
    }

    cf2 = 0;
    v11 = sub_23EBB3F30(*(v9 + 8), v17, &cf2);
    if (v11)
    {
      goto LABEL_12;
    }

    if (v16)
    {
      if (cf)
      {
        a2 = cf2;
        if (cf2)
        {
          if (CFEqual(cf, cf2))
          {
            v16 = 0;
            if (dword_27E3827A8 > 800)
            {
              goto LABEL_19;
            }

            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_HandleBSSettingChangedSync(void *)", 800, "Changed notify to false because %C if equal \n", a5, a6, a7, a8, v17);
            }
          }
        }
      }
    }

    if (v16)
    {
      if (cf2)
      {
        v11 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v13, "{%kO=%C%kO=%O}", a4, a5, a6, a7, a8, @"kBSConfigurationRefreshBSSettingKey_BSSetting");
        if (!v11)
        {
          if (v13)
          {
            a3 = 0;
          }

          else
          {
            a3 = 4294960568;
          }

LABEL_14:
          if (v16)
          {
            sub_23EBEAB18(*(v9 + 128), 34, a3, v13, a5, a6, a7, a8);
            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_HandleBSSettingChangedSync(void *)", 800, "BSSetting: %C \n", a5, a6, a7, a8, v17);
            }
          }

          goto LABEL_19;
        }

LABEL_12:
        a3 = v11;
        goto LABEL_14;
      }

      v16 = 0;
    }

LABEL_19:
    sub_23EBC2368(a1, a2, a3, a4, a5, a6, a7, a8);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (cf2)
    {
      CFRelease(cf2);
      cf2 = 0;
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }
}

uint64_t sub_23EBC2700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  if (v9)
  {
    if (sub_23EBB63A0(v9))
    {
      sub_23EBB1474(*(a1 + 8));
    }

    v10 = 0;
  }

  else
  {
    v10 = 4294960591;
  }

  sub_23EBEB0B0(*(a1 + 128), 33, v10, @"stopping", a5, a6, a7, a8);
  return v10;
}

uint64_t sub_23EBC2760(uint64_t a1, CFTypeRef *a2, void *a3, void *a4, BOOL *a5, BOOL *a6)
{
  cf = 0;
  theString2 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  if (*(a1 + 144) != 1634561902)
  {
    v7 = 0;
    v8 = 4294960578;
    goto LABEL_12;
  }

  v7 = 0;
  v8 = 4294960591;
  if (a2 && a3 && a4 && a5)
  {
    sub_23EB6A6F0(*a1);
    if (v21 || sub_23EB6A560(*a1, v14, v15, v16, v17, v18, v19, v20))
    {
      v27 = 0;
      v28 = 0;
      v7 = 0;
LABEL_9:
      v8 = 0;
      v29 = v61;
      *a2 = cf;
      v61 = 0;
      cf = 0;
      *a3 = v29;
      *a4 = v7;
      *a5 = v28;
      *a6 = v27;
LABEL_10:
      v7 = 0;
      goto LABEL_12;
    }

    v31 = sub_23EBEBA44(*(a1 + 128), &v60, &v59, v22, v23, v24, v25, v26);
    v7 = 0;
    if (v31 == -6727)
    {
      v27 = 0;
      v28 = 0;
      goto LABEL_9;
    }

    v8 = v31;
    if (!v31)
    {
      v7 = 0;
      v8 = 4294960568;
      if (v60)
      {
        if (v59)
        {
          v32 = sub_23EBC2CF4(a1, &cf, &v61, &theString2);
          if (v32)
          {
            v8 = v32;
            goto LABEL_10;
          }

          v39 = sub_23EB6B424(*a1, v59, v33, v34, v35, v36, v37, v38);
          if (v39)
          {
            v7 = v60;
            CFRetain(v60);
          }

          else
          {
            v7 = 0;
          }

          if (!cf)
          {
            v28 = 0;
            v27 = v39 != 0;
            goto LABEL_9;
          }

          v40 = CFStringCompare(v60, cf, 0);
          v27 = 0;
          v28 = v40 == kCFCompareEqualTo;
          if (v39 || v40 == kCFCompareEqualTo)
          {
            goto LABEL_9;
          }

          v41 = CFStringCompare(v60, theString2, 0);
          v48 = sub_23EB6A394(*a1, v60, v42, v43, v44, v45, v46, v47);
          v27 = 0;
          if (v41 == kCFCompareEqualTo || !v48)
          {
            v28 = 0;
            goto LABEL_9;
          }

          v58 = 0;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v61)
          {
            CFRelease(v61);
            v61 = 0;
          }

          v53 = v60;
          cf = v60;
          v60 = 0;
          v8 = sub_23EBEC4F4(*(a1 + 128), v53, 3, &v58, v49, v50, v51, v52);
          if (!v8)
          {
            if (!v58)
            {
LABEL_52:
              v8 = 4294960568;
              goto LABEL_12;
            }

            v8 = sub_23EBECA80(*(a1 + 128), @"keychainNetworkType", v58, &v61, v54, v55, v56, v57);
            if (v58)
            {
              CFRelease(v58);
            }

            if (v8 == -6727)
            {
              goto LABEL_49;
            }

            if (!v8)
            {
              if (v61)
              {
LABEL_49:
                v27 = 0;
                v28 = 1;
                goto LABEL_9;
              }

              goto LABEL_52;
            }
          }
        }
      }
    }
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v61)
  {
    CFRelease(v61);
    v61 = 0;
  }

  if (v60)
  {
    CFRelease(v60);
    v60 = 0;
  }

  if (v59)
  {
    CFRelease(v59);
    v59 = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

uint64_t sub_23EBC2A30(uint64_t a1, const __CFString *a2)
{
  v10 = 0;
  cf = 0;
  if (!a2)
  {
    return 4294960591;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    v6 = 4294960591;
    goto LABEL_7;
  }

  v5 = sub_23EBB3F30(v3, 1937330263, &cf);
  if (v5)
  {
LABEL_4:
    v6 = v5;
    goto LABEL_7;
  }

  if (cf)
  {
    v5 = sub_23EBB3F30(*(a1 + 8), 1651721296, &v10);
    if (v5)
    {
      goto LABEL_4;
    }

    if (v10)
    {
      if (CFStringGetLength(cf) && CFStringCompare(v10, cf, 0))
      {
        p_cf = &cf;
      }

      else
      {
        p_cf = &v10;
      }

      v9 = *p_cf;
      v5 = sub_23EBBCA7C(a1, a2);
      if (!v5)
      {
        v5 = sub_23EBB3DBC(*(a1 + 8), 1651721296, v9);
      }

      goto LABEL_4;
    }

    v6 = 4294960568;
LABEL_7:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_9;
  }

  v6 = 4294960568;
LABEL_9:
  if (v10)
  {
    CFRelease(v10);
  }

  return v6;
}

uint64_t sub_23EBC2B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_CheckMonitoringStateSync(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v25);
  }

  v9 = *(a1 + 8);
  if (!v9)
  {
    return 4294960591;
  }

  v26 = 0;
  result = sub_23EBB3A64(v9, &v26);
  if (!result)
  {
    if (!v26)
    {
      return 0;
    }

    v18 = *(a1 + 8);
    v19 = v18 && sub_23EBB63A0(v18);
    if (*(a1 + 88) == v19)
    {
      return 0;
    }

    if (*(a1 + 88))
    {
      result = sub_23EBC2E2C(a1, v11, v12, v13, v14, v15, v16, v17);
      if (!result)
      {
        result = sub_23EBC2FC4(a1, 1937331060, 1, v20, v21, v22, v23, v24);
        if (!result)
        {
          return 0;
        }
      }
    }

    else
    {
      result = sub_23EBC2700(a1, v11, v12, v13, v14, v15, v16, v17);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_23EBC2C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 144) == 1634561902)
  {
    v16[3] = v8;
    v16[4] = v9;
    v16[0] = 0;
    if (!sub_23EB6F348(*MEMORY[0x277CBECE8], v16, "{%kO=%i%kO=%O}", a4, a5, a6, a7, a8, @"kBSConfigurationTaskComplete_TaskState"))
    {
      if (v16[0])
      {
        sub_23EBEAB18(*(a1 + 128), 30, a4, v16[0], v12, v13, v14, v15);
        if (v16[0])
        {
          CFRelease(v16[0]);
        }
      }
    }
  }
}

uint64_t sub_23EBC2CF4(uint64_t a1, CFMutableDictionaryRef *a2, CFMutableDictionaryRef *a3, CFMutableDictionaryRef *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 144) != 1634561902)
  {
    return 4294960578;
  }

  result = 4294960591;
  if (a2 && a3)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      sub_23EBB6604(*(a1 + 8));
      sub_23EBB6A4C(v10, 0x15uLL);
      result = sub_23EBB3E20(v8, v10, a2);
      if (!result)
      {
        sub_23EBB6604(v8);
        sub_23EBB6A4C(v10, 0x15uLL);
        result = sub_23EBB3EA8(v8, v10, a4);
        if (!result)
        {
          sub_23EBB6604(v8);
          sub_23EBB6A4C(v10, 0x15uLL);
          return sub_23EBB3E20(v8, v10, a3);
        }
      }
    }

    else
    {
      return 4294960569;
    }
  }

  return result;
}

uint64_t sub_23EBC2E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = 0;
  v9 = *(a1 + 8);
  if (v9)
  {
    if (sub_23EBB4248(v9, 1095593838) && !sub_23EBB63A0(*(a1 + 8)))
    {
      v11 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v13, "{%ks={%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%ks={}%kC={}%kC={}%kC={}%kC={}}}", v10, a5, a6, a7, a8, "filters");
      if (!v11)
      {
        if (v13)
        {
          v11 = sub_23EBB627C(*(a1 + 8), v13, sub_23EBC3114, a1, a5, a6, a7, a8);
        }

        else
        {
          v11 = 4294960568;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 4294960591;
  }

  sub_23EBEB0B0(*(a1 + 128), 33, v11, @"starting", a5, a6, a7, a8);
  if (v13)
  {
    CFRelease(v13);
  }

  return v11;
}

uint64_t sub_23EBC2FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_HandleBSSettingChangedAsync(BSConfigurationContextRef, BSSetting, Boolean)", 800, "inSetting: %C notify: %d \n", a5, a6, a7, a8, a2);
  }

  v10 = 4294960591;
  if (a2)
  {
    if (*(a1 + 144) == 1634561902)
    {
      if (*(a1 + 120))
      {
        if (*(a1 + 112))
        {
          cf = 0;
          context = 0;
          v10 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%i%kO=%b}", a4, a5, a6, a7, a8, @"kAsyncParam_Refresh_BSSetting");
          if (!v10)
          {
            if (!cf)
            {
              return 0;
            }

            v10 = sub_23EBB7CA8(a1, cf, &context, v11, v12, v13, v14, v15);
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (!v10)
            {
              if (!context)
              {
                return 4294960568;
              }

              dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBC2424);
              return 0;
            }
          }
        }
      }
    }
  }

  return v10;
}

void sub_23EBC3114(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theArray = 0;
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __ACPMonitoringForPropertiesCallback(OSStatus, CFDictionaryRef, void *)", 800, " \n", a5, a6, a7, a8, v64);
  }

  v70 = 0;
  v68 = 0;
  if (a3)
  {
    sub_23EBEAB18(*(a3 + 128), 135, a1, a2, a5, a6, a7, a8);
    v11 = sub_23EB6BD24(a2, &v68);
    if (!sub_23EBAF4FC("tSaMicswinrpmgoltSedtSadtSysPIawMSawARaw1Caw2CawDCawiFiWSnyDdlCitatsLCAtInrp", &theArray))
    {
      if (!theArray)
      {
        goto LABEL_42;
      }

      Count = CFArrayGetCount(theArray);
      if (Count)
      {
        v18 = Count;
        if (Count < 1)
        {
LABEL_21:
          if (v11)
          {
            cf = 0;
            sub_23EB6FF14(v11, 0, "%kC.%kO", v13, v14, v15, v16, v17, v68);
            if (v32 == -6727)
            {
              sub_23EBC3688(a3, v11, v68, &cf, v28, v29, v30, v31);
              if (!v34)
              {
                v66 = 0;
                sub_23EB6FF14(v11, &v66, "%kC", v33, v28, v29, v30, v31, v68);
                if (v36 != -6727)
                {
                  if (v66)
                  {
                    sub_23EB6FDFC(*MEMORY[0x277CBECE8], v66, "%kO=%lli", v35, v28, v29, v30, v31, @"timeEstimate");
                  }
                }
              }
            }

            sub_23EBEAB18(*(a3 + 128), 32, a1, v11, v28, v29, v30, v31);
            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __ACPMonitoringForPropertiesCallback(OSStatus, CFDictionaryRef, void *)", 800, "eBSConfigurationProgressSelector_DiskTaskProgress diskTaskDict: %@\n", v39, v40, v41, v42, v11);
            }

            if (sub_23EB6BE18(v11, &v68, v37, v38, v39, v40, v41, v42))
            {
              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __ACPMonitoringForPropertiesCallback(OSStatus, CFDictionaryRef, void *)", 800, "eBSConfigurationProgressSelector_DiskTaskProgress *** STARTING \n", v45, v46, v47, v48, v65);
              }

              if (*(a3 + 144) == 1634561902 && *(a3 + 80) != 6)
              {
                sub_23EBBBF6C(a3, v68, v43, v44, v45, v46, v47, v48);
                sub_23EBB9D84(a3, 6, v68, 1, v49, v50, v51, v52);
              }
            }

            else if (sub_23EB6BF64(v11, &v70, v43, v44, v45, v46, v47, v48))
            {
              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __ACPMonitoringForPropertiesCallback(OSStatus, CFDictionaryRef, void *)", 800, "eBSConfigurationProgressSelector_DiskTaskProgress *** COMPLETE \n", v55, v56, v57, v58, v65);
              }

              v59 = *(a3 + 136);
              if (v59)
              {
                sub_23EC0F608(v59);
              }

              *(a3 + 136) = 0;
              sub_23EBB7814(a3, 0, v53, v54, v55, v56, v57, v58);
              sub_23EBC2B48(a3);
              sub_23EBC2C4C(a3, 6, v11, v70, v60, v61, v62, v63);
            }
          }
        }

        else
        {
          v19 = 0;
          while (1)
          {
            cf = 0;
            sub_23EB6FF14(theArray, &v68 + 4, "[*]:code", v13, v14, v15, v16, v17, v19);
            if (v25 || !HIDWORD(v68))
            {
              break;
            }

            sub_23EB6FF14(a2, &cf, "%kC", v20, v21, v22, v23, v24, HIDWORD(v68));
            if (v26 != -6727)
            {
              if (v26 || !cf)
              {
                break;
              }

              if (HIDWORD(v68) == 1819240301)
              {
                if (sub_23EBC3518(a3, cf, v27, v13, v14, v15, v16, v17))
                {
                  break;
                }
              }

              else if (sub_23EBC2FC4(a3, HIDWORD(v68), v11 == 0, v13, v14, v15, v16, v17))
              {
                break;
              }
            }

            if (v18 == ++v19)
            {
              goto LABEL_21;
            }
          }
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

LABEL_42:
  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t sub_23EBC3518(uint64_t a1, const __CFString *cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_HandleLogMessageAsync(BSConfigurationContextRef, CFTypeRef)", 800, "inMessage: %@ \n", a5, a6, a7, a8, cf);
  }

  if (*(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  if (!*(a1 + 8))
  {
    return 4294960591;
  }

  v10 = CFGetTypeID(cf);
  if (v10 != CFStringGetTypeID())
  {
    return 4294960591;
  }

  if (CFStringFind(cf, @": Associated", 0).location == -1 && CFStringFind(cf, @": Rotated", 0).location == -1 && CFStringFind(cf, @": DHCPACK", 0).location == -1)
  {
    return 0;
  }

  result = sub_23EBC2FC4(a1, 1918980940, 1, v11, v12, v13, v14, v15);
  if (!result)
  {
    v22 = 0;
    result = sub_23EBB4070(*(a1 + 8), 1918977107, &v22);
    if (!result)
    {
      if (v22)
      {
        return sub_23EBC2FC4(a1, 1684558668, 1, v17, v18, v19, v20, v21);
      }
    }
  }

  return result;
}

void sub_23EBC3688(uint64_t a1, const __CFString *a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    v24 = 0;
    v25 = 0;
    *a4 = 0;
    sub_23EB6FF14(a2, &v25, "%kC.%kO:int64", a4, a5, a6, a7, a8, a3);
    if (!v17)
    {
      sub_23EB6FF14(a2, &v24, "%kC.%kO:int64", v12, v13, v14, v15, v16, a3);
      if (!v18)
      {
        v19 = v25;
        if (v25)
        {
          v22 = *(a1 + 136);
          v21 = (a1 + 136);
          v20 = v22;
          if (!v22)
          {
            if (sub_23EC0F5AC(v21))
            {
              return;
            }

            v20 = *v21;
            v19 = v25;
          }

          v23 = sub_23EC0F634(v20, v24, v19);
          if (v23)
          {
            *a4 = v23;
          }
        }
      }
    }
  }
}

uint64_t sub_23EBC3770(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (dword_27E3827A8 <= 800)
  {
    if (dword_27E3827A8 != -1 || (result = sub_23EB74AC8(&dword_27E3827A8, 0x320u), result))
    {
      result = sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_CancelDiskTaskSync(void *)", 800, " \n", a5, a6, a7, a8, v11);
    }
  }

  if (v8)
  {
    if (*(v8 + 144) == 1634561902)
    {
      result = *(v8 + 8);
      if (result)
      {
        v9 = *(v8 + 84);
        switch(v9)
        {
          case 1098015561:
            v10 = @"diskd.cancelArchiveDisk";
            break;
          case 1298753353:
            v10 = @"diskd.cancelMigrateDisk";
            break;
          case 1165123913:
            v10 = @"diskd.cancelEraseDisk";
            break;
          default:
            return result;
        }

        return sub_23EBB5E64(result, v10, a3, a4, a5, a6, a7, a8);
      }
    }
  }

  return result;
}

void sub_23EBC386C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_CheckForProperTaskState(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v22);
  }

  if (*(a1 + 144) == 1634561902)
  {
    v9 = *(a1 + 8);
    if (v9)
    {
      if (sub_23EBB4248(v9, 1400460148) && sub_23EBB427C(*(a1 + 8), 1415661904, 0) && *(a1 + 144) == 1634561902 && *(a1 + 80) != 6)
      {
        v10 = sub_23EBB4290(*(a1 + 8));
        if (v10)
        {
          v17 = v10;
          if (!sub_23EBBBF6C(a1, v10, v11, v12, v13, v14, v15, v16))
          {

            sub_23EBB9D84(a1, 6, v17, 0, v18, v19, v20, v21);
          }
        }
      }
    }
  }
}

void sub_23EBC3980(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = 0;
  cf = 0;
  if (*(a1 + 144) == 1634561902)
  {
    v11 = sub_23EB6AE14(a2, a2, a3, a4, a5, a6, a7, a8);
    if (v11)
    {
      v18 = v11;
      if (!sub_23EB6AB20(a2, &cf, v12, v13, v14, v15, v16, v17))
      {
        if (!cf)
        {
LABEL_6:
          if (v23)
          {
            CFRelease(v23);
          }

          return;
        }

        if (!sub_23EBB3F30(a3, 1651721296, &v23))
        {
          if (v23)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
            if (ValueAtIndex)
            {
              sub_23EBECC6C(*(a1 + 128), @"keychainBaseStationType", ValueAtIndex, v18, v23, v20, v21, v22);
            }
          }
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_6;
  }
}

uint64_t sub_23EBC3A64(uint64_t a1, uint64_t a2, const __CFString *a3, CFTypeRef *a4)
{
  v4 = 4294960591;
  if (!a4)
  {
    return v4;
  }

  v5 = a3;
  if (!a3 || !a2 || *(a1 + 144) != 1634561902)
  {
    return v4;
  }

  if (!sub_23EBB4248(a2, 1400460148) || !sub_23EBB4248(a2, 1095593838))
  {
    return 4294960561;
  }

  v60 = 0;
  v59 = 0;
  v57 = 0;
  cf = 0;
  *a4 = 0;
  v9 = sub_23EBB427C(a2, 2002865740, &v59);
  v10 = v59 || !v9;
  v11 = !v10;
  sub_23EBB427C(a2, 2002865737, &v59);
  v13 = v59;
  if (!v11)
  {
    v4 = 0;
    if (v59)
    {
      return v4;
    }
  }

  v14 = sub_23EBEE8B0(*(a1 + 128), v5, 0, 0, 0, 0, &cf, v12);
  if (v14)
  {
    return v14;
  }

  v23 = cf;
  if (cf)
  {
    *a4 = cf;
    cf = 0;
    v5 = v23;
  }

  v24 = sub_23EB6AE14(v5, v15, v16, v17, v18, v19, v20, v21);
  if (!v24)
  {
    return 4294960569;
  }

  v29 = v24;
  sub_23EBEB0B0(*(a1 + 128), 22, 0, v24, v25, v26, v27, v28);
  if (!v11)
  {
    v14 = sub_23EBB4DE4(a2, 1937331060);
    if (v14)
    {
      return v14;
    }

    if (!sub_23EBB427C(a2, 2002865740, &v59) || v59)
    {
      goto LABEL_94;
    }
  }

  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "\n\t****Is WAN plugged in?\n", v31, v32, v33, v34, v56);
  }

  v35 = sub_23EBC5E68(a1, a2, 512, v30, v31, v32, v33, v34);
  if (v35)
  {
    v4 = v35;
    if (v35 != -6757)
    {
      return v4;
    }

    if (dword_27E3827A8 > 800 || dword_27E3827A8 == -1 && !sub_23EB74AC8(&dword_27E3827A8, 0x320u))
    {
      goto LABEL_48;
    }

    v36 = "User skipped WAN connection\n";
  }

  else
  {
LABEL_94:
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "\n\t****Is DHCP or PPPoE?\n", v31, v32, v33, v34, v56);
    }

    v37 = sub_23EBC5E68(a1, a2, 3072, v30, v31, v32, v33, v34);
    if (v37)
    {
      v4 = v37;
      if (v37 != -6757)
      {
        return v4;
      }

      if (dword_27E3827A8 > 800 || dword_27E3827A8 == -1 && !sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        goto LABEL_48;
      }

      v36 = "User skipped DHCP/PPPoE connection\n";
    }

    else
    {
      v14 = sub_23EBB3F7C(a2, 1937327724, &v60);
      if (v14)
      {
        return v14;
      }

      if ((v60 & 0x400) != 0)
      {
        if (dword_27E3827A8 <= 800)
        {
          if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
          {
            sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "Got PPPoE offer\n", v50, v51, v52, v53, v56);
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "\n\t****Setting up PPPoE\n", v50, v51, v52, v53, v56);
          }
        }

        v55 = sub_23EBC615C(a1, a2, v29, v49, v50, v51, v52, v53);
        if (v55)
        {
          v4 = v55;
          if (v55 != -6757)
          {
            return v4;
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "User skipped PPPoE connection\n", v44, v45, v46, v47, v56);
          }
        }

        goto LABEL_91;
      }

      if (v13)
      {
        goto LABEL_48;
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "\n\t****Is Internet connected?\n", v50, v51, v52, v53, v56);
      }

      v54 = sub_23EBC6364(a1, a2, v48, v49, v50, v51, v52, v53);
      if (!v54)
      {
        goto LABEL_48;
      }

      v4 = v54;
      if (v54 != -6757)
      {
        return v4;
      }

      if (dword_27E3827A8 > 800 || dword_27E3827A8 == -1 && !sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        goto LABEL_48;
      }

      v36 = "User skipped Internet connection\n";
    }
  }

  sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, v36, v31, v32, v33, v34, v56);
LABEL_48:
  v14 = sub_23EBB4DE4(a2, 1937331060);
  if (v14)
  {
    return v14;
  }

  cf = 0;
  v14 = sub_23EBB3F30(a2, 1937331060, &cf);
  if (v14)
  {
    return v14;
  }

  if (!cf)
  {
    return 4294960568;
  }

  sub_23EB6FF14(cf, &v57, "%ks", v38, v39, v40, v41, v42, "problems");
  v4 = v43;
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (!v4)
  {
    if (v57)
    {
      if (sub_23EBB0560(v57, 1148543566) != -1 || sub_23EBB0560(v57, 2002866794) != -1)
      {
        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "Setting bridge mode. problems: %@\n", v44, v45, v46, v47, v57);
        }

        v14 = sub_23EBB3E08(a2, 1651724877, 3);
        if (v14)
        {
          return v14;
        }
      }

      v57 = 0;
LABEL_91:
      sub_23EBEB0B0(*(a1 + 128), 23, 0, v29, v44, v45, v46, v47);
      return 0;
    }

    return 4294960568;
  }

  return v4;
}