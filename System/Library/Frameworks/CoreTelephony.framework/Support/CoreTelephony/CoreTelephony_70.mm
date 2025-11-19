void sub_10047A8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  if ((v38 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047A99C(uint64_t a1, void *a2, uint64_t a3)
{
  memset(v22, 0, sizeof(v22));
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) < 2)
  {
    CSIPacketAddress::CSIPacketAddress(v22);
  }

  else
  {
    CSIPacketAddress::CSIPacketAddress(v22, (*a2 + 24));
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  __p = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &__p);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_12:
  if (CSIPacketAddress::isZeroIP(v22))
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    goto LABEL_21;
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  (*(*v13 + 128))(&__p, v13);
  if (v21 >= 0)
  {
    v15 = v21;
  }

  else
  {
    v15 = v20;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    operator delete(__p);
    if (v15)
    {
      goto LABEL_21;
    }

LABEL_33:
    if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 72) - *(a3 + 64)) >> 3) <= 1)
    {
      do
      {
        CSIPacketAddress::CSIPacketAddress(&__p);
        sub_10047DF64(a3 + 64, &__p);
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 72) - *(a3 + 64)) >> 3) < 2);
    }

    CSIPacketAddress::operator=();
    goto LABEL_36;
  }

  if (!v15)
  {
    goto LABEL_33;
  }

LABEL_21:
  (*(*v13 + 128))(&__p, v13);
  if (v21 >= 0)
  {
    v16 = v21;
  }

  else
  {
    v16 = v20;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    operator delete(__p);
    if (!v16)
    {
      goto LABEL_36;
    }
  }

  else if (!v16)
  {
    goto LABEL_36;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 72) - *(a3 + 64)) >> 3) <= 1)
  {
    do
    {
      CSIPacketAddress::CSIPacketAddress(&__p);
      sub_10047DF64(a3 + 64, &__p);
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 72) - *(a3 + 64)) >> 3) < 2);
  }

  (*(*v13 + 128))(&v17, v13);
  CSIPacketAddress::CSIPacketAddress();
  CSIPacketAddress::operator=();
  if (v18 < 0)
  {
    operator delete(v17);
  }

LABEL_36:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10047AC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047ACCC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) >= 3)
  {
    v6 = 2;
    v7 = 48;
    do
    {
      if ((CSIPacketAddress::isZeroIP((v3 + v7)) & 1) == 0)
      {
        v8 = *a2;
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v6)
        {
          sub_1002030E0();
        }

        v9 = *(a3 + 72);
        if (v9 >= *(a3 + 80))
        {
          v10 = sub_1004867DC(a3 + 64, (v8 + v7));
        }

        else
        {
          CSIPacketAddress::CSIPacketAddress(*(a3 + 72), (v8 + v7));
          v10 = v9 + 24;
          *(a3 + 72) = v9 + 24;
        }

        *(a3 + 72) = v10;
      }

      ++v6;
      v3 = *a2;
      v7 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }
}

const void **sub_10047ADAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, CSIPacketAddress **a4@<X3>, const __CFString *a5@<X4>, SCDynamicStoreRef *a6@<X5>, void **a7@<X8>)
{
  v46 = 0;
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, 4, &kCFTypeArrayCallBacks);
  if (!theArray)
  {
    v27 = *(a1 + 40);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v28 = "#E Cannot create DNS Servers array";
LABEL_51:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
    goto LABEL_52;
  }

  v12 = (a3 + 64);
  v38 = a7;
  if (*(a3 + 64) != *(a3 + 72))
  {
    goto LABEL_3;
  }

  v29 = a2[1];
  v45[0] = *a2;
  v45[1] = v29;
  if (!v29)
  {
    if ((sub_10047F230(a1, v45) & 1) != 0 || *a4 == a4[1])
    {
      goto LABEL_3;
    }

    goto LABEL_59;
  }

  atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  if (sub_10047F230(a1, v45))
  {
    sub_100004A34(v29);
    goto LABEL_3;
  }

  v34 = *a4;
  v35 = a4[1];
  sub_100004A34(v29);
  if (v34 != v35)
  {
LABEL_59:
    v36 = *(a1 + 40);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = asString();
      *buf = 136315138;
      *&buf[4] = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#N Empty DNS for %s, not empty for other", buf, 0xCu);
    }

    v12 = a4;
  }

LABEL_3:
  v14 = *v12;
  v13 = v12[1];
  if (*v12 != v13)
  {
    while (1)
    {
      if (CSIPacketAddress::isZeroIP(v14))
      {
        v15 = *(a1 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E Empty DNS addr ?", buf, 2u);
        }

        goto LABEL_16;
      }

      value = 0;
      CSIPacketAddress::operator std::string();
      v16 = v50 >= 0 ? buf : *buf;
      v17 = CFStringCreateWithCString(kCFAllocatorDefault, v16, 0x8000100u);
      v18 = v17;
      value = v17;
      if ((v50 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(*buf);
      v18 = value;
      if (value)
      {
        goto LABEL_14;
      }

LABEL_15:
      sub_100005978(&value);
LABEL_16:
      v14 = (v14 + 24);
      if (v14 == v13)
      {
        goto LABEL_17;
      }
    }

    if (!v17)
    {
      goto LABEL_15;
    }

LABEL_14:
    CFArrayAppendValue(theArray, v18);
    goto LABEL_15;
  }

LABEL_17:
  a7 = v38;
  if (CFArrayGetCount(theArray))
  {
    goto LABEL_18;
  }

  v30 = a2[1];
  v44[0] = *a2;
  v44[1] = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    v31 = sub_10047F230(a1, v44);
    sub_100004A34(v30);
    if ((v31 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if ((sub_10047F230(a1, v44) & 1) == 0)
  {
LABEL_49:
    v27 = *(a1 + 40);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v28 = "#E Empty DNS Servers list is not allowed";
    goto LABEL_51;
  }

LABEL_18:
  value = 0;
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, a5, kSCEntNetDNS);
  value = NetworkServiceEntity;
  if (NetworkServiceEntity)
  {
    theDict = 0;
    *buf = SCDynamicStoreCopyValue(*a6, NetworkServiceEntity);
    sub_100138C38(&theDict, buf);
    if (theDict && CFDictionaryContainsKey(theDict, kSCPropNetDNSServerAddresses))
    {
      *buf = 0;
      v42 = CFDictionaryGetValue(theDict, kSCPropNetDNSServerAddresses);
      sub_1001FA5E0(buf, &v42);
      if (*buf)
      {
        v20 = sub_10047FD9C(a1);
        Count = CFArrayGetCount(*buf);
        if (Count >= 1)
        {
          v22 = 0;
          v23 = 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*buf, v22);
            if (sub_10047FF70() != *(a3 + 120))
            {
              if ((v20 & v23) == 1 && CFArrayGetCount(theArray))
              {
                CFArrayInsertValueAtIndex(theArray, 1, ValueAtIndex);
                v23 = 0;
              }

              else
              {
                CFArrayAppendValue(theArray, ValueAtIndex);
              }
            }

            ++v22;
          }

          while (Count != v22);
        }
      }

      sub_100010250(buf);
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v26 = v46;
    v46 = Mutable;
    *buf = v26;
    sub_1000296E0(buf);
    if (v46)
    {
      CFDictionarySetValue(v46, kSCPropNetDNSServerAddresses, theArray);
    }

    sub_10001021C(&theDict);
    a7 = v38;
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017719E8();
  }

  sub_100005978(&value);
LABEL_52:
  sub_1000279DC(&theArray);
  v32 = v46;
  v41 = v46;
  if (v46)
  {
    CFRetain(v46);
    theArray = v32;
    CFRetain(v32);
  }

  else
  {
    theArray = 0;
  }

  value = 0;
  *buf = 0;
  sub_100010180(buf, &theArray);
  if (*buf)
  {
    sub_1000676D4(&value, buf);
  }

  sub_10001021C(buf);
  *a7 = value;
  value = 0;
  sub_10001021C(&value);
  sub_1000296E0(&theArray);
  sub_1000296E0(&v41);
  return sub_1000296E0(&v46);
}

void sub_10047B310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, const void *a20, __int16 a21, char a22, char a23, int a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_1000279DC(&a25);
  sub_1000296E0(&a20);
  _Unwind_Resume(a1);
}

void sub_10047B3DC(uint64_t a1, const void **a2)
{
  if (*a2)
  {
    v4 = *(a1 + 704);
    *(a1 + 704) = 0;
    cf = v4;
    sub_10047B508(a1, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v5 = *a2;
    *a2 = 0;
    sub_1004873AC((a1 + 704), v5);
    if (sub_10047B5FC(a1))
    {
      if (*(a1 + 412) == 4)
      {
        return;
      }

      v6 = a1 + 296;
      v7 = a1;
      v8 = 4;
    }

    else
    {
      sub_100478C1C(a1);
      v6 = a1 + 296;
      v7 = a1;
      v8 = 1;
    }

    sub_100475C48(v7, v6, v8);
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E IPv4Service: newService is empty", buf, 2u);
    }

    sub_100475C48(a1, a1 + 296, 1u);
  }
}

void sub_10047B4F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004873AC(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_10047B508(uint64_t result, void *a2)
{
  if (*a2)
  {
    sub_100004AA0(&v4, (result + 8));
    v3 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
      *a2 = 0;
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      *a2 = 0;
    }

    operator new();
  }

  return result;
}

BOOL sub_10047B5FC(uint64_t a1)
{
  if (!*(a1 + 704))
  {
    return 0;
  }

  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 24);
  v2 = *(a1 + 728);
  if (v2)
  {
    SCDynamicStoreSetDispatchQueue(v2, 0);
  }

  v3 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:IPv4ServiceChange", sub_10047DE18, &context);
  v4 = *(a1 + 728);
  *(a1 + 728) = v3;
  values[0] = v4;
  sub_10048662C(values);
  if (!*(a1 + 728))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(values[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E IPv4Service SCDynamicStore failed", values, 2u);
    }

    goto LABEL_18;
  }

  values[0] = IPConfigurationServiceGetNotificationKey();
  v12 = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
  if (!SCDynamicStoreSetNotificationKeys(*(a1 + 728), v12, 0))
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      v9 = "#E IPv4Service SCDynamicStoreSetNotificationKeys failed";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v11, 2u);
    }

LABEL_17:
    sub_100010250(&v12);
LABEL_18:
    v10 = *(a1 + 40);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(context.version) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E IPv4Service SCDynamicStore monitor setup failed", &context, 2u);
    return 0;
  }

  if (SCDynamicStoreSetDispatchQueue(*(a1 + 728), *(a1 + 24)) != 1)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      v9 = "#E IPv4Service SCDynamicStoreSetDispatchQueue failed";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  sub_100010250(&v12);
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(context.version) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I ipv4ServiceChanged to be called in case we have missed the notification", &context, 2u);
  }

  sub_100476050(a1, 0);
  return 1;
}

void sub_10047B828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

void sub_10047B83C(uint64_t a1, const void **a2)
{
  if (*a2)
  {
    v4 = *(a1 + 688);
    *(a1 + 688) = 0;
    cf = v4;
    sub_10047B970(a1, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v5 = *a2;
    *a2 = 0;
    sub_1004873AC((a1 + 688), v5);
    *(a1 + 141) = 1;
    if (sub_10047BA64(a1))
    {
      if (*(a1 + 604) == 4)
      {
        return;
      }

      v6 = a1 + 488;
      v7 = a1;
      v8 = 4;
    }

    else
    {
      sub_1004793DC(a1);
      v6 = a1 + 488;
      v7 = a1;
      v8 = 1;
    }

    sub_100475C48(v7, v6, v8);
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E IPv6Service: newService is empty", buf, 2u);
    }

    sub_100475C48(a1, a1 + 488, 1u);
  }
}

void sub_10047B958(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004873AC(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_10047B970(uint64_t result, void *a2)
{
  if (*a2)
  {
    sub_100004AA0(&v4, (result + 8));
    v3 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
      *a2 = 0;
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      *a2 = 0;
    }

    operator new();
  }

  return result;
}

BOOL sub_10047BA64(uint64_t a1)
{
  if (!*(a1 + 688))
  {
    return 0;
  }

  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 24);
  v2 = *(a1 + 720);
  if (v2)
  {
    SCDynamicStoreSetDispatchQueue(v2, 0);
  }

  v3 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:IPv6ServiceChange", sub_10047DEBC, &context);
  v4 = *(a1 + 720);
  *(a1 + 720) = v3;
  values[0] = v4;
  sub_10048662C(values);
  if (!*(a1 + 720))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(values[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E IPv6Service SCDynamicStore failed", values, 2u);
    }

    goto LABEL_18;
  }

  values[0] = IPConfigurationServiceGetNotificationKey();
  v12 = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
  if (!SCDynamicStoreSetNotificationKeys(*(a1 + 720), v12, 0))
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      v9 = "#E IPv6Service SCDynamicStoreSetNotificationKeys failed";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v11, 2u);
    }

LABEL_17:
    sub_100010250(&v12);
LABEL_18:
    v10 = *(a1 + 40);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(context.version) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E IPv6Service SCDynamicStore monitor setup failed", &context, 2u);
    return 0;
  }

  if (SCDynamicStoreSetDispatchQueue(*(a1 + 720), *(a1 + 24)) != 1)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      v9 = "#E IPv6Service SCDynamicStoreSetDispatchQueue failed";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  sub_100010250(&v12);
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(context.version) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I ipv6ServiceChanged to be called", &context, 2u);
  }

  sub_100476ED0(a1, 0);
  return 1;
}

void sub_10047BC90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

void sub_10047BCA4(uint64_t a1, uint64_t a2, CSIPacketAddress *a3, CSIPacketAddress *a4, int a5, char a6, unint64_t a7)
{
  valuePtr = a5;
  v13 = *(a1 + 688);
  v14 = *(a1 + 40);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (!v15)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v16 = "#I IPv6Service is going up in progress";
  }

  else
  {
    if (!v15)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v16 = "#I IPv6Service is new";
  }

  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
LABEL_7:
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  cf = Mutable;
  v18 = *(a1 + 120);
  if (v18 > 0xF)
  {
    v19 = "";
  }

  else
  {
    v19 = off_101E44980[v18];
  }

  CFStringAppendFormat(Mutable, 0, @"%s", v19);
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  *keys = 0u;
  *values = 0u;
  v83 = 0u;
  v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v71 = v20;
  keys[0] = kIPConfigurationServiceOptionMTU;
  keys[1] = kIPConfigurationServiceOptionPerformNUD;
  values[0] = v20;
  values[1] = kCFBooleanFalse;
  if (a6)
  {
    v21 = 2;
  }

  else
  {
    *&v86 = kIPConfigurationServiceOptionEnableDAD;
    *&v83 = kCFBooleanFalse;
    v21 = 3;
  }

  if (!capabilities::ct::supportsCellRadio(v20))
  {
    v23 = *(a1 + 40);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v24 = "#I IPv6Service: xlat464: cellular radio not supported";
    goto LABEL_20;
  }

  v22 = *(a1 + 412);
  if (v22 == 2 || v22 == 4)
  {
    v23 = *(a1 + 40);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v24 = "#N IPv6Service: xlat464: ipv4Model is already online";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
    goto LABEL_21;
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100473238(a1, buf);
  if (!*buf)
  {
    v50 = *(a1 + 40);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#N IPv6Service: xlat464: APN info empty", __p, 2u);
    }

    goto LABEL_127;
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_1004732EC(a1, a2, __p);
  if ((*(*buf + 384) & 1) != 0 || CIPFamily::isDefault(__p) && (__p[1] & 2) != 0)
  {
    keys[v21] = kIPConfigurationServiceOptionEnableCLAT46;
    values[v21++] = kCFBooleanTrue;
    if ((*(a1 + 433) & 1) == 0)
    {
      *(a1 + 432) = 256;
    }

    v48 = *(a1 + 40);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_126;
    }

    *v65 = 0;
    v49 = "#I IPv6Service: xlat464: enabled";
  }

  else
  {
    v48 = *(a1 + 40);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
LABEL_126:
      CIPFamily::~CIPFamily(__p);
LABEL_127:
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

LABEL_21:
      v69 = 0;
      v70 = 0;
      theDict = 0;
      v68 = 0;
      if ((CSIPacketAddress::isZeroIP(a3) & 1) == 0)
      {
        memset(v65, 0, sizeof(v65));
        v66 = 0;
        CSIPacketAddress::operator std::string();
        if (SHIBYTE(v66) < 0)
        {
          sub_100005F2C(__dst, *v65, *&v65[8]);
        }

        else
        {
          *__dst = *v65;
          v63 = v66;
        }

        if (SHIBYTE(v63) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v52 = v63;
        }

        v74 = 0;
        if (SHIBYTE(v52) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v52;
        }

        v75 = 0;
        if (ctu::cf::convert_copy())
        {
          v25 = v74;
          v74 = v75;
          v76 = v25;
          sub_100005978(&v76);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v64 = v74;
        v74 = 0;
        sub_100005978(&v74);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p[0]);
        }

        *buf = v70;
        v70 = v64;
        v64 = 0;
        sub_100005978(buf);
        sub_100005978(&v64);
        if (SHIBYTE(v63) < 0)
        {
          operator delete(__dst[0]);
        }

        v26 = *(a1 + 40);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = SHIBYTE(v66);
          v28 = *v65;
          PrefixLen = CSIPacketAddress::getPrefixLen(a3);
          v30 = v65;
          if (v27 < 0)
          {
            v30 = v28;
          }

          *buf = 136315394;
          *&buf[4] = v30;
          *&buf[12] = 1024;
          *&buf[14] = PrefixLen;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I IPv6Service is going up with address %s/%d", buf, 0x12u);
        }

        v31 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v32 = theDict;
        theDict = v31;
        *buf = v32;
        sub_1000296E0(buf);
        CFDictionarySetValue(theDict, kSCPropNetIPv6ConfigMethod, kSCValNetIPv6ConfigMethodManual);
        *buf = v70;
        *&buf[8] = 0;
        v75 = 0;
        v75 = CFArrayCreate(0, buf, 1, &kCFTypeArrayCallBacks);
        CFDictionarySetValue(theDict, kSCPropNetIPv6Addresses, v75);
        v74 = 0;
        v33 = CSIPacketAddress::getPrefixLen(a3);
        v76 = 0;
        __p[0] = v33;
        v34 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, __p);
        if (v34)
        {
          v35 = v76;
          v76 = v34;
          __p[0] = v35;
          sub_100029A48(__p);
        }

        v74 = v76;
        v76 = 0;
        sub_100029A48(&v76);
        *buf = v74;
        __p[0] = 0;
        __p[0] = CFArrayCreate(0, buf, 1, &kCFTypeArrayCallBacks);
        CFDictionarySetValue(theDict, kSCPropNetIPv6PrefixLength, __p[0]);
        keys[v21] = kIPConfigurationServiceOptionIPv6Entity;
        values[v21++] = theDict;
        sub_100010250(__p);
        sub_100029A48(&v74);
        sub_100010250(&v75);
        if (SHIBYTE(v66) < 0)
        {
          operator delete(*v65);
        }
      }

      if ((CSIPacketAddress::isZeroIP(a4) & 1) == 0)
      {
        memset(v65, 0, sizeof(v65));
        v66 = 0;
        CSIPacketAddress::operator std::string();
        if (SHIBYTE(v66) < 0)
        {
          sub_100005F2C(v60, *v65, *&v65[8]);
        }

        else
        {
          *v60 = *v65;
          v61 = v66;
        }

        if (SHIBYTE(v61) < 0)
        {
          sub_100005F2C(__p, v60[0], v60[1]);
        }

        else
        {
          *__p = *v60;
          v52 = v61;
        }

        v74 = 0;
        if (SHIBYTE(v52) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v52;
        }

        v75 = 0;
        if (ctu::cf::convert_copy())
        {
          v36 = v74;
          v74 = v75;
          v76 = v36;
          sub_100005978(&v76);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v64 = v74;
        v74 = 0;
        sub_100005978(&v74);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p[0]);
        }

        *buf = v69;
        v69 = v64;
        v64 = 0;
        sub_100005978(buf);
        sub_100005978(&v64);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(v60[0]);
        }

        v37 = *(a1 + 40);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v65;
          if (SHIBYTE(v66) < 0)
          {
            v38 = *v65;
          }

          *buf = 136315138;
          *&buf[4] = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I IPv6Service is going up with link local address %s", buf, 0xCu);
        }

        keys[v21] = kIPConfigurationServiceOptionIPv6LinkLocalAddress;
        values[v21++] = v69;
        if (SHIBYTE(v66) < 0)
        {
          operator delete(*v65);
        }
      }

      memset(v65, 0, sizeof(v65));
      sub_100473238(a1, v65);
      if (*v65)
      {
        if (*(*v65 + 71) < 0)
        {
          sub_100005F2C(v58, *(*v65 + 48), *(*v65 + 56));
        }

        else
        {
          *v58 = *(*v65 + 48);
          v59 = *(*v65 + 64);
        }

        if (SHIBYTE(v59) < 0)
        {
          sub_100005F2C(__p, v58[0], v58[1]);
        }

        else
        {
          *__p = *v58;
          v52 = v59;
        }

        v74 = 0;
        if (SHIBYTE(v52) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v52;
        }

        v75 = 0;
        if (ctu::cf::convert_copy())
        {
          v39 = v74;
          v74 = v75;
          v76 = v39;
          sub_100005978(&v76);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v64 = v74;
        v74 = 0;
        sub_100005978(&v74);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p[0]);
        }

        *buf = v68;
        v68 = v64;
        v64 = 0;
        sub_100005978(buf);
        sub_100005978(&v64);
        if (SHIBYTE(v59) < 0)
        {
          operator delete(v58[0]);
        }

        v40 = v68;
        if (v68)
        {
          keys[v21] = kIPConfigurationServiceOptionAPNName;
          values[v21++] = v40;
        }
      }

      if (*&v65[8])
      {
        sub_100004A34(*&v65[8]);
      }

      if (isSliceMask(a7) && sub_10047CB6C(a1))
      {
        keys[v21] = kIPConfigurationServiceOptionEnableL4S;
        values[v21++] = kCFBooleanTrue;
      }

      v75 = 0;
      v41 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, v21, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v75 = v41;
      v57 = v41;
      if (v41)
      {
        CFRetain(v41);
      }

      sub_100472F48(a1, "IPv6Service: ip dict: bringUpIPv6Interface_sync", &v57);
      sub_10001021C(&v57);
      sub_100475C48(a1, a1 + 488, 2u);
      v42 = atomic_load((a1 + 696));
      v43 = *(a1 + 40);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v42;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: new counter = %u", buf, 8u);
      }

      atomic_fetch_add((a1 + 696), 1u);
      v80 = 0;
      v81 = 0;
      v79 = 0;
      *buf = a1;
      sub_100004AA0(__p, (a1 + 8));
      v45 = __p[0];
      v44 = __p[1];
      *&buf[8] = __p[0];
      *&buf[16] = __p[1];
      if (__p[1])
      {
        atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
        sub_100004A34(v44);
      }

      v46 = cf;
      v78 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v47 = v75;
      v79 = v75;
      if (v75)
      {
        CFRetain(v75);
      }

      v80 = a1 + 488;
      LODWORD(v81) = v42;
      __p[0] = a1;
      __p[1] = v45;
      v52 = v44;
      if (v44)
      {
        atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v53 = v46;
      if (v46)
      {
        CFRetain(v46);
      }

      v54 = v47;
      if (v47)
      {
        CFRetain(v47);
      }

      v55 = v80;
      v56 = v81;
      operator new();
    }

    *v65 = 0;
    v49 = "#I IPv6Service: xlat464: EnableXLAT464 is not configured in APN";
  }

  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v49, v65, 2u);
  goto LABEL_126;
}

void sub_10047C928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, const void *a39, const void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46)
{
  CIPFamily::~CIPFamily(&__p);
  if (a46)
  {
    sub_100004A34(a46);
  }

  sub_100029A48(&a39);
  sub_100305E28(&a40);
  _Unwind_Resume(a1);
}

uint64_t sub_10047CB6C(uint64_t a1)
{
  v35 = 0;
  v36 = 0;
  sub_10047DFB8(a1, &v35);
  *__p = *off_101E4EAC0;
  v40 = @"ForceDisableL4S";
  v33 = 0;
  v34 = 0;
  v32 = 0;
  sub_10005B328(&v32, __p, &v41, 3uLL);
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v3 = ServiceMap;
  v5 = v4;
  if (v4 < 0)
  {
    v6 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
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
  __p[0] = v5;
  v9 = sub_100009510(&v3[1].__m_.__sig, __p);
  if (!v9)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
LABEL_8:
    std::mutex::unlock(v3);
    v10 = 0;
    v12 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
LABEL_9:
  (*(*v11 + 104))(&cf, v11, *(v35 + 52), 1, &v32, 0, 0);
  v13 = cf;
  LOBYTE(__p[0]) = 0;
  if (cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(__p, v13, v15);
    }
  }

  v16 = LOBYTE(__p[0]);
  sub_10000A1EC(&cf);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  cf = @"NRSlicing";
  v38 = @"ForceEnableL4S";
  __p[1] = 0;
  v40 = 0;
  __p[0] = 0;
  sub_10005B328(__p, &cf, __p, 2uLL);
  v17 = Registry::getServiceMap(*(a1 + 48));
  v18 = v17;
  if (v4 < 0)
  {
    v19 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v4 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(v17);
  cf = v4;
  v22 = sub_100009510(&v18[1].__m_.__sig, &cf);
  if (v22)
  {
    v24 = v22[3];
    v23 = v22[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v18);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      v25 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v18);
  v23 = 0;
  v25 = 1;
LABEL_22:
  (*(*v24 + 104))(&v31, v24, *(v35 + 52), 1, __p, 0, 0);
  v26 = v31;
  LOBYTE(cf) = 0;
  if (v31)
  {
    v27 = CFGetTypeID(v31);
    if (v27 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&cf, v26, v28);
      LODWORD(v26) = cf;
    }

    else
    {
      LODWORD(v26) = 0;
    }
  }

  sub_10000A1EC(&v31);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  v29 = *(a1 + 40);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(cf) = 67109376;
    HIDWORD(cf) = v16;
    LOWORD(v38) = 1024;
    *(&v38 + 2) = v26;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I isL4SPreferred_sync forceDisabled=%d, enabledForSlicing=%d", &cf, 0xEu);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v36)
  {
    sub_100004A34(v36);
  }

  return (v16 ^ 1) & v26;
}

void sub_10047CF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047CFD8(uint64_t a1, uint64_t a2, CSIPacketAddress *a3, CSIPacketAddress *a4, int a5, unint64_t a6)
{
  valuePtr = a5;
  v10 = *(a1 + 704);
  v11 = *(a1 + 40);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v13 = "#I IPv4Service is going up in progress";
  }

  else
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v13 = "#I IPv4Service is new";
  }

  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
LABEL_7:
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  cf = Mutable;
  v15 = *(a1 + 120);
  if (v15 > 0xF)
  {
    v16 = "";
  }

  else
  {
    v16 = off_101E44980[v15];
  }

  CFStringAppendFormat(Mutable, 0, @"%s", v16);
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  *keys = 0u;
  *v77 = 0u;
  v78 = 0u;
  v64 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  keys[0] = kIPConfigurationServiceOptionMTU;
  v77[0] = v64;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  theDict = 0;
  if (CSIPacketAddress::isZeroIP(a3))
  {
    v17 = 1;
  }

  else
  {
    v57[0] = 0;
    v57[1] = 0;
    v58 = 0;
    CSIPacketAddress::operator std::string();
    *__dst = *v57;
    v56 = 0;
    *__p = *v57;
    v39 = 0;
    v69 = 0;
    *buf = *v57;
    v71 = 0;
    values[0] = 0;
    if (ctu::cf::convert_copy())
    {
      v18 = v69;
      v69 = values[0];
      v52[0] = v18;
      sub_100005978(v52);
    }

    if (SHIBYTE(v71) < 0)
    {
      operator delete(*buf);
    }

    v68 = v69;
    v69 = 0;
    sub_100005978(&v69);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p[0]);
    }

    *buf = v63;
    v63 = v68;
    v68 = 0;
    sub_100005978(buf);
    sub_100005978(&v68);
    if (SHIBYTE(v56) < 0)
    {
      operator delete(__dst[0]);
    }

    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v57;
      if (v58 < 0)
      {
        v20 = v57[0];
      }

      *buf = 136315138;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I IPv4Service is going up with address %s", buf, 0xCu);
    }

    v21 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v22 = theDict;
    theDict = v21;
    *buf = v22;
    sub_1000296E0(buf);
    CFDictionarySetValue(theDict, kSCPropNetIPv4ConfigMethod, kSCValNetIPv4ConfigMethodManual);
    values[0] = v63;
    values[1] = 0;
    v54 = 0;
    v54 = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
    CFDictionarySetValue(theDict, kSCPropNetIPv4Addresses, v54);
    if ((CSIPacketAddress::isZeroIP(a4) & 1) == 0)
    {
      v52[0] = 0;
      v52[1] = 0;
      v53 = 0;
      CSIPacketAddress::operator std::string();
      if (SHIBYTE(v53) < 0)
      {
        sub_100005F2C(v49, v52[0], v52[1]);
      }

      else
      {
        *v49 = *v52;
        v50 = v53;
      }

      if (SHIBYTE(v50) < 0)
      {
        sub_100005F2C(__p, v49[0], v49[1]);
      }

      else
      {
        *__p = *v49;
        v39 = v50;
      }

      v67 = 0;
      if (SHIBYTE(v39) < 0)
      {
        sub_100005F2C(buf, __p[0], __p[1]);
      }

      else
      {
        *buf = *__p;
        v71 = v39;
      }

      v68 = 0;
      if (ctu::cf::convert_copy())
      {
        v23 = v67;
        v67 = v68;
        v69 = v23;
        sub_100005978(&v69);
      }

      if (SHIBYTE(v71) < 0)
      {
        operator delete(*buf);
      }

      v51 = v67;
      v67 = 0;
      sub_100005978(&v67);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p[0]);
      }

      *buf = v62;
      v62 = v51;
      v51 = 0;
      sub_100005978(buf);
      sub_100005978(&v51);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49[0]);
      }

      v24 = *(a1 + 40);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v52;
        if (SHIBYTE(v53) < 0)
        {
          v25 = v52[0];
        }

        *buf = 136315138;
        *&buf[4] = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I IPv4Service is going up with broadcastAddr %s", buf, 0xCu);
      }

      values[0] = v62;
      *buf = 0;
      *buf = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
      CFDictionarySetValue(theDict, kSCPropNetIPv4DestAddresses, *buf);
      sub_100010250(buf);
      if (SHIBYTE(v53) < 0)
      {
        operator delete(v52[0]);
      }
    }

    v52[0] = 0;
    v52[1] = 0;
    v53 = 0;
    sub_10000501C(v52, "255.255.255.255");
    if (SHIBYTE(v53) < 0)
    {
      sub_100005F2C(v47, v52[0], v52[1]);
    }

    else
    {
      *v47 = *v52;
      v48 = v53;
    }

    if (SHIBYTE(v48) < 0)
    {
      sub_100005F2C(__p, v47[0], v47[1]);
    }

    else
    {
      *__p = *v47;
      v39 = v48;
    }

    v67 = 0;
    if (SHIBYTE(v39) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      v71 = v39;
    }

    v68 = 0;
    if (ctu::cf::convert_copy())
    {
      v26 = v67;
      v67 = v68;
      v69 = v26;
      sub_100005978(&v69);
    }

    if (SHIBYTE(v71) < 0)
    {
      operator delete(*buf);
    }

    v51 = v67;
    v67 = 0;
    sub_100005978(&v67);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p[0]);
    }

    *buf = v61;
    v61 = v51;
    v51 = 0;
    sub_100005978(buf);
    sub_100005978(&v51);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47[0]);
    }

    v27 = *(a1 + 40);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v52;
      if (SHIBYTE(v53) < 0)
      {
        v28 = v52[0];
      }

      *buf = 136315138;
      *&buf[4] = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I IPv4Service is going up with subnetMask %s", buf, 0xCu);
    }

    values[0] = v61;
    *buf = 0;
    *buf = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
    CFDictionarySetValue(theDict, kSCPropNetIPv4SubnetMasks, *buf);
    keys[1] = kIPConfigurationServiceOptionIPv4Entity;
    v77[1] = theDict;
    sub_100010250(buf);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52[0]);
    }

    sub_100010250(&v54);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57[0]);
    }

    v17 = 2;
  }

  v57[0] = 0;
  v57[1] = 0;
  sub_100473238(a1, v57);
  if (v57[0])
  {
    if (*(v57[0] + 71) < 0)
    {
      sub_100005F2C(v45, *(v57[0] + 6), *(v57[0] + 7));
    }

    else
    {
      *v45 = *(v57[0] + 3);
      v46 = *(v57[0] + 8);
    }

    if (SHIBYTE(v46) < 0)
    {
      sub_100005F2C(__p, v45[0], v45[1]);
    }

    else
    {
      *__p = *v45;
      v39 = v46;
    }

    v69 = 0;
    if (SHIBYTE(v39) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      v71 = v39;
    }

    values[0] = 0;
    if (ctu::cf::convert_copy())
    {
      v29 = v69;
      v69 = values[0];
      v52[0] = v29;
      sub_100005978(v52);
    }

    if (SHIBYTE(v71) < 0)
    {
      operator delete(*buf);
    }

    v68 = v69;
    v69 = 0;
    sub_100005978(&v69);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p[0]);
    }

    *buf = v60;
    v60 = v68;
    v68 = 0;
    sub_100005978(buf);
    sub_100005978(&v68);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }

    v30 = v60;
    if (v60)
    {
      keys[v17] = kIPConfigurationServiceOptionAPNName;
      v77[v17++] = v30;
    }
  }

  if (v57[1])
  {
    sub_100004A34(v57[1]);
  }

  if (isSliceMask(a6) && sub_10047CB6C(a1))
  {
    keys[v17] = kIPConfigurationServiceOptionEnableL4S;
    v77[v17++] = kCFBooleanTrue;
  }

  values[0] = 0;
  v31 = CFDictionaryCreate(kCFAllocatorDefault, keys, v77, v17, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  values[0] = v31;
  v44 = v31;
  if (v31)
  {
    CFRetain(v31);
  }

  sub_100472F48(a1, "IPv4Service: ip dict: bringUpIPv4Interface_sync", &v44);
  sub_10001021C(&v44);
  sub_100475C48(a1, a1 + 296, 2u);
  v32 = atomic_load((a1 + 712));
  v33 = *(a1 + 40);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I IPv4Service: new counter = %u", buf, 8u);
  }

  atomic_fetch_add((a1 + 712), 1u);
  v74 = 0;
  v75 = 0;
  v73 = 0;
  *buf = a1;
  sub_100004AA0(__p, (a1 + 8));
  v35 = __p[0];
  v34 = __p[1];
  *&buf[8] = __p[0];
  v71 = __p[1];
  if (__p[1])
  {
    atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
    sub_100004A34(v34);
  }

  v36 = cf;
  v72 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v37 = values[0];
  v73 = values[0];
  if (values[0])
  {
    CFRetain(values[0]);
  }

  v74 = a1 + 296;
  LODWORD(v75) = v32;
  __p[0] = a1;
  __p[1] = v35;
  v39 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v40 = v36;
  if (v36)
  {
    CFRetain(v36);
  }

  v41 = v37;
  if (v37)
  {
    CFRetain(v37);
  }

  v42 = v74;
  v43 = v75;
  operator new();
}

void sub_10047DBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, const void *a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, const void *a54, const void *a55, const void *a56, const void *a57, const void *a58, const void *a59, const void *a60, uint64_t a61, const void *a62)
{
  sub_100005978(&a62);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  sub_100010250(&a43);
  if (a53 < 0)
  {
    operator delete(a48);
  }

  sub_1000296E0(&a54);
  sub_100005978(&a55);
  sub_100005978(&a56);
  sub_100005978(&a57);
  sub_100005978(&a58);
  sub_100029A48(&a59);
  sub_100305E28(&a60);
  _Unwind_Resume(a1);
}

void sub_10047DE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received callback for IPv4 SCDynamicStore change at object: %p, ipv4ServiceChanged to be called", &v5, 0xCu);
  }

  sub_100475F38(a3);
}

void sub_10047DEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received callback for IPv6 SCDynamicStore change at object: %p, ipv6ServiceChanged to be called", &v5, 0xCu);
  }

  sub_100476DB0(a3, 0);
}

uint64_t sub_10047DF64(uint64_t a1, const CSIPacketAddress *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100486660(a1, a2);
  }

  else
  {
    CSIPacketAddress::CSIPacketAddress(*(a1 + 8), a2);
    result = v3 + 24;
    *(a1 + 8) = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_10047DFB8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 768);
  if (!v4 || (v5 = std::__shared_weak_count::lock(v4)) == 0 || (v6 = *(a1 + 760)) == 0)
  {
LABEL_7:
    v8 = 0uLL;
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  (*(*v6 + 32))(v6);
  if ((DataUtils::validPersonality() & 1) == 0)
  {
    v7 = a2[1];
    if (v7)
    {
      sub_100004A34(v7);
    }

    goto LABEL_7;
  }

  sub_100004A34(v5);
}

void sub_10047E0C8(_Unwind_Exception *a1)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10047E0FC(uint64_t a1)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  CSIPDPManager::getInterfaceNameById();
  v22 = 0;
  v2 = getifaddrs(&v22);
  v3 = v22;
  v4 = 0;
  if (v2)
  {
    if (v22)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (!v22)
  {
    goto LABEL_40;
  }

  do
  {
    ifa_addr = v3->ifa_addr;
    if (!ifa_addr || ifa_addr->sa_family != 2)
    {
      goto LABEL_29;
    }

    sub_10000501C(&__p, v3->ifa_name);
    if (v25 >= 0)
    {
      v6 = HIBYTE(v25);
    }

    else
    {
      v6 = v24;
    }

    v7 = HIBYTE(v21);
    v8 = SHIBYTE(v21);
    if (v21 < 0)
    {
      v7 = v20;
    }

    if (v6 == v7)
    {
      if (v25 >= 0)
      {
        v9 = &v23;
      }

      else
      {
        v9 = v23;
      }

      if (v21 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v11 = memcmp(v9, p_p, v6) == 0;
      if ((v8 & 0x80000000) == 0)
      {
LABEL_22:
        if (!v11)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v11 = 0;
      if ((SHIBYTE(v21) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p);
    if (!v11)
    {
      goto LABEL_29;
    }

LABEL_25:
    v12 = v3->ifa_addr;
    __p = 0;
    v20 = 0;
    v21 = 0;
    v13.s_addr = *&v12->sa_data[2];
    v14 = inet_ntoa(v13);
    sub_10000501C(&__p, v14);
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      if (v21 >= 0)
      {
        v16 = &__p;
      }

      else
      {
        v16 = __p;
      }

      if (v25 >= 0)
      {
        v17 = &v23;
      }

      else
      {
        v17 = v23;
      }

      *buf = 136446466;
      v27 = v16;
      v28 = 2080;
      v29 = v17;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "IPv4 address %{public}s already configured on %s", buf, 0x16u);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }

    v4 = 1;
LABEL_29:
    v3 = v3->ifa_next;
  }

  while (v3);
  v3 = v22;
  if (v22)
  {
LABEL_39:
    freeifaddrs(v3);
  }

LABEL_40:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }

  return v4 & 1;
}

void sub_10047E338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10047E360(void *a1, unsigned int a2, CSIPacketAddress *a3, CSIPacketAddress *a4, const CSIPacketAddress **a5, uint64_t a6, unint64_t a7, int a8, int a9, char a10, char a11)
{
  if ((*(a1 + 780) & 1) == 0)
  {
    v25 = a1[5];
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 0;
    v26 = "#E too early start";
LABEL_11:
    v27 = v25;
    v28 = 2;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    return 0;
  }

  ServiceMap = Registry::getServiceMap(a1[6]);
  v16 = ServiceMap;
  if (v17 < 0)
  {
    v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(ServiceMap);
  *buf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, buf);
  v70 = a7;
  if (!v21)
  {
    v22 = 0;
LABEL_14:
    std::mutex::unlock(v16);
    v23 = 0;
    v24 = 1;
    if (!v22)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v22 = v21[3];
  v23 = v21[4];
  if (!v23)
  {
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v16);
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v23);
  v24 = 0;
  if (!v22)
  {
LABEL_20:
    v30 = 1;
    if ((v24 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (!v30)
    {
      return 0;
    }

    goto LABEL_22;
  }

LABEL_15:
  if (!(*(*v22 + 208))(v22))
  {
    goto LABEL_20;
  }

  v29 = a1[5];
  v30 = 0;
  if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  *buf = 0;
  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E start during reset", buf, 2u);
  v30 = 0;
  if (v24)
  {
    goto LABEL_18;
  }

LABEL_21:
  sub_100004A34(v23);
  if (!v30)
  {
    return 0;
  }

LABEL_22:
  if (!a1[16])
  {
    v25 = a1[5];
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 0;
    v26 = "#E service ID not ready";
    goto LABEL_11;
  }

  v68 = a4;
  (*(*a1 + 24))(a1, a1 + 34, a1 + 276, a1 + 35, a1 + 284);
  if (a8 == 1)
  {
    v31 = 37;
LABEL_31:
    v71 = &a1[v31];
    if (LODWORD(a1[v31 + 15]) == 2)
    {
      v32 = 61;
      if (a8 == 1)
      {
        v32 = 37;
      }

      LOBYTE(a1[v32 + 14]) = a10;
      v33 = "IPv6Service: ";
    }

    else
    {
      v33 = "IPv4Service: ";
    }

    v34 = a1[5];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      CSIPacketAddress::operator std::string();
      v35 = v88[23];
      v36 = *v88;
      CSIPacketAddress::operator std::string();
      v37 = v88;
      if (v35 < 0)
      {
        v37 = v36;
      }

      if (v81 >= 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = v33;
      v83 = 2080;
      *v84 = v37;
      *&v84[8] = 2080;
      v85 = v38;
      v86 = 1024;
      LODWORD(v87) = a8;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %sgoing online with IP %s, LLA %s, ipFamily %u", buf, 0x26u);
      if (v81 < 0)
      {
        operator delete(__p[0]);
      }

      if (v88[23] < 0)
      {
        operator delete(*v88);
      }
    }

    v40 = *a5;
    v39 = a5[1];
    if (*a5 != v39)
    {
      do
      {
        v41 = a1[5];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          CSIPacketAddress::operator std::string();
          v42 = v84[9] >= 0 ? buf : *buf;
          *v88 = 136315394;
          *&v88[4] = v33;
          *&v88[12] = 2082;
          *&v88[14] = v42;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %sgoing online with DNS %{public}s", v88, 0x16u);
          if ((v84[9] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        v40 = (v40 + 24);
      }

      while (v40 != v39);
    }

    if (CSIPacketAddress::isZeroIP(a3))
    {
      if (*(v71 + 120) != 2)
      {
        __TUAssertTrigger();
      }

      v43 = a1[5];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I going online with IPv6Service", buf, 2u);
      }
    }

    memset(v88, 0, 24);
    CSIPacketAddress::CSIPacketAddress(v88, a3);
    __p[0] = 0;
    v44 = *(v71 + 116);
    if (v44 != 1)
    {
      v52 = a1[5];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        if (v44 > 4)
        {
          v53 = "???";
        }

        else
        {
          v53 = off_101E4EF98[v44];
        }

        isZeroIP = CSIPacketAddress::isZeroIP((v71 + 40));
        v59 = asStringBool(isZeroIP);
        v60 = (v71 + 152);
        if (*(v71 + 175) < 0)
        {
          v60 = *v60;
        }

        *buf = 136315906;
        *&buf[4] = v33;
        v83 = 2080;
        *v84 = v53;
        *&v84[8] = 2080;
        v85 = v59;
        v86 = 2082;
        v87 = v60;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#N %sCannot go online because we are not offline, the state is: %s; current ip is empty: %s; last error reason = %{public}s", buf, 0x2Au);
        v44 = *(v71 + 116);
      }

      if (v44 == 4 && !CSIPacketAddress::isZeroIP((v71 + 40)))
      {
        if (*(v71 + 120) == 2)
        {
          sub_100479C74(a1);
        }

        v50 = 1;
        goto LABEL_107;
      }

      v61 = a1[5];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v33;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#E %sFailed activation, trying to recover ==>>", buf, 0xCu);
      }

      sub_10047EE94(a1, *(v71 + 120), 1);
      v62 = a1[5];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v33;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#E <<== %sFailed activation, recovery over", buf, 0xCu);
      }

LABEL_103:
      v50 = 0;
LABEL_107:
      sub_100486958(__p);
      return v50;
    }

    if (*(v71 + 120) != 2 && sub_10047E0FC(a1))
    {
      v45 = a1[5];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I force removing all IPv4 addresses from the interface", buf, 2u);
      }

      sub_100478C1C(a1);
    }

    if (a9 == 1 && (v46 = *(v71 + 124)) != 0)
    {
      v47 = a1[5];
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_81;
      }

      *buf = 136315650;
      *&buf[4] = v33;
      v83 = 1024;
      *v84 = 1;
      *&v84[4] = 1024;
      *&v84[6] = v46;
      v48 = "#I %sReason for going online is resume(%d). Using last known MTU %d";
    }

    else
    {
      sub_100473238(a1, &v78);
      v46 = sub_10047F118(a1, &v78, v71);
      if (v79)
      {
        sub_100004A34(v79);
      }

      *(v71 + 124) = v46;
      v47 = a1[5];
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_81;
      }

      *buf = 136315650;
      *&buf[4] = v33;
      v83 = 1024;
      *v84 = a9;
      *&v84[4] = 1024;
      *&v84[6] = v46;
      v48 = "#I %sReason for going online is not resume(%d) or there is no last known MTU. Using current RAT MTU %d";
    }

    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, v48, buf, 0x18u);
LABEL_81:
    sub_10047A3A4(a1, a5, v71, v33);
    sub_10047A99C(a1, a5, v71);
    sub_10047ACCC(v54, a5, v71);
    if (*(v71 + 64) != *(v71 + 72))
    {
      goto LABEL_88;
    }

    v55 = 37;
    if (*(v71 + 120) == 1)
    {
      v55 = 61;
    }

    if (a1[v55 + 8] != a1[v55 + 9])
    {
      goto LABEL_88;
    }

    sub_100473238(a1, &v76);
    v56 = sub_10047F230(a1, &v76);
    if (v77)
    {
      sub_100004A34(v77);
    }

    if (v56)
    {
LABEL_88:
      sub_100473238(a1, &v74);
      sub_1004757F8(a1, &v74);
      if (v75)
      {
        sub_100004A34(v75);
      }

      if (*(v71 + 120) == 2)
      {
        sub_10047BCA4(a1, a2, a3, v68, v46, a11, v70);
      }

      sub_10047CFD8(a1, v57, a3, v88, v46, v70);
    }

    v63 = a1[5];
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#E empty DNS not allowed. abort bringupOnline", buf, 2u);
    }

    v64 = a1[96];
    if (v64)
    {
      v65 = std::__shared_weak_count::lock(v64);
      if (v65)
      {
        v66 = v65;
        v67 = a1[95];
        if (v67)
        {
          (*(*v67 + 72))(v67, a2);
        }

        sub_100004A34(v66);
      }
    }

    goto LABEL_103;
  }

  if (a8 == 2)
  {
    v31 = 61;
    goto LABEL_31;
  }

  v49 = a1[5];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a8;
    v26 = "#E no IP model available: family=%u";
    v27 = v49;
    v28 = 8;
    goto LABEL_12;
  }

  return 0;
}

void sub_10047EDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_100004A34(v16);
  sub_100486958(va);
  _Unwind_Resume(a1);
}

void sub_10047EE94(void *a1, int a2, char a3)
{
  if (a2 == 1)
  {
    v5 = 37;
    goto LABEL_5;
  }

  if (a2 == 2)
  {
    v5 = 61;
LABEL_5:
    v6 = &a1[v5];
    v7 = a1[5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v6 + 120);
      *buf = 67109120;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I going offline, fIPFamily %u", buf, 8u);
    }

    (*(*a1 + 24))(a1, a1 + 34, a1 + 276, a1 + 35, a1 + 284);
    if (*(v6 + 116) == 4 || (a3 & 1) != 0)
    {
      if (*(v6 + 120) == 2)
      {
        sub_1004793DC(a1);
      }

      else
      {
        sub_100478C1C(a1);
      }
    }

    else
    {
      v9 = a1[5];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v6 + 120);
        *buf = 67109120;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I already offline for IPfamily %u", buf, 8u);
      }
    }

    sub_10000501C(&__p, "0.0.0.0");
    CSIPacketAddress::CSIPacketAddress();
    CSIPacketAddress::operator=();
    if (v14 < 0)
    {
      operator delete(__p);
    }

    *(v6 + 72) = *(v6 + 64);
    sub_100478DF8(a1, *(v6 + 120));
    if (*(v6 + 116) != 1)
    {
      sub_100475C48(a1, v6, 1u);
      v11 = a1[5];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v6 + 120);
        *buf = 67109120;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I is offline for IPfamily %u", buf, 8u);
      }
    }

    return;
  }

  if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
  {
    sub_101771CE0();
  }
}

void sub_10047F0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10047F118(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = *(v6 + 256);
  if (v5)
  {
LABEL_5:
    sub_100004A34(v5);
  }

LABEL_6:
  if (!a3 || (v7 & 1) == 0 || (v8 = *(a3 + 128), !v8))
  {
    v8 = sub_100484E98(a1);
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = asString();
    v13 = 1024;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I computed MTU[%s]: %u", &v11, 0x12u);
  }

  return v8;
}

uint64_t sub_10047F230(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2 || *(v2 + 232) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 120);
    v6 = *(v2 + 148);
    v8[0] = 67109376;
    v8[1] = v5;
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I pdp%d, APN %d allows no DNS", v8, 0xEu);
  }

  return 1;
}

void sub_10047F308(uint64_t a1, int a2)
{
  sub_10047EE94(a1, a2, 0);
  if (a2 == 2)
  {
    if (*(a1 + 433) == 1 && *(a1 + 432) == 1)
    {
      sub_10047EE94(a1, 1, 0);
    }

    *(a1 + 432) = 0;

    sub_10047973C(a1 + 432);
  }
}

uint64_t sub_10047F388(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10)
{
  if (a8 == 1)
  {
    v18 = 37;
  }

  else
  {
    if (a8 != 2)
    {
      return 0;
    }

    v18 = 61;
  }

  v19 = &a1[v18];
  v20 = a1[5];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(v19 + 120);
    *buf = 67109120;
    v29 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I going reset, fIPFamily %u", buf, 8u);
  }

  (*(*a1 + 16))(a1);
  if (*(v19 + 120) == 2)
  {
    sub_1004793DC(a1);
  }

  else
  {
    sub_100478C1C(a1);
  }

  sub_10000501C(&__p, "0.0.0.0");
  CSIPacketAddress::CSIPacketAddress();
  CSIPacketAddress::operator=();
  if (v27 < 0)
  {
    operator delete(__p);
  }

  *(v19 + 72) = *(v19 + 64);
  sub_100478DF8(a1, *(v19 + 120));
  if (*(v19 + 116) != 1)
  {
    sub_100475C48(a1, v19, 1u);
    v23 = a1[5];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(v19 + 120);
      *buf = 67109120;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I is offline (to restart) for IPfamily %u", buf, 8u);
    }
  }

  WORD2(v25) = a10;
  LODWORD(v25) = a9;
  return (*(*a1 + 64))(a1, a2, a3, a4, a5, a6, a7, a8, v25);
}

void sub_10047F5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047F608(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10047F714;
  v3[3] = &unk_101E4EAA0;
  v3[4] = a1;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100487A44;
  block[3] = &unk_101E4ED90;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10047F74C(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v26 = 0;
  v10 = getifaddrs(&v26);
  std::mutex::lock((a1 + 208));
  *a5 = 0;
  *a4 = 0;
  *a3 = 0;
  *a2 = 0;
  if (v26)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_31;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_10000501C(&v23, "");
  CSIPDPManager::getInterfaceNameById();
  v12 = v26;
  if (v26)
  {
    while (1)
    {
      ifa_addr = v12->ifa_addr;
      if (!ifa_addr || ifa_addr->sa_family != 18)
      {
        goto LABEL_26;
      }

      sub_10000501C(__p, v12->ifa_name);
      if (v25 >= 0)
      {
        v14 = HIBYTE(v25);
      }

      else
      {
        v14 = v24;
      }

      v15 = v22;
      v16 = v22;
      if ((v22 & 0x80u) != 0)
      {
        v15 = __p[1];
      }

      if (v14 != v15)
      {
        break;
      }

      if (v25 >= 0)
      {
        v17 = &v23;
      }

      else
      {
        v17 = v23;
      }

      if ((v22 & 0x80u) == 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      v19 = memcmp(v17, v18, v14) == 0;
      if (v16 < 0)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (v19)
      {
        ifa_data = v12->ifa_data;
        *a2 = ifa_data[7] - *(a1 + 272);
        *a3 = ifa_data[5] - *(a1 + 276);
        *a4 = ifa_data[11] - *(a1 + 280);
        *a5 = ifa_data[10] - *(a1 + 284);
        goto LABEL_29;
      }

LABEL_26:
      v12 = v12->ifa_next;
      if (!v12)
      {
        goto LABEL_29;
      }
    }

    v19 = 0;
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    operator delete(__p[0]);
    goto LABEL_25;
  }

LABEL_29:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }

LABEL_31:
  std::mutex::unlock((a1 + 208));
  if (v26)
  {
    freeifaddrs(v26);
  }
}

void sub_10047F914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v18 + 208));
  _Unwind_Resume(a1);
}

const void **sub_10047F944@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  result = sub_10005C7A4(a2, (a1 + 128));
  if (!*a2)
  {
    sub_100472AD4(a1, &v7);
    if (&v7 != a2)
    {
      v5 = *a2;
      *a2 = v7;
      v7 = 0;
      v8 = v5;
      sub_100005978(&v8);
    }

    result = sub_100005978(&v7);
    if (*a2)
    {
      sub_10005C7A4(&v6, a2);
      sub_100473880(a1, &v6);
      return sub_100005978(&v6);
    }
  }

  return result;
}

void sub_10047F9F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  sub_100005978(v2);
  _Unwind_Resume(a1);
}

void sub_10047FA14(uint64_t a1, _BOOL4 a2, int a3)
{
  v4 = a2;
  if (a2)
  {
    *(a1 + 680) = asWirelessTechnology();
    *(a1 + 684) = a3;
  }

  sub_1004730B0(a1, &v10);
  sub_1004757F8(a1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asStringBool(v4);
    v8 = asString();
    v9 = *(a1 + 776);
    *buf = 136315650;
    v13 = v7;
    v14 = 2080;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I dataModeChange: %s, dataMode: %s, MTU: %u", buf, 0x1Cu);
  }
}

void sub_10047FB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047FB48(uint64_t a1, char a2, int a3)
{
  sub_100004AA0(&v6 + 1, (a1 + 8));
  v7 = a2;
  v8 = a3;
  v9[0] = 0;
  v9[1] = 0;
  sub_100004AA0(v9, (a1 + 8));
  operator new();
}

void sub_10047FC6C(uint64_t a1, char a2, char a3, int a4)
{
  sub_100004AA0(&v8 + 1, (a1 + 8));
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12[0] = 0;
  v12[1] = 0;
  sub_100004AA0(v12, (a1 + 8));
  operator new();
}

uint64_t sub_10047FD9C(uint64_t a1)
{
  v17 = 0;
  v18 = 0;
  sub_10047DFB8(a1, &v17);
  cf = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  v19 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v19);
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
  (*(*v10 + 96))(&cf, v10, *(v17 + 52), 1, @"PreferPrimaryDNS", kCFBooleanFalse, 0);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v12 = cf;
  LOBYTE(v19) = 0;
  if (cf)
  {
    v13 = CFGetTypeID(cf);
    if (v13 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v19, v12, v14);
      LOBYTE(v12) = v19;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  sub_10000A1EC(&cf);
  if (v18)
  {
    sub_100004A34(v18);
  }

  return v12 & 1;
}

void sub_10047FF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  v13 = v11;
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10047FF70()
{
  ctu::cf::assign();
  v1 = 0uLL;
  v2 = 0;
  CSIPacketAddress::CSIPacketAddress();
  if (CSIPacketAddress::toIPv4(&v1) == -1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_10047FFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10048001C@<X0>(uint64_t a1@<X0>, CFMutableDictionaryRef *a2@<X8>)
{
  *a2 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = *a2;
  *a2 = Mutable;
  __p[0] = v5;
  result = sub_1000296E0(__p);
  if (*a2)
  {
    v21 = 0;
    CSIPacketAddress::operator std::string();
    if (v20 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = CFStringCreateWithCString(kCFAllocatorDefault, v7, 0x8000100u);
    v21 = v8;
    if (v20 < 0)
    {
      operator delete(__p[0]);
      v8 = v21;
      if (!v21)
      {
        return sub_100005978(&v21);
      }
    }

    else if (!v8)
    {
      return sub_100005978(&v21);
    }

    __p[0] = v8;
    v9 = CFArrayCreate(kCFAllocatorDefault, __p, 1, &kCFTypeArrayCallBacks);
    v18 = v9;
    if (v9)
    {
      CFDictionarySetValue(*a2, kSCPropNetIPv4Addresses, v9);
      CFDictionarySetValue(*a2, kSCPropNetIPv4Router, __p[0]);
      values = @"255.255.255.255";
      v10 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      v16 = v10;
      if (v10)
      {
        CFDictionarySetValue(*a2, kSCPropNetIPv4SubnetMasks, v10);
        v11 = *(a1 + 120);
        if (v11 > 0xF)
        {
          v12 = "";
        }

        else
        {
          v12 = off_101E44980[v11];
        }

        v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s", v12);
        v15 = v13;
        if (v13)
        {
          CFDictionarySetValue(*a2, kSCPropInterfaceName, v13);
          sub_100010180(&v14, a2);
          sub_100472F48(a1, "createSCDictForIPv4: ip dict", &v14);
          sub_10001021C(&v14);
        }

        sub_100005978(&v15);
      }

      sub_100010250(&v16);
    }

    sub_100010250(&v18);
    return sub_100005978(&v21);
  }

  return result;
}

void sub_10048022C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, const void *a12, uint64_t a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_10001021C(&a10);
  sub_100005978(&a11);
  sub_100010250(&a12);
  sub_100010250(&a14);
  sub_100005978((v21 - 40));
  sub_1000296E0(v20);
  _Unwind_Resume(a1);
}

void sub_1004802B4(uint64_t a1, WirelessTechnologyList *a2)
{
  v29 = 0;
  cf = 0;
  v27 = 0;
  v28 = 0;
  sub_100473238(a1, &v27);
  if (v27)
  {
    sub_10029FEBC(v27, 0, buf);
    *&__p = cf;
    cf = *buf;
    *buf = 0;
    sub_10001021C(&__p);
    sub_10001021C(buf);
    v4 = *(v27 + 248);
    if (v4)
    {
      Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v4);
      v6 = v29;
      v29 = Copy;
      *&__p = v6;
      sub_10001021C(&__p);
    }
  }

  if (!*(a1 + 120) && (*a2 & 8) != 0)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
    *&__p = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &__p);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        if (!v15)
        {
LABEL_26:
          sub_100004A34(v14);
          goto LABEL_27;
        }
      }

      else
      {
        std::mutex::unlock(v8);
        if (!v15)
        {
          goto LABEL_27;
        }
      }

      __p = 0uLL;
      sub_10047DFB8(a1, buf);
      (*(*v15 + 16))(&__p, v15, *(*buf + 52));
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (__p && (*(*__p + 88))(__p))
      {
        theDict = 0;
        (*(*__p + 72))(&theDict);
        if (theDict)
        {
          *buf = CFDictionaryGetValue(theDict, @"ProxyConfiguration");
          sub_100482828(&v29, buf);
        }

        else
        {
          v16 = v29;
          v29 = 0;
          *buf = v16;
          sub_10001021C(buf);
        }

        sub_10001021C(&theDict);
      }

      if (*(&__p + 1))
      {
        sub_100004A34(*(&__p + 1));
      }

      if (v14)
      {
        goto LABEL_26;
      }
    }

    else
    {
      std::mutex::unlock(v8);
    }
  }

LABEL_27:
  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    WirelessTechnologyList::asString(&__p, a2);
    v18 = v21 >= 0 ? &__p : __p;
    *buf = 136446210;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I writeCurrentApnInfoToSystemConfig_sync: schedule start: technology %{public}s", buf, 0xCu);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }
  }

  sub_100004AA0(buf, (a1 + 8));
  v19 = *&buf[8];
  __p = *buf;
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v19);
  }

  v21 = a1;
  v22 = *a2;
  v23 = v27;
  v24 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v26 = v29;
  if (v29)
  {
    CFRetain(v29);
  }

  operator new();
}

void sub_100480704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, const void *);
  if (a4)
  {
    sub_100004A34(a4);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10001021C(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1004807AC(uint64_t a1)
{
  serviceID = 0;
  sub_10047F944(a1, &serviceID);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, serviceID, @"com.apple.CommCenter");
  v15 = NetworkServiceEntity;
  if (NetworkServiceEntity)
  {
    theDict = 0;
    *buf = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
    sub_100138C38(&theDict, buf);
    if (theDict)
    {
      number = 0;
      *buf = CFDictionaryGetValue(theDict, @"Available");
      sub_1002AF4F0(&number, buf);
      if (number)
      {
        valuePtr = 0;
        Value = CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
        v4 = *(a1 + 40);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = valuePtr;
          v6 = asStringBool(Value != 0);
          *buf = 67109378;
          *&buf[4] = v5;
          v18 = 2080;
          v19 = v6;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I  kSCPropNetCommCenterAvailable Value = %d, retreival result = %s", buf, 0x12u);
        }

        if (valuePtr)
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }
      }

      else
      {
        v10 = *(a1 + 40);
        v7 = 0;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No key kSCPropNetCommCenterAvailable value", buf, 2u);
          v7 = 0;
        }
      }

      sub_100029A48(&number);
    }

    else
    {
      v9 = *(a1 + 40);
      v7 = 0;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I dictionary com.apple.CommCenter in State:// is not present", buf, 2u);
        v7 = 0;
      }
    }

    sub_10001021C(&theDict);
  }

  else
  {
    v8 = *(a1 + 40);
    v7 = 0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I SC (service) key is not present", buf, 2u);
      v7 = 0;
    }
  }

  sub_100005978(&v15);
  sub_100005978(&serviceID);
  return v7;
}

void sub_100480A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  sub_100029A48(va);
  sub_10001021C(va1);
  sub_100005978(va2);
  sub_100005978(va3);
  _Unwind_Resume(a1);
}

uint64_t sub_100480A64(uint64_t a1)
{
  v1 = 0;
  v5 = 0x200000001;
  while (1)
  {
    v2 = *(&v5 + v1);
    if (v2 == 1)
    {
      break;
    }

    if (v2 == 2)
    {
      v3 = 488;
      goto LABEL_6;
    }

LABEL_7:
    v1 += 4;
    if (v1 == 8)
    {
      return 0;
    }
  }

  v3 = 296;
LABEL_6:
  if (*(a1 + 116 + v3) != 4)
  {
    goto LABEL_7;
  }

  return 1;
}

BOOL sub_100480B08(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109376;
    v15 = a2;
    v16 = 1024;
    v17 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I (PDPManagerInterface::ifstatus = %d, Boolean newstate =%d", &v14, 0xEu);
  }

  if (a2)
  {
    if (a3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = v7 == a2;
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      v15 = v7 == a2;
      v10 = "#I returning value %d";
      v11 = v9;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, 8u);
    }
  }

  else
  {
    v12 = *(a1 + 40);
    v8 = 1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      v15 = 1;
      v10 = "#I returning value PDPManagerInterface::ifstatus =  unknown %d";
      v11 = v12;
      goto LABEL_11;
    }
  }

  return v8;
}

unint64_t sub_100480C70(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  __p[0] = v4;
  v8 = sub_100009510((v3 + 64), __p);
  if (!v8)
  {
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
  if (!v10)
  {
LABEL_7:
    v3 = 0;
    goto LABEL_40;
  }

LABEL_10:
  if (*(a1 + 684) != 0 && *(a1 + 684) < 0xFFFFFFFE)
  {
LABEL_38:
    sub_10047DFB8(a1, __p);
    v3 = (*(*v10 + 152))(v10, *(__p[0] + 13), *(a1 + 684));
    if (__p[1])
    {
      sub_100004A34(__p[1]);
    }

    goto LABEL_40;
  }

  v24 = 0;
  v25 = 0;
  sub_100473238(a1, &v24);
  v22 = 0;
  v23 = 0;
  sub_10047DFB8(a1, &v22);
  v12 = 1;
  if (v24 && v22 && *(v24 + 233) == 1)
  {
    v21 = 14;
    memset(__p, 0, sizeof(__p));
    v13 = sub_10048698C(__p, &v21, &v22, 1uLL);
    if (capabilities::ct::supports5G(v13))
    {
      v21 = 17;
      sub_1001FDFFC(__p, &v21);
      v21 = 16;
      sub_1001FDFFC(__p, &v21);
    }

    v14 = __p[0];
    v15 = __p[1];
    if (__p[0] == __p[1])
    {
      v3 = 0;
      if (!__p[0])
      {
LABEL_29:
        if (v3)
        {
          v18 = *(a1 + 40);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = asString();
            LODWORD(__p[0]) = 136315394;
            *(__p + 4) = v19;
            WORD2(__p[1]) = 2048;
            *(&__p[1] + 6) = v3;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I DataMode unknown: %s, using min(LTE/5G) mtu: %lu", __p, 0x16u);
          }

          v12 = 0;
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_33;
      }
    }

    else
    {
      LODWORD(v3) = 0;
      do
      {
        v16 = (*(*v10 + 152))(v10, *(v22 + 52), *v14);
        if (v3 >= v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = v3;
        }

        if (!v3)
        {
          v17 = v16;
        }

        if (v16)
        {
          v3 = v17;
        }

        else
        {
          v3 = v3;
        }

        ++v14;
      }

      while (v14 != v15);
      v14 = __p[0];
      if (!__p[0])
      {
        goto LABEL_29;
      }
    }

    __p[1] = v14;
    operator delete(v14);
    goto LABEL_29;
  }

LABEL_33:
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v12)
  {
    goto LABEL_38;
  }

LABEL_40:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  return v3;
}

void sub_100480FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10048102C@<X0>(uint64_t a1@<X0>, CFStringRef *a2@<X8>)
{
  *a2 = 0;
  v5 = 0;
  sub_10047F944(a1, &v5);
  if (v5)
  {
    v3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%@/%@/%@/com.apple.CommCenter/Setup", kSCDynamicStoreDomainSetup, kSCCompNetwork, kSCCompService, v5);
  }

  else
  {
    v3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"com.apple.CommCenter/Setup");
  }

  *a2 = v3;
  v6 = 0;
  sub_100005978(&v6);
  return sub_100005978(&v5);
}

void sub_1004810E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005978(va);
  sub_100005978(v5);
  _Unwind_Resume(a1);
}

BOOL sub_100481108(uint64_t a1, const __SCNetworkSet *a2, SCNetworkServiceRef service)
{
  ServiceID = SCNetworkServiceGetServiceID(service);
  v7 = SCNetworkSetAddService(a2, service);
  v8 = *(a1 + 40);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v12 = 138412290;
      v13 = ServiceID;
      v10 = "#I checkAndRestoreService_sync: service added: %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);
    }
  }

  else if (v9)
  {
    v12 = 138412290;
    v13 = ServiceID;
    v10 = "#N checkAndRestoreService_sync: cannot add service: %@";
    goto LABEL_6;
  }

  return v7 != 0;
}

BOOL sub_100481204(uint64_t a1, SCNetworkSetRef set, const __SCNetworkService *a3)
{
  v6 = SCNetworkSetCopyServices(set);
  if (v6 && (v7 = v6, v15.length = CFArrayGetCount(v6), v15.location = 0, v8 = CFArrayContainsValue(v7, v15, a3), CFRelease(v7), v8))
  {
    ServiceID = SCNetworkServiceGetServiceID(a3);
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = ServiceID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I checkAndRestoreService_sync: service %@ already present", &v12, 0xCu);
    }

    return 1;
  }

  else
  {

    return sub_100481108(a1, set, a3);
  }
}

const void **sub_10048134C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X2>, SCNetworkServiceRef *a4@<X8>)
{
  *a3 = 0;
  v59 = 0;
  service = 0;
  v57 = 0;
  v58 = 0;
  cf1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ip%d", (*(a1 + 120) + 1));
  if (cf1)
  {
    theArray = 0;
    v8 = SCNetworkServiceCopyAll(*(*a2 + 8));
    theArray = v8;
    if (!v8)
    {
      v42 = *(a1 + 40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#E checkAndRestoreService_sync: cannot get services", buf, 2u);
      }

      *a4 = 0;
      goto LABEL_93;
    }

    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v12 = ValueAtIndex;
        if (ValueAtIndex)
        {
          Interface = SCNetworkServiceGetInterface(ValueAtIndex);
          if (Interface)
          {
            BSDName = SCNetworkInterfaceGetBSDName(Interface);
            if (BSDName)
            {
              if (CFEqual(cf1, BSDName))
              {
                __p[0] = 0;
                __p[1] = 0;
                v54 = 0;
                SCNetworkServiceGetServiceID(v12);
                memset(buf, 0, sizeof(buf));
                ctu::cf::assign();
                *__p = *buf;
                v54 = *&buf[16];
                v15 = *(a1 + 40);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  v16 = __p;
                  if (v54 < 0)
                  {
                    v16 = __p[0];
                  }

                  *buf = 136446466;
                  *&buf[4] = v16;
                  *&buf[12] = 2114;
                  *&buf[14] = BSDName;
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I checkAndRestoreService_sync: service already exists: %{public}s (interface %{public}@)", buf, 0x16u);
                }

                v52 = v12;
                CFRetain(v12);
                v17 = v58;
                if (v58 >= v59)
                {
                  v19 = v58 - v57;
                  if ((v19 + 1) >> 61)
                  {
                    sub_1000CE3D4();
                  }

                  v20 = (v59 - v57) >> 2;
                  if (v20 <= v19 + 1)
                  {
                    v20 = v19 + 1;
                  }

                  if (v59 - v57 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v21 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v21 = v20;
                  }

                  v63 = &v57;
                  if (v21)
                  {
                    sub_10005B2E0(&v57, v21);
                  }

                  v22 = (8 * v19);
                  *buf = 0;
                  *&buf[8] = v22;
                  v62 = 0;
                  *v22 = 0;
                  *v22 = v52;
                  v52 = 0;
                  *&buf[16] = 8 * v19 + 8;
                  sub_100486A00(&v57, buf);
                  v18 = v58;
                  sub_100486AAC(buf);
                }

                else
                {
                  *v58 = 0;
                  *v17 = v52;
                  v18 = v17 + 1;
                  v52 = 0;
                }

                v58 = v18;
                sub_1004865F8(&v52);
                if (SHIBYTE(v54) < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }
        }
      }
    }

    sub_100010250(&theArray);
    if (v57 != v58)
    {
      sub_100486B34(&service, v57);
      v24 = v57;
      v23 = v58;
      if ((v58 - v57) >= 9)
      {
        v25 = 1;
        do
        {
          __p[0] = 0;
          __p[1] = 0;
          v54 = 0;
          SCNetworkServiceGetServiceID(v24[v25]);
          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          *__p = *buf;
          v54 = *&buf[16];
          SCNetworkServiceRemove(v57[v25]);
          v26 = *(a1 + 40);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            if (v54 >= 0)
            {
              v27 = __p;
            }

            else
            {
              v27 = __p[0];
            }

            *buf = 136446210;
            *&buf[4] = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I checkAndRestoreService_sync: service removed: %{public}s", buf, 0xCu);
          }

          *a3 = 1;
          if (SHIBYTE(v54) < 0)
          {
            operator delete(__p[0]);
          }

          ++v25;
          v24 = v57;
          v23 = v58;
        }

        while (v25 < v58 - v57);
      }

      while (v23 != v24)
      {
        v23 = sub_1004865F8(v23 - 1);
      }

      v58 = v24;
      goto LABEL_42;
    }

    v43 = *(a1 + 40);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I checkAndRestoreService_sync: Did not find the network service, trying to create one", buf, 2u);
    }

    v44 = a2[1];
    v51[0] = *a2;
    v51[1] = v44;
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100481D38(a1, v51, __p);
    v45 = service;
    service = __p[0];
    *buf = v45;
    __p[0] = 0;
    sub_1004865F8(buf);
    sub_1004865F8(__p);
    if (v44)
    {
      sub_100004A34(v44);
    }

    if (service)
    {
      __p[0] = 0;
      __p[1] = 0;
      v54 = 0;
      SCNetworkServiceGetServiceID(service);
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      *__p = *buf;
      v54 = *&buf[16];
      v46 = *(a1 + 40);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = __p;
        if (v54 < 0)
        {
          v47 = __p[0];
        }

        *buf = 136446210;
        *&buf[4] = v47;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I checkAndRestoreService_sync: service created: %{public}s", buf, 0xCu);
      }

      *a3 = 1;
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_42:
      theArray = 0;
      v28 = SCNetworkSetCopyAll(*(*a2 + 8));
      theArray = v28;
      if (v28 && CFArrayGetCount(v28))
      {
LABEL_52:
        v33 = CFArrayGetCount(theArray);
        if (v33 >= 1)
        {
          for (j = 0; j != v33; ++j)
          {
            v35 = CFArrayGetValueAtIndex(theArray, j);
            if (v35)
            {
              __p[0] = 0;
              __p[1] = 0;
              v54 = 0;
              SCNetworkServiceGetServiceID(service);
              memset(buf, 0, sizeof(buf));
              ctu::cf::assign();
              *__p = *buf;
              v54 = *&buf[16];
              if (!sub_100481204(a1, v35, service))
              {
                v36 = *(a1 + 40);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  if (v54 >= 0)
                  {
                    v37 = __p;
                  }

                  else
                  {
                    v37 = __p[0];
                  }

                  *buf = 136446210;
                  *&buf[4] = v37;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#N checkAndRestoreService_sync: cannot add service: %{public}s", buf, 0xCu);
                }
              }

              if (SHIBYTE(v54) < 0)
              {
                operator delete(__p[0]);
              }
            }
          }
        }

        v38 = *(a1 + 40);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = asStringBool(*a3);
          *buf = 136315138;
          *&buf[4] = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I checkAndRestoreService_sync: updated=%s", buf, 0xCu);
        }

        *a4 = service;
        service = 0;
        goto LABEL_93;
      }

      v29 = *(a1 + 40);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E checkAndRestoreService_sync: empty sets", buf, 2u);
      }

      __p[0] = 0;
      __p[0] = _SCNetworkSetCreateDefault();
      if (__p[0])
      {
        SCNetworkSetEstablishDefaultConfiguration();
        v30 = SCNetworkSetCopyAll(*(*a2 + 8));
        v31 = theArray;
        theArray = v30;
        *buf = v31;
        sub_100010250(buf);
        if (theArray && CFArrayGetCount(theArray))
        {
          v32 = *(a1 + 40);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I checkAndRestoreService_sync: sets recreated", buf, 2u);
          }

          *a3 = 1;
          sub_1004865C4(__p);
          goto LABEL_52;
        }

        v48 = *(a1 + 40);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v49 = "#E checkAndRestoreService_sync: cannot get sets";
LABEL_91:
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v49, buf, 2u);
        }
      }

      else
      {
        v48 = *(a1 + 40);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v49 = "#E checkAndRestoreService_sync: cannot create sets";
          goto LABEL_91;
        }
      }

      *a4 = 0;
      sub_1004865C4(__p);
LABEL_93:
      sub_100010250(&theArray);
      goto LABEL_94;
    }

    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v41 = "#E checkAndRestoreService_sync: cannot create service";
      goto LABEL_69;
    }
  }

  else
  {
    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v41 = "#E checkAndRestoreService_sync: cannot create service name";
LABEL_69:
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 2u);
    }
  }

  *a4 = 0;
LABEL_94:
  sub_100005978(&cf1);
  *buf = &v57;
  sub_100486BC4(buf);
  return sub_1004865F8(&service);
}

void sub_100481C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, __int16 *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, const void *a24, const void *a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, const void *a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100010250(&a24);
  sub_100005978(&a25);
  a17 = &a26;
  sub_100486BC4(&a17);
  sub_1004865F8(&a31);
  _Unwind_Resume(a1);
}

const void **sub_100481D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const __SCNetworkService **a3@<X8>)
{
  *a3 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  theDict = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, kSCPropNetInterfaceType, @"com.apple.CommCenter");
    v20 = 0;
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ip%d", (*(a1 + 120) + 1));
    CFDictionarySetValue(theDict, kSCPropNetInterfaceDeviceName, v20);
    interface = _SCNetworkInterfaceCreateWithEntity();
    if (interface)
    {
      v18 = 0;
      sub_100473880(a1, &v18);
      sub_100005978(&v18);
      v7 = SCNetworkServiceCreate(*(*a2 + 8), interface);
      *a3 = v7;
      *buf = 0;
      sub_1004865F8(buf);
      if (v7)
      {
        v17 = 0;
        sub_100472AD4(a1, &v17);
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = asStringBool(v17 != 0);
          *buf = 136315138;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I createDefaultService: after re-creation service ID is %s", buf, 0xCu);
        }

        v10 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v11 = theDict;
        theDict = v10;
        *buf = v11;
        sub_1000296E0(buf);
        v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &unk_101807D64);
        value = v12;
        if (v12)
        {
          CFDictionarySetValue(theDict, @"Available", v12);
          v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &unk_101807D60);
          v14 = value;
          value = v13;
          *buf = v14;
          sub_100029A48(buf);
          CFDictionarySetValue(theDict, kSCPropVersion, value);
          *buf = SCNetworkServiceGetInterface(v7);
          sub_100482878(&interface, buf);
          SCNetworkInterfaceSetConfiguration(interface, theDict);
        }

        sub_100029A48(&value);
        sub_100005978(&v17);
      }
    }

    sub_100486C48(&interface);
    sub_100005978(&v20);
  }

  return sub_1000296E0(&theDict);
}

void sub_100481FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, const void *);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v11 = va_arg(va3, const void *);
  sub_100005978(va);
  sub_100486C48(va1);
  sub_100005978(va2);
  sub_1000296E0(va3);
  sub_1004865F8(v4);
  _Unwind_Resume(a1);
}

void sub_100482060(uint64_t a1, uint64_t a2, WirelessTechnologyList *a3)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WirelessTechnologyList::asString(v9, a3);
    if (v10 >= 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = *v9;
    }

    *buf = 136446210;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I writeServiceEntryToSystemConfig: start: technology %{public}s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(*v9);
    }
  }

  v6 = 0;
  v7 = 0;
  sub_100472430();
}

void sub_10048252C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_100029A48((v16 - 80));
  sub_1004865F8(&a13);
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1004825C0(uint64_t a1, const __CFDictionary *a2, int a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I isResetRequiredForService: start (%u)", buf, 8u);
  }

  v7 = 1;
  if (a2 && a3 != 1)
  {
    *buf = 0;
    sub_10047F944(a1, buf);
    valuePtr = -1;
    Value = CFDictionaryGetValue(a2, kSCPropVersion);
    v9 = Value;
    if (!Value)
    {
      goto LABEL_23;
    }

    v10 = CFGetTypeID(Value);
    if (v10 != CFNumberGetTypeID())
    {
      goto LABEL_23;
    }

    v11 = CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
    v7 = 1;
    if (!v11 || valuePtr != 20)
    {
      goto LABEL_24;
    }

    v12 = *buf;
    v13 = *(a1 + 40);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (!v14)
      {
LABEL_13:
        v7 = 0;
LABEL_24:
        sub_100005978(buf);
        goto LABEL_25;
      }

      *v20 = 0;
      v15 = "#I isResetRequiredForService: APN settings were fine";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, v20, 2u);
      goto LABEL_13;
    }

    if (!a3)
    {
      if (!v14)
      {
        goto LABEL_13;
      }

      *v20 = 0;
      v15 = "#I isResetRequiredForService: no service ID, not resetting";
      goto LABEL_12;
    }

    if (a3 == 2)
    {
      if (v14)
      {
        *v20 = 0;
        v16 = "#I isResetRequiredForService: no service ID, resetting";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v16, v20, 2u);
      }
    }

    else if (v14)
    {
      *v20 = 0;
      v16 = "#I isResetRequiredForService: unexpected reset value";
      goto LABEL_22;
    }

LABEL_23:
    v7 = 1;
    goto LABEL_24;
  }

LABEL_25:
  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = asStringBool(v7);
    *buf = 136315138;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I isResetRequiredForService: done: (resetRequired=%s)", buf, 0xCu);
  }

  return v7;
}

void sub_100482808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

const void **sub_100482828(const void **a1, CFTypeRef *a2)
{
  v5 = 0;
  sub_100010180(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  sub_10001021C(&v5);
  return a1;
}

const void **sub_100482878(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  v6 = v4;
  sub_100486C48(&v6);
  return a1;
}

const void **sub_1004828CC(const void **result, SCNetworkInterfaceRef interface)
{
  if (interface)
  {
    v3 = result;
    result = SCNetworkInterfaceGetConfiguration(interface);
    if (result)
    {
      v4 = result;
      result = CFDictionaryGetValue(result, @"Setup");
      if (result)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v4);
        config = MutableCopy;
        if (MutableCopy)
        {
          CFDictionaryRemoveValue(MutableCopy, @"Setup");
          if (!SCNetworkInterfaceSetConfiguration(interface, config))
          {
            v6 = v3[5];
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              v7 = SCError();
              *buf = 136446210;
              v10 = SCErrorString(v7);
              _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E SCNetworkInterfaceSetConfiguration failed with %{public}s", buf, 0xCu);
            }
          }
        }

        return sub_1000296E0(&config);
      }
    }
  }

  return result;
}

void sub_1004829E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

const void **sub_100482A00(uint64_t a1, int a2, int a3)
{
  v3 = a3;
  v33 = a3;
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 120);
    *buf = 67109634;
    *&buf[4] = v7;
    *&buf[8] = 2080;
    *&buf[10] = asString();
    *&buf[18] = 1024;
    *&buf[20] = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I setting interface availability, pdp: %d, source: %s available: %d", buf, 0x18u);
    v3 = v33;
  }

  if (v3)
  {
    *buf = &v33;
    *(sub_100051AD8(a1 + 736, &v33) + 32) = a2;
  }

  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  *__src = 0u;
  v37 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_10000C320(buf);
  sub_10000C030(&buf[16]);
  v8 = std::ostream::operator<<();
  sub_10000C030(v8);
  v9 = *(a1 + 736);
  v10 = (a1 + 744);
  if (v9 != (a1 + 744))
  {
    do
    {
      v11 = sub_10000C030(&buf[16]);
      v12 = asString();
      strlen(v12);
      v13 = sub_10000C030(v11);
      sub_10000C030(v13);
      v14 = std::ostream::operator<<();
      sub_10000C030(v14);
      v15 = v9[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v9[2];
          v17 = *v16 == v9;
          v9 = v16;
        }

        while (!v17);
      }

      v9 = v16;
    }

    while (v16 != v10);
  }

  sub_10000C030(&buf[16]);
  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    if ((BYTE8(v42) & 0x10) != 0)
    {
      v20 = v42;
      if (v42 < __src[1])
      {
        *&v42 = __src[1];
        v20 = __src[1];
      }

      v21 = __src[0];
    }

    else
    {
      if ((BYTE8(v42) & 8) == 0)
      {
        v19 = 0;
        v32 = 0;
LABEL_26:
        *(&__p + v19) = 0;
        p_p = &__p;
        if (v32 < 0)
        {
          p_p = __p;
        }

        *v34 = 136446210;
        v35 = p_p;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %{public}s", v34, 0xCu);
        if (v32 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_30;
      }

      v21 = *(&v37 + 1);
      v20 = *(&v38 + 1);
    }

    v19 = v20 - v21;
    if ((v20 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    v32 = v20 - v21;
    if (v19)
    {
      memmove(&__p, v21, v19);
    }

    goto LABEL_26;
  }

LABEL_30:
  *&buf[16] = v23;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[1]);
  }

  std::locale::~locale(&v37);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (a2)
  {
    v24 = *(a1 + 736);
    a2 = 1;
    if (v24 != v10)
    {
      while (1)
      {
        v25 = *(v24 + 32);
        if (!*(v24 + 32))
        {
          break;
        }

        v26 = v24[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v24[2];
            v17 = *v27 == v24;
            v24 = v27;
          }

          while (!v17);
        }

        a2 &= v25;
        v24 = v27;
        if (v27 == v10)
        {
          goto LABEL_43;
        }
      }

      a2 = 0;
    }
  }

LABEL_43:
  v28 = *(a1 + 40);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 120);
    *buf = 67109376;
    *&buf[4] = v29;
    *&buf[8] = 1024;
    *&buf[10] = a2;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I changing interface availability, pdp: %d, available: %d", buf, 0xEu);
  }

  return sub_100482F9C(a1, a2);
}

void sub_100482F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

const void **sub_100482F9C(void *a1, int a2)
{
  v4 = (*(*a1 + 88))(a1);
  result = sub_100480B08(a1, v4, a2);
  if (result)
  {
    serviceID = 0;
    sub_10047F944(a1, &serviceID);
    if (serviceID)
    {
      key = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, serviceID, @"com.apple.CommCenter");
      if (key)
      {
        store = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:setInterfaceAvailability", 0, 0);
        if (store)
        {
          *keysToSet = 0;
          *keysToSet = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (*keysToSet)
          {
            theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (theDict)
            {
              if (a2)
              {
                v6 = &unk_101807D64;
              }

              else
              {
                v6 = &unk_101807D68;
              }

              v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v6);
              v15 = v7;
              if (v7)
              {
                CFDictionarySetValue(theDict, @"Available", v7);
                v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, a1 + 36);
                CFDictionarySetValue(theDict, @"AvailableProtocols", v14);
                CFDictionaryAddValue(*keysToSet, key, theDict);
                if (*keysToSet)
                {
                  if (CFDictionaryGetCount(*keysToSet) >= 1)
                  {
                    SCDynamicStoreSetMultiple(store, *keysToSet, 0, 0);
                  }
                }

                sub_100029A48(&v14);
              }

              sub_100029A48(&v15);
            }

            sub_1000296E0(&theDict);
          }

          sub_1000296E0(keysToSet);
        }

        else
        {
          v11 = a1[5];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = SCError();
            v13 = SCErrorString(v12);
            *keysToSet = 136446210;
            *&keysToSet[4] = v13;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I setInterface: SCDynamicStoreCreate error: %{public}s", keysToSet, 0xCu);
          }
        }

        sub_10048662C(&store);
      }

      else
      {
        v8 = a1[5];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = SCError();
          v10 = SCErrorString(v9);
          *keysToSet = 136446210;
          *&keysToSet[4] = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I setInterface: SCDynamicStoreKeyCreateNetworkServiceEntity error: %{public}s", keysToSet, 0xCu);
        }
      }

      sub_100005978(&key);
    }

    return sub_100005978(&serviceID);
  }

  return result;
}

void sub_100483270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va5, a2);
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v7 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v9 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v11 = va_arg(va5, const void *);
  sub_100029A48(va);
  sub_1000296E0(va1);
  sub_1000296E0(va5);
  sub_10048662C(va2);
  sub_100005978(va3);
  sub_100005978(va4);
  _Unwind_Resume(a1);
}

uint64_t sub_1004832F8(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*a2)
  {
    v28 = 0;
    return v28 & 1;
  }

  theArray = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v32 = a3;
  if (Mutable)
  {
    v7 = theArray;
    theArray = Mutable;
    *buf = v7;
    sub_1000279DC(buf);
  }

  v8 = 0;
  v52 = 0x100000002;
  v33 = 1;
  do
  {
    v9 = *&buf[v8 - 8];
    v10 = a1 + 296;
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        goto LABEL_76;
      }

      v10 = a1 + 488;
    }

    if (*(v10 + 116) == 4)
    {
      v12 = *a2;
      v11 = a2[1];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(v10 + 184);
      *(v10 + 176) = v12;
      *(v10 + 184) = v11;
      if (v13)
      {
        sub_100004A34(v13);
      }

      memset(v45, 0, sizeof(v45));
      CSIPacketAddress::CSIPacketAddress(v45, (v10 + 40));
      if ((CSIPacketAddress::isZeroIP(v45) & 1) == 0)
      {
        v43 = 0;
        v44 = 0;
        memset(v42, 0, sizeof(v42));
        CSIPacketAddress::CSIPacketAddress(v42);
        if (CSIPacketAddress::isIPv6(v45))
        {
          sub_10000501C(&__dst, "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff");
          CSIPacketAddress::CSIPacketAddress();
          CSIPacketAddress::operator=();
          if (SHIBYTE(v49) < 0)
          {
            operator delete(__dst);
          }

          PrefixLen = CSIPacketAddress::getPrefixLen(v45);
          CSIPacketAddress::applyMaskPrefix(v42, PrefixLen);
        }

        else
        {
          CSIPacketAddress::ipv4PrefixLenToMaskAddr(buf, v45);
          CSIPacketAddress::operator=();
        }

        CSIPacketAddress::operator std::string();
        if (SHIBYTE(v40) < 0)
        {
          sub_100005F2C(&__dst, __p[0], __p[1]);
        }

        else
        {
          __dst = *__p;
          v49 = v40;
        }

        v47 = 0;
        if (SHIBYTE(v49) < 0)
        {
          sub_100005F2C(buf, __dst, *(&__dst + 1));
        }

        else
        {
          *buf = __dst;
          *&buf[16] = v49;
        }

        v50 = 0;
        if (ctu::cf::convert_copy())
        {
          v15 = v47;
          v47 = v50;
          v51 = v15;
          sub_100005978(&v51);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        value = v47;
        v47 = 0;
        sub_100005978(&v47);
        if (SHIBYTE(v49) < 0)
        {
          operator delete(__dst);
        }

        *buf = v43;
        v43 = value;
        value = 0;
        sub_100005978(buf);
        sub_100005978(&value);
        if (SHIBYTE(v40) < 0)
        {
          operator delete(__p[0]);
        }

        CSIPacketAddress::operator std::string();
        if (SHIBYTE(v38) < 0)
        {
          sub_100005F2C(&__dst, v37[0], v37[1]);
        }

        else
        {
          __dst = *v37;
          v49 = v38;
        }

        v47 = 0;
        if (SHIBYTE(v49) < 0)
        {
          sub_100005F2C(buf, __dst, *(&__dst + 1));
        }

        else
        {
          *buf = __dst;
          *&buf[16] = v49;
        }

        v50 = 0;
        if (ctu::cf::convert_copy())
        {
          v16 = v47;
          v47 = v50;
          v51 = v16;
          sub_100005978(&v51);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        value = v47;
        v47 = 0;
        sub_100005978(&v47);
        if (SHIBYTE(v49) < 0)
        {
          operator delete(__dst);
        }

        *buf = v44;
        v44 = value;
        value = 0;
        sub_100005978(buf);
        sub_100005978(&value);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(v37[0]);
        }

        v17 = *(a1 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = asString();
          *buf = 136315394;
          *&buf[4] = "configureHOVirtualInterface";
          *&buf[12] = 2080;
          *&buf[14] = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: HO interface config: to be called for %s...", buf, 0x16u);
        }

        v19 = (*(**a2 + 144))(*a2, v44, v43);
        v20 = *(a1 + 40);
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          if (v21)
          {
            *buf = 136315394;
            *&buf[4] = "configureHOVirtualInterface";
            *&buf[12] = 2114;
            *&buf[14] = v44;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s: HO interface config: addHOAddress: success: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          if (v21)
          {
            *buf = 136315394;
            *&buf[4] = "configureHOVirtualInterface";
            *&buf[12] = 2114;
            *&buf[14] = v44;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#E %s: HO interface config: addHOAddress: failure: %{public}@", buf, 0x16u);
          }

          v33 = 0;
        }

        if (theArray)
        {
          v23 = *(v10 + 64);
          v22 = *(v10 + 72);
          while (v23 != v22)
          {
            if ((CSIPacketAddress::isZeroIP(v23) & 1) == 0)
            {
              value = 0;
              CSIPacketAddress::operator std::string();
              if (SHIBYTE(v36) < 0)
              {
                sub_100005F2C(&__dst, v35[0], v35[1]);
              }

              else
              {
                __dst = *v35;
                v49 = v36;
              }

              v47 = 0;
              if (SHIBYTE(v49) < 0)
              {
                sub_100005F2C(buf, __dst, *(&__dst + 1));
              }

              else
              {
                *buf = __dst;
                *&buf[16] = v49;
              }

              v50 = 0;
              if (ctu::cf::convert_copy())
              {
                v24 = v47;
                v47 = v50;
                v51 = v24;
                sub_100005978(&v51);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              value = v47;
              v47 = 0;
              sub_100005978(&v47);
              if (SHIBYTE(v49) < 0)
              {
                operator delete(__dst);
              }

              if (SHIBYTE(v36) < 0)
              {
                operator delete(v35[0]);
              }

              CFArrayAppendValue(theArray, value);
              sub_100005978(&value);
            }

            v23 = (v23 + 24);
          }
        }

        sub_100005978(&v43);
        sub_100005978(&v44);
      }
    }

LABEL_76:
    v8 += 4;
  }

  while (v8 != 8);
  v25 = a2[1];
  v34[0] = *a2;
  v34[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100483C90(a1, v34, v32);
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    v26 = (*(**a2 + 152))(*a2, theArray);
    v27 = *(a1 + 40);
    if (v26)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "configureHOVirtualInterface";
        *&buf[12] = 2114;
        *&buf[14] = theArray;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s: HO interface config: setDNSServers: success: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101771D54();
      }

      v33 = 0;
    }
  }

  v29 = (*(**a2 + 168))();
  v30 = *(a1 + 40);
  if (v29)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "configureHOVirtualInterface";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s: HO interface config: success", buf, 0xCu);
    }

    v28 = v33;
  }

  else
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_101771DE0();
    }

    v28 = 0;
  }

  sub_1000279DC(&theArray);
  return v28 & 1;
}

BOOL sub_100483C90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v37 = *a2;
    v7 = 0;
    v8 = 0;
    v9 = a1 + 488;
    v43 = 0x200000001;
    v10 = a1 + 296;
    while (1)
    {
      v11 = *(&v43 + v8);
      v12 = v10;
      if (v11 == 1)
      {
        goto LABEL_6;
      }

      if (v11 == 2)
      {
        break;
      }

LABEL_61:
      v8 += 4;
      if (v8 == 8)
      {
        (*(**a2 + 160))();
        v3 = v37;
        return v3 != 0;
      }
    }

    v12 = v9;
LABEL_6:
    if (*(v12 + 116) == 4)
    {
      v13 = *(v12 + 124);
      v14 = v7 - 1 >= v13 ? v13 : v7;
      if (v13)
      {
        v7 = v14;
      }
    }

    if (v11 != 2)
    {
      goto LABEL_61;
    }

    memset(&__p, 0, sizeof(__p));
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&__p, *a3, *(a3 + 8));
    }

    else
    {
      __p = *a3;
    }

    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    LOBYTE(v16) = *(&__p.__r_.__value_.__s + 23);
    size = __p.__r_.__value_.__l.__size_;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = __p.__r_.__value_.__l.__size_;
    }

    if (!v18)
    {
      (*(**a2 + 136))(&buf);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = buf;
      v15 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
      v16 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    }

    if ((v16 & 0x80u) != 0)
    {
      v15 = size;
    }

    if (!v15)
    {
      v19 = *(a1 + 120);
      v20 = "";
      if (v19 <= 0xF)
      {
        v20 = off_101E44980[v19];
      }

      sub_100016890(&__p, v20);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
        goto LABEL_34;
      }
    }

    else if (*(&__p.__r_.__value_.__s + 23))
    {
      p_p = &__p;
LABEL_34:
      v22 = sub_1003BAFD0(p_p);
      v23 = v22;
      if (v22 >= v7)
      {
        v24 = v7;
      }

      else
      {
        v24 = v22;
      }

      if (!v7)
      {
        v24 = v22;
      }

      if (v22)
      {
        v7 = v24;
      }

      v25 = *(a1 + 40);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v26 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
        *(buf.__r_.__value_.__r.__words + 4) = "configureHOVirtualInterfaceMTU";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v26;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        v40 = v23;
        v41 = 1024;
        v42 = v7;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s: HO interface MTU config V1 (over %s): default route mtu = %u, new mtu %u", &buf, 0x22u);
      }

      v27 = sub_1003BB32C();
      v28 = v27;
      if (v27 >= v7)
      {
        v29 = v7;
      }

      else
      {
        v29 = v27;
      }

      if (!v7)
      {
        v29 = v27;
      }

      if (v27)
      {
        v7 = v29;
      }

      v30 = *(a1 + 40);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }

      v31 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v31 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
      *(buf.__r_.__value_.__r.__words + 4) = "configureHOVirtualInterfaceMTU";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v31;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
      v40 = v28;
      v41 = 1024;
      v42 = v7;
      v32 = v30;
      v33 = "#I %s: HO interface MTU config V2 (over %s): default route mtu = %u, new mtu %u";
      v34 = 34;
      goto LABEL_58;
    }

    v35 = *(a1 + 40);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_59;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = "configureHOVirtualInterfaceMTU";
    v32 = v35;
    v33 = "#I %s: HO interface MTU config: ifaceName is empty";
    v34 = 12;
LABEL_58:
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, &buf, v34);
LABEL_59:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_61;
  }

  return v3 != 0;
}

void sub_10048408C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004840BC(uint64_t a1)
{
  if ((*(a1 + 140) & 1) != 0 || *(a1 + 136) && (sub_1004733BC(a1) & 1) == 0)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
    __p[0] = v4;
    v8 = sub_100009510(&v3[1].__m_.__sig, __p);
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
        if (!v10)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
    }

    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_13:
    __p[0] = 0;
    __p[1] = 0;
    v20 = 0;
    CSIPDPManager::getInterfaceNameById();
    v17 = 0;
    v18 = 0;
    sub_10047DFB8(a1, &v17);
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = SHIBYTE(v20);
      v14 = __p[0];
      v15 = subscriber::asString();
      v16 = __p;
      if (v13 < 0)
      {
        v16 = v14;
      }

      *buf = 136446466;
      v22 = v16;
      v23 = 2080;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Setting interface %{public}s expensive cost flag to true, active SIM %s", buf, 0x16u);
    }

    (*(*v10 + 40))(v10, __p, 1);
    if (v18)
    {
      sub_100004A34(v18);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
      if (v11)
      {
        return;
      }

LABEL_21:
      sub_100004A34(v9);
      return;
    }

LABEL_20:
    if (v11)
    {
      return;
    }

    goto LABEL_21;
  }
}

void sub_1004842D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10048432C(const void **result, int a2, const char *a3)
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = "unknown";
  }

  if (*(result + 72) != a2)
  {
    v4 = result;
    *(result + 72) = a2;
    serviceID = 0;
    sub_10047F944(result, &serviceID);
    if (serviceID)
    {
      key = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, serviceID, @"com.apple.CommCenter");
      if (key)
      {
        v20 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:setProtocolAvailability", 0, 0);
        if (v20)
        {
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (Mutable)
          {
            theDict = 0;
            *buf = SCDynamicStoreCopyValue(v20, key);
            sub_100138C38(&theDict, buf);
            v17 = 0;
            if (theDict)
            {
              MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
            }

            else
            {
              MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            }

            v12 = v17;
            v17 = MutableCopy;
            *buf = v12;
            sub_1000296E0(buf);
            if (v17)
            {
              v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v4 + 36);
              v16 = v13;
              if (v13)
              {
                CFDictionarySetValue(v17, @"AvailableProtocols", v13);
                CFDictionaryAddValue(Mutable, key, v17);
                SCDynamicStoreSetMultiple(v20, Mutable, 0, 0);
                v14 = v4[5];
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  v15 = asString();
                  *buf = 136315394;
                  *&buf[4] = v15;
                  v24 = 2080;
                  v25 = v3;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Configuring PDP manager to use protocol family: %s (reason %s)", buf, 0x16u);
                }
              }

              sub_100029A48(&v16);
            }

            sub_1000296E0(&v17);
            sub_10001021C(&theDict);
          }

          sub_1000296E0(&Mutable);
        }

        else
        {
          v9 = v4[5];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = SCError();
            v11 = SCErrorString(v10);
            *buf = 136446210;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I setProtocol: SCDynamicStoreCreate error: %{public}s", buf, 0xCu);
          }
        }

        sub_10048662C(&v20);
      }

      else
      {
        v6 = v4[5];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = SCError();
          v8 = SCErrorString(v7);
          *buf = 136446210;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I setProtocol: SCDynamicStoreKeyCreateNetworkServiceEntity error: %{public}s", buf, 0xCu);
        }
      }

      sub_100005978(&key);
    }

    return sub_100005978(&serviceID);
  }

  return result;
}

void sub_100484638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va6, a2);
  va_start(va5, a2);
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v7 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v9 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v11 = va_arg(va5, const void *);
  va_copy(va6, va5);
  v13 = va_arg(va6, const void *);
  sub_100029A48(va);
  sub_1000296E0(va1);
  sub_10001021C(va2);
  sub_1000296E0(va3);
  sub_10048662C(va4);
  sub_100005978(va5);
  sub_100005978(va6);
  _Unwind_Resume(a1);
}

uint64_t sub_1004846C0(uint64_t a1)
{
  std::mutex::lock((a1 + 144));
  v2 = *(a1 + 776);
  std::mutex::unlock((a1 + 144));
  return v2;
}

void sub_1004846F8(uint64_t a1, int a2, int a3)
{
  if (a2 == 1)
  {
    v4 = 296;
  }

  else
  {
    if (a2 != 2)
    {
      return;
    }

    v4 = 488;
  }

  *(a1 + v4 + 128) = a3;
  sub_100473238(a1, &v5);
  sub_1004757F8(a1, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100484768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100484780(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 781;
  while (2)
  {
    v5 = v3;
    while (1)
    {
      v6 = *(dword_101807D6C + v5);
      if (*(v4 + v6) == 1)
      {
        break;
      }

      v5 += 4;
      if (v5 == 8)
      {
        if ((v2 & 1) == 0)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = asString();
      *buf = 136315138;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fDNSInProbation %s (change states): true ==>> false", buf, 0xCu);
    }

    *(v4 + v6) = 0;
    v3 = v5 + 4;
    v2 = 1;
    if (v5 != 4)
    {
      continue;
    }

    break;
  }

LABEL_11:
  (*(**(a1 + 784) + 16))(*(a1 + 784));
  v9 = *(a1 + 784);
  *(a1 + 784) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 768);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 760);
      if (v13)
      {
        (*(*v13 + 64))(v13);
      }

      sub_100004A34(v12);
    }
  }
}

void sub_100484960(uint64_t a1, int a2, int a3)
{
  v6 = 0;
  v7 = a1 + 781;
  v8 = a1 + 488;
  v9 = a1 + 296;
  v28 = a1 + 296;
  do
  {
    v10 = dword_101807D6C[v6];
    if ((v10 == a3 || anyContextType()) && (*(v7 + v10) & 1) == 0)
    {
      v11 = v9;
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          goto LABEL_43;
        }

        v11 = v8;
      }

      v12 = *(v11 + 116);
      if (v12 == 4 || v12 == 2)
      {
        v14 = *(v11 + 64);
        if (*(v11 + 72) != v14 && (CSIPacketAddress::isZeroIP(v14) & 1) == 0)
        {
          v15 = *(a1 + 40);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = asString();
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I fDNSInProbation %s (change states): false ==>> true", &buf, 0xCu);
          }

          *(v7 + v10) = 1;
          sub_100004AA0(&buf, (a1 + 8));
          v17 = buf;
          if (*(&buf + 1))
          {
            atomic_fetch_add_explicit((*(&buf + 1) + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(*(&v17 + 1));
          }

          v18 = v8;
          Registry::getTimerService(&buf, *(a1 + 48));
          v19 = buf;
          sub_10000501C(__p, "DNSTimeout");
          v20 = *(a1 + 24);
          object = v20;
          if (v20)
          {
            dispatch_retain(v20);
          }

          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1174405120;
          aBlock[2] = sub_100484D78;
          aBlock[3] = &unk_101E4EAD8;
          aBlock[4] = a1;
          v30 = v17;
          if (*(&v17 + 1))
          {
            atomic_fetch_add_explicit((*(&v17 + 1) + 16), 1uLL, memory_order_relaxed);
          }

          v31 = v10;
          v9 = v28;
          v32 = _Block_copy(aBlock);
          sub_100D23364(v19, __p, 0, 21000000, &object, &v32);
          v21 = v36;
          v36 = 0;
          v22 = *(a1 + 784);
          *(a1 + 784) = v21;
          v8 = v18;
          if (v22)
          {
            (*(*v22 + 8))(v22);
            v23 = v36;
            v36 = 0;
            if (v23)
            {
              (*(*v23 + 8))(v23);
            }
          }

          if (v32)
          {
            _Block_release(v32);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (v35 < 0)
          {
            operator delete(__p[0]);
          }

          if (*(&buf + 1))
          {
            sub_100004A34(*(&buf + 1));
          }

          v24 = *(a1 + 768);
          if (v24)
          {
            v25 = std::__shared_weak_count::lock(v24);
            if (v25)
            {
              v26 = v25;
              v27 = *(a1 + 760);
              if (v27)
              {
                (*(*v27 + 56))(v27);
              }

              sub_100004A34(v26);
            }
          }

          if (*(&v30 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v30 + 1));
          }

          if (*(&v17 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v17 + 1));
          }
        }
      }
    }

LABEL_43:
    ++v6;
  }

  while (v6 != 2);
}

void sub_100484CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, void *aBlock, dispatch_object_t object, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_100004A34(v30);
  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  _Unwind_Resume(a1);
}

void sub_100484D78(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = v3[5];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = asString();
          sub_101771F64(v7, &v8, v6);
        }

        (*(*v3 + 208))(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_100484E6C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100484E88(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

unint64_t sub_100484E98(uint64_t a1)
{
  v2 = sub_100480C70(a1);
  v3 = v2;
  if ((v2 - 0xFFFF) > 0xFFFF0001)
  {
    return v2;
  }

  v4 = *(a1 + 40);
  v5 = 1450;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109376;
    v7[1] = v3;
    v8 = 1024;
    v9 = 1450;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I MTU from Carrier Bundle is %d exceeds min./max. limit, using default value of %d!", v7, 0xEu);
  }

  return v5;
}

void sub_100484F70(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 120);
    *buf = 67109120;
    v38 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ========== start pdp_ip%d: ==========", buf, 8u);
  }

  bzero(buf, 0x401uLL);
  v4 = *(a1 + 128);
  if (v4)
  {
    CString = CFStringGetCString(v4, buf, 1024, 0x8000100u);
    v6 = *(a1 + 40);
    if (CString)
    {
      if (!os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *v31 = 136446210;
      v32 = buf;
      v7 = "#I DATA:: fServiceID: %{public}s";
      v8 = v6;
      v9 = 12;
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *(a1 + 40);
  }

  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_11;
  }

  *v31 = 0;
  v7 = "#I DATA:: fServiceID: null";
  v8 = v6;
  v9 = 2;
LABEL_10:
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, v31, v9);
LABEL_11:
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = atomic_load((a1 + 696));
    *v31 = 67109120;
    LODWORD(v32) = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fIPv6ServiceCounter: %u", v31, 8u);
    v10 = *(a1 + 40);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = atomic_load((a1 + 712));
    *v31 = 67109120;
    LODWORD(v32) = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fIPv4ServiceCounter: %u", v31, 8u);
    v10 = *(a1 + 40);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 136);
    if (v13 > 4)
    {
      v14 = "Unknown";
    }

    else
    {
      v14 = off_101E4EFC0[v13];
    }

    v15 = asStringBool(*(a1 + 140));
    v16 = asStringBool(*(a1 + 141));
    *v31 = 136315650;
    v32 = v14;
    v33 = 2080;
    v34 = v15;
    v35 = 2080;
    v36 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fRank: %s, fRankFirstTime =%s, fRankNeedsRefresh = %s", v31, 0x20u);
    v10 = *(a1 + 40);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = asStringBool(*(a1 + 780));
    *v31 = 136315138;
    v32 = v17;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fStartCompleted: %s", v31, 0xCu);
  }

  for (i = 0; i != 2; ++i)
  {
    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = dword_101807D6C[i];
      v21 = asString();
      v22 = asStringBool(*(a1 + 781 + v20));
      *v31 = 136315394;
      v32 = v21;
      v33 = 2080;
      v34 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I DATA:: fDNSInProbation[%s]: %s", v31, 0x16u);
    }
  }

  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = asStringBool(*(a1 + 784) != 0);
    *v31 = 136315138;
    v32 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I DATA:: fDNSInProbationTimer: %s", v31, 0xCu);
    v23 = *(a1 + 40);
    v25 = &off_1017C8000;
  }

  else
  {
    v25 = &off_1017C8000;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v26 = asStringBool(*(a1 + 792) != 0);
    *v31 = 136315138;
    v32 = v26;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I DATA:: fConfigdRestartTimer: %s", v31, 0xCu);
    v23 = *(a1 + 40);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v27 = atomic_load((a1 + 800));
    v28 = asStringBool(v27 & 1);
    *v31 = 136315138;
    v32 = v28;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I DATA:: fIpcInterfaceConfigStarted: %s", v31, 0xCu);
  }

  sub_100485460(a1 + 296);
  sub_100485460(a1 + 488);
  v29 = *(a1 + 40);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 120);
    *v31 = *(v25 + 207);
    LODWORD(v32) = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I DATA:: ========== end pdp_ip%d ==========", v31, 8u);
  }
}

void sub_100485460(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: fIPFamily: %s", buf, 0xCu);
    v2 = *(a1 + 32);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 116);
    if (v3 > 4)
    {
      v4 = "???";
    }

    else
    {
      v4 = off_101E4EFE8[v3];
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: fState: %s", buf, 0xCu);
    v2 = *(a1 + 32);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    v5 = v19 >= 0 ? buf : *buf;
    *v20 = 136315138;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: fIpAddress: %s", v20, 0xCu);
    if (v19 < 0)
    {
      operator delete(*buf);
    }
  }

  v6 = *(a1 + 64);
  for (i = *(a1 + 72); v6 != i; v6 += 24)
  {
    v8 = *(a1 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      CSIPacketAddress::operator std::string();
      v9 = v19 >= 0 ? buf : *buf;
      *v20 = 136446210;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I DATA:: fDns: %{public}s", v20, 0xCu);
      if (v19 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v10 = *(a1 + 32);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    if (v19 >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    *v20 = 136315138;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fLastIPv6Router: %s", v20, 0xCu);
    if (v19 < 0)
    {
      operator delete(*buf);
    }

    v10 = *(a1 + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = asStringBool(*(a1 + 112));
    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fUseLastIPv6Router: %s", buf, 0xCu);
    v10 = *(a1 + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 124);
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fLastMTU: %du", buf, 8u);
    v10 = *(a1 + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 128);
    *buf = 67109120;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fNetworkProvidedMTU: %du", buf, 8u);
    v10 = *(a1 + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = asStringBool();
    *buf = 136315138;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: xlatState: ipv4ConfigState: %s", buf, 0xCu);
    v10 = *(a1 + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = asStringBool(*(a1 + 144) != 0);
    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: xlatState: ipv4Timer: %s", buf, 0xCu);
    v10 = *(a1 + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = (a1 + 152);
    if (*(a1 + 175) < 0)
    {
      v17 = *v17;
    }

    *buf = 136446210;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fErrorReason: %{public}s", buf, 0xCu);
  }
}

uint64_t sub_100485900(uint64_t a1, NSObject **a2, const char *a3)
{
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, a3);
  sub_1004859E0(a1, a2, &v6);
  ctu::OsLogContext::~OsLogContext(&v6);
  CSIPacketAddress::CSIPacketAddress((a1 + 40));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  CSIPacketAddress::CSIPacketAddress((a1 + 88));
  *(a1 + 112) = 0;
  *(a1 + 116) = xmmword_101807D50;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return a1;
}

void sub_100485998(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    v1[9] = v5;
    operator delete(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 4));
  sub_1000C0544(v1);
  _Unwind_Resume(a1);
}

void *sub_1004859E0(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_100485A48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void *sub_100485A6C(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v3 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));

  return sub_1000C0544(a1);
}

void sub_100485B04(CFDataRef theData@<X1>, uint64_t a2@<X0>, unsigned int a3@<W2>, const unsigned __int8 *a4@<X3>, CFDataRef *a5@<X8>)
{
  if (!theData)
  {
    v12 = *(a2 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *bytes = 0;
    v13 = "#E convertPacketNotificationFilterRemoteAddress: empty remote addr";
LABEL_18:
    v15 = v12;
    v16 = 2;
    goto LABEL_19;
  }

  if (!a3)
  {
    v12 = *(a2 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *bytes = 0;
    v13 = "#E convertPacketNotificationFilterRemoteAddress: empty prefix length";
    goto LABEL_18;
  }

  if (!a4)
  {
    v12 = *(a2 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *bytes = 0;
    v13 = "#E convertPacketNotificationFilterRemoteAddress: empty prefix";
    goto LABEL_18;
  }

  if (CFDataGetLength(theData) != 4)
  {
    v14 = *(a2 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *bytes = 67109120;
      *&bytes[4] = CFDataGetLength(theData);
      v13 = "#E convertPacketNotificationFilterRemoteAddress: wrong addr len = %d";
      v15 = v14;
      v16 = 8;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v13, bytes, v16);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (!BytePtr)
  {
    v12 = *(a2 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *bytes = 0;
      v13 = "#E convertPacketNotificationFilterRemoteAddress: empty dataPtr";
      goto LABEL_18;
    }

LABEL_20:
    *a5 = 0;
    return;
  }

  *bytes = 0;
  v20 = 0;
  if (getCLAT46IPv6AddressRemote(BytePtr, a3, a4, bytes))
  {
    v11 = CFDataCreate(0, bytes, 16);
  }

  else
  {
    v17 = *(a2 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#E convertPacketNotificationFilterRemoteAddress: cannot convert", v18, 2u);
    }

    v11 = 0;
  }

  *a5 = v11;
}

CFDataRef sub_100485D28@<X0>(CFDataRef *a1@<X8>)
{
  memset(v3, 0, sizeof(v3));
  CSIPacketAddress::CSIPacketAddress();
  *bytes = 0;
  v5 = 0;
  CSIPacketAddress::toIPv6(v3, bytes);
  result = CFDataCreate(0, bytes, 16);
  *a1 = result;
  return result;
}

void sub_100485DB4(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X2>, void *a4@<X8>)
{
  v7 = *a3;
  if (a2)
  {
    *a4 = v7;
LABEL_28:
    *a3 = 0;
    return;
  }

  if (!v7)
  {
    v21 = *(a1 + 40);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      goto LABEL_27;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N convertPacketNotificationFilterRequest: dict empty", buf, 2u);
LABEL_25:
    v22 = *a3;
LABEL_27:
    *a4 = v22;
    goto LABEL_28;
  }

  v8 = CFDictionaryGetValue(v7, kCTQualityOfServiceFamilyIPv4);
  if (!v8 || (v9 = v8, v10 = CFGetTypeID(v8), v10 != CFDictionaryGetTypeID()))
  {
    sub_100010024(&v60, a3);
    sub_100472F48(a1, "convertPacketNotificationFilterRequest: no IPv4 addr: orig ip dict", &v60);
    sub_10001021C(&v60);
    goto LABEL_25;
  }

  v59 = 0;
  *v68 = 0;
  v69 = 0;
  v57 = 0;
  v58 = 0;
  v56[0] = 0;
  v56[1] = 0;
  CSIPDPManager::getInterfaceNameById();
  __p = 0;
  v54 = 0;
  v55 = 0;
  getCLAT46IPv6Address(&__p, v56, &v59, v68, &v58);
  v11 = v58;
  if (!v58)
  {
    v11 = "";
    v58 = "";
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v56;
    if (v57 < 0)
    {
      v13 = v56[0];
    }

    p_p = &__p;
    if (v55 < 0)
    {
      p_p = __p;
    }

    *buf = 136446978;
    *&buf[4] = v13;
    v62 = 2080;
    v63 = p_p;
    v64 = 1024;
    v65 = v59;
    v66 = 2082;
    v67 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I convertPacketNotificationFilterRequest: if_name=%{public}s, ipv6=%s, prefix_len=%u, status=%{public}s", buf, 0x26u);
  }

  v15 = HIBYTE(v55);
  if (v55 < 0)
  {
    v15 = v54;
  }

  if (v15)
  {
    if (v59)
    {
      v16 = kCTQualityOfServiceSourceIP;
      v17 = CFDictionaryGetValue(v9, kCTQualityOfServiceSourceIP);
      v18 = v17;
      if (v17)
      {
        v19 = CFGetTypeID(v17);
        if (v19 == CFDataGetTypeID())
        {
          v20 = v18;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      v25 = kCTQualityOfServiceCallType;
      v26 = CFDictionaryGetValue(v9, kCTQualityOfServiceCallType);
      v27 = v26;
      if (v26)
      {
        v28 = CFGetTypeID(v26);
        if (v28 == CFNumberGetTypeID())
        {
          v29 = v27;
        }

        else
        {
          v29 = 0;
        }

        v47 = v29;
      }

      else
      {
        v47 = 0;
      }

      v30 = kCTQualityOfServiceSourcePort;
      v31 = CFDictionaryGetValue(v9, kCTQualityOfServiceSourcePort);
      v32 = v31;
      v45 = v25;
      key = v16;
      v44 = v30;
      if (v31)
      {
        v33 = CFGetTypeID(v31);
        if (v33 == CFNumberGetTypeID())
        {
          v34 = v32;
        }

        else
        {
          v34 = 0;
        }
      }

      else
      {
        v34 = 0;
      }

      v35 = kCTQualityOfServiceDestinationPort;
      v36 = CFDictionaryGetValue(v9, kCTQualityOfServiceDestinationPort);
      v37 = v36;
      if (v36)
      {
        v38 = CFGetTypeID(v36);
        if (v38 != CFNumberGetTypeID())
        {
          v37 = 0;
        }
      }

      v39 = kCTQualityOfServiceUniqueTag;
      v40 = CFDictionaryGetValue(v9, kCTQualityOfServiceUniqueTag);
      v41 = v40;
      if (v40)
      {
        v42 = CFGetTypeID(v40);
        if (v42 != CFNumberGetTypeID())
        {
          v41 = 0;
        }
      }

      *buf = 0;
      sub_100485B04(v20, a1, v59, v68, buf);
      value = 0;
      sub_100485D28(&value);
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      theDict = Mutable;
      if (*buf)
      {
        CFDictionarySetValue(Mutable, key, *buf);
      }

      if (value)
      {
        CFDictionarySetValue(theDict, kCTQualityOfServiceDestinationIP, value);
      }

      if (v47)
      {
        CFDictionarySetValue(theDict, v45, v47);
      }

      if (v34)
      {
        CFDictionarySetValue(theDict, v44, v34);
      }

      if (v37)
      {
        CFDictionarySetValue(theDict, v35, v37);
      }

      if (v41)
      {
        CFDictionarySetValue(theDict, v39, v41);
      }

      v50 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v50, kCTQualityOfServiceFamilyIPv6, theDict);
      sub_100010024(&v49, a3);
      sub_100472F48(a1, "convertPacketNotificationFilterRequest: orig ip dict", &v49);
      sub_10001021C(&v49);
      sub_100010180(&v48, &v50);
      sub_100472F48(a1, "convertPacketNotificationFilterRequest: new ip dict", &v48);
      sub_10001021C(&v48);
      sub_100010180(a4, &v50);
      sub_1000296E0(&v50);
      sub_1000296E0(&theDict);
      sub_10002D760(&value);
      sub_10002D760(buf);
      goto LABEL_67;
    }

    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "#N convertPacketNotificationFilterRequest: prefix_len empty";
      goto LABEL_34;
    }
  }

  else
  {
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "#I convertPacketNotificationFilterRequest: no IPv6 addr";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
    }
  }

  *a4 = *a3;
  *a3 = 0;
LABEL_67:
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[0]);
  }
}

void sub_100486368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, __int16 a14, char a15, char a16, int a17, const void *a18, const void *a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, int a36, const void *a37)
{
  sub_10001021C(&a13);
  sub_1000296E0(&a18);
  sub_1000296E0(&a19);
  sub_10002D760(&a20);
  sub_10002D760(&a37);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100486424(uint64_t a1, int a2)
{
  if (a2)
  {
    return 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  CSIPDPManager::getInterfaceNameById();
  v2 = isXLAT464Interface(__p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_100486498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1004864B4(uint64_t a1, int a2)
{
  sub_100473238(a1, &v8);
  v4 = sub_10047F230(a1, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v4)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v5 = 296;
  }

  else
  {
    if (a2 != 2)
    {
      return 0;
    }

    v5 = 488;
  }

  if (*(a1 + v5 + 64) == *(a1 + v5 + 72))
  {
    return 0;
  }

  v6 = 296;
  if (a2 == 1)
  {
    v6 = 488;
  }

  return *(a1 + v6 + 64) == *(a1 + v6 + 72);
}

uint64_t sub_100486564(uint64_t a1, uint64_t a2, CFStringRef name)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (!name)
  {
    __TUAssertTrigger();
  }

  *(a1 + 8) = SCPreferencesCreateWithAuthorization(kCFAllocatorDefault, name, 0, 0);
  return a1;
}

const void **sub_1004865C4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1004865F8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_10048662C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100486660(uint64_t a1, const CSIPacketAddress *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
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

  v13 = a1;
  if (v6)
  {
    sub_1001B95F4(a1, v6);
  }

  __p = 0;
  v10 = 24 * v2;
  v12 = 0;
  CSIPacketAddress::CSIPacketAddress((24 * v2), a2);
  v11 = 24 * v2 + 24;
  sub_1001BD2FC(a1, &__p);
  v7 = *(a1 + 8);
  if (v11 != v10)
  {
    v11 = (v11 - v10 - 24) % 0x18uLL + v10;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_10048678C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004867DC(uint64_t a1, const CSIPacketAddress *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
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

  v13 = a1;
  if (v6)
  {
    sub_1001B95F4(a1, v6);
  }

  __p = 0;
  v10 = 24 * v2;
  v12 = 0;
  CSIPacketAddress::CSIPacketAddress((24 * v2), a2);
  v11 = 24 * v2 + 24;
  sub_1001BD2FC(a1, &__p);
  v7 = *(a1 + 8);
  if (v11 != v10)
  {
    v11 = (v11 - v10 - 24) % 0x18uLL + v10;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_100486908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100486958(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_10048698C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100034AE8(result, a4);
  }

  return result;
}

void sub_1004869E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100486A00(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9 = 0;
      *v9++ = *v8;
      *v8++ = 0;
    }

    while (v8 != v5);
    do
    {
      result = sub_1004865F8(result) + 1;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v10 = *a1;
  *a1 = v7;
  *(a1 + 8) = v10;
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t sub_100486AAC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_1004865F8((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100486AFC(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **sub_100486B34(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_100486B8C(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_1004865F8(&v5);
  }

  return a1;
}

const void **sub_100486B8C(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void sub_100486BC4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_1004865F8(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **sub_100486C48(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_100486C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a1)
  {
    if (a2)
    {
      if (!v6)
      {
        return;
      }

      v10 = 138543618;
      v11 = a1;
      v12 = 2112;
      v13 = a2;
      v7 = "#I \t%{public}@ = %@;";
      v8 = v5;
      v9 = 22;
      goto LABEL_13;
    }

    if (!v6)
    {
      return;
    }

    v10 = 138543362;
    v11 = a1;
    v7 = "#I \t%{public}@ = null;";
    goto LABEL_10;
  }

  if (a2)
  {
    if (!v6)
    {
      return;
    }

    v10 = 138412290;
    v11 = a2;
    v7 = "#I \tnull = %@;";
LABEL_10:
    v8 = v5;
    v9 = 12;
    goto LABEL_13;
  }

  if (!v6)
  {
    return;
  }

  LOWORD(v10) = 0;
  v7 = "#I \tnull = null;";
  v8 = v5;
  v9 = 2;
LABEL_13:
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
}

void sub_100486DCC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_100486E4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100486E60(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100486E60(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100486F68(v2);
    operator delete();
  }

  return a1;
}

void sub_100486EAC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100486EE4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_100486F68(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100486F28(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100486F68(uint64_t a1)
{
  sub_1004722E4(a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_100487024(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1004870F8);
  __cxa_rethrow();
}

void sub_100487064(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004870B8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004870F8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_100487124(uint64_t **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_100473608(*v1);
  sub_10032EAB4(&v4);
  return sub_1000049E0(&v3);
}

void sub_100487168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10032EAB4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_100487184(void *a1)
{
  *a1 = off_101E4EC98;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1004871D0(void *a1)
{
  *a1 = off_101E4EC98;
  v1 = a1[3];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1004872B0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4EC98;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004872F0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_100487300(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

const void **sub_100487340(uint64_t a1)
{
  result = *(a1 + 8);
  v2 = *(result + 34);
  if (v2 != -1)
  {
    *(result + 34) = -1;
    return sub_1000A9FE8(result, v2);
  }

  return result;
}

uint64_t sub_100487360(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E4ECF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004873AC(const void **a1, const void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t *sub_1004873D8(void **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  (*(**v1 + 88))(*v1, v1[2], v1[3]);
  sub_10048745C(&v4);
  return sub_1000049E0(&v3);
}

void sub_100487440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10048745C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10048745C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1004874B0(void **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  (*(**v1 + 88))(*v1, 0, 0);
  sub_10024BAAC(&v4);
  return sub_1000049E0(&v3);
}

void sub_10048751C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_100487538(void *a1)
{
  *a1 = off_101E4ED18;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100487584(void *a1)
{
  *a1 = off_101E4ED18;
  v1 = a1[3];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_100487664(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4ED18;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004876A4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1004876B4(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1004876F4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  (*(*v3 + 136))(v3, 0);
  if (v2 == 1)
  {
    __p[0] = 0;
    sub_10047F944(v3, __p);
    if (__p[0])
    {
      sub_10047EE94(v3, 1, 1);
      sub_10047EE94(v3, 2, 1);
    }

    else
    {
      v4 = *(v3 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(v3 + 120);
        *buf = 67109120;
        v30 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#E Did not find the service ID for %d; will try again later", buf, 8u);
      }
    }

    sub_100005978(__p);
  }

  v6 = *(v3 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Finished starting PDP manager", __p, 2u);
  }

  if ((v2 & 1) == 0)
  {
    sub_100475AD4(v3, v3 + 296, "Failed to get serviceID for IPV4", v7, v8, v9, v10, v11, __p[0]);
    sub_100475AD4(v3, v3 + 488, "Failed to get serviceID for IPV6", v12, v13, v14, v15, v16, __p[0]);
  }

  *(v3 + 780) = 1;
  ServiceMap = Registry::getServiceMap(*(v3 + 48));
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
  __p[0] = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, __p);
  if (!v23)
  {
    v25 = 0;
LABEL_19:
    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    if (!v25)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v25 = v23[3];
  v24 = v23[4];
  if (!v24)
  {
    goto LABEL_19;
  }

  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v18);
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v24);
  v26 = 0;
  if (!v25)
  {
LABEL_21:
    if (v26)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_20:
  sub_10000501C(__p, "Finished starting PDP manager");
  (*(*v25 + 1160))(v25, 3, __p, 0);
  if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if (v26)
  {
    return;
  }

LABEL_22:
  sub_100004A34(v24);
}

void sub_1004879A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004879F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100487A54(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100487A70(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t *sub_100487A80(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10001021C((v1 + 32));
    sub_100305E28((v1 + 24));
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_100487AE4(uint64_t a1)
{
  v15 = a1;
  v2 = *a1;
  v3 = *(a1 + 48);
  v4 = atomic_load((*a1 + 696));
  if (v3 == v4 - 1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        if (*(a1 + 8))
        {
          v7 = IPConfigurationServiceCreate();
          v8 = *(v2 + 40);
          v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          if (v7)
          {
            if (v9)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I IPv6Service successfully created", buf, 2u);
            }

            *buf = 0;
            v17 = 0;
            sub_100004AA0(buf, (v2 + 8));
            operator new();
          }

          if (v9)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E Failed to create IPv6Service", buf, 2u);
          }

          *buf = 0;
          v17 = 0;
          sub_100004AA0(buf, (v2 + 8));
          operator new();
        }

        sub_100004A34(v6);
      }
    }
  }

  else
  {
    v10 = *(v2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      v12 = atomic_load((v2 + 696));
      v13 = *(*(a1 + 40) + 116);
      *buf = 67109632;
      *&buf[4] = v11;
      LOWORD(v17) = 1024;
      *(&v17 + 2) = v12;
      HIWORD(v17) = 1024;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E IPv6Service: state outdated (stale 0): counter=%u, fIPv6ServiceCounter=%u, state=%u", buf, 0x14u);
    }
  }

  return sub_100487A80(&v15);
}

void sub_100487DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_100487E18(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 4);
  v4 = atomic_load((v2 + 696));
  if (v3 == v4 - 1)
  {
    v5 = v1[1];
    if (*(v5 + 116) == 2)
    {
      sub_100475C48(**a1, v5, 1u);
      sub_1004793DC(v2);
      sub_100475C48(v2, v2 + 488, 1u);
      goto LABEL_9;
    }

    v6 = *(v2 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:
      operator delete();
    }

    v11 = *(v1 + 4);
    v12 = atomic_load((v2 + 696));
    v13 = *(v1[1] + 116);
    *buf = 67109632;
    v15 = v11;
    v16 = 1024;
    v17 = v12;
    v18 = 1024;
    v19 = v13;
    v10 = "#E IPv6Service: state outdated (stale 1.1): counter=%u, fIPv6ServiceCounter=%u, state=%u";
  }

  else
  {
    v6 = *(v2 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 4);
    v8 = atomic_load((v2 + 696));
    v9 = *(v1[1] + 116);
    *buf = 67109632;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    v10 = "#E IPv6Service: state outdated (stale 1): counter=%u, fIPv6ServiceCounter=%u, state=%u";
  }

  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v10, buf, 0x14u);
  goto LABEL_9;
}

void sub_100487FE8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 6);
  v4 = atomic_load((v2 + 696));
  if (v3 == v4 - 1)
  {
    v5 = v1[2];
    if (*(v5 + 116) == 2)
    {
      v6 = *(v2 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v1 + 6);
        *buf = 67109120;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: done counter = %u", buf, 8u);
        v5 = v1[2];
      }

      sub_100475C48(v2, v5, 3u);
      *buf = v1[1];
      sub_10047B83C(v2, buf);
      v8 = *buf;
      *buf = 0;
      if (v8)
      {
        CFRelease(v8);
      }

LABEL_12:
      operator delete();
    }

    CFRelease(v1[1]);
    v9 = *(v2 + 40);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v14 = *(v1 + 6);
    v15 = atomic_load((v2 + 696));
    v16 = *(v1[2] + 116);
    *buf = 67109632;
    *&buf[4] = v14;
    v18 = 1024;
    v19 = v15;
    v20 = 1024;
    v21 = v16;
    v13 = "#E IPv6Service: state outdated (stale 2.1): counter=%u, fIPv6ServiceCounter=%u, state=%u";
  }

  else
  {
    CFRelease(v1[1]);
    v9 = *(v2 + 40);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v10 = *(v1 + 6);
    v11 = atomic_load((v2 + 696));
    v12 = *(v1[2] + 116);
    *buf = 67109632;
    *&buf[4] = v10;
    v18 = 1024;
    v19 = v11;
    v20 = 1024;
    v21 = v12;
    v13 = "#E IPv6Service: state outdated (stale 2): counter=%u, fIPv6ServiceCounter=%u, state=%u";
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v13, buf, 0x14u);
  goto LABEL_12;
}

void sub_1004881FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10048824C(uint64_t a1)
{
  v15 = a1;
  v2 = *a1;
  v3 = *(a1 + 48);
  v4 = atomic_load((*a1 + 712));
  if (v3 == v4 - 1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        if (*(a1 + 8))
        {
          v7 = IPConfigurationServiceCreate();
          v8 = *(v2 + 40);
          v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          if (v7)
          {
            if (v9)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I IPv4Service successfully created", buf, 2u);
            }

            *buf = 0;
            v17 = 0;
            sub_100004AA0(buf, (v2 + 8));
            operator new();
          }

          if (v9)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E Failed to create IPv4Service", buf, 2u);
          }

          *buf = 0;
          v17 = 0;
          sub_100004AA0(buf, (v2 + 8));
          operator new();
        }

        sub_100004A34(v6);
      }
    }
  }

  else
  {
    v10 = *(v2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      v12 = atomic_load((v2 + 712));
      v13 = *(*(a1 + 40) + 116);
      *buf = 67109632;
      *&buf[4] = v11;
      LOWORD(v17) = 1024;
      *(&v17 + 2) = v12;
      HIWORD(v17) = 1024;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E IPv4Service: state outdated (stale 0): counter=%u, fIPv4ServiceCounter=%u, state=%u", buf, 0x14u);
    }
  }

  return sub_100487A80(&v15);
}

void sub_100488544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_100488580(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 4);
  v4 = atomic_load((v2 + 712));
  if (v3 == v4 - 1)
  {
    v5 = v1[1];
    if (*(v5 + 116) == 2)
    {
      sub_100475C48(**a1, v5, 1u);
      sub_100478C1C(v2);
      sub_100475C48(v2, v2 + 296, 1u);
      goto LABEL_9;
    }

    v6 = *(v2 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:
      operator delete();
    }

    v11 = *(v1 + 4);
    v12 = atomic_load((v2 + 712));
    v13 = *(v1[1] + 116);
    *buf = 67109632;
    v15 = v11;
    v16 = 1024;
    v17 = v12;
    v18 = 1024;
    v19 = v13;
    v10 = "#E IPv4Service: state outdated (stale 1.1): counter=%u, fIPv4ServiceCounter=%u, state=%u";
  }

  else
  {
    v6 = *(v2 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 4);
    v8 = atomic_load((v2 + 712));
    v9 = *(v1[1] + 116);
    *buf = 67109632;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    v10 = "#E IPv4Service: state outdated (stale 1): counter=%u, fIPv4ServiceCounter=%u, state=%u";
  }

  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v10, buf, 0x14u);
  goto LABEL_9;
}

void sub_100488750(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 6);
  v4 = atomic_load((v2 + 712));
  if (v3 == v4 - 1)
  {
    v5 = v1[2];
    if (*(v5 + 116) == 2)
    {
      v6 = *(v2 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v1 + 6);
        *buf = 67109120;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I IPv4Service: done counter = %u", buf, 8u);
        v5 = v1[2];
      }

      sub_100475C48(v2, v5, 3u);
      *buf = v1[1];
      sub_10047B3DC(v2, buf);
      v8 = *buf;
      *buf = 0;
      if (v8)
      {
        CFRelease(v8);
      }

LABEL_12:
      operator delete();
    }

    CFRelease(v1[1]);
    v9 = *(v2 + 40);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v14 = *(v1 + 6);
    v15 = atomic_load((v2 + 712));
    v16 = *(v1[2] + 116);
    *buf = 67109632;
    *&buf[4] = v14;
    v18 = 1024;
    v19 = v15;
    v20 = 1024;
    v21 = v16;
    v13 = "#E IPv4Service: state outdated (stale 2.1): counter=%u, fIPv4ServiceCounter=%u, state=%u";
  }

  else
  {
    CFRelease(v1[1]);
    v9 = *(v2 + 40);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v10 = *(v1 + 6);
    v11 = atomic_load((v2 + 712));
    v12 = *(v1[2] + 116);
    *buf = 67109632;
    *&buf[4] = v10;
    v18 = 1024;
    v19 = v11;
    v20 = 1024;
    v21 = v12;
    v13 = "#E IPv4Service: state outdated (stale 2): counter=%u, fIPv4ServiceCounter=%u, state=%u";
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v13, buf, 0x14u);
  goto LABEL_12;
}

void sub_100488964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1004889B4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_100488A08(void *a1)
{
  v12 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = a1[3];
        v7 = *(v3 + 40);
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          if (v8)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I non-empty IPv6Service tear down start...", buf, 2u);
          }

          CFRelease(v6);
          v7 = *(v3 + 40);
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          v14 = 0;
          v9 = "#I IPv6Service teared down";
          v10 = &v14;
          goto LABEL_11;
        }

        if (v8)
        {
          *v13 = 0;
          v9 = "#E empty IPv6Service tear down";
          v10 = v13;
LABEL_11:
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
        }
      }

LABEL_12:
      sub_100004A34(v5);
    }
  }

  return sub_1004889B4(&v12);
}

uint64_t *sub_100488B18(void *a1)
{
  v12 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = a1[3];
        v7 = *(v3 + 40);
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          if (v8)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I non-empty IPv4Service tear down start...", buf, 2u);
          }

          CFRelease(v6);
          v7 = *(v3 + 40);
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          v14 = 0;
          v9 = "#I IPv4Service teared down";
          v10 = &v14;
          goto LABEL_11;
        }

        if (v8)
        {
          *v13 = 0;
          v9 = "#E empty IPv4Service tear down";
          v10 = v13;
LABEL_11:
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
        }
      }

LABEL_12:
      sub_100004A34(v5);
    }
  }

  return sub_1004889B4(&v12);
}

void sub_100488C28(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(**a1 + 48));
  v2 = ServiceMap;
  if (v3 < 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, __p);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_10:
  sub_10000501C(__p, "DS service ID update");
  (*(*v9 + 1160))(v9, 3, __p, 0);
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v10)
    {
LABEL_13:
      operator delete();
    }

LABEL_12:
    sub_100004A34(v8);
    goto LABEL_13;
  }

LABEL_11:
  if (v10)
  {
    goto LABEL_13;
  }

  goto LABEL_12;
}

void sub_100488D98(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  operator delete();
}

uint64_t *sub_100488DF4(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_10047FA14(*v1, *(v1 + 24), *(v1 + 28));
  sub_100488E5C(&v4);
  return sub_1000049E0(&v3);
}

void sub_100488E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100488E5C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100488E5C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

void sub_100488EB0(void *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_10047FA14(*v1, *(v1 + 25), *(v1 + 28));
  if (*(v1 + 24))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v6[0] = off_101E4EDD0;
  v6[3] = v6;
  sub_100473E5C(v2, v3, v6);
}

void sub_100488F74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_10000FF50(va2);
  sub_100488FA0(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100488FA0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100489080(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E4EE30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10048913C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1003423AC(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100489160(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004891A0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1004891E0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 32);
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

void sub_10048923C(uint64_t a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = *(a1 + 24);
  LODWORD(v4) = *(a1 + 64);
  sub_100482060(v1, v2, &v4);
}

void sub_1004893C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1004893FC(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_10000FFD0(v1 + 24, *(v1 + 16));
  sub_100489460(&v4);
  return sub_1000049E0(&v3);
}

void sub_100489444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100489460(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100489460(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 24);
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1004894BC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10001021C((v1 + 56));
    sub_10001021C((v1 + 48));
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10048952C(void *a1)
{
  v5[0] = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*a1)
      {
        v5[11] = 0;
        v5[12] = 0;
        sub_100472430();
      }

      sub_100004A34(v3);
    }
  }

  return sub_1004894BC(v5);
}

void sub_100489A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, const void *a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_1000296E0(&__p);
  sub_1004865F8(&a26);
  if (a28)
  {
    sub_100004A34(a28);
  }

  sub_100004A34(v35);
  sub_1004894BC(&a10);
  _Unwind_Resume(a1);
}

const void **sub_100489AF4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_100489B28(uint64_t a1, void *a2, uint64_t a3, NSObject **a4, uint64_t *a5)
{
  *a1 = off_101E416B0;
  *(a1 + 8) = off_101E81D80;
  v10 = a1 + 16;
  *(a1 + 16) = off_101E4FCC0;
  *(a1 + 24) = off_101EC7AB8;
  *(a1 + 32) = off_101E93808;
  v11 = kCtLoggingSystemName;
  v12 = sub_100489EC0(a3);
  ctu::OsLogContext::OsLogContext(&v17, v11, v12);
  sub_100489EE4((a1 + 40), a4, &v17);
  ctu::OsLogContext::~OsLogContext(&v17);
  *a1 = off_101E4F020;
  *(a1 + 8) = off_101E4F678;
  *(a1 + 16) = off_101E4F8C8;
  *(a1 + 24) = off_101E4F998;
  *(a1 + 32) = off_101E4FB70;
  v13 = a2[1];
  *(a1 + 80) = *a2;
  *(a1 + 88) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v14 = *a5;
  v15 = *a4;
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  (*(*v14 + 96))(v14, a2, a3, &object, v10);
  if (object)
  {
    dispatch_release(object);
  }

  *(a1 + 128) = a3;
  operator new();
}

const char *sub_100489EC0(unsigned int a1)
{
  if (a1 > 9)
  {
    return "DATA.PDP:N:";
  }

  else
  {
    return off_101E4FF10[a1];
  }
}

void *sub_100489EE4(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_100489F4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_100489F70(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10048A030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_10048A058(void *a1)
{
  v2 = 0;
  *a1 = off_101E4F020;
  a1[1] = off_101E4F678;
  a1[2] = off_101E4F8C8;
  v3 = (a1 + 3);
  a1[3] = off_101E4F998;
  a1[4] = off_101E4FB70;
  do
  {
    if (SHIBYTE(a1[v2 + 42]) < 0)
    {
      operator delete(a1[v2 + 40]);
    }

    v2 -= 10;
  }

  while (v2 != -20);
  v4 = a1[22];
  a1[22] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[21];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = a1[17];
  a1[17] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = a1[15];
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = a1[11];
  if (v10)
  {
    sub_100004A34(v10);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 9));
  sub_1000C0544(a1 + 5);
  TMKXPCServer.shutdown()();
  DataAPNSettingsPDPActivatorInterface::~DataAPNSettingsPDPActivatorInterface(v3);
  TMKXPCServer.shutdown()();

  TMKXPCServer.shutdown()();
}

void sub_10048A244(void *a1)
{
  sub_10048A058(a1);

  operator delete();
}

void sub_10048A27C(uint64_t a1)
{
  sub_10048A058((a1 - 8));

  operator delete();
}

void sub_10048A2B8(uint64_t a1)
{
  sub_10048A058((a1 - 16));

  operator delete();
}

void sub_10048A2F4(uint64_t a1)
{
  sub_10048A058((a1 - 24));

  operator delete();
}

void sub_10048A330(uint64_t a1)
{
  sub_10048A058((a1 - 32));

  operator delete();
}

void sub_10048A374(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(v1 + 8);
  for (i = *(v1 + 16); v2 != i; v2 += 9)
  {
    v4 = *v2;
    if (*v2 != v2 + 1)
    {
      do
      {
        v5 = v4[4];
        v6 = v4[5];
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 240))(v5);
        if (v6)
        {
          sub_100004A34(v6);
        }

        v7 = v4[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v4[2];
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
      }

      while (v8 != v2 + 1);
    }
  }
}

void sub_10048A448(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048A460(uint64_t a1, int a2)
{
  v2 = *(a1 + 136);
  v3 = *(v2 + 8);
  for (i = *(v2 + 16); v3 != i; v3 += 9)
  {
    v6 = *v3;
    if (*v3 != v3 + 1)
    {
      do
      {
        v8 = v6[4];
        v7 = v6[5];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v8 + 56))(v8) == a2 || anyContextType())
        {
          (*(*v8 + 232))(v8);
        }

        if (v7)
        {
          sub_100004A34(v7);
        }

        v9 = v6[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v6[2];
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != v3 + 1);
    }
  }
}

void sub_10048A580(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048A598(uint64_t a1, int a2, uint64_t a3)
{
  if ((validContextType() & 1) == 0)
  {
    v15 = *(a1 + 72);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v18 = 136315394;
    *v19 = "registerDataDriver";
    *&v19[8] = 2080;
    *&v19[10] = asString();
    v16 = "#E %s: wrong context type: %s";
    v17 = v15;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v18, 0x16u);
    return;
  }

  v6 = *a3;
  v7 = *(a1 + 72);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (!v8)
    {
      return;
    }

    v18 = 136315394;
    *v19 = "registerDataDriver";
    *&v19[8] = 2080;
    *&v19[10] = asString();
    v16 = "#N %s: data driver is empty for: %s";
    v17 = v7;
    goto LABEL_15;
  }

  if (v8)
  {
    (*(*&v6[*(*v6 - 56)] + 24))(&v6[*(*v6 - 56)]);
    v18 = 136315650;
    *v19 = "registerDataDriver";
    *&v19[8] = 2080;
    *&v19[10] = subscriber::asString();
    v20 = 2080;
    v21 = asString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Registering driver %s for context type: %s", &v18, 0x20u);
    v6 = *a3;
  }

  v9 = *(a1 + 136);
  (*(*&v6[*(*v6 - 56)] + 16))(&v18);
  v10 = sub_10048A828(v9, &v18);
  if (*&v19[4])
  {
    sub_100004A34(*&v19[4]);
  }

  v11 = v10 + 16 * a2;
  v13 = *a3;
  v12 = *(a3 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(v11 + 32);
  *(v11 + 24) = v13;
  *(v11 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }
}