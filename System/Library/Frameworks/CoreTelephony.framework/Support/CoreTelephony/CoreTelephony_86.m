void sub_100592FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100592FC4(uint64_t a1, int a2)
{
  v4 = (*(*a1 + 224))(a1);
  if (v4 != a2)
  {
    sub_10059FB14(a1, a2);
  }

  return v4 != a2;
}

void sub_100593034(uint64_t a1, char a2)
{
  if (a2)
  {
    v80 = 0;
    theDict = 0;
    sub_1005D67F8(*(a1 + 104), 0, (a1 + 120), 0, &v80);
    if (!theDict)
    {
LABEL_102:
      sub_10001021C(&theDict);
      return;
    }

    Value = CFDictionaryGetValue(theDict, @"emergencyNumbers");
    if (Value)
    {
      v77 = 0;
      v78 = 0;
      v79 = 0;
      *&__src[8] = 0;
      *&__src[16] = 0;
      *__src = &__src[8];
      *&buf[8] = 0;
      *&buf[16] = 0;
      context[1] = &buf[8];
      *buf = &buf[8];
      context[0] = buf;
      CFDictionaryApplyFunction(Value, sub_1005A677C, context);
      v5 = *__src;
      v4 = *&__src[8];
      *__src = *buf;
      *&__src[8] = *&buf[8];
      *buf = v5;
      *&buf[8] = v4;
      v6 = *&__src[16];
      v7 = *&buf[16];
      *&__src[16] = *&buf[16];
      *&buf[16] = v6;
      if (v7)
      {
        v8 = (*&__src[8] + 16);
      }

      else
      {
        v8 = __src;
      }

      *v8 = &__src[8];
      if (v6)
      {
        v9 = (v4 + 2);
      }

      else
      {
        v9 = buf;
      }

      *v9 = &buf[8];
      sub_100580908(buf, v4);
      v10 = *&__src[8];
      v77 = *__src;
      v78 = *&__src[8];
      v79 = *&__src[16];
      if (*&__src[16])
      {
        *(*&__src[8] + 16) = &v78;
        *__src = &__src[8];
        *&__src[8] = 0;
        *&__src[16] = 0;
        v10 = 0;
      }

      else
      {
        v77 = &v78;
      }

      sub_100580908(__src, v10);
      v23 = v77;
      if (v77 != &v78)
      {
        while (1)
        {
          if (v23[55] >= 0)
          {
            v24 = v23 + 32;
          }

          else
          {
            v24 = *(v23 + 4);
          }

          v25 = atoi(v24);
          memset(__src, 0, sizeof(__src));
          sub_10004EFD0(__src, *(v23 + 7), *(v23 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v23 + 8) - *(v23 + 7)) >> 3));
          v26 = *(a1 + 48);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = PersonalityInfo::logPrefix(**(a1 + 80));
            v29 = *__src;
            v28 = *&__src[8];
            v30 = asString();
            *buf = 136315906;
            *&buf[4] = v27;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2048;
            *&buf[24] = 0xAAAAAAAAAAAAAAABLL * ((v28 - v29) >> 3);
            LOWORD(v84) = 2080;
            *(&v84 + 2) = v30;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sAdding %zu %s emergency number(s) from iCloud", buf, 0x2Au);
          }

          ServiceMap = Registry::getServiceMap(*(a1 + 56));
          v32 = ServiceMap;
          if (v33 < 0)
          {
            v34 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
            v35 = 5381;
            do
            {
              v33 = v35;
              v36 = *v34++;
              v35 = (33 * v35) ^ v36;
            }

            while (v36);
          }

          std::mutex::lock(ServiceMap);
          *buf = v33;
          v37 = sub_100009510(&v32[1].__m_.__sig, buf);
          if (!v37)
          {
            break;
          }

          v39 = v37[3];
          v38 = v37[4];
          if (!v38)
          {
            goto LABEL_38;
          }

          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v32);
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v38);
          v40 = 0;
LABEL_39:
          memset(buf, 0, 24);
          sub_10004EFD0(buf, *__src, *&__src[8], 0xAAAAAAAAAAAAAAABLL * ((*&__src[8] - *__src) >> 3));
          (*(*v39 + 56))(v39, v25, buf, 1);
          context[0] = buf;
          sub_1000087B4(context);
          if ((v40 & 1) == 0)
          {
            sub_100004A34(v38);
          }

          context[0] = __src;
          sub_1000087B4(context);
          v41 = *(v23 + 1);
          if (v41)
          {
            do
            {
              v42 = v41;
              v41 = *v41;
            }

            while (v41);
          }

          else
          {
            do
            {
              v42 = *(v23 + 2);
              v43 = *v42 == v23;
              v23 = v42;
            }

            while (!v43);
          }

          v23 = v42;
          if (v42 == &v78)
          {
            goto LABEL_47;
          }
        }

        v39 = 0;
LABEL_38:
        std::mutex::unlock(v32);
        v38 = 0;
        v40 = 1;
        goto LABEL_39;
      }

LABEL_47:
      sub_100580908(&v77, v78);
    }

    if (!CFDictionaryGetValue(theDict, @"preferredEmergencyNumber"))
    {
LABEL_86:
      *__src = @"IMSConfig";
      *&__src[8] = @"EmergencyNumbersOverWifiOnly";
      memset(buf, 0, 24);
      sub_10005B328(buf, __src, &__src[16], 2uLL);
      v65 = 0;
      sub_10059DA0C(a1, buf, 0, &cf);
      v77 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      context[0] = 0;
      *__src = 0;
      sub_10006DD00(__src, &v77);
      if (*__src)
      {
        sub_1002F5980(context, __src);
      }

      sub_100010250(__src);
      v65 = context[0];
      context[0] = 0;
      sub_100010250(context);
      sub_10000A1EC(&v77);
      sub_10000A1EC(&cf);
      if (!v65)
      {
        v57 = *(a1 + 48);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = PersonalityInfo::logPrefix(**(a1 + 80));
          *__src = 136315394;
          *&__src[4] = v58;
          *&__src[12] = 2080;
          *&__src[14] = " ";
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I %s%sEmergency numbers over Wifi-only missing!!!", __src, 0x16u);
        }
      }

      *__src = @"IMSConfig";
      *&__src[8] = @"LocalShortCodeNumbers";
      sub_1005A1CB8(buf, __src, &__src[16], 2uLL);
      v63 = 0;
      sub_10059DA0C(a1, buf, 0, &v62);
      v77 = v62;
      if (v62)
      {
        CFRetain(v62);
      }

      context[0] = 0;
      *__src = 0;
      sub_10006DD00(__src, &v77);
      if (*__src)
      {
        sub_1002F5980(context, __src);
      }

      sub_100010250(__src);
      v59 = context[0];
      v63 = context[0];
      context[0] = 0;
      sub_100010250(context);
      sub_10000A1EC(&v77);
      sub_10000A1EC(&v62);
      if (!v59)
      {
        v60 = *(a1 + 48);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = PersonalityInfo::logPrefix(**(a1 + 80));
          *__src = 136315394;
          *&__src[4] = v61;
          *&__src[12] = 2080;
          *&__src[14] = " ";
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s%sLocalShortCodeNumbers missing!!!", __src, 0x16u);
        }
      }

      sub_100010250(&v63);
      sub_100010250(&v65);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      goto LABEL_102;
    }

    memset(__src, 0, sizeof(__src));
    memset(buf, 0, 24);
    ctu::cf::assign();
    *__src = *buf;
    *&__src[16] = *&buf[16];
    v44 = *(a1 + 48);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = PersonalityInfo::logPrefix(**(a1 + 80));
      v46 = __src;
      if ((__src[23] & 0x80u) != 0)
      {
        v46 = *__src;
      }

      *buf = 136315650;
      *&buf[4] = v45;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v46;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s%sSetting preferred emergency number from iCloud: %s", buf, 0x20u);
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    memset(buf, 0, sizeof(buf));
    CSIPhoneNumber::CSIPhoneNumber();
    v47 = Registry::getServiceMap(*(a1 + 56));
    v48 = v47;
    if (v49 < 0)
    {
      v50 = (v49 & 0x7FFFFFFFFFFFFFFFLL);
      v51 = 5381;
      do
      {
        v49 = v51;
        v52 = *v50++;
        v51 = (33 * v51) ^ v52;
      }

      while (v52);
    }

    std::mutex::lock(v47);
    v77 = v49;
    v53 = sub_100009510(&v48[1].__m_.__sig, &v77);
    if (v53)
    {
      v55 = v53[3];
      v54 = v53[4];
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v48);
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v54);
        v56 = 0;
        if (!v55)
        {
          goto LABEL_72;
        }

        goto LABEL_62;
      }
    }

    else
    {
      v55 = 0;
    }

    std::mutex::unlock(v48);
    v54 = 0;
    v56 = 1;
    if (!v55)
    {
LABEL_72:
      if ((v56 & 1) == 0)
      {
        sub_100004A34(v54);
      }

      if (SBYTE7(v91) < 0)
      {
        operator delete(v90);
      }

      if (SHIBYTE(v89) < 0)
      {
        operator delete(*(&v88 + 1));
      }

      if (SBYTE7(v87) < 0)
      {
        operator delete(v86);
      }

      if (SBYTE7(v85) < 0)
      {
        operator delete(v84);
      }

      if (buf[31] < 0)
      {
        operator delete(*&buf[8]);
      }

      if (__src[23] < 0)
      {
        operator delete(*__src);
      }

      goto LABEL_86;
    }

LABEL_62:
    sub_1000AE428(v66, buf);
    (*(*v55 + 104))(v55, v66, 1);
    if (v76 < 0)
    {
      operator delete(__p);
    }

    if (v74 < 0)
    {
      operator delete(v73);
    }

    if (v72 < 0)
    {
      operator delete(v71);
    }

    if (v70 < 0)
    {
      operator delete(v69);
    }

    if (v68 < 0)
    {
      operator delete(v67);
    }

    goto LABEL_72;
  }

  v11 = Registry::getServiceMap(*(a1 + 56));
  v12 = v11;
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

  std::mutex::lock(v11);
  *buf = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, buf);
  if (!v17)
  {
    v19 = 0;
    goto LABEL_19;
  }

  v19 = v17[3];
  v18 = v17[4];
  if (!v18)
  {
LABEL_19:
    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    goto LABEL_20;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v18);
  v20 = 0;
LABEL_20:
  (*(*v19 + 64))(v19);
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  v21 = *(a1 + 48);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v22;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%siCloud emergency number(s) removed", buf, 0x16u);
  }
}

void sub_100593A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, const void *a14, __int16 a15, char a16, char a17, int a18, const void *a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  sub_100010250(&a14);
  sub_100010250(&a19);
  if (__p)
  {
    a50 = __p;
    operator delete(__p);
  }

  sub_10001021C(&a46);
  _Unwind_Resume(a1);
}

void sub_100593BE4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a1 + 48);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = PersonalityInfo::logPrefix(**(a1 + 80));
      *v29 = 136315394;
      *&v29[4] = v7;
      v30 = 2080;
      v31 = " ";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sSaved credentials", v29, 0x16u);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
    *v29 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, v29);
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
        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
LABEL_20:
    v28 = **(a1 + 80);
    sub_100612A44(*a2, v29);
    (*(*v16 + 16))(v16, v28 + 24, @"LocalCredentials", *v29, kPhoneServicesWalletDomain, 0, 4, 0);
    sub_1000296E0(v29);
    if (v17)
    {
      return;
    }

    goto LABEL_21;
  }

  if (v6)
  {
    v18 = PersonalityInfo::logPrefix(**(a1 + 80));
    *v29 = 136315394;
    *&v29[4] = v18;
    v30 = 2080;
    v31 = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sErased credentials", v29, 0x16u);
  }

  v19 = Registry::getServiceMap(*(a1 + 56));
  v20 = v19;
  if (v21 < 0)
  {
    v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
    v23 = 5381;
    do
    {
      v21 = v23;
      v24 = *v22++;
      v23 = (33 * v23) ^ v24;
    }

    while (v24);
  }

  std::mutex::lock(v19);
  *v29 = v21;
  v25 = sub_100009510(&v20[1].__m_.__sig, v29);
  if (v25)
  {
    v26 = v25[3];
    v15 = v25[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v20);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v27 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v26 = 0;
  }

  std::mutex::unlock(v20);
  v15 = 0;
  v27 = 1;
LABEL_25:
  (*(*v26 + 32))(v26, **(a1 + 80) + 24, @"LocalCredentials", kPhoneServicesWalletDomain, 0, 4);
  if (v27)
  {
    return;
  }

LABEL_21:
  sub_100004A34(v15);
}

void sub_100593F1C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100593F6C(uint64_t a1)
{
  v13 = 0;
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
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
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
  (*(*v10 + 24))(&v12, v10, **(a1 + 80) + 24, @"LocalCredentials", kPhoneServicesWalletDomain, 0, 4);
  sub_100010180(&v13, &v12);
  sub_10000A1EC(&v12);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v13)
  {
    operator new();
  }

  sub_100594204(a1 + 232, 0);
}

void sub_100594198(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

BOOL sub_10059424C(uint64_t a1)
{
  if (!*(a1 + 200))
  {
    return 1;
  }

  v10 = 0uLL;
  v11 = 0;
  ctu::cf::assign();
  v9 = 0;
  *__p = 0uLL;
  v2 = *(a1 + 143);
  if (v2 >= 0)
  {
    v3 = *(a1 + 143);
  }

  else
  {
    v3 = *(a1 + 128);
  }

  v4 = HIBYTE(v9);
  if (v9 < 0)
  {
    v4 = __p[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v5 = (a1 + 120);
  }

  else
  {
    v5 = *(a1 + 120);
  }

  return memcmp(v5, __p, v3) == 0;
}

void sub_10059431C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100594338(uint64_t a1)
{
  sub_100810310(a1, 2u, 0, 1, 1);
  v15 = 0;
  theDict = 0;
  sub_1005D67F8(*(a1 + 104), 1, (a1 + 120), 0, &v15);
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    Count = CFDictionaryGetCount(MutableCopy);
    if (Count)
    {
      keys = 0;
      v12 = 0;
      v13 = 0;
      sub_100222418(&keys, Count);
      values = 0;
      v9 = 0;
      v10 = 0;
      sub_10007D780(&values, Count);
      CFDictionaryGetKeysAndValues(MutableCopy, keys, values);
      v3 = 0;
      while (1)
      {
        v4 = values[v3];
        if (v4)
        {
          v5 = CFGetTypeID(values[v3]);
          if (v5 == CFStringGetTypeID())
          {
            v6 = sub_1008100FC(a1);
            if (CFStringCompare(v6, v4, 0) == kCFCompareEqualTo)
            {
              break;
            }
          }
        }

        if (Count == ++v3)
        {
          goto LABEL_10;
        }
      }

      CFDictionaryRemoveValue(MutableCopy, keys[v3]);
      sub_1005D550C(*(a1 + 104), 1u, MutableCopy, v15 + 1, (a1 + 120), 1, 1);
LABEL_10:
      if (values)
      {
        v9 = values;
        operator delete(values);
      }

      if (keys)
      {
        v12 = keys;
        operator delete(keys);
      }
    }

    sub_1000296E0(&MutableCopy);
  }

  return sub_10001021C(&theDict);
}

void sub_1005944B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, const void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  sub_1000296E0(&a16);
  sub_10001021C((v16 + 8));
  _Unwind_Resume(a1);
}

void sub_100594514(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  if (a2)
  {
    Value = CFDictionaryGetValue(theDict, @"imsCommonCredentials");
    if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFDictionaryGetTypeID()))
    {
      v104 = 0;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      memset(v77, 0, sizeof(v77));
      sub_1006113E8(v77, v7);
      v71 = 0;
      if (*(a1 + 280) == 1)
      {
        sub_10059AB30(&v72);
      }

      v68 = 0;
      sub_10059AF40(theDict, &v68);
      v11 = v68;
      if (v68)
      {
        v12 = *(a1 + 48);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = PersonalityInfo::logPrefix(**(a1 + 80));
          v72 = 0uLL;
          v73 = 0;
          ctu::cf::assign();
          *__p = v72;
          v70 = v73;
          v14 = v72;
          if (v73 >= 0)
          {
            v14 = __p;
          }

          *buf = 136315650;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v75 = 2080;
          v76 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sCA name: '%s'", buf, 0x20u);
          if (SHIBYTE(v70) < 0)
          {
            operator delete(__p[0]);
          }

          v11 = v68;
        }
      }

      *&v72 = 0;
      sub_10059B230(theDict, a1, v71, v11, v77, &v72);
      if (v72)
      {
        __p[0] = 0;
        std::mutex::lock((a1 + 432));
        sub_1000676D4((a1 + 512), &v72);
        IMSInfo::serialize(*(a1 + 496), &v67);
        *buf = __p[0];
        __p[0] = v67;
        v67 = 0;
        sub_10001021C(buf);
        sub_10001021C(&v67);
        std::mutex::unlock((a1 + 432));
        ServiceMap = Registry::getServiceMap(*(a1 + 56));
        sub_1004419D4(ServiceMap, buf);
        v16 = kPhoneServicesWalletDomain;
        (*(**buf + 16))(*buf, **(a1 + 80) + 24, @"CarrierBundle", v72, kPhoneServicesWalletDomain, 0, 4, 0);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        v17 = Registry::getServiceMap(*(a1 + 56));
        sub_1004419D4(v17, buf);
        (*(**buf + 16))(*buf, **(a1 + 80) + 24, @"IMSInfo", __p[0], v16, 0, 4, 0);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        v18 = *(a1 + 48);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = PersonalityInfo::logPrefix(**(a1 + 80));
          *buf = 136315394;
          *&buf[4] = v19;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper provisioning applied", buf, 0x16u);
        }

        sub_10001021C(__p);
        sub_10001021C(&v72);
        sub_100005978(&v68);
        sub_100005978(&v71);
        sub_100220C2C(v77);
        *(a1 + 392) = 1;
        v20 = Registry::getServiceMap(*(a1 + 56));
        v21 = v20;
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

        std::mutex::lock(v20);
        *v77 = v22;
        v26 = sub_100009510(&v21[1].__m_.__sig, v77);
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
LABEL_84:
            (*(*v28 + 16))(v28, **(a1 + 80) + 24, kCFLocalProvisioningApplied, kCFBooleanTrue, v16, 0, 1, 0);
            if ((v29 & 1) == 0)
            {
              sub_100004A34(v27);
            }

            sub_100591FC4(a1);
            return;
          }
        }

        else
        {
          v28 = 0;
        }

        std::mutex::unlock(v21);
        v27 = 0;
        v29 = 1;
        goto LABEL_84;
      }

      v30 = *(a1 + 48);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315394;
        *&buf[4] = v31;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%sUnable to compile CB - bailout", buf, 0x16u);
      }

      sub_10001021C(&v72);
      sub_100005978(&v68);
      sub_100005978(&v71);
      sub_100220C2C(v77);
    }

    else
    {
      v9 = *(a1 + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = PersonalityInfo::logPrefix(**(a1 + 80));
        *v77 = 136315394;
        *&v77[4] = v10;
        *&v77[12] = 2080;
        *&v77[14] = " ";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sims common credentials are unavailable", v77, 0x16u);
      }
    }
  }

  std::mutex::lock((a1 + 432));
  v32 = *(a1 + 504);
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  if (v32)
  {
    sub_100004A34(v32);
  }

  sub_10059B8C8(a1, *(a1 + 512));
  std::mutex::unlock((a1 + 432));
  v33 = Registry::getServiceMap(*(a1 + 56));
  v34 = v33;
  v36 = v35;
  if (v35 < 0)
  {
    v37 = (v35 & 0x7FFFFFFFFFFFFFFFLL);
    v38 = 5381;
    do
    {
      v36 = v38;
      v39 = *v37++;
      v38 = (33 * v38) ^ v39;
    }

    while (v39);
  }

  std::mutex::lock(v33);
  *v77 = v36;
  v40 = sub_100009510(&v34[1].__m_.__sig, v77);
  if (v40)
  {
    v42 = v40[3];
    v41 = v40[4];
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v34);
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v41);
      v43 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v42 = 0;
  }

  std::mutex::unlock(v34);
  v41 = 0;
  v43 = 1;
LABEL_41:
  v44 = kPhoneServicesWalletDomain;
  (*(*v42 + 32))(v42, **(a1 + 80) + 24, @"CarrierBundle", kPhoneServicesWalletDomain, 0, 4);
  if ((v43 & 1) == 0)
  {
    sub_100004A34(v41);
  }

  v45 = Registry::getServiceMap(*(a1 + 56));
  v46 = v45;
  v47 = v35;
  if (v35 < 0)
  {
    v48 = (v35 & 0x7FFFFFFFFFFFFFFFLL);
    v49 = 5381;
    do
    {
      v47 = v49;
      v50 = *v48++;
      v49 = (33 * v49) ^ v50;
    }

    while (v50);
  }

  std::mutex::lock(v45);
  *v77 = v47;
  v51 = sub_100009510(&v46[1].__m_.__sig, v77);
  if (v51)
  {
    v53 = v51[3];
    v52 = v51[4];
    if (v52)
    {
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v46);
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v52);
      v54 = 0;
      goto LABEL_51;
    }
  }

  else
  {
    v53 = 0;
  }

  std::mutex::unlock(v46);
  v52 = 0;
  v54 = 1;
LABEL_51:
  (*(*v53 + 32))(v53, **(a1 + 80) + 24, @"IMSInfo", v44, 0, 4);
  if ((v54 & 1) == 0)
  {
    sub_100004A34(v52);
  }

  if (*(a1 + 384) == 1)
  {
    *(a1 + 248) = off_101EA6578;
    if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
    {
      operator delete(*(a1 + 352));
    }

    if (*(a1 + 344) == 1 && *(a1 + 343) < 0)
    {
      operator delete(*(a1 + 320));
    }

    if (*(a1 + 312) == 1 && *(a1 + 311) < 0)
    {
      operator delete(*(a1 + 288));
    }

    if (*(a1 + 280) == 1 && *(a1 + 279) < 0)
    {
      operator delete(*(a1 + 256));
    }

    TMKXPCServer.shutdown()();
    *(a1 + 384) = 0;
  }

  v55 = *(a1 + 48);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = PersonalityInfo::logPrefix(**(a1 + 80));
    v57 = "removed";
    *v77 = 136315650;
    *&v77[4] = v56;
    *&v77[12] = 2080;
    *&v77[14] = " ";
    if (a2)
    {
      v57 = "cannot be applied";
    }

    *&v77[22] = 2080;
    *&v77[24] = v57;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper provisioning %s", v77, 0x20u);
  }

  *(a1 + 392) = 0;
  v58 = Registry::getServiceMap(*(a1 + 56));
  v59 = v58;
  if (v35 < 0)
  {
    v60 = (v35 & 0x7FFFFFFFFFFFFFFFLL);
    v61 = 5381;
    do
    {
      v35 = v61;
      v62 = *v60++;
      v61 = (33 * v61) ^ v62;
    }

    while (v62);
  }

  std::mutex::lock(v58);
  *v77 = v35;
  v63 = sub_100009510(&v59[1].__m_.__sig, v77);
  if (v63)
  {
    v65 = v63[3];
    v64 = v63[4];
    if (v64)
    {
      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v59);
      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v64);
      v66 = 0;
      goto LABEL_79;
    }
  }

  else
  {
    v65 = 0;
  }

  std::mutex::unlock(v59);
  v64 = 0;
  v66 = 1;
LABEL_79:
  (*(*v65 + 32))(v65, **(a1 + 80) + 24, kCFLocalProvisioningApplied, v44, 0, 1);
  if ((v66 & 1) == 0)
  {
    sub_100004A34(v64);
  }
}

void sub_100595068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a18);
  sub_100220C2C(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_100595194(uint64_t a1)
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
  *v28 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v28);
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
  (*(*v10 + 32))(v10, **(a1 + 80) + 24, @"CarrierBundle", kPhoneServicesWalletDomain, 0, 4);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  std::mutex::lock((a1 + 432));
  v12 = *(a1 + 512);
  *(a1 + 512) = 0;
  *v28 = v12;
  sub_10001021C(v28);
  std::mutex::unlock((a1 + 432));
  v13 = *(a1 + 48);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = PersonalityInfo::logPrefix(**(a1 + 80));
    *v28 = 136315394;
    *&v28[4] = v14;
    *&v28[12] = 2080;
    *&v28[14] = " ";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%spre-provisioning dropped ->disable personality", v28, 0x16u);
  }

  v15 = Registry::getServiceMap(*(a1 + 56));
  v16 = v15;
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

  std::mutex::lock(v15);
  *v28 = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, v28);
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
      goto LABEL_21;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_21:
  (*(*v23 + 64))(v23, **(a1 + 80) + 24, 0);
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  v25 = *(a1 + 240);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  if (v25)
  {
    sub_100004A34(v25);
  }

  *v28 = 0;
  *&v28[8] = 0;
  sub_100593BE4(a1, v28);
  v26 = **(a1 + 96);
  *(a1 + 196) = 2;
  return (*(v26 + 312))();
}

void sub_1005954AC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1005954E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1008100FC(a1);
  v9 = 0uLL;
  v10 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v8 = 0;
  v4 = sub_100598EC4(a1, (a1 + 120), __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 == -1)
  {
    *a2 = 0;
    *&v9 = 0;
    *(a2 + 8) = 1;
    v5 = &v9;
  }

  else
  {
    v9 = 0uLL;
    sub_1005D67F8(*(a1 + 104), 0, (a1 + 120), 0, &v9);
    sub_100010024(a2, &v9 + 1);
    *(a2 + 8) = BYTE4(v4);
    v5 = &v9 + 1;
  }

  return sub_10001021C(v5);
}

void sub_1005955C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005955F0(uint64_t a1, CFDictionaryRef theDict, char a3)
{
  v7 = (a1 + 232);
  v6 = *(a1 + 232);
  if (v6 && (*(v6 + 256) & 1) != 0)
  {
    sub_1005989F8(a1);
    goto LABEL_91;
  }

  Value = CFDictionaryGetValue(theDict, @"masterToken");
  if (Value)
  {
    v9 = CFGetTypeID(Value);
    v10 = v9 != CFStringGetTypeID();
  }

  else
  {
    v10 = 1;
  }

  v35 = 0;
  v11 = *v7;
  if (*v7)
  {
    LOBYTE(v11) = v11[10].__r_.__value_.__s.__data_[16];
  }

  if ((v11 & 1) != 0 || !v10)
  {
    v35 = 0;
  }

  else
  {
    sub_1005999D0(theDict, a1, &v35);
  }

  std::mutex::lock((a1 + 432));
  v12 = *(a1 + 512);
  std::mutex::unlock((a1 + 432));
  if ((v12 || sub_10059900C(a1, theDict, v35)) && (!*v7 || ((*v7)[10].__r_.__value_.__s.__data_[16] & 1) == 0))
  {
    if (!v10)
    {
      sub_100593F6C(a1);
    }

    if (v35)
    {
      operator new();
    }

    if (!*v7 || (*v7)[10].__r_.__value_.__s.__data_[16] != 1)
    {
      if (!v10 && (a3 & 1) != 0 && *(**(a1 + 80) + 48) == 1)
      {
        sub_10059837C(a1);
      }

      goto LABEL_90;
    }

    memset(&v34, 0, sizeof(v34));
    memset(&__p, 0, sizeof(__p));
    memset(&v32, 0, sizeof(v32));
    std::mutex::lock((a1 + 432));
    v13 = *(a1 + 496);
    if (v13)
    {
      std::string::operator=(&v32, v13);
      std::string::operator=(&v34, (*(a1 + 496) + 24));
      v14 = *(*(a1 + 496) + 48);
      if (*(*(a1 + 496) + 56) == v14)
      {
        sub_10000501C(&__dst, "");
      }

      else if (*(v14 + 23) < 0)
      {
        sub_100005F2C(&__dst, *v14, *(v14 + 1));
      }

      else
      {
        v15 = *v14;
        __dst.__r_.__value_.__r.__words[2] = *(v14 + 2);
        *&__dst.__r_.__value_.__l.__data_ = v15;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __dst;
    }

    std::mutex::unlock((a1 + 432));
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      goto LABEL_63;
    }

    if (*(a1 + 384) == 1 && *(a1 + 344) == 1)
    {
      p_data = (a1 + 320);
      if (*(a1 + 343) < 0)
      {
        p_size = (a1 + 328);
LABEL_47:
        sub_100005F2C(&__dst, *p_data, *p_size);
LABEL_48:
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        v34 = __dst;
        v20 = *v7;
        if ((*v7)[7].__r_.__value_.__s.__data_[16] == 1)
        {
          if (v20[7].__r_.__value_.__s.__data_[15] < 0)
          {
            sub_100005F2C(&__dst, v20[6].__r_.__value_.__r.__words[2], v20[7].__r_.__value_.__r.__words[0]);
          }

          else
          {
            __dst = *(v20 + 160);
          }
        }

        else
        {
          sub_10000501C(&__dst, "");
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        v32 = __dst;
        if (*(a1 + 384) == 1 && *(a1 + 376) == 1)
        {
          v21 = (a1 + 352);
        }

        else
        {
          if ((*v7)[9].__r_.__value_.__s.__data_[0] != 1)
          {
            v27 = CFDictionaryGetValue(theDict, @"impu");
            v28 = v27;
            if (v27)
            {
              v29 = CFGetTypeID(v27);
              if (v29 == CFArrayGetTypeID())
              {
                if (CFArrayGetCount(v28))
                {
                  CFArrayGetValueAtIndex(v28, 0);
                  memset(&__dst, 0, sizeof(__dst));
                  ctu::cf::assign();
                  v37[0] = __dst.__r_.__value_.__l.__size_;
                  v30 = __dst.__r_.__value_.__r.__words[0];
                  *(v37 + 7) = *(&__dst.__r_.__value_.__r.__words[1] + 7);
                  v31 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  __p.__r_.__value_.__r.__words[0] = v30;
                  __p.__r_.__value_.__l.__size_ = v37[0];
                  *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v37 + 7);
                  *(&__p.__r_.__value_.__s + 23) = v31;
                }
              }
            }

            goto LABEL_63;
          }

          v21 = *v7 + 8;
        }

        std::string::operator=(&__p, v21);
LABEL_63:
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v34.__r_.__value_.__l.__size_)
          {
            v22 = v34.__r_.__value_.__r.__words[0];
          }

          else
          {
            v22 = 0;
          }
        }

        else if (*(&v34.__r_.__value_.__s + 23))
        {
          v22 = &v34;
        }

        else
        {
          v22 = 0;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__p.__r_.__value_.__l.__size_)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            p_p = 0;
          }
        }

        else if (*(&__p.__r_.__value_.__s + 23))
        {
          p_p = &__p;
        }

        else
        {
          p_p = 0;
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v32.__r_.__value_.__l.__size_)
          {
            v24 = v32.__r_.__value_.__r.__words[0];
          }

          else
          {
            v24 = 0;
          }
        }

        else if (*(&v32.__r_.__value_.__s + 23))
        {
          v24 = &v32;
        }

        else
        {
          v24 = 0;
        }

        sub_100597B4C(a1, v22, p_p, v24, 0, 0);
        sub_1005989F8(a1);
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        goto LABEL_90;
      }
    }

    else
    {
      v19 = *v7;
      if ((*v7)[5].__r_.__value_.__s.__data_[0] != 1)
      {
        sub_10000501C(&__dst, "");
        goto LABEL_48;
      }

      p_data = &v19[4].__r_.__value_.__l.__data_;
      if (SHIBYTE(v19[4].__r_.__value_.__r.__words[2]) < 0)
      {
        p_size = &v19[4].__r_.__value_.__l.__size_;
        goto LABEL_47;
      }
    }

    __dst = *p_data;
    goto LABEL_48;
  }

LABEL_90:
  sub_10001021C(&v35);
LABEL_91:
  v25 = *v7;
  if (*v7)
  {
    LOBYTE(v25) = v25[10].__r_.__value_.__s.__data_[16];
  }

  return v25 & 1;
}

void sub_100595B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, const void *a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_10001021C(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_100595BDC(uint64_t a1, CFDictionaryRef theDict, int a3)
{
  if (a3 && (*(a1 + 384) & 1) == 0)
  {
    if (*(a1 + 525))
    {
      v5 = *(a1 + 48);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315394;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%ssetProvisioning call in progress - bailout", buf, 0x16u);
      }
    }

    else
    {
      Value = CFDictionaryGetValue(theDict, @"imsCommonCredentials");
      if (Value)
      {
        v8 = *(a1 + 232);
        if (v8)
        {
          if (*(v8 + 256) == 1)
          {
            v36 = 0;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v18 = 0u;
            v19 = 0u;
            v16 = 0u;
            v17 = 0u;
            v14 = 0u;
            v15 = 0u;
            v12 = 0u;
            v13 = 0u;
            v10 = 0u;
            v11 = 0u;
            memset(buf, 0, sizeof(buf));
            sub_1006113E8(buf, Value);
            operator new();
          }
        }
      }
    }
  }

  return *(a1 + 384);
}

void sub_1005961FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_10002D760(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v27);
  sub_100220C2C(&a27);
  _Unwind_Resume(a1);
}

BOOL sub_1005962C8(uint64_t a1)
{
  std::mutex::lock((a1 + 432));
  v2 = *(a1 + 512) != 0;
  std::mutex::unlock((a1 + 432));
  return v2;
}

void sub_100596308(uint64_t a1, char a2)
{
  v4 = sub_100591B44(a1);
  v5 = *(a1 + 192);
  if (v5)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = sub_10058D044(a1);
  }

  v7 = (v5 == 2) | v6 & a2;
  if ((v4 & 1) == 0)
  {
    v7 = 0;
  }

  *(a1 + 640) = v7 & 1;
  v8 = *(a1 + 96);
  if (v8)
  {
    v9 = *(a1 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(**(a1 + 80));
      v11 = asStringBool(v4 & 1);
      v12 = sub_10060FFC0(*(a1 + 192));
      v13 = sub_10060FF94(*(a1 + 520));
      v14 = asStringBool(*(a1 + 640));
      v15 = 136316418;
      v16 = v10;
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
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sevaluateWiFiLocationRequirement: paired: %s, fSwitchState: %s, fServiceStatus: %s, locationRequired: %s", &v15, 0x3Eu);
      v8 = *(a1 + 96);
    }

    sub_100350590(v8);
  }
}

BOOL sub_100596484(uint64_t a1, unsigned __int8 *a2)
{
  v4 = ThumperCapability::operator!=((a1 + 32), a2);
  if (v4)
  {
    *(a1 + 32) = *a2;
    v5 = *(a1 + 24);
    if (v5)
    {
      (*(*v5 + 48))(v5, a1 + 32);
    }
  }

  return v4;
}

void sub_1005964FC(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if ((sub_10080FFF8(a1) & 1) == 0)
  {
    v12 = *(**(a1 + 80) + 48) != 1 || a3 == 0 || a4 == 0 || a2 == 0;
    if (v12 || (*(*a1 + 224))(a1) == 1 || (sub_10034B81C(*(a1 + 96)) & 1) != 0 || (*(a1 + 524) & 1) != 0 || (*(a1 + 525) & 1) != 0 || (*(a1 + 526) & 1) != 0 || (*(a1 + 527) & 1) != 0 || sub_10034B35C(*(a1 + 96), *(a1 + 196)))
    {
      if (a2)
      {
        v13 = *(*a1 + 224);

        v13(a1);
      }
    }

    else if ((*(a1 + 552) & 1) == 0)
    {
      v14 = *(a1 + 196);
      if (v14 == 1 || v14 == 6 || a5 == -1)
      {
        v15 = *(a1 + 48);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = PersonalityInfo::logPrefix(**(a1 + 80));
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
          *(buf.__r_.__value_.__r.__words + 4) = v16;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sShowing UI popup", &buf, 0x16u);
        }

        v47 = 0;
        v48 = 0;
        ServiceMap = Registry::getServiceMap(*(a1 + 56));
        sub_1005A5A80(ServiceMap, &v47);
        v46 = 0;
        (*(*v47 + 40))(&v46);
        v44 = 0;
        v45 = 0;
        v18 = Registry::getServiceMap(*(a1 + 56));
        sub_1005A61F8(v18, &buf);
        (*(*buf.__r_.__value_.__l.__data_ + 72))(buf.__r_.__value_.__r.__words[0]);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_100004A34(buf.__r_.__value_.__l.__size_);
        }

        (*(*v47 + 40))(&__str);
        buf.__r_.__value_.__r.__words[0] = v45;
        v45 = __str.__r_.__value_.__r.__words[0];
        __str.__r_.__value_.__r.__words[0] = 0;
        sub_100005978(&buf.__r_.__value_.__l.__data_);
        sub_100005978(&__str.__r_.__value_.__l.__data_);
        (*(*v47 + 40))(&__str);
        buf.__r_.__value_.__r.__words[0] = v44;
        v44 = __str.__r_.__value_.__r.__words[0];
        __str.__r_.__value_.__r.__words[0] = 0;
        sub_100005978(&buf.__r_.__value_.__l.__data_);
        sub_100005978(&__str.__r_.__value_.__l.__data_);
        memset(&__str, 0, sizeof(__str));
        memset(&buf, 0, sizeof(buf));
        ctu::cf::assign();
        __str = buf;
        v19 = sub_1003D9A94(&__str, "%s", 0);
        if (v19 != -1)
        {
          v20 = v19;
          v42 = 0;
          sub_100060E4C(&v42, @"carrier");
          v21 = *(a1 + 96);
          {
            v23 = (*(*v22 + 112))(v22);
            buf.__r_.__value_.__r.__words[0] = v23;
            value.__r_.__value_.__r.__words[0] = 0;
            if (v23)
            {
              if (CFDictionaryGetValueIfPresent(v23, @"CarrierName", &value.__r_.__value_.__l.__data_))
              {
                if (value.__r_.__value_.__r.__words[0])
                {
                  v24 = CFGetTypeID(value.__r_.__value_.__l.__data_);
                  if (v24 == CFStringGetTypeID())
                  {
                    v40.__r_.__value_.__r.__words[0] = value.__r_.__value_.__r.__words[0];
                    sub_100596E24(&v42, &v40.__r_.__value_.__l.__data_);
                  }
                }
              }
            }
          }

          else
          {
            buf.__r_.__value_.__r.__words[0] = 0;
          }

          sub_10001021C(&buf.__r_.__value_.__l.__data_);
          std::string::basic_string(&v40, &__str, 0, v20, &buf);
          memset(&buf, 0, sizeof(buf));
          ctu::cf::assign();
          __p = buf;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          v27 = std::string::append(&v40, p_p, size);
          v28 = *&v27->__r_.__value_.__l.__data_;
          value.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
          *&value.__r_.__value_.__l.__data_ = v28;
          v27->__r_.__value_.__l.__size_ = 0;
          v27->__r_.__value_.__r.__words[2] = 0;
          v27->__r_.__value_.__r.__words[0] = 0;
          std::string::basic_string(&buf, &__str, v20 + 2, 0xFFFFFFFFFFFFFFFFLL, &v49);
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v30 = buf.__r_.__value_.__l.__size_;
          }

          v31 = std::string::append(&value, p_buf, v30);
          v32 = v31->__r_.__value_.__r.__words[0];
          v50[0] = v31->__r_.__value_.__l.__size_;
          *(v50 + 7) = *(&v31->__r_.__value_.__r.__words[1] + 7);
          v33 = HIBYTE(v31->__r_.__value_.__r.__words[2]);
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str.__r_.__value_.__r.__words[0] = v32;
          __str.__r_.__value_.__l.__size_ = v50[0];
          *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v50 + 7);
          *(&__str.__r_.__value_.__s + 23) = v33;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(value.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(value.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v40.__r_.__value_.__l.__data_);
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          v35 = CFStringCreateWithCString(kCFAllocatorDefault, p_str, 0x8000100u);
          v36 = v44;
          v44 = v35;
          buf.__r_.__value_.__r.__words[0] = v36;
          sub_100005978(&buf.__r_.__value_.__l.__data_);
          sub_100005978(&v42);
        }

        v37 = Registry::getServiceMap(*(a1 + 56));
        sub_1005A62BC(v37, &buf);
        (*(*buf.__r_.__value_.__l.__data_ + 32))(buf.__r_.__value_.__r.__words[0], v45, v44, v46);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_100004A34(buf.__r_.__value_.__l.__size_);
        }

        *(a1 + 552) = 1;
        v38 = Registry::getServiceMap(*(a1 + 56));
        sub_1004419D4(v38, &buf);
        (*(*buf.__r_.__value_.__l.__data_ + 16))(buf.__r_.__value_.__r.__words[0], **(a1 + 80) + 24, @"ProvisioningFailedAlertShown", kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 3, 0);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_100004A34(buf.__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        sub_100005978(&v44);
        sub_100005978(&v45);
        sub_100005978(&v46);
        if (v48)
        {
          sub_100004A34(v48);
        }
      }
    }
  }
}

void sub_100596CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, const void *a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, const void *a35, const void *a36, const void *a37)
{
  sub_10001021C((v37 - 80));
  sub_100005978(&a27);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  sub_100005978(&a35);
  sub_100005978(&a36);
  sub_100005978(&a37);
  v39 = *(v37 - 112);
  if (v39)
  {
    sub_100004A34(v39);
  }

  _Unwind_Resume(a1);
}

const void **sub_100596E24(const void **a1, CFTypeRef *a2)
{
  v5 = 0;
  sub_100060DE8(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  sub_100005978(&v5);
  return a1;
}

void sub_100596E74(std::string *__str@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  *a4 = 0;
  v51 = 0u;
  memset(&v52, 0, sizeof(v52));
  *v49 = 0u;
  *v50 = 0u;
  *v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  *v46 = 0u;
  memset(v44, 0, sizeof(v44));
  if (*(a3 + 56) == 1)
  {
    std::string::operator=(&v44[24], (a3 + 32));
  }

  if (*(a3 + 88) == 1)
  {
    std::string::operator=(v46, (a3 + 64));
  }

  if (*(a3 + 120) == 1)
  {
    std::string::operator=(&v47[1], (a3 + 96));
  }

  if (*(a3 + 152) == 1)
  {
    std::string::operator=(v49, (a3 + 128));
  }

  if (*(a3 + 184) == 1)
  {
    std::string::operator=(&v50[1], (a3 + 160));
  }

  if (*(a3 + 216) == 1)
  {
    std::string::operator=(&v52, (a3 + 192));
  }

  std::string::operator=(v44, __str);
  v43 = 0;
  sub_1005D7A90(@"com.apple.callservices.identifier.", (a2 + 120), &v43);
  v42 = 0;
  ServiceMap = Registry::getServiceMap(*(a2 + 56));
  sub_1004419D4(ServiceMap, buf);
  v9 = kPhoneServicesWalletDomain;
  (*(**buf + 24))(&__dst);
  sub_100060DE8(&v42, &__dst);
  sub_10000A1EC(&__dst);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (!v42)
  {
    goto LABEL_38;
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v55 = *&buf[16];
  __dst = *buf;
  v10 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v10 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v12 = HIBYTE(v55);
  v13 = SHIBYTE(v55);
  if (v55 < 0)
  {
    v12 = *(&__dst + 1);
  }

  if (size == v12)
  {
    if (v10 >= 0)
    {
      v14 = __str;
    }

    else
    {
      v14 = __str->__r_.__value_.__r.__words[0];
    }

    if (v55 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v16 = memcmp(v14, p_dst, size) == 0;
    if ((v13 & 0x80000000) == 0)
    {
LABEL_29:
      if (v16)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v16 = 0;
    if ((SHIBYTE(v55) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }
  }

  operator delete(__dst);
  if (v16)
  {
LABEL_30:
    if (*(a2 + 424))
    {
      v17 = *(a2 + 48);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      v18 = PersonalityInfo::logPrefix(**(a2 + 80));
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = __str;
      }

      else
      {
        v19 = __str->__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v59 = v19;
      v20 = "#I %s%sUse existing thumper key for %s";
      v21 = v17;
      v22 = 32;
      goto LABEL_59;
    }

    sub_1009A834C(v43, buf);
    sub_1005A1A38((a2 + 400), buf);
    if (v59 == 1)
    {
      sub_1005A16F4(&buf[8]);
      sub_1005A16F4(buf);
    }

    v33 = *(a2 + 48);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = PersonalityInfo::logPrefix(**(a2 + 80));
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = __str;
      }

      else
      {
        v35 = __str->__r_.__value_.__r.__words[0];
      }

      v36 = "out";
      if (*(a2 + 424))
      {
        v36 = "";
      }

      *buf = 136315906;
      *&buf[4] = v34;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v59 = v35;
      v60 = 2080;
      v61 = v36;
      v20 = "#I %s%sRead thumper key for %s from keychain with%s success";
      v21 = v33;
      v22 = 42;
      goto LABEL_59;
    }

    goto LABEL_60;
  }

LABEL_38:
  sub_100597730((a2 + 400));
  sub_1009A9408(v43);
  v23 = Registry::getServiceMap(*(a2 + 56));
  sub_1004419D4(v23, &v40);
  v24 = v40;
  v25 = **(a2 + 80);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&__str->__r_.__value_.__l.__data_;
    v38 = __str->__r_.__value_.__r.__words[2];
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v55 = v38;
  }

  v53 = 0;
  if (SHIBYTE(v55) < 0)
  {
    sub_100005F2C(buf, __dst, *(&__dst + 1));
  }

  else
  {
    *buf = __dst;
    *&buf[16] = v55;
  }

  v56 = 0;
  if (ctu::cf::convert_copy())
  {
    v26 = v53;
    v53 = v56;
    v57 = v26;
    sub_100005978(&v57);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v39 = v53;
  v53 = 0;
  sub_100005978(&v53);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__dst);
  }

  (*(*v24 + 16))(v24, v25 + 24, @"last.dn", v39, v9, 0, 4, 0);
  sub_100005978(&v39);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (v41)
  {
    sub_100004A34(v41);
  }

  v27 = *(a2 + 48);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = PersonalityInfo::logPrefix(**(a2 + 80));
    *buf = 136315394;
    *&buf[4] = v28;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = "#I %s%sCleaned up keychain's Thumper key record";
    v21 = v27;
    v22 = 22;
LABEL_59:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
  }

LABEL_60:
  if ((*(a2 + 424) & 1) == 0)
  {
    sub_1009A6A9C(buf);
    sub_1005A1A38((a2 + 400), buf);
    if (v59 == 1)
    {
      sub_1005A16F4(&buf[8]);
      sub_1005A16F4(buf);
    }

    v29 = *(a2 + 48);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = PersonalityInfo::logPrefix(**(a2 + 80));
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = __str;
      }

      else
      {
        v31 = __str->__r_.__value_.__r.__words[0];
      }

      v32 = "out";
      if (*(a2 + 424))
      {
        v32 = "";
      }

      *buf = 136315906;
      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v59 = v31;
      v60 = 2080;
      v61 = v32;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sGenerated new thumper key for %s with%s success", buf, 0x2Au);
    }
  }

  if (*(a2 + 424) == 1)
  {
    sub_1009A78C8(v44, &__dst);
    if (&__dst != a4)
    {
      *buf = *a4;
      *a4 = __dst;
      *&__dst = 0;
      sub_10002D760(buf);
    }

    sub_10002D760(&__dst);
  }

  sub_100005978(&v42);
  sub_100005978(&v43);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[1]);
  }

  if (SHIBYTE(v50[0]) < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[1]);
  }

  if (SHIBYTE(v47[0]) < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(*&v44[24]);
  }

  if ((v44[23] & 0x80000000) != 0)
  {
    operator delete(*v44);
  }
}

void sub_10059760C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, const void *a18, const void *a19, __int16 a20, char a21, char a22)
{
  sub_100005978(&a18);
  sub_100005978(&a19);
  sub_1005A1B24(&a20);
  sub_10002D760(v22);
  _Unwind_Resume(a1);
}

const void **sub_100597730(const void **result)
{
  if (*(result + 24) == 1)
  {
    v1 = result;
    sub_1005A16F4(result + 1);
    result = sub_1005A16F4(v1);
    *(v1 + 24) = 0;
  }

  return result;
}

const void **sub_100597774(uint64_t a1, void *a2, const void **a3)
{
  result = sub_10112CDBC(a2, (**(a1 + 80) + 24));
  if (result)
  {
    return result;
  }

  v6 = *(a1 + 48);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluating Service Token Expired ================================", buf, 0x16u);
  }

  theDict[0] = 0;
  theDict[1] = 0;
  sub_1005954E4(a1, theDict);
  if (!theDict[0])
  {
    goto LABEL_36;
  }

  Value = CFDictionaryGetValue(theDict[0], @"masterToken");
  if (Value)
  {
    v9 = CFGetTypeID(Value);
    if (v9 == CFStringGetTypeID())
    {
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v33 = *&buf[16];
      *__p = *buf;
      v10 = *(a3 + 23);
      if (v10 >= 0)
      {
        v11 = *(a3 + 23);
      }

      else
      {
        v11 = a3[1];
      }

      v12 = HIBYTE(v33);
      v13 = SHIBYTE(v33);
      if (v33 < 0)
      {
        v12 = __p[1];
      }

      if (v11 == v12)
      {
        if (v10 >= 0)
        {
          v14 = a3;
        }

        else
        {
          v14 = *a3;
        }

        if (v33 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        v16 = memcmp(v14, v15, v11) == 0;
        if ((v13 & 0x80000000) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v16 = 0;
        if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
LABEL_53:
          v25 = "master";
          goto LABEL_38;
        }
      }

      operator delete(__p[0]);
      goto LABEL_53;
    }
  }

  v17 = *(a1 + 232);
  if (v17 && *(v17 + 288) == 1)
  {
    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = *(a3 + 23);
    }

    else
    {
      v19 = a3[1];
    }

    v20 = *(v17 + 287);
    v21 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(v17 + 272);
    }

    if (v19 == v20)
    {
      v22 = (v17 + 264);
      if (v18 >= 0)
      {
        v23 = a3;
      }

      else
      {
        v23 = *a3;
      }

      if (v21 >= 0)
      {
        v24 = v22;
      }

      else
      {
        v24 = *v22;
      }

      v16 = memcmp(v23, v24, v19) == 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
LABEL_36:
    v16 = 1;
  }

  v25 = "individual";
LABEL_38:
  v26 = *(a1 + 48);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = PersonalityInfo::logPrefix(**(a1 + 80));
    v28 = "doesn't";
    *buf = 136315906;
    *&buf[4] = v27;
    *&buf[14] = " ";
    *&buf[12] = 2080;
    if (v16)
    {
      v28 = "";
    }

    *&buf[22] = 2080;
    v36 = v28;
    v37 = 2080;
    v38 = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sExpired token %smatch active %s token", buf, 0x2Au);
  }

  if (v16)
  {
    if (*(a3 + 23) >= 0)
    {
      v29 = a3;
    }

    else
    {
      v29 = *a3;
    }

    sub_100597B4C(a1, 0, 0, 0, 0, v29);
    sub_10034BA70(*(a1 + 96));
    sub_100348348(*(a1 + 96) + 360);
  }

  else
  {
    v30 = *(a1 + 48);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v31;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%sexpired token processing ignored, token is not active already", buf, 0x16u);
    }
  }

  return sub_10001021C(theDict);
}

void sub_100597B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a13);
  _Unwind_Resume(a1);
}

const void **sub_100597B4C(uint64_t a1, const __CFString **a2, const __CFString **a3, const __CFString **a4, _BYTE *a5, const __CFString **a6)
{
  result = sub_1008100FC(a1);
  if (!result)
  {
    return result;
  }

  v46 = 0;
  theDict = 0;
  sub_1005D67F8(*(a1 + 104), 2, (a1 + 120), 0, &v46);
  v45 = 0;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!MutableCopy)
    {
      goto LABEL_6;
    }
  }

  v14 = v45;
  v45 = MutableCopy;
  *&__dst = v14;
  sub_1000296E0(&__dst);
LABEL_6:
  v15 = sub_10080FFF8(a1);
  if (a5)
  {
    v17 = v15;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    v18 = &kCFBooleanTrue;
    if (!*a5)
    {
      v18 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(v45, @"enable", *v18);
  }

  if (a2)
  {
    v19 = v45;
    __src[0] = 0;
    __p[0] = 0;
    if (ctu::cf::convert_copy(__p, a2, 0x8000100, kCFAllocatorDefault, v16))
    {
      v20 = __src[0];
      __src[0] = __p[0];
      *&__dst = v20;
      sub_100005978(&__dst);
    }

    v54 = __src[0];
    __src[0] = 0;
    sub_100005978(__src);
    CFDictionarySetValue(v19, @"impi", v54);
    sub_100005978(&v54);
  }

  if (a3)
  {
    v21 = v45;
    __src[0] = 0;
    __p[0] = 0;
    if (ctu::cf::convert_copy(__p, a3, 0x8000100, kCFAllocatorDefault, v16))
    {
      v22 = __src[0];
      __src[0] = __p[0];
      *&__dst = v22;
      sub_100005978(&__dst);
    }

    v54 = __src[0];
    __src[0] = 0;
    sub_100005978(__src);
    CFDictionarySetValue(v21, @"impu", v54);
    sub_100005978(&v54);
  }

  if (a4)
  {
    v23 = v45;
    __src[0] = 0;
    __p[0] = 0;
    if (ctu::cf::convert_copy(__p, a4, 0x8000100, kCFAllocatorDefault, v16))
    {
      v24 = __src[0];
      __src[0] = __p[0];
      *&__dst = v24;
      sub_100005978(&__dst);
    }

    v54 = __src[0];
    __src[0] = 0;
    sub_100005978(__src);
    CFDictionarySetValue(v23, @"imsi", v54);
    sub_100005978(&v54);
  }

  if (a6)
  {
    v25 = v45;
    __src[0] = 0;
    __p[0] = 0;
    if (ctu::cf::convert_copy(__p, a6, 0x8000100, kCFAllocatorDefault, v16))
    {
      v26 = __src[0];
      __src[0] = __p[0];
      *&__dst = v26;
      sub_100005978(&__dst);
    }

    v54 = __src[0];
    __src[0] = 0;
    sub_100005978(__src);
    CFDictionarySetValue(v25, @"last-expired-token", v54);
    sub_100005978(&v54);
  }

  if (!CFDictionaryGetValue(v45, @"hardware"))
  {
    value = 0;
    sub_10034EBC8(*(a1 + 96), v43);
    if (SHIBYTE(v44) < 0)
    {
      sub_100005F2C(__p, v43[0], v43[1]);
    }

    else
    {
      *__p = *v43;
      v50 = v44;
    }

    v53 = 0;
    if (SHIBYTE(v50) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v52 = v50;
    }

    v54 = 0;
    if (ctu::cf::convert_copy())
    {
      v27 = v53;
      v53 = v54;
      __src[0] = v27;
      sub_100005978(__src);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(__dst);
    }

    value = v53;
    v53 = 0;
    sub_100005978(&v53);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[0]);
    }

    if (value)
    {
      CFDictionaryAddValue(v45, @"hardware", value);
    }

    sub_100005978(&value);
  }

  if (CFDictionaryGetValue(v45, @"deviceCarrierId"))
  {
    goto LABEL_48;
  }

  __src[0] = 0;
  __src[1] = 0;
  v42 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  sub_1005A6380(ServiceMap, __p);
  (**__p[0])(&__dst);
  (*(*__dst + 120))(__src);
  if (*(&__dst + 1))
  {
    sub_100004A34(*(&__dst + 1));
  }

  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  if (SHIBYTE(v42) < 0)
  {
    if (!__src[1])
    {
LABEL_84:
      operator delete(__src[0]);
      goto LABEL_48;
    }

    v31 = v45;
    sub_100005F2C(v38, __src[0], __src[1]);
LABEL_69:
    if (SHIBYTE(v39) < 0)
    {
      sub_100005F2C(__p, v38[0], v38[1]);
    }

    else
    {
      *__p = *v38;
      v50 = v39;
    }

    value = 0;
    if (SHIBYTE(v50) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v52 = v50;
    }

    v53 = 0;
    if (ctu::cf::convert_copy())
    {
      v33 = value;
      value = v53;
      v54 = v33;
      sub_100005978(&v54);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(__dst);
    }

    v34 = value;
    v40 = value;
    value = 0;
    sub_100005978(&value);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionaryAddValue(v31, @"deviceCarrierId", v34);
    sub_100005978(&v40);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38[0]);
    }

    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_84;
  }

  if (HIBYTE(v42))
  {
    v31 = v45;
    *v38 = *__src;
    v39 = v42;
    goto LABEL_69;
  }

LABEL_48:
  if (!theDict || !CFEqual(theDict, v45))
  {
    goto LABEL_64;
  }

  v28 = *(a1 + 104);
  v29 = theDict;
  if (*(a1 + 143) < 0)
  {
    sub_100005F2C(v35, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *v35 = *(a1 + 120);
    v36 = *(a1 + 136);
  }

  v37 = 1;
  v32 = sub_1005D39BC(v28, v29, v35, 1);
  if (v37 == 1 && SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  if ((v32 & 1) == 0)
  {
LABEL_64:
    sub_100810310(a1, 2u, v45, 1, 1);
  }

  sub_1000296E0(&v45);
  return sub_10001021C(&theDict);
}

void sub_100598208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, const void *a35, uint64_t a36, uint64_t a37, const void *a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_100005978(&a38);
  if (a44 < 0)
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

  sub_1000296E0(&a35);
  sub_10001021C((v44 + 8));
  _Unwind_Resume(a1);
}

void sub_10059837C(uint64_t a1)
{
  if (*(a1 + 524))
  {
    v2 = *(a1 + 48);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sgetProvisioning call in progress - bailout", buf, 0x16u);
    }

    return;
  }

  v4 = sub_100347EC0(*(a1 + 96) + 360);
  v5 = *(a1 + 48);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Call Get Provisiong Data Update ================================", buf, 0x16u);
    }

    v19 = 256;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
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
    v20 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v20);
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
LABEL_18:
        (**v16)(buf, v16, **(a1 + 80) + 24);
        (*(**buf + 440))(*buf, 0, &v19);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        *(a1 + 524) = 1;
        return;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_18;
  }

  if (v6)
  {
    v18 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v18;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sRequest throttled, scheduling service refresh", buf, 0x16u);
  }

  sub_1003486A4(*(a1 + 96) + 360);
}

void sub_100598668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_1005986AC(uint64_t a1, void *a2, int a3, void *a4)
{
  if (!sub_10112CDBC(a2, (**(a1 + 80) + 24)))
  {
    v7 = *(a1 + 96);
    v8 = a4[1];
    v24 = *a4;
    v25 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_10034BFF4(v7, a3, &v24);
    if (v25)
    {
      sub_100004A34(v25);
    }

    if (v9)
    {
      v10 = *(a1 + 48);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(**(a1 + 80));
        v12 = sub_100A38E30(a3);
        *buf = 136315650;
        v27 = v11;
        v28 = 2080;
        v29 = " ";
        v30 = 2080;
        v31 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluating Get Provisiong Data Update ==(cause:%s)==============================", buf, 0x20u);
      }

      *(a1 + 524) = 0;
      if ((v9 & 0x100) != 0)
      {
        if (sub_100347D60(*(a1 + 196)) == 1)
        {
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
              if (*(v17 + 64) != 1 || (v18 = *(v17 + 40), v19 = *(v17 + 48), v19 == v18))
              {
                v22 = *(a1 + 48);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = PersonalityInfo::logPrefix(**(a1 + 80));
                  *buf = 136315394;
                  v27 = v23;
                  v28 = 2080;
                  v29 = " ";
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sNo IMS credentials attached to getProvisioning", buf, 0x16u);
                }
              }

              else
              {
                if (!*(a1 + 232))
                {
                  operator new();
                }

                if (v19 == v18)
                {
                  sub_1002030E0();
                }

                sub_10021D170(*(a1 + 232), v18);
                sub_100593BE4(a1, (a1 + 232));
                sub_1005989F8(a1);
              }
            }
          }
        }

        else
        {
          v20 = *(a1 + 48);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = PersonalityInfo::logPrefix(**(a1 + 80));
            *buf = 136315394;
            v27 = v21;
            v28 = 2080;
            v29 = " ";
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sService is not allowed - ignore", buf, 0x16u);
          }

          sub_100348350(*(a1 + 96) + 360);
        }
      }

      sub_1005903E0(a1, 0, 0);
    }
  }
}

void sub_1005989D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1005989F8(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (*(v2 + 256) == 1 && *(v2 + 120) == 1)
  {
    v3 = *(a1 + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(**(a1 + 80));
      v5 = *(a1 + 232);
      v6 = (v5 + 96);
      if (*(v5 + 119) < 0)
      {
        v6 = *v6;
      }

      v9 = 136315650;
      v10 = v4;
      v11 = 2080;
      v12 = " ";
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sAssigned SIP username: %s", &v9, 0x20u);
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      sub_1009FE230(v7, (*(a1 + 232) + 96));
    }
  }

  return sub_100599754(a1);
}

void sub_100598B08(uint64_t a1, void *a2, int a3, void *a4)
{
  if (!sub_10112CDBC(a2, (**(a1 + 80) + 24)))
  {
    v7 = *(a1 + 96);
    v8 = a4[1];
    v27 = *a4;
    v28 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_10034BFF4(v7, a3, &v27);
    if (v28)
    {
      sub_100004A34(v28);
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
      if (v14 != v11 && *(v14 + 32) < 9)
      {
        v17 = *(a1 + 48);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = PersonalityInfo::logPrefix(**(a1 + 80));
          v19 = sub_100A38E30(a3);
          *buf = 136315650;
          v30 = v18;
          v31 = 2080;
          v32 = " ";
          v33 = 2080;
          v34 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluating Set Provisiong Data Update ==(cause:%s)==============================", buf, 0x20u);
        }

        *(a1 + 525) = 0;
        if ((v9 & 0x100) != 0)
        {
          v20 = sub_100347D60(*(a1 + 196));
          v21 = *(a1 + 48);
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          if (v20 == 1)
          {
            if (v22)
            {
              v23 = PersonalityInfo::logPrefix(**(a1 + 80));
              *buf = 136315394;
              v30 = v23;
              v31 = 2080;
              v32 = " ";
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sset provisioning succeed", buf, 0x16u);
            }

            v24 = *(v14 + 40);
            v25 = *(v14 + 48);
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_100598E48(a1 + 248, v24);
            if (v25)
            {
              sub_100004A34(v25);
            }
          }

          else
          {
            if (v22)
            {
              v26 = PersonalityInfo::logPrefix(**(a1 + 80));
              *buf = 136315394;
              v30 = v26;
              v31 = 2080;
              v32 = " ";
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sService is not allowed - ignore", buf, 0x16u);
            }

            sub_100348350(*(a1 + 96) + 360);
          }
        }

        sub_1005903E0(a1, 0, 0);
      }

      else
      {
LABEL_14:
        v15 = *(a1 + 48);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = PersonalityInfo::logPrefix(**(a1 + 80));
          *buf = 136315394;
          v30 = v16;
          v31 = 2080;
          v32 = " ";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sset provisioning do not have iCloudVoWiFi part - keep waiting", buf, 0x16u);
        }
      }
    }
  }
}

void sub_100598E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100598E48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136) == 1)
  {
    sub_10012BF3C((a1 + 8), (a2 + 8));
    sub_10012BF3C((a1 + 40), (a2 + 40));
    sub_10012BF3C((a1 + 72), (a2 + 72));
    sub_10012BF3C((a1 + 104), (a2 + 104));
  }

  else
  {
    sub_1005A1BB8(a1, a2);
    *(a1 + 136) = 1;
  }

  return a1;
}

uint64_t sub_100598EC4(uint64_t a1, void **a2, void **a3)
{
  v17 = 0;
  v18 = 0;
  sub_1005DC42C(*(a1 + 104), &v17);
  if (!v17 || (v5 = sub_100007A6C(v17 + 144, a2), v6 = v5, v17 + 152 == v5) || *(v5 + 56) + 96 == sub_100007A6C(*(v5 + 56) + 88, a3))
  {
    v13 = 0x1FFFFFFFFLL;
  }

  else
  {
    v19 = 0uLL;
    v20 = 0;
    ctu::cf::assign();
    v15 = v19;
    v16 = v20;
    v7 = *(v6 + 56);
    v8 = SHIBYTE(v20);
    v9 = v19;
    if (v20 >= 0)
    {
      v10 = &v15;
    }

    else
    {
      v10 = v19;
    }

    v11 = atoi(v10);
    if (*(v7 + 9) == 1)
    {
      v12 = *(v7 + 8) << 32;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 | v11;
    if (v8 < 0)
    {
      operator delete(v9);
    }
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  return v13;
}

void sub_100598FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
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

BOOL sub_10059900C(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  if (!CFDictionaryGetValue(theDict, @"primarySubscriberId"))
  {
    v24 = *(a1 + 48);
    result = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v26 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v26;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v27 = "#I %s%sNo subscriber ID, secondary entitlement contoller cannot be provisioned";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v27, buf, 0x16u);
    return 0;
  }

  if (CFDictionaryGetValue(theDict, @"masterToken"))
  {
    v6 = *(a1 + 48);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v7 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v8 = "#I %s%sMaster service token found";
    goto LABEL_5;
  }

  if (!a3 || !CFDictionaryGetValue(a3, @"token"))
  {
    v24 = *(a1 + 48);
    result = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v29 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v29;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v27 = "#I %s%sNo service-token found for the device, secondary entitlement controller cannot be provisioned";
    goto LABEL_29;
  }

  v6 = *(a1 + 48);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v28 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v28;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v8 = "#I %s%sService token found";
LABEL_5:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);
  }

LABEL_6:
  Value = CFDictionaryGetValue(theDict, @"CBRoot");
  if (!Value)
  {
    return 0;
  }

  sub_100599540(a1, Value, theDict);
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  __p = *buf;
  v32 = buf[23];
  CarrierEntitlements::setSubscriberId();
  if (v32 < 0)
  {
    operator delete(__p);
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  __pa = *buf;
  v33 = buf[23];
  buf[0] = 0;
  buf[8] = 0;
  CarrierEntitlements::setServiceToken();
  if (v33 < 0)
  {
    operator delete(__pa);
  }

  v10 = *(a1 + 48);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sfCBRoot (basic) ready ->indicate", buf, 0x16u);
  }

  sub_100591FC4(a1);
  v12 = *(a1 + 48);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sfCBRoot ready ->enable personality", buf, 0x16u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  if (!v20)
  {
    v22 = 0;
    goto LABEL_32;
  }

  v22 = v20[3];
  v21 = v20[4];
  if (!v21)
  {
LABEL_32:
    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    goto LABEL_33;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v15);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  v23 = 0;
LABEL_33:
  (*(*v22 + 64))(v22, **(a1 + 80) + 24, 1);
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  return 1;
}

void sub_1005994DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100599540(uint64_t a1, const __CFDictionary *cf, CFDictionaryRef theDict)
{
  v19 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = CFDictionaryGetValue(theDict, @"imsCommonCredentials");
  v7 = v6;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 == CFDictionaryGetTypeID())
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      sub_1006113E8(v17, v7);
      v9 = CFDictionaryGetValue(cf, @"CarrierEntitlements");
      v10 = v9;
      if (v9)
      {
        v11 = CFGetTypeID(v9);
        if (v11 == CFDictionaryGetTypeID())
        {
          value = 0;
          sub_10059BA78(v10, v17, &value);
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, cf);
          CFDictionarySetValue(MutableCopy, @"CarrierEntitlements", value);
          sub_100010180(&v14, &MutableCopy);
          v12 = v19;
          v19 = v14;
          v20 = v12;
          v14 = 0;
          sub_10001021C(&v20);
          sub_10001021C(&v14);
          sub_1000296E0(&MutableCopy);
          sub_10001021C(&value);
        }
      }

      sub_100220C2C(v17);
    }
  }

  std::mutex::lock((a1 + 432));
  sub_10059B8C8(a1, v19);
  std::mutex::unlock((a1 + 432));
  return sub_10001021C(&v19);
}

void sub_1005996EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  sub_1000296E0(va);
  sub_10001021C(va1);
  sub_100220C2C(va2);
  sub_10001021C((v3 - 64));
  _Unwind_Resume(a1);
}

const void **sub_100599754(uint64_t a1)
{
  theDict[0] = 0;
  theDict[1] = 0;
  sub_1005954E4(a1, theDict);
  if (!theDict[0])
  {
    return sub_10001021C(theDict);
  }

  v20 = 0;
  v21 = 0uLL;
  __p = 0;
  v18 = 0;
  v19 = 0;
  CTGetRootVersionString();
  Value = CFDictionaryGetValue(theDict[0], @"CoreTelephonyVersion");
  v3 = Value;
  if (!Value)
  {
    goto LABEL_6;
  }

  v4 = CFGetTypeID(Value);
  if (v4 != CFStringGetTypeID())
  {
    v3 = 0;
LABEL_6:
    v5 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *(&v21 + 7) = *&buf[15];
  v3 = *buf;
  v5 = *&buf[8];
  v6 = buf[23];
  v20 = *buf;
  *&v21 = *&buf[8];
  HIBYTE(v21) = buf[23];
LABEL_7:
  v7 = v6;
  if ((v6 & 0x80u) == 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = HIBYTE(v19);
  v10 = HIBYTE(v19);
  if (v19 < 0)
  {
    v9 = v18;
  }

  if (v8 != v9 || (v7 >= 0 ? (v11 = &v20) : (v11 = v3), memcmp(v11, &__p, v8)))
  {
    v12 = *(a1 + 48);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(**(a1 + 80));
      v14 = &v20;
      if (v7 < 0)
      {
        v14 = v3;
      }

      p_p = &__p;
      if (v19 < 0)
      {
        p_p = __p;
      }

      *buf = 136315906;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v24 = v14;
      v25 = 2080;
      v26 = p_p;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sCT version mismatch. primary: %s, secondary: %s", buf, 0x2Au);
      v10 = HIBYTE(v19);
    }
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

  return sub_10001021C(theDict);
}

void sub_100599968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_10001021C(&a18);
  _Unwind_Resume(a1);
}

void sub_1005999D0(CFDictionaryRef theDict@<X1>, uint64_t a2@<X0>, const void **a3@<X8>)
{
  *a3 = 0;
  Value = CFDictionaryGetValue(theDict, @"cfgSlots");
  v7 = Value;
  if (Value)
  {
    Count = CFArrayGetCount(Value);
    v9 = Count;
    if (Count)
    {
      v10 = *(a2 + 48);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(**(a2 + 80));
        v12 = (a2 + 120);
        if (*(a2 + 143) < 0)
        {
          v12 = *v12;
        }

        *buf = 136315906;
        *&buf[4] = v11;
        v72 = 2080;
        v73 = " ";
        v74 = 2080;
        v75 = v12;
        v76 = 1024;
        v77 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sAccount %s have %d data slot(s)", buf, 0x26u);
      }

      v67 = 0;
      theDicta = 0;
      v13 = (a2 + 120);
      sub_1005D67F8(*(a2 + 104), 1, (a2 + 120), 0, &v67);
      v14 = theDicta;
      if (theDicta)
      {
        v15 = *(a2 + 104);
        if (*(a2 + 143) < 0)
        {
          sub_100005F2C(__p, *(a2 + 120), *(a2 + 128));
        }

        else
        {
          *__p = *v13;
          v65 = *(a2 + 136);
        }

        v66 = 1;
        v22 = sub_1005D39BC(v15, v14, __p, 0);
        if (v66 == 1 && SHIBYTE(v65) < 0)
        {
          operator delete(__p[0]);
        }

        if (v22)
        {
          v23 = CFDictionaryGetValue(theDicta, @"assignments");
          v24 = v23;
          if (v23)
          {
            v25 = CFDictionaryGetCount(v23);
            if (v25)
            {
              keys = 0;
              v62 = 0;
              v63 = 0;
              sub_100222418(&keys, v25);
              values = 0;
              v59 = 0;
              v60 = 0;
              sub_10007D780(&values, v25);
              CFDictionaryGetKeysAndValues(v24, keys, values);
              if (v25 >= 1)
              {
                v26 = 0;
                while (1)
                {
                  v27 = values[v26];
                  if (v27)
                  {
                    v28 = sub_1008100FC(a2);
                    if (CFEqual(v27, v28))
                    {
                      break;
                    }
                  }

                  if (v25 == ++v26)
                  {
                    goto LABEL_78;
                  }
                }

                if (!sub_10059A484(a2))
                {
                  v31 = CFDictionaryGetValue(theDict, @"primaryDeviceId");
                  if (v31)
                  {
                    (*(**(a2 + 104) + 24))(*(a2 + 104), v31, **(a2 + 80) + 24);
                    *(a2 + 527) = 1;
                  }

                  else
                  {
                    v32 = *(a2 + 48);
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      v33 = PersonalityInfo::logPrefix(**(a2 + 80));
                      v34 = CSIBOOLAsString(theDict != 0);
                      *buf = 136315650;
                      *&buf[4] = v33;
                      v72 = 2080;
                      v73 = " ";
                      v74 = 2080;
                      v75 = v34;
                      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%sNo primary deviceId. Valid mainCfg: %s", buf, 0x20u);
                    }
                  }
                }

                if (*(a2 + 560))
                {
                  for (i = 0; i < CFArrayGetCount(v7); ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
                    if (ValueAtIndex)
                    {
                      v57 = 0;
                      v37 = *(a2 + 560);
                      v54 = 0;
                      v55 = 0;
                      v53 = 0;
                      sub_100034C50(&v53, *v37, v37[1], v37[1] - *v37);
                      sub_1009F8218(ValueAtIndex, &v53, &cf);
                      *&v69 = cf;
                      if (cf)
                      {
                        CFRetain(cf);
                      }

                      v51[0] = 0;
                      *buf = 0;
                      sub_100010180(buf, &v69);
                      if (*buf)
                      {
                        sub_1000676D4(v51, buf);
                      }

                      sub_10001021C(buf);
                      v57 = v51[0];
                      v51[0] = 0;
                      sub_10001021C(v51);
                      sub_10000A1EC(&v69);
                      sub_10000A1EC(&cf);
                      if (v53)
                      {
                        v54 = v53;
                        operator delete(v53);
                      }

                      if (v57)
                      {
                        v38 = CFDictionaryGetValue(v57, @"slotId");
                        if (v38)
                        {
                          if (CFEqual(keys[v26], v38))
                          {
                            sub_1000676D4(a3, &v57);
                            v43 = *(a2 + 48);
                            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                            {
                              v44 = PersonalityInfo::logPrefix(**(a2 + 80));
                              v69 = 0uLL;
                              v70 = 0;
                              ctu::cf::assign();
                              *v51 = v69;
                              v52 = v70;
                              v45 = v69;
                              if (v70 >= 0)
                              {
                                v45 = v51;
                              }

                              *buf = 136315650;
                              *&buf[4] = v44;
                              v72 = 2080;
                              v73 = " ";
                              v74 = 2080;
                              v75 = v45;
                              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%sMy slot %s", buf, 0x20u);
                              if (SHIBYTE(v52) < 0)
                              {
                                operator delete(v51[0]);
                              }
                            }

                            sub_10001021C(&v57);
                            break;
                          }
                        }
                      }

                      sub_10001021C(&v57);
                    }

                    else
                    {
                      v39 = *(a2 + 48);
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                      {
                        v40 = PersonalityInfo::logPrefix(**(a2 + 80));
                        *buf = 136315650;
                        *&buf[4] = v40;
                        v72 = 2080;
                        v73 = " ";
                        v74 = 1024;
                        LODWORD(v75) = i;
                        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sIncorrect slot %d data format", buf, 0x1Cu);
                      }
                    }
                  }

                  if (!*a3)
                  {
                    v46 = *(a2 + 48);
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                    {
                      v47 = PersonalityInfo::logPrefix(**(a2 + 80));
                      *buf = 136315394;
                      *&buf[4] = v47;
                      v72 = 2080;
                      v73 = " ";
                      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I %s%sIncorrect individual key given, request new one?", buf, 0x16u);
                    }

                    v48 = CFDictionaryGetValue(theDict, @"primaryDeviceId");
                    if (v48)
                    {
                      (*(**(a2 + 104) + 24))(*(a2 + 104), v48, **(a2 + 80) + 24);
                      *(a2 + 527) = 1;
                    }
                  }
                }

                else
                {
                  v41 = *(a2 + 48);
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                  {
                    v42 = PersonalityInfo::logPrefix(**(a2 + 80));
                    *buf = 136315394;
                    *&buf[4] = v42;
                    v72 = 2080;
                    v73 = " ";
                    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%sNo individual secret key given - bailout", buf, 0x16u);
                  }
                }

                if (v25 == v26)
                {
LABEL_78:
                  v49 = *(a2 + 48);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    v50 = PersonalityInfo::logPrefix(**(a2 + 80));
                    *buf = 136315394;
                    *&buf[4] = v50;
                    v72 = 2080;
                    v73 = " ";
                    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I %s%sImpossible! No data slot for us - bailout", buf, 0x16u);
                  }
                }
              }

              if (values)
              {
                v59 = values;
                operator delete(values);
              }

              if (keys)
              {
                v62 = keys;
                operator delete(keys);
              }
            }

            goto LABEL_40;
          }

          v19 = *(a2 + 48);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v30 = PersonalityInfo::logPrefix(**(a2 + 80));
            if (*(a2 + 143) < 0)
            {
              v13 = *v13;
            }

            *buf = 136315650;
            *&buf[4] = v30;
            v72 = 2080;
            v73 = " ";
            v74 = 2080;
            v75 = v13;
            v21 = "#I %s%sImpossible! No slots in assigments for account %s in storage";
LABEL_39:
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 0x20u);
          }
        }

        else
        {
          v19 = *(a2 + 48);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v29 = PersonalityInfo::logPrefix(**(a2 + 80));
            if (*(a2 + 143) < 0)
            {
              v13 = *v13;
            }

            *buf = 136315650;
            *&buf[4] = v29;
            v72 = 2080;
            v73 = " ";
            v74 = 2080;
            v75 = v13;
            v21 = "#I %s%sImpossible! Schema version mismatch for account %s";
            goto LABEL_39;
          }
        }
      }

      else
      {
        v19 = *(a2 + 48);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = PersonalityInfo::logPrefix(**(a2 + 80));
          if (*(a2 + 143) < 0)
          {
            v13 = *v13;
          }

          *buf = 136315650;
          *&buf[4] = v20;
          v72 = 2080;
          v73 = " ";
          v74 = 2080;
          v75 = v13;
          v21 = "#I %s%sImpossible! No assigments for account %s in storage";
          goto LABEL_39;
        }
      }

LABEL_40:
      sub_10001021C(&theDicta);
      return;
    }
  }

  v16 = *(a2 + 48);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = PersonalityInfo::logPrefix(**(a2 + 80));
    v18 = (a2 + 120);
    if (*(a2 + 143) < 0)
    {
      v18 = *v18;
    }

    *buf = 136315650;
    *&buf[4] = v17;
    v72 = 2080;
    v73 = " ";
    v74 = 2080;
    v75 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sAccount %s do not have data slots - bailout", buf, 0x20u);
  }
}

void sub_10059A340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, int a18, const void *a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, char a34, const void *a35)
{
  if (*(v36 - 145) < 0)
  {
    operator delete(*(v36 - 168));
  }

  sub_10001021C(&a19);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  sub_10001021C(&a35);
  sub_10001021C(v35);
  _Unwind_Resume(a1);
}

BOOL sub_10059A484(uint64_t a1)
{
  if (*(a1 + 560))
  {
    return 1;
  }

  v14 = 0;
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
  *buf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, buf);
  if (!v9)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
LABEL_10:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
LABEL_11:
  (*(*v11 + 24))(&v13, v11, **(a1 + 80) + 24, @"individualKey", kPhoneServicesWalletDomain, 0, 4);
  sub_1001B1A54(&v14, &v13);
  sub_10000A1EC(&v13);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (v14)
  {
    operator new();
  }

  sub_10002D760(&v14);
  return *(a1 + 560) != 0;
}

uint64_t sub_10059A7A0(uint64_t a1, uint64_t a2)
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
  *v17 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v17);
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
  (*(*v12 + 16))(v12, **(a1 + 80) + 24, @"individualKey", a2, kPhoneServicesWalletDomain, 0, 4, 0);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v14 = *(a1 + 48);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 80));
    *v17 = 136315394;
    *&v17[4] = v15;
    *&v17[12] = 2080;
    *&v17[14] = " ";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%ssaved individual key", v17, 0x16u);
  }

  *v17 = off_101E61F80;
  *&v17[8] = a1;
  v18 = v17;
  logger::CFTypeRefLogger();
  return sub_100007E44(v17);
}

BOOL sub_10059A9F0(uint64_t a1, uint64_t a2)
{
  if (!a2 || !sub_10059A484(a1) || !*(a1 + 560))
  {
    return 0;
  }

  ctu::cf::assign();
  v3 = *(a1 + 560);
  return *(v3 + 8) == *v3 && memcmp(0, *v3, 0) == 0;
}

void sub_10059AA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10059AAB0(uint64_t a1, uint64_t a2)
{
  sub_10012BF3C(a1, a2);
  sub_10012BF3C((a1 + 32), (a2 + 32));
  sub_10012BF3C((a1 + 64), (a2 + 64));
  sub_10012BF3C((a1 + 96), (a2 + 96));
  sub_10012BF3C((a1 + 128), (a2 + 128));
  sub_10012BF3C((a1 + 160), (a2 + 160));
  sub_10012BF3C((a1 + 192), (a2 + 192));
  sub_10012BF3C((a1 + 224), (a2 + 224));
  return a1;
}

void sub_10059AB30(void *a1@<X8>)
{
  *a1 = 0;
  v1 = 0;
  v2 = 0;
  sub_1009A78E4();
}

void sub_10059AECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_100005978(&a13);
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_100005978(v22);
  _Unwind_Resume(a1);
}

const __CFData *sub_10059AF40@<X0>(CFDictionaryRef theDict@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  result = CFDictionaryGetValue(theDict, @"ePdgCACert");
  v3 = result;
  if (result)
  {
    v4 = CFGetTypeID(result);
    result = CFDataGetTypeID();
    if (v4 == result)
    {
      BytePtr = CFDataGetBytePtr(v3);
      v6 = 0;
      v7 = 0;
      sub_10000501C(&__p, BytePtr);
      sub_1009A78E4();
    }
  }

  return result;
}

void sub_10059B1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_100005978(v22);
  _Unwind_Resume(a1);
}

const void **sub_10059B230@<X0>(CFDictionaryRef theDict@<X1>, uint64_t a2@<X0>, const void *a3@<X2>, const void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  theDicta = 0;
  v11 = CFDictionaryGetValue(theDict, @"CBRoot");
  if (v11)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v11);
    v13 = theDicta;
    theDicta = MutableCopy;
    *buf = v13;
    sub_1000296E0(buf);
    v14 = CFDictionaryGetValue(v11, @"CarrierEntitlements");
    if (v14)
    {
      value = 0;
      sub_10059BA78(v14, a5, &value);
      if (value)
      {
        CFDictionarySetValue(theDicta, @"CarrierEntitlements", value);
      }

      else
      {
        v17 = *(a2 + 48);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = PersonalityInfo::logPrefix(**(a2 + 80));
          v40 = 0uLL;
          v41 = 0;
          ctu::cf::assign();
          *__p = v40;
          v37 = v41;
          v19 = v40;
          if (v41 >= 0)
          {
            v19 = __p;
          }

          *buf = 136315650;
          *&buf[4] = v18;
          v43 = 2080;
          v44 = " ";
          v45 = 2080;
          v46 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sfailed to create %s override ", buf, 0x20u);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      sub_10001021C(&value);
    }

    v20 = kIWLANSettingsKey;
    v21 = CFDictionaryGetValue(v11, kIWLANSettingsKey);
    if (v21)
    {
      value = 0;
      sub_10059BCD4(v21, a2, a3, a4, a5, &value);
      if (value)
      {
        CFDictionarySetValue(theDicta, v20, value);
      }

      else
      {
        v25 = *(a2 + 48);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = PersonalityInfo::logPrefix(**(a2 + 80));
          v40 = 0uLL;
          v41 = 0;
          ctu::cf::assign();
          *__p = v40;
          v37 = v41;
          v27 = v40;
          if (v41 >= 0)
          {
            v27 = __p;
          }

          *buf = 136315650;
          *&buf[4] = v26;
          v43 = 2080;
          v44 = " ";
          v45 = 2080;
          v46 = v27;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%sfailed to create %s override ", buf, 0x20u);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      sub_10001021C(&value);
    }

    else
    {
      v22 = *(a2 + 48);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = PersonalityInfo::logPrefix(**(a2 + 80));
        v40 = 0uLL;
        v41 = 0;
        ctu::cf::assign();
        *__p = v40;
        v37 = v41;
        v24 = v40;
        if (v41 >= 0)
        {
          v24 = __p;
        }

        *buf = 136315650;
        *&buf[4] = v23;
        v43 = 2080;
        v44 = " ";
        v45 = 2080;
        v46 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%smissing %s in CB", buf, 0x20u);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v28 = CFDictionaryGetValue(v11, @"IMSConfig");
    if (v28)
    {
      value = 0;
      sub_10059CAFC(a2, v28, &value);
      if (value)
      {
        CFDictionarySetValue(theDicta, @"IMSConfig", value);
      }

      else
      {
        v32 = *(a2 + 48);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = PersonalityInfo::logPrefix(**(a2 + 80));
          v40 = 0uLL;
          v41 = 0;
          ctu::cf::assign();
          *__p = v40;
          v37 = v41;
          v34 = __p;
          if (v41 < 0)
          {
            v34 = v40;
          }

          *buf = 136315650;
          *&buf[4] = v33;
          v43 = 2080;
          v44 = " ";
          v45 = 2080;
          v46 = v34;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%sfailed to create %s override", buf, 0x20u);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      sub_10001021C(&value);
    }

    else
    {
      v29 = *(a2 + 48);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = PersonalityInfo::logPrefix(**(a2 + 80));
        v40 = 0uLL;
        v41 = 0;
        ctu::cf::assign();
        *__p = v40;
        v37 = v41;
        v31 = __p;
        if (v41 < 0)
        {
          v31 = v40;
        }

        *buf = 136315650;
        *&buf[4] = v30;
        v43 = 2080;
        v44 = " ";
        v45 = 2080;
        v46 = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%smissing %s in CB", buf, 0x20u);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else
  {
    v15 = *(a2 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a2 + 80));
      *buf = 136315394;
      *&buf[4] = v16;
      v43 = 2080;
      v44 = " ";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%smissing CB in icloud - bailout", buf, 0x16u);
    }
  }

  sub_100010180(a6, &theDicta);
  return sub_1000296E0(&theDicta);
}

void sub_10059B82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a12);
  sub_1000296E0(&a13);
  _Unwind_Resume(a1);
}

const void **sub_10059B8C8(uint64_t a1, CFDictionaryRef theDict)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  v3 = *(a1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 80));
    ctu::cf_to_xpc(&object, MutableCopy, v5);
    xpc::object::to_string(__p, &object);
    if (v11 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v4;
    v14 = 2080;
    v15 = " ";
    v16 = 2080;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sSetup basic carrier bundle dictionary:\n%s", buf, 0x20u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(object);
  }

  sub_100010180(__p, &MutableCopy);
  v7 = (a1 + 512);
  if ((a1 + 512) != __p)
  {
    *buf = *v7;
    *v7 = __p[0];
    __p[0] = 0;
    sub_10001021C(buf);
  }

  sub_10001021C(__p);
  return sub_1000296E0(&MutableCopy);
}

void sub_10059BA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10059BA78@<X0>(const void *a1@<X1>, uint64_t a2@<X2>, void **a3@<X8>)
{
  *a3 = 0;
  result = sub_1000101E4(a3, a1);
  if (*(a2 + 216) == 1)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1);
    v13 = MutableCopy;
    if (*(a2 + 215) < 0)
    {
      sub_100005F2C(v10, *(a2 + 192), *(a2 + 200));
    }

    else
    {
      *v10 = *(a2 + 192);
      v11 = *(a2 + 208);
    }

    if (SHIBYTE(v11) < 0)
    {
      sub_100005F2C(__dst, v10[0], v10[1]);
    }

    else
    {
      *__dst = *v10;
      v16 = v11;
    }

    v14 = 0;
    if (SHIBYTE(v16) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v18 = v16;
    }

    v19 = 0;
    if (ctu::cf::convert_copy())
    {
      v8 = v14;
      v14 = v19;
      v20 = v8;
      sub_100005978(&v20);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = v14;
    v12 = v14;
    v14 = 0;
    sub_100005978(&v14);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__dst[0]);
    }

    CFDictionarySetValue(MutableCopy, @"ServerAddress", v9);
    sub_100005978(&v12);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }

    sub_100010180(__dst, &v13);
    if (__dst != a3)
    {
      __p[0] = *a3;
      *a3 = __dst[0];
      __dst[0] = 0;
      sub_10001021C(__p);
    }

    sub_10001021C(__dst);
    return sub_1000296E0(&v13);
  }

  return result;
}

void sub_10059BC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

  sub_1000296E0(&a17);
  sub_10001021C(v31);
  _Unwind_Resume(a1);
}

const void **sub_10059BCD4@<X0>(CFDictionaryRef theDict@<X1>, uint64_t a2@<X0>, const void *a3@<X2>, const void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  v12 = CFDictionaryGetValue(MutableCopy, @"IKE");
  v74 = 0;
  if (v12)
  {
    Mutable = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v12);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v73 = 0;
  v74 = Mutable;
  if (a3)
  {
    *buf = a3;
    sub_10021D11C(&v73, buf);
    if (v73)
    {
      goto LABEL_25;
    }
  }

  v14 = *(a2 + 232);
  if (*(v14 + 320) != 1)
  {
    goto LABEL_35;
  }

  if (*(v14 + 319) < 0)
  {
    sub_100005F2C(__p, *(v14 + 296), *(v14 + 304));
  }

  else
  {
    v15 = v14 + 296;
    *__p = *v15;
    v71 = *(v15 + 16);
  }

  if (SHIBYTE(v71) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v78 = v71;
  }

  v76 = 0;
  if (SHIBYTE(v78) < 0)
  {
    sub_100005F2C(buf, __dst, *(&__dst + 1));
  }

  else
  {
    *buf = __dst;
    *&buf[16] = v78;
  }

  v79 = 0;
  if (ctu::cf::convert_copy())
  {
    v16 = v76;
    v76 = v79;
    v80 = v16;
    sub_100005978(&v80);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v72 = v76;
  v76 = 0;
  sub_100005978(&v76);
  if (SHIBYTE(v78) < 0)
  {
    operator delete(__dst);
  }

  v17 = v72;
  *buf = v73;
  v72 = 0;
  v73 = v17;
  sub_100005978(buf);
  sub_100005978(&v72);
  if (SHIBYTE(v71) < 0)
  {
    operator delete(__p[0]);
  }

  if (v73)
  {
LABEL_25:
    v18 = CFDictionaryGetValue(v74, @"LocalIdentifier");
    v19 = v18;
    if (v18)
    {
      v20 = CFGetTypeID(v18);
      if (v20 == CFStringGetTypeID())
      {
        *&__dst = 0;
        v21 = CFStringCreateMutableCopy(0, 0, v19);
        *&__dst = v21;
        v69 = v21;
        if (v21)
        {
          CFRetain(v21);
        }

        v64 = _NSConcreteStackBlock;
        v65 = 1174405120;
        v66 = sub_10059DC04;
        v67 = &unk_101E61838;
        v68 = v73;
        if (v73)
        {
          CFRetain(v73);
        }

        v22 = DataUtils::replaceStringHolder();
        sub_100305E28(&v69);
        if (v22)
        {
          sub_100060DE8(&v80, &__dst);
          v23 = v73;
          v73 = v80;
          v80 = 0;
          *buf = v23;
          sub_100005978(buf);
          sub_100005978(&v80);
        }

        sub_100005978(&v68);
        sub_100305E28(&__dst);
      }
    }

    CFDictionarySetValue(v74, @"LocalIdentifier", v73);
  }

  else
  {
LABEL_35:
    v24 = *(a2 + 48);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = PersonalityInfo::logPrefix(**(a2 + 80));
      *buf = 136315394;
      *&buf[4] = v25;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sNo LocalIdentifier created", buf, 0x16u);
    }
  }

  v26 = *(a2 + 232);
  if (*(v26 + 88) != 1)
  {
    goto LABEL_54;
  }

  v27 = v74;
  if (*(v26 + 87) < 0)
  {
    sub_100005F2C(v62, *(v26 + 64), *(v26 + 72));
  }

  else
  {
    *v62 = *(v26 + 64);
    v63 = *(v26 + 80);
  }

  if (SHIBYTE(v63) < 0)
  {
    sub_100005F2C(&__dst, v62[0], v62[1]);
  }

  else
  {
    __dst = *v62;
    v78 = v63;
  }

  v76 = 0;
  if (SHIBYTE(v78) < 0)
  {
    sub_100005F2C(buf, __dst, *(&__dst + 1));
  }

  else
  {
    *buf = __dst;
    *&buf[16] = v78;
  }

  v79 = 0;
  if (ctu::cf::convert_copy())
  {
    v28 = v76;
    v76 = v79;
    v80 = v28;
    sub_100005978(&v80);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v72 = v76;
  v76 = 0;
  sub_100005978(&v76);
  if (SHIBYTE(v78) < 0)
  {
    operator delete(__dst);
  }

  CFDictionarySetValue(v27, @"RemoteIdentifier", v72);
  sub_100005978(&v72);
  if ((SHIBYTE(v63) & 0x80000000) == 0)
  {
LABEL_54:
    if (!a3)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  operator delete(v62[0]);
  if (a3)
  {
LABEL_55:
    CFDictionarySetValue(v74, @"LocalCertificate", a3);
  }

LABEL_56:
  v29 = *(a2 + 232);
  if (*(v29 + 352) == 1)
  {
    v30 = v74;
    if (*(v29 + 351) < 0)
    {
      sub_100005F2C(v60, *(v29 + 328), *(v29 + 336));
    }

    else
    {
      v31 = v29 + 328;
      *v60 = *v31;
      v61 = *(v31 + 16);
    }

    if (SHIBYTE(v61) < 0)
    {
      sub_100005F2C(&__dst, v60[0], v60[1]);
    }

    else
    {
      __dst = *v60;
      v78 = v61;
    }

    v76 = 0;
    if (SHIBYTE(v78) < 0)
    {
      sub_100005F2C(buf, __dst, *(&__dst + 1));
    }

    else
    {
      *buf = __dst;
      *&buf[16] = v78;
    }

    v79 = 0;
    if (ctu::cf::convert_copy())
    {
      v32 = v76;
      v76 = v79;
      v80 = v32;
      sub_100005978(&v80);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v72 = v76;
    v76 = 0;
    sub_100005978(&v76);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(__dst);
    }

    CFDictionarySetValue(v30, @"Username", v72);
    sub_100005978(&v72);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(v60[0]);
    }

    v29 = *(a2 + 232);
  }

  if (*(v29 + 384) != 1)
  {
    goto LABEL_94;
  }

  v33 = v74;
  if (*(v29 + 383) < 0)
  {
    sub_100005F2C(v58, *(v29 + 360), *(v29 + 368));
  }

  else
  {
    v34 = v29 + 360;
    *v58 = *v34;
    v59 = *(v34 + 16);
  }

  if (SHIBYTE(v59) < 0)
  {
    sub_100005F2C(&__dst, v58[0], v58[1]);
  }

  else
  {
    __dst = *v58;
    v78 = v59;
  }

  v76 = 0;
  if (SHIBYTE(v78) < 0)
  {
    sub_100005F2C(buf, __dst, *(&__dst + 1));
  }

  else
  {
    *buf = __dst;
    *&buf[16] = v78;
  }

  v79 = 0;
  if (ctu::cf::convert_copy())
  {
    v35 = v76;
    v76 = v79;
    v80 = v35;
    sub_100005978(&v80);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v72 = v76;
  v76 = 0;
  sub_100005978(&v76);
  if (SHIBYTE(v78) < 0)
  {
    operator delete(__dst);
  }

  CFDictionarySetValue(v33, @"Password", v72);
  sub_100005978(&v72);
  if ((SHIBYTE(v59) & 0x80000000) == 0)
  {
LABEL_94:
    if (!a4)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  operator delete(v58[0]);
  if (a4)
  {
LABEL_95:
    CFDictionarySetValue(v74, @"RemoteCertificateAuthorityName", a4);
  }

LABEL_96:
  if (*(a5 + 184) == 1)
  {
    v36 = CFDictionaryGetValue(theDict, @"DoNotUseEPDGFromEntitlements");
    v37 = v36;
    buf[0] = 0;
    if (v36)
    {
      v38 = CFGetTypeID(v36);
      if (v38 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v37, v39);
      }
    }

    if ((buf[0] & 1) == 0)
    {
      v72 = 0;
      if (*(a5 + 183) < 0)
      {
        sub_100005F2C(v56, *(a5 + 160), *(a5 + 168));
      }

      else
      {
        *v56 = *(a5 + 160);
        v57 = *(a5 + 176);
      }

      if (SHIBYTE(v57) < 0)
      {
        sub_100005F2C(&__dst, v56[0], v56[1]);
      }

      else
      {
        __dst = *v56;
        v78 = v57;
      }

      v76 = 0;
      if (SHIBYTE(v78) < 0)
      {
        sub_100005F2C(buf, __dst, *(&__dst + 1));
      }

      else
      {
        *buf = __dst;
        *&buf[16] = v78;
      }

      v79 = 0;
      if (ctu::cf::convert_copy())
      {
        v40 = v76;
        v76 = v79;
        v80 = v40;
        sub_100005978(&v80);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v72 = v76;
      v76 = 0;
      sub_100005978(&v76);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(v57) < 0)
      {
        operator delete(v56[0]);
      }

      CFDictionarySetValue(v74, @"RemoteAddress", v72);
      CFDictionarySetValue(v74, @"RemoteCertificateHostname", v72);
      sub_100005978(&v72);
    }
  }

  if (*(a5 + 120) == 1)
  {
    v41 = CFDictionaryGetValue(v74, @"Proposals");
    v42 = v41;
    if (v41)
    {
      v43 = CFGetTypeID(v41);
      if (v43 == CFArrayGetTypeID())
      {
        v44 = CFArrayCreateMutableCopy(0, 0, v42);
        v45 = 0;
        v72 = v44;
        while (v45 < CFArrayGetCount(v44))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v72, v45);
          v47 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v48 = CFGetTypeID(ValueAtIndex);
            if (v48 == CFDictionaryGetTypeID())
            {
              v55 = 0;
              v49 = CFDictionaryCreateMutableCopy(0, 0, v47);
              v55 = v49;
              if (*(a5 + 119) < 0)
              {
                sub_100005F2C(v52, *(a5 + 96), *(a5 + 104));
              }

              else
              {
                *v52 = *(a5 + 96);
                v53 = *(a5 + 112);
              }

              if (SHIBYTE(v53) < 0)
              {
                sub_100005F2C(&__dst, v52[0], v52[1]);
              }

              else
              {
                __dst = *v52;
                v78 = v53;
              }

              v76 = 0;
              if (SHIBYTE(v78) < 0)
              {
                sub_100005F2C(buf, __dst, *(&__dst + 1));
              }

              else
              {
                *buf = __dst;
                *&buf[16] = v78;
              }

              v79 = 0;
              if (ctu::cf::convert_copy())
              {
                v50 = v76;
                v76 = v79;
                v80 = v50;
                sub_100005978(&v80);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              value = v76;
              v76 = 0;
              sub_100005978(&v76);
              if (SHIBYTE(v78) < 0)
              {
                operator delete(__dst);
              }

              CFDictionarySetValue(v49, @"EAPMethod", value);
              sub_100005978(&value);
              if (SHIBYTE(v53) < 0)
              {
                operator delete(v52[0]);
              }

              CFArraySetValueAtIndex(v72, v45, v55);
              sub_1000296E0(&v55);
            }
          }

          ++v45;
          v44 = v72;
        }

        CFDictionarySetValue(v74, @"Proposals", v72);
        sub_1000279DC(&v72);
      }
    }
  }

  CFDictionarySetValue(MutableCopy, @"IKE", v74);
  sub_100010180(a6, &MutableCopy);
  sub_100005978(&v73);
  sub_1000296E0(&v74);
  return sub_1000296E0(&MutableCopy);
}

void sub_10059C80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  sub_100005978((v60 + 32));
  sub_100305E28((v61 - 160));
  sub_100005978((v61 - 192));
  sub_1000296E0((v61 - 184));
  sub_1000296E0((v61 - 176));
  _Unwind_Resume(a1);
}

const void **sub_10059CAFC@<X0>(uint64_t a1@<X0>, ctu *a2@<X2>, void *a3@<X8>)
{
  v6 = *(a1 + 48);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 80));
    ctu::cf_to_xpc(object, a2, v8);
    xpc::object::to_string(__p, object);
    if (v36 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v39 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sipTel orig cfg: %s", buf, 0x20u);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(object[0]);
  }

  theDict = 0;
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
  v33 = MutableCopy;
  theDict = MutableCopy;
  if (MutableCopy)
  {
    CFRetain(MutableCopy);
  }

  sub_10000501C(buf, "ipTel");
  sub_10059DC6C(a1, &v33, buf, object);
  v11 = theDict;
  theDict = object[0];
  __p[0] = v11;
  object[0] = 0;
  sub_1000296E0(__p);
  sub_1000296E0(object);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_1000296E0(&v33);
  CFDictionaryGetValue(theDict, @"Signaling");
  v12 = *(a1 + 232);
  if (v12)
  {
    if (*(v12 + 256))
    {
      if (*(v12 + 248) == 1)
      {
        v13 = CFDictionaryGetValue(theDict, @"IPTelephony");
        v32 = 0;
        if (v13)
        {
          Mutable = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v13);
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v19 = Mutable;
        v32 = Mutable;
        v20 = *(a1 + 232);
        if (*(v20 + 247) < 0)
        {
          sub_100005F2C(__dst, *(v20 + 224), *(v20 + 232));
        }

        else
        {
          *__dst = *(v20 + 224);
          v30 = *(v20 + 240);
        }

        if (SHIBYTE(v30) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v36 = v30;
        }

        v37 = 0;
        if (SHIBYTE(v36) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v36;
        }

        if (ctu::cf::convert_copy())
        {
          v21 = v37;
          v37 = 0;
          object[0] = v21;
          sub_100005978(object);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        value = v37;
        v37 = 0;
        sub_100005978(&v37);
        if (SHIBYTE(v36) < 0)
        {
          operator delete(__p[0]);
        }

        CFDictionarySetValue(v19, @"pcscf", value);
        sub_100005978(&value);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__dst[0]);
        }

        CFDictionarySetValue(theDict, @"IPTelephony", v32);
        v22 = *(a1 + 48);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = PersonalityInfo::logPrefix(**(a1 + 80));
          v24 = *(a1 + 232);
          v25 = (v24 + 224);
          if (*(v24 + 247) < 0)
          {
            v25 = *v25;
          }

          *buf = 136315650;
          *&buf[4] = v23;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v39 = v25;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sPCSCF address [%s] override from getProvisioning applied", buf, 0x20u);
        }

        sub_1000296E0(&v32);
      }

      __p[0] = 0;
      __p[1] = 0;
      v36 = 0;
      object[0] = 0;
      object[1] = 0;
      v28 = 0;
      std::mutex::lock((a1 + 432));
      operator new();
    }

    v15 = *(a1 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v17 = "#I %s%sims credentials are not present";
      goto LABEL_21;
    }
  }

  else
  {
    v15 = *(a1 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v17 = "#I %s%sfIndividualCredentials is invalid";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);
    }
  }

  sub_100010180(a3, &theDict);
  return sub_1000296E0(&theDict);
}

void sub_10059D854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, xpc_object_t object, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, int a35, const void *a36, __int16 a37, char a38, char a39, int a40, const void *a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_100005978((v47 - 160));
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  sub_1000296E0(&a36);
  sub_1000296E0(&a41);
  _Unwind_Resume(a1);
}

void sub_10059DA0C(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, CFPropertyListRef *a4@<X8>)
{
  std::mutex::lock((a1 + 432));
  v19 = 0;
  v8 = *(a1 + 512);
  if (v8)
  {
    v9 = *a2;
    v10 = (*(a2 + 8) - *a2) >> 3;
    if (v10)
    {
      if (v10 == 1)
      {
        Value = CFDictionaryGetValue(v8, *v9);
        sub_1000673E0(&v19, &Value);
      }

      else
      {
        theDict = 0;
        Value = CFDictionaryGetValue(v8, *v9);
        sub_100010180(&theDict, &Value);
        v11 = theDict;
        if (theDict)
        {
          v12 = (*(a2 + 8) - *a2) >> 3;
          if (v12 >= 2)
          {
            v13 = v12 - 1;
            v14 = 1;
            while (2 - v12 + v14 != 1)
            {
              if (v14 >= (*(a2 + 8) - *a2) >> 3)
              {
                sub_1002030E0();
              }

              v17 = CFDictionaryGetValue(v11, *(*a2 + 8 * v14));
              Value = 0;
              sub_100010180(&Value, &v17);
              v15 = theDict;
              theDict = Value;
              Value = v15;
              sub_10001021C(&Value);
              v11 = theDict;
              if (theDict)
              {
                if (++v14 < v12)
                {
                  continue;
                }
              }

              goto LABEL_15;
            }

            if (v13 >= (*(a2 + 8) - *a2) >> 3)
            {
              sub_1002030E0();
            }

            Value = CFDictionaryGetValue(v11, *(*a2 + 8 * v13));
            sub_1000673E0(&v19, &Value);
          }
        }

LABEL_15:
        sub_10001021C(&theDict);
      }
    }
  }

  *a4 = 0;
  if (v19)
  {
    v16 = v19;
  }

  else
  {
    v16 = a3;
  }

  *a4 = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v16, 1uLL);
  sub_10000A1EC(&v19);
  std::mutex::unlock((a1 + 432));
}

void sub_10059DBC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_10000A1EC(va1);
  std::mutex::unlock((v2 + 432));
  _Unwind_Resume(a1);
}

const void **sub_10059DC04@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  v3 = *(a1 + 32);
  return sub_10021D11C(a2, &v3);
}

const __CFDictionary *sub_10059DC6C@<X0>(uint64_t a1@<X0>, CFMutableDictionaryRef *a2@<X1>, char *a3@<X2>, CFMutableDictionaryRef *a4@<X8>)
{
  result = *a2;
  if (*a2)
  {
    Value = CFDictionaryGetValue(result, @"DeviceOverrides");
    if (Value && (v10 = Value, v11 = CFGetTypeID(Value), v11 == CFDictionaryGetTypeID()))
    {
      theDict = v10;
      CFRetain(v10);
      CFDictionaryRemoveValue(*a2, @"DeviceOverrides");
      Count = CFDictionaryGetCount(v10);
      if (Count > 0)
      {
        keys = 0;
        v52 = 0;
        v53 = 0;
        sub_10007D780(&keys, Count);
        CFDictionaryGetKeysAndValues(theDict, keys, 0);
        v48 = 0;
        v49 = 0;
        v50 = 0;
        capabilities::ct::compatibleHardwareConfigurationString(&v48, v13);
        v14 = keys;
        v15 = v52;
        while (1)
        {
          if (v14 == v15)
          {
            v31 = *(a1 + 48);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v33 = PersonalityInfo::logPrefix(**(a1 + 80));
              if (a3[23] < 0)
              {
                a3 = *a3;
              }

              ctu::cf_to_xpc(&object, *a2, v32);
              xpc::object::to_string(__p, &object);
              if (v47 >= 0)
              {
                v34 = __p;
              }

              else
              {
                v34 = __p[0];
              }

              *buf = 136315906;
              *&buf[4] = v33;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              *&buf[22] = 2080;
              v56 = a3;
              v57 = 2080;
              v58 = v34;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s%s cfg unchanged:\n%s", buf, 0x2Au);
              if (SHIBYTE(v47) < 0)
              {
                operator delete(__p[0]);
              }

              xpc_release(object);
            }

            *a4 = *a2;
            *a2 = 0;
            goto LABEL_61;
          }

          __p[0] = 0;
          __p[1] = 0;
          v47 = 0;
          if (*v14)
          {
            CFGetTypeID(*v14);
            CFStringGetTypeID();
          }

          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          *__p = *buf;
          v47 = *&buf[16];
          object = 0;
          v44 = 0;
          v45 = 0;
          ctu::tokenize();
          v16 = object;
          v17 = v44;
          if (object != v44)
          {
            break;
          }

LABEL_24:
          *buf = &object;
          sub_1000087B4(buf);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(__p[0]);
          }

          ++v14;
        }

        if (v50 >= 0)
        {
          v18 = HIBYTE(v50);
        }

        else
        {
          v18 = v49;
        }

        if (v50 >= 0)
        {
          v19 = &v48;
        }

        else
        {
          v19 = v48;
        }

        while (1)
        {
          v20 = *(v16 + 23);
          v21 = v20;
          if ((v20 & 0x80u) != 0)
          {
            v20 = v16[1];
          }

          if (v20 == v18)
          {
            v22 = v21 >= 0 ? v16 : *v16;
            if (!memcmp(v22, v19, v18))
            {
              break;
            }
          }

          v16 += 3;
          if (v16 == v17)
          {
            goto LABEL_24;
          }
        }

        v23 = *(a1 + 48);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = PersonalityInfo::logPrefix(**(a1 + 80));
          v25 = &v48;
          if (v50 < 0)
          {
            v25 = v48;
          }

          *buf = 136315650;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v56 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sProcessing device-specific overrides for %s", buf, 0x20u);
        }

        v42 = 0;
        v26 = *a2;
        v27 = CFDictionaryGetValue(theDict, *v14);
        v28 = v27;
        if (v27)
        {
          v29 = CFGetTypeID(v27);
          if (v29 == CFDictionaryGetTypeID())
          {
            v30 = v28;
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
        }

        sub_10080F7B4(v26, v30, a1, &v42);
        v35 = *(a1 + 48);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v37 = PersonalityInfo::logPrefix(**(a1 + 80));
          if (a3[23] < 0)
          {
            a3 = *a3;
          }

          ctu::cf_to_xpc(&v39, v42, v36);
          xpc::object::to_string(v40, &v39);
          if (v41 >= 0)
          {
            v38 = v40;
          }

          else
          {
            v38 = v40[0];
          }

          *buf = 136315906;
          *&buf[4] = v37;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v56 = a3;
          v57 = 2080;
          v58 = v38;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%sMerged %s cfg:\n%s", buf, 0x2Au);
          if (v41 < 0)
          {
            operator delete(v40[0]);
          }

          xpc_release(v39);
        }

        *a4 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v42);
        sub_10001021C(&v42);
        *buf = &object;
        sub_1000087B4(buf);
        if (SHIBYTE(v47) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_61:
        if (SHIBYTE(v50) < 0)
        {
          operator delete(v48);
        }

        if (keys)
        {
          v52 = keys;
          operator delete(keys);
        }

        return sub_10001021C(&theDict);
      }
    }

    else
    {
      theDict = 0;
    }

    *a4 = *a2;
    *a2 = 0;
    return sub_10001021C(&theDict);
  }

  *a4 = 0;
  return result;
}

void sub_10059E1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, xpc_object_t object, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10059E29C(uint64_t a1, int a2, int a3, CFDictionaryRef theDict, const __CFDictionary *a5)
{
  if (!a2)
  {
    return 0;
  }

  if (theDict && a5)
  {
    theDicta = CFDictionaryCreateMutableCopy(0, 0, theDict);
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a5);
    CFDictionaryRemoveValue(theDicta, @"cfgSlots");
    CFDictionaryRemoveValue(MutableCopy, @"cfgSlots");
    CFDictionaryRemoveValue(theDicta, @"ts");
    CFDictionaryRemoveValue(MutableCopy, @"ts");
    if (CFEqual(theDicta, MutableCopy))
    {
      sub_1008100FC(a1);
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      *__p = 0u;
      v40 = 0;
      v8 = sub_100598EC4(a1, (a1 + 120), __p);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[0]);
      }

      if (v8 != -1)
      {
        Value = CFDictionaryGetValue(theDict, @"cfgSlots");
        v10 = Value;
        if (Value)
        {
          v11 = CFGetTypeID(Value);
          if (v11 != CFArrayGetTypeID())
          {
            v10 = 0;
          }
        }

        v12 = CFDictionaryGetValue(a5, @"cfgSlots");
        v13 = v12;
        if (v12)
        {
          v14 = CFGetTypeID(v12);
          if (v14 == CFArrayGetTypeID() && v10 && sub_10059A484(a1))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v10, v8);
            v16 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v17 = CFGetTypeID(ValueAtIndex);
              if (v17 != CFDataGetTypeID())
              {
                v16 = 0;
              }
            }

            v18 = CFArrayGetValueAtIndex(v13, v8);
            v19 = v18;
            if (v18)
            {
              v20 = CFGetTypeID(v18);
              if (v20 == CFDataGetTypeID())
              {
                if (v16)
                {
                  cf1 = 0;
                  v21 = *(a1 + 560);
                  v35 = 0;
                  v36 = 0;
                  v34 = 0;
                  sub_100034C50(&v34, *v21, v21[1], v21[1] - *v21);
                  sub_1009F8218(v16, &v34, &v37);
                  sub_100060E84(__p, &v37);
                  v43 = 0;
                  *buf = 0;
                  sub_100010180(buf, __p);
                  if (*buf)
                  {
                    sub_1000676D4(&v43, buf);
                  }

                  sub_10001021C(buf);
                  cf1 = v43;
                  v43 = 0;
                  sub_10001021C(&v43);
                  sub_10000A1EC(__p);
                  sub_10000A1EC(&v37);
                  if (v34)
                  {
                    v35 = v34;
                    operator delete(v34);
                  }

                  v22 = *(a1 + 560);
                  v30 = 0;
                  v31 = 0;
                  v29 = 0;
                  sub_100034C50(&v29, *v22, v22[1], v22[1] - *v22);
                  sub_1009F8218(v19, &v29, &v32);
                  sub_100060E84(__p, &v32);
                  v43 = 0;
                  *buf = 0;
                  sub_100010180(buf, __p);
                  if (*buf)
                  {
                    sub_1000676D4(&v43, buf);
                  }

                  sub_10001021C(buf);
                  v23 = v43;
                  v33 = v43;
                  v43 = 0;
                  sub_10001021C(&v43);
                  sub_10000A1EC(__p);
                  sub_10000A1EC(&v32);
                  if (v29)
                  {
                    v30 = v29;
                    operator delete(v29);
                  }

                  if (cf1 && v23)
                  {
                    v24 = CFEqual(cf1, v23);
                    sub_10001021C(&v33);
                    sub_10001021C(&cf1);
                    sub_1000296E0(&MutableCopy);
                    sub_1000296E0(&theDicta);
                    if (v24)
                    {
                      return 0;
                    }

                    goto LABEL_35;
                  }

                  sub_10001021C(&v33);
                  sub_10001021C(&cf1);
                }
              }
            }
          }
        }
      }
    }

    sub_1000296E0(&MutableCopy);
    sub_1000296E0(&theDicta);
  }

LABEL_35:
  v26 = *(a1 + 48);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = PersonalityInfo::logPrefix(**(a1 + 80));
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v40 = *&buf[16];
    v28 = __p;
    if ((buf[23] & 0x80u) != 0)
    {
      v28 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v27;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v45 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%schanged %s trigger service evaluation", buf, 0x20u);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = 1;
  *(a1 + 168) = 1;
  return result;
}

void sub_10059E724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, int a13, const void *a14, void *a15, uint64_t a16, uint64_t a17, char a18, int a19, const void *a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, const void *a27, const void *a28, __int16 a29, char a30, char a31)
{
  sub_10001021C(&a14);
  sub_10001021C(&a20);
  sub_1000296E0(&a27);
  sub_1000296E0(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_10059E838(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFDictionary *a4)
{
  if (a2)
  {
    theDict[0] = 0;
    theDict[1] = 0;
    v8 = *(a1 + 104);
    v9 = sub_1008100FC(a1);
    sub_1005D72A4(a3, v8, 2u, a1 + 120, v9, a4, theDict);
    if (theDict[1])
    {
      Value = CFDictionaryGetValue(theDict[1], @"enable");
      if (Value)
      {
        if (CFBooleanGetValue(Value))
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
        v11 = 0;
      }

      sub_100591CF8(a1, v11);
    }

    sub_10001021C(&theDict[1]);
    v12 = *(a1 + 48);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(**(a1 + 80));
      memset(theDict, 0, 24);
      ctu::cf::assign();
      *__p = *theDict;
      v17 = theDict[2];
      v14 = __p;
      if (SHIBYTE(theDict[2]) < 0)
      {
        v14 = theDict[0];
      }

      LODWORD(theDict[0]) = 136315650;
      *(theDict + 4) = v13;
      WORD2(theDict[1]) = 2080;
      *(&theDict[1] + 6) = " ";
      HIWORD(theDict[2]) = 2080;
      theDict[3] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%schanged %s trigger service evaluation", theDict, 0x20u);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a1 + 168) = 1;
  }

  return a2;
}

void sub_10059E9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10059EA20(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, const __CFDictionary *a5)
{
  result = sub_1008100FC(a1);
  if (result)
  {
    if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"assignments");
      if (Value && (v10 = Value, v11 = CFGetTypeID(Value), v11 == CFDictionaryGetTypeID()))
      {
        Count = CFDictionaryGetCount(v10);
        memset(keys, 0, 24);
        sub_100222418(keys, Count);
        values[0] = 0;
        values[1] = 0;
        v26 = 0;
        sub_10007D780(values, Count);
        CFDictionaryGetKeysAndValues(v10, keys[0], values[0]);
        if (Count < 1)
        {
LABEL_9:
          a5 = 0;
        }

        else
        {
          v13 = 0;
          while (1)
          {
            v14 = sub_1008100FC(a1);
            if (CFEqual(v14, values[0][v13]))
            {
              break;
            }

            if (Count == ++v13)
            {
              goto LABEL_9;
            }
          }

          a5 = keys[0][v13];
        }

        if (values[0])
        {
          values[1] = values[0];
          operator delete(values[0]);
        }

        if (keys[0])
        {
          keys[1] = keys[0];
          operator delete(keys[0]);
        }
      }

      else
      {
        a5 = 0;
      }
    }

    if (a4 && (v15 = CFDictionaryGetValue(a4, @"assignments"), (v16 = v15) != 0) && (v17 = CFGetTypeID(v15), v17 == CFDictionaryGetTypeID()))
    {
      v18 = CFDictionaryGetCount(v16);
      memset(keys, 0, 24);
      sub_100222418(keys, v18);
      values[0] = 0;
      values[1] = 0;
      v26 = 0;
      sub_10007D780(values, v18);
      CFDictionaryGetKeysAndValues(v16, keys[0], values[0]);
      if (v18 < 1)
      {
LABEL_23:
        v21 = 0;
      }

      else
      {
        v19 = 0;
        while (1)
        {
          v20 = sub_1008100FC(a1);
          if (CFEqual(v20, values[0][v19]))
          {
            break;
          }

          if (v18 == ++v19)
          {
            goto LABEL_23;
          }
        }

        v21 = keys[0][v19];
      }

      if (values[0])
      {
        values[1] = values[0];
        operator delete(values[0]);
      }

      if (keys[0])
      {
        keys[1] = keys[0];
        operator delete(keys[0]);
      }

      if ((a5 != 0) == (v21 != 0))
      {
        result = 0;
        if (!a5 || !v21)
        {
          return result;
        }

        if (CFEqual(a5, v21))
        {
          return 0;
        }
      }
    }

    else if (!a5)
    {
      return 0;
    }

    v22 = *(a1 + 48);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = PersonalityInfo::logPrefix(**(a1 + 80));
      memset(keys, 0, 24);
      ctu::cf::assign();
      *values = *keys;
      v26 = keys[2];
      v24 = values;
      if (SHIBYTE(keys[2]) < 0)
      {
        v24 = keys[0];
      }

      LODWORD(keys[0]) = 136315650;
      *(keys + 4) = v23;
      WORD2(keys[1]) = 2080;
      *(&keys[1] + 6) = " ";
      HIWORD(keys[2]) = 2080;
      keys[3] = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%schanged %s trigger service evaluation", keys, 0x20u);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(values[0]);
      }
    }

    result = 1;
    *(a1 + 168) = 1;
  }

  return result;
}

void sub_10059ED50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10059EDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 224))(a1);
  v5 = *(a1 + 192);
  if (v5)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = sub_10058D044(a1);
  }

  if (v4 == 1)
  {
    v7 = 0;
    v8 = 1;
    v9 = 1;
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 528);
    v9 = v8;
    if (v6 && (*(a1 + 528) & 1) == 0)
    {
      v7 = sub_10034B35C(*(a1 + 96), *(a1 + 196));
      v9 = 0;
    }
  }

  v10 = *(a1 + 48);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v8;
    v11 = PersonalityInfo::logPrefix(**(a1 + 80));
    v12 = sub_10060FFC0(*(a1 + 192));
    if (v6)
    {
      v13 = "on";
    }

    else
    {
      v13 = "off";
    }

    v14 = asStringBool(v7);
    v15 = sub_10060FF94(v4);
    v16 = asStringBool(*(a1 + 528));
    *buf = 136316930;
    *&buf[4] = v11;
    v8 = v18;
    v20 = 2080;
    v21 = " ";
    v22 = 2080;
    v23 = v12;
    v24 = 2080;
    v25 = v13;
    v26 = 2080;
    v27 = v14;
    v28 = 2080;
    v29 = v15;
    v30 = 2080;
    v31 = v16;
    v32 = 2080;
    v33 = asStringBool(v9);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper user switch state is %s ('%s'), activating: %s; service status: %s; reprovisioining: %s; isEnabled return '%s'", buf, 0x52u);
  }

  *a2 = v8;
  *(a2 + 8) = 0;
  *buf = 0;
  return sub_10001021C(buf);
}

const void **sub_10059EFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100591B44(a1);
  if ((v4 & 1) == 0)
  {
    theDict = 0;
    goto LABEL_7;
  }

  theDict = 0;
  if (!capabilities::ct::supportsThumperService(v4))
  {
LABEL_7:
    v8 = 0;
    v6 = 0;
    v11 = 0;
    LOWORD(v20) = 0;
    BYTE2(v20) = 0;
    v21 = 0;
    goto LABEL_8;
  }

  v5 = sub_100347D60(*(a1 + 196));
  v6 = v5 == 1;
  v7 = sub_100347D84(*(a1 + 196));
  v8 = v7 == 1;
  if (v7 == 1)
  {
    sub_10034DA68(*(a1 + 96), &v22);
    v9 = v22;
    v20 = theDict;
    v22 = 0;
    theDict = v9;
    sub_1000296E0(&v20);
    v10 = &v22;
LABEL_11:
    sub_1000296E0(v10);
    goto LABEL_12;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v14 = theDict;
    theDict = Mutable;
    v20 = v14;
    v10 = &v20;
    goto LABEL_11;
  }

LABEL_12:
  v15 = *(a1 + 192);
  if (v15)
  {
    v16 = v15 == 2;
  }

  else
  {
    v16 = sub_10058D044(a1);
  }

  if (*(a1 + 520) == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    if (v16 && (*(a1 + 528) & 1) == 0)
    {
      if (sub_10034B35C(*(a1 + 96), *(a1 + 196)) || (sub_10034B81C(*(a1 + 96)) & 1) != 0 || (*(a1 + 524) & 1) != 0 || (*(a1 + 525) & 1) != 0 || (*(a1 + 526) & 1) != 0)
      {
        v17 = 1;
      }

      else
      {
        v17 = *(a1 + 527);
      }
    }
  }

  v18 = sub_10034B404(*(a1 + 96));
  if (v5 == 1)
  {
    if (v17)
    {
      v19 = &kCTProvisioningStatusInProcess;
    }

    else if (v18 == 1)
    {
      v19 = &kCTProvisioningStatusSubscribed;
    }

    else
    {
      v19 = &kCTProvisioningStatusNotSubscribed;
    }
  }

  else if (v7 == 1)
  {
    v19 = &kCTProvisioningStatusInProcess;
    if ((v17 & 1) == 0)
    {
      v19 = &kCTProvisioningStatusNotSubscribed;
    }
  }

  else
  {
    v19 = &kCTProvisioningStatusNotAllowed;
  }

  CFDictionarySetValue(theDict, kCTProvisioningStatus, *v19);
  v11 = 1;
  LOBYTE(v20) = 1;
  BYTE1(v20) = v7 == 1;
  BYTE2(v20) = v5 == 1;
  v21 = theDict;
  if (theDict)
  {
    CFRetain(theDict);
    v11 = 1;
  }

LABEL_8:
  *a2 = v11;
  *(a2 + 1) = v8;
  *(a2 + 2) = v6;
  sub_100010180((a2 + 8), &v21);
  sub_1000296E0(&v21);
  return sub_1000296E0(&theDict);
}

void sub_10059F248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10059F28C(uint64_t a1, uint64_t a2, CFDictionaryRef *a3)
{
  if (!*a3)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(*a3, kPSUserPreference);
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    v7 = v6 == CFBooleanGetTypeID();
  }

  else
  {
    v7 = 0;
  }

  v8 = CFDictionaryGetValue(*a3, kPSAssociatedAccountID);
  result = 1;
  if (v8 && !v7)
  {
    v10 = CFGetTypeID(v8);
    TypeID = CFStringGetTypeID();
    v12 = *(a1 + 200);
    if ((v10 == TypeID) == (v12 == 0) || v10 == TypeID && CFStringCompare(v8, v12, 0))
    {
      return 1;
    }

    v13 = *(a1 + 48);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v14)
    {
      v15 = PersonalityInfo::logPrefix(**(a1 + 80));
      v16 = 136315394;
      v17 = v15;
      v18 = 2080;
      v19 = " ";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sduplicated switch account request - ignoring", &v16, 0x16u);
      return 0;
    }
  }

  return result;
}

void sub_10059F414(uint64_t a1, _BOOL4 a2, CFDictionaryRef *a3)
{
  v6 = a2;
  if (*a3)
  {
    Value = CFDictionaryGetValue(*a3, kPSUserPreference);
    if (!Value)
    {
      goto LABEL_7;
    }

    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 != CFBooleanGetTypeID())
    {
      goto LABEL_7;
    }

    v6 = CFBooleanGetValue(v8) != 0;
  }

  if (sub_10080FFF8(a1))
  {
    sub_10058D2AC(a1, v6);
  }

LABEL_7:
  v10 = *(a1 + 48);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315650;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v52 = 2080;
    v53 = asStringBool(a2);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%ssetEnabled, val: %s", buf, 0x20u);
  }

  *buf = off_101E62000;
  *&buf[8] = a1;
  v53 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  if (*a3)
  {
    v12 = CFDictionaryGetValue(*a3, kPSUserPreference);
    v13 = CFDictionaryGetValue(*a3, kPSAssociatedAccountID);
    v14 = v13;
    if (v13)
    {
      v15 = CFGetTypeID(v13);
      if (v15 == CFStringGetTypeID())
      {
        *&v49 = v14;
        *buf = 0;
        sub_100060DE8(buf, &v49);
        v16 = *(a1 + 200);
        *(a1 + 200) = *buf;
      }

      else
      {
        v16 = *(a1 + 200);
        *(a1 + 200) = 0;
      }

      *buf = v16;
      sub_100005978(buf);
      setAssociatedID(*(a1 + 200));
      sub_1005D0430(*(a1 + 104));
      LODWORD(v14) = 1;
    }
  }

  else
  {
    LODWORD(v14) = 0;
    v12 = 0;
  }

  if (!sub_1008100FC(a1))
  {
    goto LABEL_34;
  }

  if ((*(a1 + 143) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 143))
    {
      goto LABEL_19;
    }

LABEL_34:
    v30 = *(a1 + 48);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v31;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%ssetEnabled, no device ID or account ID yet", buf, 0x16u);
    }

    goto LABEL_36;
  }

  if (!*(a1 + 128))
  {
    goto LABEL_34;
  }

LABEL_19:
  if (v12)
  {
    v17 = 1;
  }

  else
  {
    v17 = v14;
  }

  v18 = kCFBooleanFalse;
  if (a2)
  {
    v18 = kCFBooleanTrue;
  }

  if (v17)
  {
    v19 = v12;
  }

  else
  {
    v19 = v18;
  }

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
      goto LABEL_39;
    }
  }

  else
  {
    v28 = 0;
  }

  std::mutex::unlock(v21);
  v27 = 0;
  v29 = 1;
LABEL_39:
  isWatch = GestaltUtilityInterface::isWatch(v28);
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  if (isWatch)
  {
    v33 = 0;
  }

  else
  {
    v33 = v19;
  }

  if (sub_100347D60(*(a1 + 196)) != 1 && a2)
  {
    v34 = *(a1 + 48);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v35;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper cannot be turned ON since feature is not allowed", buf, 0x16u);
    }

LABEL_36:
    sub_10034CD9C(*(a1 + 96), 1, 1);
    return;
  }

  if (sub_100591B44(a1))
  {
    if (!v33 || !sub_10059424C(a1))
    {
LABEL_80:
      sub_1005903E0(a1, v33 != 0, 0);
      return;
    }

    v36 = *(a1 + 192);
    if (CFEqual(v33, kCFBooleanTrue))
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    v38 = sub_100591CF8(a1, v37);
    if (v36)
    {
      v39 = v36 == 2;
    }

    else
    {
      v39 = sub_10058D044(a1);
    }

    v45 = *(a1 + 192);
    if (v45)
    {
      if (v45 == 2)
      {
        if (v39)
        {
LABEL_78:
          if (v38)
          {
            sub_100596308(a1, 0);
          }

          goto LABEL_80;
        }

        goto LABEL_74;
      }

      if ((v39 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (v39 == sub_10058D044(a1))
      {
        goto LABEL_78;
      }

      v45 = *(a1 + 192);
    }

    if (!v45)
    {
      v46 = sub_10058D044(a1);
      goto LABEL_77;
    }

    if (v45 != 2)
    {
      v46 = 0;
      goto LABEL_77;
    }

LABEL_74:
    v46 = 1;
LABEL_77:
    buf[0] = v46;
    sub_100597B4C(a1, 0, 0, 0, buf, 0);
    goto LABEL_78;
  }

  v40 = *(a1 + 48);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = PersonalityInfo::logPrefix(**(a1 + 80));
    v42 = sub_100591B44(a1);
    v43 = sub_10060FFC0(HIDWORD(v42));
    if (sub_1008100FC(a1))
    {
      sub_1008100FC(a1);
      v49 = 0uLL;
      v50 = 0;
      ctu::cf::assign();
      *__p = v49;
      v48 = v50;
      v44 = __p;
      if (v50 < 0)
      {
        v44 = v49;
      }

      *buf = 136315906;
      *&buf[4] = v41;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v52 = 2080;
      v53 = v43;
      v54 = 2080;
      v55 = v44;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s%sDevice not associated. switch status: %s, deviceId: '%s'", buf, 0x2Au);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136315906;
      *&buf[4] = v41;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v52 = 2080;
      v53 = v43;
      v54 = 2080;
      v55 = "";
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s%sDevice not associated. switch status: %s, deviceId: '%s'", buf, 0x2Au);
    }
  }
}

void sub_10059FAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10059FB14(uint64_t a1, int a2)
{
  std::mutex::lock((a1 + 432));
  v4 = *(a1 + 520);
  *(a1 + 520) = a2;
  v5 = *(a1 + 48);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 80));
    if (*(a1 + 520))
    {
      v7 = "on";
    }

    else
    {
      v7 = "off";
    }

    v8 = sub_10060FF94(v4);
    v9 = sub_10060FF94(*(a1 + 520));
    v10 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v10 = *v10;
    }

    v11 = 136316418;
    v12 = v6;
    v13 = 2080;
    v14 = " ";
    v15 = 2080;
    v16 = v7;
    v17 = 2080;
    v18 = v8;
    v19 = 2080;
    v20 = v9;
    v21 = 2080;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sservice:%s, status:%s->%s, account id:%s", &v11, 0x3Eu);
  }

  std::mutex::unlock((a1 + 432));
}

uint64_t sub_10059FC84(uint64_t a1)
{
  sub_10081043C(a1);
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    v4 = sub_10060FFC0(*(a1 + 192));
    v5 = (*(*a1 + 224))(a1);
    v6 = sub_10060FF94(v5);
    v7 = sub_100A38E08(*(a1 + 196));
    v8 = asStringBool(*(a1 + 392));
    *buf = 136316418;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v4;
    LOWORD(v55[0].__locale_) = 2080;
    *(&v55[0].__locale_ + 2) = v6;
    WORD1(v55[1].__locale_) = 2080;
    *(&v55[1].__locale_ + 4) = v7;
    WORD2(v55[2].__locale_) = 2080;
    *(&v55[2].__locale_ + 6) = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fSwitchState: %s, fServiceStatus: %s, fEntitlementResultForThumper: %s, fProvisioningApplied: %s", buf, 0x3Eu);
    v2 = *(a1 + 48);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 80));
    memset(buf, 0, 24);
    ctu::cf::assign();
    *__p = *buf;
    __p[2] = *&buf[16];
    v10 = *buf;
    if ((buf[23] & 0x80u) == 0)
    {
      v10 = __p;
    }

    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fAssociatedAccountID: %s", buf, 0x20u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  __src = 0u;
  memset(v55, 0, sizeof(v55));
  memset(buf, 0, sizeof(buf));
  sub_10000C320(buf);
  v11 = sub_10000C030(&buf[16]);
  sub_100A41410(v11, a1 + 248);
  v12 = *(a1 + 48);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PersonalityInfo::logPrefix(**(a1 + 80));
    if ((BYTE8(v59) & 0x10) != 0)
    {
      v15 = v59;
      if (v59 < *(&__src + 1))
      {
        *&v59 = *(&__src + 1);
        v15 = *(&__src + 1);
      }

      locale = __src;
    }

    else
    {
      if ((BYTE8(v59) & 8) == 0)
      {
        v14 = 0;
        HIBYTE(v45) = 0;
LABEL_22:
        *(&__dst + v14) = 0;
        p_dst = &__dst;
        if (SHIBYTE(v45) < 0)
        {
          p_dst = __dst;
        }

        LODWORD(__p[0]) = 136315650;
        *(__p + 4) = v13;
        WORD2(__p[1]) = 2080;
        *(&__p[1] + 6) = " ";
        HIWORD(__p[2]) = 2080;
        *v47 = p_dst;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s| %s", __p, 0x20u);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_26;
      }

      locale = v55[1].__locale_;
      v15 = v55[3].__locale_;
    }

    v14 = v15 - locale;
    if ((v15 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v45) = v15 - locale;
    if (v14)
    {
      memmove(&__dst, locale, v14);
    }

    goto LABEL_22;
  }

LABEL_26:
  v43 = 0;
  if ((*(a1 + 143) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 128))
    {
LABEL_35:
      v19 = 0;
      LOBYTE(v20) = 0;
      goto LABEL_38;
    }
  }

  else if (!*(a1 + 143))
  {
    goto LABEL_35;
  }

  if (!sub_1008100FC(a1))
  {
    goto LABEL_35;
  }

  sub_1008100FC(a1);
  memset(__p, 0, sizeof(__p));
  ctu::cf::assign();
  __dst = *__p;
  v45 = __p[2];
  v18 = sub_100598EC4(a1, (a1 + 120), &__dst);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  if (v18 == -1)
  {
    v19 = 0;
  }

  else
  {
    v21 = *(a1 + 104);
    v22 = sub_1008100FC(a1);
    sub_1005D67F8(v21, 0, (a1 + 120), v22, __p);
    v19 = __p[0];
    v23 = v43;
    v43 = __p[1];
    *&__dst = v23;
    __p[1] = 0;
    sub_10001021C(&__dst);
    sub_10001021C(&__p[1]);
  }

  v20 = HIDWORD(v18) & 1;
LABEL_38:
  v24 = *(a1 + 48);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = PersonalityInfo::logPrefix(**(a1 + 80));
    v26 = asStringBool(v20);
    LODWORD(__p[0]) = 136315906;
    *(__p + 4) = v25;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = " ";
    HIWORD(__p[2]) = 1024;
    *v47 = v19;
    *&v47[4] = 2080;
    *&v47[6] = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%s| Account CFG of ver %ul, trusted:%s", __p, 0x26u);
  }

  __p[0] = off_101E62080;
  __p[1] = a1;
  *v47 = __p;
  logger::CFTypeRefLogger();
  sub_100007E44(__p);
  v27 = sub_10080FFF8(a1);
  v28 = *(a1 + 48);
  if (v27 && os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_DEFAULT))
  {
    v29 = PersonalityInfo::logPrefix(**(a1 + 80));
    v30 = asStringBool(*(a1 + 536) != 0);
    LODWORD(__p[0]) = 136315650;
    *(__p + 4) = v29;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = " ";
    HIWORD(__p[2]) = 2080;
    *v47 = v30;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s| fThumperKeepAliveAssertion: %s", __p, 0x20u);
    v28 = *(a1 + 48);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v31 = PersonalityInfo::logPrefix(**(a1 + 80));
    Registry::getXpcJetsamAssertionManager(&v41, *(a1 + 56));
    ctu::XpcJetsamAssertion::dumpState(&__dst, v41);
    if (SHIBYTE(v45) >= 0)
    {
      v32 = &__dst;
    }

    else
    {
      v32 = __dst;
    }

    LODWORD(__p[0]) = 136315650;
    *(__p + 4) = v31;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = " ";
    HIWORD(__p[2]) = 2080;
    *v47 = v32;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s| %s", __p, 0x20u);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__dst);
    }

    if (v42)
    {
      sub_100004A34(v42);
    }

    v28 = *(a1 + 48);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v33 = PersonalityInfo::logPrefix(**(a1 + 80));
    v34 = asStringBool(*(a1 + 524));
    v35 = asStringBool(*(a1 + 525));
    v36 = asStringBool(*(a1 + 526));
    v37 = asStringBool(*(a1 + 552));
    v38 = asStringBool(*(a1 + 640));
    LODWORD(__p[0]) = 136316674;
    *(__p + 4) = v33;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = " ";
    HIWORD(__p[2]) = 2080;
    *v47 = v34;
    *&v47[8] = 2080;
    *&v47[10] = v35;
    v48 = 2080;
    v49 = v36;
    v50 = 2080;
    v51 = v37;
    v52 = 2080;
    v53 = v38;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s| fAwaitingGetProvisioning: %s, fAwaitingSetProvisioning: %s, fGeneratingKeyAndCsr: %s, ProvisioningFailedAlertShown: %s, fLocationRequired: %s", __p, 0x48u);
  }

  sub_10001021C(&v43);
  *&buf[16] = v39;
  if (SHIBYTE(v58) < 0)
  {
    operator delete(*(&v57 + 1));
  }

  std::locale::~locale(v55);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1005A0534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_10001021C(&a12);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1005A0608(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 432));
  if (*(a1 + 520) == 1 && (v4 = *(a1 + 496)) != 0)
  {
    sub_1005A067C(a2, v4);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  std::mutex::unlock((a1 + 432));
  return v5;
}

uint64_t sub_1005A067C(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  if (a1 != a2)
  {
    sub_100008234((a1 + 48), *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
  }

  std::string::operator=((a1 + 72), (a2 + 72));
  std::string::operator=((a1 + 96), (a2 + 96));
  std::string::operator=((a1 + 120), (a2 + 120));
  *(a1 + 144) = *(a2 + 144);
  std::string::operator=((a1 + 152), (a2 + 152));
  *(a1 + 176) = *(a2 + 176);
  std::string::operator=((a1 + 184), (a2 + 184));
  std::string::operator=((a1 + 208), (a2 + 208));
  std::string::operator=((a1 + 232), (a2 + 232));
  return a1;
}

CFDictionaryRef sub_1005A0740(uint64_t a1, const void *a2)
{
  std::mutex::lock((a1 + 432));
  v4 = *(a1 + 512);
  if (v4 && (Value = CFDictionaryGetValue(v4, a2)) != 0)
  {
    Copy = CFDictionaryCreateCopy(0, Value);
  }

  else
  {
    Copy = 0;
  }

  std::mutex::unlock((a1 + 432));
  return Copy;
}

void sub_1005A07D8(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  std::mutex::lock((a1 + 432));
  if ((a2 & 0x4020000) != 0 && *(a1 + 520) == 1 && *(a1 + 496))
  {
    v7 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    sub_100424E40(&v7, &Mutable);
    sub_1002A938C(&Mutable);
  }

  *a3 = 0;
  a3[1] = 0;
  std::mutex::unlock((a1 + 432));
}

void sub_1005A0974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10001021C(va);
  if (v5)
  {
    sub_100004A34(v5);
  }

  std::mutex::unlock((v4 + 432));
  _Unwind_Resume(a1);
}

const void **sub_1005A09B4(uint64_t a1)
{
  result = sub_1008100FC(a1);
  if (result)
  {

    return sub_100810310(a1, 2u, 0, 1, 1);
  }

  return result;
}

const void **sub_1005A0A0C(const void **result)
{
  if ((*(result + 529) & 1) == 0)
  {
    v1 = result;
    result = sub_100591240(result);
    if (result)
    {

      return sub_1005903E0(v1, 0, 1);
    }
  }

  return result;
}

void sub_1005A0A64(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v2 = ServiceMap;
  v3 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v4 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
  valuePtr = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &valuePtr);
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
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  v14 = 0;
  valuePtr = dword_101FCB960;
  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  if (v11)
  {
    v14 = v11;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v12 = v14;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = 0;
  sub_100029A48(&v14);
  sub_10071B8E0(v9, @"last.dev.icloud.ver", v12, kPhoneServicesWalletDomain, 0, 1u, 0, 0);
  sub_100029A48(&v13);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_1005A0BC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100029A48(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1005A0C0C(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_1005A6F08(v18, 524531);
  if (v18[0])
  {
    memset(&v17, 0, sizeof(v17));
    memset(&v16, 0, sizeof(v16));
    std::mutex::lock((a1 + 432));
    if (*(a1 + 520) == 1)
    {
      v2 = *(a1 + 496);
      if (v2)
      {
        std::string::operator=(&v17, (v2 + 184));
        std::string::operator=(&v16, (*(a1 + 496) + 232));
      }
    }

    std::mutex::unlock((a1 + 432));
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v4 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v4 = v16.__r_.__value_.__l.__size_;
      }

      if (v4)
      {
        memset(&v14, 0, sizeof(v14));
        v5 = &v14;
        sub_1000677C4(&v14, size + 1);
        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v5 = v14.__r_.__value_.__r.__words[0];
        }

        if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v17;
        }

        else
        {
          v6 = v17.__r_.__value_.__r.__words[0];
        }

        memmove(v5, v6, size);
        *(&v5->__r_.__value_.__l.__data_ + size) = 45;
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v16;
        }

        else
        {
          v7 = v16.__r_.__value_.__r.__words[0];
        }

        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v8 = v16.__r_.__value_.__l.__size_;
        }

        v9 = std::string::append(&v14, v7, v8);
        v10 = *&v9->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v14.__r_.__value_.__l.__data_);
        }

        v11 = v18[0];
        *(v18[0] + 28) |= 2u;
        v12 = *(v11 + 16);
        if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v12, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
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
  }

  return sub_100342734(v18);
}

void sub_1005A0DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  sub_100342734((v27 - 40));
  _Unwind_Resume(a1);
}

void sub_1005A0E70(uint64_t a1, uint64_t a2)
{
  *(a1 + 527) = 0;
  v3 = sub_10059A9F0(a1, a2);
  v4 = *(a1 + 48);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v5)
    {
      v7 = PersonalityInfo::logPrefix(**(a1 + 80));
      v8 = 136315394;
      v9 = v7;
      v10 = 2080;
      v11 = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived new individual encryption key", &v8, 0x16u);
    }

    operator new();
  }

  if (v5)
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 80));
    v8 = 136315394;
    v9 = v6;
    v10 = 2080;
    v11 = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived duplicated individual encryption key", &v8, 0x16u);
  }
}

void sub_1005A1010(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete();
}

const void **sub_1005A1040@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = theDict;
    theDict = Mutable;
    __p[0] = v5;
    sub_1000296E0(__p);
  }

  theString2 = 0;
  if (*(a1 + 143) < 0)
  {
    sub_100005F2C(v40, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *v40 = *(a1 + 120);
    v41 = *(a1 + 136);
  }

  if (SHIBYTE(v41) < 0)
  {
    sub_100005F2C(__dst, v40[0], v40[1]);
  }

  else
  {
    *__dst = *v40;
    v46 = v41;
  }

  v44 = 0;
  if (SHIBYTE(v46) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v48 = v46;
  }

  v49 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v44;
    v44 = v49;
    v50 = v6;
    sub_100005978(&v50);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  theString2 = v44;
  v44 = 0;
  sub_100005978(&v44);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  v7 = kPSAccountId;
  CFDictionarySetValue(theDict, kPSAccountId, theString2);
  v8 = theDict;
  v10 = capabilities::ct::supportsThumperService(v9);
  v11 = &kCFBooleanFalse;
  if (v10)
  {
    v11 = &kCFBooleanTrue;
  }

  CFDictionaryAddValue(v8, kPSThumperCalling, *v11);
  v12 = *(a1 + 200);
  if (v12)
  {
    CFDictionaryAddValue(theDict, kPSAssociatedAccountID, v12);
  }

  __dst[0] = 0;
  sub_1005D7AF0(*(a1 + 104), __dst);
  if (__dst[0])
  {
    v13 = kPSDeviceId;
    Value = CFDictionaryGetValue(__dst[0], kPSDeviceId);
    if (Value)
    {
      CFDictionarySetValue(theDict, v13, Value);
    }

    v50 = 0;
    v15 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (v15)
    {
      v16 = v50;
      v50 = v15;
      __p[0] = v16;
      sub_1000279DC(__p);
    }

    v17 = kPSAccountList;
    v18 = CFDictionaryGetValue(__dst[0], kPSAccountList);
    v19 = v18;
    if (v18)
    {
      v20 = CFGetTypeID(v18);
      if (v20 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(v19);
        if (Count)
        {
          v22 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v19, v22);
            v24 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v25 = CFGetTypeID(ValueAtIndex);
              if (v25 == CFDictionaryGetTypeID())
              {
                v26 = CFDictionaryGetValue(v24, v7);
                v27 = v26;
                if (v26)
                {
                  v28 = CFGetTypeID(v26);
                  if (v28 == CFStringGetTypeID() && CFStringCompare(v27, theString2, 0) == kCFCompareEqualTo)
                  {
                    break;
                  }
                }
              }
            }

            if (Count == ++v22)
            {
              goto LABEL_39;
            }
          }

          CFArrayAppendValue(v50, v24);
          v30 = kPSPrimaryDeviceId;
          v31 = CFDictionaryGetValue(v24, kPSPrimaryDeviceId);
          if (v31)
          {
            CFDictionarySetValue(theDict, v30, v31);
          }

          v32 = kPSAccountFreeSlots;
          v33 = CFDictionaryGetValue(v24, kPSAccountFreeSlots);
          if (v33)
          {
            CFDictionarySetValue(theDict, v32, v33);
          }

          v34 = kPSMdn;
          v35 = CFDictionaryGetValue(v24, kPSMdn);
          if (v35)
          {
            CFDictionarySetValue(theDict, v34, v35);
          }

          v36 = kPSMcc;
          v37 = CFDictionaryGetValue(v24, kPSMcc);
          if (v37)
          {
            CFDictionarySetValue(theDict, v36, v37);
          }

          v38 = kPSIsoMcc;
          v39 = CFDictionaryGetValue(v24, kPSIsoMcc);
          if (v39)
          {
            CFDictionarySetValue(theDict, v38, v39);
          }
        }
      }
    }

LABEL_39:
    CFDictionarySetValue(theDict, v17, v50);
    sub_1000279DC(&v50);
  }

  sub_100010180(a2, &theDict);
  sub_10001021C(__dst);
  sub_100005978(&theString2);
  return sub_1000296E0(&theDict);
}

void sub_1005A1494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, const void *a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_1000279DC((v32 - 88));
  sub_10001021C(&__p);
  sub_100005978(&a15);
  sub_1000296E0(&a16);
  _Unwind_Resume(a1);
}

const void **sub_1005A1560(uint64_t a1)
{
  sub_10007B7D8(a1 + 648);
  v2 = v4;
  result = sub_10000A1EC(&v4);
  if (v2)
  {
    return sub_10079CC68(a1 + 648);
  }

  return result;
}

uint64_t sub_1005A1630(uint64_t a1)
{
  *(a1 + 24) = 0;
  ThumperCapability::ThumperCapability((a1 + 32));
  return a1;
}

uint64_t sub_1005A1674(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

const void **sub_1005A16F4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1005A1728(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    *a1 = off_101EA6578;
    if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    TMKXPCServer.shutdown()();
  }

  return a1;
}

const void **sub_1005A17EC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1005A1820(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 48) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 176) = 1;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  IMSInfo::deserialize(a1, a2);
  return a1;
}

void sub_1005A18B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 255) < 0)
  {
    operator delete(*(v2 + 232));
  }

  if (*(v2 + 231) < 0)
  {
    operator delete(*(v2 + 208));
  }

  if (*(v2 + 207) < 0)
  {
    operator delete(*v4);
  }

  if (*(v2 + 175) < 0)
  {
    operator delete(*v3);
  }

  if (*(v2 + 143) < 0)
  {
    operator delete(*(v2 + 120));
  }

  if (*(v2 + 119) < 0)
  {
    operator delete(*(v2 + 96));
  }

  if (*(v2 + 95) < 0)
  {
    operator delete(*(v2 + 72));
  }

  sub_1000087B4(va);
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_1005A1958(_BYTE *a1, const __CFDictionary *a2)
{
  *a1 = 0;
  a1[256] = 0;
  a1[264] = 0;
  a1[288] = 0;
  a1[296] = 0;
  a1[320] = 0;
  a1[328] = 0;
  a1[352] = 0;
  a1[360] = 0;
  a1[384] = 0;
  sub_100613124(a1, a2);
  return a1;
}

void sub_1005A19A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 384) == 1 && *(v1 + 383) < 0)
  {
    operator delete(*(v1 + 360));
  }

  if (*(v1 + 352) == 1 && *(v1 + 351) < 0)
  {
    operator delete(*(v1 + 328));
  }

  if (*(v1 + 320) == 1 && *(v1 + 319) < 0)
  {
    operator delete(*(v1 + 296));
  }

  if (*(v1 + 288) == 1 && *(v1 + 287) < 0)
  {
    operator delete(*(v1 + 264));
  }

  if (*(v1 + 256) == 1)
  {
    sub_100221F4C(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1005A1A38(const void **result, uint64_t a2)
{
  v3 = result;
  if (*(result + 24) == *(a2 + 24))
  {
    if (*(result + 24))
    {
      if (result != a2)
      {
        v4 = *result;
        *result = 0;
        v6 = v4;
        *result = *a2;
        *a2 = 0;
        sub_1005A16F4(&v6);
        v5 = v3[1];
        v3[1] = 0;
        v6 = v5;
        v3[1] = *(a2 + 8);
        *(a2 + 8) = 0;
        result = sub_1005A16F4(&v6);
      }

      *(v3 + 16) = *(a2 + 16);
    }
  }

  else if (*(result + 24))
  {

    return sub_100597730(result);
  }

  else
  {
    *result = 0;
    *result = *a2;
    *a2 = 0;
    result[1] = 0;
    result[1] = *(a2 + 8);
    *(a2 + 8) = 0;
    *(result + 16) = *(a2 + 16);
    *(result + 24) = 1;
  }

  return result;
}

uint64_t sub_1005A1B24(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

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

void *sub_1005A1BB8(void *a1, uint64_t a2)
{
  *a1 = off_101EA6578;
  sub_10006F264((a1 + 1), (a2 + 8));
  sub_10006F264((a1 + 5), (a2 + 40));
  sub_10006F264((a1 + 9), (a2 + 72));
  sub_10006F264((a1 + 13), (a2 + 104));
  return a1;
}

void sub_1005A1C38(_Unwind_Exception *a1)
{
  if (*(v1 + 96) == 1 && *(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 64) == 1 && *(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 32) == 1 && *(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_1005A1CB8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_10005B39C(v6, v10);
    }

    sub_1000CE3D4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_1005A1E74(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "ThumperKeepAlive", "", v5, 2u);
    }
  }
}

uint64_t sub_1005A1EEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005A1FB8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[4], v1, sub_1005A208C);
  __cxa_rethrow();
}

void sub_1005A1FF8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005A204C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005A208C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1005A20B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005A21FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100101814(va);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005A2258(uint64_t a1)
{
  sub_1005A4010((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_1005A2298(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1005A22DC(uint64_t *a1)
{
  memset(v3, 0, sizeof(v3));
  v2 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v3, v2);
  sub_1005A23D4(a1, v3);
}

void sub_1005A23A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A23D4(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  sub_1005A24D0(a1, a2);
}

void sub_1005A24B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A2568(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_1005A25AC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

atomic_uint **sub_1005A25F0(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_1005A28D0(a1, a2, 1, 2);
}

void sub_1005A2714(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1005A2968(&v2, a2);
}

uint64_t sub_1005A2774(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1005A27B8(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_1005A2568(a1);
  result = sub_1005A3780(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_1005A25AC(v10 + 2);
        sub_1005A2EC4(v15, a2);
        v10 = v22;
      }

      if (*(sub_1005A25AC(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_1005A2568(a1);
        v18 = sub_1005A3780(v17);
        v19 = sub_1005A25AC(v22 + 2);
        v16 = sub_100100CE8(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_1005A2568(a1);
      result = sub_1005A3780(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

atomic_uint **sub_1005A28D0(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_1005A2568(a1);
  v10 = sub_1005A3780(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_1005A2568(a1);
    v11 = *(sub_1005A3780(v12) + 8);
  }

  v14 = v11;
  return sub_1005A27B8(a1, a2, a3, &v14, a4);
}

void sub_1005A2968(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1005A29D4(&v2);
}

void sub_1005A2A44(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1005A2A84(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_1005A2BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004F4674(a1, a2);
  sub_1004F46E0((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void sub_1005A2D28(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1005A2D94(&v2);
}

void sub_1005A2E04(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1005A2E44(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_1005A2EC4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1005A2F30(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1005A2F30(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1005A2F74(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E61A00;
  operator new();
}

void sub_1005A3084(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1001018AC(va);
  operator delete();
}

void sub_1005A30EC(uint64_t a1)
{
  sub_1005A3498(a1);

  operator delete();
}

uint64_t sub_1005A3124(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1005A3510(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_1005A31D0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A3200(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_1005A322C(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_1005A3258@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_1005A32B0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1005A331C(&v2);
}

void sub_1005A338C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1005A33B4(v1);
  __cxa_rethrow();
}

uint64_t sub_1005A33B4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1005A4010((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1005A3428(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_1005A4010((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1005A3498(uint64_t a1)
{
  *a1 = off_101E61A00;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1005A3510(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_1005A2F30(result + 4); ; i += 6)
    {
      result = sub_1005A2F30(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_1005A35F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1005A3618(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1005A3684(&v2);
}

void sub_1005A36F4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1005A3738(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1005A3780(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void (***sub_1005A37C4(void (***result)(void, void, uint64_t), uint64_t a2))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_1005A3F58(v4, result);
    sub_1005A3F58(v3, a2);
    sub_1005A3F58(a2, v4);
    return sub_1005A4010(v4);
  }

  return result;
}

uint64_t sub_1005A3840(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_100222BDC(result);
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N3ctu12DispatchSlotIZN23ThumperSecondaryControl10initializeEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN23ThumperSecondaryControl10initializeEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1005A393C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v11 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v9 = *(a3 + 16);
  }

  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v14 = v6;
    v15 = v7;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  else
  {
    v14 = v4[2];
    v15 = 0;
  }

  v12 = off_101E61B48;
  v13 = v5;
  sub_1005A3AC4();
}

void sub_1005A3A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void (***sub_1005A3C70(uint64_t a1))(void, void, uint64_t)
{
  sub_1005A3D38(*(a1 + 32));
  result = *(a1 + 32);
  if (result)
  {
    sub_1005A4010(result);
    operator delete();
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1005A3D38(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void sub_1005A3DD0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN23ThumperSecondaryControl10initializeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN23ThumperSecondaryControl10initializeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}