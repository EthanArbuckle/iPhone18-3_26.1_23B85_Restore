void sub_10020FF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  sub_10001021C(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100210010(uint64_t result, int a2)
{
  if (a2)
  {
    if ((*(result + 143) & 0x8000000000000000) == 0)
    {
      if (!*(result + 143))
      {
        return result;
      }

      return sub_1005D1DDC(*(result + 104));
    }

    if (*(result + 128))
    {
      return sub_1005D1DDC(*(result + 104));
    }
  }

  return result;
}

uint64_t sub_10021003C(uint64_t result, int a2)
{
  if (a2)
  {
    if ((*(result + 135) & 0x8000000000000000) == 0)
    {
      if (!*(result + 135))
      {
        return result;
      }

      return sub_1005D1DDC(*(result + 96));
    }

    if (*(result + 120))
    {
      return sub_1005D1DDC(*(result + 96));
    }
  }

  return result;
}

void sub_100210070(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    v4 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v4 = *v4;
    }

    v5 = 136315650;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sReference to account %s removed", &v5, 0x20u);
  }

  sub_10021014C(a1);
}

void sub_10021014C(uint64_t a1)
{
  v2 = *(a1 + 143);
  if (v2 < 0)
  {
    v2 = *(a1 + 128);
  }

  if (v2)
  {
    if (*(a1 + 196))
    {
      *(a1 + 778) = 1;
      if (sub_10020B3EC(a1))
      {
        sub_10021482C(a1);
      }
    }
  }

  v3 = *(a1 + 744);
  *(a1 + 736) = 0u;
  if (v3)
  {
    sub_100004A34(v3);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, __p);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_17:
  (*(*v12 + 32))(v12, **(a1 + 80) + 24, @"individual.keys", kPhoneServicesWalletDomain, 0, 4);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v14 = *(a1 + 104);
  v15 = *(a1 + 112);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  (*(*v14 + 72))(v14, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(a1 + 104);
  v17 = *(a1 + 112);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100309658(v16, (a1 + 120));
  if (v17)
  {
    sub_100004A34(v17);
  }
}

void sub_100210354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100210384()
{
  if (v0)
  {
    JUMPOUT(0x10021037CLL);
  }

  JUMPOUT(0x100210374);
}

const void **sub_1002103CC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    v6 = 136315394;
    v7 = v3;
    v8 = 2080;
    v9 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%spersonal wallet changed", &v6, 0x16u);
  }

  v4 = sub_10020E1E4(a1);
  sub_10020E0D4(a1, v4);
  sub_10020E500(a1);
  return sub_10020F318(a1, 0, 0);
}

const void **sub_1002104BC(const void **result, int a2)
{
  if (!a2)
  {
    return result;
  }

  v2 = result;
  v3 = result[6];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(*v2[10]);
    *v15 = 136315394;
    *&v15[4] = v4;
    v16 = 2080;
    v17 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%scredentials are going to be invalidated", v15, 0x16u);
  }

  *(v2 + 779) = 1;
  ServiceMap = Registry::getServiceMap(v2[7]);
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *v15 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v15);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
LABEL_11:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
LABEL_12:
  (*(*v13 + 16))(v13, *v2[10] + 24, @"NeedAccountInvalidation", kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 1, 0);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  return sub_10020F318(v2, 0, 0);
}

void sub_1002106A8(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002106E4(uint64_t a1)
{
  result = sub_10021073C(a1);
  if (result)
  {
    if (sub_10020B6E4(a1))
    {
      return 1;
    }

    else
    {
      v3 = *(a1 + 200);

      return sub_100347D60(v3);
    }
  }

  return result;
}

uint64_t sub_10021073C(uint64_t a1)
{
  result = sub_100210794(a1);
  if (result)
  {
    if (sub_10020B6E4(a1))
    {
      return 1;
    }

    else
    {
      v3 = *(a1 + 200);

      return sub_100347D84(v3);
    }
  }

  return result;
}

uint64_t sub_100210794(uint64_t a1)
{
  v14 = 0;
  v15 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v3 = ServiceMap;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  v16 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v16);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (**v10)(&v14, v10, **(a1 + 80) + 24);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v14)
  {
    v12 = (*(*v14 + 496))(v14, 8);
    if (v15)
    {
      sub_100004A34(v15);
    }

    if (v12)
    {
      return 1;
    }
  }

  else if (v15)
  {
    sub_100004A34(v15);
  }

  return sub_10020B6E4(a1);
}

void sub_100210914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100210940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 192);
  if (v4)
  {
    if (v4 != 2)
    {
      v5 = 0;
      v7 = 0;
      v8 = 0;
      if (*(a1 + 196) != 1)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v5 = 1;
  }

  else
  {
    v5 = sub_10020B2C0(a1);
  }

  v6 = *(a1 + 196);
  if (v5 && v6 != 1)
  {
    v7 = sub_10034B35C(*(a1 + 96), *(a1 + 200));
    v8 = 0;
    v5 = 1;
    goto LABEL_12;
  }

  if (v6 != 1)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v7 = 0;
  v8 = sub_100210B30(a1) ^ 1;
LABEL_12:
  v9 = *(a1 + 48);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 80));
    v11 = sub_10060FFC0(*(a1 + 192));
    if (v5)
    {
      v12 = "on";
    }

    else
    {
      v12 = "off";
    }

    v13 = asStringBool(v7);
    v14 = sub_10060FF94(*(a1 + 196));
    *v16 = 136316674;
    *&v16[4] = v10;
    v17 = 2080;
    v18 = " ";
    v19 = 2080;
    v20 = v11;
    v21 = 2080;
    v22 = v12;
    v23 = 2080;
    v24 = v13;
    v25 = 2080;
    v26 = v14;
    v27 = 2080;
    v28 = asStringBool(v8);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper user switch state is %s ('%s'), activating: %s; service status: %s; isEnabled return '%s'", v16, 0x48u);
  }

  *a2 = v8;
  *(a2 + 8) = 0;
  *v16 = 0;
  return sub_10001021C(v16);
}

uint64_t sub_100210B30(uint64_t a1)
{
  result = sub_10020B624(a1);
  if (result)
  {
    if (sub_1005DCD74(*(a1 + 104)))
    {
      v3 = *(a1 + 192);
      if (v3)
      {
        return v3 != 2;
      }

      else
      {
        return sub_10020B2C0(a1) ^ 1;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

const void **sub_100210B98@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((sub_1005DCD74(*(a1 + 104)) & 1) == 0)
  {
    v12 = 0;
    v13 = 0;
    v10 = 0;
    v14 = 0;
    theDict = 0;
    goto LABEL_75;
  }

  theDict = 0;
  if (!sub_100210794(a1))
  {
    v12 = 0;
    v13 = 0;
    v10 = 0;
    v14 = 0;
    goto LABEL_75;
  }

  v6 = sub_1002106E4(a1);
  v7 = sub_10021073C(a1);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v9 = theDict;
    theDict = Mutable;
    __p[0] = v9;
    sub_1000296E0(__p);
  }

  v10 = v7 == 1;
  if (v7 == 1)
  {
    if (v6)
    {
      sub_10034DA68(*(a1 + 96), v38);
      __p[0] = theDict;
      theDict = v38[0];
      v38[0] = 0;
      sub_1000296E0(__p);
      v11 = v38;
LABEL_50:
      sub_1000296E0(v11);
      goto LABEL_51;
    }

    if (*(a1 + 728) == 1)
    {
      v35 = 0;
      v15 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v15)
      {
        v16 = v35;
        v35 = v15;
        __p[0] = v16;
        sub_1000296E0(__p);
      }

      v17 = v35;
      if (*(a1 + 695) < 0)
      {
        sub_100005F2C(__dst, *(a1 + 672), *(a1 + 680));
      }

      else
      {
        *__dst = *(a1 + 672);
        v33 = *(a1 + 688);
      }

      if (SHIBYTE(v33) < 0)
      {
        sub_100005F2C(v38, __dst[0], __dst[1]);
      }

      else
      {
        *v38 = *__dst;
        v39 = v33;
      }

      v37 = 0;
      if (SHIBYTE(v39) < 0)
      {
        sub_100005F2C(__p, v38[0], v38[1]);
      }

      else
      {
        *__p = *v38;
        v41 = v39;
      }

      v42 = 0;
      if (ctu::cf::convert_copy())
      {
        v18 = v37;
        v37 = v42;
        v43 = v18;
        sub_100005978(&v43);
      }

      v19 = kCTWebSheetURL;
      if (SHIBYTE(v41) < 0)
      {
        operator delete(__p[0]);
      }

      value = v37;
      v37 = 0;
      sub_100005978(&v37);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }

      CFDictionarySetValue(v17, v19, value);
      sub_100005978(&value);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__dst[0]);
      }

      if (*(a1 + 720) == 1)
      {
        value = 0;
        if (*(a1 + 719) < 0)
        {
          sub_100005F2C(v29, *(a1 + 696), *(a1 + 704));
        }

        else
        {
          *v29 = *(a1 + 696);
          v30 = *(a1 + 712);
        }

        if (SHIBYTE(v30) < 0)
        {
          sub_100005F2C(v38, v29[0], v29[1]);
        }

        else
        {
          *v38 = *v29;
          v39 = v30;
        }

        v37 = 0;
        if (SHIBYTE(v39) < 0)
        {
          sub_100005F2C(__p, v38[0], v38[1]);
        }

        else
        {
          *__p = *v38;
          v41 = v39;
        }

        v42 = 0;
        if (ctu::cf::convert_copy())
        {
          v20 = v37;
          v37 = v42;
          v43 = v20;
          sub_100005978(&v43);
        }

        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p[0]);
        }

        theString = v37;
        v37 = 0;
        sub_100005978(&v37);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(v38[0]);
        }

        value = CFStringCreateExternalRepresentation(0, theString, 0x600u, 0);
        sub_100005978(&theString);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29[0]);
        }

        CFDictionarySetValue(v35, kCTWebSheetPostData, value);
        sub_10002D760(&value);
      }

      CFDictionarySetValue(theDict, kCTProvisioningURL, v35);
      v11 = &v35;
      goto LABEL_50;
    }
  }

LABEL_51:
  v21 = *(a1 + 192);
  if (v21)
  {
    v22 = v21 == 2;
  }

  else
  {
    v22 = sub_10020B2C0(a1);
  }

  v23 = *(a1 + 196);
  if (a2)
  {
    v24 = !sub_10034B3CC(*(a1 + 96));
  }

  else
  {
    v24 = 0;
  }

  v25 = 0;
  if (v23 != 1 && ((v22 | v24) & 1) != 0)
  {
    if (sub_10034B35C(*(a1 + 96), *(a1 + 200)) || (sub_10034B81C(*(a1 + 96)) & 1) != 0 || (*(a1 + 772) & 1) != 0)
    {
      v25 = 1;
    }

    else
    {
      v25 = *(a1 + 773);
    }
  }

  v26 = sub_10034B404(*(a1 + 96));
  v14 = v6 == 1;
  if (v6 == 1)
  {
    if (v25)
    {
      v27 = &kCTProvisioningStatusInProcess;
    }

    else if (v26 == 1)
    {
      v27 = &kCTProvisioningStatusSubscribed;
    }

    else
    {
      v27 = &kCTProvisioningStatusNotSubscribed;
    }
  }

  else if (v7 == 1)
  {
    v27 = &kCTProvisioningStatusInProcess;
    if ((v25 & 1) == 0)
    {
      v27 = &kCTProvisioningStatusNotSubscribed;
    }
  }

  else
  {
    v27 = &kCTProvisioningStatusNotAllowed;
  }

  CFDictionarySetValue(theDict, kCTProvisioningStatus, *v27);
  v13 = 1;
  v12 = theDict;
LABEL_75:
  LOBYTE(__p[0]) = v13;
  BYTE1(__p[0]) = v10;
  BYTE2(__p[0]) = v14;
  __p[1] = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  *a3 = v13;
  *(a3 + 1) = v10;
  *(a3 + 2) = v14;
  sub_100010180((a3 + 8), &__p[1]);
  sub_1000296E0(&__p[1]);
  return sub_1000296E0(&theDict);
}

void sub_100211100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, int a24, const void *a25, const void *a26, const void *a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_100005978(&a27);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1000296E0(&a25);
  sub_1000296E0(&a26);
  _Unwind_Resume(a1);
}

void sub_10021122C(uint64_t a1, int a2)
{
  v4 = sub_10021073C(a1);
  if (!a2 || v4 == 1)
  {
    v7 = *(a1 + 143);
    if (v7 < 0)
    {
      v7 = *(a1 + 128);
    }

    v8 = *(a1 + 48);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = PersonalityInfo::logPrefix(**(a1 + 80));
        v11 = "disable";
        v14 = 136315650;
        v15 = v10;
        v17 = " ";
        v16 = 2080;
        if (a2)
        {
          v11 = "enable";
        }

        v18 = 2080;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sUI requests to %s Thumper", &v14, 0x20u);
      }

      if (a2)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      sub_10020E0D4(a1, v12);
      sub_10020ED5C(a1, *(a1 + 192));
      sub_10020F318(a1, 1, 0);
    }

    else if (v9)
    {
      v13 = PersonalityInfo::logPrefix(**(a1 + 80));
      v14 = 136315394;
      v15 = v13;
      v16 = 2080;
      v17 = " ";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sno account id", &v14, 0x16u);
    }
  }

  else
  {
    v5 = *(a1 + 48);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 80));
      v14 = 136315394;
      v15 = v6;
      v16 = 2080;
      v17 = " ";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper cannot be turned ON since feature is not allowed", &v14, 0x16u);
    }

    sub_10034CD9C(*(a1 + 96), 1, 1);
  }
}

void sub_100211444(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 196) != a2)
  {
    sub_100211590(a1, a2);
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v5 = ServiceMap;
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v8 = 5381;
      do
      {
        v6 = v8;
        v9 = *v7++;
        v8 = (33 * v8) ^ v9;
      }

      while (v9);
    }

    std::mutex::lock(ServiceMap);
    v14 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v14);
    if (v10)
    {
      v12 = v10[3];
      v11 = v10[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v5);
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v11);
        v13 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
LABEL_10:
    (*(*v12 + 240))(v12, *(**(a1 + 80) + 52), a2);
    if ((v13 & 1) == 0)
    {
      sub_100004A34(v11);
    }
  }
}

void sub_100211574(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100211590(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = *(a1 + 196);
  *(a1 + 196) = a2;
  v5 = *(a1 + 48);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 80));
    if (*(a1 + 196))
    {
      v7 = "on";
    }

    else
    {
      v7 = "off";
    }

    v8 = sub_10060FF94(v4);
    v9 = sub_10060FF94(*(a1 + 196));
    v10 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v10 = *v10;
    }

    *buf = 136316418;
    v15 = v6;
    v16 = 2080;
    v17 = " ";
    v18 = 2080;
    v19 = v7;
    v20 = 2080;
    v21 = v8;
    v22 = 2080;
    v23 = v9;
    v24 = 2080;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sservice:%s, status:%s->%s, account id:'%s'", buf, 0x3Eu);
    v2 = *(a1 + 196);
  }

  v11 = *(a1 + 96);
  if (*(a1 + 143) < 0)
  {
    sub_100005F2C(__p, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *__p = *(a1 + 120);
    v13 = *(a1 + 136);
  }

  (*(*v11 + 448))(v11, 1, v2 == 1, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100211778(a1);
}

void sub_100211754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100211778(uint64_t a1)
{
  if (*(**(a1 + 80) + 48) == 1)
  {
    (*(*a1 + 200))(&v6);
    v2 = v6;
    sub_10001021C(&v7);
    if (sub_1002106E4(a1) == 1)
    {
      v3 = v2;
    }

    else
    {
      v3 = 2;
    }

    v4 = **(a1 + 80);
    v5 = *(v4 + 13);
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v6 = _NSConcreteStackBlock;
        v7 = 0x40000000;
        v8 = sub_10022CEDC;
        v9 = &unk_101E32DA8;
        v10 = v3;
        v11 = 2;
        sub_10022CD30(0x80119);
        return;
      }

      if (v5 != 3)
      {
        return;
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        v6 = _NSConcreteStackBlock;
        v7 = 0x40000000;
        v8 = sub_10022CCE8;
        v9 = &unk_101E32D88;
        v10 = v3;
        v11 = 1;
        sub_10022CB3C(0x800F2);
      }

      return;
    }

    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_101766004(v4);
    }
  }
}

uint64_t sub_100211920(uint64_t a1)
{
  if (sub_1002106E4(a1) || *(a1 + 200) != 1)
  {
    return 0;
  }

  return sub_10021197C(a1);
}

uint64_t sub_10021197C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s", buf, 0x16u);
  }

  if ((*(a1 + 143) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 128))
    {
      goto LABEL_11;
    }
  }

  else if (!*(a1 + 143))
  {
LABEL_11:
    v6 = *(a1 + 48);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v7)
    {
      v9 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sAccount ID or Device ID still not available - bailout", buf, 0x16u);
      return 0;
    }

    return result;
  }

  if (!sub_1008100FC(a1))
  {
    goto LABEL_11;
  }

  if (*(a1 + 772))
  {
    v4 = *(a1 + 48);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sgetProvisioning call in progress", buf, 0x16u);
    }

    return 1;
  }

  v10 = sub_100347EC0(*(a1 + 96) + 360);
  v11 = *(a1 + 48);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v12)
    {
      v24 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sRequest throttled, scheduling service refresh", buf, 0x16u);
    }

    sub_1003486A4(*(a1 + 96) + 360);
    return 1;
  }

  if (v12)
  {
    v13 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Call Get Provisiong Data Update ================================", buf, 0x16u);
  }

  v25 = 256;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v15 = ServiceMap;
  if ((v16 & 0x8000000000000000) != 0)
  {
    v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(ServiceMap);
  v26 = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, &v26);
  if (!v20)
  {
    v22 = 0;
    goto LABEL_27;
  }

  v22 = v20[3];
  v21 = v20[4];
  if (!v21)
  {
LABEL_27:
    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    goto LABEL_28;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v15);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  v23 = 0;
LABEL_28:
  (**v22)(buf, v22, **(a1 + 80) + 24);
  (*(**buf + 440))(*buf, 0, &v25);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  result = 1;
  *(a1 + 772) = 1;
  return result;
}

void sub_100211D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100211DBC(uint64_t a1, const __CFDictionary *a2, int a3)
{
  v40 = 0;
  v41 = 0;
  v42 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  *buf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, buf);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  if (a3)
  {
    v16 = 4;
  }

  else
  {
    v16 = 1;
  }

  (*(*v14 + 48))(&v40, v14, v16, *(**(a1 + 80) + 52));
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v17 = HIBYTE(v42);
  if (v42 < 0)
  {
    v17 = v41;
  }

  if (!v17)
  {
    goto LABEL_35;
  }

  v18 = off_101E439A0;
  if (!a3)
  {
    v18 = off_101E43998;
  }

  Value = CFDictionaryGetValue(a2, *v18);
  if (!Value || (v20 = CFGetTypeID(Value), v20 != CFStringGetTypeID()))
  {
    v28 = 1;
    goto LABEL_37;
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v44 = *&buf[16];
  *v43 = *buf;
  if (v42 >= 0)
  {
    v21 = HIBYTE(v42);
  }

  else
  {
    v21 = v41;
  }

  v22 = HIBYTE(v44);
  v23 = SHIBYTE(v44);
  if (v44 < 0)
  {
    v22 = v43[1];
  }

  if (v21 == v22)
  {
    if (v42 >= 0)
    {
      v24 = &v40;
    }

    else
    {
      v24 = v40;
    }

    if (v44 >= 0)
    {
      v25 = v43;
    }

    else
    {
      v25 = v43[0];
    }

    v26 = memcmp(v24, v25, v21) == 0;
    if ((v23 & 0x80000000) == 0)
    {
LABEL_34:
      if (v26)
      {
LABEL_35:
        v27 = 1;
        goto LABEL_53;
      }

      goto LABEL_58;
    }
  }

  else
  {
    v26 = 0;
    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }
  }

  operator delete(v43[0]);
  if (v26)
  {
    goto LABEL_35;
  }

LABEL_58:
  v28 = 0;
LABEL_37:
  v29 = *(a1 + 48);
  v27 = 0;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = PersonalityInfo::logPrefix(**(a1 + 80));
    v31 = v30;
    if (v28)
    {
      v32 = (a1 + 120);
      if (*(a1 + 143) < 0)
      {
        v32 = *v32;
      }

      v33 = &v40;
      if (v42 < 0)
      {
        v33 = v40;
      }

      *buf = 136316162;
      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v46 = "no previous CB info";
      v47 = 2080;
      v48 = v32;
      v49 = 2080;
      v50 = v33;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sCarrier bundle [%s] used for account %s differs with current CB [%s]", buf, 0x34u);
    }

    else
    {
      v43[0] = 0;
      v43[1] = 0;
      v44 = 0;
      ctu::cf::assign();
      *__p = *v43;
      v39 = v44;
      v34 = v43[0];
      if (v44 >= 0)
      {
        v34 = __p;
      }

      v35 = (a1 + 120);
      if (*(a1 + 143) < 0)
      {
        v35 = *v35;
      }

      v36 = &v40;
      if (v42 < 0)
      {
        v36 = v40;
      }

      *buf = 136316162;
      *&buf[4] = v31;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v46 = v34;
      v47 = 2080;
      v48 = v35;
      v49 = 2080;
      v50 = v36;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sCarrier bundle [%s] used for account %s differs with current CB [%s]", buf, 0x34u);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v27 = 0;
  }

LABEL_53:
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v40);
  }

  return v27;
}

void sub_1002121D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100212250(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v3 = ServiceMap;
  if (v4 < 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  valuePtr = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &valuePtr);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  v12 = **(a1 + 80);
  v13 = *(a1 + 768);
  v17 = 0;
  valuePtr = v13;
  v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  if (v14)
  {
    v17 = v14;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v15 = v17;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = 0;
  sub_100029A48(&v17);
  (*(*v10 + 48))(v10, v12 + 24, @"last.icloud.ver", v15, kPhoneServicesWalletDomain, 0, 1, 0);
  sub_100029A48(&v16);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1002123D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100029A48(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100212408(uint64_t a1, const __CFString *a2)
{
  v7 = 0;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  sub_1002124D4(a1, v5);
  if (*(&v5[0] + 1) == *&v5[0])
  {
    v3 = 0;
  }

  else
  {
    v3 = 1;
    if (a2 && *(&v5[0] + 1) - *&v5[0] <= 8uLL)
    {
      v3 = CFStringCompare(**&v5[0], a2, 0) != kCFCompareEqualTo;
    }
  }

  v8 = &v6;
  sub_100222314(&v8);
  v8 = &v5[1] + 1;
  sub_100222314(&v8);
  v8 = v5;
  sub_100222314(&v8);
  return v3;
}

void sub_1002124D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v23 = 0;
  v24 = 0;
  sub_1005DC42C(*(a1 + 104), &v23);
  if (v23)
  {
    v3 = sub_100007A6C(v23 + 144, (a1 + 120));
    if (v23 + 152 != v3)
    {
      v4 = *(v3 + 56);
      v5 = *(v4 + 88);
      v6 = (v4 + 96);
      if (v5 != (v4 + 96))
      {
        do
        {
          theString2 = 0;
          if (*(v5 + 55) < 0)
          {
            sub_100005F2C(__dst, v5[4], v5[5]);
          }

          else
          {
            *__dst = *(v5 + 2);
            v21 = v5[6];
          }

          if (SHIBYTE(v21) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v30 = v21;
          }

          v28 = 0;
          if (SHIBYTE(v30) < 0)
          {
            sub_100005F2C(&v31, __p[0], __p[1]);
          }

          else
          {
            v31 = *__p;
            v32 = v30;
          }

          v33 = 0;
          if (ctu::cf::convert_copy())
          {
            v7 = v28;
            v28 = v33;
            v34 = v7;
            sub_100005978(&v34);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31);
          }

          theString2 = v28;
          v28 = 0;
          sub_100005978(&v28);
          if (SHIBYTE(v30) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v21) < 0)
          {
            operator delete(__dst[0]);
          }

          v8 = *(a1 + 104);
          v9 = *(a1 + 112);
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v10 = sub_100308CD0(v8, theString2);
          if (v9)
          {
            sub_100004A34(v9);
          }

          v11 = *(a1 + 104);
          v12 = *(a1 + 112);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v13 = sub_100308D48(v11, theString2);
          if (v12)
          {
            sub_100004A34(v12);
          }

          v14 = v25;
          if (v13)
          {
            v14 = v26;
          }

          if (v10)
          {
            v15 = v27;
          }

          else
          {
            v15 = v14;
          }

          sub_10021B890(v15, &theString2);
          sub_100005978(&theString2);
          v16 = v5[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v5[2];
              v18 = *v17 == v5;
              v5 = v17;
            }

            while (!v18);
          }

          v5 = v17;
        }

        while (v17 != v6);
      }
    }
  }

  sub_1002221D0(a2, v27, v26, v25);
  if (v24)
  {
    sub_100004A34(v24);
  }

  *&v31 = v25;
  sub_100222314(&v31);
  *&v31 = v26;
  sub_100222314(&v31);
  *&v31 = v27;
  sub_100222314(&v31);
}

void sub_100212790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, char ***a18, std::__shared_weak_count *a19, char **a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  a18 = &a20;
  sub_100222314(&a18);
  a20 = &a23;
  sub_100222314(&a20);
  a23 = &a26;
  sub_100222314(&a23);
  _Unwind_Resume(a1);
}

void **sub_100212860(void **a1)
{
  v3 = a1 + 6;
  sub_100222314(&v3);
  v3 = a1 + 3;
  sub_100222314(&v3);
  v3 = a1;
  sub_100222314(&v3);
  return a1;
}

uint64_t sub_1002128B8(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    v3 = v2 == 2;
  }

  else
  {
    v3 = sub_10020B2C0(a1);
  }

  v4 = *(a1 + 196);
  memset(__src, 0, 32);
  sub_100212B48(a1, __src);
  v12 = 0;
  if (SHIBYTE(__src[3]) < 0)
  {
    if (!__src[2])
    {
      goto LABEL_22;
    }

    sub_100005F2C(v9, __src[1], __src[2]);
  }

  else
  {
    if (!HIBYTE(__src[3]))
    {
      goto LABEL_22;
    }

    *v9 = *&__src[1];
    v10 = __src[3];
  }

  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(__p, v9[0], v9[1]);
  }

  else
  {
    *__p = *v9;
    v16 = v10;
  }

  v14 = 0;
  if (SHIBYTE(v16) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v18 = v16;
  }

  v19 = 0;
  if (ctu::cf::convert_copy())
  {
    v5 = v14;
    v14 = v19;
    v20 = v5;
    sub_100005978(&v20);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst);
  }

  v6 = v14;
  v14 = 0;
  sub_100005978(&v14);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  *&__dst = v12;
  v11 = 0;
  v12 = v6;
  sub_100005978(&__dst);
  sub_100005978(&v11);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
    if (!v3)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_22:
  if (!v3)
  {
    goto LABEL_26;
  }

LABEL_23:
  if (sub_1005DCD74(*(a1 + 104)))
  {
    goto LABEL_31;
  }

LABEL_26:
  if (LOBYTE(__src[0]) != 1)
  {
    if (v4 != 1)
    {
LABEL_31:
      v7 = 0;
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v7 = BYTE1(__src[0]);
  if ((BYTE1(__src[0]) & 1) == 0 && v4 == 1)
  {
LABEL_32:
    v7 = sub_100212408(a1, v12);
  }

LABEL_33:
  sub_100005978(&v12);
  if (SHIBYTE(__src[3]) < 0)
  {
    operator delete(__src[1]);
  }

  return v7;
}

void sub_100212AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, const void *a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, const void *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_100005978(&a26);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100005978(&a17);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

const void **sub_100212B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = 0;
  sub_100308DC0(v4);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v19 = 0;
  v6 = sub_10005D028();
  sub_10000501C(__p, "vinyl.sim.active");
  v7 = sub_10005D0D8(v6, __p, &v19);
  v8 = v7;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else if (v7)
  {
LABEL_7:
    memset(__p, 0, sizeof(__p));
    ctu::cf::assign();
    *(__dst + 7) = *(&__p[1] + 7);
    v9 = __p[0];
    __dst[0] = __p[1];
    v10 = HIBYTE(__p[2]);
    v11 = v19;
    *a2 = 1;
    *(a2 + 1) = v11;
    v12 = __dst[0];
    *(a2 + 8) = v9;
    *(a2 + 16) = v12;
    *(a2 + 23) = *(__dst + 7);
    *(a2 + 31) = v10;
    return sub_100005978(&v20);
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v23 = 0;
  if (*(a1 + 792) == 1)
  {
    v13 = (a1 + 800);
    if ((*(a1 + 823) & 0x80000000) == 0)
    {
      if (*(a1 + 823))
      {
        *__dst = *v13;
        v14 = *(a1 + 816);
LABEL_16:
        v23 = v14;
        goto LABEL_17;
      }

LABEL_15:
      memset(__p, 0, sizeof(__p));
      ctu::cf::assign();
      *__dst = *__p;
      v14 = __p[2];
      goto LABEL_16;
    }

    v15 = *(a1 + 808);
    if (!v15)
    {
      goto LABEL_15;
    }

    sub_100005F2C(__dst, *v13, v15);
  }

LABEL_17:
  if (*(a1 + 792) == 1)
  {
    v16 = *(a1 + 824);
    isSimReadyToUse = cellplan::RemoteSimSubscriptionInfo::isSimReadyToUse((a1 + 800));
    *a2 = v16 != 0;
    *(a2 + 1) = isSimReadyToUse;
    if (SHIBYTE(v23) < 0)
    {
      sub_100005F2C((a2 + 8), __dst[0], __dst[1]);
    }

    else
    {
      *(a2 + 8) = *__dst;
      *(a2 + 24) = v23;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst[0]);
  }

  return sub_100005978(&v20);
}

void sub_100212DA8()
{
  if (v0)
  {
    sub_100004A34(v0);
  }

  JUMPOUT(0x100212DA0);
}

const void **sub_100212DBC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    if (*(a1 + 792) == 1)
    {
      v4 = (a1 + 800);
      if (*(a1 + 823) < 0)
      {
        v4 = *v4;
      }

      v5 = *(a1 + 824);
    }

    else
    {
      v5 = 0;
      v4 = "not initialized";
    }

    v7 = 136315906;
    v8 = v3;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v4;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sdevId:%s, state:%d", &v7, 0x26u);
  }

  return sub_10020F318(a1, 0, 0);
}

uint64_t sub_100212ECC(uint64_t a1, const __CFDictionary *a2)
{
  if ((sub_100211DBC(a1, a2, 0) & 1) == 0)
  {
    v4 = *(a1 + 48);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v7;
      v54 = 2080;
      v55 = " ";
      v6 = "#I %s%sCB mismatch, reprovisioning required";
      goto LABEL_11;
    }

LABEL_12:
    v9 = 0;
    v10 = 1;
    return v10 | (v9 << 8);
  }

  if ((sub_100211DBC(a1, a2, 1) & 1) == 0)
  {
    v4 = *(a1 + 48);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v8;
      v54 = 2080;
      v55 = " ";
      v6 = "#I %s%sDefault bundle mismatch, reprovisioning required";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (*(a1 + 664) == 1 && sub_10021363C(a1, a1 + 208))
  {
    v4 = *(a1 + 48);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v5;
      v54 = 2080;
      v55 = " ";
      v6 = "#I %s%sTokens or credentials mismatch, reprovisioning required";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 0x16u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v12 = *(a1 + 104);
  if (*(a1 + 143) < 0)
  {
    sub_100005F2C(__p, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *__p = *(a1 + 120);
    v45 = *(a1 + 136);
  }

  v46 = 1;
  v13 = sub_1005D39BC(v12, a2, __p, 1);
  if (v46 == 1 && SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
  }

  if (v13)
  {
    Value = CFDictionaryGetValue(a2, @"labelID");
    v15 = Value;
    if (Value)
    {
      v16 = CFGetTypeID(Value);
      if (v16 != CFStringGetTypeID())
      {
        v15 = 0;
      }
    }

    v43 = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v18 = ServiceMap;
    if (v19 < 0)
    {
      v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
      v21 = 5381;
      do
      {
        v19 = v21;
        v22 = *v20++;
        v21 = (33 * v21) ^ v22;
      }

      while (v22);
    }

    std::mutex::lock(ServiceMap);
    v50[0] = v19;
    v23 = sub_100009510(&v18[1].__m_.__sig, v50);
    if (v23)
    {
      v25 = v23[3];
      v24 = v23[4];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v18);
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v24);
        v26 = 0;
        goto LABEL_35;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
LABEL_35:
    (*(*v25 + 192))(buf, v25, **(a1 + 80) + 24);
    v30 = v61;
    v29 = v62;
    v42[0] = v63;
    *(v42 + 3) = *(&v63 + 3);
    v31 = SHIBYTE(v63);
    v62 = 0;
    v63 = 0;
    v61 = 0;
    if (v31 < 0)
    {
      sub_100005F2C(__dst, v30, v29);
      v47 = 0;
      if (SHIBYTE(v49) < 0)
      {
        sub_100005F2C(v50, __dst[0], __dst[1]);
LABEL_39:
        v52 = 0;
        if (ctu::cf::convert_copy())
        {
          v32 = v47;
          v47 = v52;
          v40[0] = v32;
          sub_100005978(v40);
        }

        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50[0]);
        }

        v33 = v47;
        v43 = v47;
        v47 = 0;
        sub_100005978(&v47);
        if (SHIBYTE(v49) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v31 < 0)
        {
          operator delete(v30);
        }

        if (v69 < 0)
        {
          operator delete(v68);
        }

        if (v67 < 0)
        {
          operator delete(v66);
        }

        if (v65 < 0)
        {
          operator delete(v64);
        }

        if (SHIBYTE(v63) < 0)
        {
          operator delete(v61);
        }

        if (v60 < 0)
        {
          operator delete(v57);
        }

        if (SHIBYTE(v56) < 0)
        {
          operator delete(*buf);
          if (v26)
          {
LABEL_59:
            if (!v15)
            {
              goto LABEL_64;
            }

LABEL_63:
            if (CFStringCompare(v15, v33, 0) == kCFCompareEqualTo)
            {
              v10 = 0;
LABEL_75:
              sub_100005978(&v43);
              v9 = 0;
              return v10 | (v9 << 8);
            }

LABEL_64:
            v34 = *(a1 + 48);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = PersonalityInfo::logPrefix(**(a1 + 80));
              v50[0] = 0;
              v50[1] = 0;
              v51 = 0;
              ctu::cf::assign();
              v49 = v51;
              *__dst = *v50;
              v36 = SHIBYTE(v51);
              v37 = v50[0];
              v50[0] = 0;
              v50[1] = 0;
              v51 = 0;
              ctu::cf::assign();
              v38 = __dst;
              if (v36 < 0)
              {
                v38 = v37;
              }

              *v40 = *v50;
              v41 = v51;
              v39 = v40;
              if (v51 < 0)
              {
                v39 = v50[0];
              }

              *buf = 136315906;
              *&buf[4] = v35;
              v54 = 2080;
              v55 = " ";
              v56 = 2080;
              v57 = v38;
              v58 = 2080;
              v59 = v39;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%smy labelId '%s' doesn't match ID from cloud '%s'", buf, 0x2Au);
              if (SHIBYTE(v41) < 0)
              {
                operator delete(v40[0]);
              }

              if (SHIBYTE(v49) < 0)
              {
                operator delete(__dst[0]);
              }
            }

            v10 = 1;
            goto LABEL_75;
          }
        }

        else if (v26)
        {
          goto LABEL_59;
        }

        sub_100004A34(v24);
        if (!v15)
        {
          goto LABEL_64;
        }

        goto LABEL_63;
      }
    }

    else
    {
      __dst[0] = v30;
      __dst[1] = v29;
      LODWORD(v49) = v42[0];
      *(&v49 + 3) = *(v42 + 3);
      HIBYTE(v49) = v31;
      v47 = 0;
    }

    *v50 = *__dst;
    v51 = v49;
    goto LABEL_39;
  }

  v27 = *(a1 + 48);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v28;
    v54 = 2080;
    v55 = " ";
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%sSchema version changed - iCloud update required", buf, 0x16u);
  }

  v10 = 0;
  v9 = 1;
  return v10 | (v9 << 8);
}

void sub_100213544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, const void *a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  sub_100005978(&a23);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (v41 < 0)
  {
    operator delete(v39);
  }

  sub_100FB0A00(&a38);
  if ((v40 & 1) == 0)
  {
    sub_100004A34(v38);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10021363C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 143) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 128))
    {
      return 0;
    }
  }

  else if (!*(a1 + 143))
  {
    return 0;
  }

  if (*(a2 + 456) == 1)
  {
    cf2 = 0;
    cf1 = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v5 = ServiceMap;
    v7 = v6;
    if (v6 < 0)
    {
      v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    *buf = v7;
    v11 = sub_100009510(&v5[1].__m_.__sig, buf);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v5);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v5);
    v12 = 0;
    v14 = 1;
LABEL_15:
    v16 = kPhoneServicesWalletDomain;
    (*(*v13 + 24))(v107, v13, **(a1 + 80) + 24, @"ps.local.auth", kPhoneServicesWalletDomain, 0, 4);
    sub_100060DE8(v143, v107);
    v17 = cf1;
    cf1 = *v143;
    *buf = v17;
    *v143 = 0;
    sub_100005978(buf);
    sub_100005978(v143);
    sub_10000A1EC(v107);
    if ((v14 & 1) == 0)
    {
      sub_100004A34(v12);
    }

    if (*(a2 + 456) == 1)
    {
      sub_100A3DB18(a2, v143);
      v18 = *v143;
    }

    else
    {
      v18 = 0;
    }

    *buf = cf2;
    cf2 = v18;
    *v143 = 0;
    sub_100005978(buf);
    sub_100005978(v143);
    if (cf1)
    {
      v19 = *(a1 + 48);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315650;
        *&buf[4] = v20;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2112;
        *&buf[24] = cf1;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sold auth set: %@", buf, 0x20u);
      }
    }

    if (cf2)
    {
      v21 = *(a1 + 48);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315650;
        *&buf[4] = v22;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2112;
        *&buf[24] = cf2;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%snew auth set: %@", buf, 0x20u);
      }
    }

    if (cf1 && (!cf2 || !CFEqual(cf1, cf2)))
    {
      v26 = *(a1 + 48);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315394;
        *&buf[4] = v27;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sgetAuthentication response mismatch with stored copy", buf, 0x16u);
      }

LABEL_106:
      if ((*(a1 + 780) & 1) == 0)
      {
LABEL_122:
        v15 = 1;
        goto LABEL_123;
      }

      *(a1 + 780) = 0;
      v69 = sub_10020B3EC(a1);
      v70 = *(a1 + 48);
      v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
      if (!v69)
      {
        if (v71)
        {
          v83 = PersonalityInfo::logPrefix(**(a1 + 80));
          *buf = 136315394;
          *&buf[4] = v83;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I %s%sDetected suspicious change of tokens - setProvisioning(disable) not supported - skipped", buf, 0x16u);
        }

        goto LABEL_122;
      }

      if (v71)
      {
        v72 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315394;
        *&buf[4] = v72;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I %s%sDetected suspicious change of tokens - invoke reprovisioning for security reasons", buf, 0x16u);
      }

      *(a1 + 779) = 1;
      v73 = Registry::getServiceMap(*(a1 + 56));
      v74 = v73;
      v75 = v6;
      if (v6 < 0)
      {
        v76 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
        v77 = 5381;
        do
        {
          v75 = v77;
          v78 = *v76++;
          v77 = (33 * v77) ^ v78;
        }

        while (v78);
      }

      std::mutex::lock(v73);
      *buf = v75;
      v79 = sub_100009510(&v74[1].__m_.__sig, buf);
      if (v79)
      {
        v81 = v79[3];
        v80 = v79[4];
        if (v80)
        {
          atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v74);
          atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v80);
          v82 = 0;
          goto LABEL_120;
        }
      }

      else
      {
        v81 = 0;
      }

      std::mutex::unlock(v74);
      v80 = 0;
      v82 = 1;
LABEL_120:
      (*(*v81 + 16))(v81, **(a1 + 80) + 24, @"NeedAccountInvalidation", kCFBooleanTrue, v16, 0, 1, 0);
      if ((v82 & 1) == 0)
      {
        sub_100004A34(v80);
      }

      goto LABEL_122;
    }

    v113 = 0;
    theDict = 0;
    sub_1005D67F8(*(a1 + 104), 0, (a1 + 120), 0, &v113);
    if (!theDict)
    {
      goto LABEL_144;
    }

    if (sub_10020B7A4(a1))
    {
      Value = CFDictionaryGetValue(theDict, @"masterToken");
      if (Value)
      {
        v24 = CFGetTypeID(Value);
        if (v24 == CFStringGetTypeID())
        {
          if (*(a2 + 56) == 1 && *(a2 + 40) != *(a2 + 32))
          {
            memset(buf, 0, 24);
            ctu::cf::assign();
            *v143 = *buf;
            *&v143[16] = *&buf[16];
            v25 = sub_100071DF8(v143, *(a2 + 32));
            if (v143[23] < 0)
            {
              operator delete(*v143);
            }

            if (v25)
            {
              goto LABEL_86;
            }
          }

LABEL_53:
          v41 = *(a1 + 48);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = PersonalityInfo::logPrefix(**(a1 + 80));
            *buf = 136315394;
            *&buf[4] = v42;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v43 = "#I %s%smaster token is not equal";
LABEL_96:
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v43, buf, 0x16u);
          }

LABEL_105:
          sub_10001021C(&theDict);
          goto LABEL_106;
        }
      }

      if ((*(a2 + 56) & 1) != 0 && *(a2 + 40) != *(a2 + 32))
      {
        goto LABEL_53;
      }

LABEL_86:
      v63 = CFDictionaryGetValue(theDict, @"imsCommonCredentials");
      if (!v63 && ((*(a2 + 216) & 1) != 0 || *(a2 + 184) == 1))
      {
        v41 = *(a1 + 48);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v67 = PersonalityInfo::logPrefix(**(a1 + 80));
          *buf = 136315394;
          *&buf[4] = v67;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v43 = "#I %s%scommon credentials have been changed";
          goto LABEL_96;
        }

        goto LABEL_105;
      }

      v142 = 0;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_1006113E8(buf, v63);
      if (*(a2 + 216) == 1)
      {
        if ((BYTE8(v127) & 1) == 0 || !sub_100071DF8((a2 + 192), &v126))
        {
LABEL_90:
          v64 = *(a1 + 48);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v65 = PersonalityInfo::logPrefix(**(a1 + 80));
            *v143 = 136315394;
            *&v143[4] = v65;
            *&v143[12] = 2080;
            *&v143[14] = " ";
            v66 = "#I %s%sentitlement-server-address has been changed";
LABEL_103:
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, v66, v143, 0x16u);
            goto LABEL_104;
          }

          goto LABEL_104;
        }
      }

      else if (BYTE8(v127))
      {
        goto LABEL_90;
      }

      if (*(a2 + 184) == 1)
      {
        if ((BYTE8(v125) & 1) == 0 || !sub_100071DF8((a2 + 160), &v124))
        {
LABEL_101:
          v64 = *(a1 + 48);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v68 = PersonalityInfo::logPrefix(**(a1 + 80));
            *v143 = 136315394;
            *&v143[4] = v68;
            *&v143[12] = 2080;
            *&v143[14] = " ";
            v66 = "#I %s%sgateway-address has been changed";
            goto LABEL_103;
          }

LABEL_104:
          sub_100220C2C(buf);
          goto LABEL_105;
        }
      }

      else if (BYTE8(v125))
      {
        goto LABEL_101;
      }

      sub_100220C2C(buf);
LABEL_144:
      sub_10001021C(&theDict);
      if (*(a1 + 780) == 1)
      {
        *(a1 + 780) = 0;
      }

      v15 = 0;
      if (cf1)
      {
        goto LABEL_147;
      }

LABEL_123:
      if (*(a1 + 779) == 1)
      {
        v84 = sub_10020B3EC(a1);
        if (cf2)
        {
          v85 = v84;
        }

        else
        {
          v85 = 1;
        }

        if (v85)
        {
          goto LABEL_147;
        }
      }

      else if (!cf2)
      {
LABEL_147:
        sub_100005978(&cf2);
        sub_100005978(&cf1);
        return v15;
      }

      v86 = *(a1 + 48);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v87 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315394;
        *&buf[4] = v87;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I %s%sput new credentials set in cache", buf, 0x16u);
      }

      v88 = Registry::getServiceMap(*(a1 + 56));
      v89 = v88;
      if (v6 < 0)
      {
        v90 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
        v91 = 5381;
        do
        {
          v6 = v91;
          v92 = *v90++;
          v91 = (33 * v91) ^ v92;
        }

        while (v92);
      }

      std::mutex::lock(v88);
      *buf = v6;
      v93 = sub_100009510(&v89[1].__m_.__sig, buf);
      if (v93)
      {
        v95 = v93[3];
        v94 = v93[4];
        if (v94)
        {
          atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v89);
          atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v94);
          v96 = 0;
          goto LABEL_140;
        }
      }

      else
      {
        v95 = 0;
      }

      std::mutex::unlock(v89);
      v94 = 0;
      v96 = 1;
LABEL_140:
      (*(*v95 + 16))(v95, **(a1 + 80) + 24, @"ps.local.auth", cf2, v16, 0, 4, 0);
      if ((v96 & 1) == 0)
      {
        sub_100004A34(v94);
      }

      goto LABEL_147;
    }

    if (*(a2 + 56) != 1)
    {
      goto LABEL_86;
    }

    v28 = CFDictionaryGetValue(theDict, @"cfgSlots");
    v29 = v28;
    if (v28)
    {
      v30 = CFGetTypeID(v28);
      if (v30 != CFArrayGetTypeID())
      {
        v29 = 0;
      }
    }

    theArray = 0;
    v31 = Registry::getServiceMap(*(a1 + 56));
    v32 = v31;
    v33 = v6;
    if (v6 < 0)
    {
      v34 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v35 = 5381;
      do
      {
        v33 = v35;
        v36 = *v34++;
        v35 = (33 * v35) ^ v36;
      }

      while (v36);
    }

    std::mutex::lock(v31);
    *buf = v33;
    v37 = sub_100009510(&v32[1].__m_.__sig, buf);
    if (v37)
    {
      v39 = v37[3];
      v38 = v37[4];
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v32);
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v38);
        v40 = 0;
        goto LABEL_57;
      }
    }

    else
    {
      v39 = 0;
    }

    std::mutex::unlock(v32);
    v38 = 0;
    v40 = 1;
LABEL_57:
    (*(*v39 + 24))(v143, v39, **(a1 + 80) + 24, @"individual.keys", v16, 0, 4);
    sub_10006DD00(&theArray, v143);
    sub_10000A1EC(v143);
    if ((v40 & 1) == 0)
    {
      sub_100004A34(v38);
    }

    if (v29 && theArray && (v45 = *(a2 + 32), v44 = *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((v44 - v45) >> 3) >= CFArrayGetCount(v29)) && (v46 = CFArrayGetCount(theArray), v46 >= CFArrayGetCount(v29)))
    {
      Count = CFArrayGetCount(v29);
      if (!Count)
      {
LABEL_85:
        sub_100010250(&theArray);
        goto LABEL_86;
      }

      v56 = 0;
      v57 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v29, v57);
        if (!ValueAtIndex)
        {
          break;
        }

        v111 = 0;
        v59 = CFArrayGetValueAtIndex(theArray, v57);
        memset(buf, 0, 24);
        if (v59)
        {
          v60 = CFGetTypeID(v59);
          if (v60 == CFDataGetTypeID())
          {
            ctu::cf::assign();
          }
        }

        *__p = *buf;
        v110 = *&buf[16];
        sub_1009F8218(ValueAtIndex, __p, v143);
        sub_100010180(&v111, v143);
        sub_10000A1EC(v143);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (!v111)
        {
          v100 = *(a1 + 48);
          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
          {
            v101 = PersonalityInfo::logPrefix(**(a1 + 80));
            *buf = 136315650;
            *&buf[4] = v101;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2048;
            *&buf[24] = v57;
            _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "#I %s%sthumper config for slot %zu is incomplete", buf, 0x20u);
          }

          goto LABEL_160;
        }

        v61 = *(a2 + 32);
        CFDictionaryGetValue(v111, @"token");
        memset(buf, 0, 24);
        ctu::cf::assign();
        *v143 = *buf;
        *&v143[16] = *&buf[16];
        v62 = sub_100071DF8((v61 + v56), v143);
        if (v143[23] < 0)
        {
          operator delete(*v143);
        }

        if (!v62)
        {
          v102 = *(a1 + 48);
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
          {
            v103 = PersonalityInfo::logPrefix(**(a1 + 80));
            v104 = (*(a2 + 32) + v56);
            if (*(v104 + 23) < 0)
            {
              v104 = *v104;
            }

            CFDictionaryGetValue(v111, @"token");
            memset(v143, 0, sizeof(v143));
            ctu::cf::assign();
            *v107 = *v143;
            v108 = *&v143[16];
            v105 = *v143;
            if ((v143[23] & 0x80u) == 0)
            {
              v105 = v107;
            }

            *buf = 136316162;
            *&buf[4] = v103;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2048;
            *&buf[24] = v57;
            *&buf[32] = 2080;
            *&buf[34] = v104;
            *&buf[42] = 2080;
            *&buf[44] = v105;
            _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "#I %s%stoken for slot %zu doesn't match: '%s' vs '%s'", buf, 0x34u);
            if (SHIBYTE(v108) < 0)
            {
              operator delete(v107[0]);
            }
          }

LABEL_160:
          sub_10001021C(&v111);
          goto LABEL_71;
        }

        sub_10001021C(&v111);
        ++v57;
        v56 += 24;
        if (Count == v57)
        {
          goto LABEL_85;
        }
      }

      v98 = *(a1 + 48);
      if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_71;
      }

      v99 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315650;
      *&buf[4] = v99;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      *&buf[24] = v57;
      v53 = "#I %s%sthumper config for slot %zu is of incorrect format";
      v54 = v98;
      v55 = 32;
    }

    else
    {
      v47 = *(a1 + 48);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
LABEL_71:
        sub_100010250(&theArray);
        goto LABEL_105;
      }

      v48 = PersonalityInfo::logPrefix(**(a1 + 80));
      v50 = *(a2 + 32);
      v49 = *(a2 + 40);
      if (v29)
      {
        v51 = CFArrayGetCount(v29);
      }

      else
      {
        v51 = 0;
      }

      v52 = theArray;
      if (theArray)
      {
        v52 = CFArrayGetCount(theArray);
      }

      *buf = 136316162;
      *&buf[4] = v48;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      *&buf[24] = 0xAAAAAAAAAAAAAAABLL * ((v49 - v50) >> 3);
      *&buf[32] = 2048;
      *&buf[34] = v51;
      *&buf[42] = 2048;
      *&buf[44] = v52;
      v53 = "#I %s%stoo many slots in config, tokens:%zu ? slots:%zu ? slot keys:%zu";
      v54 = v47;
      v55 = 52;
    }

    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, v53, buf, v55);
    goto LABEL_71;
  }

  return 0;
}

void sub_100214660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, const void *a20, __int16 a21, char a22, char a23, uint64_t a24, const void *a25, const void *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 105) < 0)
  {
    operator delete(*(v32 - 128));
  }

  sub_10001021C(&a19);
  sub_100010250(&a20);
  sub_10001021C(&a24);
  sub_100005978(&a25);
  sub_100005978(&a26);
  _Unwind_Resume(a1);
}

void sub_10021482C(uint64_t a1)
{
  if (*(a1 + 773) == 1 && (*(a1 + 775) & 1) != 0)
  {
    return;
  }

  if (sub_100347EC0(*(a1 + 96) + 360))
  {
    v2 = *(a1 + 48);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v3;
      v17 = 2080;
      v18 = " ";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Call Set Provisiong (to disable) ================================", buf, 0x16u);
    }

    operator new();
  }

  *(a1 + 779) = 1;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_14;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_14:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_15;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
LABEL_15:
  (*(*v12 + 16))(v12, **(a1 + 80) + 24, @"NeedAccountInvalidation", kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 1, 0);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v14 = *(a1 + 48);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v15;
    v17 = 2080;
    v18 = " ";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sRequest throttled, scheduling service refresh", buf, 0x16u);
  }

  sub_1003486A4(*(a1 + 96) + 360);
  sub_100215448(a1, 1);
}

void sub_100214D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  sub_10006EC28(&a15, a16);
  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

void sub_100214D88(uint64_t a1)
{
  if (!sub_1008100FC(a1))
  {
    v6 = *(a1 + 48);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v7 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v8 = "#I %s%sDevice ID still not available - bailout";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);
    return;
  }

  if (((*(a1 + 778) & 1) != 0 || *(a1 + 779) == 1) && sub_10020B3EC(a1))
  {
    v2 = *(a1 + 48);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%saccount invalidation required - defer Thumper configuration", buf, 0x16u);
    }

    sub_10021482C(a1);
    v4 = *(a1 + 744);
    *(a1 + 736) = 0u;
    if (v4)
    {
      sub_100004A34(v4);
    }

    return;
  }

  v5 = *(a1 + 736);
  if (v5)
  {

    sub_100215228(a1, v5);
    return;
  }

  if (*(a1 + 772) & 1) != 0 || (*(a1 + 773))
  {
    v6 = *(a1 + 48);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v8 = "#I %s%sgetProvisioning call in progress";
    goto LABEL_19;
  }

  v10 = sub_100347EC0(*(a1 + 96) + 360);
  v11 = *(a1 + 48);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Call Get Provisiong Data Update ================================", buf, 0x16u);
    }

    v25 = 256;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v15 = ServiceMap;
    if ((v16 & 0x8000000000000000) != 0)
    {
      v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
      v18 = 5381;
      do
      {
        v16 = v18;
        v19 = *v17++;
        v18 = (33 * v18) ^ v19;
      }

      while (v19);
    }

    std::mutex::lock(ServiceMap);
    v26 = v16;
    v20 = sub_100009510(&v15[1].__m_.__sig, &v26);
    if (v20)
    {
      v22 = v20[3];
      v21 = v20[4];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v15);
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v21);
        v23 = 0;
LABEL_35:
        (**v22)(buf, v22, **(a1 + 80) + 24);
        (*(**buf + 440))(*buf, 0, &v25);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if ((v23 & 1) == 0)
        {
          sub_100004A34(v21);
        }

        *(a1 + 772) = 1;
        return;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    goto LABEL_35;
  }

  if (v12)
  {
    v24 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v24;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sRequest throttled, scheduling service refresh", buf, 0x16u);
  }

  sub_1003486A4(*(a1 + 96) + 360);
}

void sub_1002151DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100215228(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 664) != 1)
  {
    v3 = *(a1 + 48);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v4 = PersonalityInfo::logPrefix(**(a1 + 80));
    v7 = 136315394;
    v8 = v4;
    v9 = 2080;
    v10 = " ";
    v5 = "#I %s%scalled while Authentication response is not present - no go";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, &v7, 0x16u);
    return;
  }

  if (*(a1 + 264) != 1)
  {
    v3 = *(a1 + 48);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v6 = PersonalityInfo::logPrefix(**(a1 + 80));
    v7 = 136315394;
    v8 = v6;
    v9 = 2080;
    v10 = " ";
    v5 = "#I %s%scalled while Authentication don't have service tokens - no go";
    goto LABEL_10;
  }

  sub_1002186F4(a1, a2);
}

std::string *sub_100215390(std::string *a1, char **a2)
{
  v3 = *a2;
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    sub_100016890(a1, v3);
  }

  else
  {
    sub_10000501C(a1, v3);
    a1[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

void sub_1002153D8(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = a2;
  v3 = a3[1];
  v5 = *a3;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10022C634(a1, &v4);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100215430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100215448(uint64_t a1, int a2)
{
  v4 = sub_1002106E4(a1);
  if (sub_10020B7A4(a1) && v4 == 1)
  {
    if (a2)
    {
      *(a1 + 781) = 1;
    }

    else if ((*(a1 + 781) & 1) == 0)
    {
      return;
    }

    sub_1002176F0(a1);
  }
}

const void **sub_1002154D0@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  theArray = 0;
  (*(**(a1 + 96) + 472))(&__dst);
  sub_10006DD00(&theArray, &__dst.__r_.__value_.__l.__data_);
  sub_10000A1EC(&__dst.__r_.__value_.__l.__data_);
  v5 = theArray;
  if (theArray)
  {
    for (i = 0; i < CFArrayGetCount(v5); ++i)
    {
      memset(&__p, 0, sizeof(__p));
      CFArrayGetValueAtIndex(theArray, i);
      memset(&__dst, 0, sizeof(__dst));
      ctu::cf::assign();
      __p = __dst;
      v7 = *(a2 + 1);
      v8 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      v9 = a2[23];
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a2 + 1);
      }

      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
        if (v9 < __p.__r_.__value_.__l.__size_)
        {
          goto LABEL_23;
        }

        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (v9 < SHIBYTE(__dst.__r_.__value_.__r.__words[2]))
        {
          goto LABEL_24;
        }

        p_p = &__p;
        size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      v13 = (p_p + size);
      if (size)
      {
        v14 = *a2;
        if (v10 >= 0)
        {
          v14 = a2;
        }

        while (p_p->__r_.__value_.__s.__data_[0] == *v14)
        {
          p_p = (p_p + 1);
          ++v14;
          if (!--size)
          {
            goto LABEL_18;
          }
        }

        v13 = p_p;
      }

LABEL_18:
      v15 = __p.__r_.__value_.__l.__size_;
      v16 = __p.__r_.__value_.__r.__words[0];
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v17 = __p.__r_.__value_.__l.__size_;
      }

      else
      {
        v16 = &__p;
        v17 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      if (v13 == (v16 + v17))
      {
        memset(&__dst, 0, sizeof(__dst));
        if (v10 < 0)
        {
          sub_100005F2C(&__dst, *a2, v7);
          v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v15 = __p.__r_.__value_.__l.__size_;
        }

        else
        {
          __dst = *a2;
        }

        if ((v8 & 0x80u) == 0)
        {
          v18 = v8;
        }

        else
        {
          v18 = v15;
        }

        v19 = std::string::erase(&__dst, 0, v18);
        if (SHIBYTE(v19->__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(a3, v19->__r_.__value_.__l.__data_, v19->__r_.__value_.__l.__size_);
        }

        else
        {
          v20 = *&v19->__r_.__value_.__l.__data_;
          *(a3 + 16) = *(&v19->__r_.__value_.__l + 2);
          *a3 = v20;
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return sub_100010250(&theArray);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_23:
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_24:
      v5 = theArray;
    }
  }

  if (a2[23] < 0)
  {
    sub_100005F2C(a3, *a2, *(a2 + 1));
  }

  else
  {
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 2);
  }

  return sub_100010250(&theArray);
}

void sub_100215728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100010250(&a15);
  _Unwind_Resume(a1);
}

void sub_100215798(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    memset(&__str, 0, sizeof(__str));
    sub_1002154D0(a1, a2, &__str);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      v16 = *(a1 + 48);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315394;
        v35 = v17;
        v36 = 2080;
        v37 = " ";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sprovided phone number is empty - ignored", buf, 0x16u);
      }

      goto LABEL_56;
    }

    v5 = (a1 + 144);
    v6 = *(a1 + 167);
    v7 = v6;
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a1 + 152);
    }

    if (v6 == size)
    {
      v8 = (v7 >= 0 ? a1 + 144 : *v5);
      v9 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      if (!memcmp(v8, v9, size))
      {
LABEL_56:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

    v10 = *(a1 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(**(a1 + 80));
      v12 = a1 + 144;
      if (*(a1 + 167) < 0)
      {
        v12 = *v5;
      }

      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v35 = v11;
      v36 = 2080;
      v37 = " ";
      v38 = 2080;
      v39 = v12;
      v40 = 2080;
      v41 = p_str;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sphone number changed from: '%s' to '%s'", buf, 0x2Au);
      LOBYTE(v7) = *(a1 + 167);
    }

    if ((v7 & 0x80) != 0)
    {
      if (!*(a1 + 152))
      {
LABEL_35:
        std::string::operator=((a1 + 144), &__str);
        memset(&__p, 0, sizeof(__p));
        sub_1009F7FB4((a1 + 144));
        sub_1005D1DDC(*(a1 + 104));
        v20 = (a1 + 120);
        v21 = *(a1 + 143);
        v22 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(a1 + 128);
        }

        if (!v21)
        {
          v23 = (v22 >= 0 ? a1 + 120 : *v20);
          if (!memcmp(&__p, v23, 0))
          {
            goto LABEL_53;
          }
        }

        v24 = *(a1 + 48);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = PersonalityInfo::logPrefix(**(a1 + 80));
          v26 = a1 + 120;
          if (*(a1 + 143) < 0)
          {
            v26 = *v20;
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315906;
          v35 = v25;
          v36 = 2080;
          v37 = " ";
          v38 = 2080;
          v39 = v26;
          v40 = 2080;
          v41 = p_p;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%saccount id was changed from '%s' to '%s'", buf, 0x2Au);
        }

        std::string::operator=((a1 + 120), &__p);
        v28 = sub_10020E1E4(a1);
        sub_10020E0D4(a1, v28);
        if (*(a1 + 664) == 1 && sub_10021363C(a1, a1 + 208))
        {
          v29 = *(a1 + 48);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = PersonalityInfo::logPrefix(**(a1 + 80));
            *buf = 136315394;
            v35 = v30;
            v36 = 2080;
            v37 = " ";
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sgetAuthentication response changed and affect Thumper configuration. Re-provisioning requested, if applicable", buf, 0x16u);
          }

          v31 = 1;
        }

        else
        {
LABEL_53:
          v31 = 0;
        }

        sub_10020F318(a1, 0, v31);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_56;
      }
    }

    else if (!v7)
    {
      goto LABEL_35;
    }

    v18 = *(a1 + 48);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      v35 = v19;
      v36 = 2080;
      v37 = " ";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sTHUMPER ACCOUNT IS GOING TO BE COMPLETELY RE-PROVISIONED because Phone Number has been changed for Subscriber ID", buf, 0x16u);
    }

    sub_10021014C(a1);
    goto LABEL_35;
  }

  v14 = *(a1 + 48);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    v35 = v15;
    v36 = 2080;
    v37 = " ";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sphone number is NOT PROVIDED!", buf, 0x16u);
  }
}

void sub_100215C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_100215CCC(uint64_t a1, void *a2, int a3, void *a4)
{
  if (!sub_10112CDBC(a2, (**(a1 + 80) + 24)))
  {
    v7 = *(a1 + 96);
    v8 = a4[1];
    v72 = *a4;
    v73 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_10034BFF4(v7, a3, &v72);
    if (v73)
    {
      sub_100004A34(v73);
    }

    if (v9)
    {
      v10 = *(a1 + 48);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(**(a1 + 80));
        v12 = sub_100A38E30(a3);
        *buf = 136315650;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v75 = 2080;
        v76 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluating Phone Service Device List ==(cause:%s)==============================", buf, 0x20u);
      }

      v13 = 0;
      *(a1 + 774) = 0;
      if ((v9 & 0x100) == 0)
      {
        goto LABEL_90;
      }

      *(a1 + 781) = 0;
      v14 = *(a1 + 752);
      if (v14)
      {
        v15 = *(*a4 + 24);
        v16 = *(v15 + 4);
        v17 = *(v14 + 4);
        v13 = v17 != v16;
        if (v17 == v16 && v17 != 0)
        {
          v13 = *v14 != *v15;
        }

        __src = 0;
        v70 = 0;
        v71 = 0;
        if (*(v14 + 32) == 1)
        {
          v19 = *(v14 + 8);
          if (*(v14 + 16) != v19)
          {
            v20 = 0;
            v21 = 0;
            do
            {
              v22 = v19 + (v21 << 7);
              if (*(v22 + 24) == 1)
              {
                v23 = *(*a4 + 24);
                if (*(v23 + 32) == 1)
                {
                  v25 = *(v23 + 8);
                  v24 = *(v23 + 16);
                  while (v25 != v24)
                  {
                    if (*(v25 + 24) == 1)
                    {
                      v26 = *(v25 + 23);
                      if (v26 >= 0)
                      {
                        v27 = *(v25 + 23);
                      }

                      else
                      {
                        v27 = *(v25 + 8);
                      }

                      v28 = *(v22 + 23);
                      v29 = v28;
                      if ((v28 & 0x80u) != 0)
                      {
                        v28 = *(v22 + 8);
                      }

                      if (v27 == v28)
                      {
                        v30 = v26 >= 0 ? v25 : *v25;
                        v31 = v29 >= 0 ? v22 : *v22;
                        if (!memcmp(v30, v31, v27))
                        {
                          goto LABEL_51;
                        }
                      }
                    }

                    v25 += 128;
                  }
                }

                if (v20 >= v71)
                {
                  v32 = __src;
                  v33 = v20 - __src;
                  v34 = (v20 - __src) >> 3;
                  v35 = v34 + 1;
                  if ((v34 + 1) >> 61)
                  {
                    sub_1000CE3D4();
                  }

                  v36 = v71 - __src;
                  if ((v71 - __src) >> 2 > v35)
                  {
                    v35 = v36 >> 2;
                  }

                  if (v36 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v37 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v37 = v35;
                  }

                  if (v37)
                  {
                    sub_10006A8B4(&__src, v37);
                  }

                  v38 = (v20 - __src) >> 3;
                  v39 = (8 * v34);
                  v40 = (8 * v34 - 8 * v38);
                  *v39 = v21;
                  v20 = v39 + 1;
                  memcpy(v40, v32, v33);
                  v41 = __src;
                  __src = v40;
                  v70 = v20;
                  v71 = 0;
                  if (v41)
                  {
                    operator delete(v41);
                  }
                }

                else
                {
                  *v20++ = v21;
                }

                v70 = v20;
                v14 = *(a1 + 752);
              }

LABEL_51:
              ++v21;
              v19 = *(v14 + 8);
            }

            while (v21 < (*(v14 + 16) - v19) >> 7);
            if (v20 != __src)
            {
              *buf = 0;
              *&buf[8] = 0;
              sub_1005D67F8(*(a1 + 104), 1, (a1 + 120), 0, buf);
              v42 = *&buf[8];
              if (*&buf[8])
              {
                __p = 0;
                v65 = 0;
                v43 = *(a1 + 760);
                v68[0] = *(a1 + 752);
                v68[1] = v43;
                if (v43)
                {
                  atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                sub_1002163C0(v42, v68, &__p);
                if (v43)
                {
                  sub_100004A34(v43);
                }

                if (__p)
                {
                  v44 = __src;
                  v45 = v70;
                  while (v44 != v45)
                  {
                    v46 = *v44;
                    v67 = 0;
                    sub_10005C7A4(&v67, (*__p + 8 * v46));
                    if (v67)
                    {
                      sub_1002167DC(a1, 0, v67);
                    }

                    sub_100005978(&v67);
                    ++v44;
                  }
                }

                if (v65)
                {
                  sub_100004A34(v65);
                }
              }

              sub_10001021C(&buf[8]);
            }
          }
        }
      }

      else
      {
        v13 = 0;
        __src = 0;
        v70 = 0;
        v71 = 0;
      }

      v47 = *(*a4 + 24);
      v48 = *(*a4 + 32);
      if (v48)
      {
        atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 752) = v47;
      v49 = *(a1 + 760);
      *(a1 + 760) = v48;
      if (v49)
      {
        sub_100004A34(v49);
        v47 = *(a1 + 752);
      }

      v67 = 0;
      v50 = *(a1 + 104);
      sub_100A40A0C(v47, buf);
      sub_1005D6358(v50);
      sub_10001021C(buf);
      ServiceMap = Registry::getServiceMap(*(a1 + 56));
      v52 = ServiceMap;
      if (v53 < 0)
      {
        v54 = (v53 & 0x7FFFFFFFFFFFFFFFLL);
        v55 = 5381;
        do
        {
          v53 = v55;
          v56 = *v54++;
          v55 = (33 * v55) ^ v56;
        }

        while (v56);
      }

      std::mutex::lock(ServiceMap);
      *buf = v53;
      v57 = sub_100009510(&v52[1].__m_.__sig, buf);
      if (v57)
      {
        v59 = v57[3];
        v58 = v57[4];
        if (v58)
        {
          atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v52);
          atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v58);
          v60 = 0;
LABEL_80:
          (*(*v59 + 16))(v59, **(a1 + 80) + 24, @"ps.device.list", v67, kPhoneServicesWalletDomain, 0, 1, 0);
          if ((v60 & 1) == 0)
          {
            sub_100004A34(v58);
          }

          v61 = *(a1 + 48);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = PersonalityInfo::logPrefix(**(a1 + 80));
            sub_100A4003C(*(a1 + 752), &__p);
            v63 = v66 >= 0 ? &__p : __p;
            *buf = 136315650;
            *&buf[4] = v62;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v75 = 2080;
            v76 = v63;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s%sPS Device List: %s", buf, 0x20u);
            if (v66 < 0)
            {
              operator delete(__p);
            }
          }

          sub_10000A1EC(&v67);
          if (__src)
          {
            v70 = __src;
            operator delete(__src);
          }

LABEL_90:
          sub_10020F318(a1, v13, 0);
          return;
        }
      }

      else
      {
        v59 = 0;
      }

      std::mutex::unlock(v52);
      v58 = 0;
      v60 = 1;
      goto LABEL_80;
    }
  }
}

void sub_100216300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (v21)
  {
    sub_100004A34(v21);
  }

  sub_10001021C((v22 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002163C0(uint64_t a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v3 = *a2;
  if (*a2)
  {
    if (*(v3 + 32) == 1)
    {
      v6 = v3 + 8;
      v4 = *(v3 + 8);
      v5 = *(v6 + 8);
      if (a1)
      {
        if (v5 != v4)
        {
          operator new();
        }
      }
    }
  }
}

void sub_100216710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  sub_10001021C((v26 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  v28 = *(v25 + 8);
  if (v28)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

const void **sub_1002167DC(uint64_t a1, void **cf, const void *a3)
{
  v70 = 0;
  if (cf)
  {
    v70 = cf;
    CFRetain(cf);
  }

  else
  {
    if (*(a1 + 143) < 0)
    {
      sub_100005F2C(&__p, *(a1 + 120), *(a1 + 128));
    }

    else
    {
      __p = *(a1 + 120);
      v69 = *(a1 + 136);
    }

    if (SHIBYTE(v69) < 0)
    {
      sub_100005F2C(&__dst, __p, *(&__p + 1));
    }

    else
    {
      __dst = __p;
      v73 = v69;
    }

    values[0] = 0;
    if (SHIBYTE(v73) < 0)
    {
      sub_100005F2C(buf, __dst, *(&__dst + 1));
    }

    else
    {
      *buf = __dst;
      *&buf[16] = v73;
    }

    v64[0] = 0;
    if (ctu::cf::convert_copy())
    {
      v5 = values[0];
      values[0] = v64[0];
      *&v66 = v5;
      sub_100005978(&v66);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v70 = values[0];
    values[0] = 0;
    sub_100005978(values);
    if (SHIBYTE(v73) < 0)
    {
      operator delete(__dst);
    }

    if (SHIBYTE(v69) < 0)
    {
      operator delete(__p);
    }
  }

  v66 = 0uLL;
  v67 = 0;
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v66 = *buf;
  v67 = *&buf[16];
  v64[0] = 0;
  v64[1] = 0;
  v65 = 0;
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  __dst = *buf;
  v73 = *&buf[16];
  if ((buf[23] & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_10000501C(v64, p_dst);
  if (SHIBYTE(v73) < 0)
  {
    operator delete(__dst);
  }

  v7 = *(a1 + 48);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(**(a1 + 80));
    v9 = v64;
    if (v65 < 0)
    {
      v9 = v64[0];
    }

    v10 = &v66;
    if (v67 < 0)
    {
      v10 = v66;
    }

    *buf = 136315906;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v77 = v9;
    v78 = 2080;
    v79 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sremoving dev:%s from account:%s", buf, 0x2Au);
  }

  v62 = 0;
  theDict = 0;
  sub_1005D67F8(*(a1 + 104), 1, (a1 + 120), 0, &v62);
  if (theDict)
  {
    v11 = CFDictionaryGetValue(theDict, @"assignments");
    if (v11)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v11);
      Count = CFDictionaryGetCount(MutableCopy);
      __dst = 0uLL;
      v73 = 0;
      sub_100222418(&__dst, Count);
      values[0] = 0;
      values[1] = 0;
      v61 = 0;
      sub_10007D780(values, Count);
      CFDictionaryGetKeysAndValues(MutableCopy, __dst, values[0]);
      if (Count)
      {
        v13 = 0;
        v14 = 1;
        while (1)
        {
          v15 = values[0][v13];
          if (v15)
          {
            v16 = CFGetTypeID(values[0][v13]);
            v17 = v16 == CFStringGetTypeID() ? v15 : 0;
          }

          else
          {
            v17 = 0;
          }

          if (CFEqual(a3, v17))
          {
            break;
          }

          v14 = ++v13 < Count;
          if (Count == v13)
          {
            goto LABEL_42;
          }
        }

        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        v59 = *&buf[16];
        *v58 = *buf;
        if (buf[23] < 0)
        {
          v19 = atoi(v58[0]);
          operator delete(v58[0]);
        }

        else
        {
          v19 = atoi(v58);
        }

        CFDictionaryRemoveValue(MutableCopy, *(__dst + 8 * v13));
        *buf = 0;
        *buf = CFDictionaryCreateMutableCopy(0, 0, theDict);
        CFDictionarySetValue(*buf, @"assignments", MutableCopy);
        sub_100810310(a1, 1u, *buf, 1, 0);
        v18 = v19;
        sub_1000296E0(buf);
      }

      else
      {
LABEL_42:
        v14 = 0;
        v18 = 0;
      }

      if (values[0])
      {
        values[1] = values[0];
        operator delete(values[0]);
      }

      if (__dst)
      {
        *(&__dst + 1) = __dst;
        operator delete(__dst);
      }

      sub_1000296E0(&MutableCopy);
      if (v14)
      {
        MutableCopy = 0;
        v57 = 0;
        sub_1005D67F8(*(a1 + 104), 2, (a1 + 120), a3, &MutableCopy);
        if (!v57)
        {
LABEL_104:
          v44 = *(a1 + 48);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = PersonalityInfo::logPrefix(**(a1 + 80));
            v46 = v64;
            if (v65 < 0)
            {
              v46 = v64[0];
            }

            v47 = &v66;
            if (v67 < 0)
            {
              v47 = v66;
            }

            *buf = 136315906;
            *&buf[4] = v45;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2080;
            v77 = v46;
            v78 = 2080;
            v79 = v47;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s%sdev:%s removed from account:%s", buf, 0x2Au);
          }

          sub_10001021C(&v57);
          goto LABEL_111;
        }

        v20 = CFDictionaryGetValue(v57, @"impi");
        v21 = CFDictionaryGetValue(v57, @"impu");
        v55 = 0;
        *buf = CFDictionaryGetValue(v57, @"imsi");
        sub_100060DE8(&v55, buf);
        if (!v21 || !v20 || !sub_10020B3EC(a1))
        {
          goto LABEL_103;
        }

        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        __dst = *buf;
        v73 = *&buf[16];
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        *values = *buf;
        v61 = *&buf[16];
        v22 = v55;
        if (v55)
        {
          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          *v58 = *buf;
          v59 = *&buf[16];
        }

        sub_10021482C(a1);
        if (v22 && SHIBYTE(v59) < 0)
        {
          operator delete(v58[0]);
        }

        if (SHIBYTE(v61) < 0)
        {
          operator delete(values[0]);
        }

        if (SHIBYTE(v73) < 0)
        {
          operator delete(__dst);
        }

        if (sub_10020B7A4(a1))
        {
LABEL_103:
          sub_100005978(&v55);
          goto LABEL_104;
        }

        theArray = 0;
        ServiceMap = Registry::getServiceMap(*(a1 + 56));
        v28 = ServiceMap;
        if (v29 < 0)
        {
          v30 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
          v31 = 5381;
          do
          {
            v29 = v31;
            v32 = *v30++;
            v31 = (33 * v31) ^ v32;
          }

          while (v32);
        }

        std::mutex::lock(ServiceMap);
        *buf = v29;
        v33 = sub_100009510(&v28[1].__m_.__sig, buf);
        if (v33)
        {
          v35 = v33[3];
          v34 = v33[4];
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v28);
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v34);
            v36 = 0;
LABEL_80:
            v37 = kPhoneServicesWalletDomain;
            (*(*v35 + 24))(&__dst, v35, **(a1 + 80) + 24, @"individual.keys", kPhoneServicesWalletDomain, 0, 4);
            sub_10006DD00(&theArray, &__dst);
            sub_10000A1EC(&__dst);
            if ((v36 & 1) == 0)
            {
              sub_100004A34(v34);
            }

            if (theArray && v18 < CFArrayGetCount(theArray))
            {
              values[0] = 0;
              values[1] = 0;
              v61 = 0;
              sub_1009F83B4(values);
              v38 = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, theArray);
              v53 = v38;
              v50 = 0;
              v51 = 0;
              v49 = 0;
              sub_100034C50(&v49, values[0], values[1], values[1] - values[0]);
              v73 = 0;
              __dst = 0uLL;
              sub_100034C50(&__dst, v49, v50, v50 - v49);
              v71 = 0;
              memset(buf, 0, sizeof(buf));
              sub_100034C50(buf, __dst, *(&__dst + 1), *(&__dst + 1) - __dst);
              v74 = 0;
              if (ctu::cf::convert_copy())
              {
                v39 = v71;
                v71 = v74;
                v75 = v39;
                sub_10002D760(&v75);
              }

              if (*buf)
              {
                *&buf[8] = *buf;
                operator delete(*buf);
              }

              value = v71;
              v71 = 0;
              sub_10002D760(&v71);
              if (__dst)
              {
                *(&__dst + 1) = __dst;
                operator delete(__dst);
              }

              CFArraySetValueAtIndex(v38, v18, value);
              sub_10002D760(&value);
              if (v49)
              {
                v50 = v49;
                operator delete(v49);
              }

              sub_10020CBC8(*(a1 + 56), buf);
              (*(**buf + 16))(*buf, **(a1 + 80) + 24, @"individual.keys", v53, v37, 0, 4, 0);
              if (*&buf[8])
              {
                sub_100004A34(*&buf[8]);
              }

              *(a1 + 912) = *(a1 + 904);
              sub_1000279DC(&v53);
              if (values[0])
              {
                values[1] = values[0];
                operator delete(values[0]);
              }
            }

            else
            {
              v40 = *(a1 + 48);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 = PersonalityInfo::logPrefix(**(a1 + 80));
                v42 = v64;
                if (v65 < 0)
                {
                  v42 = v64[0];
                }

                v43 = &v66;
                if (v67 < 0)
                {
                  v43 = v66;
                }

                *buf = 136315906;
                *&buf[4] = v41;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                *&buf[22] = 2080;
                v77 = v42;
                v78 = 2080;
                v79 = v43;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s%sdev:%s removed from account:%s. Individual key not found", buf, 0x2Au);
              }
            }

            sub_100010250(&theArray);
            goto LABEL_103;
          }
        }

        else
        {
          v35 = 0;
        }

        std::mutex::unlock(v28);
        v34 = 0;
        v36 = 1;
        goto LABEL_80;
      }
    }
  }

  v23 = *(a1 + 48);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = PersonalityInfo::logPrefix(**(a1 + 80));
    v25 = v64;
    if (v65 < 0)
    {
      v25 = v64[0];
    }

    v26 = &v66;
    if (v67 < 0)
    {
      v26 = v66;
    }

    *buf = 136315906;
    *&buf[4] = v24;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v77 = v25;
    v78 = 2080;
    v79 = v26;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sdev:%s not found within account:%s", buf, 0x2Au);
  }

LABEL_111:
  sub_10001021C(&theDict);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66);
  }

  return sub_100005978(&v70);
}

void sub_1002172FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, const void *a15, const void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  v42 = *(v40 - 152);
  if (v42)
  {
    sub_100004A34(v42);
  }

  sub_1000279DC(&a14);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  sub_100010250(&a15);
  sub_100005978(&a16);
  sub_10001021C((v39 + 8));
  sub_10001021C(&a27);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  sub_100005978((v40 - 224));
  _Unwind_Resume(a1);
}

void sub_10021760C(uint64_t a1, void *a2)
{
  if (!sub_10112CDBC(a2, (**(a1 + 80) + 24)))
  {
    v3 = *(a1 + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(**(a1 + 80));
      v5 = 136315394;
      v6 = v4;
      v7 = 2080;
      v8 = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sPhone service device list changed on server side - refresh requested", &v5, 0x16u);
    }

    sub_100215448(a1, 1);
  }
}

void sub_1002176F0(uint64_t a1)
{
  if (*(a1 + 774))
  {
    v2 = *(a1 + 48);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%supdatePSDeviceList - call in progress", buf, 0x16u);
    }

    return;
  }

  if (sub_100347EC0(*(a1 + 96) + 360))
  {
    v4 = *(a1 + 48);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Call Get Phone Service Device List ================================", buf, 0x16u);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v7 = ServiceMap;
    if ((v8 & 0x8000000000000000) != 0)
    {
      v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v10 = 5381;
      do
      {
        v8 = v10;
        v11 = *v9++;
        v10 = (33 * v10) ^ v11;
      }

      while (v11);
    }

    std::mutex::lock(ServiceMap);
    v18 = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, &v18);
    if (v12)
    {
      v14 = v12[3];
      v13 = v12[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
LABEL_18:
        (**v14)(buf, v14, **(a1 + 80) + 24);
        (*(**buf + 432))(*buf);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        *(a1 + 774) = 1;
        return;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_18;
  }

  *(a1 + 781) = 1;
  v16 = *(a1 + 48);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v17;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sRequest throttled, scheduling service refresh", buf, 0x16u);
  }

  sub_1003486A4(*(a1 + 96) + 360);
}

void sub_1002179E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100217A24(uint64_t a1, void *a2, _BYTE *a3)
{
  if (sub_10112CDBC(a2, (**(a1 + 80) + 24)))
  {
    return;
  }

  v5 = *(a1 + 48);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 80));
    v17 = 136315394;
    v18 = v6;
    v19 = 2080;
    v20 = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluating Authentication Response ================================", &v17, 0x16u);
  }

  if ((a3[456] & 1) == 0)
  {
    v10 = *(a1 + 48);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v13 = PersonalityInfo::logPrefix(**(a1 + 80));
    v17 = 136315394;
    v18 = v13;
    v19 = 2080;
    v20 = " ";
    v14 = "#I %s%sno real authentication response data provided";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v14, &v17, 0x16u);
    return;
  }

  if ((a3[56] & 1) == 0)
  {
    v10 = *(a1 + 48);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v15 = PersonalityInfo::logPrefix(**(a1 + 80));
    v17 = 136315394;
    v18 = v15;
    v19 = 2080;
    v20 = " ";
    v14 = "#I %s%sno Tokens in authentication response data provided";
    goto LABEL_19;
  }

  if ((a3[88] & 1) == 0)
  {
    v7 = *(a1 + 48);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 80));
      v17 = 136315394;
      v18 = v8;
      v19 = 2080;
      v20 = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sno SubscriberIds in authentication response data provided", &v17, 0x16u);
    }
  }

  v9 = sub_10021363C(a1, a3);
  sub_100220EF0((a1 + 208), a3);
  v10 = *(a1 + 48);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (!v11)
    {
      return;
    }

    v16 = PersonalityInfo::logPrefix(**(a1 + 80));
    v17 = 136315394;
    v18 = v16;
    v19 = 2080;
    v20 = " ";
    v14 = "#I %s%sNo valuable changes in Authentication response detected";
    goto LABEL_19;
  }

  if (v11)
  {
    v12 = PersonalityInfo::logPrefix(**(a1 + 80));
    v17 = 136315394;
    v18 = v12;
    v19 = 2080;
    v20 = " ";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sgetAuthentication response changed and affect Thumper configuration. Re-provisioning requested, if applicable", &v17, 0x16u);
  }

  sub_10020F318(a1, 0, 1);
}

void sub_100217D2C(uint64_t a1, void *a2, int a3, void *a4)
{
  if (!sub_10112CDBC(a2, (**(a1 + 80) + 24)))
  {
    v7 = *(a1 + 96);
    v8 = a4[1];
    v20 = *a4;
    v21 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_10034BFF4(v7, a3, &v20);
    if (v21)
    {
      sub_100004A34(v21);
    }

    if (v9)
    {
      v10 = *(a1 + 48);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(**(a1 + 80));
        v12 = sub_100A38E30(a3);
        *buf = 136315650;
        v23 = v11;
        v24 = 2080;
        v25 = " ";
        v26 = 2080;
        v27 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluating Get Provisiong Data Update ==(cause:%s)==============================", buf, 0x20u);
      }

      *(a1 + 772) = 0;
      if ((v9 & 0x100) == 0)
      {
        goto LABEL_18;
      }

      v13 = *(*a4 + 24);
      v16 = *(v13 + 8);
      v14 = v13 + 8;
      v15 = v16;
      if (v16)
      {
        v17 = v14;
        do
        {
          if (*(v15 + 32) >= 8)
          {
            v17 = v15;
          }

          v15 = *(v15 + 8 * (*(v15 + 32) < 8));
        }

        while (v15);
        if (v17 != v14 && *(v17 + 32) <= 8)
        {
          sub_100348350(*(a1 + 96) + 360);
          if (sub_10021073C(a1) == 1)
          {
            sub_100221B44((a1 + 672), (v17 + 72));
          }

          if (sub_1002106E4(a1) != 1)
          {
            goto LABEL_18;
          }

          if (*(v17 + 64) == 1 && *(v17 + 48) != *(v17 + 40))
          {
            operator new();
          }

          if (sub_10020B7A4(a1))
          {
            operator new();
          }

          v18 = *(a1 + 48);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = PersonalityInfo::logPrefix(**(a1 + 80));
            *buf = 136315394;
            v23 = v19;
            v24 = 2080;
            v25 = " ";
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sNo IMS credentials attached to getProvisioning - incorrect response, temporary failure, need to retry", buf, 0x16u);
          }
        }
      }

      sub_100347EF8(*(a1 + 96) + 360, 0);
      sub_1003486A4(*(a1 + 96) + 360);
LABEL_18:
      sub_10020F318(a1, 0, 0);
    }
  }
}

void sub_10021815C(uint64_t a1, void *a2, int a3, void *a4)
{
  if (!sub_10112CDBC(a2, (**(a1 + 80) + 24)))
  {
    v7 = *(a1 + 96);
    v8 = a4[1];
    v35 = *a4;
    v36 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_10034BFF4(v7, a3, &v35);
    if (v36)
    {
      sub_100004A34(v36);
    }

    if (v9)
    {
      v10 = *(*a4 + 24);
      v13 = *(v10 + 8);
      v11 = v10 + 8;
      v12 = v13;
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = v11;
      do
      {
        if (*(v12 + 32) >= 8)
        {
          v14 = v12;
        }

        v12 = *(v12 + 8 * (*(v12 + 32) < 8));
      }

      while (v12);
      if (v14 == v11 || *(v14 + 32) >= 9)
      {
LABEL_14:
        v15 = *(a1 + 48);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = PersonalityInfo::logPrefix(**(a1 + 80));
          *buf = 136315394;
          *&buf[4] = v16;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sset provisioning do not have iCloudVoWiFi part - keep waiting", buf, 0x16u);
        }

        return;
      }

      v17 = *(a1 + 48);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = PersonalityInfo::logPrefix(**(a1 + 80));
        v19 = sub_100A38E30(a3);
        *buf = 136315650;
        *&buf[4] = v18;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v38 = 2080;
        v39 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluating Set Provisiong Data Update ==(cause:%s)==============================", buf, 0x20u);
      }

      *(a1 + 773) = 0;
      *(a1 + 775) = 0;
      if ((v9 & 0x100) == 0)
      {
LABEL_38:
        sub_10020F318(a1, 0, 0);
        return;
      }

      *(a1 + 778) = 0;
      ServiceMap = Registry::getServiceMap(*(a1 + 56));
      v21 = ServiceMap;
      if (v22 < 0)
      {
        v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
        v24 = 5381;
        do
        {
          v22 = v24;
          v25 = *v23++;
          v24 = (33 * v24) ^ v25;
        }

        while (v25);
      }

      std::mutex::lock(ServiceMap);
      *buf = v22;
      v26 = sub_100009510(&v21[1].__m_.__sig, buf);
      if (v26)
      {
        v28 = v26[3];
        v27 = v26[4];
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v21);
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v27);
          v29 = 0;
LABEL_27:
          v30 = kPhoneServicesWalletDomain;
          (*(*v28 + 32))(v28, **(a1 + 80) + 24, @"NeedAccountInvalidation", kPhoneServicesWalletDomain, 0, 1);
          if ((v29 & 1) == 0)
          {
            sub_100004A34(v27);
          }

          if (*(a1 + 664) == 1)
          {
            v31 = *(a1 + 143);
            if (v31 < 0)
            {
              v31 = *(a1 + 128);
            }

            if (v31)
            {
              v32 = *(a1 + 48);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v33 = PersonalityInfo::logPrefix(**(a1 + 80));
                *buf = 136315394;
                *&buf[4] = v33;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%sput new credentials set in cache", buf, 0x16u);
              }

              v34 = 0;
              sub_100A3DB18(a1 + 208, &v34);
              sub_10020CBC8(*(a1 + 56), buf);
              (*(**buf + 16))(*buf, **(a1 + 80) + 24, @"ps.local.auth", v34, v30, 0, 4, 0);
              if (*&buf[8])
              {
                sub_100004A34(*&buf[8]);
              }

              sub_100005978(&v34);
            }
          }

          goto LABEL_38;
        }
      }

      else
      {
        v28 = 0;
      }

      std::mutex::unlock(v21);
      v27 = 0;
      v29 = 1;
      goto LABEL_27;
    }
  }
}

void sub_100218564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

unint64_t sub_1002185C8(uint64_t a1)
{
  v7 = 0;
  (*(**(a1 + 96) + 472))(&v6);
  sub_10010B240(&v7, &v6);
  sub_10000A1EC(&v6);
  if (v7)
  {
    LODWORD(v6) = 0;
    ctu::cf::assign(&v6, v7, v1);
    if (v6)
    {
      v2 = &_mh_execute_header;
    }

    else
    {
      v2 = 0;
    }

    if (v6)
    {
      v3 = v6;
    }

    else
    {
      v3 = 0;
    }

    if (v6)
    {
      v4 = v6 & 0xFFFFFF00;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  sub_100029A48(&v7);
  return v2 | v4 | v3;
}

void sub_1002186A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

int *sub_1002186C4(uint64_t a1)
{
  if (sub_100210B30(a1))
  {
    return &dword_100000004;
  }

  else
  {
    return 0;
  }
}

const void **sub_1002186F4(uint64_t a1, uint64_t *a2)
{
  sub_10021B98C(a1);
  theDict = 0;
  v4 = kCFAllocatorDefault;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v7 = theDict;
    theDict = Mutable;
    *buf = v7;
    sub_1000296E0(buf);
  }

  v8 = (a1 + 144);
  if (*(a1 + 167) < 0)
  {
    v8 = *v8;
  }

  __dst[0] = 0;
  __p[0] = 0;
  if (ctu::cf::convert_copy(__p, v8, 0x8000100, kCFAllocatorDefault, v6))
  {
    v9 = __dst[0];
    __dst[0] = __p[0];
    *buf = v9;
    sub_100005978(buf);
  }

  value[0] = __dst[0];
  __dst[0] = 0;
  sub_100005978(__dst);
  CFDictionaryAddValue(theDict, @"phoneNumber", value[0]);
  sub_100005978(value);
  v10 = theDict;
  v11 = sub_1008100FC(a1);
  CFDictionaryAddValue(v10, @"primaryDeviceId", v11);
  v12 = theDict;
  v218 = (a1 + 56);
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v14 = ServiceMap;
  if (v15 < 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, __p);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v14);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v22 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v14);
  v20 = 0;
  v22 = 1;
LABEL_15:
  (*(*v21 + 192))(buf, v21, **(a1 + 80) + 24);
  v23 = __src[0];
  v24 = __src[1];
  v254[0] = v263[0];
  *(v254 + 3) = *(v263 + 3);
  v25 = SHIBYTE(v263[0]);
  v263[0] = 0;
  __src[1] = 0;
  __src[0] = 0;
  if ((v25 & 0x80000000) == 0)
  {
    __dst[0] = v23;
    __dst[1] = v24;
    LODWORD(v258) = v254[0];
    *(&v258 + 3) = *(v254 + 3);
    HIBYTE(v258) = v25;
    v230[0] = 0;
LABEL_18:
    *__p = *__dst;
    __p[2] = v258;
    goto LABEL_19;
  }

  sub_100005F2C(__dst, v23, v24);
  v230[0] = 0;
  if ((SHIBYTE(v258) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  sub_100005F2C(__p, __dst[0], __dst[1]);
LABEL_19:
  v238[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v26 = v230[0];
    v230[0] = v238[0];
    value[0] = v26;
    sub_100005978(value);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  theArray[0] = v230[0];
  v230[0] = 0;
  sub_100005978(v230);
  if (SHIBYTE(v258) < 0)
  {
    operator delete(__dst[0]);
  }

  CFDictionaryAddValue(v12, @"labelID", theArray[0]);
  sub_100005978(theArray);
  if (v25 < 0)
  {
    operator delete(v23);
  }

  if (SBYTE7(v268) < 0)
  {
    operator delete(v267[0]);
  }

  if (SHIBYTE(v266) < 0)
  {
    operator delete(*(&v265 + 1));
  }

  if (SBYTE7(v265) < 0)
  {
    operator delete(v264[0]);
  }

  if (SHIBYTE(v263[0]) < 0)
  {
    operator delete(__src[0]);
  }

  if ((buf[47] & 0x80000000) != 0)
  {
    operator delete(*&buf[24]);
  }

  if ((buf[23] & 0x80000000) == 0)
  {
    if (v22)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  operator delete(*buf);
  if ((v22 & 1) == 0)
  {
LABEL_39:
    sub_100004A34(v20);
  }

LABEL_40:
  v27 = *(a1 + 96);
  v28 = *(v27 + 1056);
  v29 = *(v27 + 1064);
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v28 && (v30 = *(v28 + 128) - *(v28 + 120)) != 0)
  {
    value[0] = 0;
    v31 = CFArrayCreateMutable(kCFAllocatorDefault, 0xAAAAAAAAAAAAAAABLL * (v30 >> 3), &kCFTypeArrayCallBacks);
    value[0] = v31;
    v33 = *(v28 + 120);
    if (*(v28 + 128) != v33)
    {
      v34 = 0;
      v35 = 0;
      do
      {
        v36 = (v33 + v34);
        if (*(v33 + v34 + 23) < 0)
        {
          v36 = *v36;
        }

        v37 = value[0];
        __dst[0] = 0;
        __p[0] = 0;
        if (ctu::cf::convert_copy(__p, v36, 0x8000100, kCFAllocatorDefault, v32))
        {
          v38 = __dst[0];
          __dst[0] = __p[0];
          *buf = v38;
          sub_100005978(buf);
        }

        v238[0] = __dst[0];
        __dst[0] = 0;
        sub_100005978(__dst);
        CFArrayAppendValue(v37, v238[0]);
        sub_100005978(v238);
        ++v35;
        v33 = *(v28 + 120);
        v34 += 24;
      }

      while (v35 < 0xAAAAAAAAAAAAAAABLL * ((*(v28 + 128) - v33) >> 3));
      v31 = value[0];
    }

    CFDictionaryAddValue(theDict, @"impu", v31);
    sub_1000279DC(value);
  }

  else
  {
    v39 = *(a1 + 48);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v40;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sIMPU is not available - skipped", buf, 0x16u);
    }
  }

  value[0] = 0;
  value[1] = 0;
  v253 = 0;
  v41 = Registry::getServiceMap(*v218);
  v42 = v41;
  if (v43 < 0)
  {
    v44 = (v43 & 0x7FFFFFFFFFFFFFFFLL);
    v45 = 5381;
    do
    {
      v43 = v45;
      v46 = *v44++;
      v45 = (33 * v45) ^ v46;
    }

    while (v46);
  }

  std::mutex::lock(v41);
  __p[0] = v43;
  v47 = sub_100009510(&v42[1].__m_.__sig, __p);
  if (v47)
  {
    v48 = v47[3];
    v49 = v47[4];
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v42);
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v49);
      v50 = 0;
      goto LABEL_65;
    }
  }

  else
  {
    v48 = 0;
  }

  std::mutex::unlock(v42);
  v49 = 0;
  v50 = 1;
LABEL_65:
  (**v48)(buf, v48, **(a1 + 80) + 24);
  (*(**buf + 456))(value);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if ((v50 & 1) == 0)
  {
    sub_100004A34(v49);
  }

  v51 = theDict;
  if (SHIBYTE(v253) < 0)
  {
    sub_100005F2C(v250, value[0], value[1]);
  }

  else
  {
    *v250 = *value;
    v251 = v253;
  }

  if (SHIBYTE(v251) < 0)
  {
    sub_100005F2C(__p, v250[0], v250[1]);
  }

  else
  {
    *__p = *v250;
    __p[2] = v251;
  }

  v230[0] = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = __p[2];
  }

  v238[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v52 = v230[0];
    v230[0] = v238[0];
    __dst[0] = v52;
    sub_100005978(__dst);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  theArray[0] = v230[0];
  v230[0] = 0;
  sub_100005978(v230);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  CFDictionaryAddValue(v51, @"primarySubscriberId", theArray[0]);
  sub_100005978(theArray);
  if (SHIBYTE(v251) < 0)
  {
    operator delete(v250[0]);
  }

  v53 = theDict;
  sub_100610E6C(a1 + 208, buf);
  CFDictionaryAddValue(v53, @"imsCommonCredentials", *buf);
  sub_10001021C(buf);
  if (sub_10020B7A4(a1))
  {
    v54 = theDict;
    v55 = *(a1 + 240);
    if (*(v55 + 23) < 0)
    {
      sub_100005F2C(v248, *v55, *(v55 + 1));
    }

    else
    {
      v56 = *v55;
      v249 = *(v55 + 2);
      *v248 = v56;
    }

    if (SHIBYTE(v249) < 0)
    {
      sub_100005F2C(__p, v248[0], v248[1]);
    }

    else
    {
      *__p = *v248;
      __p[2] = v249;
    }

    v230[0] = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = __p[2];
    }

    v238[0] = 0;
    if (ctu::cf::convert_copy())
    {
      v68 = v230[0];
      v230[0] = v238[0];
      __dst[0] = v68;
      sub_100005978(__dst);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    theArray[0] = v230[0];
    v230[0] = 0;
    sub_100005978(v230);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionaryAddValue(v54, @"masterToken", theArray[0]);
    sub_100005978(theArray);
    if (SHIBYTE(v249) < 0)
    {
      operator delete(v248[0]);
    }

    v69 = *(a1 + 752);
    if (v69 && *(v69 + 4) == 1)
    {
      v70 = *v69;
    }

    else
    {
      v70 = 0;
    }

    v71 = *(a1 + 48);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v72 = PersonalityInfo::logPrefix(**(a1 + 80));
      v73 = sub_10021CF1C(a1);
      *buf = 136315906;
      *&buf[4] = v72;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 1024;
      *&buf[24] = v70;
      *&buf[28] = 2048;
      *&buf[30] = v73;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#I %s%sAcoount has %u device slots (%zu are vacant)", buf, 0x26u);
    }

    __dst[0] = 0;
    __p[0] = 0;
    *buf = v70;
    v74 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, buf);
    if (v74)
    {
      v75 = __p[0];
      __p[0] = v74;
      *buf = v75;
      sub_100029A48(buf);
    }

    __dst[0] = __p[0];
    __p[0] = 0;
    sub_100029A48(__p);
    CFDictionaryAddValue(theDict, @"maxDeviceNumber", __dst[0]);
    sub_100029A48(__dst);
    goto LABEL_198;
  }

  theArray[0] = 0;
  v216 = v29;
  v57 = Registry::getServiceMap(*v218);
  v58 = v57;
  v60 = v59;
  if (v59 < 0)
  {
    v61 = (v59 & 0x7FFFFFFFFFFFFFFFLL);
    v62 = 5381;
    do
    {
      v60 = v62;
      v63 = *v61++;
      v62 = (33 * v62) ^ v63;
    }

    while (v63);
  }

  std::mutex::lock(v57);
  *buf = v60;
  v64 = sub_100009510(&v58[1].__m_.__sig, buf);
  if (v64)
  {
    v65 = v64[3];
    v66 = v64[4];
    if (v66)
    {
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v58);
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v66);
      v67 = 0;
      goto LABEL_121;
    }
  }

  else
  {
    v65 = 0;
  }

  std::mutex::unlock(v58);
  v66 = 0;
  v67 = 1;
LABEL_121:
  v76 = kPhoneServicesWalletDomain;
  (*(*v65 + 24))(__p, v65, **(a1 + 80) + 24, @"individual.keys", kPhoneServicesWalletDomain, 0, 4);
  sub_10006DD00(theArray, __p);
  sub_10000A1EC(__p);
  if ((v67 & 1) == 0)
  {
    sub_100004A34(v66);
  }

  if (*(a1 + 264) != 1 || theArray[0] && CFArrayGetCount(theArray[0]) >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 248) - *(a1 + 240)) >> 3))
  {
    goto LABEL_154;
  }

  v259 = 0;
  v77 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (v77)
  {
    v78 = v259;
    v259 = v77;
    *buf = v78;
    sub_1000279DC(buf);
  }

  if (*(a1 + 248) != *(a1 + 240))
  {
    v79 = 0;
    do
    {
      if (theArray[0] && v79 < CFArrayGetCount(theArray[0]))
      {
        v80 = v259;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], v79);
        CFArrayAppendValue(v80, ValueAtIndex);
      }

      else
      {
        v82 = v259;
        sub_1009F83B4(&v246);
        memset(__p, 0, 24);
        sub_100034C50(__p, v246, v247, v247 - v246);
        v230[0] = 0;
        memset(buf, 0, 24);
        sub_100034C50(buf, __p[0], __p[1], __p[1] - __p[0]);
        v238[0] = 0;
        if (ctu::cf::convert_copy())
        {
          v83 = v230[0];
          v230[0] = v238[0];
          __dst[0] = v83;
          sub_10002D760(__dst);
        }

        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        v256 = v230[0];
        v230[0] = 0;
        sub_10002D760(v230);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        CFArrayAppendValue(v82, v256);
        sub_10002D760(&v256);
        if (v246)
        {
          v247 = v246;
          operator delete(v246);
        }
      }

      ++v79;
    }

    while (v79 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 248) - *(a1 + 240)) >> 3));
  }

  v84 = Registry::getServiceMap(*v218);
  v85 = v84;
  if (v59 < 0)
  {
    v86 = (v59 & 0x7FFFFFFFFFFFFFFFLL);
    v87 = 5381;
    do
    {
      v59 = v87;
      v88 = *v86++;
      v87 = (33 * v87) ^ v88;
    }

    while (v88);
  }

  std::mutex::lock(v84);
  *buf = v59;
  v89 = sub_100009510(&v85[1].__m_.__sig, buf);
  if (!v89)
  {
    v90 = 0;
    goto LABEL_150;
  }

  v90 = v89[3];
  v91 = v89[4];
  if (!v91)
  {
LABEL_150:
    std::mutex::unlock(v85);
    v91 = 0;
    v92 = 1;
    goto LABEL_151;
  }

  atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v85);
  atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v91);
  v92 = 0;
LABEL_151:
  (*(*v90 + 16))(v90, **(a1 + 80) + 24, @"individual.keys", v259, v76, 0, 4, 0);
  if ((v92 & 1) == 0)
  {
    sub_100004A34(v91);
  }

  sub_10002A7D8(__p, &v259);
  *buf = theArray[0];
  theArray[0] = __p[0];
  __p[0] = 0;
  sub_100010250(buf);
  sub_100010250(__p);
  sub_1000279DC(&v259);
LABEL_154:
  *(a1 + 912) = *(a1 + 904);
  __dst[0] = 0;
  v93 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (v93)
  {
    v94 = __dst[0];
    __dst[0] = v93;
    *buf = v94;
    sub_1000279DC(buf);
  }

  v95 = *a2;
  v217 = a2[1];
  if (*a2 != v217)
  {
    v96 = 0;
    v97 = 0;
    v98 = 0;
    while (1)
    {
      v99 = *(a1 + 48);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        v100 = PersonalityInfo::logPrefix(**(a1 + 80));
        sub_100A3C768(__p);
        v101 = __p;
        if (SHIBYTE(__p[2]) < 0)
        {
          v101 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = v100;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2048;
        *&buf[24] = v98;
        *&buf[32] = 2080;
        *&buf[34] = v101;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#I %s%s%zu. %s", buf, 0x2Au);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (*(a1 + 264) != 1 || v98 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 248) - *(a1 + 240)) >> 3))
      {
        break;
      }

      v283 = 0;
      *v281 = 0u;
      v282 = 0u;
      *v279 = 0u;
      v280 = 0u;
      *v277 = 0u;
      v278 = 0u;
      *v275 = 0u;
      v276 = 0u;
      v273 = 0u;
      v274 = 0u;
      v271 = 0u;
      v272 = 0u;
      v269 = 0u;
      v270 = 0u;
      *v267 = 0u;
      v268 = 0u;
      v265 = 0u;
      v266 = 0u;
      *v263 = 0u;
      *v264 = 0u;
      *__src = 0u;
      memset(buf, 0, sizeof(buf));
      sub_10021D170(buf, v95);
      sub_1001696A4(&v275[1], (*(a1 + 240) + v97));
      if (*(a1 + 296) == 1)
      {
        v102 = *(a1 + 272);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 280) - v102) >> 3) > v98)
        {
          sub_1001696A4(&v277[1], (v102 + v97));
        }
      }

      if (*(a1 + 360) == 1)
      {
        v103 = *(a1 + 336);
        if (v98 < (*(a1 + 344) - v103) >> 6)
        {
          sub_10012BF3C(&v279[1], (v103 + v96));
          sub_10012BF3C(&v281[1], (*(a1 + 336) + v96 + 32));
          if ((v279[0] & 1) == 0)
          {
            sub_10012BF3C(&v277[1], &v279[1]);
          }
        }
      }

      v238[0] = 0;
      sub_100612A44(buf, v238);
      v230[0] = 0;
      v230[0] = CFStringCreateWithFormat(0, 0, @"%zu", v98);
      CFDictionaryAddValue(v238[0], @"slotId", v230[0]);
      v104 = __dst[0];
      v105 = v238[0];
      v106 = CFArrayGetValueAtIndex(theArray[0], v98);
      memset(__p, 0, 24);
      if (v106)
      {
        v107 = CFGetTypeID(v106);
        if (v107 == CFDataGetTypeID())
        {
          ctu::cf::assign();
        }
      }

      *v244 = *__p;
      v245 = __p[2];
      sub_1009F8058(v105, v244, &v259);
      CFArrayAppendValue(v104, v259);
      sub_10002D760(&v259);
      if (v244[0])
      {
        v244[1] = v244[0];
        operator delete(v244[0]);
      }

      sub_100005978(v230);
      sub_1000296E0(v238);
      if (v283 == 1 && SHIBYTE(v282) < 0)
      {
        operator delete(v281[1]);
      }

      if (LOBYTE(v281[0]) == 1 && SHIBYTE(v280) < 0)
      {
        operator delete(v279[1]);
      }

      if (LOBYTE(v279[0]) == 1 && SHIBYTE(v278) < 0)
      {
        operator delete(v277[1]);
      }

      if (LOBYTE(v277[0]) == 1 && SHIBYTE(v276) < 0)
      {
        operator delete(v275[1]);
      }

      if (LOBYTE(v275[0]) == 1)
      {
        sub_100221F4C(buf);
      }

      v95 += 256;
      v97 += 24;
      v96 += 64;
      ++v98;
      if (v95 == v217)
      {
        goto LABEL_195;
      }
    }

    v108 = *(a1 + 48);
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      v109 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315650;
      *&buf[4] = v109;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      *&buf[24] = v98;
      _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "#I %s%sNot enough tokens - used %zu and skipped rest of the IMS credentials", buf, 0x20u);
    }
  }

LABEL_195:
  CFDictionaryAddValue(theDict, @"cfgSlots", __dst[0]);
  __p[0] = 0;
  v4 = kCFAllocatorDefault;
  v29 = v216;
  v110 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (v110)
  {
    v111 = __p[0];
    __p[0] = v110;
    *buf = v111;
    sub_1000279DC(buf);
  }

  CFDictionaryAddValue(theDict, @"cfgs", __p[0]);
  sub_1000279DC(__p);
  sub_1000279DC(__dst);
  sub_100010250(theArray);
LABEL_198:
  v243 = 0;
  sub_10035015C(*(a1 + 96), &v243);
  if (v243)
  {
    CFDictionaryAddValue(theDict, @"ePdgCACert", v243);
  }

  __dst[0] = 0;
  v112 = CFDictionaryCreateMutable(v4, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v112)
  {
    v113 = __dst[0];
    __dst[0] = v112;
    *buf = v113;
    sub_1000296E0(buf);
  }

  v238[0] = 0;
  sub_10021D214(a1, v238);
  if (v238[0])
  {
    CFDictionaryAddValue(__dst[0], kIWLANSettingsKey, v238[0]);
  }

  else
  {
    v114 = *(a1 + 48);
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      v115 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v115;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "#I %s%stech configuration is not found", buf, 0x16u);
    }
  }

  v230[0] = 0;
  sub_10021D56C(a1, v230);
  if (v230[0])
  {
    theArray[0] = 0;
    theArray[0] = CFDictionaryCreateMutableCopy(v4, 0, v230[0]);
    *&buf[8] = 0;
    *buf = 0;
    v116 = Registry::getServiceMap(*(a1 + 56));
    v117 = v116;
    if (v118 < 0)
    {
      v119 = (v118 & 0x7FFFFFFFFFFFFFFFLL);
      v120 = 5381;
      do
      {
        v118 = v120;
        v121 = *v119++;
        v120 = (33 * v120) ^ v121;
      }

      while (v121);
    }

    std::mutex::lock(v116);
    __p[0] = v118;
    v122 = sub_100009510(&v117[1].__m_.__sig, __p);
    if (v122)
    {
      v124 = v122[3];
      v123 = v122[4];
      if (v123)
      {
        atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v117);
        atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v123);
        v125 = 0;
        goto LABEL_217;
      }
    }

    else
    {
      v124 = 0;
    }

    std::mutex::unlock(v117);
    v123 = 0;
    v125 = 1;
LABEL_217:
    sub_1004196C0(v124, buf);
    if ((v125 & 1) == 0)
    {
      sub_100004A34(v123);
    }

    if (*buf)
    {
      (*(**buf + 72))(__p);
      v128 = __p[0];
      v129 = __p[1];
    }

    else
    {
      v128 = 0;
      v129 = 0;
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v128)
    {
      v130 = CFDictionaryGetValue(v230[0], @"Signaling");
      v131 = v130;
      if (v130)
      {
        v132 = CFGetTypeID(v130);
        if (v132 == CFDictionaryGetTypeID())
        {
          v133 = CFDictionaryGetValue(v131, @"AllowedPdpTypeMask");
          v134 = v133;
          if (!v133 || (v135 = CFGetTypeID(v133), v135 != CFNumberGetTypeID()))
          {
            v259 = 0;
            MutableCopy = CFDictionaryCreateMutableCopy(v4, 0, v131);
            v259 = MutableCopy;
            v145 = *(a1 + 48);
            if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
            {
              v146 = PersonalityInfo::logPrefix(**(a1 + 80));
              v147 = v128[44];
              *buf = 136315650;
              *&buf[4] = v146;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              *&buf[22] = 1024;
              *&buf[24] = v147;
              _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "#I %s%sSet AllowedPdpTypeMask: %d", buf, 0x1Cu);
              MutableCopy = v259;
            }

            v148 = v128[44];
            __p[0] = 0;
            *buf = v148;
            v149 = CFNumberCreate(v4, kCFNumberIntType, buf);
            if (v149)
            {
              v150 = __p[0];
              __p[0] = v149;
              *buf = v150;
              sub_100029A48(buf);
            }

            v256 = __p[0];
            __p[0] = 0;
            sub_100029A48(__p);
            CFDictionarySetValue(MutableCopy, @"AllowedPdpTypeMask", v256);
            sub_100029A48(&v256);
            CFDictionarySetValue(theArray[0], @"Signaling", v259);
            sub_1000296E0(&v259);
            goto LABEL_239;
          }

          v136 = *(a1 + 48);
          if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
          {
            v137 = PersonalityInfo::logPrefix(**(a1 + 80));
            LODWORD(__p[0]) = 0;
            ctu::cf::assign(__p, v134, v138);
            *buf = 136315650;
            *&buf[4] = v137;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 1024;
            *&buf[24] = __p[0];
            v139 = "#I %s%sPreserve AllowedPdpTypeMask: %d";
            v140 = v136;
            v141 = 28;
LABEL_233:
            _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, v139, buf, v141);
          }
        }
      }
    }

    else
    {
      v142 = *(a1 + 48);
      if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
      {
        v143 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315394;
        *&buf[4] = v143;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v139 = "#W %s%sAPN config is not found";
        v140 = v142;
        v141 = 22;
        goto LABEL_233;
      }
    }

LABEL_239:
    CFDictionaryAddValue(__dst[0], @"IMSConfig", theArray[0]);
    if (v129)
    {
      sub_100004A34(v129);
    }

    sub_1000296E0(theArray);
    goto LABEL_242;
  }

  v126 = *(a1 + 48);
  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
  {
    v127 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v127;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "#I %s%sip telephony configuration is not found", buf, 0x16u);
  }

LABEL_242:
  *buf = 0;
  sub_10021D8C4(a1, buf);
  if (*buf)
  {
    CFDictionaryAddValue(__dst[0], @"CarrierEntitlements", *buf);
  }

  __p[0] = 0;
  sub_10021DC1C(a1, __p);
  if (__p[0])
  {
    CFDictionaryAddValue(__dst[0], @"PushSettings", __p[0]);
  }

  theArray[0] = 0;
  sub_10021DF74(a1, theArray);
  if (theArray[0])
  {
    CFDictionaryAddValue(__dst[0], @"Location", theArray[0]);
  }

  CFDictionaryAddValue(theDict, @"CBRoot", __dst[0]);
  sub_10001021C(theArray);
  sub_10001021C(__p);
  sub_10001021C(buf);
  sub_10001021C(v230);
  sub_10001021C(v238);
  sub_1000296E0(__dst);
  v151 = theDict;
  CTGetRootVersionString();
  if (SHIBYTE(v242) < 0)
  {
    sub_100005F2C(__p, v241[0], v241[1]);
  }

  else
  {
    *__p = *v241;
    __p[2] = v242;
  }

  v230[0] = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = __p[2];
  }

  v238[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v152 = v230[0];
    v230[0] = v238[0];
    __dst[0] = v152;
    sub_100005978(__dst);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  theArray[0] = v230[0];
  v230[0] = 0;
  sub_100005978(v230);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  CFDictionaryAddValue(v151, @"CoreTelephonyVersion", theArray[0]);
  sub_100005978(theArray);
  if (SHIBYTE(v242) < 0)
  {
    operator delete(v241[0]);
  }

  v240 = 0;
  sub_10021E2C8(a1, &v240);
  v153 = v240;
  if (v240)
  {
    v154 = *(a1 + 48);
    if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
    {
      v155 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315650;
      *&buf[4] = v155;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2112;
      *&buf[24] = v240;
      _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I %s%sEmergencyNumbers: %@", buf, 0x20u);
      v153 = v240;
    }

    CFDictionaryAddValue(theDict, @"emergencyNumbers", v153);
  }

  v156 = Registry::getServiceMap(*v218);
  v157 = v156;
  if (v158 < 0)
  {
    v159 = (v158 & 0x7FFFFFFFFFFFFFFFLL);
    v160 = 5381;
    do
    {
      v158 = v160;
      v161 = *v159++;
      v160 = (33 * v160) ^ v161;
    }

    while (v161);
  }

  std::mutex::lock(v156);
  *buf = v158;
  v162 = sub_100009510(&v157[1].__m_.__sig, buf);
  if (!v162)
  {
    v164 = 0;
LABEL_274:
    std::mutex::unlock(v157);
    v163 = 0;
    v165 = 1;
    if (!v164)
    {
      goto LABEL_307;
    }

    goto LABEL_275;
  }

  v164 = v162[3];
  v163 = v162[4];
  if (!v163)
  {
    goto LABEL_274;
  }

  atomic_fetch_add_explicit(&v163->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v157);
  atomic_fetch_add_explicit(&v163->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v163);
  v165 = 0;
  if (!v164)
  {
    goto LABEL_307;
  }

LABEL_275:
  *v267 = 0u;
  v268 = 0u;
  v265 = 0u;
  v266 = 0u;
  *v263 = 0u;
  *v264 = 0u;
  *__src = 0u;
  memset(buf, 0, sizeof(buf));
  (*(*v164 + 88))(buf, v164, 0);
  v238[0] = 0;
  v238[1] = 0;
  v239 = 0;
  CSIPhoneNumber::getFullOriginalNumber(v238, buf);
  v166 = *(a1 + 48);
  if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
  {
    v167 = PersonalityInfo::logPrefix(**(a1 + 80));
    v168 = v238;
    if (SHIBYTE(v239) < 0)
    {
      v168 = v238[0];
    }

    LODWORD(__p[0]) = 136315650;
    *(__p + 4) = v167;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = " ";
    HIWORD(__p[2]) = 2080;
    __p[3] = v168;
    _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "#I %s%sPreferred emergency number: %s", __p, 0x20u);
  }

  v169 = theDict;
  if (SHIBYTE(v239) < 0)
  {
    sub_100005F2C(v236, v238[0], v238[1]);
  }

  else
  {
    *v236 = *v238;
    v237 = v239;
  }

  if (SHIBYTE(v237) < 0)
  {
    sub_100005F2C(__dst, v236[0], v236[1]);
  }

  else
  {
    *__dst = *v236;
    v258 = v237;
  }

  v259 = 0;
  if (SHIBYTE(v258) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    __p[2] = v258;
  }

  theArray[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v170 = v259;
    v259 = theArray[0];
    v230[0] = v170;
    sub_100005978(v230);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v256 = v259;
  v259 = 0;
  sub_100005978(&v259);
  if (SHIBYTE(v258) < 0)
  {
    operator delete(__dst[0]);
  }

  CFDictionaryAddValue(v169, @"preferredEmergencyNumber", v256);
  sub_100005978(&v256);
  if (SHIBYTE(v237) < 0)
  {
    operator delete(v236[0]);
  }

  if (SHIBYTE(v239) < 0)
  {
    operator delete(v238[0]);
  }

  if (SBYTE7(v268) < 0)
  {
    operator delete(v267[0]);
  }

  if (SHIBYTE(v266) < 0)
  {
    operator delete(*(&v265 + 1));
  }

  if (SHIBYTE(v264[0]) < 0)
  {
    operator delete(v263[0]);
  }

  if (SHIBYTE(__src[0]) < 0)
  {
    operator delete(*&buf[32]);
  }

  if ((buf[31] & 0x80000000) == 0)
  {
LABEL_307:
    if (v165)
    {
      goto LABEL_309;
    }

    goto LABEL_308;
  }

  operator delete(*&buf[8]);
  if ((v165 & 1) == 0)
  {
LABEL_308:
    sub_100004A34(v163);
  }

LABEL_309:
  __dst[1] = 0;
  __dst[0] = 0;
  v258 = 0;
  v171 = Registry::getServiceMap(*v218);
  v172 = v171;
  v174 = v173;
  if (v173 < 0)
  {
    v175 = (v173 & 0x7FFFFFFFFFFFFFFFLL);
    v176 = 5381;
    do
    {
      v174 = v176;
      v177 = *v175++;
      v176 = (33 * v176) ^ v177;
    }

    while (v177);
  }

  std::mutex::lock(v171);
  *buf = v174;
  v178 = sub_100009510(&v172[1].__m_.__sig, buf);
  if (v178)
  {
    v180 = v178[3];
    v179 = v178[4];
    if (v179)
    {
      atomic_fetch_add_explicit(&v179->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v172);
      atomic_fetch_add_explicit(&v179->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v179);
      v181 = 0;
      goto LABEL_317;
    }
  }

  else
  {
    v180 = 0;
  }

  std::mutex::unlock(v172);
  v179 = 0;
  v181 = 1;
LABEL_317:
  (*(*v180 + 48))(__dst, v180, 1, *(**(a1 + 80) + 52));
  if ((v181 & 1) == 0)
  {
    sub_100004A34(v179);
  }

  if (SHIBYTE(v258) < 0)
  {
    if (!__dst[1])
    {
      goto LABEL_340;
    }

    v182 = theDict;
    sub_100005F2C(v234, __dst[0], __dst[1]);
  }

  else
  {
    if (!HIBYTE(v258))
    {
      goto LABEL_340;
    }

    v182 = theDict;
    *v234 = *__dst;
    v235 = v258;
  }

  if (SHIBYTE(v235) < 0)
  {
    sub_100005F2C(__p, v234[0], v234[1]);
  }

  else
  {
    *__p = *v234;
    __p[2] = v235;
  }

  theArray[0] = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = __p[2];
  }

  v230[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v183 = theArray[0];
    theArray[0] = v230[0];
    v238[0] = v183;
    sub_100005978(v238);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v259 = theArray[0];
  theArray[0] = 0;
  sub_100005978(theArray);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  CFDictionaryAddValue(v182, @"carrierBundleName", v259);
  sub_100005978(&v259);
  if (SHIBYTE(v235) < 0)
  {
    operator delete(v234[0]);
  }

LABEL_340:
  v238[0] = 0;
  v238[1] = 0;
  v239 = 0;
  v184 = Registry::getServiceMap(*v218);
  v185 = v184;
  if (v173 < 0)
  {
    v186 = (v173 & 0x7FFFFFFFFFFFFFFFLL);
    v187 = 5381;
    do
    {
      v173 = v187;
      v188 = *v186++;
      v187 = (33 * v187) ^ v188;
    }

    while (v188);
  }

  std::mutex::lock(v184);
  *buf = v173;
  v189 = sub_100009510(&v185[1].__m_.__sig, buf);
  if (v189)
  {
    v191 = v189[3];
    v190 = v189[4];
    if (v190)
    {
      atomic_fetch_add_explicit(&v190->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v185);
      atomic_fetch_add_explicit(&v190->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v190);
      v192 = 0;
      goto LABEL_348;
    }
  }

  else
  {
    v191 = 0;
  }

  std::mutex::unlock(v185);
  v190 = 0;
  v192 = 1;
LABEL_348:
  (*(*v191 + 48))(v238, v191, 4, *(**(a1 + 80) + 52));
  if ((v192 & 1) == 0)
  {
    sub_100004A34(v190);
  }

  if (SHIBYTE(v239) < 0)
  {
    if (!v238[1])
    {
      goto LABEL_369;
    }

    v193 = theDict;
    sub_100005F2C(v232, v238[0], v238[1]);
  }

  else
  {
    if (!HIBYTE(v239))
    {
      goto LABEL_369;
    }

    v193 = theDict;
    *v232 = *v238;
    v233 = v239;
  }

  if (SHIBYTE(v233) < 0)
  {
    sub_100005F2C(__p, v232[0], v232[1]);
  }

  else
  {
    *__p = *v232;
    __p[2] = v233;
  }

  v259 = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = __p[2];
  }

  theArray[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v194 = v259;
    v259 = theArray[0];
    v230[0] = v194;
    sub_100005978(v230);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v256 = v259;
  v259 = 0;
  sub_100005978(&v259);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  CFDictionaryAddValue(v193, @"defaultBundleName", v256);
  sub_100005978(&v256);
  if (SHIBYTE(v233) < 0)
  {
    operator delete(v232[0]);
  }

LABEL_369:
  v230[0] = 0;
  v230[1] = 0;
  v231 = 0;
  *&buf[8] = 0;
  *buf = 0;
  sGetSubscriberSimInterface();
  if (*buf)
  {
    (*(**buf + 200))(*buf, *(**(a1 + 80) + 52), 3, v230);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v229 = 0;
  if (SHIBYTE(v231) < 0)
  {
    sub_100005F2C(v227, v230[0], v230[1]);
  }

  else
  {
    *v227 = *v230;
    v228 = v231;
  }

  if (SHIBYTE(v228) < 0)
  {
    sub_100005F2C(__p, v227[0], v227[1]);
  }

  else
  {
    *__p = *v227;
    __p[2] = v228;
  }

  v256 = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = __p[2];
  }

  v259 = 0;
  if (ctu::cf::convert_copy())
  {
    v195 = v256;
    v256 = v259;
    theArray[0] = v195;
    sub_100005978(theArray);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v229 = v256;
  v256 = 0;
  sub_100005978(&v256);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v228) < 0)
  {
    operator delete(v227[0]);
  }

  v225 = 0;
  v226 = 0;
  if (!sub_100A349AC(v229, &v226, &v225))
  {
    v208 = *(a1 + 48);
    if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
    {
      v209 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v209;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, "#I %s%sfailed to copyMCCMNCFromIMSI", buf, 0x16u);
    }

    goto LABEL_421;
  }

  CFDictionaryAddValue(theDict, @"carrierMCC", v226);
  CFDictionaryAddValue(theDict, @"carrierMNC", v225);
  memset(v224, 0, 7);
  v196 = Registry::getServiceMap(*v218);
  v197 = v196;
  if (v198 < 0)
  {
    v199 = (v198 & 0x7FFFFFFFFFFFFFFFLL);
    v200 = 5381;
    do
    {
      v198 = v200;
      v201 = *v199++;
      v200 = (33 * v200) ^ v201;
    }

    while (v201);
  }

  std::mutex::lock(v196);
  *buf = v198;
  v202 = sub_100009510(&v197[1].__m_.__sig, buf);
  if (!v202)
  {
    v203 = 0;
LABEL_401:
    std::mutex::unlock(v197);
    v204 = 0;
    v205 = 1;
    if (!v203)
    {
      goto LABEL_397;
    }

    goto LABEL_402;
  }

  v203 = v202[3];
  v204 = v202[4];
  if (!v204)
  {
    goto LABEL_401;
  }

  atomic_fetch_add_explicit(&v204->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v197);
  atomic_fetch_add_explicit(&v204->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v204);
  v205 = 0;
  if (!v203)
  {
LABEL_397:
    v206 = 0;
    v207 = 0;
    goto LABEL_404;
  }

LABEL_402:
  memset(buf, 0, 24);
  ctu::cf::assign();
  *theArray = *buf;
  v223 = *&buf[16];
  (*(*v203 + 24))(__p, v203, theArray);
  v203 = __p[0];
  v206 = __p[1];
  v224[0] = __p[2];
  *(v224 + 3) = *(&__p[2] + 3);
  v207 = HIBYTE(__p[2]);
  HIBYTE(__p[2]) = 0;
  LOBYTE(__p[0]) = 0;
  if (SHIBYTE(v223) < 0)
  {
    operator delete(theArray[0]);
  }

LABEL_404:
  if ((v205 & 1) == 0)
  {
    sub_100004A34(v204);
  }

  v210 = theDict;
  if (v207 < 0)
  {
    sub_100005F2C(v219, v203, v206);
    if (SHIBYTE(v220) < 0)
    {
      sub_100005F2C(__p, v219[0], v219[1]);
      goto LABEL_410;
    }
  }

  else
  {
    v219[0] = v203;
    v219[1] = v206;
    LODWORD(v220) = v224[0];
    *(&v220 + 3) = *(v224 + 3);
    HIBYTE(v220) = v207;
  }

  *__p = *v219;
  __p[2] = v220;
LABEL_410:
  v256 = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = __p[2];
  }

  v259 = 0;
  if (ctu::cf::convert_copy())
  {
    v211 = v256;
    v256 = v259;
    theArray[0] = v211;
    sub_100005978(theArray);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v221 = v256;
  v256 = 0;
  sub_100005978(&v256);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  CFDictionaryAddValue(v210, @"carrierIsoMCC", v221);
  sub_100005978(&v221);
  if (SHIBYTE(v220) < 0)
  {
    operator delete(v219[0]);
    if ((v207 & 0x80) == 0)
    {
      goto LABEL_421;
    }
  }

  else if ((v207 & 0x80) == 0)
  {
    goto LABEL_421;
  }

  operator delete(v203);
LABEL_421:
  sub_100810310(a1, 0, theDict, 1, 1);
  v212 = (a1 + 120);
  sub_1005D1E04(*(a1 + 104));
  *(a1 + 776) = 0;
  v213 = *(a1 + 48);
  if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
  {
    v214 = PersonalityInfo::logPrefix(**(a1 + 80));
    if (*(a1 + 143) < 0)
    {
      v212 = *v212;
    }

    *buf = 136315650;
    *&buf[4] = v214;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v212;
    _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper account %s created and pushed into cloud", buf, 0x20u);
  }

  sub_100005978(&v225);
  sub_100005978(&v226);
  sub_100005978(&v229);
  if (SHIBYTE(v231) < 0)
  {
    operator delete(v230[0]);
  }

  if (SHIBYTE(v239) < 0)
  {
    operator delete(v238[0]);
  }

  if (SHIBYTE(v258) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_10001021C(&v240);
  sub_10002D760(&v243);
  if (SHIBYTE(v253) < 0)
  {
    operator delete(value[0]);
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  return sub_1000296E0(&theDict);
}

void sub_10021AF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, const void *a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (v71)
  {
    sub_100004A34(v71);
  }

  sub_1000296E0(&a23);
  sub_10001021C(&a34);
  sub_10001021C(&a49);
  sub_1000296E0(&STACK[0x220]);
  sub_10002D760(&a56);
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  if (v72)
  {
    sub_100004A34(v72);
  }

  sub_1000296E0(&STACK[0x210]);
  _Unwind_Resume(a1);
}

uint64_t sub_10021B890(void *a1, const void **a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_1000CE3D4();
    }

    v9 = v5 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12[4] = a1;
    if (v11)
    {
      sub_10005B2E0(a1, v11);
    }

    v12[0] = 0;
    v12[1] = 8 * v8;
    v12[3] = 0;
    sub_10005C7A4((8 * v8), a2);
    v12[2] = 8 * v8 + 8;
    sub_1002220D4(a1, v12);
    v7 = a1[1];
    result = sub_100222180(v12);
  }

  else
  {
    result = sub_10005C7A4(v4, a2);
    v7 = result + 8;
  }

  a1[1] = v7;
  return result;
}

void sub_10021B978(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100222180(va);
  _Unwind_Resume(a1);
}

const void **sub_10021B98C(uint64_t a1)
{
  v41 = 0;
  theDict = 0;
  sub_1005D67F8(*(a1 + 104), 1, (a1 + 120), 0, &v41);
  v40 = 0;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v40 = MutableCopy;
  v3 = CFDictionaryGetValue(MutableCopy, @"whiteList");
  if (v3)
  {
    v4 = CFGetTypeID(v3);
    v5 = v4 != CFArrayGetTypeID();
  }

  else
  {
    v5 = 1;
  }

  if (sub_100210B30(a1))
  {
    if (v5)
    {
      value[0] = 0;
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (Mutable)
      {
        v7 = value[0];
        value[0] = Mutable;
        *&valuePtr = v7;
        sub_1000279DC(&valuePtr);
      }

      CFDictionarySetValue(v40, @"whiteList", value[0]);
      sub_1000279DC(value);
    }
  }

  else if (!v5)
  {
    CFDictionaryRemoveValue(v40, @"whiteList");
  }

  v8 = sub_10021C024(a1, theDict);
  v9 = v40;
  if (v8)
  {
    value[0] = 0;
    *&valuePtr = v8;
    v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
    if (v10)
    {
      v11 = value[0];
      value[0] = v10;
      *&valuePtr = v11;
      sub_100029A48(&valuePtr);
    }

    *&v46 = value[0];
    value[0] = 0;
    sub_100029A48(value);
    CFDictionarySetValue(v9, @"foreignDevicesCount", v46);
    sub_100029A48(&v46);
  }

  else
  {
    CFDictionaryRemoveValue(v40, @"foreignDevicesCount");
  }

  if (!theDict || !CFEqual(theDict, v40))
  {
    sub_100810310(a1, 1u, v40, 1, 0);
  }

  if (sub_100210B30(a1))
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    valuePtr = 0u;
    v36 = 0u;
    sub_1002124D4(a1, &valuePtr);
    memset(value, 0, sizeof(value));
    sub_100212B48(a1, value);
    v13 = *(&valuePtr + 1);
    v12 = valuePtr;
    if (valuePtr != *(&valuePtr + 1))
    {
      v14 = 0;
      while (1)
      {
        v46 = 0uLL;
        v47 = 0;
        ctu::cf::assign();
        v45 = v47;
        __dst = v46;
        if (SHIBYTE(value[3]) >= 0)
        {
          v15 = HIBYTE(value[3]);
        }

        else
        {
          v15 = value[2];
        }

        v16 = HIBYTE(v45);
        v17 = SHIBYTE(v45);
        if (SHIBYTE(v45) < 0)
        {
          v16 = *(&__dst + 1);
        }

        if (v15 == v16)
        {
          if (SHIBYTE(value[3]) >= 0)
          {
            v18 = &value[1];
          }

          else
          {
            v18 = value[1];
          }

          if (SHIBYTE(v45) >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          v20 = memcmp(v18, p_dst, v15) == 0;
          if ((v17 & 0x80000000) == 0)
          {
LABEL_38:
            if (v20)
            {
              goto LABEL_39;
            }

            goto LABEL_44;
          }
        }

        else
        {
          v20 = 0;
          if ((SHIBYTE(v45) & 0x80000000) == 0)
          {
            goto LABEL_38;
          }
        }

        operator delete(__dst);
        if (v20)
        {
LABEL_39:
          v21 = 1;
          if (LOBYTE(value[0]) == 1 && (BYTE1(value[0]) & 1) == 0)
          {
            sub_1002167DC(a1, 0, *v12);
            v21 = v14;
          }

          goto LABEL_45;
        }

LABEL_44:
        v21 = v14;
LABEL_45:
        ++v12;
        v14 = v21;
        if (v12 == v13)
        {
          goto LABEL_52;
        }
      }
    }

    LOBYTE(v21) = 0;
LABEL_52:
    v24 = *(&v36 + 1);
    v25 = v37;
    while (v24 != v25)
    {
      sub_1002167DC(a1, 0, *v24++);
    }

    v27 = *(&v38 + 1);
    for (i = v38; i != v27; ++i)
    {
      sub_1002167DC(a1, 0, *i);
    }

    if ((v21 & 1) == 0 && LOBYTE(value[0]) == 1 && BYTE1(value[0]) == 1)
    {
      if (SHIBYTE(value[3]) < 0)
      {
        sub_100005F2C(__p, value[1], value[2]);
      }

      else
      {
        *__p = *&value[1];
        v32 = value[3];
      }

      if (SHIBYTE(v32) < 0)
      {
        sub_100005F2C(&__dst, __p[0], __p[1]);
      }

      else
      {
        __dst = *__p;
        v45 = v32;
      }

      v43 = 0;
      if (SHIBYTE(v45) < 0)
      {
        sub_100005F2C(&v46, __dst, *(&__dst + 1));
      }

      else
      {
        v46 = __dst;
        v47 = v45;
      }

      v48 = 0;
      if (ctu::cf::convert_copy())
      {
        v28 = v43;
        v43 = v48;
        v49 = v28;
        sub_100005978(&v49);
      }

      if (SHIBYTE(v47) < 0)
      {
        operator delete(v46);
      }

      v29 = v43;
      v33 = v43;
      v43 = 0;
      sub_100005978(&v43);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__dst);
      }

      sub_10021C1BC(a1, 0, v29);
      sub_100005978(&v33);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(value[3]) < 0)
    {
      operator delete(value[1]);
    }

    value[0] = &v38;
    sub_100222314(value);
    value[0] = &v36 + 8;
    sub_100222314(value);
    value[0] = &valuePtr;
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    valuePtr = 0u;
    v36 = 0u;
    sub_1002124D4(a1, &valuePtr);
    v23 = *(&v38 + 1);
    for (j = v38; j != v23; ++j)
    {
      sub_1002167DC(a1, 0, *j);
    }

    value[0] = &v38;
    sub_100222314(value);
    value[0] = &v36 + 8;
    sub_100222314(value);
    value[0] = &valuePtr;
  }

  sub_100222314(value);
  sub_1000296E0(&v40);
  return sub_10001021C(&theDict);
}

void sub_10021BF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36, uint64_t a37, uint64_t a38, const void *a39)
{
  sub_100005978(&a39);
  if (*(v40 - 137) < 0)
  {
    operator delete(*(v40 - 160));
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_100212860(&a26);
  sub_1000296E0(&a36);
  sub_10001021C((v39 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_10021C024(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  v3 = *(a1 + 760);
  v11[0] = *(a1 + 752);
  v11[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1002163C0(a2, v11, &v12);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (v12)
  {
    v4 = *v12;
    v5 = v12[1];
    v6 = v5 - *v12;
    v7 = v6 >> 3;
    if (v6)
    {
      do
      {
        *buf = 0;
        sub_10005C7A4(buf, v4);
        v7 -= *buf != 0;
        sub_100005978(buf);
        ++v4;
      }

      while (v4 != v5);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 48);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315650;
    *&buf[4] = v9;
    v15 = 2080;
    v16 = " ";
    v17 = 2048;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sDetected %zu foreign devices on account", buf, 0x20u);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  return v7;
}

void sub_10021C194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10021C1BC(uint64_t a1, void **cf, const void *a3)
{
  v79 = 0;
  if (cf)
  {
    v79 = cf;
    CFRetain(cf);
  }

  else
  {
    if (*(a1 + 143) < 0)
    {
      sub_100005F2C(&__p, *(a1 + 120), *(a1 + 128));
    }

    else
    {
      __p = *(a1 + 120);
      v78 = *(a1 + 136);
    }

    if (SHIBYTE(v78) < 0)
    {
      sub_100005F2C(&__dst, __p, *(&__p + 1));
    }

    else
    {
      __dst = __p;
      v81 = v78;
    }

    values[0] = 0;
    if (SHIBYTE(v81) < 0)
    {
      sub_100005F2C(buf, __dst, *(&__dst + 1));
    }

    else
    {
      *buf = __dst;
      *&buf[16] = v81;
    }

    v73[0] = 0;
    if (ctu::cf::convert_copy())
    {
      v5 = values[0];
      values[0] = v73[0];
      *&v75 = v5;
      sub_100005978(&v75);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v79 = values[0];
    values[0] = 0;
    sub_100005978(values);
    if (SHIBYTE(v81) < 0)
    {
      operator delete(__dst);
    }

    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p);
    }
  }

  v75 = 0uLL;
  v76 = 0;
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v75 = *buf;
  v76 = *&buf[16];
  v73[0] = 0;
  v73[1] = 0;
  v74 = 0;
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  __dst = *buf;
  v81 = *&buf[16];
  if ((buf[23] & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_10000501C(v73, p_dst);
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__dst);
  }

  v7 = *(a1 + 48);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(**(a1 + 80));
    v9 = v73;
    if (v74 < 0)
    {
      v9 = v73[0];
    }

    v10 = &v75;
    if (v76 < 0)
    {
      v10 = v75;
    }

    *buf = 136315906;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v83 = v9;
    v84 = 2080;
    *v85 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sadding dev:%s to account: %s", buf, 0x2Au);
  }

  v71 = 0;
  theDict = 0;
  sub_1005D67F8(*(a1 + 104), 0, (a1 + 120), 0, &v71);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"cfgSlots");
    v12 = Value;
    if (Value && (v13 = CFGetTypeID(Value), v13 == CFArrayGetTypeID()))
    {
      Count = CFArrayGetCount(v12);
    }

    else
    {
      v15 = CFDictionaryGetValue(theDict, @"maxDeviceNumber");
      v16 = v15;
      *buf = 5;
      if (v15)
      {
        v17 = CFGetTypeID(v15);
        if (v17 == CFNumberGetTypeID())
        {
          ctu::cf::assign(buf, v16, v18);
        }
      }

      Count = *buf;
    }

    key = 0uLL;
    v68 = 0;
    v69 = 0;
    sub_1005D67F8(*(a1 + 104), 1, (a1 + 120), 0, &v68);
    if (v69)
    {
      v19 = CFDictionaryGetValue(v69, @"assignments");
      v20 = v19;
      if (v19)
      {
        v21 = CFDictionaryGetCount(v19);
        if (v21)
        {
          __dst = 0uLL;
          v81 = 0;
          sub_100222418(&__dst, v21);
          values[0] = 0;
          values[1] = 0;
          v67 = 0;
          sub_10007D780(values, v21);
          CFDictionaryGetKeysAndValues(v20, __dst, values[0]);
          if (v21 < 1)
          {
            v26 = 0;
          }

          else
          {
            v22 = 0;
            while (1)
            {
              v23 = values[0][v22];
              if (v23)
              {
                v24 = CFGetTypeID(values[0][v22]);
                v25 = v24 == CFStringGetTypeID() ? v23 : 0;
              }

              else
              {
                v25 = 0;
              }

              if (CFEqual(a3, v25))
              {
                break;
              }

              if ((v21 & 0x7FFFFFFF) == ++v22)
              {
                v26 = 0;
                goto LABEL_63;
              }
            }

            *buf = *(__dst + 8 * v22);
            sub_10021D11C(&key + 1, buf);
            memset(buf, 0, sizeof(buf));
            ctu::cf::assign();
            v65 = *&buf[16];
            *v64 = *buf;
            if (buf[23] < 0)
            {
              v26 = atoi(v64[0]);
              operator delete(v64[0]);
            }

            else
            {
              v26 = atoi(v64);
            }
          }

LABEL_63:
          if (values[0])
          {
            values[1] = values[0];
            operator delete(values[0]);
          }

          if (__dst)
          {
            *(&__dst + 1) = __dst;
            operator delete(__dst);
          }
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
        v21 = 0;
      }

      v31 = CFDictionaryGetValue(v69, @"foreignDevicesCount");
      v32 = v31;
      *buf = 0;
      if (v31)
      {
        v33 = CFGetTypeID(v31);
        if (v33 == CFNumberGetTypeID())
        {
          ctu::cf::assign(buf, v32, v34);
        }
      }

      v30 = *buf;
    }

    else
    {
      v30 = 0;
      v26 = 0;
      v21 = 0;
      v20 = 0;
    }

    v35 = *(a1 + 48);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = PersonalityInfo::logPrefix(**(a1 + 80));
      v37 = &v75;
      if (v76 < 0)
      {
        v37 = v75;
      }

      *buf = 136316162;
      *&buf[4] = v36;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v83 = v37;
      v84 = 1024;
      *v85 = Count;
      *&v85[4] = 1024;
      *&v85[6] = v30;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%smax devices for account %s: %d, foreign devs:%d", buf, 0x2Cu);
    }

    if (!*(&key + 1) && Count > v21 + v30 && Count >= 1)
    {
      v38 = 0;
      while (1)
      {
        *buf = 0;
        v39 = CFStringCreateWithFormat(0, 0, @"%d", v38);
        *buf = v39;
        if (!v20)
        {
          break;
        }

        if (!CFDictionaryGetValue(v20, v39))
        {
          goto LABEL_84;
        }

        sub_100005978(buf);
        v38 = (v38 + 1);
        if (Count == v38)
        {
          goto LABEL_85;
        }
      }

      LODWORD(v38) = 0;
LABEL_84:
      sub_100222570(&key, buf);
      sub_100005978(buf);
      v26 = v38;
    }

LABEL_85:
    if (key == 0)
    {
      *(a1 + 912) = *(a1 + 904);
    }

    else
    {
      sub_10021F488(a1, a3, v26, 0);
      v40 = *(&key + 1);
      *(a1 + 912) = *(a1 + 904);
      if (v40)
      {
        v41 = *(a1 + 48);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = PersonalityInfo::logPrefix(**(a1 + 80));
          __dst = 0uLL;
          v81 = 0;
          ctu::cf::assign();
          *values = __dst;
          v67 = v81;
          v43 = v75;
          v44 = v73[0];
          v45 = values;
          if (v81 < 0)
          {
            v45 = values[0];
          }

          if (v74 >= 0)
          {
            v44 = v73;
          }

          if (v76 >= 0)
          {
            v43 = &v75;
          }

          *buf = 136316162;
          *&buf[4] = v42;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v83 = v45;
          v84 = 2080;
          *v85 = v44;
          *&v85[8] = 2080;
          v86 = v43;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%sfound existing configuration slot %s for dev:%s in account %s", buf, 0x34u);
          if (SHIBYTE(v67) < 0)
          {
            operator delete(values[0]);
          }
        }

        v46 = *(a1 + 104);
        v47 = *(a1 + 112);
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100309BA8(v46, v79, a3);
        if (v47)
        {
          sub_100004A34(v47);
        }

        goto LABEL_126;
      }
    }

    if (key)
    {
      v64[0] = 0;
      if (v69)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v69);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      v63 = 0;
      v64[0] = MutableCopy;
      if (v20)
      {
        Mutable = CFDictionaryCreateMutableCopy(0, 0, v20);
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      v63 = Mutable;
      CFDictionarySetValue(Mutable, key, a3);
      CFDictionarySetValue(v64[0], @"assignments", v63);
      v53 = *(a1 + 104);
      v54 = *(a1 + 112);
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100309BA8(v53, v79, a3);
      if (v54)
      {
        sub_100004A34(v54);
      }

      sub_100810310(a1, 1u, v64[0], 1, 1);
      v55 = *(a1 + 48);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = PersonalityInfo::logPrefix(**(a1 + 80));
        v57 = SHIBYTE(v74);
        v58 = v73[0];
        __dst = 0uLL;
        v81 = 0;
        ctu::cf::assign();
        v59 = v73;
        if (v57 < 0)
        {
          v59 = v58;
        }

        *values = __dst;
        v67 = v81;
        v60 = v75;
        v61 = values;
        if (v81 < 0)
        {
          v61 = values[0];
        }

        if (v76 >= 0)
        {
          v60 = &v75;
        }

        *buf = 136316162;
        *&buf[4] = v56;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v83 = v59;
        v84 = 2080;
        *v85 = v61;
        *&v85[8] = 2080;
        v86 = v60;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%sdev:%s added to slot %s in account: %s", buf, 0x34u);
        if (SHIBYTE(v67) < 0)
        {
          operator delete(values[0]);
        }
      }

      sub_1000296E0(&v63);
      sub_1000296E0(v64);
    }

    else
    {
      v49 = *(a1 + 48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = PersonalityInfo::logPrefix(**(a1 + 80));
        v51 = &v75;
        if (v76 < 0)
        {
          v51 = v75;
        }

        *buf = 136315650;
        *&buf[4] = v50;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v83 = v51;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I %s%saccount %s does not have empty slots", buf, 0x20u);
      }
    }

LABEL_126:
    sub_10001021C(&v69);
    sub_100005978(&key);
    sub_100005978(&key + 1);
    goto LABEL_127;
  }

  v27 = *(a1 + 48);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = PersonalityInfo::logPrefix(**(a1 + 80));
    v29 = &v75;
    if (v76 < 0)
    {
      v29 = v75;
    }

    *buf = 136315650;
    *&buf[4] = v28;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v83 = v29;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%saccount %s not found in the storage", buf, 0x20u);
  }

LABEL_127:
  sub_10034CD9C(*(a1 + 96), 1, 0);
  sub_10001021C(&theDict);
  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73[0]);
  }

  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75);
  }

  return sub_100005978(&v79);
}

void sub_10021CCFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, const void *a23, const void *a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, const void *a48)
{
  if (*(v48 - 137) < 0)
  {
    operator delete(*(v48 - 160));
  }

  if (__p)
  {
    operator delete(__p);
  }

  v50 = *(v48 - 192);
  if (v50)
  {
    *(v48 - 184) = v50;
    operator delete(v50);
  }

  sub_10001021C(&a22);
  sub_100005978(&a23);
  sub_100005978(&a24);
  sub_10001021C(&a28);
  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  sub_100005978(&a48);
  _Unwind_Resume(a1);
}

uint64_t sub_10021CF1C(uint64_t a1)
{
  v1 = *(a1 + 752);
  if (!v1 || *(v1 + 4) != 1)
  {
    return 0;
  }

  if (*(v1 + 32) == 1)
  {
    v3 = (*(v1 + 16) - *(v1 + 8)) >> 7;
  }

  else
  {
    v3 = 0;
  }

  v5 = *v1 - v3;
  if (v5 < 0)
  {
    v6 = *(a1 + 48);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    v5 = 0;
    if (v7)
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 80));
      v9 = **(a1 + 752);
      v10 = 136315906;
      v11 = v8;
      v12 = 2080;
      v13 = " ";
      v14 = 1024;
      v15 = v9;
      v16 = 2048;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%sIncorrect PS device list: max=%u, used=%zu", &v10, 0x26u);
      return 0;
    }
  }

  return v5;
}

BOOL sub_10021D09C(char *a1, void *a2)
{
  if (a1[24] != 1)
  {
    return 0;
  }

  v2 = a1[23];
  if (v2 >= 0)
  {
    v3 = a1[23];
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

const void **sub_10021D11C(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  v6 = v4;
  sub_100005978(&v6);
  return a1;
}

uint64_t sub_10021D170(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 256) == 1)
  {
    sub_10012BF3C(a1, a2);
    sub_10012BF3C((a1 + 32), (a2 + 32));
    sub_10012BF3C((a1 + 64), (a2 + 64));
    sub_10012BF3C((a1 + 96), (a2 + 96));
    sub_10012BF3C((a1 + 128), (a2 + 128));
    sub_10012BF3C((a1 + 160), (a2 + 160));
    sub_10012BF3C((a1 + 192), (a2 + 192));
    sub_10012BF3C((a1 + 224), (a2 + 224));
  }

  else
  {
    sub_100221DCC(a1, a2);
    *(a1 + 256) = 1;
  }

  return a1;
}

void sub_10021D214(uint64_t a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  propertyList = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, kIWLANSettingsKey, 0, 0);
  sub_100010180(&propertyList, buf);
  sub_10000A1EC(buf);
  v20 = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"TechSettingsSecondaryOverlay", 0, 0);
  sub_100010180(&v20, buf);
  sub_10000A1EC(buf);
  v14 = v20;
  if (!v20)
  {
    v15 = *(a1 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 80));
      v22 = 0uLL;
      v23 = 0;
      ctu::cf::assign();
      *__p = v22;
      v19 = v23;
      v17 = __p;
      if (v23 < 0)
      {
        v17 = v22;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      v25 = 2080;
      v26 = " ";
      v27 = 2080;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sNo overlay dictionary %s", buf, 0x20u);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      v14 = v20;
    }

    else
    {
      v14 = 0;
    }
  }

  sub_10080F7B4(propertyList, v14, a1, a2);
  sub_10001021C(&v20);
  sub_10001021C(&propertyList);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10021D4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a12);
  sub_10001021C(&a13);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void sub_10021D55C(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x10021D554);
}

void sub_10021D56C(uint64_t a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  propertyList = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"IMSConfig", 0, 0);
  sub_100010180(&propertyList, buf);
  sub_10000A1EC(buf);
  v20 = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"IMSConfigSecondaryOverlay", 0, 0);
  sub_100010180(&v20, buf);
  sub_10000A1EC(buf);
  v14 = v20;
  if (!v20)
  {
    v15 = *(a1 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 80));
      v22 = 0uLL;
      v23 = 0;
      ctu::cf::assign();
      *__p = v22;
      v19 = v23;
      v17 = __p;
      if (v23 < 0)
      {
        v17 = v22;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      v25 = 2080;
      v26 = " ";
      v27 = 2080;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sNo overlay dictionary %s", buf, 0x20u);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      v14 = v20;
    }

    else
    {
      v14 = 0;
    }
  }

  sub_10080F7B4(propertyList, v14, a1, a2);
  sub_10001021C(&v20);
  sub_10001021C(&propertyList);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10021D840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a12);
  sub_10001021C(&a13);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void sub_10021D8B4(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x10021D8ACLL);
}

void sub_10021D8C4(uint64_t a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  propertyList = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"CarrierEntitlements", 0, 0);
  sub_100010180(&propertyList, buf);
  sub_10000A1EC(buf);
  v20 = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"CarrierEntitlementsSecondaryOverlay", 0, 0);
  sub_100010180(&v20, buf);
  sub_10000A1EC(buf);
  v14 = v20;
  if (!v20)
  {
    v15 = *(a1 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 80));
      v22 = 0uLL;
      v23 = 0;
      ctu::cf::assign();
      *__p = v22;
      v19 = v23;
      v17 = __p;
      if (v23 < 0)
      {
        v17 = v22;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      v25 = 2080;
      v26 = " ";
      v27 = 2080;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sNo overlay dictionary %s", buf, 0x20u);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      v14 = v20;
    }

    else
    {
      v14 = 0;
    }
  }

  sub_10080F7B4(propertyList, v14, a1, a2);
  sub_10001021C(&v20);
  sub_10001021C(&propertyList);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10021DB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a12);
  sub_10001021C(&a13);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void sub_10021DC0C(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x10021DC04);
}

void sub_10021DC1C(uint64_t a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  propertyList = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"PushSettings", 0, 0);
  sub_100010180(&propertyList, buf);
  sub_10000A1EC(buf);
  v20 = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"PushSettingsSecondaryOverlay", 0, 0);
  sub_100010180(&v20, buf);
  sub_10000A1EC(buf);
  v14 = v20;
  if (!v20)
  {
    v15 = *(a1 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 80));
      v22 = 0uLL;
      v23 = 0;
      ctu::cf::assign();
      *__p = v22;
      v19 = v23;
      v17 = __p;
      if (v23 < 0)
      {
        v17 = v22;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      v25 = 2080;
      v26 = " ";
      v27 = 2080;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sNo overlay dictionary %s", buf, 0x20u);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      v14 = v20;
    }

    else
    {
      v14 = 0;
    }
  }

  sub_10080F7B4(propertyList, v14, a1, a2);
  sub_10001021C(&v20);
  sub_10001021C(&propertyList);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10021DEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a12);
  sub_10001021C(&a13);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void sub_10021DF64(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x10021DF5CLL);
}

void sub_10021DF74(uint64_t a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  propertyList = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"Location", 0, 0);
  sub_100010180(&propertyList, buf);
  sub_10000A1EC(buf);
  v20 = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"LocationSecondaryOverlay", 0, 0);
  sub_100010180(&v20, buf);
  sub_10000A1EC(buf);
  v14 = v20;
  if (!v20)
  {
    v15 = *(a1 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 80));
      v22 = 0uLL;
      v23 = 0;
      ctu::cf::assign();
      *__p = v22;
      v19 = v23;
      v17 = __p;
      if (v23 < 0)
      {
        v17 = v22;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      v25 = 2080;
      v26 = " ";
      v27 = 2080;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sNo overlay dictionary %s", buf, 0x20u);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      v14 = v20;
    }

    else
    {
      v14 = 0;
    }
  }

  sub_10080F7B4(propertyList, v14, a1, a2);
  sub_10001021C(&v20);
  sub_10001021C(&propertyList);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10021E244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a12);
  sub_10001021C(&a13);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void sub_10021E2B8(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x10021E2B0);
}

const void **sub_10021E2C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = 0;
  v32 = 0;
  v29 = &v30;
  v30 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v4 = ServiceMap;
  if (v5 < 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v33 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v33);
  v23 = a2;
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  (*(*v11 + 112))(v11, &v29, 1);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (v31)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v14 = v32;
    v32 = Mutable;
    v33 = v14;
    sub_1000296E0(&v33);
    v15 = v29;
    if (v29 != &v30)
    {
      do
      {
        v33 = 0;
        v33 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", *(v15 + 8));
        value = 0;
        v16 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v27 = v16;
        value = v16;
        v18 = v15[5];
        v17 = v15[6];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 1174405120;
        v25 = sub_10021F2D4;
        v26 = &unk_101E31FF0;
        if (v16)
        {
          CFRetain(v16);
        }

        while (v18 != v17)
        {
          v25(v24, v18);
          v18 += 24;
        }

        CFDictionaryAddValue(v32, v33, value);
        sub_1000279DC(&v27);
        sub_1000279DC(&value);
        sub_100005978(&v33);
        v19 = v15[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v15[2];
            v21 = *v20 == v15;
            v15 = v20;
          }

          while (!v21);
        }

        v15 = v20;
      }

      while (v20 != &v30);
    }
  }

  sub_100010180(v23, &v32);
  sub_1001A918C(&v29, v30);
  return sub_1000296E0(&v32);
}

void sub_10021E580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, char *);
  v14 = va_arg(va1, void);
  sub_1001A918C(va, v13);
  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10021E5F4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a2;
  }

  v4 = *(a1 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 80));
    v6 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v6 = *v6;
    }

    *v23 = 136315650;
    *&v23[4] = v5;
    v24 = 2080;
    v25 = " ";
    v26 = 2080;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sreceived iCloud info on my account:'%s'", v23, 0x20u);
  }

  *(a1 + 779) = 1;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  *v23 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, v23);
  if (!v13)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
LABEL_13:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
LABEL_14:
  (*(*v15 + 16))(v15, **(a1 + 80) + 24, @"NeedAccountInvalidation", kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 1, 0);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  *(a1 + 168) = 1;
  v17 = *(a1 + 784);
  *(a1 + 784) = v17 + 1;
  if (v17)
  {
    v18 = *(a1 + 48);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = PersonalityInfo::logPrefix(**(a1 + 80));
      v21 = *(a1 + 784);
      *v23 = 136315650;
      *&v23[4] = v20;
      v24 = 2080;
      v25 = " ";
      v26 = 1024;
      LODWORD(v27) = v21;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#E %s%s|| cloud updated configuration for my own Thumper account. Collision number %u.", v23, 0x1Cu);
      v18 = *(a1 + 48);
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = PersonalityInfo::logPrefix(**(a1 + 80));
      *v23 = 136315394;
      *&v23[4] = v22;
      v24 = 2080;
      v25 = " ";
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#E %s%s|| Potentially another iPhone with the same phone number is present and active, and pretend it owns the number.", v23, 0x16u);
      v18 = *(a1 + 48);
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_101766200((a1 + 80));
    }

    sub_100347EF8(*(a1 + 96) + 360, 0);
    sub_1003486A4(*(a1 + 96) + 360);
  }

  return a2;
}

void sub_10021E938(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10021E970(uint64_t a1, int a2, CFStringRef theString, const __CFDictionary *a4)
{
  v4 = a4;
  v63 = 0;
  v7 = *(a1 + 143);
  if (v7 < 0)
  {
    v7 = *(a1 + 128);
  }

  v8 = 0;
  if (a4 && v7)
  {
    v9 = (a1 + 120);
    if (CFStringHasPrefix(theString, @"dev."))
    {
      Value = CFDictionaryGetValue(v4, @"accounts");
      v11 = Value;
      if (!Value)
      {
        goto LABEL_102;
      }

      v12 = CFGetTypeID(Value);
      if (v12 != CFDictionaryGetTypeID())
      {
        goto LABEL_102;
      }

      if (*(a1 + 143) < 0)
      {
        sub_100005F2C(__dst, *(a1 + 120), *(a1 + 128));
      }

      else
      {
        *__dst = *v9;
        v61 = *(a1 + 136);
      }

      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(theDict, __dst[0], __dst[1]);
      }

      else
      {
        *theDict = *__dst;
        v66 = v61;
      }

      theArray = 0;
      if (SHIBYTE(v66) < 0)
      {
        sub_100005F2C(__p, theDict[0], theDict[1]);
      }

      else
      {
        *__p = *theDict;
        __p[2] = v66;
      }

      v67 = 0;
      if (ctu::cf::convert_copy())
      {
        v13 = theArray;
        theArray = v67;
        v68 = v13;
        sub_100005978(&v68);
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      key = theArray;
      theArray = 0;
      sub_100005978(&theArray);
      if (SHIBYTE(v66) < 0)
      {
        operator delete(theDict[0]);
      }

      v14 = CFDictionaryGetValue(v11, key);
      v15 = v14;
      if (v14)
      {
        v16 = CFGetTypeID(v14);
        if (v16 != CFDictionaryGetTypeID())
        {
          v15 = 0;
        }
      }

      sub_100005978(&key);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__dst[0]);
      }

      if (!v15)
      {
        goto LABEL_102;
      }

      sub_1005D72A4(theString, *(a1 + 104), 2u, a1 + 120, 0, v15, __p);
      theDict[0] = v63;
      v63 = __p[1];
      __p[1] = 0;
      sub_10001021C(theDict);
      sub_10001021C(&__p[1]);
      v4 = v63;
      if (!v63)
      {
        goto LABEL_102;
      }
    }

    v17 = CFDictionaryGetValue(v4, @"account");
    if (!v17)
    {
      goto LABEL_49;
    }

    v18 = CFGetTypeID(v17);
    if (v18 != CFStringGetTypeID())
    {
      goto LABEL_49;
    }

    memset(__p, 0, 24);
    ctu::cf::assign();
    v66 = __p[2];
    *theDict = *__p;
    v19 = *(a1 + 143);
    if (v19 >= 0)
    {
      v20 = *(a1 + 143);
    }

    else
    {
      v20 = *(a1 + 128);
    }

    v21 = HIBYTE(v66);
    v22 = SHIBYTE(v66);
    if (SHIBYTE(v66) < 0)
    {
      v21 = theDict[1];
    }

    if (v20 == v21)
    {
      if (v19 >= 0)
      {
        v23 = (a1 + 120);
      }

      else
      {
        v23 = *v9;
      }

      if (SHIBYTE(v66) >= 0)
      {
        v24 = theDict;
      }

      else
      {
        v24 = theDict[0];
      }

      v25 = memcmp(v23, v24, v20) == 0;
      if ((v22 & 0x80000000) == 0)
      {
LABEL_48:
        if (!v25)
        {
          goto LABEL_102;
        }

LABEL_49:
        v26 = CFDictionaryGetValue(v4, @"last-expired-token");
        v27 = v26;
        if (!v26)
        {
          goto LABEL_102;
        }

        v28 = CFGetTypeID(v26);
        if (v28 != CFStringGetTypeID())
        {
          goto LABEL_102;
        }

        theDict[0] = 0;
        theDict[1] = 0;
        sub_1005D67F8(*(a1 + 104), 0, (a1 + 120), 0, theDict);
        if (theDict[1])
        {
          if (sub_10020B7A4(a1))
          {
            v29 = CFDictionaryGetValue(theDict[1], @"masterToken");
            v30 = v29;
            if (v29)
            {
              v31 = CFGetTypeID(v29);
              if (v31 == CFStringGetTypeID())
              {
                v32 = CFStringCompare(v30, v27, 0);
                sub_10001021C(&theDict[1]);
                if (v32 == kCFCompareEqualTo)
                {
LABEL_56:
                  memset(__p, 0, 24);
                  ctu::cf::assign();
                  *theDict = *__p;
                  v66 = __p[2];
                  if ((*(a1 + 664) & 1) == 0 || *(a1 + 264) != 1)
                  {
LABEL_104:
                    v54 = *(a1 + 48);
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v55 = PersonalityInfo::logPrefix(**(a1 + 80));
                      v56 = theDict;
                      if (SHIBYTE(v66) < 0)
                      {
                        v56 = theDict[0];
                      }

                      LODWORD(__p[0]) = 136315650;
                      *(__p + 4) = v55;
                      WORD2(__p[1]) = 2080;
                      *(&__p[1] + 6) = " ";
                      HIWORD(__p[2]) = 2080;
                      __p[3] = v56;
                      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I %s%sRequest to refresh token %s", __p, 0x20u);
                    }

                    *(a1 + 168) = 1;
                    if (SHIBYTE(v66) < 0)
                    {
                      operator delete(theDict[0]);
                    }

                    v8 = 1;
                    goto LABEL_103;
                  }

                  v33 = *(a1 + 240);
                  v34 = *(a1 + 248);
                  v35 = HIBYTE(v66);
                  if (v33 != v34)
                  {
                    if (SHIBYTE(v66) >= 0)
                    {
                      v36 = HIBYTE(v66);
                    }

                    else
                    {
                      v36 = theDict[1];
                    }

                    if (SHIBYTE(v66) >= 0)
                    {
                      v37 = theDict;
                    }

                    else
                    {
                      v37 = theDict[0];
                    }

                    do
                    {
                      v38 = *(v33 + 23);
                      v39 = v38;
                      if ((v38 & 0x80u) != 0)
                      {
                        v38 = *(v33 + 8);
                      }

                      if (v38 == v36)
                      {
                        v40 = v39 >= 0 ? v33 : *v33;
                        if (!memcmp(v40, v37, v36))
                        {
                          goto LABEL_104;
                        }
                      }

                      v33 += 24;
                    }

                    while (v33 != v34);
                  }

                  if (v35 < 0)
                  {
                    operator delete(theDict[0]);
                  }
                }

LABEL_102:
                v8 = 0;
                goto LABEL_103;
              }
            }
          }

          else
          {
            v41 = CFDictionaryGetValue(theDict[1], @"cfgSlots");
            v42 = v41;
            if (v41)
            {
              v43 = CFGetTypeID(v41);
              if (v43 == CFArrayGetTypeID())
              {
                theArray = 0;
                sub_10020CBC8(*(a1 + 56), __p);
                (*(*__p[0] + 24))(&v68);
                sub_10006DD00(&theArray, &v68);
                sub_10000A1EC(&v68);
                if (__p[1])
                {
                  sub_100004A34(__p[1]);
                }

                if (theArray)
                {
                  for (i = 0; i < CFArrayGetCount(v42) && i < CFArrayGetCount(theArray); ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v42, i);
                    v46 = ValueAtIndex;
                    if (ValueAtIndex)
                    {
                      v47 = CFGetTypeID(ValueAtIndex);
                      if (v47 == CFDataGetTypeID())
                      {
                        key = 0;
                        v48 = CFArrayGetValueAtIndex(theArray, i);
                        memset(__p, 0, 24);
                        if (v48)
                        {
                          v49 = CFGetTypeID(v48);
                          if (v49 == CFDataGetTypeID())
                          {
                            ctu::cf::assign();
                          }
                        }

                        *v57 = *__p;
                        v58 = __p[2];
                        sub_1009F8218(v46, v57, &cf);
                        v68 = cf;
                        if (cf)
                        {
                          CFRetain(cf);
                        }

                        v67 = 0;
                        __p[0] = 0;
                        sub_100010180(__p, &v68);
                        if (__p[0])
                        {
                          sub_1000676D4(&v67, __p);
                        }

                        sub_10001021C(__p);
                        key = v67;
                        v67 = 0;
                        sub_10001021C(&v67);
                        sub_10000A1EC(&v68);
                        sub_10000A1EC(&cf);
                        if (v57[0])
                        {
                          v57[1] = v57[0];
                          operator delete(v57[0]);
                        }

                        if (key)
                        {
                          v50 = CFDictionaryGetValue(key, @"token");
                          v51 = v50;
                          if (v50)
                          {
                            v52 = CFGetTypeID(v50);
                            if (v52 == CFStringGetTypeID() && CFStringCompare(v51, v27, 0) == kCFCompareEqualTo)
                            {
                              sub_10001021C(&key);
                              sub_100010250(&theArray);
                              sub_10001021C(&theDict[1]);
                              goto LABEL_56;
                            }
                          }
                        }

                        sub_10001021C(&key);
                      }
                    }
                  }
                }

                sub_100010250(&theArray);
              }
            }
          }
        }

        sub_10001021C(&theDict[1]);
        goto LABEL_102;
      }
    }

    else
    {
      v25 = 0;
      if ((SHIBYTE(v66) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }
    }

    operator delete(theDict[0]);
    goto LABEL_48;
  }

LABEL_103:
  sub_10001021C(&v63);
  return v8;
}