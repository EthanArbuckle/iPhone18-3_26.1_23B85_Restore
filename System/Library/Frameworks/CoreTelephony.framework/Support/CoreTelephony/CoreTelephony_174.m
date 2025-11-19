uint64_t sub_1014C7030(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 48);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014C7054(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014C7064(void *a1)
{
  v1 = a1[39];
  if (v1)
  {
    v3 = a1[5];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I canceling certificate validation", v5, 2u);
      v1 = a1[39];
    }

    sub_100430948(v1);
    v4 = a1[40];
    a1[39] = 0;
    a1[40] = 0;
    if (v4)
    {
      sub_100004A34(v4);
    }
  }
}

void sub_1014C70F4(Registry *a1, uint64_t a2, const __CFUUID *a3, uint64_t a4, uint64_t a5)
{
  ServiceMap = Registry::getServiceMap(a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  __p = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &__p);
  if (!v15)
  {
    v17 = 0;
    goto LABEL_8;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
LABEL_8:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
LABEL_9:
  v22 = 0;
  sub_1014C2C20(&v22, a3);
  if (a4)
  {
    if (a5)
    {
      if (v17)
      {
        if (v22)
        {
          v23 = v22;
          v20 = 0;
          v21 = 0;
          __p = 0;
          sub_10005B328(&__p, &v23, &v24, 1uLL);
          (*(*v17 + 16))(v17, a2, a4, a5, @"SatMsg", &__p, 4, 0);
          if (__p)
          {
            v20 = __p;
            operator delete(__p);
          }
        }
      }
    }
  }

  sub_100005978(&v22);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_1014C72C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, const void *a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(a1);
}

void sub_1014C7318(Registry *a1, uint64_t a2, const __CFUUID *a3, uint64_t a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  __p = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &__p);
  if (!v15)
  {
    v17 = 0;
    goto LABEL_8;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
LABEL_8:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
LABEL_9:
  v24 = 0;
  sub_1014C2C20(&v24, a3);
  if (a4 && *a5 && v17 && v24)
  {
    sub_1014CD34C(&v23, a5);
    v19 = v23;
    v25 = v24;
    v21 = 0;
    v22 = 0;
    __p = 0;
    sub_10005B328(&__p, &v25, &v26, 1uLL);
    (*(*v17 + 16))(v17, a2, a4, v19, @"SatMsg", &__p, 4, 0);
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    sub_10000A1EC(&v23);
  }

  sub_100005978(&v24);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_1014C7500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13, const void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_10000A1EC(&a13);
  sub_100005978(&a14);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(a1);
}

void sub_1014C7568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks))
  {
    *buf = 0;
    sub_1000296E0(buf);
  }

  theDict[0] = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v9 = theDict[0];
    theDict[0] = Mutable;
    *buf = v9;
    sub_1000296E0(buf);
  }

  if (*(a3 + 64))
  {
    theArray[0] = 0;
    v10 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (v10)
    {
      v11 = theArray[0];
      theArray[0] = v10;
      *buf = v11;
      sub_1000279DC(buf);
    }

    if (**(a3 + 64) != *(*(a3 + 64) + 8))
    {
      __dst[5] = 0;
      operator new();
    }

    CFDictionarySetValue(theDict[0], @"primaryContacts", theArray[0]);
    sub_1000279DC(theArray);
    sub_100010180(__dst, theDict);
    *buf = 0;
    __dst[0] = 0;
    sub_10001021C(buf);
    sub_10001021C(__dst);
  }

  else
  {
    v12 = *(a2 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "no Contacts for Budgie!", buf, 2u);
    }
  }

  sub_1000296E0(theDict);
  v20 = 0;
  v13 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v13)
  {
    v14 = v20;
    v20 = v13;
    *buf = v14;
    sub_1000296E0(buf);
  }

  v15 = 0;
  memset(v19, 0, 24);
  do
  {
    buf[0] = aComAppleSecuri_0[v15];
    sub_1001CD884(v19, buf);
    ++v15;
  }

  while (v15 != 66);
  theArray[2] = 0;
  theArray[3] = 0;
  sub_101335FA8(a2 + 40, *(a4 + 64), a5, v19, 16);
}

void sub_1014C8264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, const void *a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, std::__shared_weak_count *a33, void *a34, uint64_t a35, uint64_t a36, const void *a37, uint64_t a38, const void *a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  sub_100005978((v52 - 184));
  if (*(v52 - 153) < 0)
  {
    operator delete(*(v52 - 176));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a33)
  {
    sub_100004A34(a33);
  }

  if (a34)
  {
    a35 = a34;
    operator delete(a34);
  }

  sub_10002D760(&a37);
  sub_1000296E0(&a39);
  sub_1000296E0((v52 - 192));
  sub_10001021C(&a15);
  sub_10001021C(&a16);
  sub_1000296E0(&a17);
  _Unwind_Resume(a1);
}

const void **sub_1014C8600(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v7 = v28;
    v28 = Mutable;
    valuePtr[0] = v7;
    sub_1000296E0(valuePtr);
  }

  theDict = 0;
  v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v8)
  {
    v9 = theDict;
    theDict = v8;
    valuePtr[0] = v9;
    sub_1000296E0(valuePtr);
  }

  v11 = (a3 + 32);
  v10 = *(a3 + 32);
  if (v10)
  {
    v12 = a3 + 32;
    do
    {
      v13 = *(v10 + 32);
      if ((v13 & 0x80000000) == 0)
      {
        v12 = v10;
      }

      v10 = *(v10 + ((v13 >> 28) & 8));
    }

    while (v10);
    if (v12 != v11 && *(v12 + 32) <= 0)
    {
      v23 = sub_100007A6C(a3 + 48, (v12 + 40));
      if (a3 + 56 != v23)
      {
        value = 0;
        v24 = *(v23 + 56);
        v25 = sub_100007A6C(a3 + 72, (v12 + 40));
        sub_1014C7568(&value, a2, v24, *(v25 + 56), a3 + 96);
      }
    }

    v14 = *v11;
    if (*v11)
    {
      v15 = a3 + 32;
      do
      {
        if (*(v14 + 32) >= 1)
        {
          v15 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 32) < 1));
      }

      while (v14);
      if (v15 != v11 && *(v15 + 32) <= 1)
      {
        v16 = sub_100007A6C(a3 + 48, (v15 + 40));
        if (a3 + 56 != v16)
        {
          value = 0;
          v17 = *(v16 + 56);
          v18 = sub_100007A6C(a3 + 72, (v15 + 40));
          sub_1014C7568(&value, a2, v17, *(v18 + 56), a3 + 96);
        }
      }
    }
  }

  CFDictionarySetValue(v28, @"simConfigs", theDict);
  sub_1014C2C20(valuePtr, *a3);
  CFDictionarySetValue(v28, @"uuid", valuePtr[0]);
  sub_100005978(valuePtr);
  v19 = *(a3 + 8);
  value = 0;
  valuePtr[0] = v19;
  v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, valuePtr);
  if (v20)
  {
    value = v20;
    valuePtr[0] = 0;
    sub_100029A48(valuePtr);
    v21 = value;
  }

  else
  {
    v21 = 0;
  }

  v26 = v21;
  value = 0;
  sub_100029A48(&value);
  CFDictionarySetValue(v28, @"generatedAt", v21);
  sub_100029A48(&v26);
  sub_100010180(a1, &v28);
  sub_1000296E0(&theDict);
  return sub_1000296E0(&v28);
}

void sub_1014C8994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_10001021C(va2);
  sub_1000296E0(va);
  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

const void **sub_1014C8A04(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v4 = *(a1 + 232);
  if (v4)
  {
    v5 = *(a1 + 240);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

LABEL_6:
    theDict = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v7 = theDict;
      theDict = Mutable;
      *&value = v7;
      sub_1000296E0(&value);
    }

    v8 = *(a1 + 216);
    if (v8)
    {
      *&value = 0;
      sub_1014C8600(&value, a1, v8);
      if (!value)
      {
        v14 = *(a1 + 40);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        LOWORD(v18) = 0;
        v15 = "failed to compile settled bucket";
        goto LABEL_38;
      }

      if (*(a1 + 208) == 1 && *(a1 + 204))
      {
        v9 = @"parakeetConfig_1";
      }

      else
      {
        v9 = @"parakeetConfig_0";
      }

      CFDictionarySetValue(theDict, v9, value);
      sub_10001021C(&value);
    }

    if (!v4)
    {
      v4 = (a1 + 280);
LABEL_22:
      sub_1000BA4A0(&v20, v4);
      sub_1014C2C20(&value, v20);
      CFDictionarySetValue(theDict, @"uuid", value);
      sub_100005978(&value);
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(value) = 138412290;
        *(&value + 4) = v20;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I getSatelliteMsgCfgToUpdate, created update with ID:%@", &value, 0xCu);
      }

      *&value = off_101F43490;
      *(&value + 1) = a1;
      p_value = &value;
      logger::CFTypeRefLogger();
      sub_100007E44(&value);
      v12 = objc_autoreleasePoolPush();
      v18 = 0;
      *&value = [NSJSONSerialization dataWithJSONObject:theDict options:1 error:&v18];
      sub_1009A440C(&v21, &value);
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(value) = 138412290;
        *(&value + 4) = v18;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I getSatelliteMsgCfgToUpdate, giving out JSON with err:%@", &value, 0xCu);
      }

      *&value = off_101F43510;
      *(&value + 1) = a1;
      p_value = &value;
      logger::CFTypeRefLogger();
      sub_100007E44(&value);
      objc_autoreleasePoolPop(v12);
      goto LABEL_31;
    }

    *&value = 0;
    sub_1014C8600(&value, a1, v4);
    if (value)
    {
      if (*(a1 + 208) == 1 && !*(a1 + 204))
      {
        v10 = @"parakeetConfig_1";
      }

      else
      {
        v10 = @"parakeetConfig_0";
      }

      CFDictionarySetValue(theDict, v10, value);
      sub_10001021C(&value);
      goto LABEL_22;
    }

    v14 = *(a1 + 40);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_30:
      sub_10001021C(&value);
LABEL_31:
      sub_1000296E0(&theDict);
      if (v5)
      {
        sub_100004A34(v5);
      }

      goto LABEL_33;
    }

    LOWORD(v18) = 0;
    v15 = "failed to compile proposed bucket";
LABEL_38:
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, &v18, 2u);
    goto LABEL_30;
  }

  if (*(a1 + 280))
  {
    v5 = 0;
    goto LABEL_6;
  }

  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(value) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I getSatelliteMsgCfgToUpdate - nothing to sync", &value, 2u);
  }

LABEL_33:
  sub_1014C8E80(*(a2 + 24), v20, v21);
  sub_1000475BC(&v20);
  return sub_10002D760(&v21);
}

void sub_1014C8DF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  sub_10001021C(va3);
  sub_1000296E0(va);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1000475BC(va1);
  sub_10002D760(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_1014C8E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v4 = 0;
  v5 = a3;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, &v6, &v5, &v4);
}

void sub_1014C8EDC(uint64_t a1, uint64_t a2, const void *a3, const char *a4)
{
  v8 = *(a1 + 40);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (!v9)
    {
      return;
    }

    *buf = 138412290;
    *&buf[4] = a2;
    v10 = "#I setSatelliteMsgCfgUpdated failed with %@";
    v11 = v8;
    v12 = 12;
    goto LABEL_33;
  }

  if (v9)
  {
    *buf = 138412546;
    *&buf[4] = a3;
    v111 = 2112;
    v112 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I setSatelliteMsgCfgUpdated success, cfg_id:%@, sps:%@", buf, 0x16u);
  }

  v13 = *(a1 + 280);
  if (!v13 || CFEqual(v13, a3) != 1)
  {
    v25 = *(a1 + 232);
    if (!v25)
    {
      v38 = *(a1 + 40);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v10 = "#I ACK received while no configuration Proposed";
      v11 = v38;
      v12 = 2;
      goto LABEL_33;
    }

    if (CFEqual(*v25, a3) != 1)
    {
      v39 = *(a1 + 40);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v40 = **(a1 + 232);
      *buf = 138412546;
      *&buf[4] = a3;
      v111 = 2112;
      v112 = v40;
      v10 = "#I ACK received with %@ while Proposed is %@";
      v11 = v39;
      goto LABEL_32;
    }

    *(a1 + 272) = 0;
    v26 = *(a1 + 280);
    *(a1 + 280) = 0;
    *buf = v26;
    sub_1000475BC(buf);
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
    v28 = ServiceMap;
    v29 = "8UStorage";
    v30 = "8UStorage";
    if (("8UStorage" & 0x8000000000000000) != 0)
    {
      v31 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
      v32 = 5381;
      do
      {
        v30 = v32;
        v33 = *v31++;
        v32 = (33 * v32) ^ v33;
      }

      while (v33);
    }

    std::mutex::lock(ServiceMap);
    *buf = v30;
    v34 = sub_100009510(&v28[1].__m_.__sig, buf);
    if (v34)
    {
      v36 = v34[3];
      v35 = v34[4];
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v28);
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v35);
        v37 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v36 = 0;
    }

    std::mutex::unlock(v28);
    v35 = 0;
    v37 = 1;
LABEL_37:
    sub_10071BDE8(v36, @"need-reprovisioning", @"SatMsg", 0, 2u);
    if ((v37 & 1) == 0)
    {
      sub_100004A34(v35);
    }

    v42 = Registry::getServiceMap(*(a1 + 48));
    v43 = v42;
    v44 = "8UStorage";
    if ("8UStorage" < 0)
    {
      v45 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
      v46 = 5381;
      do
      {
        v44 = v46;
        v47 = *v45++;
        v46 = (33 * v46) ^ v47;
      }

      while (v47);
    }

    std::mutex::lock(v42);
    *buf = v44;
    v48 = sub_100009510(&v43[1].__m_.__sig, buf);
    if (v48)
    {
      v50 = v48[3];
      v49 = v48[4];
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v43);
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v49);
        v51 = 0;
        goto LABEL_47;
      }
    }

    else
    {
      v50 = 0;
    }

    std::mutex::unlock(v43);
    v49 = 0;
    v51 = 1;
LABEL_47:
    sub_10071BDE8(v50, @"need-clean-push", @"SatMsg", 0, 2u);
    if ((v51 & 1) == 0)
    {
      sub_100004A34(v49);
    }

    v52 = *(a1 + 208) == 1 && *(a1 + 204) == 0;
    *(a1 + 204) = v52;
    *(a1 + 208) = 1;
    v53 = Registry::getServiceMap(*(a1 + 48));
    v54 = v53;
    v55 = "8UStorage";
    if ("8UStorage" < 0)
    {
      v56 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
      v57 = 5381;
      do
      {
        v55 = v57;
        v58 = *v56++;
        v57 = (33 * v57) ^ v58;
      }

      while (v58);
    }

    std::mutex::lock(v53);
    *buf = v55;
    v59 = sub_100009510(&v54[1].__m_.__sig, buf);
    if (v59)
    {
      v61 = v59[3];
      v60 = v59[4];
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v54);
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v60);
        v62 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      v61 = 0;
    }

    std::mutex::unlock(v54);
    v60 = 0;
    v62 = 1;
LABEL_60:
    v63 = *(a1 + 204);
    v109 = 0;
    *buf = v63;
    v64 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, buf);
    if (v64)
    {
      v65 = v109;
      v109 = v64;
      *buf = v65;
      sub_100029A48(buf);
    }

    v108 = v109;
    v109 = 0;
    sub_100029A48(&v109);
    sub_10071B8E0(v61, @"bucket", v108, @"SatMsg", 0, 2u, 0, 0);
    sub_100029A48(&v108);
    if ((v62 & 1) == 0)
    {
      sub_100004A34(v60);
    }

    v66 = *(a1 + 216);
    if (!v66)
    {
LABEL_79:
      v82 = *(a1 + 232);
      v81 = *(a1 + 240);
      if (v81)
      {
        atomic_fetch_add_explicit((v81 + 8), 1uLL, memory_order_relaxed);
      }

      v83 = *(a1 + 224);
      *(a1 + 216) = v82;
      *(a1 + 224) = v81;
      if (v83)
      {
        sub_100004A34(v83);
      }

      v84 = *(a1 + 240);
      *(a1 + 232) = 0;
      *(a1 + 240) = 0;
      if (v84)
      {
        sub_100004A34(v84);
      }

      v85 = Registry::getServiceMap(*(a1 + 48));
      v86 = v85;
      v87 = "8UStorage";
      if ("8UStorage" < 0)
      {
        v88 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
        v89 = 5381;
        do
        {
          v87 = v89;
          v90 = *v88++;
          v89 = (33 * v89) ^ v90;
        }

        while (v90);
      }

      std::mutex::lock(v85);
      *buf = v87;
      v91 = sub_100009510(&v86[1].__m_.__sig, buf);
      if (v91)
      {
        v93 = v91[3];
        v92 = v91[4];
        if (v92)
        {
          atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v86);
          atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v92);
          v94 = 0;
          goto LABEL_93;
        }
      }

      else
      {
        v93 = 0;
      }

      std::mutex::unlock(v86);
      v92 = 0;
      v94 = 1;
LABEL_93:
      sub_10071BDE8(v93, @"ProposedConfig", @"SatMsg", 0, 2u);
      if ((v94 & 1) == 0)
      {
        sub_100004A34(v92);
      }

      v95 = Registry::getServiceMap(*(a1 + 48));
      v96 = v95;
      if ("8UStorage" < 0)
      {
        v97 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
        v98 = 5381;
        do
        {
          v29 = v98;
          v99 = *v97++;
          v98 = (33 * v98) ^ v99;
        }

        while (v99);
      }

      std::mutex::lock(v95);
      *buf = v29;
      v100 = sub_100009510(&v96[1].__m_.__sig, buf);
      if (v100)
      {
        v102 = v100[3];
        v101 = v100[4];
        if (v101)
        {
          atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v96);
          atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v101);
          v103 = 0;
          goto LABEL_103;
        }
      }

      else
      {
        v102 = 0;
      }

      std::mutex::unlock(v96);
      v101 = 0;
      v103 = 1;
LABEL_103:
      sub_1014C219C(buf, *(a1 + 216), 0);
      sub_10071B8E0(v102, @"SettledConfig", *buf, @"SatMsg", 0, 2u, 0, 0);
      sub_10001021C(buf);
      if ((v103 & 1) == 0)
      {
        sub_100004A34(v101);
      }

      v104 = *(a1 + 40);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v105 = **(a1 + 216);
        if (*(a1 + 208) != 1)
        {
          goto LABEL_110;
        }

        v106 = *(a1 + 204);
        v107 = "???";
        if (v106 == 1)
        {
          v107 = "b1";
        }

        if (!v106)
        {
LABEL_110:
          v107 = "b0";
        }

        *buf = 138412546;
        *&buf[4] = v105;
        v111 = 2080;
        v112 = v107;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "#I new Settled config is %@, bucket %s", buf, 0x16u);
      }

      sub_1014BC1B8(a1);
      sub_1014BBA98(a1);
    }

    if (*(v66 + 16) != 1)
    {
LABEL_78:
      sub_1014BB674(a1);
      goto LABEL_79;
    }

    v67 = CFUUIDCreate(0);
    v68 = *(a1 + 280);
    *(a1 + 280) = v67;
    *buf = v68;
    sub_1000475BC(buf);
    v69 = *(a1 + 40);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = *(a1 + 280);
      *buf = 138412290;
      *&buf[4] = v70;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#I previous configuration was used so need to make one more push to server to wipe old config. Clean push ID: %@", buf, 0xCu);
    }

    v71 = Registry::getServiceMap(*(a1 + 48));
    v72 = v71;
    v73 = "8UStorage";
    if ("8UStorage" < 0)
    {
      v74 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
      v75 = 5381;
      do
      {
        v73 = v75;
        v76 = *v74++;
        v75 = (33 * v75) ^ v76;
      }

      while (v76);
    }

    std::mutex::lock(v71);
    *buf = v73;
    v77 = sub_100009510(&v72[1].__m_.__sig, buf);
    if (v77)
    {
      v79 = v77[3];
      v78 = v77[4];
      if (v78)
      {
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v72);
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v78);
        v80 = 0;
        goto LABEL_76;
      }
    }

    else
    {
      v79 = 0;
    }

    std::mutex::unlock(v72);
    v78 = 0;
    v80 = 1;
LABEL_76:
    sub_1014C2C20(buf, *(a1 + 280));
    sub_10071B8E0(v79, @"need-clean-push", *buf, @"SatMsg", 0, 2u, 0, 0);
    sub_100005978(buf);
    if ((v80 & 1) == 0)
    {
      sub_100004A34(v78);
    }

    goto LABEL_78;
  }

  v14 = *(a1 + 280);
  *(a1 + 280) = 0;
  *buf = v14;
  sub_1000475BC(buf);
  v15 = Registry::getServiceMap(*(a1 + 48));
  v16 = v15;
  v17 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v18 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(v15);
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
      v24 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_28:
  sub_10071BDE8(v23, @"need-clean-push", @"SatMsg", 0, 2u);
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  v41 = *(a1 + 40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = a3;
    v111 = 2112;
    v112 = a4;
    v10 = "#I clean config push succeed, cfg_id:%@, sps:%@";
    v11 = v41;
LABEL_32:
    v12 = 22;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
  }
}

void sub_1014C9950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1014C99FC(uint64_t a1, _BOOL4 a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 136315138;
    *&v26[4] = asStringBool(a2);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I reprovisionSatelliteMsg, wipeAll:%s", v26, 0xCu);
  }

  v7 = *(a1 + 232);
  if (v7)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v7;
      *v26 = 138412290;
      *&v26[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I removing proposed config:%@", v26, 0xCu);
    }

    sub_1014BB7B8(a1);
  }

  if (a2)
  {
    if (*(a1 + 97) != 1)
    {
      v10 = *(a1 + 40);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v11 = "<none>";
      goto LABEL_14;
    }

    if (*(a1 + 96) == 1)
    {
      v10 = *(a1 + 40);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v11 = "true";
LABEL_14:
      *v26 = 136315138;
      *&v26[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I fConfigInUse == %s, so wipeAll is ignored", v26, 0xCu);
      goto LABEL_20;
    }

    v12 = *(a1 + 216);
    if (v12)
    {
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *v12;
        *v26 = 138412290;
        *&v26[4] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I removing settled config:%@", v26, 0xCu);
      }

      sub_1014BB674(a1);
    }

    sub_1014C7064(a1);
  }

LABEL_20:
  if (!*(a1 + 216))
  {
    goto LABEL_31;
  }

  *(a1 + 272) = 1;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v16 = ServiceMap;
  v17 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v18 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
  *v26 = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, v26);
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
      v24 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_29:
  sub_10071B8E0(v23, @"need-reprovisioning", kCFBooleanTrue, @"SatMsg", 0, 2u, 0, 0);
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

LABEL_31:
  v25 = *(a3 + 24);
  if (!v25)
  {
    sub_100022DB4();
  }

  (*(*v25 + 48))(v25);
  sub_1014BC424(a1);
}

void sub_1014C9D38(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014C9D68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014C9E48(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I  |--- Satellite messaging provisioning:", buf, 2u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 160))
    {
      v3 = "";
    }

    else
    {
      v3 = " -";
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I  | fCurrentState:%s", buf, 0xCu);
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    v7 = *v4;
    v5 = v4 + 1;
    v6 = v7;
    if (v7 != v5)
    {
      do
      {
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v6[4];
          v10 = *(v6 + 55);
          v11 = v10;
          if ((v10 & 0x80u) != 0)
          {
            v10 = v6[5];
          }

          if (v11 >= 0)
          {
            v9 = (v6 + 4);
          }

          if (v10)
          {
            v12 = v9;
          }

          else
          {
            v12 = "<invalid>";
          }

          v13 = *(a1 + 160);
          v14 = sub_100007A6C(v13 + 24, v6 + 4);
          *buf = 136315394;
          v15 = " UNSUPPORTED";
          if (v13 + 32 == v14)
          {
            v15 = "";
          }

          *&buf[4] = v12;
          *&buf[12] = 2080;
          *&buf[14] = v15;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I  |  [%s]:%s", buf, 0x16u);
        }

        v16 = v6[7];
        v54 = 0;
        sub_1014B9158(&v55, v16, &v54);
        *buf = off_101F43610;
        *&buf[8] = a1;
        v58 = buf;
        logger::CFTypeRefLogger();
        sub_100007E44(buf);
        sub_1000296E0(&v55);
        sub_1000296E0(&v54);
        v17 = v6[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v6[2];
            v19 = *v18 == v6;
            v6 = v18;
          }

          while (!v19);
        }

        v6 = v18;
      }

      while (v18 != v5);
    }
  }

  v20 = *(a1 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = asStringBool(*(a1 + 200));
    *buf = 136315138;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I  | fLastReportedProvisioningState: %s", buf, 0xCu);
    v20 = *(a1 + 40);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I  | fSettled:", buf, 2u);
  }

  v22 = *(a1 + 216);
  if (v22)
  {
    sub_1014C219C(&v55, *(a1 + 216), 1);
  }

  *buf = off_101F43690;
  *&buf[8] = a1;
  v58 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  if (v22)
  {
    sub_10001021C(&v55);
  }

  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I  | fProposed:", buf, 2u);
  }

  v24 = *(a1 + 232);
  if (v24)
  {
    sub_1014C219C(&v53, *(a1 + 232), 1);
  }

  *buf = off_101F43710;
  *&buf[8] = a1;
  v58 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  if (v24)
  {
    sub_10001021C(&v53);
  }

  v25 = *(a1 + 40);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I  | fUpcoming:", buf, 2u);
  }

  v26 = *(a1 + 248);
  if (v26)
  {
    sub_1014C219C(&v52, *(a1 + 248), 1);
  }

  *buf = off_101F43790;
  *&buf[8] = a1;
  v58 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  if (v26)
  {
    sub_10001021C(&v52);
  }

  v27 = *(a1 + 40);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 208) == 1)
    {
      v28 = *(a1 + 204);
      v29 = "???";
      if (v28 == 1)
      {
        v29 = "b1";
      }

      if (v28)
      {
        v30 = v29;
      }

      else
      {
        v30 = "b0";
      }
    }

    else
    {
      v30 = "-";
    }

    *buf = 136315138;
    *&buf[4] = v30;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I  | settled bucket: %s", buf, 0xCu);
    v27 = *(a1 + 40);
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 264))
    {
      v31 = "";
    }

    else
    {
      v31 = "not ";
    }

    *buf = 136315138;
    *&buf[4] = v31;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I  | fProposingBackoffTimer: %sengaged", buf, 0xCu);
    v27 = *(a1 + 40);
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v32 = asStringBool(*(a1 + 272));
    v33 = *(a1 + 280);
    *buf = 136315394;
    *&buf[4] = v32;
    *&buf[12] = 2112;
    *&buf[14] = v33;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I  | fReprovisioningRequested: %s, fCleanPushUUID: %@", buf, 0x16u);
    v27 = *(a1 + 40);
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 312))
    {
      v34 = "";
    }

    else
    {
      v34 = "NOT ";
    }

    *buf = 136315138;
    *&buf[4] = v34;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I  | certificate check %sscheduled", buf, 0xCu);
    v27 = *(a1 + 40);
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v35 = asStringBool(*(a1 + 152));
    *buf = 136315138;
    *&buf[4] = v35;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I  | fHaveInternet: %s", buf, 0xCu);
    v27 = *(a1 + 40);
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v36 = *(a1 + 192);
    *buf = 134217984;
    *&buf[4] = v36;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I  | Models: %zu", buf, 0xCu);
  }

  v37 = *(a1 + 176);
  if (v37 != (a1 + 184))
  {
    do
    {
      v38 = v37[7];
      v39 = *(a1 + 40);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = PersonalityInfo::logPrefix(*v38);
        v41 = (v38 + 16);
        if (*(v38 + 39) < 0)
        {
          v41 = *v41;
        }

        v42 = (v38 + 40);
        if (*(v38 + 63) < 0)
        {
          v42 = *v42;
        }

        v43 = (v38 + 64);
        if (*(v38 + 87) < 0)
        {
          v43 = *v43;
        }

        *buf = 136316162;
        *&buf[4] = v40;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v57 = 2080;
        v58 = v41;
        v59 = 2080;
        *v60 = v42;
        *&v60[8] = 2080;
        *&v60[10] = v43;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%s |  fImsi '%s', fMcc '%s', fMnc '%s'", buf, 0x34u);
        v39 = *(a1 + 40);
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v44 = PersonalityInfo::logPrefix(*v38);
        if (*(v38 + 88))
        {
          v45 = "";
        }

        else
        {
          v45 = "not ";
        }

        v46 = *(v38 + 104);
        v47 = asStringBool(*(v38 + 108));
        *buf = 136316162;
        *&buf[4] = v44;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v57 = 2080;
        v58 = v45;
        v59 = 1024;
        *v60 = v46;
        *&v60[4] = 2080;
        *&v60[6] = v47;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%s |  fIWFKeyFetchRequest %sissued, fFetchFailures %u, fServerIssueDetected: %s", buf, 0x30u);
        v39 = *(a1 + 40);
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v48 = PersonalityInfo::logPrefix(*v38);
        v49 = "";
        if (!*(v38 + 112))
        {
          v49 = "not ";
        }

        *buf = 136315650;
        *&buf[4] = v48;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v57 = 2080;
        v58 = v49;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%s |  fRequestBackoffTimer %sactive", buf, 0x20u);
      }

      v50 = v37[1];
      if (v50)
      {
        do
        {
          v51 = v50;
          v50 = *v50;
        }

        while (v50);
      }

      else
      {
        do
        {
          v51 = v37[2];
          v19 = *v51 == v37;
          v37 = v51;
        }

        while (!v19);
      }

      v37 = v51;
    }

    while (v51 != (a1 + 184));
  }
}

void sub_1014CA76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, const void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_100007E44(va1);
  if (v5)
  {
    sub_10001021C(va);
  }

  _Unwind_Resume(a1);
}

void sub_1014CA7EC(uint64_t a1, const void *a2, uint64_t a3)
{
  object = 0;
  valuePtr[0] = a2;
  valuePtr[1] = "contacts";
  sub_100006354(valuePtr, &object);
  type = xpc_get_type(object);
  if (type != &_xpc_type_null)
  {
    theDict = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v7 = theDict;
      theDict = Mutable;
      valuePtr[0] = v7;
      sub_1000296E0(valuePtr);
    }

    v8 = *(a1 + 216);
    if (v8)
    {
      v9 = theDict;
      v10 = *(v8 + 8);
      theArray = 0;
      valuePtr[0] = v10;
      v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, valuePtr);
      if (v11)
      {
        v12 = theArray;
        theArray = v11;
        valuePtr[0] = v12;
        sub_100029A48(valuePtr);
      }

      value = theArray;
      theArray = 0;
      sub_100029A48(&theArray);
      CFDictionarySetValue(v9, @"created_at", value);
      sub_100029A48(&value);
      theArray = 0;
      v13 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (v13)
      {
        v14 = theArray;
        theArray = v13;
        valuePtr[0] = v14;
        sub_1000279DC(valuePtr);
      }

      v15 = *(a1 + 216);
      v16 = *(v15 + 48);
      if (v16 != v15 + 56)
      {
        v17 = *(*(v16 + 56) + 64);
        if (v17)
        {
          v18 = *v17;
          v19 = v17[1];
          while (v18 != v19)
          {
            CFArrayAppendValue(theArray, *v18++);
          }
        }
      }

      CFDictionarySetValue(theDict, @"contacts", theArray);
      sub_1000279DC(&theArray);
    }

    sub_10000501C(valuePtr, "");
    sub_1014CAAAC(a3, valuePtr, theDict);
    if (v21 < 0)
    {
      operator delete(valuePtr[0]);
    }

    sub_1000296E0(&theDict);
  }

  xpc_release(object);
  if (type == &_xpc_type_null)
  {
    sub_10000501C(valuePtr, "sat-msg-provisioning: no subcommand detected");
    sub_1014CAAAC(a3, valuePtr, 0);
    if (v21 < 0)
    {
      operator delete(valuePtr[0]);
    }
  }
}

void sub_1014CAA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, xpc_object_t object, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014CAAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void sub_1014CAB00(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = a1 + 32;
  do
  {
    if (*(v6 + 32) >= a2)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a2));
  }

  while (v6);
  if (v7 == a1 + 32 || *(v7 + 32) > a2)
  {
LABEL_8:
    v8 = *(a1 + 96);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v17 = "s1";
    if (!a2)
    {
      v17 = "s0";
    }

    *buf = 136315138;
    *&buf[4] = v17;
    v16 = "encrypt_msg for SatMsg_SubscriptionID %s - missing";
    v18 = v8;
LABEL_26:
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
    goto LABEL_9;
  }

  v9 = sub_100007A6C(a1 + 120, (v7 + 40));
  if (a1 + 128 == v9)
  {
    v11 = *(a1 + 96);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v12 = *(v7 + 63);
    v13 = (v12 & 0x80u) != 0;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v7 + 48);
    }

    if (v13)
    {
      v14 = *(v7 + 40);
    }

    else
    {
      v14 = (v7 + 40);
    }

    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v15;
    v16 = "encrypt_msg for '%s' - missing keys";
    goto LABEL_37;
  }

  v10 = v9;
  if (a1 + 56 != sub_100007A6C(a1 + 48, (v7 + 40)))
  {
    std::mutex::lock(*(v10 + 56));
    *&buf[8] = 0;
    *&v24 = 0;
    ctu::cf::assign();
    operator new();
  }

  v11 = *(a1 + 96);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v19 = *(v7 + 63);
    v20 = (v19 & 0x80u) != 0;
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(v7 + 48);
    }

    if (v20)
    {
      v21 = *(v7 + 40);
    }

    else
    {
      v21 = (v7 + 40);
    }

    if (v19)
    {
      v22 = v21;
    }

    else
    {
      v22 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v22;
    v16 = "encrypt_msg for '%s' - missing cfg";
LABEL_37:
    v18 = v11;
    goto LABEL_26;
  }

LABEL_9:
  *a3 = 1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

void sub_1014CB498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::mutex *a14, uint64_t a15, uint64_t a16, __int128 a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_100422B08(v31 - 144);
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a25)
  {
    sub_100004A34(a25);
  }

  v33 = *(v31 - 168);
  if (v33)
  {
    *(v31 - 160) = v33;
    operator delete(v33);
  }

  sub_100004A34(v30);
  _Unwind_Resume(a1);
}

void sub_1014CB620(uint64_t a1@<X0>, int a2@<W1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 32);
  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = a1 + 32;
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v9 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v9 == a1 + 32 || *(v9 + 32) > a2)
  {
LABEL_8:
    v10 = *(a1 + 96);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      *a4 = 1;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return;
    }

    v27 = "s1";
    if (!a2)
    {
      v27 = "s0";
    }

    *buf = 136315138;
    *&buf[4] = v27;
    v26 = "decrypt_msg for SatMsg_SubscriptionID %s - missing";
    v28 = v10;
LABEL_29:
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v26, buf, 0xCu);
    goto LABEL_9;
  }

  v11 = v9 + 40;
  v12 = sub_100007A6C(a1 + 120, (v9 + 40));
  if (a1 + 128 == v12)
  {
    v21 = *(a1 + 96);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v22 = *(v9 + 63);
    v23 = (v22 & 0x80u) != 0;
    if ((v22 & 0x80u) != 0)
    {
      v22 = *(v9 + 48);
    }

    if (v23)
    {
      v24 = *(v9 + 40);
    }

    else
    {
      v24 = (v9 + 40);
    }

    if (v22)
    {
      v25 = v24;
    }

    else
    {
      v25 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v25;
    v26 = "decrypt_msg for '%s' - missing keys";
    goto LABEL_40;
  }

  v13 = v12;
  if (a1 + 56 == sub_100007A6C(a1 + 48, (v9 + 40)))
  {
    v21 = *(a1 + 96);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v29 = *(v9 + 63);
    v30 = (v29 & 0x80u) != 0;
    if ((v29 & 0x80u) != 0)
    {
      v29 = *(v9 + 48);
    }

    if (v30)
    {
      v31 = *(v9 + 40);
    }

    else
    {
      v31 = (v9 + 40);
    }

    if (v29)
    {
      v32 = v31;
    }

    else
    {
      v32 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v32;
    v26 = "decrypt_msg for '%s' - missing cfg";
LABEL_40:
    v28 = v21;
    goto LABEL_29;
  }

  v14 = *a3;
  v49 = *(v13 + 56);
  std::mutex::lock(v49);
  v15 = *(v13 + 56);
  v16 = *(v15 + 96);
  v48 = v14;
  v17 = v14 - v16;
  if ((v17 & 0x8000) != 0)
  {
    if (*(v15 + 120))
    {
      v33 = *(v15 + 128);
      log = *(a1 + 96);
      v34 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      if (((v48 - v33) & 0x8000) == 0)
      {
        if (v34)
        {
          *buf = 67109888;
          *&buf[4] = v48;
          *&buf[8] = 1024;
          *&buf[10] = v16;
          *&buf[14] = 1024;
          LODWORD(v51[0]) = v33;
          WORD2(v51[0]) = 1024;
          *(v51 + 6) = (v48 - v33);
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I calculating MT key %hu from recovery. Current:%hu, Recovery:%hu, steps:%hu", buf, 0x1Au);
        }

        memset(buf, 0, sizeof(buf));
        v51[0] = 0;
        ctu::cf::assign();
        operator new();
      }

      if (v34)
      {
        *buf = 67109632;
        *&buf[4] = v48;
        *&buf[8] = 1024;
        *&buf[10] = v16;
        *&buf[14] = 1024;
        LODWORD(v51[0]) = -v17;
        v19 = "#E requested MT ratchet counter is too far behind, %hu while at %hu - gap %hu - failing";
        v20 = log;
        goto LABEL_55;
      }
    }

    else
    {
      v40 = *(a1 + 96);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#E MT recovery key is not yet set, requested MT is behind initial point - failing", buf, 2u);
      }
    }

LABEL_56:
    v44 = v49;
    goto LABEL_61;
  }

  if (v17 < 0x3E9u)
  {
    if (v17 >= 0xFu)
    {
      if (!*(v15 + 120))
      {
        *buf = 0;
        v35 = sub_10002D728(buf, (v15 + 88));
        v36 = *(v15 + 120);
        *(v15 + 120) = *buf;
        *buf = v36;
        sub_10002D760(v35);
        *(v15 + 128) = *(v15 + 96);
        sub_1014C7318(*(a1 + 104), v11, *(a1 + 8), @"mt-recovery-key", (*(v13 + 56) + 120));
        v15 = *(v13 + 56);
      }

      v37 = v17 - 5;
      v38 = *(a1 + 96);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(v15 + 96);
        *buf = 67109632;
        *&buf[4] = v37;
        *&buf[8] = 1024;
        *&buf[10] = v39;
        *&buf[14] = 1024;
        LODWORD(v51[0]) = (v39 + v37);
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I shifting MT key by %hu. %hu -> %hu", buf, 0x14u);
      }

      memset(buf, 0, sizeof(buf));
      v51[0] = 0;
      ctu::cf::assign();
      operator new();
    }

    v41 = *(a1 + 96);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = *(v15 + 96);
      v43 = *(v15 + 128);
      *buf = 67109888;
      *&buf[4] = v48;
      *&buf[8] = 1024;
      *&buf[10] = v42;
      *&buf[14] = 1024;
      LODWORD(v51[0]) = v43;
      WORD2(v51[0]) = 1024;
      *(v51 + 6) = v17;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I calculating MT key %hu from current. Current:%hu, Recovery:%hu, steps:%hu", buf, 0x1Au);
    }

    memset(buf, 0, sizeof(buf));
    v51[0] = 0;
    ctu::cf::assign();
    operator new();
  }

  v18 = *(a1 + 96);
  if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_56;
  }

  *buf = 67109632;
  *&buf[4] = v48;
  *&buf[8] = 1024;
  *&buf[10] = v16;
  *&buf[14] = 1024;
  LODWORD(v51[0]) = v17;
  v19 = "#E requested MT ratchet counter is too far ahead %hu while at %hu - gap %hu - failing";
  v20 = v18;
LABEL_55:
  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, 0x14u);
  v44 = v49;
LABEL_61:
  std::mutex::unlock(v44);
  v45 = *(a1 + 96);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = *a3;
    *buf = 67109376;
    *&buf[4] = v46;
    *&buf[8] = 1024;
    *&buf[10] = 2;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#E failed to get MT key for ratchet counter %hu. Status code: %d", buf, 0xEu);
  }

  *a4 = 2;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
}

void sub_1014CC694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, std::mutex *a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a23)
  {
    sub_100004A34(a23);
  }

  v29 = *(v27 - 144);
  if (v29)
  {
    *(v27 - 136) = v29;
    operator delete(v29);
  }

  if (v26)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014CC884(uint64_t a1@<X0>, int a2@<W1>, char **a3@<X2>, char **a4@<X3>, void *a5@<X8>)
{
  v7 = *(a1 + 32);
  *a5 = 0;
  a5[1] = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  v10 = a1 + 32;
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v10 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v10 == a1 + 32 || *(v10 + 32) > a2)
  {
LABEL_8:
    v11 = *(a1 + 96);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v23 = "s1";
    if (!a2)
    {
      v23 = "s0";
    }

    LODWORD(v38) = 136315138;
    *(&v38 + 4) = v23;
    v22 = "aka_hmac_tag for SatMsg_SubscriptionID %s - missing";
LABEL_31:
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v22, &v38, 0xCu);
    return;
  }

  v12 = sub_100007A6C(a1 + 120, (v10 + 40));
  if (a1 + 128 == v12)
  {
    v11 = *(a1 + 96);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = *(v10 + 63);
      v19 = (v18 & 0x80u) != 0;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(v10 + 48);
      }

      if (v19)
      {
        v20 = *(v10 + 40);
      }

      else
      {
        v20 = (v10 + 40);
      }

      if (v18)
      {
        v21 = v20;
      }

      else
      {
        v21 = "<invalid>";
      }

      LODWORD(v38) = 136315138;
      *(&v38 + 4) = v21;
      v22 = "aka_hmac_tag for '%s' - missing keys";
      goto LABEL_31;
    }
  }

  else
  {
    v13 = v12;
    v14 = sub_100007A6C(a1 + 48, (v10 + 40));
    if (a1 + 56 == v14)
    {
      v11 = *(a1 + 96);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v24 = *(v10 + 63);
        v25 = (v24 & 0x80u) != 0;
        if ((v24 & 0x80u) != 0)
        {
          v24 = *(v10 + 48);
        }

        if (v25)
        {
          v26 = *(v10 + 40);
        }

        else
        {
          v26 = (v10 + 40);
        }

        if (v24)
        {
          v27 = v26;
        }

        else
        {
          v27 = "<invalid>";
        }

        LODWORD(v38) = 136315138;
        *(&v38 + 4) = v27;
        v22 = "aka_hmac_tag for '%s' - missing cfg";
        goto LABEL_31;
      }
    }

    else
    {
      v15 = v14;
      v38 = 0uLL;
      v39 = 0;
      sub_10005F5A8(&v38, 0, *a3, a3[1], a3[1] - *a3);
      sub_10005F5A8(&v38, *(&v38 + 1), *a4, a4[1], a4[1] - *a4);
      sub_1014B8AEC(&v38, *(*(v13 + 56) + 184));
      v16 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      do
      {
        v30[0] = aComMidwaySecur_8[v16];
        sub_1001CD884(&v35, v30);
        ++v16;
      }

      while (v16 != 49);
      v33 = 0;
      v34 = 0;
      sub_101336674((a1 + 96), &v33);
      if (v33)
      {
        *v30 = 0;
        v31 = 0;
        v32 = 0;
        sub_1014B8AEC(v30, *(*(v15 + 56) + 88));
        sub_1014B8AEC(v30, *(*(v13 + 56) + 64));
        for (i = 0; i != 5; ++i)
        {
          LOBYTE(__p) = aMario[i];
          sub_1001CD884(v30, &__p);
        }

        sub_1014B8A74(v30, *(v15 + 56));
        sub_1014B8A74(v30, *(v15 + 56) + 32);
        operator new();
      }

      v28 = *(a1 + 96);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v30 = 0;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "failed to derive akaHMACLinkedKey key", v30, 2u);
      }

      if (v34)
      {
        sub_100004A34(v34);
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (v38)
      {
        *(&v38 + 1) = v38;
        operator delete(v38);
      }
    }
  }
}

void sub_1014CCDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21)
{
  TMKXPCServer.shutdown()();
  sub_100004A34(v22);
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  if (a20)
  {
    operator delete(a20);
  }

  v25 = *(v23 - 112);
  if (v25)
  {
    *(v23 - 104) = v25;
    operator delete(v25);
  }

  v26 = *(v21 + 8);
  if (v26)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014CCE4C(NSObject **a1, const __CFData *a2)
{
  data = 0;
  v13 = 0;
  v14 = 0;
  sub_1014B8AEC(&data, a2);
  for (i = 0; i != 61; ++i)
  {
    LOBYTE(md) = aComMidwaySecur_9[i];
    sub_1001CD884(&data, &md);
  }

  md = 0;
  v10 = 0;
  v11 = 0;
  sub_1000CFAD0(&md, 32);
  if (CC_SHA256(data, v13 - data, md))
  {
    v4 = md;
    v5 = *md;
LABEL_8:
    v10 = v4;
    operator delete(v4);
    goto LABEL_9;
  }

  v6 = *a1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "CC_SHA256 failed!", v8, 2u);
  }

  v4 = md;
  v5 = 255;
  if (md)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (data)
  {
    v13 = data;
    operator delete(data);
  }

  return v5;
}

void sub_1014CCF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014CCF94(void *a1, os_log_t *a2, uint64_t *a3, uint64_t a4, char *__s)
{
  v5 = __s;
  __p = 0;
  v19 = 0;
  v20 = 0;
  v10 = strlen(__s);
  if (v10)
  {
    v11 = v10;
    do
    {
      v12 = *v5++;
      LOBYTE(v16) = v12;
      sub_1001CD884(&__p, &v16);
      --v11;
    }

    while (v11);
  }

  *a1 = 0;
  a1[1] = 0;
  v13 = *a3;
  v14 = a3[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a4)
  {
    while (v13)
    {
      sub_101336824(a2, &v16);
      v13 = v16;
      v15 = v17;
      v16 = 0;
      v17 = 0;
      if (v14)
      {
        sub_100004A34(v14);
        if (v17)
        {
          sub_100004A34(v17);
        }
      }

      v14 = v15;
      if (!--a4)
      {
        goto LABEL_14;
      }
    }
  }

  v15 = v14;
LABEL_14:
  *a1 = v13;
  a1[1] = v15;
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_1014CD090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  *v13 = v14;
  v13[1] = v15;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014CD0C4(uint64_t a1)
{
  *a1 = off_101F42918;
  sub_100DE3E98(*(a1 + 128));
  v2 = *(a1 + 112);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 96));

  return sub_1014B9680(a1);
}

void sub_1014CD130(uint64_t a1)
{
  *a1 = off_101F42918;
  sub_100DE3E98(*(a1 + 128));
  v2 = *(a1 + 112);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 96));
  sub_1014B9680(a1);

  operator delete();
}

uint64_t sub_1014CD1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  v5 = *(*v4 + 48);

  return v5();
}

void sub_1014CD24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "unsupported device");
  sub_1014CAAAC(a3, __p, 0);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1014CD2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014CD2C4(void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **sub_1014CD34C(__CFDictionary **a1, uint64_t a2)
{
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v7 = 0;
    sub_1000296E0(&v7);
    Mutable = theDict;
  }

  if (*a2)
  {
    CFDictionarySetValue(Mutable, *(a2 + 16), *a2);
    CFDictionarySetValue(theDict, *(a2 + 24), [NSNumber numberWithUnsignedShort:*(a2 + 8)]);
    Mutable = theDict;
  }

  *a1 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  return sub_1000296E0(&theDict);
}

uint64_t *sub_1014CD424(uint64_t a1)
{
  v43 = a1;
  v2 = *a1;
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v4 = ServiceMap;
  v6 = v5;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v7 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
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
  v42 = a1;
  __p = v6;
  v10 = sub_100009510(&v4[1].__m_.__sig, &__p);
  if (v10 && (v11 = v10[4]) != 0)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v4);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v40 = v11;
    sub_100004A34(v11);
    v12 = 0;
  }

  else
  {
    std::mutex::unlock(v4);
    v40 = 0;
    v12 = 1;
  }

  v41 = v12;
  v44 = 0;
  sub_1014C2C20(&v44, *v2);
  v13 = v42;
  v14 = *(v2 + 24);
  if (v14 != (v2 + 32))
  {
    do
    {
      v15 = *v2;
      v16 = Registry::getServiceMap(*(v13 + 16));
      v17 = v16;
      v18 = v5;
      if ((v5 & 0x8000000000000000) != 0)
      {
        v19 = 5381;
        v20 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
        do
        {
          v18 = v19;
          v21 = *v20++;
          v19 = (33 * v19) ^ v21;
        }

        while (v21);
      }

      std::mutex::lock(v16);
      __p = v18;
      v22 = sub_100009510(&v17[1].__m_.__sig, &__p);
      if (v22)
      {
        v24 = v22[3];
        v23 = v22[4];
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v17);
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = v42;
          sub_100004A34(v23);
          v25 = 0;
          goto LABEL_17;
        }
      }

      else
      {
        v24 = 0;
      }

      std::mutex::unlock(v17);
      v23 = 0;
      v25 = 1;
LABEL_17:
      v49 = 0;
      sub_1014C2C20(&v49, v15);
      if (v24 && v49)
      {
        v47 = 0;
        v48 = v49;
        __p = 0;
        v46 = 0;
        sub_10005B328(&__p, &v48, &v49, 1uLL);
        (*(*v24 + 32))(v24, v14 + 5, @"ue-pub-key", @"SatMsg", &__p, 4);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        v47 = 0;
        v48 = v49;
        __p = 0;
        v46 = 0;
        sub_10005B328(&__p, &v48, &v49, 1uLL);
        (*(*v24 + 32))(v24, v14 + 5, @"cred-key", @"SatMsg", &__p, 4);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        v47 = 0;
        v48 = v49;
        __p = 0;
        v46 = 0;
        sub_10005B328(&__p, &v48, &v49, 1uLL);
        (*(*v24 + 32))(v24, v14 + 5, @"msisdn-key", @"SatMsg", &__p, 4);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        v47 = 0;
        v48 = v49;
        __p = 0;
        v46 = 0;
        sub_10005B328(&__p, &v48, &v49, 1uLL);
        (*(*v24 + 32))(v24, v14 + 5, @"hmac-link-key", @"SatMsg", &__p, 4);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        v47 = 0;
        v48 = v49;
        __p = 0;
        v46 = 0;
        sub_10005B328(&__p, &v48, &v49, 1uLL);
        (*(*v24 + 32))(v24, v14 + 5, @"mt-key", @"SatMsg", &__p, 4);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        v47 = 0;
        v48 = v49;
        __p = 0;
        v46 = 0;
        sub_10005B328(&__p, &v48, &v49, 1uLL);
        (*(*v24 + 32))(v24, v14 + 5, @"mt-recovery-key", @"SatMsg", &__p, 4);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        v47 = 0;
        v48 = v49;
        __p = 0;
        v46 = 0;
        sub_10005B328(&__p, &v48, &v49, 1uLL);
        (*(*v24 + 32))(v24, v14 + 5, @"mo-key", @"SatMsg", &__p, 4);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }
      }

      sub_100005978(&v49);
      if ((v25 & 1) == 0)
      {
        sub_100004A34(v23);
      }

      v26 = v14[1];
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
          v27 = v14[2];
          v28 = *v27 == v14;
          v14 = v27;
        }

        while (!v28);
      }

      v14 = v27;
    }

    while (v27 != (v2 + 32));
  }

  v29 = Registry::getServiceMap(*(v13 + 16));
  v30 = v29;
  v31 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v32 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
    v33 = 5381;
    do
    {
      v31 = v33;
      v34 = *v32++;
      v33 = (33 * v33) ^ v34;
    }

    while (v34);
  }

  std::mutex::lock(v29);
  __p = v31;
  v35 = sub_100009510(&v30[1].__m_.__sig, &__p);
  if (v35)
  {
    v37 = v35[3];
    v36 = v35[4];
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v30);
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v36);
      v38 = 0;
      goto LABEL_49;
    }
  }

  else
  {
    v37 = 0;
  }

  std::mutex::unlock(v30);
  v36 = 0;
  v38 = 1;
LABEL_49:
  v49 = v44;
  v46 = 0;
  v47 = 0;
  __p = 0;
  sub_10005B328(&__p, &v49, &v50, 1uLL);
  sub_10071BDE8(v37, @"offgridKey", @"SatMsg", &__p, 4u);
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  if ((v38 & 1) == 0)
  {
    sub_100004A34(v36);
  }

  sub_100005978(&v44);
  if ((v41 & 1) == 0)
  {
    sub_100004A34(v40);
  }

  return sub_100313630(&v43);
}

void sub_1014CDAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  sub_100005978(&a17);
  if ((a12 & 1) == 0)
  {
    sub_100004A34(a10);
  }

  sub_100313630(&a16);
  _Unwind_Resume(a1);
}

const void **sub_1014CDBC0(const void **a1)
{
  sub_1000279DC(a1 + 2);
  sub_100005978(a1 + 1);

  return sub_100005978(a1);
}

const void **sub_1014CDC04(const void **result, const void **a2)
{
  v3 = result;
  v4 = *result;
  if (*result != a2)
  {
    v5 = *v4;
    *v4 = 0;
    v12 = v5;
    *v4 = *a2;
    *a2 = 0;
    result = sub_100005978(&v12);
  }

  v6 = a2 + 1;
  v7 = v3[1];
  if (v7 != a2 + 1)
  {
    v8 = *v7;
    *v7 = 0;
    v12 = v8;
    *v7 = *v6;
    *v6 = 0;
    result = sub_100005978(&v12);
  }

  v9 = a2 + 2;
  v10 = v3[2];
  if (v10 != a2 + 2)
  {
    v11 = *v10;
    *v10 = 0;
    v12 = v11;
    *v10 = *v9;
    *v9 = 0;
    return sub_100010250(&v12);
  }

  return result;
}

const void **sub_1014CDCBC(const void **a1)
{
  sub_100010250(a1 + 2);
  sub_100005978(a1 + 1);

  return sub_100005978(a1);
}

const void **sub_1014CDD00(uint64_t a1)
{
  sub_100005978((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return sub_1005A16F4(a1);
}

const void **sub_1014CDD4C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1014CDDA0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F42A80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014CDDF4(uint64_t a1)
{
  sub_100010250((a1 + 136));
  sub_100005978((a1 + 128));
  sub_100005978((a1 + 120));
  sub_10002D760((a1 + 112));
  sub_100005978((a1 + 104));
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

uint64_t sub_1014CDE9C(uint64_t a1, void **a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if ((sub_1000068BC(a2, (v2 + 32)) & 0x80) == 0)
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    result = sub_1000068BC(v5 + 4, a2);
    if ((result & 0x80) == 0)
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return result;
}

void sub_1014CDFE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D57A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1014CDFF8(uint64_t a1)
{
  sub_100E27210(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_100E27210(v2);
  }

  return a1;
}

void sub_1014CE04C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014CE0A0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014CE0E0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t *sub_1014CE10C(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  Registry::createRestModuleOneTimeUseConnection(&v8, *(*v1 + 48));
  ctu::RestModule::connect();
  if (v9)
  {
    sub_100004A34(v9);
  }

  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I initialized", buf, 2u);
  }

  sub_10024BAAC(&v6);
  return sub_1000049E0(&v5);
}

void sub_1014CE1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1014CE1FC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F42B30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1014CE278(void *a1)
{
  *a1 = off_101F42B80;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1014CE2C4(void *a1)
{
  *a1 = off_101F42B80;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1014CE3A4(uint64_t result, uint64_t a2)
{
  *a2 = off_101F42B80;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014CE3E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014CE3F4(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1014CE434(uint64_t *a1, xpc_object_t *a2)
{
  sub_1008479D0(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        sub_1014C0DA0(v4);
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1014CE4C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1014CE510(void *a1)
{
  *a1 = off_101F42C00;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1014CE55C(void *a1)
{
  *a1 = off_101F42C00;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1014CE63C(uint64_t result, uint64_t a2)
{
  *a2 = off_101F42C00;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014CE67C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014CE68C(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1014CE6CC(uint64_t *a1, xpc_object_t *a2)
{
  sub_10011E228(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        sub_1014C139C(v4);
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1014CE75C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014CEFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void **a19, char a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, int a42, __int16 a43, char a44, char a45)
{
  sub_100004A34(v46);
  sub_100004A34(v47);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  v49 = *a14;
  if (*a14)
  {
    *(v45 + 128) = v49;
    operator delete(v49);
  }

  sub_100DE3E98(*(v45 + 104));
  sub_100DE3E98(*(v45 + 80));
  sub_100E27210(*(v45 + 56));
  sub_1000475BC(a19);
  std::__shared_weak_count::~__shared_weak_count(v45);
  operator delete(v50);
  _Unwind_Resume(a1);
}

void sub_1014CF1AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F42C80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_1014CF200(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  sub_100DE3E98(*(a1 + 104));
  sub_100DE3E98(*(a1 + 80));
  sub_100E27210(*(a1 + 56));

  return sub_1000475BC((a1 + 24));
}

uint64_t sub_1014CF260(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *sub_1014CF36C(uint64_t a1, void **a2)
{
  v3 = 0;
  result = sub_100005C2C(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_1014CF474(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F42CD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014CF4C8(uint64_t a1)
{
  sub_10002D760((a1 + 208));
  sub_10002D760((a1 + 176));
  sub_10002D760((a1 + 144));
  sub_10002D760((a1 + 112));
  sub_10002D760((a1 + 104));
  sub_10002D760((a1 + 96));
  sub_10002D760((a1 + 88));

  std::mutex::~mutex((a1 + 24));
}

uint64_t sub_1014CF538(uint64_t a1, Registry **a2, uint64_t a3, const __CFUUID *a4)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 82) = 0u;
  *(a1 + 104) = @"key";
  *(a1 + 112) = @"counter";
  *(a1 + 120) = 0;
  v7 = a1 + 120;
  *(a1 + 128) = 0;
  *(a1 + 136) = @"key";
  *(a1 + 144) = @"counter";
  *(a1 + 152) = 0;
  v8 = a1 + 152;
  *(a1 + 160) = 0;
  *(a1 + 168) = @"key";
  *(a1 + 176) = @"counter";
  *(a1 + 184) = 0;
  v9 = (a1 + 184);
  ServiceMap = Registry::getServiceMap(*a2);
  v11 = ServiceMap;
  if (v12 < 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  __p = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &__p);
  if (!v16)
  {
    v18 = 0;
    goto LABEL_8;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
LABEL_8:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
LABEL_9:
  v28 = 0;
  sub_1014C2C20(&v28, a4);
  if (v18 && v28)
  {
    v30 = v28;
    v25 = 0;
    v26 = 0;
    __p = 0;
    sub_10005B328(&__p, &v30, &v31, 1uLL);
    (*(*v18 + 24))(&v27, v18, a3, @"ue-pub-key", @"SatMsg", &__p, 4);
    sub_1001B1A54(&v31, &v27);
    v20 = (a1 + 64);
    if ((a1 + 64) != &v31)
    {
      cf = *v20;
      *v20 = v31;
      v31 = 0;
      sub_10002D760(&cf);
    }

    sub_10002D760(&v31);
    sub_10000A1EC(&v27);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v30 = v28;
    v25 = 0;
    v26 = 0;
    __p = 0;
    sub_10005B328(&__p, &v30, &v31, 1uLL);
    (*(*v18 + 24))(&v27, v18, a3, @"cred-key", @"SatMsg", &__p, 4);
    sub_1001B1A54(&v31, &v27);
    v21 = (a1 + 72);
    if ((a1 + 72) != &v31)
    {
      cf = *v21;
      *v21 = v31;
      v31 = 0;
      sub_10002D760(&cf);
    }

    sub_10002D760(&v31);
    sub_10000A1EC(&v27);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v30 = v28;
    v25 = 0;
    v26 = 0;
    __p = 0;
    sub_10005B328(&__p, &v30, &v31, 1uLL);
    (*(*v18 + 24))(&v27, v18, a3, @"msisdn-key", @"SatMsg", &__p, 4);
    sub_1001B1A54(&v31, &v27);
    v22 = (a1 + 80);
    if ((a1 + 80) != &v31)
    {
      cf = *v22;
      *v22 = v31;
      v31 = 0;
      sub_10002D760(&cf);
    }

    sub_10002D760(&v31);
    sub_10000A1EC(&v27);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v30 = v28;
    v25 = 0;
    v26 = 0;
    __p = 0;
    sub_10005B328(&__p, &v30, &v31, 1uLL);
    (*(*v18 + 24))(&v27, v18, a3, @"hmac-link-key", @"SatMsg", &__p, 4);
    sub_1001B1A54(&v31, &v27);
    if (v9 != &v31)
    {
      cf = *v9;
      *v9 = v31;
      v31 = 0;
      sub_10002D760(&cf);
    }

    sub_10002D760(&v31);
    sub_10000A1EC(&v27);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v31 = v28;
    v25 = 0;
    v26 = 0;
    __p = 0;
    sub_10005B328(&__p, &v31, &v32, 1uLL);
    (*(*v18 + 24))(&cf, v18, a3, @"mt-key", @"SatMsg", &__p, 4);
    sub_1014CFCA8(a1 + 88, cf);
    sub_10000A1EC(&cf);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v31 = v28;
    v25 = 0;
    v26 = 0;
    __p = 0;
    sub_10005B328(&__p, &v31, &v32, 1uLL);
    (*(*v18 + 24))(&cf, v18, a3, @"mt-recovery-key", @"SatMsg", &__p, 4);
    sub_1014CFCA8(v7, cf);
    sub_10000A1EC(&cf);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v31 = v28;
    v25 = 0;
    v26 = 0;
    __p = 0;
    sub_10005B328(&__p, &v31, &v32, 1uLL);
    (*(*v18 + 24))(&cf, v18, a3, @"mo-key", @"SatMsg", &__p, 4);
    sub_1014CFCA8(v8, cf);
    sub_10000A1EC(&cf);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }
  }

  sub_100005978(&v28);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  return a1;
}

void sub_1014CFBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, int a14, const void *a15, const void *a16)
{
  sub_10000A1EC(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a15);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  sub_10002D760(v19);
  sub_10002D760(v18);
  sub_10002D760(v17);
  sub_10002D760((v16 + 88));
  sub_10002D760((v16 + 80));
  sub_10002D760((v16 + 72));
  sub_10002D760((v16 + 64));
  std::mutex::~mutex(v16);
  _Unwind_Resume(a1);
}

CFTypeID sub_1014CFCA8(CFTypeID result, CFTypeRef cf)
{
  if (cf)
  {
    v3 = result;
    v4 = CFGetTypeID(cf);
    result = CFDictionaryGetTypeID();
    if (v4 == result)
    {
      Value = CFDictionaryGetValue(cf, *(v3 + 16));
      if (Value)
      {
        v6 = Value;
        v7 = CFGetTypeID(Value);
        if (v7 == CFDataGetTypeID())
        {
          v8 = v6;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      v14 = v8;
      sub_1009A440C(v3, &v14);
      v9 = CFDictionaryGetValue(cf, *(v3 + 24));
      if (v9)
      {
        v11 = v9;
        v12 = CFGetTypeID(v9);
        if (v12 == CFNumberGetTypeID())
        {
          v13 = v11;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v15 = 0;
      result = ctu::cf::assign(&v15, v13, v10);
      *(v3 + 8) = v15;
    }
  }

  return result;
}

uint64_t sub_1014CFDF0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F42D20;
  a2[1] = v2;
  return result;
}

void sub_1014CFE1C(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s", &v5, 0xCu);
  }
}

uint64_t sub_1014CFED0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014CFF8C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F42DA0;
  a2[1] = v2;
  return result;
}

void sub_1014CFFB8(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s", &v5, 0xCu);
  }
}

uint64_t sub_1014D006C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D0128(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F42E20;
  a2[1] = v2;
  return result;
}

void sub_1014D0154(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s", &v5, 0xCu);
  }
}

uint64_t sub_1014D0208(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014D0274(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F42EA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014D02C8(uint64_t a1)
{
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 32);

  sub_100DE3E98(v2);
}

void sub_1014D03FC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F42EF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014D0450(uint64_t a1)
{
  v2 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    sub_100004A34(v4);
  }
}

uint64_t sub_1014D0504(uint64_t a1, void **a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if ((sub_1000068BC(a2, (v2 + 32)) & 0x80) == 0)
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    result = sub_1000068BC(v5 + 4, a2);
    if ((result & 0x80) == 0)
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return result;
}

void sub_1014D064C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D57A8(va);
  _Unwind_Resume(a1);
}

void sub_1014D0660(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 328);
  v3 = *(v1 + 336);
  while (v2 != v3)
  {
    v4 = v2[1];
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        if (*v2)
        {
          (*(**v2 + 16))(*v2, *(v1 + 200));
        }

        sub_100004A34(v6);
      }
    }

    v2 += 2;
  }

  operator delete();
}

void sub_1014D0754(void **a1)
{
  v1 = a1;
  (*(***a1 + 128))(**a1);
  operator delete();
}

void sub_1014D0814(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F42F40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014D0900(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F42F90;
  a2[1] = v2;
  return result;
}

void sub_1014D092C(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D09DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014D0A28(void *a1, void **a2)
{
  v3 = sub_100007A6C(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    v5 = *(v3 + 8);
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (*a1 == v3)
    {
      *a1 = v6;
    }

    v9 = a1[1];
    --a1[2];
    sub_100018288(v9, v4);
    sub_1000D57F4((v4 + 4));

    operator delete(v4);
  }
}

void sub_1014D0F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void **a16)
{
  v18 = *a10;
  if (*a10)
  {
    *(v16 + 128) = v18;
    operator delete(v18);
  }

  sub_100DE3E98(*(v16 + 104));
  sub_100DE3E98(*(v16 + 80));
  sub_100E27210(*(v16 + 56));
  sub_1000475BC(a16);
  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1014D1068(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43010;
  a2[1] = v2;
  return result;
}

void sub_1014D1094(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D1144(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014D1190(void **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1[1];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I notify IDS new config %@ is available", buf, 0xCu);
  }

  (*(**(v2 + 352) + 16))(*(v2 + 352));
  sub_100FCC8E8(&v7);
  return sub_1000049E0(&v6);
}

void sub_1014D1278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100FCC8E8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1014D1304(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43090;
  a2[1] = v2;
  return result;
}

void sub_1014D1330(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D13E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D149C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43110;
  a2[1] = v2;
  return result;
}

void sub_1014D14C8(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D1578(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014D1638(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F43190;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1014D1668(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 16));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1014D174C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014D180C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F43210;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1014D183C(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 16));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1014D1920(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F43270))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D19DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43290;
  a2[1] = v2;
  return result;
}

void sub_1014D1A08(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#E %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D1AB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D1B74(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43310;
  a2[1] = v2;
  return result;
}

void sub_1014D1BA0(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#E %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D1C50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014D1D10(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F43390;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1014D1D40(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 16));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1014D1E24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014D1EE4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F43410;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1014D1F14(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 16));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1014D1FF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D20B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43490;
  a2[1] = v2;
  return result;
}

void sub_1014D20E0(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D2190(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D224C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43510;
  a2[1] = v2;
  return result;
}

void sub_1014D2278(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D2328(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014D2374(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I notify IDS new re-sync is needed", buf, 2u);
  }

  (*(**(v1 + 352) + 16))(*(v1 + 352));
  operator delete();
}

void *sub_1014D2454(void *a1)
{
  *a1 = off_101F43590;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1014D24A0(void *a1)
{
  *a1 = off_101F43590;
  v1 = a1[3];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1014D2580(uint64_t result, uint64_t a2)
{
  *a2 = off_101F43590;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014D25C0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014D25D0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1014D2610(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014D27A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014D27B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014D2800(uint64_t *a1)
{
  v1 = *a1;
  v34 = a1;
  v35 = v1;
  v2 = *v1;
  if ((*(v1 + 47) & 0x8000000000000000) != 0)
  {
    if (*(v1 + 32))
    {
      goto LABEL_3;
    }
  }

  else if (*(v1 + 47))
  {
LABEL_3:
    v3 = *(v2 + 160);
    if (!v3)
    {
      goto LABEL_57;
    }

    v4 = sub_100007A6C(v3, (*(v1 + 8) + 24));
    if (*(v2 + 160) + 8 == v4)
    {
      goto LABEL_57;
    }

    v5 = *(v1 + 8);
    v6 = *(v4 + 56);
    if (!sub_1014C178C((v6 + 32), (v1 + 24)))
    {
      goto LABEL_57;
    }

    sub_1001696A4((v6 + 32), (v1 + 24));
    v7 = v5 + 24;
    v8 = *(v2 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 47) >= 0)
      {
        v9 = v1 + 24;
      }

      else
      {
        v9 = *(v1 + 24);
      }

      v10 = *(v5 + 47);
      v11 = (v10 & 0x80u) != 0;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v5 + 32);
      }

      if (v11)
      {
        v12 = *(v5 + 24);
      }

      else
      {
        v12 = (v5 + 24);
      }

      if (v10)
      {
        v13 = v12;
      }

      else
      {
        v13 = "<invalid>";
      }

      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I SMSC %s was set for persona %s", buf, 0x16u);
    }

    if ((atomic_load_explicit(&qword_101FCAC40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCAC40))
    {
      *buf = @"sim-cfg";
      qword_101FCAC80 = 0;
      unk_101FCAC88 = 0;
      qword_101FCAC78 = 0;
      sub_10005B328(&qword_101FCAC78, buf, &buf[8], 1uLL);
      __cxa_atexit(sub_10041F938, &qword_101FCAC78, &_mh_execute_header);
      __cxa_guard_release(&qword_101FCAC40);
    }

    ServiceMap = Registry::getServiceMap(*(v2 + 48));
    v15 = ServiceMap;
    if (v16 < 0)
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
    *buf = v16;
    v20 = sub_100009510(&v15[1].__m_.__sig, buf);
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
LABEL_37:
        if (*(v1 + 47) < 0)
        {
          sub_100005F2C(__dst, *(v1 + 24), *(v1 + 32));
        }

        else
        {
          *__dst = *(v1 + 24);
          v37 = *(v1 + 40);
        }

        if (SHIBYTE(v37) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v41 = v37;
        }

        v39 = 0;
        if (SHIBYTE(v41) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v41;
        }

        v42 = 0;
        if (ctu::cf::convert_copy())
        {
          v31 = v39;
          v39 = v42;
          v43 = v31;
          sub_100005978(&v43);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v32 = v39;
        v38 = v39;
        v39 = 0;
        sub_100005978(&v39);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p[0]);
        }

        (*(*v22 + 16))(v22, v7, @"smsc", v32, @"SatMsg", &qword_101FCAC78, 2, 0, v34, v35);
        sub_100005978(&v38);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__dst[0]);
        }

        if ((v23 & 1) == 0)
        {
          sub_100004A34(v21);
        }

        sub_1014BC424(v2);
        goto LABEL_57;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    goto LABEL_37;
  }

  v24 = *(v2 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(v1 + 8);
    v28 = *(v25 + 24);
    v26 = (v25 + 24);
    v27 = v28;
    v29 = *(v26 + 23);
    v30 = v29;
    if ((v29 & 0x80u) != 0)
    {
      v29 = *(v26 + 1);
    }

    if (v30 < 0)
    {
      v26 = v27;
    }

    if (!v29)
    {
      v26 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I no SMSC for %s reported...", buf, 0xCu);
  }

LABEL_57:
  sub_1014D2D30(&v35);
  return sub_1000049E0(&v34);
}

void sub_1014D2C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  __cxa_guard_abort(&qword_101FCAC40);
  sub_1014D2D30(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014D2D30(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

void sub_1014D2D94(void ***a1)
{
  v1 = **a1;
  if (!v1[20])
  {
    goto LABEL_20;
  }

  v2 = v1[41];
  v3 = v1[42];
  if (v2 != v3)
  {
    v4 = 0;
    while (1)
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
            (*(**v2 + 24))(buf);
            v8 = *buf;
            *buf = 0uLL;
            if (v4)
            {
              sub_100004A34(v4);
              if (*&buf[8])
              {
                sub_100004A34(*&buf[8]);
              }
            }

            if (v8)
            {
              sub_100004A34(v7);
              v10 = v1[5];
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                v11 = (*(v8 + 8) - *v8) >> 3;
                *buf = 134217984;
                *&buf[4] = v11;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I updating contacts: %zu elems", buf, 0xCu);
              }

              v12 = v1[20];
              v15 = *v12;
              v13 = v12 + 1;
              v14 = v15;
              if (v15 != v13)
              {
                do
                {
                  v16 = v14[7];
                  if (*(&v8 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  v17 = *(v16 + 72);
                  *(v16 + 64) = v8;
                  if (v17)
                  {
                    sub_100004A34(v17);
                  }

                  v18 = v14[1];
                  if (v18)
                  {
                    do
                    {
                      v19 = v18;
                      v18 = *v18;
                    }

                    while (v18);
                  }

                  else
                  {
                    do
                    {
                      v19 = v14[2];
                      v20 = *v19 == v14;
                      v14 = v19;
                    }

                    while (!v20);
                  }

                  v14 = v19;
                }

                while (v19 != v13);
              }

              sub_1014BC424(v1);
              v4 = *(&v8 + 1);
              if (!*(&v8 + 1))
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }

            v4 = *(&v8 + 1);
          }

          sub_100004A34(v7);
        }
      }

      v2 += 2;
      if (v2 == v3)
      {
        goto LABEL_16;
      }
    }
  }

  v4 = 0;
LABEL_16:
  v9 = v1[5];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I NO contacts yet to set", buf, 2u);
  }

  if (!v4)
  {
LABEL_20:
    operator delete();
  }

LABEL_19:
  sub_100004A34(v4);
  goto LABEL_20;
}

void sub_1014D2FEC()
{
  if (v0)
  {
    sub_100004A34(v0);
  }

  operator delete();
}

uint64_t sub_1014D30A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43610;
  a2[1] = v2;
  return result;
}

void sub_1014D30D4(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D3184(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D3240(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43690;
  a2[1] = v2;
  return result;
}

void sub_1014D326C(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D331C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D33D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43710;
  a2[1] = v2;
  return result;
}

void sub_1014D3404(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D34B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D3570(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F43790;
  a2[1] = v2;
  return result;
}

void sub_1014D359C(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_1014D364C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014D36B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F43810;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014D370C(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void sub_1014D384C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014D3874(uint64_t a1, NSObject **a2, void *a3)
{
  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "diag.cellular.health");
  *a1 = 0;
  *(a1 + 8) = 0;
  v6 = *a2;
  *(a1 + 16) = *a2;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a1 + 24) = 0;
  ctu::OsLogLogger::OsLogLogger(v14, &v13);
  ctu::OsLogLogger::OsLogLogger((a1 + 32), v14);
  ctu::OsLogLogger::~OsLogLogger(v14);
  ctu::OsLogContext::~OsLogContext(&v13);
  v7 = a3[1];
  *(a1 + 40) = *a3;
  *(a1 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "CellularHealth");
  v8 = *(a1 + 16);
  v10 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  ctu::RestModule::RestModule();
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 114) = -1;
  *(a1 + 116) = -1;
  return a1;
}

void sub_1014D39A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  v19 = v17[6];
  if (v19)
  {
    sub_100004A34(v19);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 4));
  sub_1000C0544(v17);
  _Unwind_Resume(a1);
}

void sub_1014D3A24(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(a1 + 40));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/props/radio_state");
  operator new();
}

void sub_1014D40E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t object, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014D42A0(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  v57 = (a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "handleRadioStateChanged_sync";
    *&buf[12] = 2080;
    *&buf[14] = radioStateAsString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s", buf, 0x16u);
  }

  v5 = *(v3 + 72);
  if (v5 == a2 || v5 - 5 > 0xFFFFFFFD)
  {
    return;
  }

  v7 = (v3 + 40);
  ServiceMap = Registry::getServiceMap(*(v3 + 40));
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_15:
  v56 = v15;
  if (v16)
  {
    v52 = v5;
    v53 = (v3 + 40);
    v54 = v3;
    subscriber::makeSimSlotRange();
    v55 = v17;
    v18 = *buf;
    v19 = *&buf[8];
    if (*buf == *&buf[8])
    {
      goto LABEL_32;
    }

    v20 = *&buf[16];
    do
    {
      if (v20(*v18))
      {
        break;
      }

      ++v18;
    }

    while (v18 != v19);
    v21 = *&buf[8];
    if (v18 == *&buf[8])
    {
LABEL_32:
      v22 = 0xFFFF;
    }

    else
    {
      v22 = 0xFFFF;
      do
      {
        v23 = *v18;
        cf = 0;
        (*(*v16 + 96))(&cf, v16, v23, 1, @"ReportHealthIssueMask", 0, 0);
        v24 = cf;
        *v59 = -1;
        if (cf)
        {
          v25 = CFGetTypeID(cf);
          if (v25 == CFNumberGetTypeID())
          {
            ctu::cf::assign(v59, v24, v26);
          }
        }

        v27 = *v59;
        v28 = *v57;
        if (os_log_type_enabled(*v57, OS_LOG_TYPE_DEFAULT))
        {
          *v59 = 67109376;
          v60 = v23;
          v61 = 1024;
          v62 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Read ReportHealthIssueMask on slot%d: 0x%hx", v59, 0xEu);
        }

        sub_10000A1EC(&cf);
        do
        {
          ++v18;
        }

        while (v18 != v19 && (v20(*v18) & 1) == 0);
        v22 &= v27;
      }

      while (v18 != v21);
    }

    v3 = v54;
    *(v54 + 114) = v22;
    v29 = *(v54 + 32);
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    v7 = v53;
    v5 = v52;
    if (v30)
    {
      *buf = 67109120;
      *&buf[4] = v22;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Update ReportHealthIssue Mask: 0x%hx", buf, 8u);
    }

    if ((v55 & 1) == 0)
    {
LABEL_36:
      sub_100004A34(v56);
    }
  }

  else
  {
    v32 = *v57;
    v30 = os_log_type_enabled(*v57, OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I CarrierSettings is not ready", buf, 2u);
    }

    *(v3 + 114) = -1;
    if ((v17 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (v5 <= 6)
  {
    if (((1 << v5) & 0x47) != 0)
    {
      sub_1014D56F4(v3, 1);
      v31 = *(v3 + 16);
      *buf = v31;
      if (v31)
      {
        dispatch_retain(v31);
      }

      sub_10159FD94(0, buf, v57);
    }

    else
    {
      if (((1 << v5) & 0x18) != 0)
      {
        sub_1014D56F4(v3, 0);
        goto LABEL_50;
      }

      sub_1014D56F4(v3, 2);
      v46 = *(v3 + 16);
      *buf = v46;
      if (v46)
      {
        dispatch_retain(v46);
      }

      sub_10159FD94(1, buf, v57);
    }

    v30 = *buf;
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

LABEL_50:
  v33 = capabilities::ct::supportsVinylFirmwareUpdate(v30);
  if (!v33 || capabilities::euicc::supportsEOS(v33))
  {
    v34 = *v57;
    if (os_log_type_enabled(*v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I EUICC Health check is not supported", buf, 2u);
    }

    sub_1014D54C4(v3, 0);
    return;
  }

  v35 = Registry::getServiceMap(*v7);
  v36 = v35;
  if (v37 < 0)
  {
    v38 = (v37 & 0x7FFFFFFFFFFFFFFFLL);
    v39 = 5381;
    do
    {
      v37 = v39;
      v40 = *v38++;
      v39 = (33 * v39) ^ v40;
    }

    while (v40);
  }

  std::mutex::lock(v35);
  *buf = v37;
  v41 = sub_100009510(&v36[1].__m_.__sig, buf);
  if (v41)
  {
    v43 = v41[3];
    v42 = v41[4];
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v36);
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v42);
      v44 = 0;
      if (!v43)
      {
        goto LABEL_62;
      }

LABEL_71:
      v47 = *(v3 + 8);
      if (!v47 || (v48 = *v3, (v49 = std::__shared_weak_count::lock(v47)) == 0))
      {
        sub_100013CC4();
      }

      v50 = v49;
      p_shared_weak_owners = &v49->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v49->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v49);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 1174405120;
      *&buf[16] = sub_1014D5570;
      v64 = &unk_101F43910;
      v65 = v3;
      v66 = v48;
      v67 = v50;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      (*(*v43 + 144))(v43, 1, buf, 0);
      if (v67)
      {
        std::__shared_weak_count::__release_weak(v67);
      }

      std::__shared_weak_count::__release_weak(v50);
      if ((v44 & 1) == 0)
      {
        goto LABEL_76;
      }

      return;
    }
  }

  else
  {
    v43 = 0;
  }

  std::mutex::unlock(v36);
  v42 = 0;
  v44 = 1;
  if (v43)
  {
    goto LABEL_71;
  }

LABEL_62:
  v45 = *v57;
  if (os_log_type_enabled(*v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I VinylController is not ready", buf, 2u);
  }

  sub_1014D54C4(v3, 0);
  if ((v44 & 1) == 0)
  {
LABEL_76:
    sub_100004A34(v42);
  }
}

void sub_1014D491C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, dispatch_object_t object, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014D49C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014D4AB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  ServiceMap = Registry::getServiceMap(*(v1 + 40));
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
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
  if (!v8)
  {
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_46;
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
    goto LABEL_46;
  }

LABEL_10:
  v36 = 0;
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = v12;
  if (v12)
  {
    v36 = v12;
  }

  else
  {
    v13 = xpc_null_create();
    v36 = v13;
    if (!v13)
    {
      v14 = xpc_null_create();
      v13 = 0;
      goto LABEL_17;
    }
  }

  if (xpc_get_type(v13) != &_xpc_type_dictionary)
  {
    v14 = xpc_null_create();
LABEL_17:
    v36 = v14;
    goto LABEL_18;
  }

  xpc_retain(v13);
LABEL_18:
  xpc_release(v13);
  v15 = *(v1 + 104);
  if (v15 > 2)
  {
    v16 = "???";
  }

  else
  {
    v16 = off_101F43BB0[v15];
  }

  v34 = xpc_string_create(v16);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  *buf = &v36;
  v33 = "BasebandDeadStatus";
  sub_10000F688(buf, &v34, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(v34);
  v34 = 0;
  v17 = *(v1 + 100);
  if (v17 > 2)
  {
    v18 = "???";
  }

  else
  {
    v18 = off_101F43BB0[v17];
  }

  v30 = xpc_string_create(v18);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  *buf = &v36;
  v33 = "eUICCStatus";
  sub_10000F688(buf, &v30, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v30);
  v30 = 0;
  v19 = *(v1 + 96);
  if (v19 > 2)
  {
    v20 = "???";
  }

  else
  {
    v20 = off_101F43BB0[v19];
  }

  v28 = xpc_string_create(v20);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  *buf = &v36;
  v33 = "RffeScanStatus";
  sub_10000F688(buf, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v21 = *(v1 + 108);
  if (v21 > 2)
  {
    v22 = "???";
  }

  else
  {
    v22 = off_101F43BB0[v21];
  }

  v26 = xpc_string_create(v22);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  *buf = &v36;
  v33 = "AnomalyInsightStatus";
  sub_10000F688(buf, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  v24 = xpc_int64_create(*(v1 + 116));
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  *buf = &v36;
  v33 = "ReportedDiagCode";
  sub_10000F688(buf, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  v23 = *(v1 + 32);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Submitting metric for Cellular Health status", buf, 2u);
  }

  *buf = v36;
  if (v36)
  {
    xpc_retain(v36);
  }

  else
  {
    *buf = xpc_null_create();
  }

  (*(*v10 + 16))(v10, "commCenterCellularHealthStatus", buf);
  xpc_release(*buf);
  *buf = 0;
  xpc_release(v36);
LABEL_46:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1014D4ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v19 - 56));
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(a1);
}

const void **sub_1014D4F5C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 32);
  sub_100010024(&theDict, a2);
  v3 = *(v2 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = theDict;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received anomaly event: %@", buf, 0xCu);
  }

  Value = CFDictionaryGetValue(theDict, wis::kWISInsightStateKey);
  v5 = Value;
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    if (v6 == CFStringGetTypeID())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = CFStringCompare(v7, wis::kWISInsightStateAnomaly, 1uLL);
  v9 = wis::kWISInsightTypeKey;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  *(v2 + 108) = v10;
  v11 = *(v2 + 32);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "Pass";
    if (v8 == kCFCompareEqualTo)
    {
      v12 = "Fail";
    }

    *buf = 136315138;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Set anomaly insight health status to %s", buf, 0xCu);
  }

  v13 = CFDictionaryGetValue(theDict, v9);
  v14 = v13;
  if (v13)
  {
    v15 = CFGetTypeID(v13);
    if (v15 != CFStringGetTypeID())
    {
      v14 = 0;
    }
  }

  if (CFStringCompare(v14, wis::kWISInsightTypeService, 1uLL))
  {
    if (CFStringCompare(v14, wis::kWISInsightTypeVoice, 1uLL))
    {
      return sub_10001021C(&theDict);
    }

    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  *(v2 + 112) = v16;
  v17 = *(v2 + 32);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v21) = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Set anomaly insight code to %d", buf, 8u);
  }

  return sub_10001021C(&theDict);
}

void sub_1014D51A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1014D51B4(uint64_t a1)
{
  v2 = capabilities::ct::supportsCellularHealthDiagnostics(a1);
  v3 = *(a1 + 32);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 114);
      v6 = radioStateAsString();
      v7 = *(a1 + 100);
      if (v7 > 2)
      {
        v8 = "???";
      }

      else
      {
        v8 = off_101F43BB0[v7];
      }

      v10 = *(a1 + 96);
      if (v10 > 2)
      {
        v11 = "???";
      }

      else
      {
        v11 = off_101F43BB0[v10];
      }

      v12 = *(a1 + 108);
      if (v12 > 2)
      {
        v13 = "???";
      }

      else
      {
        v13 = off_101F43BB0[v12];
      }

      v14 = *(a1 + 112);
      v20 = 33555970;
      *v21 = v5;
      *&v21[2] = 2080;
      *&v21[4] = v6;
      v22 = 2080;
      v23 = v8;
      v24 = 2080;
      v25 = v11;
      v26 = 2080;
      v27 = v13;
      v28 = 256;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I ReportHealthIssueMask: 0x%hx, RadioState: %s, eUICCStatus: %s, RffeScanStatus:%s, AnomalyStatus:%s, AnomalyCode:%d", &v20, 0x31u);
    }

    v15 = *(a1 + 114);
    if (v15)
    {
      if ((v15 & 1) != 0 && *(a1 + 104) == 2)
      {
        v16 = 0;
        v17 = 1;
LABEL_30:
        v18 = *(a1 + 32);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = cellularDiagnosticsStateAsString();
          v20 = 136315138;
          *v21 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Returning Diagnostics Status as [%s]", &v20, 0xCu);
        }

        *(a1 + 116) = v17;
        return v16 | v17;
      }

      if ((v15 & 2) != 0 && *(a1 + 100) == 2)
      {
        v16 = 0;
        v17 = 2;
        goto LABEL_30;
      }

      if ((v15 & 4) != 0 && *(a1 + 96) == 2)
      {
        v16 = 0;
        v17 = 3;
        goto LABEL_30;
      }

      if ((v15 & 8) != 0 && *(a1 + 108) == 2)
      {
        v16 = *(a1 + 112) << 32;
        v17 = 4;
        goto LABEL_30;
      }
    }

    v17 = 0;
    v16 = 0;
    goto LABEL_30;
  }

  if (v4)
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Cellular Health Diagnostics is not supported", &v20, 2u);
  }

  result = 4294967294;
  *(a1 + 116) = -2;
  return result;
}

void sub_1014D5418(uint64_t a1, int a2)
{
  *(a1 + 96) = a2;
  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = off_101F43BB0[a2];
    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Set RFFEScan health status to %s", &v5, 0xCu);
  }
}

void sub_1014D54C4(uint64_t a1, int a2)
{
  *(a1 + 100) = a2;
  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = off_101F43BB0[a2];
    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Set eUICC health status to %s", &v5, 0xCu);
  }
}

void sub_1014D5570(void *a1, const void **a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
      {
        v8[0] = 0;
        v8[1] = 0;
        sub_1001126E0(v8, a2);
        v7 = *(v5 + 8);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1014D56C8(uint64_t result, uint64_t a2)
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

void sub_1014D56E4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014D56F4(uint64_t a1, int a2)
{
  *(a1 + 104) = a2;
  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = off_101F43BB0[a2];
    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Set Baseband FW health status to %s", &v5, 0xCu);
  }
}

void sub_1014D586C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_1014D5940);
  __cxa_rethrow();
}

void sub_1014D58AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014D5900(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D5940(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100083940((result + 88));
    v2 = v1[8];
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = v1[6];
    if (v3)
    {
      sub_100004A34(v3);
    }

    ctu::OsLogLogger::~OsLogLogger((v1 + 4));
    sub_1000C0544(v1);

    operator delete();
  }

  return result;
}

__n128 sub_1014D5A34(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F439B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1014D5A6C(void *a1, xpc *this, uint64_t a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v5);
}

uint64_t sub_1014D5AE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014D5B30(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

void *sub_1014D5B58(void *a1)
{
  *a1 = off_101F43A50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1014D5BA4(void *a1)
{
  *a1 = off_101F43A50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1014D5C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_1014D5CC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1014D5D64(void *a1)
{
  *a1 = off_101F43AA0;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1014D5DB0(void *a1)
{
  *a1 = off_101F43AA0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void sub_1014D5E88(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        sub_100135ED0(a1 + 6, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void *sub_1014D5F14(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void sub_1014D5F60(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1014D5FB4(void *a1, const void **a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      if (a1[4])
      {
        v6 = a1[7];
        if (v6)
        {
          _Block_copy(v6);
        }

        sub_100010024(&v7, a2);
        operator new();
      }

      sub_100004A34(v5);
    }
  }
}

void *sub_1014D60C0(void *a1, void *a2)
{
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[6];
  a1[6] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void sub_1014D6120(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

const void ***sub_1014D6180(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10001021C(v1 + 1);
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete();
  }

  return result;
}

const void ***sub_1014D61E0(const void **a1)
{
  v3 = a1;
  v1 = *a1;
  sub_100010024(&v4, a1 + 1);
  v1[2](v1, &v4);
  sub_10001021C(&v4);
  return sub_1014D6180(&v3);
}

void sub_1014D623C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void **a9, const void *a10)
{
  sub_10001021C(&a10);
  sub_1014D6180(&a9);
  _Unwind_Resume(a1);
}

void sub_1014D6258(uint64_t **a1)
{
  v1 = **a1;
  if (((*a1)[1] & 0xFE) == 2)
  {
    v6 = 0;
    v7 = 0;
    sub_10005B8C8(&v6);
    if (v6)
    {
      v2 = *(v1 + 8);
      if (v2)
      {
        v3 = std::__shared_weak_count::lock(v2);
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v3);
          v10 = 0;
          operator new();
        }
      }

      sub_100013CC4();
    }

    v5 = *(v1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I RadioModule is not ready", buf, 2u);
    }

    sub_1014D5418(v1, 0);
    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v4 = *(v1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Operating mode is %s, skip RFFEScanData check", buf, 0xCu);
    }
  }

  operator delete();
}

void sub_1014D6458(uint64_t a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  sub_1006648E4(va);
  if (a4)
  {
    sub_100004A34(a4);
  }

  operator delete();
}

void *sub_1014D64B8(void *a1)
{
  *a1 = off_101F43B40;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1014D6504(void *a1)
{
  *a1 = off_101F43B40;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1014D65E4(uint64_t result, uint64_t a2)
{
  *a2 = off_101F43B40;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014D6624(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014D6634(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1014D6674(void *a1, uint64_t a2, __int128 *a3)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = a1[1];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      if (a1[2])
      {
        sub_10129B234(&v9, a3);
        v8 = *(v6 + 8);
        if (v8)
        {
          if (std::__shared_weak_count::lock(v8))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1014D6818(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014D6864(uint64_t **a1)
{
  v15 = a1;
  v1 = *a1;
  v2 = **a1;
  if (*(*a1 + 8) == 1)
  {
    v3 = *(v2 + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v1 + 36);
      v5 = *(v1 + 60);
      v6 = *(v1 + 18);
      *buf = 67109632;
      v17 = v4;
      v18 = 1024;
      v19 = v5;
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I RFFEScanData: init_pass=%d, scan_pass=%d, num_of_missing_devices=%d", buf, 0x14u);
    }

    if (*(v1 + 60))
    {
LABEL_5:
      v7 = 1;
      goto LABEL_13;
    }

    v8 = v1[11];
    v9 = v1[10];
    if (v8 != v9)
    {
      do
      {
        if (*v9 - 17 >= 6)
        {
          goto LABEL_12;
        }

        ++v9;
      }

      while (v9 != v8);
      v10 = *(v2 + 32);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I RFFEScanData: ignore non-critical error", buf, 2u);
      }

      goto LABEL_5;
    }

LABEL_12:
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

LABEL_13:
  sub_1014D5418(v2, v7);
  v11 = v1[19];
  if (v11)
  {
    v1[20] = v11;
    operator delete(v11);
  }

  v12 = v1[16];
  if (v12)
  {
    v1[17] = v12;
    operator delete(v12);
  }

  v13 = v1[13];
  if (v13)
  {
    v1[14] = v13;
    operator delete(v13);
  }

  v14 = v1[10];
  if (v14)
  {
    v1[11] = v14;
    operator delete(v14);
  }

  operator delete();
}

uint64_t *sub_1014D6A30(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 == 2)
  {
    v4 = *(v2 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = asString();
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to get eUICC info: %s", buf, 0xCu);
    }

LABEL_12:
    sub_1014D54C4(v2, 0);
    goto LABEL_18;
  }

  *buf = 0;
  if (v3 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
  }

  sub_100010024(buf, (v1 + 16));
  if (!*buf)
  {
    v7 = *(v2 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(object[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I No eUICC FwUpdateData returned", object, 2u);
    }

    sub_10001021C(buf);
    goto LABEL_12;
  }

  ctu::cf_to_xpc(object, *buf, v5);
  v6 = object[0];
  if (object[0] && xpc_get_type(object[0]) == &_xpc_type_dictionary)
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
  }

  xpc_release(object[0]);
  if (xpc_dictionary_get_value(v6, kVinylFwUpdateCsn))
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  sub_1014D54C4(v2, v8);
  xpc_release(v6);
  sub_10001021C(buf);
LABEL_18:
  sub_1014D6C90(&v12);
  return sub_1000049E0(&v11);
}

void sub_1014D6C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  __cxa_free_exception(v13);
  sub_1014D6C90(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014D6C90(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 8) == 1)
    {
      sub_10001021C((v1 + 16));
    }

    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

void sub_1014D6CF0(uint64_t a1)
{
  *a1 = off_101F43BD8;
  sub_100009970(a1 + 80, *(a1 + 88));
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  PersonalWallet::~PersonalWallet(a1);
}

void sub_1014D6D78(uint64_t a1)
{
  sub_1014D6CF0(a1);

  operator delete();
}

void sub_1014D7220(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  sub_1000C0544(v2);
  ctu::OsLogContext::~OsLogContext(va);
  PersonalWallet::~PersonalWallet(v1);
  operator delete();
}

const void **sub_1014D728C(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString *a4, const __CFString *a5, char **a6, int a7)
{
  v18 = 0;
  sub_10005C624(&v18, a3);
  v19 = @"PersonalWallet";
  v20 = v18;
  __dst = 0;
  v17 = 0;
  __p = 0;
  sub_10005B328(&__p, &v19, &v21, 2uLL);
  v19 = 0;
  v20 = 0;
  sub_10005B574(a5, a7, &v19);
  if ((v19 & 1) == 0)
  {
    if (v20)
    {
      v14 = v20;
      sub_100ED3374(&__p, &v14);
    }

    a5 = 0;
  }

  if (a6)
  {
    sub_10005B678(&__p, __dst, *a6, a6[1], (a6[1] - *a6) >> 3);
  }

  sub_100060EBC(*(a2 + 64), a4, a5, &__p, a7, a1);
  sub_100005978(&v20);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return sub_100005978(&v18);
}

void sub_1014D73E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13)
{
  sub_100005978((v13 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a13);
  _Unwind_Resume(a1);
}

const void **sub_1014D742C(uint64_t a1, uint64_t a2, const __CFString *a3, const void *a4, const __CFString *a5, unsigned int a6)
{
  result = isReal();
  if (result)
  {
    v17 = 0;
    sub_10005C624(&v17, a2);
    v18 = @"PersonalWallet";
    v19 = v17;
    v15 = 0;
    v16 = 0;
    __p = 0;
    sub_10005B328(&__p, &v18, &v20, 2uLL);
    v18 = 0;
    v19 = 0;
    sub_10005B574(a5, a6, &v18);
    if ((v18 & 1) == 0)
    {
      if (v19)
      {
        v13 = v19;
        sub_100ED3374(&__p, &v13);
      }

      a5 = 0;
    }

    sub_10071B99C(*(a1 + 64), a3, a4, a5, &__p, a6, 0, @"PWallet");
    sub_100005978(&v19);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    return sub_100005978(&v17);
  }

  return result;
}

void sub_1014D7574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13)
{
  sub_100005978((v13 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a13);
  _Unwind_Resume(a1);
}

const void **sub_1014D75BC(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, char **a5, unsigned int a6)
{
  v16 = 0;
  sub_10005C624(&v16, a2);
  v17 = @"PersonalWallet";
  v18 = v16;
  __dst = 0;
  v15 = 0;
  __p = 0;
  sub_10005B328(&__p, &v17, &v19, 2uLL);
  v17 = 0;
  v18 = 0;
  sub_10005B574(a4, a6, &v17);
  if ((v17 & 1) == 0)
  {
    if (v18)
    {
      v12 = v18;
      sub_100ED3374(&__p, &v12);
    }

    a4 = 0;
  }

  if (a5)
  {
    sub_10005B678(&__p, __dst, *a5, a5[1], (a5[1] - *a5) >> 3);
  }

  sub_10071BE7C(*(a1 + 64), a3, a4, &__p, a6);
  sub_100005978(&v18);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return sub_100005978(&v16);
}

void sub_1014D76FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13)
{
  sub_100005978((v13 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a13);
  _Unwind_Resume(a1);
}

void sub_1014D7748(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014D7848(uint64_t a1, uint64_t a2)
{
  v4[0] = a2;
  v4[1] = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1014DBA00;
  block[3] = &unk_101F43E88;
  block[4] = a1 + 8;
  block[5] = v4;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void sub_1014D78D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v7 = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1014DBB04;
  block[3] = &unk_101F43EA8;
  block[4] = v3;
  block[5] = __p;
  v4 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v4, block);
  }

  else
  {
    dispatch_sync(v4, block);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1014D799C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  sub_10005C624(&v4, a2);
  os_unfair_lock_lock((*(a1 + 64) + 32));
  os_unfair_lock_lock((*(a1 + 64) + 36));
  v5 = @"PersonalWallet";
  memset(__p, 0, sizeof(__p));
  sub_10005B328(__p, &v5, &v6, 1uLL);
  v5 = 0;
  v6 = 0;
  sub_10071AC44();
}

void sub_1014D7B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15)
{
  sub_100005978(&a14);
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v16 + 9);
  os_unfair_lock_unlock(v15 + 8);
  sub_100005978(&a13);
  _Unwind_Resume(a1);
}

void sub_1014D7B84(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (!sub_100BB3670(a1 + 48, 0, a2, &v7))
  {
    v5 = v7;
    v6 = v8;
    while (v5 != v6)
    {
      if (!a3 || !CFStringHasPrefix(*v5, a3))
      {
        sub_100BB40F4(a1 + 48, *v5);
      }

      ++v5;
    }
  }

  v10 = &v7;
  sub_100222314(&v10);
}

void sub_1014D7C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_100222314(&a12);
  _Unwind_Resume(a1);
}

void sub_1014D7C3C(uint64_t a1, const __CFString *a2)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (!sub_100BB3670(a1 + 48, 0, a2, &v25))
  {
    Length = CFStringGetLength(a2);
    memset(&v30, 0, sizeof(v30));
    ctu::cf::assign();
    v24 = v30;
    v5 = v25;
    v6 = v26;
    if (v25 != v26)
    {
      while (1)
      {
        v22 = 0;
        v23 = 0;
        v21 = 0;
        if (!sub_100BB2634(a1 + 48, *v5, &v23, &v22, &v21))
        {
          break;
        }

LABEL_33:
        sub_100BB40F4(a1 + 48, *v5);
        sub_100005978(&v21);
        sub_10002D760(&v22);
        sub_10002D760(&v23);
        if (++v5 == v6)
        {
          goto LABEL_38;
        }
      }

      memset(&__str, 0, sizeof(__str));
      memset(&v30, 0, sizeof(v30));
      ctu::cf::assign();
      __str = v30;
      size = v30.__r_.__value_.__l.__size_;
      v8 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      if (size <= Length)
      {
LABEL_31:
        if (v8 < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_33;
      }

      v9 = std::string::basic_string(&v30, &__str, Length, 0xFFFFFFFFFFFFFFFFLL, &__p);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v24;
      }

      else
      {
        v10 = v24.__r_.__value_.__r.__words[0];
      }

      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v11 = v24.__r_.__value_.__l.__size_;
      }

      v12 = std::string::insert(v9, 0, v10, v11);
      v13 = v12->__r_.__value_.__r.__words[0];
      v14 = v12->__r_.__value_.__l.__size_;
      v19[0] = v12->__r_.__value_.__r.__words[2];
      *(v19 + 3) = *(&v12->__r_.__value_.__r.__words[2] + 3);
      v15 = SHIBYTE(v12->__r_.__value_.__r.__words[2]);
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else if ((v15 & 0x80000000) == 0)
      {
LABEL_15:
        __dst.__r_.__value_.__r.__words[0] = v13;
        __dst.__r_.__value_.__l.__size_ = v14;
        LODWORD(__dst.__r_.__value_.__r.__words[2]) = v19[0];
        *(&__dst.__r_.__value_.__r.__words[2] + 3) = *(v19 + 3);
        *(&__dst.__r_.__value_.__s + 23) = v15;
        goto LABEL_18;
      }

      sub_100005F2C(&__dst, v13, v14);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_19:
        v28 = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&v30, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v30 = __p;
        }

        v31 = 0;
        if (ctu::cf::convert_copy())
        {
          v16 = v28;
          v28 = v31;
          v32 = v16;
          sub_100005978(&v32);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        v18 = v28;
        v28 = 0;
        sub_100005978(&v28);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_100BB3A84(a1 + 48, v18, &v23, &v22, v21);
        sub_100005978(&v18);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
          if ((v15 & 0x80000000) == 0)
          {
            goto LABEL_30;
          }
        }

        else if ((v15 & 0x80000000) == 0)
        {
LABEL_30:
          v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          goto LABEL_31;
        }

        operator delete(v13);
        goto LABEL_30;
      }

LABEL_18:
      __p = __dst;
      goto LABEL_19;
    }

LABEL_38:
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  v30.__r_.__value_.__r.__words[0] = &v25;
  sub_100222314(&v30);
}

void sub_1014D7F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, const void *a25, const void *a26, char *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_100005978(&a24);
  sub_10002D760(&a25);
  sub_10002D760(&a26);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  a27 = &a34;
  sub_100222314(&a27);
  _Unwind_Resume(a1);
}

void sub_1014D8090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 23);
    v8 = (v7 & 0x80u) != 0;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    if (v8)
    {
      v9 = *a2;
    }

    else
    {
      v9 = a2;
    }

    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = "<invalid>";
    }

    v11 = *(a3 + 23);
    v12 = (v11 & 0x80u) != 0;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a3 + 8);
    }

    if (v12)
    {
      v13 = *a3;
    }

    else
    {
      v13 = a3;
    }

    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = "<invalid>";
    }

    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I renaming wallet %s to %s", buf, 0x16u);
  }

  if (isReal() && isReal())
  {
    v25[0] = 0;
    sub_10005C624(v25, a2);
    v24 = 0;
    sub_10005C624(&v24, a3);
    os_unfair_lock_lock((*(a1 + 64) + 32));
    os_unfair_lock_lock((*(a1 + 64) + 36));
    v26 = @"PersonalWallet";
    memset(buf, 0, sizeof(buf));
    sub_10005B328(buf, &v26, &v27, 1uLL);
    v25[3] = 0;
    v25[4] = 0;
    sub_10071AC44();
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a2 + 23);
    v17 = (v16 & 0x80u) != 0;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a2 + 8);
    }

    if (v17)
    {
      v18 = *a2;
    }

    else
    {
      v18 = a2;
    }

    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = "<invalid>";
    }

    v20 = *(a3 + 23);
    v21 = (v20 & 0x80u) != 0;
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a3 + 8);
    }

    if (v21)
    {
      v22 = *a3;
    }

    else
    {
      v22 = a3;
    }

    if (v20)
    {
      v23 = v22;
    }

    else
    {
      v23 = "<invalid>";
    }

    *buf = 136315394;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = v23;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E cannot renameWallet since FROM '%s' or TO '%s' is invalid", buf, 0x16u);
  }
}

void sub_1014D8454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, const void *a12, const void *a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  sub_100005978(&a10);
  sub_100005978(&a13);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  os_unfair_lock_unlock(v23 + 9);
  os_unfair_lock_unlock(v22 + 8);
  sub_100005978(&a11);
  sub_100005978(&a12);
  _Unwind_Resume(a1);
}

void sub_1014D8528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 23);
    v8 = (v7 & 0x80u) != 0;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    if (v8)
    {
      v9 = *a2;
    }

    else
    {
      v9 = a2;
    }

    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = "<invalid>";
    }

    v11 = *(a3 + 23);
    v12 = (v11 & 0x80u) != 0;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a3 + 8);
    }

    if (v12)
    {
      v13 = *a3;
    }

    else
    {
      v13 = a3;
    }

    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = "<invalid>";
    }

    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I transferring wallet %s to %s", buf, 0x16u);
  }

  if (isReal() && isReal())
  {
    v27 = 0;
    sub_10005C624(&v27, a2);
    v26 = 0;
    sub_10005C624(&v26, a3);
    os_unfair_lock_lock((*(a1 + 64) + 32));
    os_unfair_lock_lock((*(a1 + 64) + 36));
    __p = @"PersonalWallet";
    v31 = v27;
    memset(buf, 0, sizeof(buf));
    sub_10005B328(buf, &__p, &v32, 2uLL);
    v28[0] = @"PersonalWallet";
    v28[1] = v26;
    v31 = 0;
    v32 = 0;
    __p = 0;
    sub_10005B328(&__p, v28, &v29, 2uLL);
    v24 = 0;
    v25 = 0;
    sub_10071AC44();
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a2 + 23);
    v17 = (v16 & 0x80u) != 0;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a2 + 8);
    }

    if (v17)
    {
      v18 = *a2;
    }

    else
    {
      v18 = a2;
    }

    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = "<invalid>";
    }

    v20 = *(a3 + 23);
    v21 = (v20 & 0x80u) != 0;
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a3 + 8);
    }

    if (v21)
    {
      v22 = *a3;
    }

    else
    {
      v22 = a3;
    }

    if (v20)
    {
      v23 = v22;
    }

    else
    {
      v23 = "<invalid>";
    }

    *buf = 136315394;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = v23;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E cannot transferWallet since FROM '%s' or TO '%s' is invalid", buf, 0x16u);
  }
}

void sub_1014D88EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  sub_100005978(&a11);
  sub_100005978(&a12);
  _Unwind_Resume(a1);
}

void sub_1014D89B4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v3 >= v2)
  {
    v5 = (v3 - *a1) >> 3;
    if ((v5 + 1) >> 61)
    {
      sub_1000CE3D4();
    }

    v6 = v2 - *a1;
    v7 = v6 >> 2;
    if (v6 >> 2 <= (v5 + 1))
    {
      v7 = v5 + 1;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      sub_10005B2E0(a1, v8);
    }

    *(8 * v5) = @"s";
    v4 = 8 * v5 + 8;
    v9 = *(a1 + 8) - *a1;
    v10 = (8 * v5 - v9);
    memcpy(v10, *a1, v9);
    v11 = *a1;
    *a1 = v10;
    *(a1 + 8) = v4;
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v3 = @"s";
    v4 = (v3 + 1);
  }

  *(a1 + 8) = v4;
}

void sub_1014D8A8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 23);
    v6 = (v5 & 0x80u) != 0;
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 8);
    }

    if (v6)
    {
      v7 = *a2;
    }

    else
    {
      v7 = a2;
    }

    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = "<invalid>";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I delete non-transferrable wallet part for %s", &buf, 0xCu);
  }

  if (isReal())
  {
    v16 = 0;
    sub_10005C624(&v16, a2);
    os_unfair_lock_lock((*(a1 + 64) + 32));
    os_unfair_lock_lock((*(a1 + 64) + 36));
    v21 = @"PersonalWallet";
    v24 = 0;
    buf = 0uLL;
    sub_10005B328(&buf, &v21, v22, 1uLL);
    __p = @"PersonalWallet";
    v19 = v16;
    v22[0] = 0;
    v22[1] = 0;
    v21 = 0;
    sub_10005B328(&v21, &__p, &v20, 2uLL);
    v17[0] = @"PersonalWallet";
    v17[1] = v16;
    v17[2] = @"s";
    __p = 0;
    v19 = 0;
    v20 = 0;
    sub_10005B328(&__p, v17, &__p, 3uLL);
    v14 = 0;
    v15 = 0;
    sub_10071AC44();
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a2 + 23);
    v11 = (v10 & 0x80u) != 0;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 8);
    }

    if (v11)
    {
      v12 = *a2;
    }

    else
    {
      v12 = a2;
    }

    if (v10)
    {
      v13 = v12;
    }

    else
    {
      v13 = "<invalid>";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E deleteNonTransferrableWalletPart, persona '%s' is invalid - ignore", &buf, 0xCu);
  }
}

void sub_1014D8DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  sub_100005978(&a9);
  sub_100005978(&a12);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  os_unfair_lock_unlock(v23 + 9);
  os_unfair_lock_unlock(v22 + 8);
  sub_100005978(&a11);
  _Unwind_Resume(a1);
}

void sub_1014D8EA4(uint64_t *a1)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  (*(*a1 + 80))(&v4);
  v2 = v4;
  v3 = v5;
  while (v2 != v3)
  {
    (*(*a1 + 112))(a1, v2);
    v2 += 24;
  }

  sub_10071C340(a1[8], @"unique-sim-label-store", 0, 0);
  v7 = &v4;
  sub_10005AAF8(&v7);
}

void sub_1014D8F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_10005AAF8(&a12);
  _Unwind_Resume(a1);
}

const void **sub_1014D8F90@<X0>(uint64_t a1@<X0>, signed int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  theDict = 0;
  sub_10071C330(*(a1 + 64), @"PersonalWallet", 0, a2, &v20);
  sub_100010180(&theDict, &v20);
  sub_10000A1EC(&v20);
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    keys = 0;
    v17 = 0;
    v18 = 0;
    sub_10007D780(&keys, Count);
    CFDictionaryGetKeysAndValues(theDict, keys, 0);
    v5 = keys;
    v6 = v17;
    if (keys != v17)
    {
      while (1)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        ctu::cf::assign();
        v7 = v20;
        v13 = v22;
        HIBYTE(v13) = BYTE3(v22);
        v8 = SHIBYTE(v22);
        if (SHIBYTE(v22) < 0)
        {
          sub_100005F2C(__p, v20, v21);
        }

        else
        {
          __p[0] = v20;
          __p[1] = v21;
          LODWORD(v15) = v13;
          *(&v15 + 3) = *(&v22 + 3);
          HIBYTE(v15) = HIBYTE(v22);
        }

        v9 = a3[1];
        if (v9 >= a3[2])
        {
          v11 = sub_10005A410(a3, __p);
        }

        else
        {
          if (SHIBYTE(v15) < 0)
          {
            sub_100005F2C(a3[1], __p[0], __p[1]);
          }

          else
          {
            v10 = *__p;
            *(v9 + 16) = v15;
            *v9 = v10;
          }

          v11 = v9 + 24;
        }

        a3[1] = v11;
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
          if (v8 < 0)
          {
LABEL_17:
            operator delete(v7);
          }
        }

        else if (v8 < 0)
        {
          goto LABEL_17;
        }

        if (++v5 == v6)
        {
          v5 = keys;
          break;
        }
      }
    }

    if (v5)
    {
      v17 = v5;
      operator delete(v5);
    }
  }

  return sub_10001021C(&theDict);
}

void sub_1014D9144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, uint64_t a19, const void *a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  sub_10001021C(&a20);
  sub_10005AAF8(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_1014D91E4(uint64_t a1, uint64_t a2, const __CFString *a3, const void *a4, const __CFString *a5, char **a6, unsigned int a7, const void *a8)
{
  if (!isReal())
  {
    return 1;
  }

  v22 = 0;
  sub_10005C624(&v22, a2);
  v23 = @"PersonalWallet";
  v24 = v22;
  __dst = 0;
  v21 = 0;
  __p = 0;
  sub_10005B328(&__p, &v23, &v25, 2uLL);
  v23 = 0;
  v24 = 0;
  sub_10005B574(a5, a7, &v23);
  if ((v23 & 1) == 0)
  {
    if (v24)
    {
      v18 = v24;
      sub_100ED3374(&__p, &v18);
    }

    a5 = 0;
  }

  if (a6)
  {
    sub_10005B678(&__p, __dst, *a6, a6[1], (a6[1] - *a6) >> 3);
  }

  v16 = sub_10071B8E0(*(a1 + 64), a3, a4, a5, &__p, a7, a8, @"PWallet");
  sub_100005978(&v24);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  sub_100005978(&v22);
  return v16;
}

void sub_1014D9368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13)
{
  sub_100005978((v13 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a13);
  _Unwind_Resume(a1);
}

const void **sub_1014D93B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const __CFString *a3@<X2>, const __CFString *a4@<X3>, char **a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v18 = 0;
  sub_10005C624(&v18, a2);
  v19 = @"PersonalWallet";
  v20 = v18;
  __dst = 0;
  v17 = 0;
  __p = 0;
  sub_10005B328(&__p, &v19, &v21, 2uLL);
  v19 = 0;
  v20 = 0;
  sub_10005B574(a4, a6, &v19);
  if ((v19 & 1) == 0)
  {
    if (v20)
    {
      v14 = v20;
      sub_100ED3374(&__p, &v14);
    }

    a4 = 0;
  }

  if (a5)
  {
    sub_10005B678(&__p, __dst, *a5, a5[1], (a5[1] - *a5) >> 3);
  }

  sub_10005B920(*(a1 + 64), a3, a4, &__p, a6, a7);
  sub_100005978(&v20);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return sub_100005978(&v18);
}

void sub_1014D9504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13)
{
  sub_100005978((v13 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1014D9550(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, char **a5, unsigned int a6)
{
  v17 = 0;
  sub_10005C624(&v17, a2);
  v18 = @"PersonalWallet";
  v19 = v17;
  __dst = 0;
  v16 = 0;
  __p = 0;
  sub_10005B328(&__p, &v18, &v20, 2uLL);
  v18 = 0;
  v19 = 0;
  sub_10005B574(a4, a6, &v18);
  if ((v18 & 1) == 0)
  {
    if (v19)
    {
      v13 = v19;
      sub_100ED3374(&__p, &v13);
    }

    a4 = 0;
  }

  if (a5)
  {
    sub_10005B678(&__p, __dst, *a5, a5[1], (a5[1] - *a5) >> 3);
  }

  v11 = sub_10071BDE8(*(a1 + 64), a3, a4, &__p, a6);
  sub_100005978(&v19);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  sub_100005978(&v17);
  return v11;
}

void sub_1014D9698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13)
{
  sub_100005978((v13 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1014D96E4(uint64_t a1, uint64_t a2, const __CFString *a3, const void *a4, const __CFString *a5, char **a6, unsigned int a7, const void *a8)
{
  v21 = 0;
  sub_10005C624(&v21, a2);
  v22 = @"PersonalWallet";
  v23[0] = v21;
  v23[1] = @"s";
  __dst = 0;
  v20 = 0;
  __p = 0;
  sub_10005B328(&__p, &v22, &v24, 3uLL);
  v22 = 0;
  v23[0] = 0;
  sub_10005B574(a5, a7, &v22);
  if ((v22 & 1) == 0)
  {
    if (v23[0])
    {
      v17 = v23[0];
      sub_100ED3374(&__p, &v17);
    }

    a5 = 0;
  }

  if (a6)
  {
    sub_10005B678(&__p, __dst, *a6, a6[1], (a6[1] - *a6) >> 3);
  }

  v15 = sub_10071B8E0(*(a1 + 64), a3, a4, a5, &__p, a7, a8, @"PWallet");
  sub_100005978(v23);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  sub_100005978(&v21);
  return v15;
}

void sub_1014D9858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  sub_100005978((v14 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a14);
  _Unwind_Resume(a1);
}

const void **sub_1014D98A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const __CFString *a3@<X2>, const __CFString *a4@<X3>, char **a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v18 = 0;
  sub_10005C624(&v18, a2);
  v19 = @"PersonalWallet";
  v20[0] = v18;
  v20[1] = @"s";
  __dst = 0;
  v17 = 0;
  __p = 0;
  sub_10005B328(&__p, &v19, &v21, 3uLL);
  v19 = 0;
  v20[0] = 0;
  sub_10005B574(a4, a6, &v19);
  if ((v19 & 1) == 0)
  {
    if (v20[0])
    {
      v14 = v20[0];
      sub_100ED3374(&__p, &v14);
    }

    a4 = 0;
  }

  if (a5)
  {
    sub_10005B678(&__p, __dst, *a5, a5[1], (a5[1] - *a5) >> 3);
  }

  sub_10005B920(*(a1 + 64), a3, a4, &__p, a6, a7);
  sub_100005978(v20);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return sub_100005978(&v18);
}

void sub_1014D9A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  sub_100005978((v14 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a14);
  _Unwind_Resume(a1);
}

const void **sub_1014D9A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const __CFString *a3@<X2>, const __CFString *a4@<X3>, char **a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v18 = 0;
  sub_10005C624(&v18, a2);
  v19 = @"PersonalWallet";
  v20[0] = v18;
  v20[1] = @"s";
  __dst = 0;
  v17 = 0;
  __p = 0;
  sub_10005B328(&__p, &v19, &v21, 3uLL);
  v19 = 0;
  v20[0] = 0;
  sub_10005B574(a4, a6, &v19);
  if ((v19 & 1) == 0)
  {
    if (v20[0])
    {
      v14 = v20[0];
      sub_100ED3374(&__p, &v14);
    }

    a4 = 0;
  }

  if (a5)
  {
    sub_10005B678(&__p, __dst, *a5, a5[1], (a5[1] - *a5) >> 3);
  }

  sub_10005B878(*(a1 + 64), a3, a4, &__p, a6, a7);
  sub_100005978(v20);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return sub_100005978(&v18);
}

void sub_1014D9BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  sub_100005978((v14 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1014D9BF4(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, char **a5, unsigned int a6)
{
  v17 = 0;
  sub_10005C624(&v17, a2);
  v18 = @"PersonalWallet";
  v19[0] = v17;
  v19[1] = @"s";
  __dst = 0;
  v16 = 0;
  __p = 0;
  sub_10005B328(&__p, &v18, &v20, 3uLL);
  v18 = 0;
  v19[0] = 0;
  sub_10005B574(a4, a6, &v18);
  if ((v18 & 1) == 0)
  {
    if (v19[0])
    {
      v13 = v19[0];
      sub_100ED3374(&__p, &v13);
    }

    a4 = 0;
  }

  if (a5)
  {
    sub_10005B678(&__p, __dst, *a5, a5[1], (a5[1] - *a5) >> 3);
  }

  v11 = sub_10071BDE8(*(a1 + 64), a3, a4, &__p, a6);
  sub_100005978(v19);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  sub_100005978(&v17);
  return v11;
}

void sub_1014D9D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  sub_100005978((v14 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a14);
  _Unwind_Resume(a1);
}

const void **sub_1014D9D94(uint64_t a1, uint64_t a2, const __CFString *a3, const void *a4, char **a5, const void *a6)
{
  v16 = 0;
  sub_10005C624(&v16, a2);
  v17 = @"PersonalWallet";
  v18[0] = v16;
  v18[1] = @"s";
  __dst = 0;
  v15 = 0;
  __p = 0;
  sub_10005B328(&__p, &v17, &v19, 3uLL);
  v17 = 0;
  v18[0] = 0;
  sub_10005B574(0, 1, &v17);
  if ((v17 & 1) == 0 && v18[0])
  {
    v12 = v18[0];
    sub_100ED3374(&__p, &v12);
  }

  if (a5)
  {
    sub_10005B678(&__p, __dst, *a5, a5[1], (a5[1] - *a5) >> 3);
  }

  sub_10071B99C(*(a1 + 64), a3, a4, 0, &__p, 1u, a6, @"PWallet");
  sub_100005978(v18);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return sub_100005978(&v16);
}

void sub_1014D9EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  sub_100005978((v14 + 8));
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a14);
  _Unwind_Resume(a1);
}

const void **sub_1014D9F38(uint64_t a1, uint64_t a2)
{
  sub_100060DE8(&v6, (a2 + 8));
  v3 = *(a1 + 8);
  if (v3 != &v6)
  {
    v4 = *v3;
    *v3 = 0;
    v7 = v4;
    *v3 = v6;
    v6 = 0;
    sub_100005978(&v7);
  }

  return sub_100005978(&v6);
}

void sub_1014D9FA8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014D9FFC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014DA03C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1014DA068(ServiceManager::Service *this)
{
  *this = off_101F43E10;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1014DA0C4(ServiceManager::Service *this)
{
  *this = off_101F43E10;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1014DA144@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1014DA188(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1014D7748(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1014D7748(v4, 0);
}

void sub_1014DA224(uint64_t a1, xpc_object_t *a2, NSObject **a3)
{
  v4 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v4 = xpc_null_create();
  }

  v5 = *a3;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  xpc_release(v4);
}

void sub_1014DA29C(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014DA3B0(ServiceManager::Service *this)
{
  *this = off_101F43E10;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1014DA40C(ServiceManager::Service *this)
{
  *this = off_101F43E10;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1014DA490(uint64_t *a1)
{
  v1 = *a1;
  v24 = a1;
  v25 = v1;
  v2 = *v1;
  sub_10071C330(*(*v1 + 64), @"pw_ver", 0, 0, cf);
  v3 = cf[0];
  LODWORD(__p) = 1;
  if (cf[0] && (v4 = CFGetTypeID(cf[0]), v4 == CFNumberGetTypeID()))
  {
    ctu::cf::assign(&__p, v3, v5);
    v6 = __p;
    sub_10000A1EC(cf);
    if (v6 > 3)
    {
      goto LABEL_92;
    }

    v7 = v6;
  }

  else
  {
    sub_10000A1EC(cf);
    v6 = 1;
    v7 = 1;
  }

  v8 = v2[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(cf[0]) = 134218240;
    *(cf + 4) = v6;
    WORD2(cf[1]) = 2048;
    *(&cf[1] + 6) = 4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I migrating wallets from ver %zu to %zu", cf, 0x16u);
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  (*(*v2 + 80))(&v26, v2, 0);
  v21 = v2[8];
  os_unfair_lock_lock(v21 + 8);
  v22 = v2[8];
  os_unfair_lock_lock(v22 + 9);
  if (v7 <= 1)
  {
    v9 = v26;
    for (i = v27; v9 != i; v9 += 24)
    {
      __p = 0;
      v30 = 0;
      v31 = 0;
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"GSMASettingsSwitchState", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"GSMASettingsSwitchState", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"GSMASettingsSwitchState", 0, &__p, 1u);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"MaxDataRate";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"Enable5G", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"Enable5G", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"Enable5G", 0, &__p, 1u);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"MaxDataRate";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"EnableLTE", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"EnableLTE", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"EnableLTE", 0, &__p, 1u);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"MaxDataRate";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"Enable3G", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"Enable3G", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"Enable3G", 0, &__p, 1u);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"MaxDataRate";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"Enable5GSwitchSupport", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"Enable5GSwitchSupport", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"Enable5GSwitchSupport", 0, &__p, 1u);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"MaxDataRate";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"EnableLTESwitchSupport", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"EnableLTESwitchSupport", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"EnableLTESwitchSupport", 0, &__p, 1u);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"MaxDataRate";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"Enable3GSwitchSupport", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"Enable3GSwitchSupport", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"Enable3GSwitchSupport", 0, &__p, 1u);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"PhoneServices";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"VoLTEUserPreference", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"VoLTEUserPreference", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"VoLTEUserPreference", 0, &__p, 1u);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"PhoneServices";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"thumper.switch.status", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"thumper.switch.status", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"thumper.switch.status", 0, &__p, 1u);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"PhoneServices";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"last.icloud.ver", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"last.icloud.ver", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"last.icloud.ver", 0, &__p, 1u);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"PhoneServices";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"vowifi.switch.status", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"vowifi.switch.status", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"vowifi.switch.status", 0, &__p, 1u);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"PhoneServices";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"vowifi.roaming_switch.status", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"vowifi.roaming_switch.status", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"vowifi.roaming_switch.status", 0, &__p, 1u);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"RegistrationModel";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"5GStandaloneEnabled", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"5GStandaloneEnabled", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"5GStandaloneEnabled", 0, &__p, 1u);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      __p = 0;
      v30 = 0;
      v31 = 0;
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"InternationalRoamingEDGE", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"InternationalRoamingEDGE", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"InternationalRoamingEDGE", 0, &__p, 1u);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v34 = @"DataService";
      v30 = 0;
      v31 = 0;
      __p = 0;
      sub_10005B328(&__p, &v34, &v35, 1uLL);
      memset(cf, 0, 24);
      sub_1014D728C(cf, v2, v9, @"SupportDynamicDataSimSwitch", 0, &__p, 1);
      sub_1014D9D94(v2, v9, @"SupportDynamicDataSimSwitch", cf[1], &__p, cf[2]);
      if (cf[1])
      {
        sub_1014D75BC(v2, v9, @"SupportDynamicDataSimSwitch", 0, &__p, 1u);
      }

      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }
    }

    goto LABEL_73;
  }

  if (v7 != 3)
  {
LABEL_73:
    v10 = v26;
    for (j = v27; v10 != j; v10 += 24)
    {
      v34 = 0;
      sub_1014D728C(cf, v2, v10, @"lastGoodImsi", @"SatMsg", 0, 1);
      __p = &unk_101870047;
      v30 = &v34;
      v31 = &unk_101870047;
      sub_1014D9F38(&__p, cf);
      sub_10000A1EC(&cf[2]);
      sub_10000A1EC(&cf[1]);
      if (v34)
      {
        sub_1014D742C(v2, v10, @"homeIMSI", v34, 0, 1u);
        sub_1014D75BC(v2, v10, @"lastGoodImsi", @"SatMsg", 0, 1u);
      }

      else
      {
        sub_1014D728C(cf, v2, v10, @"lastGoodImsi", @"CarrierEntitlements", 0, 1);
        __p = &unk_101870047;
        v30 = &v34;
        v31 = &unk_101870047;
        sub_1014D9F38(&__p, cf);
        sub_10000A1EC(&cf[2]);
        sub_10000A1EC(&cf[1]);
        if (v34)
        {
          sub_1014D742C(v2, v10, @"homeIMSI", v34, 0, 1u);
        }
      }

      sub_100005978(&v34);
    }
  }

  v12 = v26;
  for (k = v27; v12 != k; v12 += 24)
  {
    BOOLean = 0;
    sub_1014D728C(cf, v2, v12, @"data-only-plan", @"info", 0, 0);
    sub_10002FE1C(&v34, &cf[1]);
    __p = BOOLean;
    BOOLean = v34;
    v34 = 0;
    sub_100045C8C(&__p);
    sub_100045C8C(&v34);
    sub_10000A1EC(&cf[2]);
    sub_10000A1EC(&cf[1]);
    if (BOOLean)
    {
      sub_1014D75BC(v2, v12, @"data-only-plan", @"info", 0, 0);
      if (CFBooleanGetValue(BOOLean))
      {
        __p = 0;
        cf[0] = 1;
        v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, cf);
        if (v14)
        {
          v15 = __p;
          __p = v14;
          cf[0] = v15;
          sub_100029A48(cf);
        }

        v34 = __p;
        __p = 0;
        sub_100029A48(&__p);
        sub_1014D742C(v2, v12, @"data-only-plan", v34, @"info", 0);
        sub_100029A48(&v34);
      }
    }

    sub_100045C8C(&BOOLean);
  }

  v16 = v2[8];
  __p = 0;
  cf[0] = 4;
  v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, cf);
  if (v17)
  {
    __p = v17;
    cf[0] = 0;
    sub_100029A48(cf);
    v18 = __p;
  }

  else
  {
    v18 = 0;
  }

  v34 = v18;
  __p = 0;
  sub_100029A48(&__p);
  sub_10071B99C(v16, @"pw_ver", v18, 0, 0, 0, 0, 0);
  sub_100029A48(&v34);
  v19 = v2[5];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(cf[0]) = 134217984;
    *(cf + 4) = 4;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I migrated wallets to ver %zu", cf, 0xCu);
  }

  os_unfair_lock_unlock(v22 + 9);
  os_unfair_lock_unlock(v21 + 8);
  cf[0] = &v26;
  sub_10005AAF8(cf);
LABEL_92:
  sub_10024BAAC(&v25);
  return sub_1000049E0(&v24);
}

void sub_1014DB430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_unfair_lock_s *a9, os_unfair_lock_s *a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, __int16 *a22, char a23)
{
  sub_100029A48((v23 - 96));
  os_unfair_lock_unlock(a10 + 9);
  os_unfair_lock_unlock(a9 + 8);
  a22 = &a14;
  sub_10005AAF8(&a22);
  sub_10024BAAC(&a13);
  sub_1000049E0(&a12);
  _Unwind_Resume(a1);
}

void sub_1014DB5C0(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  if (*(v2 + 104))
  {
    os_state_remove_handler();
    *(v2 + 104) = 0;
  }

  v3 = v1[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v1[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete();
}