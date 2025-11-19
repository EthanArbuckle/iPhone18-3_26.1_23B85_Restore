void entitlements::ControllerImpl::readPAssociatedUri_sync(entitlements::ControllerImpl *this)
{
  if ((*(*(this + 11) + 376) & 1) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    entitlements::ControllerImpl::getCurrentPAssociatedUri(this, &__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v3 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      sub_1001696A4((*(this + 11) + 352), &__p);
      sub_1003CA228(*(this + 11), 0);
      v3 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v3 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1003C8168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **entitlements::ControllerImpl::readPLMNPriorityInfoFromCache(entitlements::ControllerImpl *this)
{
  v18 = 0;
  ServiceMap = Registry::getServiceMap(*(this + 8));
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
  *&v22 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v22);
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
  (*(*v10 + 24))(buf, v10, ***(this + 11) + 24, @"kPLMNPriorityInfoCacheKey", kCarrierEntitlementsWalletDomain, 0, 2);
  sub_100010180(&v18, buf);
  sub_10000A1EC(buf);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v18)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    sub_100A3FA5C(v18, &v22);
    std::mutex::lock((this + 2168));
    if (*(this + 2088) == 1 && (sub_100A3F5FC(&v22, this + 1992) & 1) != 0)
    {
      v12 = *(this + 5);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = PersonalityInfo::logPrefix(***(this + 11));
        *buf = 136315394;
        *&buf[4] = v13;
        v20 = 2080;
        v21 = " ";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sAlready has a copy of stored PLMN priority info, ignoring", buf, 0x16u);
      }
    }

    else
    {
      v14 = *(this + 5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = PersonalityInfo::logPrefix(***(this + 11));
        *buf = 136315394;
        *&buf[4] = v15;
        v20 = 2080;
        v21 = " ";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sPLMN priority info retrieved from storage successfully, sending preferred networks changed event", buf, 0x16u);
      }

      sub_1003CAB60(this + 1992, &v22);
      sub_1003CAC30(this + 1536, (***(this + 11) + 52));
    }

    std::mutex::unlock((this + 2168));
    if (BYTE8(v27) == 1)
    {
      *buf = &v26;
      sub_1003EA960(buf);
    }

    if (BYTE8(v25) == 1)
    {
      *buf = &v24;
      sub_1003EA960(buf);
    }

    if (BYTE8(v23) == 1)
    {
      *buf = &v22;
      sub_1003EA960(buf);
    }
  }

  else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    v16 = PersonalityInfo::logPrefix(***(this + 11));
    sub_10176F674(v16, &v22);
  }

  return sub_10001021C(&v18);
}

void sub_1003C84E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::mutex::unlock((v2 + 2168));
  sub_1003EAA2C(va1);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::ControllerImpl::handleRemoteDevicesChanged(uint64_t this)
{
  if (*(this + 1704) == 1)
  {
    v1 = this;
    v2 = *(this + 1680);
    v3 = *(this + 1688);
    if (v2 == v3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v4 |= sub_100808894(v2);
        v5 |= sub_10080893C(v2);
        v2 += 112;
      }

      while (v2 != v3);
    }

    v6 = *(v1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(v1 + 88));
      v8 = "do NOT ";
      v10 = 136315906;
      v11 = v7;
      if (v4)
      {
        v9 = "";
      }

      else
      {
        v9 = "do NOT ";
      }

      v13 = " ";
      v12 = 2080;
      v14 = 2080;
      if (v5)
      {
        v8 = "";
      }

      v15 = v9;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%schecking remote device list - %shave cellular iPad, %shave VisionPro", &v10, 0x2Au);
    }

    if (v4)
    {
      entitlements::ControllerImpl::startTrackingEntitlement(v1);
    }

    (*(*v1 + 320))(v1, 16);
    if (v5)
    {
      entitlements::ControllerImpl::startTrackingEntitlement(v1);
    }

    return (*(*v1 + 320))(v1, 20);
  }

  return this;
}

const void **entitlements::ControllerImpl::readAuthorizationTokens(entitlements::ControllerImpl *this)
{
  theDict = 0;
  ServiceMap = Registry::getServiceMap(*(this + 8));
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
  keys[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, keys);
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
  (*(*v10 + 24))(&values, v10, ***(this + 11) + 24, @"authorization-tokens", kCarrierEntitlementsWalletDomain, 0, 4);
  sub_100010180(&theDict, &values);
  sub_10000A1EC(&values);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (theDict)
  {
    v63 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = v63;
      v63 = Mutable;
      keys[0] = v13;
      sub_1000296E0(keys);
    }

    Count = CFDictionaryGetCount(theDict);
    if (Count)
    {
      memset(keys, 0, 24);
      sub_100222418(keys, Count);
      values = 0;
      v61 = 0;
      v62 = 0;
      sub_10007D780(&values, Count);
      CFDictionaryGetKeysAndValues(theDict, keys[0], values);
      v15 = keys[0];
      if (keys[1] != keys[0])
      {
        v16 = 0;
        do
        {
          v17 = values[v16];
          if (v17)
          {
            v18 = CFGetTypeID(values[v16]);
            if (v18 == CFDictionaryGetTypeID())
            {
              allocator = 0;
              Value = CFDictionaryGetValue(v17, @"value");
              v20 = Value;
              if (Value)
              {
                v21 = CFGetTypeID(Value);
                if (v21 == CFArrayGetTypeID())
                {
                  v22 = CFArrayGetCount(v20);
                  if (v22)
                  {
                    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v17);
                    v24 = allocator;
                    allocator = MutableCopy;
                    v65 = v24;
                    sub_1000296E0(&v65);
                    CFDictionaryRemoveValue(allocator, @"value");
                    v58 = 0;
                    v25 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                    if (v25)
                    {
                      v26 = v58;
                      v58 = v25;
                      v65 = v26;
                      sub_1000279DC(&v65);
                    }

                    for (i = 0; i != v22; ++i)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
                      v29 = ValueAtIndex;
                      if (ValueAtIndex)
                      {
                        v30 = CFGetTypeID(ValueAtIndex);
                        if (v30 == CFStringGetTypeID())
                        {
                          v57 = 0;
                          v31 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                          if (v31)
                          {
                            v32 = v57;
                            v57 = v31;
                            v65 = v32;
                            sub_1000296E0(&v65);
                          }

                          CFDictionarySetValue(v57, @"value", v29);
                          CFArrayAppendValue(v58, v57);
                          sub_1000296E0(&v57);
                        }
                      }
                    }

                    CFDictionarySetValue(allocator, @"collection", v58);
                    sub_1000279DC(&v58);
                  }
                }

                else
                {
                  v33 = CFGetTypeID(v20);
                  if (v33 == CFNullGetTypeID())
                  {
                    v34 = CFDictionaryCreateMutableCopy(0, 0, v17);
                    v35 = allocator;
                    allocator = v34;
                    v65 = v35;
                    sub_1000296E0(&v65);
                    CFDictionaryRemoveValue(allocator, @"value");
                    CFDictionarySetValue(allocator, @"collection", kCFNull);
                  }
                }
              }

              v36 = keys[0][v16];
              v37 = sub_1013E5D20(0);
              if (CFStringCompare(v36, v37, 0) == kCFCompareEqualTo)
              {
                v38 = allocator;
                if (!allocator)
                {
                  v39 = CFDictionaryCreateMutableCopy(0, 0, v17);
                  v40 = allocator;
                  allocator = v39;
                  v65 = v40;
                  sub_1000296E0(&v65);
                  v38 = allocator;
                }

                CFDictionaryRemoveValue(v38, @"scheduled-ts");
              }

              if (allocator)
              {
                v41 = allocator;
              }

              else
              {
                v41 = v17;
              }

              CFDictionarySetValue(v63, keys[0][v16], v41);
              sub_1000296E0(&allocator);
            }
          }

          ++v16;
          v15 = keys[0];
        }

        while (v16 < keys[1] - keys[0]);
      }

      if (values)
      {
        v61 = values;
        operator delete(values);
        v15 = keys[0];
      }

      if (v15)
      {
        keys[1] = v15;
        operator delete(v15);
      }
    }

    std::mutex::lock((this + 2168));
    sub_100010180(&values, &v63);
    v42 = (this + 2096);
    if ((this + 2096) != &values)
    {
      keys[0] = *v42;
      *v42 = values;
      values = 0;
      sub_10001021C(keys);
    }

    sub_10001021C(&values);
    std::mutex::unlock((this + 2168));
    v43 = *(this + 5);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = PersonalityInfo::logPrefix(***(this + 11));
      v45 = CFDictionaryGetCount(v63);
      LODWORD(keys[0]) = 136315650;
      *(keys + 4) = v44;
      WORD2(keys[1]) = 2080;
      *(&keys[1] + 6) = " ";
      HIWORD(keys[2]) = 2048;
      keys[3] = v45;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%sAuthorization tokens (%zu) retrieved from keychain successfully", keys, 0x20u);
    }

    sub_1000296E0(&v63);
  }

  v46 = Registry::getServiceMap(*(this + 8));
  v47 = v46;
  if (v48 < 0)
  {
    v49 = (v48 & 0x7FFFFFFFFFFFFFFFLL);
    v50 = 5381;
    do
    {
      v48 = v50;
      v51 = *v49++;
      v50 = (33 * v50) ^ v51;
    }

    while (v51);
  }

  std::mutex::lock(v46);
  keys[0] = v48;
  v52 = sub_100009510(&v47[1].__m_.__sig, keys);
  if (v52)
  {
    v53 = v52[3];
    v54 = v52[4];
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v47);
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v54);
      v55 = 0;
      goto LABEL_60;
    }
  }

  else
  {
    v53 = 0;
  }

  std::mutex::unlock(v47);
  v54 = 0;
  v55 = 1;
LABEL_60:
  (*(*v53 + 48))(v53);
  if ((v55 & 1) == 0)
  {
    sub_100004A34(v54);
  }

  return sub_10001021C(&theDict);
}

void sub_1003C8DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, const void *a16, void *__p, uint64_t a18, uint64_t a19, const void *a20, const void *a21, uint64_t a22, void *a23, uint64_t a24)
{
  sub_1000296E0(&a16);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  sub_1000296E0(&a20);
  sub_10001021C(&a21);
  _Unwind_Resume(a1);
}

uint64_t entitlements::ControllerImpl::checkReadImsi(entitlements::ControllerImpl *this, int a2)
{
  memset(&__dst, 0, sizeof(__dst));
  v4 = *(this + 11);
  if (*(v4 + 87) < 0)
  {
    sub_100005F2C(&__dst, *(v4 + 64), *(v4 + 72));
  }

  else
  {
    __dst = *(v4 + 64);
  }

  if (a2)
  {
    v5 = *(this + 11);
    if (*(v5 + 87) < 0)
    {
      **(v5 + 64) = 0;
      *(v5 + 72) = 0;
    }

    else
    {
      *(v5 + 64) = 0;
      *(v5 + 87) = 0;
    }
  }

  v6 = *(this + 11);
  v7 = *(v6 + 87);
  if (v7 < 0)
  {
    v7 = *(v6 + 72);
  }

  if (!v7 && *(this + 80) == 1)
  {
    if (*(**v6 + 49) == 3)
    {
      memset(&__str, 0, sizeof(__str));
      entitlements::ControllerImpl::getLastUsedImsi(this, &__str);
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::string::operator=((*(this + 11) + 64), &__str);
      }

      v9 = *(this + 5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = PersonalityInfo::logPrefix(***(this + 11));
        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v36 = 2080;
        v37 = p_str;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sIMSI for limited use SIM: (%s)", buf, 0x20u);
      }

      v12 = *(this + 11);
      v13 = *(v12 + 87);
      if (v13 < 0)
      {
        v13 = *(v12 + 72);
      }

      if (!v13)
      {
        entitlements::ControllerImpl::initializeLimitedUseSim_sync(this);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v31 = 0;
      v32 = 0;
      sGetSubscriberSimInterface();
      v14 = *(this + 5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = PersonalityInfo::logPrefix(***(this + 11));
        *buf = 136315394;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sGiven IMSI is empty, will wait for real one", buf, 0x16u);
      }
    }
  }

  if ((*(this + 80) & 1) == 0)
  {
    v16 = *(this + 5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = PersonalityInfo::logPrefix(***(this + 11));
      *buf = 136315394;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sSkipped reading IMSI - personality is not active", buf, 0x16u);
    }
  }

  v18 = *(this + 11);
  v19 = *(v18 + 87);
  if (v19 < 0)
  {
    if (!*(v18 + 72))
    {
LABEL_57:
      v29 = 0;
      goto LABEL_58;
    }
  }

  else if (!*(v18 + 87))
  {
    goto LABEL_57;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = __dst.__r_.__value_.__l.__size_;
  }

  if (!v20)
  {
    goto LABEL_57;
  }

  v21 = *(v18 + 72);
  if (v19 >= 0)
  {
    v21 = *(v18 + 87);
  }

  if (v20 == v21)
  {
    v22 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
    v23 = v19 >= 0 ? (v18 + 64) : *(v18 + 64);
    if (!memcmp(v22, v23, v20))
    {
      goto LABEL_57;
    }
  }

  v24 = *(this + 5);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = PersonalityInfo::logPrefix(**v18);
    p_dst = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    v27 = *(this + 11);
    v28 = (v27 + 64);
    if (*(v27 + 87) < 0)
    {
      v28 = *v28;
    }

    *buf = 136315906;
    *&buf[4] = v25;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v36 = 2080;
    v37 = p_dst;
    v38 = 2080;
    v39 = v28;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sIMSI changed %s -> %s", buf, 0x2Au);
    v18 = *(this + 11);
  }

  v29 = 1;
LABEL_58:
  sub_1003CA228(v18, 0);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v29;
}

void sub_1003C9E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, const void *a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  sub_100005978((v46 - 168));
  if (*(v46 - 137) < 0)
  {
    operator delete(*(v46 - 160));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_100045C8C(&a24);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  sub_100005978(&a31);
  if (a40)
  {
    sub_100004A34(a40);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::handleWifiAvailable_sync(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v5 = *a2;
  v6 = v5 == 1 || *(a1 + 1769) == 1;
  v7 = *(a1 + 1768);
  if (v7 != v5 || a3 != 0)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(***(a1 + 88));
      v16 = 136315906;
      v17 = v10;
      v18 = 2080;
      v19 = " ";
      v20 = 2080;
      v21 = asString();
      v22 = 2080;
      v23 = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sWifi availability is changing from %s to %s", &v16, 0x2Au);
      v7 = *(a1 + 1768);
    }

    v11 = v7 == 1 || *(a1 + 1769) == 1;
    if ((v6 != v11 || a3) && entitlements::ControllerImpl::canReachServerOnInternet(a1, 0xFu))
    {
      v12 = *(a1 + 104);
      for (i = *(a1 + 112); v12 != i; v12 += 16)
      {
        v14 = *v12;
        v15 = *(v12 + 8);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        entitlements::CEHTTPDriver::handleWifiAvailable(v14, v11);
        if (v15)
        {
          sub_100004A34(v15);
        }
      }

      if (v11)
      {
        if ((a3 & 1) == 0)
        {
          entitlements::ControllerImpl::updateAndSchedule_sync(a1, 4);
        }
      }
    }
  }
}

void sub_1003CA228(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 544);
  for (i = *(a1 + 552); v2 != i; v2 += 2)
  {
    v5 = v2[1];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        if (*v2)
        {
          (***v2)(*v2, a2);
        }

        sub_100004A34(v7);
      }
    }
  }
}

void sub_1003CA2CC(uint64_t a1)
{
  sub_100004AA0(&v2, (a1 + 8));
  v1 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = 0;
  operator new();
}

void sub_1003CA400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003F35D0(va);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1003CA43C(uint64_t a1)
{
  sub_100004AA0(&v2, (a1 + 8));
  v1 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = 0;
  operator new();
}

void sub_1003CA584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003F48FC(va);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::readUniqueId(entitlements::ControllerImpl *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::mutex::lock((this + 2168));
  std::string::operator=(a2, this + 79);
  std::mutex::unlock((this + 2168));
  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::mutex::lock((this + 2168));
    if ((*(this + 2104) & 1) == 0)
    {
      *(this + 2104) = 1;
      std::mutex::unlock((this + 2168));
      sub_100004AA0(buf, this + 1);
      v5 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v5);
      }

      *buf = 0;
      *&buf[8] = 0;
      sub_100004AA0(buf, this + 1);
      operator new();
    }

    std::mutex::unlock((this + 2168));
  }

  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = PersonalityInfo::logPrefix(***(this + 11));
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2->__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v10 = 2080;
    v11 = v8;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#D %s%sUniqueid: %s", buf, 0x20u);
  }
}

void sub_1003CA7E8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::getUniqueDeviceAccountID(entitlements::ControllerImpl *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::mutex::lock((this + 2168));
  std::string::operator=(a2, this + 80);

  std::mutex::unlock((this + 2168));
}

void sub_1003CA890(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 2168));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::getPhoneNumberSignature(entitlements::ControllerImpl *this@<X0>, void *a2@<X8>)
{
  v4 = this;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1003F4A2C;
  v5[3] = &unk_101E4A640;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    *a2 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1003F505C;
    v10 = &unk_101E4A700;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1003F4FE4;
    v10 = &unk_101E4A6E0;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

const void **entitlements::ControllerImpl::savePhoneNumberSignatureToKeychain_sync(const void **this, const __CFDictionary *a2)
{
  if (!a2)
  {
    return this;
  }

  v2 = this;
  Data = CFPropertyListCreateData(0, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  ServiceMap = Registry::getServiceMap(*(v2 + 64));
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (!v9)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
LABEL_10:
  (*(*v11 + 16))(v11, ***(v2 + 88) + 24, @"signature", Data, kCarrierEntitlementsWalletDomain, 0, 4, 0);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  *(v2 + 1725) = 1;
  return sub_10002D760(&Data);
}

void sub_1003CAB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  if ((v9 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_10002D760(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1003CAB60(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 32;
  if (*(a1 + 96) == 1)
  {
    sub_1003EC234(a1, a2);
    sub_1003EC234(v4, a2 + 32);
    sub_1003EC234(a1 + 64, a2 + 64);
  }

  else
  {
    sub_1003EA5B8(a1, a2);
    sub_1003EA5B8(v4, a2 + 32);
    sub_1003EA5B8(a1 + 64, a2 + 64);
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_1003CABEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 56) == 1)
  {
    sub_1003EA960(&a10);
  }

  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1003EA960(&a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CAC30(uint64_t a1, int *a2)
{
  v8 = 0;
  v2 = *a2;
  v3 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(&v8, v2, v3, v4);
  sub_10000501C(&__p, "/cc/events/preferred_networks_changed");
  object = v8;
  v8 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_1003CACD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

const void **entitlements::ControllerImpl::getCurrentPAssociatedUri@<X0>(Registry **this@<X0>, uint64_t a2@<X8>)
{
  v16 = 0;
  ServiceMap = Registry::getServiceMap(this[8]);
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
  *&v17 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v17);
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
  (*(*v12 + 24))(&v15, v12, **this[11] + 24, @"p_associated_uri", kCarrierEntitlementsWalletDomain, 0, 4);
  sub_100060DE8(&v16, &v15);
  sub_10000A1EC(&v15);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v17 = 0uLL;
  v18 = 0;
  ctu::cf::assign();
  *a2 = v17;
  *(a2 + 16) = v18;
  return sub_100005978(&v16);
}

void sub_1003CAE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a12);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::copyCurrentServiceToken(Registry **this@<X0>, uint64_t a2@<X8>)
{
  memset(&cf[2], 0, 7);
  memset(cf, 0, 15);
  ServiceMap = Registry::getServiceMap(this[8]);
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
  v30 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v30);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_8:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
LABEL_9:
  (*(*v12 + 24))(cf, v12, **this[11] + 24, kServiceTokensCacheKey, kCarrierEntitlementsWalletDomain, 0, 4);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (!cf[0])
  {
    goto LABEL_26;
  }

  v14 = CFGetTypeID(cf[0]);
  if (v14 == CFStringGetTypeID())
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    ctu::cf::assign();
    v15 = 0;
    LOBYTE(v16) = 0;
    v17 = 0;
    v18 = v30;
    v19 = v31;
    LODWORD(cf[2]) = v32;
    *(&cf[2] + 3) = *(&v32 + 3);
    v20 = HIBYTE(v32);
    goto LABEL_14;
  }

  v22 = CFGetTypeID(cf[0]);
  if (v22 != CFDictionaryGetTypeID())
  {
LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(cf[0], kServiceTokenValue);
  v18 = Value;
  if (Value)
  {
    v24 = CFGetTypeID(Value);
    if (v24 != CFStringGetTypeID())
    {
      v18 = 0;
    }
  }

  v25 = CFDictionaryGetValue(cf[0], kServiceTokenType);
  v26 = v25;
  if (!v25)
  {
    v16 = 0;
    if (v18)
    {
      goto LABEL_33;
    }

LABEL_27:
    v19 = 0;
    v20 = 0;
    v17 = 0;
    LOBYTE(v16) = 0;
    v15 = 0;
    goto LABEL_28;
  }

  v27 = CFGetTypeID(v25);
  if (v27 == CFNumberGetTypeID())
  {
    v16 = v26;
  }

  else
  {
    v16 = 0;
  }

  if (!v18)
  {
    goto LABEL_27;
  }

LABEL_33:
  v30 = 0;
  v31 = 0;
  v32 = 0;
  ctu::cf::assign();
  v18 = v30;
  v19 = v31;
  LODWORD(cf[2]) = v32;
  *(&cf[2] + 3) = *(&v32 + 3);
  v20 = HIBYTE(v32);
  if (v16)
  {
    v30 = 0;
    ctu::cf::assign(&v30, v16, v28);
    v17 = v30;
    v15 = v30 >> 8;
    LOBYTE(v16) = 1;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

LABEL_14:
  if (v20 < 0)
  {
    sub_100005F2C(a2, v18, v19);
    v21 = 1;
    goto LABEL_29;
  }

LABEL_28:
  v21 = 0;
  *a2 = v18;
  *(a2 + 8) = v19;
  *(a2 + 16) = cf[2];
  *(a2 + 19) = *(&cf[2] + 3);
  *(a2 + 23) = v20;
LABEL_29:
  *(a2 + 24) = v17 | (v15 << 8);
  *(a2 + 32) = v16;
  *(a2 + 33) = cf[1];
  *(a2 + 36) = *(&cf[1] + 3);
  sub_10000A1EC(cf);
  if (v21)
  {
    operator delete(v18);
  }
}

void sub_1003CB220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_10000A1EC(&a9);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

const void **entitlements::ControllerImpl::copyCurrentEntitlementSubscriberId@<X0>(Registry **this@<X0>, uint64_t a2@<X8>)
{
  v16 = 0;
  ServiceMap = Registry::getServiceMap(this[8]);
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
  *&v17 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v17);
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
  (*(*v12 + 24))(&v15, v12, **this[11] + 24, kEntitlementsSubscriberIDCacheKey, kCarrierEntitlementsWalletDomain, 0, 4);
  sub_100060DE8(&v16, &v15);
  sub_10000A1EC(&v15);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v17 = 0uLL;
  v18 = 0;
  ctu::cf::assign();
  *a2 = v17;
  *(a2 + 16) = v18;
  return sub_100005978(&v16);
}

void sub_1003CB41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a12);
  _Unwind_Resume(a1);
}

const void **entitlements::ControllerImpl::readAuthTokenForDriver@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 0;
  (*(*a1 + 616))(&v7);
  sub_1001B1A54(&v6, &v7);
  sub_10000A1EC(&v7);
  if (v6)
  {
    v7 = 0uLL;
    v8 = 0;
    ctu::cf::assign();
    v3 = v8;
    *a2 = v7;
    *(a2 + 16) = v3;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v4;
  return sub_10002D760(&v6);
}

void sub_1003CB528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  sub_10002D760(&a10);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::saveAuthTokenForDriver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  if (v5 == 1)
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    sub_100034C50(&v8, *a3, *(a3 + 8), *(a3 + 8) - *a3);
    v14 = 0;
    v15 = 0;
    v13 = 0;
    sub_100034C50(&v13, v8, v9, v9 - v8);
    v12 = 0;
    __p = 0;
    v17 = 0;
    v18 = 0;
    sub_100034C50(&__p, v13, v14, v14 - v13);
    v19 = 0;
    if (ctu::cf::convert_copy())
    {
      v6 = v12;
      v12 = v19;
      v20 = v6;
      sub_10002D760(&v20);
    }

    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v7 = v12;
    v11 = v12;
    v12 = 0;
    sub_10002D760(&v12);
    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }
  }

  else
  {
    v7 = 0;
  }

  (*(*a1 + 624))(a1, a2, @"auth-token", v7, 4);
  if (v5)
  {
    sub_10002D760(&v11);
    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }
  }
}

void sub_1003CB6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, int a14, const void *a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  sub_10002D760(&a15);
  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

const void **entitlements::ControllerImpl::readGbaAuthForDriver@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 0;
  (*(*a1 + 616))(&v7);
  sub_100060DE8(&v6, &v7);
  sub_10000A1EC(&v7);
  if (v6)
  {
    v7 = 0;
    v8 = 0uLL;
    ctu::cf::assign();
    *&v9[7] = *(&v8 + 7);
    *v9 = v8;
    v3 = HIBYTE(v8);
    v4 = v8;
    *a2 = v7;
    *(a2 + 8) = v4;
    *(a2 + 15) = *&v9[7];
    *(a2 + 23) = v3;
    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return sub_100005978(&v6);
}

void sub_1003CB828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::saveGbaAuthForDriver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  if (v5 == 1)
  {
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v8, *a3, *(a3 + 8));
    }

    else
    {
      *v8 = *a3;
      v9 = *(a3 + 16);
    }

    if (SHIBYTE(v9) < 0)
    {
      sub_100005F2C(__dst, v8[0], v8[1]);
    }

    else
    {
      *__dst = *v8;
      v13 = v9;
    }

    v11 = 0;
    if (SHIBYTE(v13) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v15 = v13;
    }

    v16 = 0;
    if (ctu::cf::convert_copy())
    {
      v7 = v11;
      v11 = v16;
      v17 = v7;
      sub_100005978(&v17);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = v11;
    v10 = v11;
    v11 = 0;
    sub_100005978(&v11);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  else
  {
    v6 = 0;
  }

  (*(*a1 + 624))(a1, a2, @"gba_auth", v6, 4);
  if (v5)
  {
    sub_100005978(&v10);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1003CBA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

const void **entitlements::ControllerImpl::readValueForDriver(uint64_t a1, void (****a2)(void **__return_ptr), void *a3, uint64_t a4)
{
  v24 = 0;
  (***a2)(&v22);
  v8 = v22[7];
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v8 > 1)
  {
    (***a2)(&v22);
    v9 = CFStringCreateWithFormat(0, 0, @"%@%zu", a3, v22[7]);
    v10 = v24;
    v24 = v9;
    v25 = v10;
    sub_100005978(&v25);
    if (v23)
    {
      sub_100004A34(v23);
    }
  }

  else
  {
    v22 = a3;
    sub_10021D11C(&v24, &v22);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  v22 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v22);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
LABEL_15:
  (*(*v19 + 24))(v19, ***(a1 + 88) + 24, v24, kCarrierEntitlementsWalletDomain, 0, a4);
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  return sub_100005978(&v24);
}

void sub_1003CBC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_100004A34(a5);
  }

  sub_100005978(va);
  _Unwind_Resume(a1);
}

const void **entitlements::ControllerImpl::saveValueForDriver(uint64_t a1, void (****a2)(void **__return_ptr), void *a3, uint64_t a4, uint64_t a5)
{
  v26 = 0;
  (***a2)(&v24);
  v10 = v24[7];
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v10 > 1)
  {
    (***a2)(&v24);
    v11 = CFStringCreateWithFormat(0, 0, @"%@%zu", a3, v24[7]);
    v12 = v26;
    v26 = v11;
    v27 = v12;
    sub_100005978(&v27);
    if (v25)
    {
      sub_100004A34(v25);
    }
  }

  else
  {
    v24 = a3;
    sub_10021D11C(&v26, &v24);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
  v24 = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, &v24);
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
  (*(*v21 + 16))(v21, ***(a1 + 88) + 24, v26, a4, kCarrierEntitlementsWalletDomain, 0, a5, 0);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  return sub_100005978(&v26);
}

void sub_1003CBEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_100004A34(a5);
  }

  sub_100005978(va);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::readUniqueIdAndAliasIdFromBB(uint64_t a1, int a2, _BYTE *a3)
{
  v6 = *(a1 + 88);
  if ((*(v6 + 63) & 0x8000000000000000) != 0)
  {
    if (*(v6 + 48))
    {
      goto LABEL_6;
    }
  }

  else if (*(v6 + 63))
  {
    goto LABEL_6;
  }

  sGetSubscriberSimInterface();
  v6 = *(a1 + 88);
LABEL_6:
  if ((*(v6 + 39) & 0x8000000000000000) != 0)
  {
    if (*(v6 + 24))
    {
      goto LABEL_18;
    }
  }

  else if (*(v6 + 39))
  {
    goto LABEL_18;
  }

  v7 = *(a1 + 1560);
  if (v7)
  {
    v8 = a1 + 1560;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v8 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v8 != a1 + 1560 && *(v8 + 32) <= a2)
    {
      std::string::operator=((v6 + 16), (v8 + 40));
      v6 = *(a1 + 88);
    }
  }

LABEL_18:
  if ((*(v6 + 455) & 0x8000000000000000) != 0)
  {
    if (*(v6 + 440))
    {
      goto LABEL_26;
    }
  }

  else if (*(v6 + 455))
  {
    goto LABEL_26;
  }

  std::string::operator=((v6 + 432), (v6 + 16));
  v9 = *(a1 + 40);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  v6 = *(a1 + 88);
  if (v10)
  {
    v11 = PersonalityInfo::logPrefix(**v6);
    v12 = subscriber::asString();
    v13 = *(a1 + 88);
    v14 = (v13 + 432);
    if (*(v13 + 455) < 0)
    {
      v14 = *v14;
    }

    LODWORD(__str.__r_.__value_.__l.__data_) = 136315906;
    *(__str.__r_.__value_.__r.__words + 4) = v11;
    WORD2(__str.__r_.__value_.__r.__words[1]) = 2080;
    *(&__str.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(__str.__r_.__value_.__r.__words[2]) = 2080;
    v24 = v12;
    v25 = 2080;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sUnique ID for slot %s from BB is %s", &__str, 0x2Au);
    v6 = *(a1 + 88);
  }

LABEL_26:
  if (*(v6 + 479) < 0)
  {
    **(v6 + 456) = 0;
    *(v6 + 464) = 0;
  }

  else
  {
    *(v6 + 456) = 0;
    *(v6 + 479) = 0;
  }

  if (a3[1])
  {
    if (*a3 == 1)
    {
      v15 = *(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PersonalityInfo::logPrefix(***(a1 + 88));
        LODWORD(__str.__r_.__value_.__l.__data_) = 136315394;
        *(__str.__r_.__value_.__r.__words + 4) = v16;
        WORD2(__str.__r_.__value_.__r.__words[1]) = 2080;
        *(&__str.__r_.__value_.__r.__words[1] + 6) = " ";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%salias ID is requried in getAuthentication", &__str, 0x16u);
      }

      v17 = *(a1 + 1552);
      v18 = (a1 + 1560);
      if (v17 != (a1 + 1560))
      {
        while (!subscriber::isValidSimSlot() || *(v17 + 8) == a2)
        {
          v19 = v17[1];
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
              v20 = v17[2];
              v21 = *v20 == v17;
              v17 = v20;
            }

            while (!v21);
          }

          v17 = v20;
          if (v20 == v18)
          {
            goto LABEL_48;
          }
        }
      }

      if (v17 != v18)
      {
        std::string::operator=((*(a1 + 88) + 456), (v17 + 5));
      }
    }
  }

  else
  {
    v22 = *(a1 + 88);
    if (*(v22 + 455) < 0)
    {
      **(v22 + 432) = 0;
      *(v22 + 440) = 0;
    }

    else
    {
      *(v22 + 432) = 0;
      *(v22 + 455) = 0;
    }
  }

LABEL_48:
  sub_1003CA228(*(a1 + 88), 0);
}

void sub_1003CC2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **entitlements::ControllerImpl::copyCurrentEntitlementUniqueIdInfo@<X0>(Registry **this@<X0>, uint64_t a2@<X8>)
{
  v16 = 0;
  ServiceMap = Registry::getServiceMap(this[8]);
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
  *&v17 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v17);
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
  (*(*v12 + 24))(&v15, v12, **this[11] + 24, @"unique_dev_id", kCarrierEntitlementsWalletDomain, 0, 4);
  sub_100060DE8(&v16, &v15);
  sub_10000A1EC(&v15);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v17 = 0uLL;
  v18 = 0;
  ctu::cf::assign();
  *a2 = v17;
  *(a2 + 16) = v18;
  return sub_100005978(&v16);
}

void sub_1003CC470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a12);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::saveEntitlementUniqueIdInfo(Registry **this, const __CFString *a2)
{
  ServiceMap = Registry::getServiceMap(this[8]);
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
  (*(*v12 + 16))(v12, **this[11] + 24, @"unique_dev_id", a2, kCarrierEntitlementsWalletDomain, 0, 4, @"entitlementsUniqueID");
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1003CC604(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::handleUpdateTimer_sync(entitlements::ControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    v10 = v3;
    v11 = 2080;
    v12 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sEntitlements Timer expired, updating entitlements", buf, 0x16u);
  }

  sub_1003CC7D0(this + 312);
  v4 = *(this + 13);
  v5 = *(this + 14);
  while (v4 != v5)
  {
    (*(**v4 + 256))(*v4);
    v4 += 2;
  }

  entitlements::ControllerImpl::invalidateResults_sync(this, 5, 3);
  entitlements::ControllerImpl::updateAndSchedule_sync(this, 5);
  v6 = ***(this + 11);
  if (*(v6 + 47) < 0)
  {
    sub_100005F2C(__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    *__p = *(v6 + 24);
    v8 = *(v6 + 40);
  }

  sub_100819B14(&event::entitlements::refreshEntitlementCache, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003CC7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CC7D0(uint64_t result)
{
  v1 = *(result + 80);
  if (v1 != (result + 88))
  {
    do
    {
      v2 = *(v1 + 8);
      if (v2)
      {
        *(v1 + 8) = v2 - 1;
      }

      v3 = v1[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v1[2];
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != (result + 88));
  }

  return result;
}

void entitlements::ControllerImpl::setEntitlement(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::getProvisioning(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::setProvisioning(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003EAAA8(&v4, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1003CCD2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::enablePushNotification(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::disablePushNotification(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void sub_1003CD1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100270CFC(va);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::queryVVMAccountStatus(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = a2[1];
  v4 = a2[2];
  v5[0] = v3;
  v5[1] = v4;
  if (v4)
  {
    *(v3 + 16) = v5;
    *a2 = v2;
    *v2 = 0;
    a2[2] = 0;
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::updatePushToken(uint64_t a1, uint64_t a2, const void **a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  sub_10005C7A4(&v6, a3);
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::updatePushToken_sync(uint64_t a1, uint64_t a2, CFStringRef *a3, uint64_t a4)
{
  if ((*(*a1 + 72))(a1, 3))
  {
    v8 = *(a1 + 104);
    for (i = *(a1 + 112); v8 != i; v8 += 2)
    {
      if (sub_1009C1740(*v8, 3u) && ((*(**v8 + 376))(*v8, 12, 0) & 1) == 0)
      {
        theString2 = 0;
        (***v8)(buf);
        sub_100A838B4(*buf, &theString2);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (!*a3 || theString2 && CFStringCompare(*a3, theString2, 0) == kCFCompareEqualTo)
        {
          v13 = 0;
          if (*(***(a1 + 88) + 49))
          {
            v10 = *(***(a1 + 88) + 49) == 3;
          }

          else
          {
            v10 = 1;
          }

          if (v10)
          {
            v15 = buf;
            *buf = 0;
            sub_100070B94(a1, &v15);
            v13 = *buf;
          }

          (*(**v8 + 192))(*v8, a2, &v13, a4);
        }

        sub_100005978(&theString2);
      }
    }
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdatePushToken is not supported", buf, 0x16u);
    }
  }
}

void sub_1003CD6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::getSIMStatusWithCallback(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 3);
  v4 = a1;
  v5 = v3;
  v6 = a2;
  sub_10006F1C0();
}

void sub_1003CD960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CD97C(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 216);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*(a1 + 208) == 1)
  {
    if (*(a1 + 207) < 0)
    {
      operator delete(*(a1 + 184));
    }

    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }
  }

  v6 = (a1 + 120);
  sub_1000087B4(&v6);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_1003CDE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CDFF8(void *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10004F058(a1);
}

void entitlements::ControllerImpl::getSigningKeysWithCallback(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 3);
  v4 = a1;
  v5 = v3;
  v6 = a2;
  sub_10006F1C0();
}

void sub_1003CE22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, dispatch_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void entitlements::ControllerImpl::getBlindSignaturesWithCallback(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 3);
  v4 = a1;
  v5 = v3;
  v6 = a2;
  sub_10006F1C0();
}

void sub_1003CE498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, dispatch_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void entitlements::ControllerImpl::enableServiceWithCallback(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 3);
  v4 = a1;
  v5 = v3;
  v6 = a2;
  sub_10006F1C0();
}

void sub_1003CE7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, dispatch_object_t object)
{
  if (a2)
  {
    if (*(v33 + 55) < 0)
    {
      operator delete(*(v33 + 32));
    }

    v35 = *(v33 + 24);
    if (v35)
    {
      sub_100004A34(v35);
    }

    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CEBFC(void *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10004F058(a1);
}

void entitlements::ControllerImpl::getAuthTokenWithCallback(uint64_t a1, int a2)
{
  v2 = a1;
  v3 = a2;
  sub_10006F1C0();
}

void sub_1003CEDDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void entitlements::ControllerImpl::handleIDSTrustToken_sync(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  if (*a4 == 1)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    ctu::parse_hex();
    ctu::base64::encode();
    *__p = *buf;
    v27 = *&buf[16];
    if ((atomic_load_explicit(&qword_101FBA340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA340))
    {
      sub_1000CE0A8(buf);
      qword_101FBA338 = *buf;
      __cxa_guard_release(&qword_101FBA340);
    }

    v7 = qword_101FBA338;
    if (qword_101FBA338)
    {
      v8 = v27 >= 0 ? __p : __p[0];
      v9 = v27 >= 0 ? HIBYTE(v27) : __p[1];
      memset(buf, 0, sizeof(buf));
      sub_1001E0D88(buf, v8, v9 + v8, v9);
      sub_1009A2010(v7, "");
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    sub_100004AA0(buf, (a1 + 8));
    v11 = *buf;
    v10 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
    }

    v12 = *a3;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1174405120;
    v21[2] = sub_1003CF258;
    v21[3] = &unk_101E49720;
    v21[4] = a1;
    v21[5] = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    *buf = v21;
    (*(*a1 + 184))(a1, a2, v12, __p, a1 + 24, buf);
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#W %s%s[2] GetIDSTrustToken failed", buf, 0x16u);
    }

    v15 = (a1 + 800);
    v16 = *(a1 + 808);
    if (v16 != (a1 + 800))
    {
      do
      {
        *buf = 0;
        *&buf[8] = 0;
        sub_1003EC074(buf, (v16 + 2));
        v17 = *buf;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 1174405120;
        v18[2] = sub_1003CF768;
        v18[3] = &unk_101E49750;
        sub_1003EC074(&object, buf);
        dispatch_async(v17, v18);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (object)
        {
          dispatch_release(object);
        }

        if (*&buf[8])
        {
          _Block_release(*&buf[8]);
        }

        if (*buf)
        {
          dispatch_release(*buf);
        }

        v16 = v16[1];
      }

      while (v16 != v15);
    }

    sub_1003E9B08(v15);
  }
}

void sub_1003CF1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_101FBA340);
  if (__p)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void sub_1003CF258(void *a1, uint64_t a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        v10 = *(v7 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = PersonalityInfo::logPrefix(***(v7 + 88));
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
          *(buf.__r_.__value_.__r.__words + 4) = v11;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s[3] Received Carrier Auth Token", &buf, 0x16u);
          v10 = *(v7 + 40);
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = PersonalityInfo::logPrefix(***(v7 + 88));
          v13 = *(v7 + 816);
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
          *(buf.__r_.__value_.__r.__words + 4) = v12;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
          v26 = v13;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sfAuthTokenConsumers size %zu", &buf, 0x20u);
        }

        memset(&buf, 0, sizeof(buf));
        if (a3)
        {
          v14 = *(*a2 + 24);
          if (v14)
          {
            std::string::operator=(&buf, v14);
          }
        }

        v15 = (v7 + 800);
        for (i = *(v7 + 808); i != v15; i = i[1])
        {
          v23 = 0;
          v24 = 0;
          sub_1003EC074(&v23, (i + 2));
          v17 = v23;
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 1174405120;
          v18[2] = sub_1003CF574;
          v18[3] = &unk_101E496F0;
          sub_1003EC074(&object, &v23);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = buf;
          }

          v22 = a3;
          dispatch_async(v17, v18);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (v24)
          {
            _Block_release(v24);
          }

          if (v23)
          {
            dispatch_release(v23);
          }
        }

        sub_1003E9B08(v15);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      sub_100004A34(v9);
    }
  }
}

void sub_1003CF514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v26);
  _Unwind_Resume(a1);
}

void sub_1003CF588(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  (*(v4 + 16))(v4, __p, *a3);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003CF610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003CF62C(uint64_t a1, uint64_t a2)
{
  result = sub_1003EC074((a1 + 32), a2 + 32);
  if (*(a2 + 71) < 0)
  {
    return sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  return result;
}

uint64_t sub_1003CF698(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void sub_1003CF6D8(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

uint64_t sub_1003CF73C(uint64_t result, uint64_t a2)
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

void sub_1003CF758(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003CF768(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v2 = 0;
  sub_1003CF7D4((a1 + 40), __p);
  if (SHIBYTE(v2) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003CF7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CF7D4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a2 + 16);
  *__p = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  (*(v2 + 16))();
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003CF838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CF860(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void entitlements::ControllerImpl::transferSIMServiceWithCallback(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v56 = *(a3 + 3);
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sTransferSIMService request: {", buf, 0x16u);
    v6 = *(a1 + 40);
  }

  if (*(a4 + 24) == 1 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((a4[3] & 1) == 0)
    {
      sub_1000D1644();
    }

    if (*(a4 + 23) >= 0)
    {
      v9 = a4;
    }

    else
    {
      v9 = *a4;
    }

    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sAuthToken: %s", buf, 0x20u);
    v6 = *(a1 + 40);
  }

  if (*(a4 + 241) == 1 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((*(a4 + 241) & 1) == 0)
    {
      sub_1000D1644();
    }

    v11 = *(a4 + 240);
    *buf = 136315650;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 1026;
    *&buf[24] = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sIsWebviewRequested: %{public}d", buf, 0x1Cu);
    v6 = *(a1 + 40);
  }

  if (*(a4 + 272) == 1 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((a4[34] & 1) == 0)
    {
      sub_1000D1644();
    }

    v13 = a4 + 31;
    if (*(a4 + 271) < 0)
    {
      v13 = a4[31];
    }

    *buf = 136315650;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2082;
    *&buf[24] = v13;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sTransferFlowType: %{public}s", buf, 0x20u);
    v6 = *(a1 + 40);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sTarget: {", buf, 0x16u);
    v6 = *(a1 + 40);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sIccidStates: [", buf, 0x16u);
  }

  v17 = a4[14];
  for (i = a4[15]; v17 != i; v17 += 6)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    *__p = 0u;
    memset(buf, 0, sizeof(buf));
    if (*(v17 + 23) < 0)
    {
      sub_100005F2C(buf, *v17, *(v17 + 1));
    }

    else
    {
      v18 = *v17;
      *&buf[16] = *(v17 + 2);
      *buf = v18;
    }

    sub_10006F264(&buf[24], (v17 + 24));
    sub_10006F264(&__p[1], (v17 + 56));
    WORD4(v62) = *(v17 + 44);
    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = PersonalityInfo::logPrefix(***(a1 + 88));
      v63[0] = 136315394;
      *&v63[1] = v20;
      v64 = 2080;
      v65 = " ";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s{", v63, 0x16u);
      v19 = *(a1 + 40);
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = PersonalityInfo::logPrefix(***(a1 + 88));
      v22 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v22 = *buf;
      }

      v63[0] = 136315650;
      *&v63[1] = v21;
      v64 = 2080;
      v65 = " ";
      v66 = 2080;
      v67 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%siccid: %s", v63, 0x20u);
      v19 = *(a1 + 40);
    }

    if (LOBYTE(__p[0]) == 1 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((__p[0] & 1) == 0)
      {
        sub_1000D1644();
      }

      if (v59 >= 0)
      {
        v24 = &buf[24];
      }

      else
      {
        v24 = *&buf[24];
      }

      v63[0] = 136315650;
      *&v63[1] = v23;
      v64 = 2080;
      v65 = " ";
      v66 = 2082;
      v67 = v24;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%simei: %{public}s", v63, 0x20u);
      v19 = *(a1 + 40);
    }

    if (v62 == 1 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v25 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((v62 & 1) == 0)
      {
        sub_1000D1644();
      }

      if (v61 >= 0)
      {
        v26 = &__p[1];
      }

      else
      {
        v26 = __p[1];
      }

      v63[0] = 136315650;
      *&v63[1] = v25;
      v64 = 2080;
      v65 = " ";
      v66 = 2082;
      v67 = v26;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%smeid: %{public}s", v63, 0x20u);
      v19 = *(a1 + 40);
    }

    if (BYTE9(v62) == 1 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v27 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((BYTE9(v62) & 1) == 0)
      {
        sub_1000D1644();
      }

      v63[0] = 136315650;
      *&v63[1] = v27;
      v64 = 2080;
      v65 = " ";
      v66 = 1026;
      LODWORD(v67) = BYTE8(v62);
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sprofileRelease: %{public}d", v63, 0x1Cu);
      v19 = *(a1 + 40);
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v28 = PersonalityInfo::logPrefix(***(a1 + 88));
      v63[0] = 136315394;
      *&v63[1] = v28;
      v64 = 2080;
      v65 = " ";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s}", v63, 0x16u);
    }

    if (v62 == 1 && SHIBYTE(v61) < 0)
    {
      operator delete(__p[1]);
    }

    if (LOBYTE(__p[0]) == 1 && SHIBYTE(v59) < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  v29 = *(a1 + 40);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v30;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%s]", buf, 0x16u);
    v29 = *(a1 + 40);
  }

  if (*(a4 + 160) == 1 && os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((a4[20] & 1) == 0)
    {
      sub_1000D1644();
    }

    v32 = a4 + 17;
    if (*(a4 + 159) < 0)
    {
      v32 = a4[17];
    }

    *buf = 136315650;
    *&buf[4] = v31;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2082;
    *&buf[24] = v32;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sDeviceType: %{public}s", buf, 0x20u);
    v29 = *(a1 + 40);
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v33 = PersonalityInfo::logPrefix(***(a1 + 88));
    v34 = a4 + 11;
    if (*(a4 + 111) < 0)
    {
      v34 = a4[11];
    }

    *buf = 136315650;
    *&buf[4] = v33;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2082;
    *&buf[24] = v34;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%seid: %{public}s", buf, 0x20u);
    v29 = *(a1 + 40);
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v35 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v35;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%s}", buf, 0x16u);
    v29 = *(a1 + 40);
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v36 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v36;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sSource: {", buf, 0x16u);
    v29 = *(a1 + 40);
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v37 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v37;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sIccidStates: [", buf, 0x16u);
  }

  v39 = a4[4];
  for (j = a4[5]; v39 != j; v39 += 6)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    *__p = 0u;
    memset(buf, 0, sizeof(buf));
    if (*(v39 + 23) < 0)
    {
      sub_100005F2C(buf, *v39, *(v39 + 1));
    }

    else
    {
      v40 = *v39;
      *&buf[16] = *(v39 + 2);
      *buf = v40;
    }

    sub_10006F264(&buf[24], (v39 + 24));
    sub_10006F264(&__p[1], (v39 + 56));
    WORD4(v62) = *(v39 + 44);
    v41 = *(a1 + 40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = PersonalityInfo::logPrefix(***(a1 + 88));
      v63[0] = 136315394;
      *&v63[1] = v42;
      v64 = 2080;
      v65 = " ";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%s{", v63, 0x16u);
      v41 = *(a1 + 40);
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v43 = PersonalityInfo::logPrefix(***(a1 + 88));
      v44 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v44 = *buf;
      }

      v63[0] = 136315650;
      *&v63[1] = v43;
      v64 = 2080;
      v65 = " ";
      v66 = 2080;
      v67 = v44;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%siccid: %s", v63, 0x20u);
      v41 = *(a1 + 40);
    }

    if (LOBYTE(__p[0]) == 1 && os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v45 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((__p[0] & 1) == 0)
      {
        sub_1000D1644();
      }

      if (v59 >= 0)
      {
        v46 = &buf[24];
      }

      else
      {
        v46 = *&buf[24];
      }

      v63[0] = 136315650;
      *&v63[1] = v45;
      v64 = 2080;
      v65 = " ";
      v66 = 2082;
      v67 = v46;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%simei: %{public}s", v63, 0x20u);
      v41 = *(a1 + 40);
    }

    if (v62 == 1 && os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v47 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((v62 & 1) == 0)
      {
        sub_1000D1644();
      }

      if (v61 >= 0)
      {
        v48 = &__p[1];
      }

      else
      {
        v48 = __p[1];
      }

      v63[0] = 136315650;
      *&v63[1] = v47;
      v64 = 2080;
      v65 = " ";
      v66 = 2082;
      v67 = v48;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%smeid: %{public}s", v63, 0x20u);
      v41 = *(a1 + 40);
    }

    if (BYTE9(v62) == 1 && os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v49 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((BYTE9(v62) & 1) == 0)
      {
        sub_1000D1644();
      }

      v63[0] = 136315650;
      *&v63[1] = v49;
      v64 = 2080;
      v65 = " ";
      v66 = 1026;
      LODWORD(v67) = BYTE8(v62);
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%sprofileRelease: %{public}d", v63, 0x1Cu);
      v41 = *(a1 + 40);
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v50 = PersonalityInfo::logPrefix(***(a1 + 88));
      v63[0] = 136315394;
      *&v63[1] = v50;
      v64 = 2080;
      v65 = " ";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%s}", v63, 0x16u);
    }

    if (v62 == 1 && SHIBYTE(v61) < 0)
    {
      operator delete(__p[1]);
    }

    if (LOBYTE(__p[0]) == 1 && SHIBYTE(v59) < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  v51 = *(a1 + 40);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v52 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v52;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I %s%s]", buf, 0x16u);
    v51 = *(a1 + 40);
  }

  if (*(a4 + 80) == 1 && os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v53 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((a4[10] & 1) == 0)
    {
      sub_1000D1644();
    }

    v54 = a4 + 7;
    if (*(a4 + 79) < 0)
    {
      v54 = a4[7];
    }

    *buf = 136315650;
    *&buf[4] = v53;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2082;
    *&buf[24] = v54;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I %s%seid: %{public}s", buf, 0x20u);
    v51 = *(a1 + 40);
  }

  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v55 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v55;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I %s%s}", buf, 0x16u);
  }

  *buf = a1;
  buf[8] = v56;
  *&buf[12] = a2;
  sub_10006F1C0();
}

void sub_1003D0940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::transferAuthorizationWithCallback(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v45 = *(a3 + 3);
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sTransferAuthorization request: {", buf, 0x16u);
    v6 = *(a1 + 40);
  }

  v48 = a4;
  if (*(a4 + 24) == 1 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((a4[3] & 1) == 0)
    {
      sub_1000D1644();
    }

    if (*(a4 + 23) >= 0)
    {
      v9 = a4;
    }

    else
    {
      v9 = *a4;
    }

    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sAuthToken: %s", buf, 0x20u);
    v6 = *(a1 + 40);
  }

  if (*(a4 + 33) == 1 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((*(a4 + 33) & 1) == 0)
    {
      sub_1000D1644();
    }

    v11 = *(a4 + 32);
    *buf = 136315650;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 1024;
    *&buf[24] = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieveOTP: %d", buf, 0x1Cu);
    v6 = *(a1 + 40);
  }

  if (*(a4 + 35) == 1 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((*(a4 + 35) & 1) == 0)
    {
      sub_1000D1644();
    }

    v13 = *(a4 + 34);
    *buf = 136315650;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 1024;
    *&buf[24] = v13;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieveTermsAndCondition: %d", buf, 0x1Cu);
    v6 = *(a1 + 40);
  }

  if (*(a4 + 37) == 1 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((*(a4 + 37) & 1) == 0)
    {
      sub_1000D1644();
    }

    v15 = *(a4 + 36);
    *buf = 136315650;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 1026;
    *&buf[24] = v15;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieveTransferType: %{public}d", buf, 0x1Cu);
    v6 = *(a1 + 40);
  }

  if (*(a4 + 39) == 1 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((*(a4 + 39) & 1) == 0)
    {
      sub_1000D1644();
    }

    v17 = *(a4 + 38);
    *buf = 136315650;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 1026;
    *&buf[24] = v17;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieveToken: %{public}d", buf, 0x1Cu);
    v6 = *(a1 + 40);
  }

  if (*(a4 + 208) == 1 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((a4[26] & 1) == 0)
    {
      sub_1000D1644();
    }

    v19 = a4[25];
    *buf = 136315650;
    *&buf[4] = v18;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2050;
    *&buf[24] = v19;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sSupportedCapabilities: %{public}llu", buf, 0x20u);
    v6 = *(a1 + 40);
  }

  if (*(a4 + 240) == 1 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v20 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((a4[30] & 1) == 0)
    {
      sub_1000D1644();
    }

    v21 = a4[29];
    *buf = 136315650;
    *&buf[4] = v20;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2050;
    *&buf[24] = v21;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sCarrierCharacteristics: %{public}llu", buf, 0x20u);
    v6 = *(a1 + 40);
  }

  v47 = a4 + 5;
  if (*(a4 + 192) == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v22 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sTarget: {", buf, 0x16u);
      v6 = *(a1 + 40);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v23 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v23;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sIccidStates: [", buf, 0x16u);
    }

    if ((a4[24] & 1) == 0)
    {
      sub_1000D1644();
    }

    v25 = a4[8];
    for (i = a4[9]; v25 != i; v25 += 6)
    {
      *v52 = 0u;
      v53 = 0u;
      *v50 = 0u;
      *__p = 0u;
      memset(buf, 0, sizeof(buf));
      if (*(v25 + 23) < 0)
      {
        sub_100005F2C(buf, *v25, *(v25 + 1));
      }

      else
      {
        v26 = *v25;
        *&buf[16] = *(v25 + 2);
        *buf = v26;
      }

      sub_10006F264(&buf[24], (v25 + 24));
      sub_10006F264(&__p[1], (v25 + 56));
      WORD4(v53) = *(v25 + 44);
      v27 = *(a1 + 40);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = PersonalityInfo::logPrefix(***(a1 + 88));
        v54[0] = 136315394;
        *&v54[1] = v28;
        v55 = 2080;
        v56 = " ";
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%s{", v54, 0x16u);
        v27 = *(a1 + 40);
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = PersonalityInfo::logPrefix(***(a1 + 88));
        v30 = buf;
        if ((buf[23] & 0x80u) != 0)
        {
          v30 = *buf;
        }

        v54[0] = 136315650;
        *&v54[1] = v29;
        v55 = 2080;
        v56 = " ";
        v57 = 2080;
        v58 = v30;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%siccid: %s", v54, 0x20u);
        v27 = *(a1 + 40);
      }

      if (LOBYTE(__p[0]) == 1 && os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v31 = PersonalityInfo::logPrefix(***(a1 + 88));
        if ((__p[0] & 1) == 0)
        {
          sub_1000D1644();
        }

        if (SHIBYTE(v50[1]) >= 0)
        {
          v32 = &buf[24];
        }

        else
        {
          v32 = *&buf[24];
        }

        v54[0] = 136315650;
        *&v54[1] = v31;
        v55 = 2080;
        v56 = " ";
        v57 = 2082;
        v58 = v32;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%simei: %{public}s", v54, 0x20u);
        v27 = *(a1 + 40);
      }

      if (v53 == 1 && os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v33 = PersonalityInfo::logPrefix(***(a1 + 88));
        if ((v53 & 1) == 0)
        {
          sub_1000D1644();
        }

        if (SHIBYTE(v52[1]) >= 0)
        {
          v34 = &__p[1];
        }

        else
        {
          v34 = __p[1];
        }

        v54[0] = 136315650;
        *&v54[1] = v33;
        v55 = 2080;
        v56 = " ";
        v57 = 2082;
        v58 = v34;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%smeid: %{public}s", v54, 0x20u);
        v27 = *(a1 + 40);
      }

      if (BYTE9(v53) == 1 && os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v35 = PersonalityInfo::logPrefix(***(a1 + 88));
        if ((BYTE9(v53) & 1) == 0)
        {
          sub_1000D1644();
        }

        v54[0] = 136315650;
        *&v54[1] = v35;
        v55 = 2080;
        v56 = " ";
        v57 = 1026;
        LODWORD(v58) = BYTE8(v53);
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%sprofileRelease: %{public}d", v54, 0x1Cu);
        v27 = *(a1 + 40);
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v36 = PersonalityInfo::logPrefix(***(a1 + 88));
        v54[0] = 136315394;
        *&v54[1] = v36;
        v55 = 2080;
        v56 = " ";
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%s}", v54, 0x16u);
      }

      if (v53 == 1 && SHIBYTE(v52[1]) < 0)
      {
        operator delete(__p[1]);
      }

      if (LOBYTE(__p[0]) == 1 && SHIBYTE(v50[1]) < 0)
      {
        operator delete(*&buf[24]);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    v37 = *(a1 + 40);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v38;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%s]", buf, 0x16u);
    }

    if ((v48[24] & 1) == 0)
    {
      sub_1000D1644();
    }

    v6 = *(a1 + 40);
    if (*(v48 + 112) == 1 && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      v39 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((v48[24] & 1) == 0)
      {
        sub_1000D1644();
      }

      if ((v48[14] & 1) == 0)
      {
        sub_1000D1644();
      }

      v40 = v48 + 11;
      if (*(v48 + 111) < 0)
      {
        v40 = v48[11];
      }

      *buf = 136315650;
      *&buf[4] = v39;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2082;
      *&buf[24] = v40;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sDeviceType: %{public}s", buf, 0x20u);
      v6 = *(a1 + 40);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v41 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((v48[24] & 1) == 0)
      {
        sub_1000D1644();
      }

      v42 = v47;
      if (*(v48 + 63) < 0)
      {
        v42 = v48[5];
      }

      *buf = 136315650;
      *&buf[4] = v41;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2082;
      *&buf[24] = v42;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%seid: %{public}s", buf, 0x20u);
      v6 = *(a1 + 40);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v43 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v43;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s}", buf, 0x16u);
      v6 = *(a1 + 40);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v44 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v44;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s}", buf, 0x16u);
  }

  *buf = a1;
  buf[8] = v45;
  *&buf[12] = a2;
  sub_10006F1C0();
}

void entitlements::ControllerImpl::resetPreferredRoamingNetworks(entitlements::ControllerImpl *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void entitlements::ControllerImpl::getPreferredRoamingNetworks(entitlements::ControllerImpl *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

uint64_t entitlements::ControllerImpl::getPLMNPriorityInfo(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 2168));
  v4 = *(a1 + 2088);
  if (v4 == 1)
  {
    sub_1003EC234(a2, a1 + 1992);
    sub_1003EC234(a2 + 32, a1 + 2024);
    sub_1003EC234(a2 + 64, a1 + 2056);
  }

  else
  {
    sub_100A3F578(a2);
  }

  std::mutex::unlock((a1 + 2168));
  return v4;
}

void entitlements::ControllerImpl::getPSDeviceList(entitlements::ControllerImpl *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void entitlements::ControllerImpl::getCarrierSpaceUpdates(uint64_t a1, const void **a2)
{
  sub_100010024(&v4 + 1, a2);
  sub_100060E84(&v5, a2 + 1);
  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::updateAccountWithFeatureOrService(uint64_t a1, const void **a2)
{
  sub_100010024(&v4 + 1, a2);
  sub_100060E84(&v5, a2 + 1);
  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::handleVVMPushNotification(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v5 = a2[2];
  v6[0] = v4;
  v6[1] = v5;
  if (v5)
  {
    *(v4 + 16) = v6;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  v6[2] = a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::queryPrefetchableAuthorizationTokens(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[39] = *a3;
  v3[47] = *(a3 + 8);
  *v3 = 0;
  *&v3[8] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1003D2234(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003D2244(uint64_t a1)
{
  v4 = (a1 + 24);
  sub_1003EC564(&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1003D243C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::fetchAuthorizationTokens_sync(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(*a2 + 3);
  v21 = 0;
  v22 = 0;
  entitlements::ControllerImpl::findDriverForTask(a1, 0xEu, &v21);
  v7 = v21;
  if (v21)
  {
    v27 = 0u;
    memset(__p, 0, sizeof(__p));
    v8 = *a3;
    v9 = a3[1];
    if (v9 != *a3)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if ((*(a1 + 528) >> *(v8 + v10)))
        {
          sub_1001FDFFC(__p, (v8 + v10));
          v8 = *a3;
          v9 = a3[1];
        }

        ++v11;
        v10 += 4;
      }

      while (v11 < (v9 - v8) >> 2);
    }

    v12 = a3[3];
    v13 = a3[4];
    if (v13 != v12)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        if ((*(a1 + 528) >> *(v12 + v14)))
        {
          sub_1003D27A0(&__p[3], v12 + v14);
          v12 = a3[3];
          v13 = a3[4];
        }

        ++v15;
        v14 += 40;
      }

      while (v15 < 0xCCCCCCCCCCCCCCCDLL * ((v13 - v12) >> 3));
    }

    if (__p[1] == __p[0] && v27 == __p[3])
    {
      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = PersonalityInfo::logPrefix(***(a1 + 88));
        *buf = 136315394;
        *&buf[4] = v20;
        v24 = 2080;
        v25 = " ";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#W %s%sno tokens for getAuthorizationTokens - bailing out", buf, 0x16u);
      }
    }

    else if (((*(*v7 + 376))(v7, 21, v6) & 1) == 0)
    {
      (*(*v7 + 216))(v7, a2, __p);
    }

    *buf = &__p[3];
    sub_1003EC564(buf);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = PersonalityInfo::logPrefix(***(a1 + 88));
      v18 = sub_1000714D8(14);
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = v17;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = " ";
      HIWORD(__p[2]) = 2080;
      __p[3] = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for task %s", __p, 0x20u);
    }
  }

  if (v22)
  {
    sub_100004A34(v22);
  }
}

void sub_1003D2764(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003D2244(va);
  if (a3)
  {
    sub_100004A34(a3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003D27A0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003EC9E0(a1, a2);
  }

  else
  {
    sub_1003EC960(a1, a2);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void entitlements::ControllerImpl::dropAuthorizationTokens(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::dropAuthorizationTokensIfNeeded_sync(uint64_t a1, uint64_t a2)
{
  v48 = 0;
  v49 = 0;
  entitlements::ControllerImpl::findDriverForTask(a1, 0, &v48);
  if (v48)
  {
    if ((*(a1 + 528) & 3) == 0)
    {
      goto LABEL_51;
    }

    theDict = 0;
    std::mutex::lock((a1 + 2168));
    sub_1000676D4(&theDict, (a1 + 2096));
    std::mutex::unlock((a1 + 2168));
    if (!theDict)
    {
      goto LABEL_50;
    }

    v44 = (a1 + 2096);
    v4 = 0;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    v5 = 1;
    do
    {
      v6 = v5;
      if ((*(a1 + 528) & (1 << v4)) != 0 && (*(a2 + 8) != 1 || (*a2 & (1 << v4)) != 0))
      {
        v7 = *(a1 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = PersonalityInfo::logPrefix(***(a1 + 88));
          v9 = sub_1013E5CF4(v4);
          *buf = 136315650;
          *&buf[4] = v8;
          v51 = 2080;
          v52 = " ";
          v53 = 2080;
          v54 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sDropped authorization token %s", buf, 0x20u);
        }

        v10 = sub_1013E5D20(v4);
        CFDictionaryRemoveValue(MutableCopy, v10);
      }

      v5 = 0;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
    if (!CFDictionaryGetCount(MutableCopy))
    {
      v11 = MutableCopy;
      MutableCopy = 0;
      *buf = v11;
      sub_1000296E0(buf);
    }

    v12 = *(a1 + 64);
    if (MutableCopy)
    {
      ServiceMap = Registry::getServiceMap(v12);
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
      *buf = v15;
      v19 = sub_100009510(&v14[1].__m_.__sig, buf);
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
LABEL_31:
          (*(*v21 + 16))(v21, ***(a1 + 88) + 24, @"authorization-tokens", MutableCopy, kCarrierEntitlementsWalletDomain, 0, 4, 0);
          goto LABEL_35;
        }
      }

      else
      {
        v21 = 0;
      }

      std::mutex::unlock(v14);
      v20 = 0;
      v22 = 1;
      goto LABEL_31;
    }

    v26 = Registry::getServiceMap(v12);
    v27 = v26;
    if (v28 < 0)
    {
      v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
      v30 = 5381;
      do
      {
        v28 = v30;
        v31 = *v29++;
        v30 = (33 * v30) ^ v31;
      }

      while (v31);
    }

    std::mutex::lock(v26);
    *buf = v28;
    v32 = sub_100009510(&v27[1].__m_.__sig, buf);
    if (v32)
    {
      v33 = v32[3];
      v20 = v32[4];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v27);
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v20);
        v22 = 0;
LABEL_34:
        (*(*v33 + 32))(v33, ***(a1 + 88) + 24, @"authorization-tokens", kCarrierEntitlementsWalletDomain, 0, 4);
LABEL_35:
        if ((v22 & 1) == 0)
        {
          sub_100004A34(v20);
        }

        std::mutex::lock((a1 + 2168));
        sub_100010180(&v45, &MutableCopy);
        if (v44 != &v45)
        {
          *buf = *v44;
          *v44 = v45;
          v45 = 0;
          sub_10001021C(buf);
        }

        sub_10001021C(&v45);
        std::mutex::unlock((a1 + 2168));
        v34 = Registry::getServiceMap(*(a1 + 64));
        v35 = v34;
        if (v36 < 0)
        {
          v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
          v38 = 5381;
          do
          {
            v36 = v38;
            v39 = *v37++;
            v38 = (33 * v38) ^ v39;
          }

          while (v39);
        }

        std::mutex::lock(v34);
        *buf = v36;
        v40 = sub_100009510(&v35[1].__m_.__sig, buf);
        if (v40)
        {
          v41 = v40[3];
          v42 = v40[4];
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v35);
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v42);
            v43 = 0;
LABEL_47:
            (*(*v41 + 48))(v41);
            if ((v43 & 1) == 0)
            {
              sub_100004A34(v42);
            }

            sub_1000296E0(&MutableCopy);
LABEL_50:
            sub_10001021C(&theDict);
            goto LABEL_51;
          }
        }

        else
        {
          v41 = 0;
        }

        std::mutex::unlock(v35);
        v42 = 0;
        v43 = 1;
        goto LABEL_47;
      }
    }

    else
    {
      v33 = 0;
    }

    std::mutex::unlock(v27);
    v20 = 0;
    v22 = 1;
    goto LABEL_34;
  }

  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = PersonalityInfo::logPrefix(***(a1 + 88));
    v25 = sub_1000714D8(0);
    *buf = 136315650;
    *&buf[4] = v24;
    v51 = 2080;
    v52 = " ";
    v53 = 2080;
    v54 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for task %s", buf, 0x20u);
  }

LABEL_51:
  if (v49)
  {
    sub_100004A34(v49);
  }
}

void sub_1003D2E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, const void *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  sub_1000296E0(&a15);
  sub_10001021C(&a16);
  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::getWiFiPseudonym(entitlements::ControllerImpl *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock((this + 2168));
  v4 = *(this + 262);
  if (v4 && (*(this + 528) & 1) != 0 && (v5 = sub_1013E5D20(0), Value = CFDictionaryGetValue(v4, v5), (v7 = Value) != 0) && (v8 = CFGetTypeID(Value), v8 == CFDictionaryGetTypeID()) && (v9 = CFDictionaryGetValue(v7, @"collection"), (v10 = v9) != 0) && (v11 = CFGetTypeID(v9), v11 == CFArrayGetTypeID()) && CFArrayGetCount(v10) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v10, 0), (v13 = ValueAtIndex) != 0) && (v14 = CFGetTypeID(ValueAtIndex), v14 == CFDictionaryGetTypeID()) && (v15 = CFDictionaryGetValue(v13, @"value"), (v16 = v15) != 0) && (v17 = CFGetTypeID(v15), v17 == CFStringGetTypeID()))
  {
    sub_100060E4C(a2, v16);
  }

  else
  {
    *a2 = 0;
  }

  std::mutex::unlock((this + 2168));
}

void entitlements::ControllerImpl::getCollectedAuthorizationTokens(entitlements::ControllerImpl *this@<X0>, void *a2@<X8>)
{
  v3 = a2;
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  std::mutex::lock((this + 2168));
  v42 = this;
  if (*(this + 262))
  {
    v4 = 0;
    v47 = 0;
    v41 = v3;
    do
    {
      if ((*(v42 + 66) >> v4))
      {
        v5 = *(v42 + 262);
        v6 = sub_1013E5D20(v4);
        Value = CFDictionaryGetValue(v5, v6);
        v8 = Value;
        if (Value)
        {
          v9 = CFGetTypeID(Value);
          if (v9 == CFDictionaryGetTypeID())
          {
            v45 = 0uLL;
            v46 = 0;
            v10 = CFDictionaryGetValue(v8, @"collection");
            v11 = v10;
            if (v10)
            {
              v12 = CFGetTypeID(v10);
              if (v12 == CFArrayGetTypeID())
              {
                Count = CFArrayGetCount(v11);
                if (Count)
                {
                  for (i = 0; i != Count; ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
                    v16 = ValueAtIndex;
                    if (ValueAtIndex)
                    {
                      v17 = CFGetTypeID(ValueAtIndex);
                      if (v17 == CFDictionaryGetTypeID())
                      {
                        v18 = CFDictionaryGetValue(v16, @"value");
                        if (v18)
                        {
                          v19 = CFGetTypeID(v18);
                          if (v19 == CFStringGetTypeID())
                          {
                            v44 = 0u;
                            memset(__p, 0, sizeof(__p));
                            v48 = 0;
                            v49 = 0uLL;
                            ctu::cf::assign();
                            v20 = v48;
                            v52[0] = v49;
                            *(v52 + 7) = *(&v49 + 7);
                            v21 = HIBYTE(v49);
                            if (SHIBYTE(__p[2]) < 0)
                            {
                              operator delete(__p[0]);
                            }

                            __p[0] = v20;
                            __p[1] = v52[0];
                            *(&__p[1] + 7) = *(v52 + 7);
                            HIBYTE(__p[2]) = v21;
                            v22 = CFDictionaryGetValue(v16, @"devices");
                            v23 = v22;
                            if (v22)
                            {
                              v24 = CFGetTypeID(v22);
                              if (v24 == CFArrayGetTypeID())
                              {
                                v25 = CFArrayGetCount(v23);
                                if (v25)
                                {
                                  for (j = 0; j != v25; ++j)
                                  {
                                    v27 = CFArrayGetValueAtIndex(v23, j);
                                    if (v27)
                                    {
                                      v28 = CFGetTypeID(v27);
                                      if (v28 == CFStringGetTypeID())
                                      {
                                        v48 = 0;
                                        v49 = 0uLL;
                                        ctu::cf::assign();
                                        v52[0] = v49;
                                        *(v52 + 7) = *(&v49 + 7);
                                        v29 = HIBYTE(v49);
                                        v30 = v44;
                                        if (v44 >= *(&v44 + 1))
                                        {
                                          v32 = 0xAAAAAAAAAAAAAAABLL * ((v44 - __p[3]) >> 3);
                                          v33 = v32 + 1;
                                          if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
                                          {
                                            sub_1000CE3D4();
                                          }

                                          if (0x5555555555555556 * ((*(&v44 + 1) - __p[3]) >> 3) > v33)
                                          {
                                            v33 = 0x5555555555555556 * ((*(&v44 + 1) - __p[3]) >> 3);
                                          }

                                          if (0xAAAAAAAAAAAAAAABLL * ((*(&v44 + 1) - __p[3]) >> 3) >= 0x555555555555555)
                                          {
                                            v34 = 0xAAAAAAAAAAAAAAALL;
                                          }

                                          else
                                          {
                                            v34 = v33;
                                          }

                                          v51 = &__p[3];
                                          if (v34)
                                          {
                                            sub_100005348(&__p[3], v34);
                                          }

                                          v35 = 8 * ((v44 - __p[3]) >> 3);
                                          *v35 = v48;
                                          *(v35 + 8) = v52[0];
                                          *(v35 + 15) = *(v52 + 7);
                                          *(v35 + 23) = v29;
                                          v31 = 24 * v32 + 24;
                                          v36 = (v35 - (v44 - __p[3]));
                                          memcpy(v36, __p[3], v44 - __p[3]);
                                          v37 = __p[3];
                                          v38 = *(&v44 + 1);
                                          __p[3] = v36;
                                          v44 = v31;
                                          *(&v49 + 1) = v37;
                                          v50 = v38;
                                          v48 = v37;
                                          *&v49 = v37;
                                          sub_1000054E0(&v48);
                                          v3 = v41;
                                        }

                                        else
                                        {
                                          *v44 = v48;
                                          *(v30 + 8) = v52[0];
                                          *(v30 + 15) = *(v52 + 7);
                                          *(v30 + 23) = v29;
                                          v31 = v30 + 24;
                                        }

                                        *&v44 = v31;
                                      }
                                    }
                                  }
                                }
                              }
                            }

                            sub_1003D3594(&v45, __p);
                            v48 = &__p[3];
                            sub_1000087B4(&v48);
                            if (SHIBYTE(__p[2]) < 0)
                            {
                              operator delete(__p[0]);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v48 = &v47;
            v39 = sub_1001AB974(v3, &v47);
            sub_1003ED028(v39 + 5);
            *(v39 + 5) = v45;
            v39[7] = v46;
            v46 = 0;
            v45 = 0uLL;
            __p[0] = &v45;
            sub_1003ED090(__p);
          }
        }
      }

      v40 = v47;
      v4 = ++v47;
    }

    while (v40 < 1);
  }

  std::mutex::unlock((v42 + 2168));
}

void sub_1003D34E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_1003ECFDC(&a13);
  a13 = &a19;
  sub_1003ED090(&a13);
  std::mutex::unlock((a12 + 2168));
  sub_100402614(a10, *(a10 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1003D3594(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003ECD00(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void entitlements::ControllerImpl::handleGeofenceDataUpdatePushMessage(uint64_t a1, const void **a2, uint64_t a3)
{
  sub_10005C7A4(&v5 + 1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v7 = *(a3 + 16);
  }

  v8[0] = 0;
  v8[1] = 0;
  sub_100004AA0(v8, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::registerGeofenceDataUpdateCallback(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_100402800(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1003D38CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t entitlements::ControllerImpl::canReachServerOnInternet(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 104);
  v2 = *(a1 + 112);
  if (a2 == 15)
  {
    if (v3 != v2)
    {
      v4 = v3 + 2;
      do
      {
        (***(v4 - 2))(&v10);
        v5 = sub_100A81C8C(v10);
        if (v11)
        {
          sub_100004A34(v11);
        }

        result = (v5 >> 1) & 1;
        if ((v5 & 2) != 0)
        {
          break;
        }

        v7 = v4 == v2;
        v4 += 2;
      }

      while (!v7);
      return result;
    }

    return 0;
  }

  if (v3 == v2)
  {
    return 0;
  }

  while (!sub_1009C1740(*v3, a2))
  {
    v3 += 2;
    if (v3 == v2)
    {
      return 0;
    }
  }

  (***v3)(&v10);
  v9 = (sub_100A81C8C(v10) >> 1) & 1;
  if (v11)
  {
    sub_100004A34(v11);
  }

  return v9;
}

void sub_1003D3A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::handleEthernetUpdated_sync(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*(a1 + 1769) == v2)
  {
    return;
  }

  v4 = *(a1 + 1768);
  v5 = *(a1 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  v7 = v4;
  if (v6)
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    v16 = 136315906;
    v17 = v8;
    v18 = 2080;
    v19 = " ";
    v20 = 2080;
    v21 = asString();
    v22 = 2080;
    v23 = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sEthernet availability is changing from %s to %s", &v16, 0x2Au);
    v7 = *(a1 + 1768);
  }

  if (v7 == 1)
  {
    if (v4 == 1 || v2 == 1)
    {
      return;
    }

    v9 = 1;
  }

  else
  {
    v9 = *(a1 + 1769) == 1;
    v11 = v4 != 1 && v2 != 1;
    if ((v11 ^ v9))
    {
      return;
    }
  }

  if (entitlements::ControllerImpl::canReachServerOnInternet(a1, 0xFu))
  {
    v12 = *(a1 + 104);
    for (i = *(a1 + 112); v12 != i; v12 += 16)
    {
      v14 = *v12;
      v15 = *(v12 + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      entitlements::CEHTTPDriver::handleWifiAvailable(v14, v9);
      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    if (v9)
    {
      entitlements::ControllerImpl::updateAndSchedule_sync(a1, 4);
    }
  }
}

uint64_t entitlements::ControllerImpl::handleAirplaneModeChanged_sync(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v2 = result;
    if (*(result + 1736) != 2)
    {
      v3 = *(result + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = PersonalityInfo::logPrefix(***(v2 + 88));
        v5 = 136315394;
        v6 = v4;
        v7 = 2080;
        v8 = " ";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sAPM is turned OFF, reattempt whatever needed", &v5, 0x16u);
      }

      return entitlements::ControllerImpl::resetFailuresAndBackoffTimer_sync(v2, 4);
    }
  }

  return result;
}

uint64_t entitlements::ControllerImpl::resetFailuresAndBackoffTimer_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  while (v4 != v5)
  {
    (*(**v4 + 344))(*v4, a2);
    v6 = *v4;
    v4 += 2;
    (*(*v6 + 352))();
  }

  return entitlements::ControllerImpl::updateAndSchedule_sync(a1, a2);
}

uint64_t entitlements::ControllerImpl::handleDataAttached_sync(uint64_t this)
{
  v1 = ***(this + 88);
  if (!*(v1 + 49))
  {
    v2 = *(this + 1752);
    if (v2)
    {
      v3 = *(v1 + 52);
      v4 = this + 1752;
      do
      {
        if (*(v2 + 28) >= v3)
        {
          v4 = v2;
        }

        v2 = *(v2 + 8 * (*(v2 + 28) < v3));
      }

      while (v2);
      if (v4 != this + 1752 && v3 >= *(v4 + 28) && *(v4 + 32) == 1)
      {
        return entitlements::ControllerImpl::updateAndSchedule_sync(this, 4);
      }
    }
  }

  return this;
}

void entitlements::ControllerImpl::handleTransportAvailabilityChange(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7 && *a2)
    {
      (***a2)(v33);
      v8 = *(*v33 + 56);
      if (*&v33[8])
      {
        sub_100004A34(*&v33[8]);
      }

      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = PersonalityInfo::logPrefix(***(a1 + 88));
        v11 = asStringBool(a3);
        *v33 = 136315906;
        *&v33[4] = v10;
        *&v33[12] = 2080;
        *&v33[14] = " ";
        v34 = 2048;
        v35 = v8;
        v36 = 2080;
        v37 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sTransport availability for driver %zu changed to %s", v33, 0x2Au);
      }

      std::mutex::lock((a1 + 2168));
      v12 = *(a1 + 2120);
      v13 = *(a1 + 2112);
      v14 = v12 - v13;
      if (v12 != v13)
      {
        v15 = 0;
        v16 = v14 >> 4;
        if (v16 <= 1)
        {
          v16 = 1;
        }

        while (*(*v13 + 56) != v8)
        {
          ++v15;
          v13 += 16;
          if (v16 == v15)
          {
            goto LABEL_21;
          }
        }

        v19 = *(a1 + 2136);
        v20 = v15 >> 6;
        v21 = 1 << v15;
        if (a3)
        {
          v22 = *(v19 + 8 * v20) | v21;
        }

        else
        {
          v22 = *(v19 + 8 * v20) & ~v21;
        }

        *(v19 + 8 * v20) = v22;
      }

LABEL_21:
      std::mutex::unlock((a1 + 2168));
      ServiceMap = Registry::getServiceMap(*(a1 + 64));
      v24 = ServiceMap;
      if (v25 < 0)
      {
        v26 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
        v27 = 5381;
        do
        {
          v25 = v27;
          v28 = *v26++;
          v27 = (33 * v27) ^ v28;
        }

        while (v28);
      }

      std::mutex::lock(ServiceMap);
      *v33 = v25;
      v29 = sub_100009510(&v24[1].__m_.__sig, v33);
      if (v29)
      {
        v31 = v29[3];
        v30 = v29[4];
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v24);
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v30);
          v32 = 0;
          goto LABEL_29;
        }
      }

      else
      {
        v31 = 0;
      }

      std::mutex::unlock(v24);
      v30 = 0;
      v32 = 1;
LABEL_29:
      (*(*v31 + 48))(v31);
      if ((v32 & 1) == 0)
      {
        sub_100004A34(v30);
      }

      goto LABEL_31;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = PersonalityInfo::logPrefix(***(a1 + 88));
    *v33 = 136315394;
    *&v33[4] = v18;
    *&v33[12] = 2080;
    *&v33[14] = " ";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#W %s%sdriver is already gone - ignoring any responses", v33, 0x16u);
  }

LABEL_31:
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1003D4120(_Unwind_Exception *exception_object)
{
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::invalidateEntitlementsCache_sync(uint64_t a1, int a2)
{
  v6 = a2;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    v9 = v5;
    v10 = 2080;
    *v11 = " ";
    *&v11[8] = 2080;
    v12 = sub_100A38E08(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sinvalidate entitlement cache with %s", buf, 0x20u);
  }

  sub_10006EA88(buf, 0);
  sub_1003D78E4(a1 + 416, buf);
  sub_10006DCAC(v15, v15[1]);
  sub_10006EC28(v14, v14[1]);
  sub_10006DCAC(v13, v13[1]);
  sub_10006DCAC(&v9 + 4, *&v11[2]);
  v7[0] = off_101E4B000;
  v7[1] = a1;
  v7[2] = &v6;
  v7[3] = v7;
  sub_1000700B8(v7);
  sub_100072048(v7);
  entitlements::ControllerImpl::saveEntitlements_sync();
}

void sub_1003D42EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100072048(va);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::recalculateEntitlements_sync(entitlements::ControllerImpl *this, int a2, char a3)
{
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  sub_10006EA88(&v79, 0);
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  v63 = 0u;
  sub_10000C320(&v63);
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  v47 = 0u;
  sub_10000C320(&v47);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  v31 = 0u;
  sub_10000C320(&v31);
  v30 = 0;
  v29 = 0;
  if (*(this + 80) & 1) != 0 || *(this + 14) != *(this + 13) || (a3)
  {
    if (!*(***(this + 11) + 49) || *(***(this + 11) + 49) == 3)
    {
      if ((*(this + 520) & 1) == 0)
      {
        entitlements::ControllerImpl::readEntitlementsCache_sync(this);
      }

      entitlements::ControllerImpl::recalculateEntitlementsDetailed_sync();
    }

    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(this + 11));
      v8 = HIDWORD(v30);
      sub_10006EE70(&v64 + 8, v27);
      v22 = a2;
      if (v28 >= 0)
      {
        v9 = v27;
      }

      else
      {
        v9 = v27[0];
      }

      v10 = v30;
      sub_10006EE70(&v48 + 8, v25);
      v11 = v26;
      v12 = v25[0];
      v13 = v29;
      sub_10006EE70(&v32 + 8, __p);
      v14 = v25;
      if (v11 < 0)
      {
        v14 = v12;
      }

      if (v24 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136316930;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 1024;
      v88 = v8;
      v89 = 2080;
      v90 = v9;
      v91 = 1024;
      v92 = v10;
      v93 = 2080;
      v94 = v14;
      v95 = 1024;
      v96 = v13;
      v97 = 2080;
      v98 = v15;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%srecalculated: Known 0x%X [%s], Cached 0x%X [%s], Inactive 0x%X [%s]", buf, 0x46u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      a2 = v22;
      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    *(this + 208) = v79;
    if ((this + 208) != &v79)
    {
      sub_10006EAC4(this + 27, *(&v79 + 1), &v80);
      sub_10006FCD8(this + 30, v81, &v81 + 1);
      sub_10006FB64(this + 33, *(&v82 + 1), &v83);
      sub_10006FA00(this + 36, v84, &v84 + 1);
    }

    std::mutex::lock((this + 2168));
    *(this + 1776) = *(this + 208);
    sub_10006EAC4(this + 223, *(this + 27), this + 28);
    sub_10006FCD8(this + 226, *(this + 30), this + 31);
    sub_10006FB64(this + 229, *(this + 33), this + 34);
    sub_10006FA00(this + 232, *(this + 36), this + 37);
    std::mutex::unlock((this + 2168));
    if (*(this + 14) != *(this + 13))
    {
      *&buf[8] = 0;
      *&buf[16] = 0;
      v86[0] = off_101E4AF00;
      v86[1] = this;
      v86[2] = buf;
      v86[3] = v86;
      *buf = &buf[8];
      sub_1000700B8(v86);
      sub_100072048(v86);
      v16 = *(this + 13);
      v17 = *(this + 14);
      while (v16 != v17)
      {
        (*(**v16 + 368))(*v16, buf);
        v16 += 2;
      }

      sub_100077CD4(buf, *&buf[8]);
    }

    if (*(this + 520) == 1 && (sub_1003D6DC0(this + 52, this + 26) | a2) == 1)
    {
      sub_1003D7CDC(this + 416, this + 208);
      entitlements::ControllerImpl::saveEntitlements_sync();
    }

    entitlements::ControllerImpl::generateNotification_sync(this);
  }

  v21 = v19;
  *&v32 = v19;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(*(&v34 + 1));
  }

  std::locale::~locale(v33);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  *&v47 = v18;
  *(&v47 + *(v18 - 24)) = v20;
  *&v48 = v21;
  if (SHIBYTE(v51) < 0)
  {
    operator delete(*(&v50 + 1));
  }

  std::locale::~locale(v49);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  *&v63 = v18;
  *(&v63 + *(v18 - 24)) = v20;
  *&v64 = v21;
  if (SHIBYTE(v67) < 0)
  {
    operator delete(*(&v66 + 1));
  }

  std::locale::~locale(v65);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  sub_10006DCAC(&v84, *(&v84 + 1));
  sub_10006EC28(&v82 + 8, v83);
  sub_10006DCAC(&v81, *(&v81 + 1));
  sub_10006DCAC(&v79 + 8, v80);
}

void sub_1003D4AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_10068C9D8(&a27);
  sub_10068C9D8(&a63);
  sub_10068C9D8(&STACK[0x2A0]);
  sub_1003C30B4(&STACK[0x3C0]);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::handleDataPreferredChanged(entitlements::ControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 11));
    v4 = 136315650;
    v5 = v3;
    v6 = 2080;
    v7 = " ";
    v8 = 2080;
    v9 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sData preferred SIM changed: %s", &v4, 0x20u);
  }
}

void entitlements::ControllerImpl::startTrackingEntitlement(uint64_t a1)
{
  sub_100004AA0(&v3, (a1 + 8));
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = 0;
  v4 = 0;
  sub_100004AA0(&v3, (a1 + 8));
  operator new();
}

uint64_t entitlements::ControllerImpl::scheduleShorterTimer_sync(entitlements::ControllerImpl *this, int a2)
{
  if (*(this + 22) || (v7 = *(this + 11), v8 = *(v7 + 528), v9 = *(v7 + 520), v8 == v9))
  {
    v3 = *(this + 5);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v4 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v5 = "#I %s%sshorter timer already armed";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, buf, 0x16u);
    return 1;
  }

  sub_100A821CC(*v9, buf);
  if (a2 && (buf[8] & 1) == 0)
  {
    v3 = *(this + 5);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v11 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v5 = "#I %s%sNot setting a shorter timer as there is no configuration for that in the carrier settings";
    goto LABEL_4;
  }

  v12 = *(this + 46);
  if (v12 != 5)
  {
    if (buf[8])
    {
      v17 = *buf;
    }

    else
    {
      v17 = *&buf[16];
    }

    *(this + 46) = v12 + 1;
    v18 = *(this + 5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = PersonalityInfo::logPrefix(***(this + 11));
      v20 = *(this + 46);
      *buf = 136315906;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      v36 = v17;
      v37 = 1024;
      v38 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sStarting a shorter timer for %ld minutes to check for entitlements, current count: %d", buf, 0x26u);
    }

    sub_100004AA0(buf, this + 1);
    v22 = *buf;
    v21 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
    }

    Registry::getTimerService(buf, *(this + 8));
    v23 = *buf;
    sub_10000501C(__p, "Shorter Entitlements Check Timer");
    v24 = *(this + 3);
    object = v24;
    if (v24)
    {
      dispatch_retain(v24);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_1003D5224;
    aBlock[3] = &unk_101E49780;
    aBlock[4] = this;
    aBlock[5] = v22;
    v29 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = _Block_copy(aBlock);
    sub_100D23364(v23, __p, 1, 60000000 * v17, &object, &v30);
    v25 = v34;
    v34 = 0;
    v26 = *(this + 22);
    *(this + 22) = v25;
    if (v26)
    {
      (*(*v26 + 8))(v26);
      v27 = v34;
      v34 = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }

    if (v30)
    {
      _Block_release(v30);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v29)
    {
      std::__shared_weak_count::__release_weak(v29);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }

    return 1;
  }

  v13 = *(this + 5);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v14)
  {
    v15 = PersonalityInfo::logPrefix(***(this + 11));
    v16 = *(this + 46);
    *buf = 136315650;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 1024;
    LODWORD(v36) = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sShort scheduled checks have hit the allowed max: %d", buf, 0x1Cu);
    return 0;
  }

  return result;
}

void sub_1003D519C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D5224(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = PersonalityInfo::logPrefix(***(v3 + 88));
          v9 = 136315394;
          v10 = v7;
          v11 = 2080;
          v12 = " ";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sShorter Entitlements Check Timer has fired", &v9, 0x16u);
        }

        v8 = *(v3 + 176);
        *(v3 + 176) = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        entitlements::ControllerImpl::updateAndSchedule_sync(v3, 6);
      }

      sub_100004A34(v5);
    }
  }
}

void entitlements::ControllerImpl::resetFailuresAndBackoffTimer(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::ifNeeded_UNBLOCK_UNKNOWN_SUBSCRIBER(entitlements::ControllerImpl *this, char *a2)
{
  sub_10000501C(__p, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

void (***entitlements::ControllerImpl::sendAuthOnlyIfNeeded_sync(entitlements::ControllerImpl *this))(void *__return_ptr, void)
{
  v7 = 0;
  v8 = 0;
  entitlements::ControllerImpl::findDriverForTask(this, 0, &v7);
  v2 = v7;
  if (v7)
  {
    (**v7)(buf, v7);
    v3 = sub_100A8209C(*buf);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v3)
    {
      v4 = *(this + 5);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = PersonalityInfo::logPrefix(***(this + 11));
        *buf = 136315394;
        *&buf[4] = v5;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sSending query for auth-only entitlement", buf, 0x16u);
      }

      v13 = 0;
      *__p = 0u;
      v12 = 0u;
      v10 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_100070A80();
    }

    v2 = 0;
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  return v2;
}

void sub_1003D5764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, char a17, uint64_t a18)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t entitlements::ControllerImpl::requestPhoneNumberRegistration_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = 0;
  v28 = 0;
  entitlements::ControllerImpl::findDriverForTask(a1, 1u, &v27);
  v6 = v27;
  if (!v27)
  {
    v10 = *(a1 + 88);
    v11 = *(v10 + 528);
    v12 = *(v10 + 520);
    v13 = *(a1 + 40);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v11 == v12)
    {
      if (!v14)
      {
        goto LABEL_19;
      }

      v20 = PersonalityInfo::logPrefix(**v10);
      v21 = sub_1000714D8(1);
      *buf = 136315650;
      v30 = v20;
      v31 = 2080;
      v32 = " ";
      v33 = 2080;
      v34 = v21;
      v16 = "#W %s%sno driver for task %s";
      v18 = v13;
      v19 = 32;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v16, buf, v19);
      goto LABEL_19;
    }

    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = PersonalityInfo::logPrefix(**v10);
    *buf = 136315394;
    v30 = v15;
    v31 = 2080;
    v32 = " ";
    v16 = "#I %s%sCarrier does not support Phone Number entitlement";
LABEL_15:
    v18 = v13;
    v19 = 22;
    goto LABEL_18;
  }

  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (!v7)
  {
    v13 = *(a1 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v17 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    v30 = v17;
    v31 = 2080;
    v32 = " ";
    v16 = "#W %s%sIgnoring getPhoneNumber request because empty nonce was given";
    goto LABEL_15;
  }

  if ((*(*v27 + 376))(v27, 13, a3))
  {
LABEL_19:
    v22 = 0;
    goto LABEL_20;
  }

  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    v30 = v9;
    v31 = 2080;
    v32 = " ";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sSending Phone Number entitlement request to driver", buf, 0x16u);
  }

  std::mutex::lock((a1 + 2168));
  if (*(a1 + 1967) < 0)
  {
    **(a1 + 1944) = 0;
    *(a1 + 1952) = 0;
  }

  else
  {
    *(a1 + 1944) = 0;
    *(a1 + 1967) = 0;
  }

  if (*(a1 + 1991) < 0)
  {
    **(a1 + 1968) = 0;
    *(a1 + 1976) = 0;
  }

  else
  {
    *(a1 + 1968) = 0;
    *(a1 + 1991) = 0;
  }

  std::mutex::unlock((a1 + 2168));
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v25 = *(a2 + 16);
  }

  v26 = *(a2 + 24);
  (*(*v6 + 80))(v6, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v22 = 1;
LABEL_20:
  if (v28)
  {
    sub_100004A34(v28);
  }

  return v22;
}

void sub_1003D5B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::requestPhoneNumberRegistration(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = 0;
  v9 = 0;
  entitlements::ControllerImpl::findDriverForTask(a1, 1u, &v8);
  v4 = v8;
  if (v8)
  {
    ctu::parse_hex();
    (**v4)(&buf, v4);
    sub_100647080();
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(***(a1 + 88));
    v7 = sub_1000714D8(1);
    buf = 136315650;
    buf_4 = v6;
    buf_12 = 2080;
    buf_14 = " ";
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sNo driver for task %s", &buf, 0x20u);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1003D5F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t entitlements::ControllerImpl::isTaskSupported_withExecuteSync(uint64_t a1, int a2)
{
  std::mutex::lock((a1 + 2168));
  if (*(a1 + 2120) == *(a1 + 2112))
  {
    std::mutex::unlock((a1 + 2168));
    v7 = a1;
    v8 = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_1004030C4;
    v9[3] = &unk_101E4AE10;
    v9[4] = a1 + 8;
    v9[5] = &v7;
    v10 = v9;
    v5 = *(a1 + 24);
    if (*(a1 + 32))
    {
      v17 = 0;
      block = _NSConcreteStackBlock;
      v12 = 0x40000000;
      v13 = sub_100069CFC;
      v14 = &unk_101E4AE50;
      v15 = &v17;
      v16 = &v10;
      dispatch_async_and_wait(v5, &block);
    }

    else
    {
      v17 = 0;
      block = _NSConcreteStackBlock;
      v12 = 0x40000000;
      v13 = sub_100058DA0;
      v14 = &unk_101E4AE30;
      v15 = &v17;
      v16 = &v10;
      dispatch_sync(v5, &block);
    }

    LOBYTE(v4) = v17;
  }

  else
  {
    v4 = (*(a1 + 1888) >> a2) & 1;
    std::mutex::unlock((a1 + 2168));
  }

  return v4 & 1;
}

uint64_t entitlements::ControllerImpl::isOptionForTaskSupported(uint64_t a1, unsigned int a2, const __CFString *a3)
{
  std::mutex::lock((a1 + 2168));
  if ((*(a1 + 1888) >> a2))
  {
    v6 = *(a1 + 2112);
    v7 = *(a1 + 2120);
    while (v6 != v7)
    {
      if (sub_1001E4088(*v6, a2))
      {
        v8 = sub_100A8379C(*v6, a3, 0);
        goto LABEL_7;
      }

      v6 += 2;
    }
  }

  v8 = 0;
LABEL_7:
  std::mutex::unlock((a1 + 2168));
  return v8;
}

uint64_t entitlements::ControllerImpl::isTransportAvailable(uint64_t a1, unsigned int a2)
{
  std::mutex::lock((a1 + 2168));
  if (((*(a1 + 1888) >> a2) & 1) == 0 || (v4 = *(a1 + 2112), *(a1 + 2120) == v4))
  {
LABEL_6:
    v7 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    while ((sub_1001E4088(*(v4 + v5), a2) & 1) == 0)
    {
      ++v6;
      v4 = *(a1 + 2112);
      v5 += 16;
      if (v6 >= (*(a1 + 2120) - v4) >> 4)
      {
        goto LABEL_6;
      }
    }

    v7 = (*(*(a1 + 2136) + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1;
  }

  std::mutex::unlock((a1 + 2168));
  return v7;
}

uint64_t entitlements::ControllerImpl::transportAvailability(entitlements::ControllerImpl *this)
{
  std::mutex::lock((this + 2168));
  v2 = *(this + 264);
  if (*(this + 265) == v2)
  {
    v5 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = sub_100A80CB4(*(v2 + v3));
      if (((*(*(this + 267) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4) & 1) != 0 && *(this + 80) == 1)
      {
        v5 |= v7;
      }

      else
      {
        v6 |= v7;
      }

      ++v4;
      v2 = *(this + 264);
      v3 += 16;
    }

    while (v4 < (*(this + 265) - v2) >> 4);
  }

  std::mutex::unlock((this + 2168));
  return v5;
}

void entitlements::ControllerImpl::getPushTopic(uint64_t a1@<X0>, signed int a2@<W1>, const void **a3@<X8>)
{
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  if (v4 == v5)
  {
LABEL_8:
    *a3 = 0;
  }

  else
  {
    while (1)
    {
      v7 = *(v4 + 8);
      v9 = *v4;
      v10 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      a1 = entitlements::ControllerImpl::supportPushTopicOnDriver(a1, &v9, a2);
      v8 = a1;
      if (v7)
      {
        sub_100004A34(v7);
      }

      if (v8)
      {
        break;
      }

      v4 += 16;
      if (v4 == v5)
      {
        goto LABEL_8;
      }
    }

    (***v4)(&v9);
    sub_100A83948(v9, a2, a3);
    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

void sub_1003D6504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t entitlements::ControllerImpl::supportPushTopicOnDriver(uint64_t a1, void (****a2)(uint64_t *__return_ptr), signed int a3)
{
  v7 = 0;
  v8 = 0;
  (***a2)(&v7);
  v4 = sub_100A80E30(v7);
  v5 = 0;
  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      if (a3 == 6)
      {
        v5 = (v4 >> 11) & 1;
        goto LABEL_25;
      }

      a3 = 8;
    }

    else
    {
      switch(a3)
      {
        case 8:
          v5 = (sub_100A80CBC(v7) & 3) != 0;
          goto LABEL_25;
        case 9:
          a3 = 11;
          break;
        case 10:
          a3 = 1;
          break;
        default:
          goto LABEL_25;
      }
    }

    goto LABEL_24;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v5 = (v4 >> 10) & 1;
      goto LABEL_25;
    }

    if (a3 == 4)
    {
      a3 = 7;
    }

    else
    {
      a3 = 6;
    }

    goto LABEL_24;
  }

  if (a3 == 1)
  {
    if ((v4 & 0x80) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = (v4 >> 8) & 1;
    }
  }

  else if (a3 == 2)
  {
LABEL_24:
    v5 = sub_1001E4088(v7, a3);
  }

LABEL_25:
  if (v8)
  {
    sub_100004A34(v8);
  }

  return v5;
}

void sub_1003D6678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::subscribeForPushNotificationIfNeeded(uint64_t a1, int a2, uint64_t a3)
{
  v9 = a1;
  sub_100004AA0(&v7, (a1 + 8));
  v6 = v8;
  v10 = v7;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  v12 = a2;
  sub_1000224C8(&v13, a3);
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  operator new();
}

void sub_1003D6828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void entitlements::ControllerImpl::recalculateEntitlementsDetailed_sync()
{
  v2 = 1;
  v1 = 1;
  v0 = 1;
  operator new();
}

void sub_1003D6960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100072048(va);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::readEntitlementsCache_sync(entitlements::ControllerImpl *this)
{
  v2 = *(this + 5);
  if (*(this + 520))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10176F6E4(this);
    }

    return;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v3;
    v22 = 2080;
    *v23 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sread entitlement cache", buf, 0x16u);
  }

  data = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(*(this + 8));
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
    goto LABEL_13;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_13:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
LABEL_14:
  (*(*v12 + 24))(&v18, v12, ***(this + 11) + 24, @"entitlement_results", kCarrierEntitlementsWalletDomain, 0, 4);
  sub_1001B1A54(&data, &v18);
  sub_10000A1EC(&v18);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (data)
  {
    v18 = CFPropertyListCreateWithData(0, data, 0, 0, 0);
    *buf = 0;
    sub_100138C38(buf, &v18);
    v14 = v20;
    v20 = *buf;
    *buf = v14;
    sub_10001021C(buf);
  }

  if (v20)
  {
    entitlements::ControllerImpl::entitlementsSnapshotFromDict_sync(v20, buf);
  }

  sub_10006EA88(buf, 0);
  sub_1003D78E4(this + 416, buf);
  sub_10006DCAC(v27, v27[1]);
  sub_10006EC28(v26, v26[1]);
  sub_10006DCAC(v25, v25[1]);
  sub_10006DCAC(&buf[8], *&v23[2]);
  v15 = *(this + 5);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = PersonalityInfo::logPrefix(***(this + 11));
    v17 = asStringBool(v20 != 0);
    *buf = 136315650;
    *&buf[4] = v16;
    v22 = 2080;
    *v23 = " ";
    *&v23[8] = 2080;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieved cached entitlements: dictPresent=%s", buf, 0x20u);
  }

  sub_10002D760(&data);
  sub_10001021C(&v20);
}

void sub_1003D6D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  sub_1003C30B4(va2);
  sub_10002D760(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003D6DC0(void *a1, void *a2)
{
  if (a1[3] != a2[3])
  {
    return 1;
  }

  v2 = a1[1];
  if (v2 != a1 + 2)
  {
    v3 = a2[1];
    do
    {
      v4 = *(v2 + 7) == *(v3 + 7) && *(v2 + 8) == *(v3 + 8);
      if (!v4)
      {
        return 1;
      }

      v5 = v2[1];
      v6 = v2;
      if (v5)
      {
        do
        {
          v2 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v2 = v6[2];
          v4 = *v2 == v6;
          v6 = v2;
        }

        while (!v4);
      }

      v7 = v3[1];
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
          v8 = v3[2];
          v4 = *v8 == v3;
          v3 = v8;
        }

        while (!v4);
      }

      v3 = v8;
    }

    while (v2 != a1 + 2);
  }

  if (a1[9] != a2[9])
  {
    return 1;
  }

  v9 = a1[7];
  v10 = a1 + 8;
  if (v9 == a1 + 8)
  {
    return 0;
  }

  v11 = a2[7];
  do
  {
    v12 = *(v9 + 8) == *(v11 + 8) && v9[5] == v11[5];
    result = !v12;
    if (!v12)
    {
      break;
    }

    v14 = v9[1];
    v15 = v9;
    if (v14)
    {
      do
      {
        v9 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        v9 = v15[2];
        v4 = *v9 == v15;
        v15 = v9;
      }

      while (!v4);
    }

    v16 = v11[1];
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
        v17 = v11[2];
        v4 = *v17 == v11;
        v11 = v17;
      }

      while (!v4);
    }

    v11 = v17;
  }

  while (v9 != v10);
  return result;
}

void entitlements::ControllerImpl::generateNotification_sync(entitlements::ControllerImpl *this)
{
  std::mutex::lock((this + 880));
  if (*(this + 1064) == 1 && (sub_1003D6DC0(this + 120, this + 26) & 1) == 0 && *(this + 952) == 1 && (sub_10000FC88(this + 118, 0, this + 944, 0x17u, this + 24) & 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    sub_1003D7CDC(this + 960, this + 208);
    v3 = *(this + 24);
    if ((*(this + 952) & 1) == 0)
    {
      *(this + 952) = 1;
    }

    *(this + 118) = v3;
    v2 = 1;
  }

  std::mutex::unlock((this + 880));
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  v4 = *(this + 33);
  if (v4 != (this + 272))
  {
    do
    {
      if (*(v4 + 5))
      {
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_100A3B824(*(v4 + 5), buf);
        v5 = *buf == *&buf[8] && *&buf[24] == 0;
        if (!v5 || (BYTE9(v38) & 1) != 0 || v39 || v40)
        {
          v32 = v4 + 32;
          v6 = sub_100405218(&v35, v4 + 8);
          if (v6 + 5 != buf)
          {
            sub_100172460(v6 + 5, *buf, *&buf[8], (*&buf[8] - *buf) >> 6);
          }

          v8 = *&buf[24];
          v7 = v38;
          if (v38)
          {
            atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
          }

          v9 = v6[9];
          v6[8] = v8;
          v6[9] = v7;
          if (v9)
          {
            sub_100004A34(v9);
          }

          *(v6 + 40) = WORD4(v38);
          v10 = v39;
          if (*(&v39 + 1))
          {
            atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v11 = v6[12];
          *(v6 + 11) = v10;
          if (v11)
          {
            sub_100004A34(v11);
          }

          v12 = v40;
          if (*(&v40 + 1))
          {
            atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v13 = v6[14];
          *(v6 + 13) = v12;
          if (v13)
          {
            sub_100004A34(v13);
          }
        }

        if (*(&v40 + 1))
        {
          sub_100004A34(*(&v40 + 1));
        }

        if (*(&v39 + 1))
        {
          sub_100004A34(*(&v39 + 1));
        }

        if (v38)
        {
          sub_100004A34(v38);
        }

        v32 = buf;
        sub_10013DFEC(&v32);
      }

      v14 = *(v4 + 1);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = *(v4 + 2);
          v5 = *v15 == v4;
          v4 = v15;
        }

        while (!v5);
      }

      v4 = v15;
    }

    while (v15 != (this + 272));
  }

  v34 = 0;
  std::mutex::lock((this + 2168));
  v34 = *(this + 236);
  std::mutex::unlock((this + 2168));
  v32 = 0;
  v33 = 0;
  entitlements::ControllerImpl::findDriverForTask(this, 0, &v32);
  ServiceMap = Registry::getServiceMap(*(this + 8));
  v17 = ServiceMap;
  if (v18 < 0)
  {
    v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(ServiceMap);
  *buf = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, buf);
  if (v22)
  {
    v23 = v22[3];
    v24 = v22[4];
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v24);
      v25 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v17);
  v24 = 0;
  v25 = 1;
LABEL_53:
  v26 = ***(this + 11);
  if (v32)
  {
    v27 = sub_1009C2E38(v32);
  }

  else
  {
    v27 = 0;
  }

  (*(*v23 + 40))(v23, v26 + 24, this + 192, this + 216, &v35, this + 320, &v34, v27);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  v28 = *(this + 5);
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v29)
    {
      v30 = PersonalityInfo::logPrefix(***(this + 11));
      *buf = 136315394;
      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sGenerating entitlement changed events", buf, 0x16u);
    }

    entitlements::ControllerImpl::entitlementsSnapshotAsDict();
  }

  if (v29)
  {
    v31 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v31;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sEntitlement results have not changed, not sending entitlement_changed event", buf, 0x16u);
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  sub_10004F340(&v35, v36[0]);
}

void sub_1003D7474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t entitlements::ControllerImpl::getEntitlementResult(uint64_t a1, int a2)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
  {
    sub_10176F770(a1, a2);
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  sub_10006EA88(&v7, 0);
  std::mutex::lock((a1 + 2168));
  LOBYTE(v7) = *(a1 + 1776);
  if (&v7 != (a1 + 1776))
  {
    sub_10006EAC4(&v7 + 1, *(a1 + 1784), (a1 + 1792));
    sub_10006FCD8(&v9, *(a1 + 1808), (a1 + 1816));
    sub_10006FB64(&v10 + 1, *(a1 + 1832), (a1 + 1840));
    sub_10006FA00(&v12, *(a1 + 1856), (a1 + 1864));
  }

  v4 = *(a1 + 1880);
  std::mutex::unlock((a1 + 2168));
  v5 = sub_100071FDC(&v7, a2);
  if ((v5 & 0x100000000) == 0)
  {
    if ((v4 >> a2))
    {
      entitlements::ControllerImpl::startTrackingEntitlement(a1);
    }

    v5 = 6;
  }

  sub_10006DCAC(&v12, *(&v12 + 1));
  sub_10006EC28(&v10 + 8, v11);
  sub_10006DCAC(&v9, *(&v9 + 1));
  sub_10006DCAC(&v7 + 8, v8);
  return v5;
}

void entitlements::ControllerImpl::stopTrackingEntitlement(uint64_t a1)
{
  sub_100004AA0(&v3, (a1 + 8));
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = 0;
  v4 = 0;
  sub_100004AA0(&v3, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::entitlementsSnapshotFromDict_sync(const __CFDictionary *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  sub_10006EA88(a2, 0);
  v4 = 0;
  operator new();
}

void sub_1003D78C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100072048(va);
  sub_1003C30B4(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1003D78E4(uint64_t a1, char *a2)
{
  v4 = *(a1 + 104);
  v6 = *a2;
  v5 = a2 + 8;
  *a1 = v6;
  if (v4 == 1)
  {
    sub_10004645C(a1 + 8, v5);
    sub_10004645C(a1 + 32, a2 + 4);
    sub_1003ED114(a1 + 56, a2 + 7);
    sub_10004645C(a1 + 80, a2 + 10);
  }

  else
  {
    *(a1 + 8) = *(a2 + 1);
    v7 = a2 + 16;
    v8 = *(a2 + 2);
    *(a1 + 16) = v8;
    v9 = a1 + 16;
    v10 = *(a2 + 3);
    *(a1 + 24) = v10;
    if (v10)
    {
      *(v8 + 16) = v9;
      *v5 = v7;
      *v7 = 0;
      *(a2 + 3) = 0;
    }

    else
    {
      *(a1 + 8) = v9;
    }

    *(a1 + 32) = *(a2 + 4);
    v11 = a2 + 40;
    v12 = *(a2 + 5);
    *(a1 + 40) = v12;
    v13 = a1 + 40;
    v14 = *(a2 + 6);
    *(a1 + 48) = v14;
    if (v14)
    {
      *(v12 + 16) = v13;
      *(a2 + 4) = v11;
      *v11 = 0;
      *(a2 + 6) = 0;
    }

    else
    {
      *(a1 + 32) = v13;
    }

    *(a1 + 56) = *(a2 + 7);
    v15 = a2 + 64;
    v16 = *(a2 + 8);
    *(a1 + 64) = v16;
    v17 = a1 + 64;
    v18 = *(a2 + 9);
    *(a1 + 72) = v18;
    if (v18)
    {
      *(v16 + 16) = v17;
      *(a2 + 7) = v15;
      *v15 = 0;
      *(a2 + 9) = 0;
    }

    else
    {
      *(a1 + 56) = v17;
    }

    *(a1 + 80) = *(a2 + 10);
    v19 = a2 + 88;
    v20 = *(a2 + 11);
    *(a1 + 88) = v20;
    v21 = a1 + 88;
    v22 = *(a2 + 12);
    *(a1 + 96) = v22;
    if (v22)
    {
      *(v20 + 16) = v21;
      *(a2 + 10) = v19;
      *v19 = 0;
      *(a2 + 12) = 0;
    }

    else
    {
      *(a1 + 80) = v21;
    }

    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_1003D7C78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003D7CDC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *a1 = *a2;
  if (v4 == 1)
  {
    if (a1 != a2)
    {
      sub_10006EAC4((a1 + 8), *(a2 + 8), (a2 + 16));
      sub_10006FCD8((a1 + 32), *(a2 + 32), (a2 + 40));
      sub_10006FB64((a1 + 56), *(a2 + 56), (a2 + 64));
      sub_10006FA00((a1 + 80), *(a2 + 80), (a2 + 88));
    }
  }

  else
  {
    sub_100172EF0((a1 + 8), a2 + 8);
    sub_1003ED180((a1 + 32), a2 + 32);
    sub_1003ED1D8((a1 + 56), a2 + 56);
    sub_1003ED230((a1 + 80), a2 + 80);
    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_1003D7D9C(_Unwind_Exception *a1)
{
  sub_10006EC28((v1 + 7), v1[8]);
  sub_10006DCAC((v1 + 4), v1[5]);
  sub_10006DCAC((v1 + 1), v1[2]);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::schedulePNRprefetchIfNeeded(entitlements::ControllerImpl *this)
{
  if (!*(this + 216) && entitlements::ControllerImpl::shouldQueryPNRprefetch(this))
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = PersonalityInfo::logPrefix(***(this + 11));
      *buf = 136315650;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v19 = 2048;
      v20 = 5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sPNR prefetch: scheduling in %ld seconds", buf, 0x20u);
    }

    sub_100004AA0(buf, this + 1);
    v5 = *buf;
    v4 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v4);
    }

    Registry::getTimerService(buf, *(this + 8));
    v6 = *buf;
    sub_10000501C(__p, "PNR prefetch Timer");
    v7 = *(this + 3);
    object = v7;
    if (v7)
    {
      dispatch_retain(v7);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1174405120;
    v11[2] = sub_1003D9064;
    v11[3] = &unk_101E497B0;
    v11[4] = v5;
    v12 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    aBlock = _Block_copy(v11);
    sub_100D23364(v6, __p, 1, 5000000, &object, &aBlock);
    v8 = v17;
    v17 = 0;
    v9 = *(this + 216);
    *(this + 216) = v8;
    if (v9)
    {
      (*(*v9 + 8))(v9);
      v10 = v17;
      v17 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_1003D8058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::recheckEntitlements(uint64_t a1)
{
  sub_100004AA0(&v2, (a1 + 8));
  v1 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
  }

  sub_10006F1C0();
}

void sub_1003D8248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t entitlements::ControllerImpl::allSupportedUnknown_sync(entitlements::ControllerImpl *this)
{
  v3 = 1;
  v2[0] = this;
  v2[1] = &v3;
  v4[0] = off_101E4B2F8;
  v4[1] = this;
  v4[2] = v2;
  v4[3] = v4;
  sub_1000700B8(v4);
  sub_100072048(v4);
  return v3;
}

void sub_1003D8300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100072048(va);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::getLastReportedEntitlements(entitlements::ControllerImpl *this@<X0>, _OWORD *a2@<X8>)
{
  std::mutex::lock((this + 880));
  *a2 = *(this + 59);
  sub_1003ED288((a2 + 1), this + 960);

  std::mutex::unlock((this + 880));
}

uint64_t entitlements::ControllerImpl::isSupportedEntitlement(uint64_t a1, char a2)
{
  std::mutex::lock((a1 + 2168));
  v4 = *(a1 + 1880) >> a2;
  std::mutex::unlock((a1 + 2168));
  return v4 & 1;
}

void entitlements::ControllerImpl::makePrefetchPNRNonce(entitlements::ControllerImpl *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 856) == 1)
  {
    *a2 = *(this + 824);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v4 = *(this + 104);
    v5 = *(this + 105);

    sub_100034C50(a2 + 8, v4, v5, v5 - v4);
  }

  else
  {
    v12 = 0;
    v13 = 0;
    entitlements::ControllerImpl::findDriverForTask(this, 1u, &v12);
    if (v12)
    {
      if ((atomic_load_explicit(&qword_101FBA328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA328))
      {
        sub_10000501C(&qword_101FBA310, "prefetch90123456789012345");
        __cxa_atexit(&std::string::~string, &qword_101FBA310, &_mh_execute_header);
        __cxa_guard_release(&qword_101FBA328);
      }

      if (byte_101FBA327 >= 0)
      {
        v6 = &qword_101FBA310;
      }

      else
      {
        v6 = qword_101FBA310;
      }

      if (byte_101FBA327 >= 0)
      {
        v7 = byte_101FBA327;
      }

      else
      {
        v7 = unk_101FBA318;
      }

      memset(v11, 0, sizeof(v11));
      sub_1001E0D88(v11, v6, v6 + v7, v7);
      (**v12)(buf);
      sub_100647080();
    }

    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(***(this + 11));
      v10 = sub_1000714D8(1);
      *buf = 136315650;
      v15 = v9;
      __p_4 = 2080;
      __p_6 = " ";
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sNo driver for task %s", buf, 0x20u);
    }

    *a2 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    if (v13)
    {
      sub_100004A34(v13);
    }
  }
}

void sub_1003D869C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *a18, uint64_t a19)
{
  __cxa_guard_abort(&qword_101FBA328);
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003D872C(uint64_t a1, char *a2)
{
  v3 = *a2;
  if (*(a1 + 32) == 1)
  {
    *a1 = v3;
    sub_100015184(a1 + 8, (a2 + 8));
  }

  else
  {
    *a1 = v3;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 3);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a1 + 32) = 1;
  }

  return a1;
}

void entitlements::ControllerImpl::queryPNRprefetchIfNeeded(entitlements::ControllerImpl *this)
{
  v2 = *(this + 216);
  *(this + 216) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (entitlements::ControllerImpl::shouldQueryPNRprefetch(this))
  {
    memset(__p, 0, 32);
    entitlements::ControllerImpl::makePrefetchPNRNonce(this, __p);
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(this + 11));
      *buf = 136315394;
      *&buf[4] = v4;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sPNR prefetch: GO", buf, 0x16u);
    }

    v10 = 0;
    ctu::base64::encode();
    *buf = v7;
    *&buf[16] = v8;
    LOBYTE(v10) = __p[0];
    entitlements::ControllerImpl::requestPhoneNumberRegistration_sync(this, buf, 0);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (__p[1])
    {
      __p[2] = __p[1];
      operator delete(__p[1]);
    }
  }

  else
  {
    v5 = *(this + 5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(this + 11));
      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = v6;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = " ";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sPNR prefetch: no longer interested", __p, 0x16u);
    }
  }
}

void sub_1003D8984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t entitlements::ControllerImpl::shouldQueryPNRprefetch(entitlements::ControllerImpl *this)
{
  v41 = 0;
  v42 = 0;
  entitlements::ControllerImpl::findDriverForTask(this, 1u, &v41);
  v2 = v41;
  v3 = *(this + 11);
  if (!v41)
  {
    if (v3[66] == v3[65])
    {
      goto LABEL_18;
    }

    v9 = *(this + 5);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v10 = PersonalityInfo::logPrefix(**v3);
    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v11 = "#I %s%sPNR prefetch: getPhoneNumber is not supported";
    v12 = v9;
    goto LABEL_17;
  }

  v4 = **v3;
  if (*(v4 + 49))
  {
    goto LABEL_18;
  }

  v5 = sub_100007A6C(this + 1584, v4 + 3);
  if ((this + 1592) == v5 || *(v5 + 136) != 1)
  {
    goto LABEL_18;
  }

  v6 = *(v5 + 79);
  if (v6 < 0)
  {
    v6 = *(v5 + 64);
  }

  v7 = *(v5 + 104);
  if (v6)
  {
    v8 = v7 == 5;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    ServiceMap = Registry::getServiceMap(*(this + 8));
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
    if (v21)
    {
      v23 = v21[3];
      v22 = v21[4];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v16);
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v22);
LABEL_30:
        (*(*v23 + 96))(&cf, v23, *(***(this + 11) + 52), 1, @"RCS", 0, 0);
        v24 = cf;
        sub_10000A1EC(&cf);
        if (v22)
        {
          sub_100004A34(v22);
        }

        if (!v24)
        {
          goto LABEL_18;
        }

        v2 = v41;
        goto LABEL_34;
      }
    }

    else
    {
      v23 = 0;
    }

    std::mutex::unlock(v16);
    v22 = 0;
    goto LABEL_30;
  }

  if (v6)
  {
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

LABEL_34:
  (**v2)(buf, v2);
  v25 = sub_100A8379C(*buf, @"AllowSelfInitiatedPNR", 1);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (!v25)
  {
    v26 = *(this + 5);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v28 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v28;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v11 = "#I %s%sPNR prefetch: forbidden by carrier";
    goto LABEL_42;
  }

  if (*(this + 1725) == 1)
  {
    v26 = *(this + 5);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v27 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v27;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v11 = "#I %s%sPNR prefetch: getPhoneNumber was previously fetched. Seeing signature in storage";
    goto LABEL_42;
  }

  if (((*(*v2 + 360))(v2, 13) & 1) != 0 || *(this + 216))
  {
    goto LABEL_18;
  }

  sub_10020CBC8(*(this + 8), buf);
  (*(**buf + 24))(&cf);
  v29 = cf;
  v43 = 0;
  if (cf)
  {
    v30 = CFGetTypeID(cf);
    if (v30 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v43, v29, v31);
    }
  }

  v32 = v43;
  sub_10000A1EC(&cf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  (**v2)(buf, v2);
  v33 = sub_100A8379C(*buf, @"ProcessPNRAvailabilityStatus", 0);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v32 && (!v33 || (*(this + 1726) & 1) != 0 || (*(***(this + 11) + 96) & 1) != 0))
  {
    v26 = *(this + 5);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v34 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v34;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v11 = "#I %s%sPNR prefetch: getPhoneNumber was fetched already";
LABEL_42:
    v12 = v26;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, 0x16u);
    goto LABEL_18;
  }

  v35 = *(this + 5);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = PersonalityInfo::logPrefix(***(this + 11));
    v37 = asStringBool(v32);
    v38 = asStringBool(v6 == 0);
    v39 = asStringBool(v7 == 5);
    *buf = 136316162;
    *&buf[4] = v36;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v45 = 2080;
    v46 = v37;
    v47 = 2080;
    v48 = v38;
    v49 = 2080;
    v50 = v39;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%sPNR prefetch: Need it. wasIssued:%s, no_phonenumber:%s, has_pnr_phonenumber:%s", buf, 0x34u);
  }

  v13 = 1;
LABEL_19:
  if (v42)
  {
    sub_100004A34(v42);
  }

  return v13;
}

void sub_1003D8FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D9064(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        entitlements::ControllerImpl::queryPNRprefetchIfNeeded(v5);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003D90D8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003D90F4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void entitlements::ControllerImpl::handleMsisdnChangeEvent(entitlements::ControllerImpl *this)
{
  ServiceMap = Registry::getServiceMap(*(this + 8));
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
  *&v45.var0 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v45);
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
  (*(*v10 + 40))(v10, ***(this + 11) + 24, 1, 0);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  std::mutex::lock((this + 2168));
  if (*(this + 1967) < 0)
  {
    **(this + 243) = 0;
    *(this + 244) = 0;
  }

  else
  {
    *(this + 1944) = 0;
    *(this + 1967) = 0;
  }

  if (*(this + 1991) < 0)
  {
    **(this + 246) = 0;
    *(this + 247) = 0;
  }

  else
  {
    *(this + 1968) = 0;
    *(this + 1991) = 0;
  }

  *(this + 2106) = 1;
  std::mutex::unlock((this + 2168));
  v12 = Registry::getServiceMap(*(this + 8));
  v13 = v12;
  v15 = v14;
  if (v14 < 0)
  {
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(v12);
  *&v45.var0 = v15;
  v19 = sub_100009510(&v13[1].__m_.__sig, &v45);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v13);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v22 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v13);
  v20 = 0;
  v22 = 1;
LABEL_25:
  v23 = kCarrierEntitlementsWalletDomain;
  (*(*v21 + 32))(v21, ***(this + 11) + 24, @"signature", kCarrierEntitlementsWalletDomain, 0, 4);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  *(this + 1725) = 0;
  v24 = Registry::getServiceMap(*(this + 8));
  v25 = v24;
  if (v14 < 0)
  {
    v26 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    v27 = 5381;
    do
    {
      v14 = v27;
      v28 = *v26++;
      v27 = (33 * v27) ^ v28;
    }

    while (v28);
  }

  std::mutex::lock(v24);
  *&v45.var0 = v14;
  v29 = sub_100009510(&v25[1].__m_.__sig, &v45);
  if (v29)
  {
    v31 = v29[3];
    v30 = v29[4];
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v30);
      v32 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v31 = 0;
  }

  std::mutex::unlock(v25);
  v30 = 0;
  v32 = 1;
LABEL_35:
  (*(*v31 + 32))(v31, ***(this + 11) + 24, @"phone-number-prefetched", v23, 0, 2);
  if ((v32 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  *(this + 1726) = 0;
  v33 = Registry::getServiceMap(*(this + 8));
  v34 = v33;
  if (v35 < 0)
  {
    v36 = (v35 & 0x7FFFFFFFFFFFFFFFLL);
    v37 = 5381;
    do
    {
      v35 = v37;
      v38 = *v36++;
      v37 = (33 * v37) ^ v38;
    }

    while (v38);
  }

  std::mutex::lock(v33);
  *&v45.var0 = v35;
  v39 = sub_100009510(&v34[1].__m_.__sig, &v45);
  if (!v39)
  {
    v41 = 0;
LABEL_45:
    std::mutex::unlock(v34);
    v40 = 0;
    v42 = 1;
    if (!v41)
    {
      goto LABEL_60;
    }

    goto LABEL_46;
  }

  v41 = v39[3];
  v40 = v39[4];
  if (!v40)
  {
    goto LABEL_45;
  }

  atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v34);
  atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v40);
  v42 = 0;
  if (!v41)
  {
    goto LABEL_60;
  }

LABEL_46:
  v43 = **(this + 11);
  if (*(*v43 + 49))
  {
    v44 = *(*v43 + 49) == 3;
  }

  else
  {
    v44 = 1;
  }

  if (!v44)
  {
    goto LABEL_60;
  }

  CSIPhoneNumber::CSIPhoneNumber(&v45);
  (*(*v41 + 312))(v41, v43, &v45);
  if (v53 < 0)
  {
    operator delete(__p);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v49 < 0)
  {
    operator delete(v48);
  }

  if (v47 < 0)
  {
    operator delete(v46);
  }

  if ((*(&v45.var2.__rep_.__l + 23) & 0x80000000) == 0)
  {
LABEL_60:
    if (v42)
    {
      return;
    }

    goto LABEL_61;
  }

  operator delete(v45.var2.__rep_.__l.__data_);
  if (v42)
  {
    return;
  }

LABEL_61:
  sub_100004A34(v40);
}

void sub_1003D95CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10034F8E8(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1003D9600()
{
  if (v0)
  {
    JUMPOUT(0x1003D95F4);
  }

  JUMPOUT(0x1003D95ECLL);
}

void sub_1003D9610()
{
  if (v0)
  {
    JUMPOUT(0x1003D95F4);
  }

  JUMPOUT(0x1003D95ECLL);
}

uint64_t entitlements::ControllerImpl::isAllowedImsi(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  v4 = *(v3 + 528);
  v5 = *(v3 + 520);
  if (v4 == v5)
  {
    v8 = 1;
  }

  else
  {
    theArray = 0;
    sub_100A834D0(*v5, &theArray);
    v7 = theArray;
    if (theArray)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(v16, *a2, *(a2 + 8));
      }

      else
      {
        *v16 = *a2;
        v17 = *(a2 + 16);
      }

      if (SHIBYTE(v17) < 0)
      {
        sub_100005F2C(__dst, v16[0], v16[1]);
      }

      else
      {
        *__dst = *v16;
        v22 = v17;
      }

      v20 = 0;
      if (SHIBYTE(v22) < 0)
      {
        sub_100005F2C(__p, __dst[0], __dst[1]);
      }

      else
      {
        *__p = *__dst;
        v24 = v22;
      }

      v25 = 0;
      if (ctu::cf::convert_copy())
      {
        v9 = v20;
        v20 = v25;
        v26 = v9;
        sub_100005978(&v26);
      }

      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      theString = v20;
      v20 = 0;
      sub_100005978(&v20);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__dst[0]);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      Count = CFArrayGetCount(theArray);
      if (Count)
      {
        v11 = 0;
        v2 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
          v13 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v14 = CFGetTypeID(ValueAtIndex);
            if (v14 == CFStringGetTypeID() && CFStringGetLength(v13) && CFStringHasPrefix(theString, v13))
            {
              break;
            }
          }

          v2 = ++v11 < Count;
        }

        while (Count != v11);
      }

      else
      {
        v2 = 0;
      }

      sub_100005978(&theString);
    }

    sub_100010250(&theArray);
    v8 = v7 == 0 || v2;
  }

  return v8 & 1;
}

void sub_1003D982C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100010250(&a17);
  _Unwind_Resume(a1);
}

const void **entitlements::ControllerImpl::getLastUsedImsi@<X0>(Registry **this@<X0>, uint64_t a2@<X8>)
{
  v16 = 0;
  ServiceMap = Registry::getServiceMap(this[8]);
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
  *&v17 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v17);
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
  (*(*v12 + 24))(&v15, v12, **this[11] + 24, @"last-used-imsi", kCarrierEntitlementsWalletDomain, 0, 1);
  sub_100060DE8(&v16, &v15);
  sub_10000A1EC(&v15);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v16)
  {
    v17 = 0uLL;
    v18 = 0;
    ctu::cf::assign();
    *a2 = v17;
    *(a2 + 16) = v18;
  }

  else
  {
    sub_10000501C(a2, "");
  }

  return sub_100005978(&v16);
}

unint64_t sub_1003D9A94(uint64_t *a1, char *__s, unint64_t a3)
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

void entitlements::ControllerImpl::activate(uint64_t a1, uint64_t a2, uint64_t a3, NSObject **a4)
{
  v6 = *(a3 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v9, (a1 + 8));
  v7 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
  }

  v8 = *a4;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(v8);
  }

  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  operator new();
}

void sub_1003D9CCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::personality_recovered(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v5, (a1 + 8));
  v4 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = 0;
  v6 = 0;
  sub_100004AA0(&v5, (a1 + 8));
  operator new();
}

void sub_1003D9E28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::cfg_updated(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v5, (a1 + 8));
  v4 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  v5 = 0;
  v6 = 0;
  sub_100004AA0(&v5, (a1 + 8));
  operator new();
}

void sub_1003D9F68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::wallet_updated(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v5, (a1 + 8));
  v4 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  v5 = 0;
  v6 = 0;
  sub_100004AA0(&v5, (a1 + 8));
  operator new();
}

void sub_1003DA0A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::settingsForTask(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  std::mutex::lock((a1 + 2168));
  v6 = *(a1 + 2112);
  v7 = *(a1 + 2120);
  while (1)
  {
    if (v6 == v7)
    {
      std::mutex::unlock((a1 + 2168));
      *a3 = 0;
      a3[1] = 0;
      return;
    }

    if (sub_1001E4088(*v6, a2))
    {
      break;
    }

    v6 += 2;
  }

  v8 = v6[1];
  *a3 = *v6;
  a3[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((a1 + 2168));
}

void sub_1003DA18C(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = ***(a1 + 88);
  if (*(v6 + 47) < 0)
  {
    sub_100005F2C(__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    *__p = *(v6 + 24);
    v11 = *(v6 + 40);
  }

  v7 = a4[1];
  v8 = *a4;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DA258(&event::entitlements::get_provisioning_update, __p, a3, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003DA238(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_100004A34(a3);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

void sub_1003DA258(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100405C8C((a1 + 24), __p, a3);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F6F04(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003DA33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003DA378(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = ***(a1 + 88);
  if (*(v6 + 47) < 0)
  {
    sub_100005F2C(__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    *__p = *(v6 + 24);
    v11 = *(v6 + 40);
  }

  v7 = a4[1];
  v8 = *a4;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DA444(&event::entitlements::set_provisioning_update, __p, a3, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003DA424(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_100004A34(a3);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

void sub_1003DA444(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100405ED0((a1 + 24), __p, a3);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F87E4(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003DA528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003DA564(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = ***(a1 + 88);
  if (*(v6 + 47) < 0)
  {
    sub_100005F2C(__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    *__p = *(v6 + 24);
    v11 = *(v6 + 40);
  }

  v7 = a4[1];
  v8 = *a4;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DA630(&event::entitlements::psas_updated, __p, a3, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003DA610(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_100004A34(a3);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

void sub_1003DA630(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100406114((a1 + 24), __p, a3);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F9D44(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003DA714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003DA750(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = ***(a1 + 88);
  if (*(v6 + 47) < 0)
  {
    sub_100005F2C(__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    *__p = *(v6 + 24);
    v11 = *(v6 + 40);
  }

  v7 = a4[1];
  v8 = *a4;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DA81C(&event::entitlements::enable_push_notification_result, __p, a3, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003DA7FC(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_100004A34(a3);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

void sub_1003DA81C(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100406358((a1 + 24), __p, a3);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10040659C(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003DA900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003DA93C(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = ***(a1 + 88);
  if (*(v6 + 47) < 0)
  {
    sub_100005F2C(__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    *__p = *(v6 + 24);
    v11 = *(v6 + 40);
  }

  v7 = a4[1];
  v8 = *a4;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DAA08(&event::entitlements::disable_push_notification_result, __p, a3, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003DA9E8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_100004A34(a3);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

void sub_1003DAA08(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100407C44((a1 + 24), __p, a3);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100407E88(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003DAAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003DAB28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2080;
    v25 = sub_100A38E30(a3);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%shandleGetGeofenceDataResponse: Event cause is %s", buf, 0x20u);
  }

  v9 = a3 == 3 && **a4 == 6000;
  if (a3 != 2 && *(a1 + 624))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 88));
      v12 = *(a1 + 624);
      *buf = 136315650;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sstatus: callbacks size %zu", buf, 0x20u);
    }

    v13 = (a1 + 608);
    v14 = *(a1 + 616);
    if (v14 != (a1 + 608))
    {
      do
      {
        *buf = 0;
        *&buf[8] = 0;
        sub_1003ED368(buf, (v14 + 2));
        v15 = *buf;
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1003DADDC;
        block[3] = &unk_101E497E0;
        sub_1003ED368(&object, buf);
        v16 = *(a4 + 8);
        v20 = *a4;
        v21 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = v9;
        dispatch_async(v15, block);
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (object)
        {
          dispatch_release(object);
        }

        if (*&buf[8])
        {
          _Block_release(*&buf[8]);
        }

        if (*buf)
        {
          dispatch_release(*buf);
        }

        v14 = v14[1];
      }

      while (v14 != v13);
    }

    sub_1003E9FDC(v13);
  }
}

void sub_1003DADCC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003DADF0(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *a1;
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v3 + 16))(v3, &v5, *a3);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1003DAE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003DAE68(void *a1, uint64_t a2)
{
  result = sub_1003ED368(a1 + 4, a2 + 32);
  v5 = *(a2 + 56);
  a1[6] = *(a2 + 48);
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003DAEB0(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    dispatch_release(v4);
  }
}

uint64_t sub_1003DAF10(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void sub_1003DAF50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = sub_100A38E30(a3);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%shandleGetSigningKeysResponse: Event cause is %s", buf, 0x20u);
  }

  v9 = a3 == 3 && **a4 == 6000;
  if (a3 != 2 && *(a1 + 648))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 88));
      v12 = *(a1 + 648);
      *buf = 136315650;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      *&buf[24] = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sstatus: callbacks size %zu", buf, 0x20u);
    }

    v13 = (a1 + 632);
    v14 = *(a1 + 640);
    if (v14 != a1 + 632)
    {
      do
      {
        v23 = 0;
        memset(buf, 0, sizeof(buf));
        sub_1003ED3B4(buf, (v14 + 16));
        v15 = *buf;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 1174405120;
        v17[2] = sub_1003DB220;
        v17[3] = &unk_101E49810;
        sub_1003ED3B4(&object, buf);
        v16 = *(a4 + 8);
        v19[4] = *a4;
        v20 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = v9;
        dispatch_async(v15, v17);
        if (v20)
        {
          sub_100004A34(v20);
        }

        sub_1003EB964(v19);
        if (object)
        {
          dispatch_release(object);
        }

        sub_1003EB964(&buf[8]);
        if (*buf)
        {
          dispatch_release(*buf);
        }

        v14 = *(v14 + 8);
      }

      while (v14 != v13);
    }

    sub_1003E9F1C(v13);
  }
}

void sub_1003DB204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1003DB384(va);
  _Unwind_Resume(a1);
}

void sub_1003DB220(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 72);
  v3 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DB290(a1 + 40, &v2, *(a1 + 88));
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1003DB278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003DB290(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

NSObject **sub_1003DB2E4(uint64_t a1, uint64_t a2)
{
  result = sub_1003ED3B4((a1 + 32), (a2 + 32));
  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003DB32C(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003EB964(a1 + 40);
  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

dispatch_object_t *sub_1003DB384(dispatch_object_t *a1)
{
  sub_1003EB964((a1 + 1));
  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void sub_1003DB3BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = sub_100A38E30(a3);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%shandleGetBlindSignaturesResponse: Event cause is %s", buf, 0x20u);
  }

  v9 = a3 == 3 && **a4 == 6000;
  if (a3 != 2 && *(a1 + 672))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 88));
      v12 = *(a1 + 672);
      *buf = 136315650;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      *&buf[24] = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sstatus: callbacks size %zu", buf, 0x20u);
    }

    v13 = (a1 + 656);
    v14 = *(a1 + 664);
    if (v14 != a1 + 656)
    {
      do
      {
        v23 = 0;
        memset(buf, 0, sizeof(buf));
        sub_1003ED410(buf, (v14 + 16));
        v15 = *buf;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 1174405120;
        v17[2] = sub_1003DB68C;
        v17[3] = &unk_101E49840;
        sub_1003ED410(&object, buf);
        v16 = *(a4 + 8);
        v19[4] = *a4;
        v20 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = v9;
        dispatch_async(v15, v17);
        if (v20)
        {
          sub_100004A34(v20);
        }

        sub_1003EBDF0(v19);
        if (object)
        {
          dispatch_release(object);
        }

        sub_1003EBDF0(&buf[8]);
        if (*buf)
        {
          dispatch_release(*buf);
        }

        v14 = *(v14 + 8);
      }

      while (v14 != v13);
    }

    sub_1003E9E5C(v13);
  }
}

void sub_1003DB670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1003DB7F0(va);
  _Unwind_Resume(a1);
}

void sub_1003DB68C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 72);
  v3 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DB6FC(a1 + 40, &v2, *(a1 + 88));
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1003DB6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003DB6FC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}