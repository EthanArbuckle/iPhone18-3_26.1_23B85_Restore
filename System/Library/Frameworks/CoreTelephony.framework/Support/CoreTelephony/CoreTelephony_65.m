void sub_10042ABBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_10042B3D0(&a9);
  sub_10001021C(&a23);
  sub_10001021C(v31);
  sub_100005978((v29 + 96));
  sub_10001021C(v30);
  sub_10001021C((v29 + 80));
  sub_10001021C((v29 + 72));
  v34 = *(v29 + 64);
  if (v34)
  {
    sub_100004A34(v34);
  }

  v35 = *(v29 + 48);
  if (v35)
  {
    sub_100004A34(v35);
  }

  if (*(v29 + 39) < 0)
  {
    operator delete(*v32);
  }

  _Unwind_Resume(a1);
}

const void **sub_10042ACBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  theDict = 0;
  Value = CFDictionaryGetValue(*(a1 + 80), *(a1 + 96));
  v4 = Value;
  if (Value && (v5 = CFGetTypeID(Value), v5 == CFDictionaryGetTypeID()))
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = theDict;
    theDict = Mutable;
    *v45 = v7;
    sub_1000296E0(v45);
    Count = CFDictionaryGetCount(v4);
    keys[0] = 0;
    keys[1] = 0;
    v43 = 0;
    sub_10007D780(keys, Count);
    v49 = 0uLL;
    v50 = 0;
    sub_10007D780(&v49, Count);
    CFDictionaryGetKeysAndValues(v4, keys[0], v49);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v10 = *(v49 + 8 * i);
        if (v10 && (v11 = CFGetTypeID(*(v49 + 8 * i)), v11 == CFDictionaryGetTypeID()))
        {
          v12 = CFDictionaryGetValue(v10, @"SupportedSIMs");
          v13 = v12;
          if (v12 && (v14 = CFGetTypeID(v12), v14 == CFArrayGetTypeID()))
          {
            v15 = CFDictionaryGetValue(v10, @"OverrideConfiguration");
            v16 = v15;
            if (v15)
            {
              v17 = CFGetTypeID(v15);
              if (v17 == CFDictionaryGetTypeID())
              {
                v18 = CFArrayGetCount(v13);
                if (v18 >= 1)
                {
                  for (j = 0; j != v18; ++j)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v13, j);
                    v21 = ValueAtIndex;
                    if (ValueAtIndex)
                    {
                      v22 = CFGetTypeID(ValueAtIndex);
                      if (v22 == CFStringGetTypeID())
                      {
                        v23 = v21;
                      }

                      else
                      {
                        v23 = 0;
                      }
                    }

                    else
                    {
                      v23 = 0;
                    }

                    v24 = *(a1 + 104);
                    if (v24 && CFDictionaryContainsKey(v24, v23) && ((v25 = CFDictionaryGetValue(*(a1 + 104), v23), (v26 = v25) == 0) ? (v28 = 0) : (v27 = CFGetTypeID(v25), v27 != CFDictionaryGetTypeID()) ? (v28 = 0) : (v28 = v26), !sub_100AB0C50(*(a1 + 8), a1 + 40, v28)))
                    {
                      v29 = **(a1 + 8);
                      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                      {
                        memset(v45, 0, sizeof(v45));
                        v46 = 0;
                        ctu::cf::assign();
                        *__p = *v45;
                        v41 = v46;
                        v30 = *v45;
                        if (v46 >= 0)
                        {
                          v30 = __p;
                        }

                        *buf = 136315138;
                        v48 = v30;
                        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I This SupportedSIM %s is not allowed for MVNO Overlay for this device", buf, 0xCu);
                        if (SHIBYTE(v41) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }
                    }

                    else
                    {
                      CFDictionarySetValue(theDict, v23, v16);
                    }
                  }
                }

                continue;
              }
            }

            v35 = **(a1 + 8);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *v45 = 0;
              v32 = v35;
              v33 = "#I No Override Configuration found in the config dictionary";
              goto LABEL_40;
            }
          }

          else
          {
            v34 = **(a1 + 8);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *v45 = 0;
              v32 = v34;
              v33 = "#I No Supported SIMs found in the config dictionary";
              goto LABEL_40;
            }
          }
        }

        else
        {
          v31 = **(a1 + 8);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *v45 = 0;
            v32 = v31;
            v33 = "#I Failed to get the config dictionary in Allowed Multimode SIMs section";
LABEL_40:
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, v45, 2u);
          }
        }
      }
    }

    if (v49)
    {
      *(&v49 + 1) = v49;
      operator delete(v49);
    }

    v36 = keys[0];
    if (keys[0])
    {
      keys[1] = keys[0];
LABEL_49:
      operator delete(v36);
    }
  }

  else
  {
    v37 = **(a1 + 8);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      memset(v45, 0, sizeof(v45));
      v46 = 0;
      ctu::cf::assign();
      *keys = 0u;
      v43 = 0;
      LODWORD(v49) = 136315138;
      *(&v49 + 4) = keys;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I There is no %s in the base bundle", &v49, 0xCu);
      if (SHIBYTE(v43) < 0)
      {
        v36 = keys[0];
        goto LABEL_49;
      }
    }
  }

  sub_100010180(a2, &theDict);
  return sub_1000296E0(&theDict);
}

void sub_10042B15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, const void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v28 = *(v26 - 128);
  if (v28)
  {
    *(v26 - 120) = v28;
    operator delete(v28);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a20);
  _Unwind_Resume(a1);
}

const void **sub_10042B1F4@<X0>(CFDictionaryRef theDict@<X3>, const void **result@<X0>, Registry **a3@<X1>, const __CFString *a4@<X2>, const __CFDictionary *a5@<X4>, char a6@<W5>, _OWORD *a7@<X8>)
{
  a7[3] = 0u;
  a7[4] = 0u;
  a7[1] = 0u;
  a7[2] = 0u;
  *a7 = 0u;
  if (!a4 || !theDict || !a5)
  {
    return result;
  }

  v12 = result;
  Value = CFDictionaryGetValue(theDict, qword_101FCB700);
  if (Value)
  {
    v15 = CFGetTypeID(Value);
    v16 = v15 != CFStringGetTypeID();
  }

  else
  {
    v16 = 1;
  }

  v17 = CFDictionaryGetValue(theDict, @"HomeBundleIdentifier");
  if (!v17)
  {
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_15:
    sub_10042E2B8(a4, v12, a3, a5, v20);
LABEL_16:
    sub_10042FB00(a7, v20);
    sub_10042FB00(a7 + 40, v22);
    if (v23)
    {
      sub_100004A34(v23);
    }

    goto LABEL_18;
  }

  v18 = CFGetTypeID(v17);
  TypeID = CFStringGetTypeID();
  if (!v16)
  {
    goto LABEL_15;
  }

  if (v18 != TypeID)
  {
LABEL_14:
    sub_10042ED68(v12, a3, a4, theDict, a5, a6, v20);
    goto LABEL_16;
  }

  sub_10042E768(a4, v12, a3, a5, v20);
  sub_10042FB00(a7, v20);
  sub_10042FB00(a7 + 40, v22);
  if (v23)
  {
    sub_100004A34(v23);
  }

LABEL_18:
  sub_100005978(v22);
  if (v21)
  {
    sub_100004A34(v21);
  }

  return sub_100005978(v20);
}

const void **sub_10042B3D0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100005978((a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return sub_100005978(a1);
}

uint64_t sub_10042B424(uint64_t a1)
{
  *a1 = off_101E4C2F0;
  sub_10001021C((a1 + 104));
  sub_100005978((a1 + 96));
  sub_10001021C((a1 + 88));
  sub_10001021C((a1 + 80));
  sub_10001021C((a1 + 72));
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10042B4B4(uint64_t a1)
{
  sub_10042B424(a1);

  operator delete();
}

char *sub_10042B4EC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[39] < 0)
  {
    return sub_100005F2C(a2, *(result + 2), *(result + 3));
  }

  *a2 = *(result + 1);
  *(a2 + 16) = *(result + 4);
  return result;
}

const void **sub_10042B520@<X0>(CFDictionaryRef theDict@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  CFDictionaryRemoveValue(MutableCopy, *(a2 + 96));
  sub_100010180(a3, &MutableCopy);
  return sub_1000296E0(&MutableCopy);
}

void sub_10042B584(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

__CFDictionary *sub_10042B598(CFDictionaryRef theDict)
{
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  CFDictionaryRemoveValue(MutableCopy, qword_101FCB700);
  CFDictionaryRemoveValue(MutableCopy, @"1xIMSI");
  v2 = qword_101FCB6F0;
  Value = CFDictionaryGetValue(MutableCopy, @"GwIMSI");
  CFDictionarySetValue(MutableCopy, v2, Value);
  v4 = CFDictionaryGetValue(MutableCopy, @"GwGID1");
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      CFDictionarySetValue(MutableCopy, @"GID1", v5);
    }
  }

  v7 = CFDictionaryGetValue(MutableCopy, @"GwGID2");
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    if (v9 == CFStringGetTypeID())
    {
      CFDictionarySetValue(MutableCopy, @"GID2", v8);
    }
  }

  return MutableCopy;
}

void *sub_10042B6C0(void *a1, NSObject **a2, uint64_t a3, const void **a4, const void **a5, char *a6)
{
  sub_100010024(&v17, a4);
  sub_100010024(&v16, a5);
  sub_100010024(&v14, a4);
  sub_10042B800(a2, &v14, &v15);
  v13 = @"AllowedMultimodeSIMs";
  CFRetain(@"AllowedMultimodeSIMs");
  sub_10042A740(a1, a2, a3, &v17, &v16, &v15, &v13, a6, 0);
  sub_100005978(&v13);
  sub_10001021C(&v15);
  sub_10001021C(&v14);
  sub_10001021C(&v16);
  sub_10001021C(&v17);
  *a1 = &off_101E4C318;
  return a1;
}

void sub_10042B7C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
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
  sub_100005978(va);
  sub_10001021C(va2);
  sub_10001021C(va1);
  sub_10001021C(va3);
  sub_10001021C(va4);
  _Unwind_Resume(a1);
}

const void **sub_10042B800@<X0>(NSObject **a1@<X0>, CFDictionaryRef *a2@<X1>, __CFDictionary **a3@<X8>)
{
  Value = CFDictionaryGetValue(*a2, @"1xIMSI");
  if (Value && (v7 = CFGetTypeID(Value), v7 == CFStringGetTypeID()))
  {
    *a3 = 0;
    v8 = *a1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I 1x's cards GW part will act as the multimode key", v12, 2u);
    }

    *a3 = sub_10042B598(*a2);
  }

  else
  {
    *a3 = 0;
    v9 = *a1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I SIM info part will act as the multimode key", v12, 2u);
    }

    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, *a2);
    CFDictionaryRemoveValue(MutableCopy, qword_101FCB700);
    *a3 = MutableCopy;
  }

  v12[0] = 0;
  return sub_10001021C(v12);
}

void sub_10042B950(uint64_t a1)
{
  sub_10042B424(a1);

  operator delete();
}

void *sub_10042B988(void *a1, const void **a2, uint64_t a3, const void **a4, const void **a5, char *a6)
{
  sub_100010024(&v18, a4);
  sub_100010024(&v17, a5);
  sub_100010024(&theDict, a4);
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  CFDictionaryRemoveValue(MutableCopy, qword_101FCB700);
  v16 = MutableCopy;
  v14 = @"MVNOOverrides";
  CFRetain(@"MVNOOverrides");
  sub_10042A740(a1, a2, a3, &v18, &v17, &v16, &v14, a6, 1);
  sub_100005978(&v14);
  sub_10001021C(&v16);
  sub_10001021C(&theDict);
  sub_10001021C(&v17);
  sub_10001021C(&v18);
  *a1 = &off_101E4C340;
  return a1;
}

void sub_10042BAAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
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
  sub_100005978(va);
  sub_10001021C(va2);
  sub_10001021C(va1);
  sub_10001021C(va3);
  sub_10001021C(va4);
  _Unwind_Resume(a1);
}

void sub_10042BAF4(uint64_t a1)
{
  sub_10042B424(a1);

  operator delete();
}

char *sub_10042BB34@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if ((result[39] & 0x80000000) == 0)
  {
    if (!result[39])
    {
      *a2 = *(result + 1);
      *(a2 + 16) = *(result + 4);
      return result;
    }

    return std::operator+<char>();
  }

  if (*(result + 3))
  {
    return std::operator+<char>();
  }

  return sub_100005F2C(a2, *(result + 2), 0);
}

void *sub_10042BB84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a3;
  v10 = *(a3 + 8);
  *a1 = *a3;
  a1[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v9 = *a3;
  }

  Registry::getFileSystemInterface(a1 + 2, v9);
  a1[4] = a6;
  a1[5] = a2;
  return a1;
}

void sub_10042BBE0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10042BC00@<X0>(capabilities::ct *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = capabilities::ct::compatibleHardwareConfigurationString(a2, a1);
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    v6 = **(a1 + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Model name is empty", v7, 2u);
    }

    return __TUAssertTrigger();
  }

  return result;
}

void sub_10042BC9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10042BCB8(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v4 = *(a1 + 16);
  sub_100463AE0(*(a1 + 32), &__p);
  (*(*v4 + 136))(v14, v4, &__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_10000501C(buf, kPlistExtensionWithoutDot);
  sub_10042BC00(a1, v7);
  findMatchingFile();
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v10 < 0)
  {
    operator delete(*buf);
  }

  if (__p == v12)
  {
    v5 = **(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I No device specific overlay file name found in the base bundle", buf, 2u);
    }
  }

  else
  {
    v7[0] = 0;
    ctu::ns::AutoPool::AutoPool(v7);
    dictAfterMergingPlistsAtPath();
    if (&v6 != a2)
    {
      *buf = *a2;
      *a2 = v6;
      v6 = 0;
      sub_10001021C(buf);
    }

    sub_10001021C(&v6);
    ctu::ns::AutoPool::~AutoPool(v7);
  }

  *buf = &__p;
  sub_1000087B4(buf);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_10042BE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  ctu::ns::AutoPool::~AutoPool(&__p);
  a16 = &a23;
  sub_1000087B4(&a16);
  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  sub_10001021C(v28);
  _Unwind_Resume(a1);
}

uint64_t sub_10042BF0C(uint64_t a1, os_log_t *a2, uint64_t a3, const void **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = *a3;
  v10 = *(a3 + 8);
  *(a1 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a7;
  sub_100010024((a1 + 48), a4);
  *(a1 + 56) = 0u;
  v11 = (a1 + 56);
  *(a1 + 72) = 0u;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v42 = 0;
  v43 = 0;
  v12 = *(a1 + 32);
  sub_100010024(&v38, (a1 + 48));
  sub_100463AE0(*(a1 + 40), &v37);
  sub_100AB1764(v12, a1, &v38, &v37, &__p);
  v36.__r_.__value_.__r.__words[0] = &v44;
  v36.__r_.__value_.__l.__size_ = &v43;
  v36.__r_.__value_.__r.__words[2] = &v42;
  sub_10042E1F8(&v36, &__p);
  sub_100005978(&v41);
  sub_100005978(&v40);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  sub_10001021C(&v38);
  v13 = HIBYTE(v46);
  if (v46 < 0)
  {
    v13 = v45;
  }

  if (v13 && v43 && v42)
  {
    theDict = 0;
    sub_1009F7DEC(a2, a3, &v44, &theDict);
    if (theDict)
    {
      v34 = 0;
      __p.__r_.__value_.__r.__words[0] = CFDictionaryGetValue(theDict, v42);
      sub_100010180(&v34, &__p.__r_.__value_.__l.__data_);
      if (v34)
      {
        v14 = kGsmaOverlayKeyToken;
        memset(&__p, 0, sizeof(__p));
        ctu::cf::assign();
        v33 = __p;
        v15 = strlen(v14);
        v16 = std::string::insert(&v33, 0, v14, v15);
        v17 = *&v16->__r_.__value_.__l.__data_;
        v36.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
        *&v36.__r_.__value_.__l.__data_ = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        v18 = std::string::append(&v36, "v", 1uLL);
        v19 = *&v18->__r_.__value_.__l.__data_;
        v37.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
        *&v37.__r_.__value_.__l.__data_ = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        sub_100BEB15C(*(a1 + 40), &v31);
        memset(&__p, 0, sizeof(__p));
        ctu::cf::assign();
        v32 = __p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v32;
        }

        else
        {
          v20 = v32.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v32.__r_.__value_.__l.__size_;
        }

        v22 = std::string::append(&v37, v20, size);
        v23 = v22->__r_.__value_.__r.__words[0];
        v47[0] = v22->__r_.__value_.__l.__size_;
        *(v47 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
        v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        if (*(a1 + 87) < 0)
        {
          operator delete(*(a1 + 64));
        }

        v25 = v47[0];
        *(a1 + 64) = v23;
        *(a1 + 72) = v25;
        *(a1 + 79) = *(v47 + 7);
        *(a1 + 87) = v24;
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        sub_100005978(&v31);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        v37.__r_.__value_.__r.__words[0] = CFDictionaryGetValue(v34, @"OverrideConfiguration");
        __p.__r_.__value_.__r.__words[0] = 0;
        sub_100010180(&__p, &v37.__r_.__value_.__l.__data_);
        v26 = *v11;
        *v11 = __p.__r_.__value_.__r.__words[0];
        __p.__r_.__value_.__r.__words[0] = v26;
        sub_10001021C(&__p.__r_.__value_.__l.__data_);
      }

      else
      {
        v29 = **(a1 + 32);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#N No overlay configuration to perform GSMA overlay.", &__p, 2u);
        }
      }

      sub_10001021C(&v34);
    }

    else
    {
      v28 = **(a1 + 32);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_101770334(&v46 + 7, &v44, v28);
      }
    }

    sub_10001021C(&theDict);
  }

  else
  {
    v27 = **(a1 + 32);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#N No matched GSMA configuration present in GSMA bundle.", &__p, 2u);
    }
  }

  sub_100005978(&v42);
  sub_100005978(&v43);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  return a1;
}

char *sub_10042C4B8@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[87] < 0)
  {
    return sub_100005F2C(a2, *(result + 8), *(result + 9));
  }

  *a2 = *(result + 4);
  *(a2 + 16) = *(result + 10);
  return result;
}

void sub_10042C4EC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 24;
  v74 = a2 - 48;
  v9 = a2 - 72;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:
        v57 = sub_1000068BC(v10 + 3, v10);
        v58 = sub_1000068BC(a2 - 3, v10 + 3);
        if (v57 < 0)
        {
          if (v58 < 0)
          {
            goto LABEL_96;
          }

          v122 = v10[2];
          v98 = *v10;
          *v10 = *(v10 + 3);
          v10[2] = v10[5];
          *(v10 + 3) = v98;
          v10[5] = v122;
          if ((sub_1000068BC(a2 - 3, v10 + 3) & 0x80) == 0)
          {
            return;
          }

          v70 = v10[5];
          v71 = *(v10 + 3);
          v72 = *(a2 - 1);
          *(v10 + 3) = *v8;
          v10[5] = v72;
          *v8 = v71;
LABEL_97:
          *(a2 - 1) = v70;
          return;
        }

        if ((v58 & 0x80000000) == 0)
        {
          return;
        }

        v59 = v10[5];
        v60 = *(v10 + 3);
        v61 = *(a2 - 1);
        *(v10 + 3) = *v8;
        v10[5] = v61;
        *v8 = v60;
        *(a2 - 1) = v59;
LABEL_71:
        if ((sub_1000068BC(v10 + 3, v10) & 0x80) != 0)
        {
          v121 = v10[2];
          v97 = *v10;
          *v10 = *(v10 + 3);
          v10[2] = v10[5];
          *(v10 + 3) = v97;
          v10[5] = v121;
        }

        return;
      case 4uLL:

        sub_10042CFA4(v10, v10 + 3, v10 + 6, a2 - 3);
        return;
      case 5uLL:
        sub_10042CFA4(v10, v10 + 3, v10 + 6, v10 + 9);
        if ((sub_1000068BC(a2 - 3, v10 + 9) & 0x80) == 0)
        {
          return;
        }

        v62 = v10[11];
        v63 = *(v10 + 9);
        v64 = *(a2 - 1);
        *(v10 + 9) = *v8;
        v10[11] = v64;
        *v8 = v63;
        *(a2 - 1) = v62;
        if ((sub_1000068BC(v10 + 9, v10 + 6) & 0x80) == 0)
        {
          return;
        }

        v65 = v10[8];
        v66 = *(v10 + 3);
        *(v10 + 3) = *(v10 + 9);
        v10[8] = v10[11];
        *(v10 + 9) = v66;
        v10[11] = v65;
        if ((sub_1000068BC(v10 + 6, v10 + 3) & 0x80) == 0)
        {
          return;
        }

        v67 = v10[5];
        v68 = *(v10 + 3);
        *(v10 + 3) = *(v10 + 3);
        v10[5] = v10[8];
        *(v10 + 3) = v68;
        v10[8] = v67;
        goto LABEL_71;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        sub_10042D164(v10, a2);
      }

      else
      {

        sub_10042D274(v10, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_10042DA8C(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 >= 0xC01)
    {
      v17 = sub_1000068BC(&v10[3 * v15], v10);
      v18 = sub_1000068BC(a2 - 3, (a1 + 24 * v15));
      if (v17 < 0)
      {
        if (v18 < 0)
        {
          v105 = *(a1 + 16);
          v81 = *a1;
          v29 = *v8;
          *(a1 + 16) = *(a2 - 1);
          *a1 = v29;
        }

        else
        {
          v104 = *(a1 + 16);
          v80 = *a1;
          v25 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v25;
          v16[2] = v104;
          *v16 = v80;
          if ((sub_1000068BC(a2 - 3, (a1 + 24 * v15)) & 0x80) == 0)
          {
            goto LABEL_29;
          }

          v105 = v16[2];
          v81 = *v16;
          v26 = *v8;
          v16[2] = *(a2 - 1);
          *v16 = v26;
        }

        *v8 = v81;
        *(a2 - 1) = v105;
      }

      else if (v18 < 0)
      {
        v100 = v16[2];
        v76 = *v16;
        v19 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v19;
        *v8 = v76;
        *(a2 - 1) = v100;
        if ((sub_1000068BC((a1 + 24 * v15), a1) & 0x80) != 0)
        {
          v101 = *(a1 + 16);
          v77 = *a1;
          v20 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v20;
          v16[2] = v101;
          *v16 = v77;
        }
      }

LABEL_29:
      v30 = (a1 + 24 * v15 - 24);
      v31 = sub_1000068BC(v30, (a1 + 24));
      v32 = sub_1000068BC(v74, v30);
      if (v31 < 0)
      {
        if (v32 < 0)
        {
          v38 = *(a1 + 40);
          v39 = *(a1 + 24);
          v40 = *(a2 - 4);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v40;
          *v74 = v39;
          *(a2 - 4) = v38;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v35 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v30;
          *(a1 + 40) = v35;
          *(a1 + 24 * v15 - 8) = v110;
          *v30 = v86;
          if ((sub_1000068BC(v74, v30) & 0x80) != 0)
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v30;
            v36 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 4);
            *v30 = v36;
            *v74 = v87;
            *(a2 - 4) = v111;
          }
        }
      }

      else if (v32 < 0)
      {
        v108 = *(a1 + 24 * v15 - 8);
        v84 = *v30;
        v33 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 4);
        *v30 = v33;
        *v74 = v84;
        *(a2 - 4) = v108;
        if ((sub_1000068BC(v30, (a1 + 24)) & 0x80) != 0)
        {
          v85 = *(a1 + 24);
          v109 = *(a1 + 40);
          v34 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v30;
          *(a1 + 40) = v34;
          *(a1 + 24 * v15 - 8) = v109;
          *v30 = v85;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = sub_1000068BC((v41 + 24), (a1 + 48));
      v43 = sub_1000068BC(a2 - 9, (v41 + 24));
      if (v42 < 0)
      {
        if (v43 < 0)
        {
          v48 = *(a1 + 64);
          v49 = *(a1 + 48);
          v50 = *(a2 - 7);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v50;
          *v9 = v49;
        }

        else
        {
          v90 = *(a1 + 48);
          v114 = *(a1 + 64);
          v46 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v46;
          *(v41 + 40) = v114;
          *(v41 + 24) = v90;
          if ((sub_1000068BC(a2 - 9, (v41 + 24)) & 0x80) == 0)
          {
            goto LABEL_48;
          }

          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v47 = *v9;
          *(v41 + 40) = *(a2 - 7);
          *(v41 + 24) = v47;
          *v9 = v91;
          v48 = v115;
        }

        *(a2 - 7) = v48;
      }

      else if (v43 < 0)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v44 = *v9;
        *(v41 + 40) = *(a2 - 7);
        *(v41 + 24) = v44;
        *v9 = v88;
        *(a2 - 7) = v112;
        if ((sub_1000068BC((v41 + 24), (a1 + 48)) & 0x80) != 0)
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v45 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v45;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

LABEL_48:
      v51 = sub_1000068BC(v16, v30);
      v52 = sub_1000068BC((v41 + 24), v16);
      if ((v51 & 0x80) == 0)
      {
        if (v52 < 0)
        {
          v116 = v16[2];
          v92 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
          if ((sub_1000068BC(v16, v30) & 0x80) != 0)
          {
            v117 = v30[2];
            v93 = *v30;
            *v30 = *v16;
            v30[2] = v16[2];
            v16[2] = v117;
            *v16 = v93;
          }
        }

        goto LABEL_57;
      }

      if (v52 < 0)
      {
        v119 = v30[2];
        v95 = *v30;
        *v30 = *(v41 + 24);
        v30[2] = *(v41 + 40);
LABEL_56:
        *(v41 + 40) = v119;
        *(v41 + 24) = v95;
      }

      else
      {
        v118 = v30[2];
        v94 = *v30;
        *v30 = *v16;
        v30[2] = v16[2];
        v16[2] = v118;
        *v16 = v94;
        if ((sub_1000068BC((v41 + 24), v16) & 0x80) != 0)
        {
          v119 = v16[2];
          v95 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
          goto LABEL_56;
        }
      }

LABEL_57:
      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = v16[2];
      *a1 = v53;
      v16[2] = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v21 = sub_1000068BC(v10, &v10[3 * v15]);
    v22 = sub_1000068BC(a2 - 3, a1);
    if (v21 < 0)
    {
      if (v22 < 0)
      {
        v107 = v16[2];
        v83 = *v16;
        v37 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v37;
      }

      else
      {
        v106 = v16[2];
        v82 = *v16;
        v27 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v27;
        *(a1 + 16) = v106;
        *a1 = v82;
        if ((sub_1000068BC(a2 - 3, a1) & 0x80) == 0)
        {
          goto LABEL_58;
        }

        v107 = *(a1 + 16);
        v83 = *a1;
        v28 = *v8;
        *(a1 + 16) = *(a2 - 1);
        *a1 = v28;
      }

      *v8 = v83;
      *(a2 - 1) = v107;
      goto LABEL_58;
    }

    if (v22 < 0)
    {
      v102 = *(a1 + 16);
      v78 = *a1;
      v23 = *v8;
      *(a1 + 16) = *(a2 - 1);
      *a1 = v23;
      *v8 = v78;
      *(a2 - 1) = v102;
      if ((sub_1000068BC(a1, (a1 + 24 * v15)) & 0x80) != 0)
      {
        v103 = v16[2];
        v79 = *v16;
        v24 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v24;
        *(a1 + 16) = v103;
        *a1 = v79;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && (sub_1000068BC((a1 - 24), a1) & 0x80) == 0)
    {
      v10 = sub_10042D360(a1, a2);
      goto LABEL_65;
    }

    v54 = sub_10042D4D8(a1, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = sub_10042D650(a1, v54);
    v10 = v54 + 3;
    if (sub_10042D650((v54 + 3), a2))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      sub_10042C4EC(a1, v54, a3, -v12, a5 & 1);
      v10 = v54 + 3;
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 < 2)
  {
    return;
  }

  if (v14 != 2)
  {
    goto LABEL_10;
  }

  v69 = sub_1000068BC(a2 - 3, v10);
  if (v69 < 0)
  {
LABEL_96:
    v123 = v10[2];
    v99 = *v10;
    v73 = *v8;
    v10[2] = *(a2 - 1);
    *v10 = v73;
    *v8 = v99;
    v70 = v123;
    goto LABEL_97;
  }
}

__n128 sub_10042CFA4(void **a1, void **a2, void **a3, void *a4)
{
  v8 = sub_1000068BC(a2, a1);
  v9 = sub_1000068BC(a3, a2);
  if (v8 < 0)
  {
    if (v9 < 0)
    {
      v19 = a1[2];
      v20 = *a1;
      v22 = a3[2];
      *a1 = *a3;
      a1[2] = v22;
    }

    else
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
      if ((sub_1000068BC(a3, a2) & 0x80) == 0)
      {
        goto LABEL_10;
      }

      v19 = a2[2];
      v20 = *a2;
      v21 = a3[2];
      *a2 = *a3;
      a2[2] = v21;
    }

    *a3 = v20;
    a3[2] = v19;
    goto LABEL_10;
  }

  if (v9 < 0)
  {
    v10 = a2[2];
    v11 = *a2;
    v12 = a3[2];
    *a2 = *a3;
    a2[2] = v12;
    *a3 = v11;
    a3[2] = v10;
    if ((sub_1000068BC(a2, a1) & 0x80) != 0)
    {
      v13 = a1[2];
      v14 = *a1;
      v15 = a2[2];
      *a1 = *a2;
      a1[2] = v15;
      *a2 = v14;
      a2[2] = v13;
    }
  }

LABEL_10:
  if ((sub_1000068BC(a4, a3) & 0x80) != 0)
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = a4[2];
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    a4[2] = v24;
    if ((sub_1000068BC(a3, a2) & 0x80) != 0)
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if ((sub_1000068BC(a2, a1) & 0x80) != 0)
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

void sub_10042D164(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    v16 = v2;
    v17 = v3;
    v6 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v6;
        if ((sub_1000068BC(v6, v9) & 0x80) != 0)
        {
          v14 = *v8;
          v15 = v8[2];
          v8[1] = 0;
          v8[2] = 0;
          *v8 = 0;
          v10 = v7;
          do
          {
            v11 = a1 + v10;
            if (*(a1 + v10 + 47) < 0)
            {
              operator delete(*(v11 + 24));
            }

            *(v11 + 24) = *v11;
            *(v11 + 40) = *(v11 + 16);
            *(v11 + 23) = 0;
            *v11 = 0;
            if (!v10)
            {
              v13 = a1;
              goto LABEL_13;
            }

            v10 -= 24;
          }

          while ((sub_1000068BC(&v14, (v10 + a1)) & 0x80) != 0);
          v12 = *(a1 + v10 + 47);
          v13 = a1 + v10 + 24;
          if (v12 < 0)
          {
            operator delete(*v13);
          }

LABEL_13:
          *v13 = v14;
          *(v13 + 16) = v15;
        }

        v6 = v8 + 3;
        v7 += 24;
      }

      while (v8 + 3 != a2);
    }
  }
}

void sub_10042D274(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v13 = v2;
    v14 = v3;
    v5 = a1;
    v6 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v7 = a1 - 3;
      do
      {
        v8 = v5;
        v5 = v6;
        if ((sub_1000068BC(v6, v8) & 0x80) != 0)
        {
          v11 = *v5;
          v12 = v5[2];
          v5[1] = 0;
          v5[2] = 0;
          *v5 = 0;
          v9 = v7;
          do
          {
            if (*(v9 + 71) < 0)
            {
              operator delete(v9[6]);
            }

            *(v9 + 3) = *(v9 + 3);
            v9[8] = v9[5];
            *(v9 + 47) = 0;
            *(v9 + 24) = 0;
            v10 = sub_1000068BC(&v11, v9);
            v9 -= 3;
          }

          while (v10 < 0);
          if (*(v9 + 71) < 0)
          {
            operator delete(v9[6]);
          }

          *(v9 + 3) = v11;
          v9[8] = v12;
        }

        v6 = v5 + 3;
        v7 += 3;
      }

      while (v5 + 3 != a2);
    }
  }
}

void **sub_10042D360(void **a1, unint64_t a2)
{
  v2 = a2;
  v14 = *a1;
  v15 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if ((sub_1000068BC(&v14, (a2 - 24)) & 0x80) != 0)
  {
    v5 = a1;
    do
    {
      v5 += 3;
    }

    while ((sub_1000068BC(&v14, v5) & 0x80) == 0);
  }

  else
  {
    v4 = a1 + 3;
    do
    {
      v5 = v4;
      if (v4 >= v2)
      {
        break;
      }

      v6 = sub_1000068BC(&v14, v4);
      v4 = v5 + 3;
    }

    while ((v6 & 0x80) == 0);
  }

  if (v5 < v2)
  {
    do
    {
      v2 -= 24;
    }

    while ((sub_1000068BC(&v14, v2) & 0x80) != 0);
  }

  while (v5 < v2)
  {
    v7 = *v5;
    v17 = v5[2];
    v16 = v7;
    v8 = *v2;
    v5[2] = *(v2 + 16);
    *v5 = v8;
    v9 = v16;
    *(v2 + 16) = v17;
    *v2 = v9;
    do
    {
      v5 += 3;
    }

    while ((sub_1000068BC(&v14, v5) & 0x80) == 0);
    do
    {
      v2 -= 24;
    }

    while ((sub_1000068BC(&v14, v2) & 0x80) != 0);
  }

  v10 = v5 - 3;
  if (v5 - 3 == a1)
  {
    if (*(v5 - 1) < 0)
    {
      operator delete(*v10);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v11 = *v10;
    a1[2] = *(v5 - 1);
    *a1 = v11;
    *(v5 - 1) = 0;
    *(v5 - 24) = 0;
  }

  v12 = v14;
  *(v5 - 1) = v15;
  *v10 = v12;
  return v5;
}

void *sub_10042D4D8(__int128 *a1, void *a2)
{
  v4 = 0;
  v15 = *a1;
  v16 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  do
  {
    v4 += 24;
  }

  while ((sub_1000068BC((a1 + v4), &v15) & 0x80) != 0);
  v5 = a1 + v4;
  if (v4 == 24)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      a2 -= 3;
    }

    while ((sub_1000068BC(a2, &v15) & 0x80) == 0);
  }

  else
  {
    do
    {
      a2 -= 3;
    }

    while ((sub_1000068BC(a2, &v15) & 0x80) == 0);
  }

  v6 = (a1 + v4);
  if (v5 < a2)
  {
    v7 = a2;
    do
    {
      v17 = *v6;
      v8 = v17;
      v18 = v6[2];
      v9 = v18;
      v10 = v7[2];
      *v6 = *v7;
      v6[2] = v10;
      v7[2] = v9;
      *v7 = v8;
      do
      {
        v6 += 3;
      }

      while ((sub_1000068BC(v6, &v15) & 0x80) != 0);
      do
      {
        v7 -= 3;
      }

      while ((sub_1000068BC(v7, &v15) & 0x80) == 0);
    }

    while (v6 < v7);
  }

  v11 = (v6 - 3);
  if (v6 - 3 == a1)
  {
    if (*(v6 - 1) < 0)
    {
      operator delete(*v11);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v12 = *v11;
    *(a1 + 2) = *(v6 - 1);
    *a1 = v12;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  v13 = v15;
  *(v6 - 1) = v16;
  *v11 = v13;
  return v6 - 3;
}

BOOL sub_10042D650(uint64_t a1, void **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = sub_1000068BC((a1 + 24), a1);
        v15 = sub_1000068BC(v5, (a1 + 24));
        if (v14 < 0)
        {
          if (v15 < 0)
          {
LABEL_26:
            v30 = *(a1 + 16);
            v31 = *a1;
            v33 = v5[2];
            *a1 = *v5;
            *(a1 + 16) = v33;
            goto LABEL_27;
          }

          v28 = *(a1 + 16);
          v29 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v29;
          *(a1 + 40) = v28;
          if ((sub_1000068BC(v5, (a1 + 24)) & 0x80) != 0)
          {
            v30 = *(a1 + 40);
            v31 = *(a1 + 24);
            v32 = v5[2];
            *(a1 + 24) = *v5;
            *(a1 + 40) = v32;
LABEL_27:
            *v5 = v31;
            v5[2] = v30;
          }

          return 1;
        }

        if ((v15 & 0x80000000) == 0)
        {
          return 1;
        }

        v16 = *(a1 + 40);
        v17 = *(a1 + 24);
        v18 = v5[2];
        *(a1 + 24) = *v5;
        *(a1 + 40) = v18;
        *v5 = v17;
        v5[2] = v16;
        break;
      case 4:
        sub_10042CFA4(a1, (a1 + 24), (a1 + 48), a2 - 3);
        return 1;
      case 5:
        v6 = a2 - 3;
        sub_10042CFA4(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        if ((sub_1000068BC(v6, (a1 + 72)) & 0x80) == 0)
        {
          return 1;
        }

        v7 = *(a1 + 88);
        v8 = *(a1 + 72);
        v9 = v6[2];
        *(a1 + 72) = *v6;
        *(a1 + 88) = v9;
        *v6 = v8;
        v6[2] = v7;
        if ((sub_1000068BC((a1 + 72), (a1 + 48)) & 0x80) == 0)
        {
          return 1;
        }

        v10 = *(a1 + 64);
        v11 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v11;
        *(a1 + 88) = v10;
        if ((sub_1000068BC((a1 + 48), (a1 + 24)) & 0x80) == 0)
        {
          return 1;
        }

        v12 = *(a1 + 40);
        v13 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v13;
        *(a1 + 64) = v12;
        break;
      default:
        goto LABEL_18;
    }

    if ((sub_1000068BC((a1 + 24), a1) & 0x80) != 0)
    {
      v19 = *(a1 + 16);
      v20 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v20;
      *(a1 + 40) = v19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 3;
    if ((sub_1000068BC(a2 - 3, a1) & 0x80) != 0)
    {
      goto LABEL_26;
    }

    return 1;
  }

LABEL_18:
  v21 = (a1 + 48);
  v22 = sub_1000068BC((a1 + 24), a1);
  v23 = sub_1000068BC((a1 + 48), (a1 + 24));
  if (v22 < 0)
  {
    if (v23 < 0)
    {
      v36 = *(a1 + 16);
      v37 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v34 = *(a1 + 16);
      v35 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v35;
      *(a1 + 40) = v34;
      if ((sub_1000068BC((a1 + 48), (a1 + 24)) & 0x80) == 0)
      {
        goto LABEL_33;
      }

      v36 = *(a1 + 40);
      v37 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v37;
    *(a1 + 64) = v36;
  }

  else if (v23 < 0)
  {
    v24 = *(a1 + 40);
    v25 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v25;
    *(a1 + 64) = v24;
    if ((sub_1000068BC((a1 + 24), a1) & 0x80) != 0)
    {
      v26 = *(a1 + 16);
      v27 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v27;
      *(a1 + 40) = v26;
    }
  }

LABEL_33:
  v38 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if ((sub_1000068BC(v38, v21) & 0x80) != 0)
    {
      v47 = *v38;
      v48 = v38[2];
      v38[1] = 0;
      v38[2] = 0;
      *v38 = 0;
      v41 = v39;
      do
      {
        v42 = a1 + v41;
        if (*(a1 + v41 + 95) < 0)
        {
          operator delete(*(v42 + 72));
        }

        *(v42 + 72) = *(v42 + 48);
        *(v42 + 88) = *(v42 + 64);
        *(v42 + 71) = 0;
        *(v42 + 48) = 0;
        if (v41 == -48)
        {
          v45 = a1;
          goto LABEL_44;
        }

        v43 = sub_1000068BC(&v47, (a1 + v41 + 24));
        v41 -= 24;
      }

      while (v43 < 0);
      v44 = *(a1 + v41 + 95);
      v45 = a1 + v41 + 72;
      if (v44 < 0)
      {
        operator delete(*v45);
      }

LABEL_44:
      *v45 = v47;
      *(v45 + 16) = v48;
      if (++v40 == 8)
      {
        return v38 + 3 == a2;
      }
    }

    v21 = v38;
    v39 += 24;
    v38 += 3;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

void *sub_10042DA8C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        sub_10042DCC0(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if ((sub_1000068BC(v13, a1) & 0x80) != 0)
        {
          v14 = v13[2];
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          v13[2] = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          sub_10042DCC0(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = (a2 - 3);
      do
      {
        v19 = *a1;
        *v27 = *(a1 + 8);
        *&v27[7] = *(a1 + 15);
        v20 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v21 = sub_10042DE50(a1, a4, v17);
        v22 = v21;
        v23 = *(v21 + 23);
        if (v18 == v21)
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          *v22 = v19;
          *(v22 + 1) = *v27;
          *(v22 + 15) = *&v27[7];
          *(v22 + 23) = v20;
        }

        else
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          v24 = *v18;
          *(v22 + 2) = *(v18 + 2);
          *v22 = v24;
          *v18 = v19;
          *(v18 + 1) = *v27;
          *(v18 + 15) = *&v27[7];
          *(v18 + 23) = v20;
          sub_10042DF1C(a1, v22 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v22 - a1 + 24) >> 3));
        }

        v18 = (v18 - 24);
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_10042DCA8(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10042DCC0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v21 = v4;
    v22 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v11 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v12 = a1 + 24 * v11;
      v13 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v13 < a3 && (sub_1000068BC((a1 + 24 * v11), (v12 + 24)) & 0x80u) != 0)
      {
        v12 += 24;
        v11 = v13;
      }

      if ((sub_1000068BC(v12, v7) & 0x80) == 0)
      {
        v19 = *v7;
        v20 = v7[1].n128_u64[0];
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        while (1)
        {
          v15 = v12;
          if (v7[1].n128_i8[7] < 0)
          {
            operator delete(v7->n128_u64[0]);
          }

          v16 = *v12;
          v7[1].n128_u64[0] = *(v12 + 16);
          *v7 = v16;
          *(v12 + 23) = 0;
          *v12 = 0;
          if (v9 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = a1 + 24 * v17;
          v18 = 2 * v11 + 2;
          if (v18 < a3 && (sub_1000068BC((a1 + 24 * v17), (v12 + 24)) & 0x80u) != 0)
          {
            v12 += 24;
            v17 = v18;
          }

          v7 = v15;
          v11 = v17;
          if ((sub_1000068BC(v12, &v19) & 0x80) != 0)
          {
            if (v15[1].n128_i8[7] < 0)
            {
              operator delete(v15->n128_u64[0]);
            }

            break;
          }
        }

        result = v19;
        v15[1].n128_u64[0] = v20;
        *v15 = result;
      }
    }
  }

  return result;
}

__int128 *sub_10042DE50(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 24 * v5;
    v8 = (v7 + 24);
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = (v7 + 48);
      if ((sub_1000068BC((v7 + 24), (v7 + 48)) & 0x80u) != 0)
      {
        v8 = v11;
        v5 = v10;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v12 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v12;
    *(v8 + 23) = 0;
    *v8 = 0;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

double sub_10042DF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v15 = v4;
    v16 = v5;
    v7 = (a4 - 2) >> 1;
    v8 = (a1 + 24 * v7);
    v9 = (a2 - 24);
    if ((sub_1000068BC(v8, (a2 - 24)) & 0x80) != 0)
    {
      v13 = *v9;
      v14 = *(v9 + 2);
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *v9 = 0;
      while (1)
      {
        v11 = v8;
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        v12 = *v8;
        *(v9 + 2) = *(v8 + 2);
        *v9 = v12;
        *(v8 + 23) = 0;
        *v8 = 0;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 24 * v7);
        v9 = v11;
        if ((sub_1000068BC(v8, &v13) & 0x80) == 0)
        {
          if (*(v11 + 23) < 0)
          {
            operator delete(*v11);
          }

          break;
        }
      }

      result = *&v13;
      *v11 = v13;
      *(v11 + 2) = v14;
    }
  }

  return result;
}

std::string *sub_10042E00C(const std::string **a1, std::string **a2, void ***a3, void ***a4, std::string **a5)
{
  v6 = *a1;
  v7 = *a2;
  if (*a1 == *a2)
  {
    return v6;
  }

  for (i = *a3; *a3 != *a4; i = *a3)
  {
    if ((sub_1000068BC(v6, i) & 0x80) != 0)
    {
      std::string::operator=(*a5, *a1);
      v14 = a5;
    }

    else
    {
      v13 = sub_1000068BC(*a3, &(*a1)->__r_.__value_.__l.__data_);
      v14 = a3;
      if (v13 < 0)
      {
        goto LABEL_8;
      }
    }

    ++*a1;
LABEL_8:
    ++*v14;
    v6 = *a1;
    v7 = *a2;
    if (*a1 == *a2)
    {
      return v6;
    }
  }

  v15 = *a5;
  while (v6 != v7)
  {
    std::string::operator=(v15++, v6++);
  }

  return v7;
}

void sub_10042E114(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 8);
      sub_10042E174(a1, v2);
      v2 = v5;
    }
  }
}

void sub_10042E174(int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

const void **sub_10042E1B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return sub_100005978(a1);
}

void sub_10042E1F8(void *a1, __int128 *a2)
{
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
  v6 = a2 + 3;
  v7 = a1[1];
  if (v7 != (a2 + 24))
  {
    v8 = *v7;
    *v7 = 0;
    v12 = v8;
    *v7 = *v6;
    *v6 = 0;
    sub_100005978(&v12);
  }

  v9 = (a2 + 2);
  v10 = a1[2];
  if (v10 != (a2 + 2))
  {
    v11 = *v10;
    *v10 = 0;
    v12 = v11;
    *v10 = *v9;
    *v9 = 0;
    sub_100005978(&v12);
  }
}

const void **sub_10042E2B8@<X0>(CFStringRef theString@<X2>, os_log_t *a2@<X0>, Registry **a3@<X1>, const __CFDictionary *a4@<X4>, _OWORD *a5@<X8>)
{
  v33 = 0;
  cf = 0;
  if (theString && CFStringGetLength(theString) >= 1)
  {
    theArray = 0;
    sub_100AAFD34(a2, theString, a4, &theArray);
    if (theArray)
    {
      if (CFArrayGetCount(theArray) == 1)
      {
        *v35 = CFArrayGetValueAtIndex(theArray, 0);
        *v41 = 0;
        v10 = sub_100060DE8(v41, v35);
        v11 = cf;
        cf = *v41;
        *v41 = v11;
        sub_100005978(v10);
        sub_100222570(&v33, &cf);
        v12 = *a2;
        if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
        {
          memset(v41, 0, sizeof(v41));
          v42 = 0;
          ctu::cf::assign();
          *v35 = *v41;
          v36 = v42;
          if (v42 >= 0)
          {
            v13 = v35;
          }

          else
          {
            v13 = *v35;
          }

          v28 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          copyFileName(&v28, &v29);
          memset(v41, 0, sizeof(v41));
          v42 = 0;
          ctu::cf::assign();
          *__p = *v41;
          v31 = v42;
          v14 = __p;
          if (v42 < 0)
          {
            v14 = __p[0];
          }

          *buf = 136446466;
          v38 = v13;
          v39 = 2082;
          v40 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Best match for the given Carrier ID and prefix '%{public}s': '%{public}s'", buf, 0x16u);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
          }

          sub_100005978(&v29);
          sub_100005978(&v28);
          if (SHIBYTE(v36) < 0)
          {
            operator delete(*v35);
          }
        }

        v15 = 50.0;
        goto LABEL_25;
      }

      v21 = *a2;
      v15 = 0.0;
      if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
      {
        Count = CFArrayGetCount(theArray);
        *v41 = 134217984;
        *&v41[4] = Count;
        v18 = "#I No Unique match found for CarrierBundle = %zu";
        v19 = v21;
        v20 = 12;
        goto LABEL_24;
      }
    }

    else
    {
      v17 = *a2;
      v15 = 0.0;
      if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 0;
        v18 = "#I No candidates were found in the collection";
        v19 = v17;
        v20 = 2;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, v41, v20);
      }
    }

LABEL_25:
    sub_100010250(&theArray);
    goto LABEL_26;
  }

  v16 = *a2;
  v15 = 0.0;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Invalid prefix provided to search for best match with SIM Info", v41, 2u);
  }

LABEL_26:
  a5[3] = 0u;
  a5[4] = 0u;
  a5[1] = 0u;
  a5[2] = 0u;
  *a5 = 0u;
  v27 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v26 = v33;
  if (v33)
  {
    CFRetain(v33);
  }

  sub_10042F6C8(a5, a3, &v27, &v26, v15, v15);
  sub_100005978(&v26);
  sub_100005978(&v27);
  v23 = *a2;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sub_10042F45C(a5, v41);
    if (v42 >= 0)
    {
      v24 = v41;
    }

    else
    {
      v24 = *v41;
    }

    *v35 = 136446210;
    *&v35[4] = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Returning bundle match: %{public}s", v35, 0xCu);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(*v41);
    }
  }

  sub_100005978(&v33);
  return sub_100005978(&cf);
}

void sub_10042E698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10042E768@<X0>(CFStringRef theString@<X2>, os_log_t *a2@<X0>, Registry **a3@<X1>, const __CFDictionary *a4@<X3>, _OWORD *a5@<X8>)
{
  v35 = 0;
  if (theString)
  {
    if (CFStringGetLength(theString) > 0)
    {
      theArray = 0;
      sub_100AAFD34(a2, theString, a4, &theArray);
      if (theArray && CFArrayGetCount(theArray) > 0)
      {
        Count = CFArrayGetCount(theArray);
        v11 = 0.0;
        if (Count >= 1)
        {
          v12 = 0;
          while (1)
          {
            cf = 0;
            __p[0] = CFArrayGetValueAtIndex(theArray, v12);
            sub_100060DE8(&cf, __p);
            v27 = cf;
            theString2 = 0;
            if (cf)
            {
              CFRetain(cf);
            }

            copyFileName(&v27, &theString2);
            sub_100005978(&v27);
            if (theString2)
            {
              if (CFStringCompare(theString, theString2, 1uLL) == kCFCompareEqualTo)
              {
                break;
              }
            }

            sub_100005978(&theString2);
            sub_100005978(&cf);
            if (Count == ++v12)
            {
              goto LABEL_39;
            }
          }

          sub_100222570(&v35, &cf);
          v19 = *a2;
          if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v35;
            if (v35)
            {
              CFRetain(v35);
            }

            copyFileName(&v25, &v26);
            __p[0] = 0;
            __p[1] = 0;
            v37 = 0;
            ctu::cf::assign();
            *buf = *__p;
            v39 = v37;
            v20 = buf;
            if (v37 < 0)
            {
              v20 = __p[0];
            }

            *v40 = 138543618;
            v41 = theString;
            v42 = 2082;
            v43 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Best match for the given Home Bundle Identifier '%{public}@': '%{public}s'", v40, 0x16u);
            if (SHIBYTE(v39) < 0)
            {
              operator delete(*buf);
            }

            sub_100005978(&v26);
            sub_100005978(&v25);
          }

          sub_100005978(&theString2);
          sub_100005978(&cf);
          v11 = 50.0;
        }

LABEL_39:
        a5[3] = 0u;
        a5[4] = 0u;
        a5[1] = 0u;
        a5[2] = 0u;
        *a5 = 0u;
        v24 = v35;
        if (v35)
        {
          CFRetain(v35);
          v23 = v35;
          if (v35)
          {
            CFRetain(v35);
          }
        }

        else
        {
          v23 = 0;
        }

        sub_10042F6C8(a5, a3, &v24, &v23, v11, v11);
        sub_100005978(&v23);
        sub_100005978(&v24);
        v16 = *a2;
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        sub_10042F45C(a5, __p);
        if (v37 >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = __p[0];
        }

        *buf = 136446210;
        *&buf[4] = v21;
        v18 = "#I Returning bundle match: %{public}s";
      }

      else
      {
        a5[3] = 0u;
        a5[4] = 0u;
        a5[1] = 0u;
        a5[2] = 0u;
        *a5 = 0u;
        v31 = v35;
        if (v35)
        {
          CFRetain(v35);
          v30 = v35;
          if (v35)
          {
            CFRetain(v35);
          }
        }

        else
        {
          v30 = 0;
        }

        sub_10042F6C8(a5, a3, &v31, &v30, 0.0, 0.0);
        sub_100005978(&v30);
        sub_100005978(&v31);
        v16 = *a2;
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        sub_10042F45C(a5, __p);
        if (v37 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        *buf = 136446210;
        *&buf[4] = v17;
        v18 = "#I No candidates were found in the collection. Returning bundle match: %{public}s";
      }

      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_50:
      sub_100010250(&theArray);
      return sub_100005978(&v35);
    }

    v15 = v35;
    *a5 = 0u;
    a5[1] = 0u;
    a5[2] = 0u;
    a5[3] = 0u;
    a5[4] = 0u;
    v34 = v15;
  }

  else
  {
    a5[3] = 0u;
    a5[4] = 0u;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
    v34 = 0;
  }

  v33 = 0;
  sub_10042F6C8(a5, a3, &v34, &v33, 0.0, 0.0);
  sub_100005978(&v33);
  sub_100005978(&v34);
  v13 = *a2;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sub_10042F45C(a5, __p);
    v14 = v37 >= 0 ? __p : __p[0];
    *buf = 136446210;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Invalid homeBundleIdentifierFromMatchInfo provided to search for best match with SIM Info. Returning bundle match: %{public}s", buf, 0xCu);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_100005978(&v35);
}

void sub_10042EC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, int a39, __int16 a40, char a41, char a42, int a43, __int16 a44, char a45, char a46, int a47, __int16 a48, char a49, char a50, int a51, __int16 a52, char a53, char a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10042ED68@<X0>(os_log_t *a1@<X0>, Registry **a2@<X1>, const __CFString *a3@<X2>, const __CFDictionary *a4@<X3>, const __CFDictionary *a5@<X4>, char a6@<W5>, _OWORD *a7@<X8>)
{
  v43 = 0;
  v44 = 0;
  v14 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT) && (__p[0] = 0, __p[1] = 0, v46 = 0, ctu::cf::assign(), *cf = 0u, v48 = 0, *buf = 136315138, *&buf[4] = cf, _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Provided match prefix to search based on SIM information: %s", buf, 0xCu), SHIBYTE(v48) < 0))
  {
    operator delete(cf[0]);
    if (!a3)
    {
      goto LABEL_43;
    }
  }

  else if (!a3)
  {
LABEL_43:
    v29 = *a1;
    v25 = 0.0;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Invalid prefix provided to search for best match with SIM Info", __p, 2u);
    }

    v26 = 0.0;
    goto LABEL_53;
  }

  if (CFStringGetLength(a3) < 1)
  {
    goto LABEL_43;
  }

  *buf = 0;
  sub_100AAFD34(a1, a3, a5, buf);
  if (!*buf)
  {
    v30 = *a1;
    v25 = 0.0;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      v31 = "#I No candidates were found in the collection";
LABEL_50:
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, __p, 2u);
    }

LABEL_51:
    v26 = 0.0;
    goto LABEL_52;
  }

  Count = CFArrayGetCount(*buf);
  if (Count < 1)
  {
    v30 = *a1;
    v25 = 0.0;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      v31 = "#I No candidates in the candidate list";
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  __p[0] = 0;
  __p[1] = 0;
  v46 = 0;
  cf[0] = 0;
  sub_10042FB60(__p, Count);
  v42 = 0;
  sub_10030D8CC(&v42, a4);
  v16 = 0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  do
  {
    cf[0] = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(*buf, v16);
    sub_100060DE8(cf, &ValueAtIndex);
    v40 = cf[0];
    ValueAtIndex = 0;
    if (cf[0])
    {
      CFRetain(cf[0]);
    }

    copyFileName(&v40, &ValueAtIndex);
    sub_100005978(&v40);
    if (ValueAtIndex)
    {
      *v39 = 0;
      sub_10030DCA4(v39, a1, ValueAtIndex);
      v21 = sub_10030DCE4(v39, &v42);
      *(__p[0] + v16) = v21;
      if (v21 != 0.0)
      {
        v38 = cf[0];
        if (cf[0])
        {
          CFRetain(cf[0]);
        }

        v22 = sub_100109238();
        sub_100005978(&v38);
        if (!v22)
        {
          *(__p[0] + v16) = 0;
          goto LABEL_30;
        }

        v21 = *(__p[0] + v16);
      }

      if (v21 != 0.0)
      {
        if ((a6 & 1) == 0)
        {
          v37 = cf[0];
          if (cf[0])
          {
            CFRetain(cf[0]);
          }

          v23 = sub_100109238();
          sub_100005978(&v37);
          v21 = *(__p[0] + v16);
          if (v21 <= 0.0)
          {
            goto LABEL_30;
          }

          goto LABEL_26;
        }

        if (v21 > 0.0)
        {
          v23 = 1;
LABEL_26:
          if (v21 > v19)
          {
            v20 = v16;
            v19 = v21;
          }

          if ((v23 & (v21 > v17)) != 0)
          {
            v18 = v16;
            v17 = v21;
          }
        }
      }

LABEL_30:
      sub_10030DCE0(v39);
      goto LABEL_31;
    }

    v24 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Failed to get the candidate name", v39, 2u);
    }

LABEL_31:
    sub_100005978(&ValueAtIndex);
    sub_100005978(cf);
    ++v16;
  }

  while (Count != v16);
  v25 = 0.0;
  v26 = 0.0;
  if (v18 >= 0.0 && v18 < Count && v17 > 0.0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*buf, v18);
    cf[0] = 0;
    sub_100060DE8(cf, &ValueAtIndex);
    v27 = v44;
    v44 = cf[0];
    cf[0] = v27;
    sub_100005978(cf);
    v26 = v17;
  }

  if (v20 >= 0.0 && v20 < Count && v19 > 0.0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*buf, v20);
    cf[0] = 0;
    sub_100060DE8(cf, &ValueAtIndex);
    v28 = v43;
    v43 = cf[0];
    cf[0] = v28;
    sub_100005978(cf);
    v25 = v19;
  }

  sub_10030DCE0(&v42);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_52:
  sub_100010250(buf);
LABEL_53:
  a7[3] = 0u;
  a7[4] = 0u;
  a7[1] = 0u;
  a7[2] = 0u;
  *a7 = 0u;
  v36 = v44;
  if (v44)
  {
    CFRetain(v44);
  }

  v35 = v43;
  if (v43)
  {
    CFRetain(v43);
  }

  sub_10042F6C8(a7, a2, &v36, &v35, v26, v25);
  sub_100005978(&v35);
  sub_100005978(&v36);
  v32 = *a1;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    sub_10042F45C(a7, __p);
    if (v46 >= 0)
    {
      v33 = __p;
    }

    else
    {
      v33 = __p[0];
    }

    LODWORD(cf[0]) = 136315138;
    *(cf + 4) = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Returning bundle match: %s", cf, 0xCu);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100005978(&v43);
  return sub_100005978(&v44);
}

void sub_10042F348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, const void *a32, const void *a33, const void *a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, const void *a46)
{
  sub_10030DCE0(&a32);
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
  }

  sub_100010250(&a46);
  sub_100005978(&a33);
  sub_100005978(&a34);
  _Unwind_Resume(a1);
}

uint64_t sub_10042F45C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v26 = 0;
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
  *v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  sub_10000D518(&v12);
  v4 = sub_10000C030(&v12);
  sub_10042F8A0(a1 + 40, &v10);
  v5 = sub_10000C030(v4);
  v6 = sub_10000C030(v5);
  sub_10042F8A0(a1, &__p);
  sub_10000C030(v6);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  sub_10000D684(&v12, a2);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[1]);
  }

  std::locale::~locale(v13);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10042F67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_100D50834(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_10042F6C8(uint64_t a1, Registry **a2, const void **a3, const void **a4, double a5, double a6)
{
  sub_10005C7A4(&v13, a3);
  sub_10042F798(a1, a2, &v13, 0, a5);
  sub_100005978(&v13);
  sub_10005C7A4(&v12, a4);
  sub_10042F798(a1 + 40, a2, &v12, 1, a6);
  sub_100005978(&v12);
  return a1;
}

void sub_10042F76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_100005978(&a9);
  sub_10042E1B8(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_10042F798(uint64_t a1, Registry **a2, const void **a3, char a4, double a5)
{
  v9 = sub_10005C7A4(a1, a3);
  *(v9 + 1) = a5;
  *(v9 + 16) = a4;
  ServiceMap = Registry::getServiceMap(*a2);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
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
  v20 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v20);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  std::mutex::unlock(v11);
  *(a1 + 24) = v18;
  *(a1 + 32) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v17);
  }

  return a1;
}

uint64_t sub_10042F8A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  *v15 = 0u;
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  sub_10000D518(&v13);
  v4 = sub_10000C030(&v13);
  sub_10082F9B4(&__p);
  v5 = sub_10000C030(v4);
  sub_10000C030(v5);
  v6 = std::ostream::operator<<();
  v7 = sub_10000C030(v6);
  v8 = CSIBOOLAsString(*(a1 + 16));
  strlen(v8);
  v9 = sub_10000C030(v7);
  sub_10000C030(v9);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  sub_10000D684(&v13, a2);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[1]);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_10042FB00(uint64_t a1, uint64_t a2)
{
  sub_100222570(a1, a2);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  if (v6)
  {
    sub_100004A34(v6);
  }

  return a1;
}

void *sub_10042FB60(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000D0358(result, a2);
  }

  return result;
}

void sub_10042FC1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10042FD04(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E4C4D8;
  sub_100B2E0D8(a1 + 3);
  return a1;
}

void sub_10042FD80(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4C4D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10042FFDC(uint64_t a1, void *a2, NSObject **a3, char *a4, char *a5, void *a6, uint64_t *a7, char a8, char a9, void *aBlock)
{
  ctu::OsLogContext::OsLogContext(&v36, kCtLoggingSystemName, a5);
  sub_1004303CC((a1 + 8), a3, &v36);
  ctu::OsLogContext::~OsLogContext(&v36);
  *a1 = off_101E4C528;
  *(a1 + 48) = *a2;
  v17 = a2[1];
  *(a1 + 56) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = aBlock;
  *(a1 + 64) = *a6;
  v19 = a6[1];
  *(a1 + 72) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v20 = *a7;
  *(a1 + 112) = 0u;
  v21 = (a1 + 112);
  *(a1 + 80) = a9;
  *(a1 + 81) = a8;
  *(a1 + 104) = v20;
  *(a1 + 144) = 0;
  v22 = (a1 + 144);
  *(a1 + 128) = 0u;
  if (aBlock)
  {
    v18 = _Block_copy(aBlock);
  }

  *(a1 + 152) = v18;
  v23 = *a7 / 4;
  v24 = 5;
  if (v23 < 5)
  {
    v24 = *a7 / 4;
  }

  v25 = 60 * v24;
  if (v23 >= 10)
  {
    v23 = 10;
  }

  *(a1 + 160) = v25;
  *(a1 + 168) = 60 * v23;
  if (a4 && *a4)
  {
    v26 = (a1 + 136);
    sub_10000501C(&v35, "TimedUpdater '");
    v27 = strlen(a4);
    v28 = std::string::append(&v35, a4, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v36, "'", 1uLL);
    v31 = v30->__r_.__value_.__r.__words[0];
    v37[0] = v30->__r_.__value_.__l.__size_;
    *(v37 + 7) = *(&v30->__r_.__value_.__r.__words[1] + 7);
    v32 = HIBYTE(v30->__r_.__value_.__r.__words[2]);
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 135) < 0)
    {
      operator delete(*v21);
    }

    v33 = v37[0];
    *(a1 + 112) = v31;
    *(a1 + 120) = v33;
    *(a1 + 127) = *(v37 + 7);
    *(a1 + 135) = v32;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    sub_100430458(a4, &v35);
    if (v26 != &v35)
    {
      v36.__r_.__value_.__r.__words[0] = v26->__r_.__value_.__r.__words[0];
      v26->__r_.__value_.__r.__words[0] = v35.__r_.__value_.__r.__words[0];
      v35.__r_.__value_.__r.__words[0] = 0;
      sub_100005978(&v36.__r_.__value_.__l.__data_);
    }

    sub_100005978(&v35.__r_.__value_.__l.__data_);
    sub_100430578(a1, a4, &v35);
    if (v22 != &v35)
    {
      v36.__r_.__value_.__r.__words[0] = v22->__r_.__value_.__r.__words[0];
      v22->__r_.__value_.__r.__words[0] = v35.__r_.__value_.__r.__words[0];
      v35.__r_.__value_.__r.__words[0] = 0;
      sub_100005978(&v36.__r_.__value_.__l.__data_);
    }

    sub_100005978(&v35.__r_.__value_.__l.__data_);
  }

  else
  {
    if (*(a1 + 135) < 0)
    {
      *(a1 + 120) = 12;
      v21 = *(a1 + 112);
    }

    else
    {
      *(a1 + 135) = 12;
    }

    strcpy(v21, "TimedUpdater");
    *(a1 + 80) = 0;
  }

  return a1;
}

void sub_100430300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v27 = *(v21 + 152);
  if (v27)
  {
    _Block_release(v27);
  }

  sub_100005978(v23);
  sub_100005978(v24);
  if (*(v21 + 135) < 0)
  {
    operator delete(*v25);
  }

  sub_1003EC530(v22);
  v28 = *(v21 + 72);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v21 + 56);
  if (v29)
  {
    sub_100004A34(v29);
  }

  ctu::OsLogLogger::~OsLogLogger((v21 + 40));
  sub_1000C0544((v21 + 8));
  _Unwind_Resume(a1);
}

void *sub_1004303CC(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100430434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_100430458(char *a1@<X1>, CFStringRef *a2@<X8>)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_10000501C(&__p, a1);
  v3 = HIBYTE(v13);
  v4 = __p;
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v13 >= 0)
  {
    v6 = HIBYTE(v13);
  }

  else
  {
    v6 = v12;
  }

  if (v6)
  {
    do
    {
      v7 = *p_p;
      if (v7 < 0)
      {
        v8 = __maskrune(*p_p, 0x500uLL);
      }

      else
      {
        v8 = _DefaultRuneLocale.__runetype[v7] & 0x500;
      }

      if (v7 != 46 && v8 == 0)
      {
        *p_p = 46;
      }

      ++p_p;
      --v6;
    }

    while (v6);
    v3 = HIBYTE(v13);
    v4 = __p;
  }

  if (v3 >= 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = v4;
  }

  *a2 = CFStringCreateWithFormat(0, 0, @"%sNextUpdate", v10);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }
}

void sub_100430558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100430578(uint64_t a1@<X0>, char *a2@<X1>, CFStringRef *a3@<X8>)
{
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  sub_10000501C(v20, a2);
  if (v21 >= 0)
  {
    v5 = v20;
  }

  else
  {
    v5 = v20[0];
  }

  if (v21 >= 0)
  {
    v6 = HIBYTE(v21);
  }

  else
  {
    v6 = v20[1];
  }

  for (; v6; --v6)
  {
    v7 = *v5;
    if (v7 < 0)
    {
      v8 = __maskrune(*v5, 0x500uLL);
    }

    else
    {
      v8 = _DefaultRuneLocale.__runetype[v7] & 0x500;
    }

    if (v7 != 46 && v8 == 0)
    {
      *v5 = 46;
    }

    v5 = (v5 + 1);
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = v20;
    if (v21 < 0)
    {
      v11 = v20[0];
    }

    v14 = *(v10 + 24);
    v12 = (v10 + 24);
    v13 = v14;
    v15 = *(v12 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v12 + 1);
    }

    if (v16 < 0)
    {
      v12 = v13;
    }

    if (!v15)
    {
      v12 = "<invalid>";
    }

    *a3 = CFStringCreateWithFormat(0, 0, @"%s-%s", v11, v12);
  }

  else
  {
    if (SHIBYTE(v21) < 0)
    {
      sub_100005F2C(__dst, v20[0], v20[1]);
    }

    else
    {
      *__dst = *v20;
      v19 = v21;
    }

    if (SHIBYTE(v19) < 0)
    {
      sub_100005F2C(v23, __dst[0], __dst[1]);
    }

    else
    {
      *v23 = *__dst;
      v24 = v19;
    }

    v22 = 0;
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(__p, v23[0], v23[1]);
    }

    else
    {
      *__p = *v23;
      v26 = v24;
    }

    v27 = 0;
    if (ctu::cf::convert_copy())
    {
      v17 = v22;
      v22 = v27;
      v28 = v17;
      sub_100005978(&v28);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    *a3 = v22;
    v22 = 0;
    sub_100005978(&v22);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_1004307B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100005978(&a24);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100430824(uint64_t a1)
{
  *a1 = off_101E4C528;
  sub_1004308C8(a1);
  v2 = *(a1 + 152);
  if (v2)
  {
    _Block_release(v2);
  }

  sub_100005978((a1 + 144));
  sub_100005978((a1 + 136));
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  sub_1003EC530((a1 + 96));
  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

BOOL sub_1004308C8(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    dispatch_source_cancel(*(a1 + 88));
    dispatch_release(*(a1 + 88));
    *(a1 + 88) = 0;
  }

  return v1 != 0;
}

void sub_100430910(uint64_t a1)
{
  sub_100430824(a1);

  operator delete();
}

void sub_100430948(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  sub_1004308C8(a1);
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  v3 = v2;
  sub_1003EC530(&v3);
  sub_10043099C(a1);
}

void sub_10043099C(uint64_t a1)
{
  if (*(a1 + 136) && *(a1 + 81) == 1)
  {
    v2 = *(a1 + 96);
    v3 = *(a1 + 64);
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
    v5 = ServiceMap;
    if (v2)
    {
      if (v3)
      {
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
        v31 = v6;
        v10 = sub_100009510(&v5[1].__m_.__sig, &v31);
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
LABEL_26:
            (*(*v12 + 16))(v12, *(a1 + 64) + 24, *(a1 + 136), *(a1 + 96), 0, 0, 1, 0);
            goto LABEL_42;
          }
        }

        else
        {
          v12 = 0;
        }

        std::mutex::unlock(v5);
        v11 = 0;
        goto LABEL_26;
      }

      v19 = "8UStorage";
      if (("8UStorage" & 0x8000000000000000) != 0)
      {
        v20 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
      v31 = v19;
      v23 = sub_100009510(&v5[1].__m_.__sig, &v31);
      if (v23)
      {
        v24 = v23[3];
        v11 = v23[4];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v5);
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v11);
LABEL_38:
          sub_10071C318(v24, *(a1 + 136), *(a1 + 96), 0, 1u, 0, 0);
          goto LABEL_42;
        }
      }

      else
      {
        v24 = 0;
      }

      std::mutex::unlock(v5);
      v11 = 0;
      goto LABEL_38;
    }

    if (v3)
    {
      if ((v13 & 0x8000000000000000) != 0)
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
      v31 = v13;
      v17 = sub_100009510(&v5[1].__m_.__sig, &v31);
      if (v17)
      {
        v18 = v17[3];
        v11 = v17[4];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v5);
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v11);
LABEL_35:
          (*(*v18 + 32))(v18, *(a1 + 64) + 24, *(a1 + 136), 0, 0, 1);
          goto LABEL_42;
        }
      }

      else
      {
        v18 = 0;
      }

      std::mutex::unlock(v5);
      v11 = 0;
      goto LABEL_35;
    }

    v25 = "8UStorage";
    if (("8UStorage" & 0x8000000000000000) != 0)
    {
      v26 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
    v31 = v25;
    v29 = sub_100009510(&v5[1].__m_.__sig, &v31);
    if (v29)
    {
      v30 = v29[3];
      v11 = v29[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v5);
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v11);
LABEL_41:
        sub_10071C340(v30, *(a1 + 136), 0, 1u);
LABEL_42:
        if (v11)
        {
          sub_100004A34(v11);
        }

        return;
      }
    }

    else
    {
      v30 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    goto LABEL_41;
  }
}

void sub_100430D04(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100430D40(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  if (a2)
  {
    v4 = *(a1 + 96);
    *(a1 + 96) = 0;
    *buf = v4;
    sub_1003EC530(buf);
    v5 = 0;
    goto LABEL_9;
  }

  if (*(a1 + 96))
  {
    return 0;
  }

  v47 = 0;
  sub_100431410(a1, &v47);
  if (!v47)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v6 = sub_100431694(a1, v47);
  if ((v7 & 1) == 0)
  {
    v24 = *(a1 + 40);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_60;
    }

    v25 = *(a1 + 64);
    if (v25)
    {
      v26 = PersonalityInfo::logPrefix(v25);
      if (*(a1 + 64))
      {
        v27 = " ";
LABEL_57:
        v42 = (a1 + 112);
        if (*(a1 + 135) < 0)
        {
          v42 = *v42;
        }

        *buf = 136315906;
        *&buf[4] = v26;
        *&buf[12] = 2080;
        *&buf[14] = v27;
        v50 = 2112;
        v51 = v47;
        v52 = 2080;
        v53 = v42;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sPersisted TS [%@] for %s already passed - call to action", buf, 0x2Au);
LABEL_60:
        sub_10043099C(a1);
        sub_100004AA0(buf, (a1 + 8));
        v43 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v43);
        }

        *buf = 0;
        *&buf[8] = 0;
        sub_100004AA0(buf, (a1 + 8));
        operator new();
      }
    }

    else
    {
      v26 = "";
    }

    v27 = "";
    goto LABEL_57;
  }

  v5 = v6;
  sub_100431ADC((a1 + 96), &v47);
LABEL_8:
  sub_1003EC530(&v47);
LABEL_9:
  if (!*(a1 + 96))
  {
    v48[0].__padding_ = 0;
    sub_100344DA8(v48);
    v12 = *(a1 + 168);
    v46[0] = -*(a1 + 160);
    v46[1] = v12;
    v13 = sub_100431DC8(v46, v48, v46);
    v14 = *(a1 + 104);
    Current = CFAbsoluteTimeGetCurrent();
    v5 = v13 + 60 * v14;
    v16 = CFDateCreate(kCFAllocatorDefault, Current + v5 + 600.0);
    v17 = *(a1 + 96);
    *(a1 + 96) = v16;
    *buf = v17;
    sub_1003EC530(buf);
    v18 = *(a1 + 40);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
LABEL_32:
      sub_10043099C(a1);
      std::random_device::~random_device(v48);
      goto LABEL_33;
    }

    v19 = *(a1 + 64);
    if (v19)
    {
      v20 = PersonalityInfo::logPrefix(v19);
      if (*(a1 + 64))
      {
        v21 = " ";
LABEL_29:
        v28 = (a1 + 112);
        if (*(a1 + 135) < 0)
        {
          v28 = *v28;
        }

        v30 = *(a1 + 96);
        v29 = *(a1 + 104);
        *buf = 136316418;
        *&buf[4] = v20;
        *&buf[12] = 2080;
        *&buf[14] = v21;
        v50 = 2080;
        v51 = v28;
        v52 = 2048;
        v53 = v29;
        v54 = 2048;
        v55 = v13;
        v56 = 2112;
        v57 = v30;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sCreating next %s for %ld minutes %+lld seconds jitter: [%@]", buf, 0x3Eu);
        goto LABEL_32;
      }
    }

    else
    {
      v20 = "";
    }

    v21 = "";
    goto LABEL_29;
  }

  v8 = *(a1 + 40);
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_33;
  }

  v9 = *(a1 + 64);
  if (!v9)
  {
    v10 = "";
    goto LABEL_19;
  }

  v10 = PersonalityInfo::logPrefix(v9);
  if (!*(a1 + 64))
  {
LABEL_19:
    v11 = "";
    goto LABEL_20;
  }

  v11 = " ";
LABEL_20:
  v22 = (a1 + 112);
  if (*(a1 + 135) < 0)
  {
    v22 = *v22;
  }

  v23 = *(a1 + 96);
  *buf = 136316162;
  *&buf[4] = v10;
  *&buf[12] = 2080;
  *&buf[14] = v11;
  v50 = 2080;
  v51 = v22;
  v52 = 2048;
  v53 = v5;
  v54 = 2112;
  v55 = v23;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sRestore %s from persisted value: %+lld seconds from now: [%@]", buf, 0x34u);
LABEL_33:
  sub_1004308C8(a1);
  *(a1 + 88) = dispatch_source_create(&_dispatch_source_type_timer, 2uLL, 0, *(a1 + 24));
  sub_100004AA0(buf, (a1 + 8));
  v32 = *buf;
  v31 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v31);
  }

  v33 = *(a1 + 88);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 1174405120;
  handler[2] = sub_10043193C;
  handler[3] = &unk_101E4C538;
  handler[4] = a1;
  handler[5] = v32;
  v45 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_source_set_event_handler(v33, handler);
  v34 = *(a1 + 88);
  v35 = dispatch_time(0x8000000000000000, 1000000000 * v5);
  dispatch_source_set_timer(v34, v35, 0xFFFFFFFFFFFFFFFFLL, 0x1388uLL);
  dispatch_activate(*(a1 + 88));
  if (*(a1 + 80) != 1 || !*(a1 + 144) || !*(a1 + 96))
  {
    goto LABEL_50;
  }

  v36 = *(a1 + 40);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = *(a1 + 64);
    if (v37)
    {
      v38 = PersonalityInfo::logPrefix(v37);
      if (*(a1 + 64))
      {
        v39 = " ";
LABEL_46:
        v40 = (a1 + 112);
        if (*(a1 + 135) < 0)
        {
          v40 = *v40;
        }

        *buf = 136315650;
        *&buf[4] = v38;
        *&buf[12] = 2080;
        *&buf[14] = v39;
        v50 = 2080;
        v51 = v40;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s%sWill power up AP on %s expiry", buf, 0x20u);
        goto LABEL_49;
      }
    }

    else
    {
      v38 = "";
    }

    v39 = "";
    goto LABEL_46;
  }

LABEL_49:
  CPCancelWakeAtDateWithIdentifier();
  CPScheduleWakeAtDateWithIdentifier();
LABEL_50:
  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  return 0;
}

void sub_100431410(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  if (!*(a1 + 136) || *(a1 + 81) != 1)
  {
    return;
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  if (!v4)
  {
    ServiceMap = Registry::getServiceMap(v5);
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
    v26 = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, &v26);
    if (v21)
    {
      v22 = v21[3];
      v13 = v21[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v16);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
LABEL_21:
        sub_10071C330(v22, *(a1 + 136), 0, 1, &v24);
        goto LABEL_22;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v16);
    v13 = 0;
    goto LABEL_21;
  }

  v6 = Registry::getServiceMap(v5);
  v7 = v6;
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

  std::mutex::lock(v6);
  v26 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v26);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_17;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_17:
    std::mutex::unlock(v7);
    v13 = 0;
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
LABEL_18:
  (*(*v14 + 24))(&v24, v14, *(a1 + 64) + 24, *(a1 + 136), 0, 0, 1);
LABEL_22:
  sub_100432018(&v25, &v24);
  if (&v25 != a2)
  {
    v23 = *a2;
    *a2 = v25;
    v25 = 0;
    v26 = v23;
    sub_1003EC530(&v26);
  }

  sub_1003EC530(&v25);
  sub_10000A1EC(&v24);
  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_10043163C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003EC530(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_100431694(uint64_t a1, const __CFDate *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = CFDateCreate(kCFAllocatorDefault, Current);
  v22 = v5;
  if (!v5)
  {
    v9 = 0;
    LOBYTE(v8) = 0;
    goto LABEL_17;
  }

  TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(a2, v5);
  v7 = TimeIntervalSinceDate;
  if (TimeIntervalSinceDate > 0.0)
  {
    v8 = TimeIntervalSinceDate & ~(TimeIntervalSinceDate >> 63);
    if (v8 < 120 * *(a1 + 104))
    {
      v9 = v8 >> 8;
      v10 = 1;
      goto LABEL_16;
    }

    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 64);
      if (v12)
      {
        v13 = PersonalityInfo::logPrefix(v12);
        if (*(a1 + 64))
        {
          v14 = " ";
LABEL_12:
          v15 = (a1 + 112);
          if (*(a1 + 135) < 0)
          {
            v15 = *v15;
          }

          *buf = 136315906;
          v24 = v13;
          v25 = 2080;
          v26 = v14;
          v27 = 2112;
          v28 = a2;
          v29 = 2080;
          v30 = v15;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%sTarget time [%@] for %s is too far in the future, probably wallclock time adjusted - assume wrong and already passed", buf, 0x2Au);
          goto LABEL_15;
        }
      }

      else
      {
        v13 = "";
      }

      v14 = "";
      goto LABEL_12;
    }
  }

LABEL_15:
  v10 = 0;
  v9 = 0;
  LOBYTE(v8) = 0;
LABEL_16:
  v16 = *(a1 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = "";
    if (*(a1 + 64) && (v18 = PersonalityInfo::logPrefix(*(a1 + 64)), *(a1 + 64)))
    {
      v19 = " ";
    }

    else
    {
      v19 = "";
    }

    v20 = v8 | (v9 << 8);
    *buf = 136316674;
    if (!v10)
    {
      v20 = 0;
    }

    v24 = v18;
    v21 = " (already passed)";
    v25 = 2080;
    if (v10)
    {
      v21 = "";
    }

    v26 = v19;
    v27 = 2112;
    v28 = a2;
    v29 = 2112;
    v30 = v22;
    v31 = 2048;
    v32 = v7;
    v33 = 2048;
    v34 = v20;
    v35 = 2080;
    v36 = v21;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "#D %s%ssecondsTill TS: [%@], Now: [%@], interval: %f -> result:%lld%s", buf, 0x48u);
  }

LABEL_17:
  sub_1003EC530(&v22);
  return v8 | (v9 << 8);
}

void sub_100431920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003EC530(va);
  _Unwind_Resume(a1);
}

void sub_10043193C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[5] || !sub_1004308C8(v3))
      {
        goto LABEL_16;
      }

      v6 = *(v3 + 40);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:
        v11 = *(v3 + 96);
        *(v3 + 96) = 0;
        *v13 = v11;
        sub_1003EC530(v13);
        sub_10043099C(v3);
        v12 = *(v3 + 152);
        if (v12)
        {
          (*(v12 + 16))();
        }

LABEL_16:
        sub_100004A34(v5);
        return;
      }

      v7 = *(v3 + 64);
      if (v7)
      {
        v8 = PersonalityInfo::logPrefix(v7);
        if (*(v3 + 64))
        {
          v9 = " ";
LABEL_11:
          v10 = (v3 + 112);
          if (*(v3 + 135) < 0)
          {
            v10 = *v10;
          }

          *v13 = 136315650;
          *&v13[4] = v8;
          v14 = 2080;
          v15 = v9;
          v16 = 2080;
          v17 = v10;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sTimer for %s expired - call to action", v13, 0x20u);
          goto LABEL_14;
        }
      }

      else
      {
        v8 = "";
      }

      v9 = "";
      goto LABEL_11;
    }
  }
}

uint64_t sub_100431AB0(uint64_t result, uint64_t a2)
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

void sub_100431ACC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

const void **sub_100431ADC(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_100431B34(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_1003EC530(&v5);
  }

  return a1;
}

const void **sub_100431B34(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void *sub_100431B6C(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void sub_100431C24(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100431CF8);
  __cxa_rethrow();
}

void sub_100431C64(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100431CB8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100431CF8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_100431D24(void **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v6 = v4;
      if (v1[1])
      {
        v7 = *(v3 + 152);
        if (v7)
        {
          (*(v7 + 16))(v7, v5);
        }
      }

      sub_100004A34(v6);
    }
  }

  sub_10007060C(&v10);
  return sub_1000049E0(&v9);
}

void sub_100431DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100431DC8(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v13 = v3;
    v14 = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      sub_100431E64(v12, a2, 0x40uLL);
      return sub_100431F44(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 63;
      memset(&v12[2], 0, 32);
      if (((v7 << v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 64;
      }

      memset(v12, 0, 32);
      sub_100431E64(v12, a2, v10 - v9);
      do
      {
        v11 = sub_100431F44(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t sub_100431E64(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if ((a3 & 0x1F) != 0)
  {
    v3 = (a3 >> 5) + 1;
  }

  else
  {
    v3 = a3 >> 5;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & &_mh_execute_header;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ &_mh_execute_header) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      v6 = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      goto LABEL_13;
    }

    *(result + 40) = (-1 << v4) & &_mh_execute_header;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x3E)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x80000000uLL >> v4 << (v4 + 1);
  }

LABEL_13:
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  if (v4 >= 0x1F)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 56) = v7;
  *(result + 60) = v8;
  return result;
}

uint64_t sub_100431F44(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      do
      {
        v4 = std::random_device::operator()(*a1);
      }

      while (*(a1 + 40) <= v4);
      v5 = *(a1 + 16);
      if (v5 >= 0x40)
      {
        v6 = 0;
      }

      else
      {
        v6 = v3 << v5;
      }

      v3 = v6 + (*(a1 + 56) & v4);
      ++v2;
      v7 = *(a1 + 32);
    }

    while (v2 < v7);
  }

  else
  {
    v3 = 0;
    v7 = 0;
  }

  for (; v7 < *(a1 + 24); ++v7)
  {
    do
    {
      v8 = std::random_device::operator()(*a1);
    }

    while (*(a1 + 48) <= v8);
    v9 = *(a1 + 16);
    if (v9 >= 0x3F)
    {
      v10 = 0;
    }

    else
    {
      v10 = v3 << (v9 + 1);
    }

    v3 = v10 + (*(a1 + 60) & v8);
  }

  return v3;
}

void *sub_100432018(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFDateGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return sub_100431B6C(a1, v5);
}

void CellularPlanSourceTransferModel::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_100432244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (object)
  {
    dispatch_release(object);
    if (!v12)
    {
LABEL_5:
      if (v14)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }
  }

  else if (!v12)
  {
    goto LABEL_5;
  }

  sub_100004A34(v12);
  if (v14)
  {
LABEL_6:
    operator delete();
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

void CellularPlanSourceTransferModel::CellularPlanSourceTransferModel(void *a1, uint64_t a2, NSObject **a3)
{
  *a1 = off_101E4C808;
  sub_100118594(a1 + 1, a3, &kCtLoggingSystemName, &off_101E4C660);
  *a1 = off_101E4C678;
  a1[6] = off_101E4C770;
  v5 = *a2;
  a1[7] = *a2;
  v6 = *(a2 + 8);
  a1[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *a2;
  }

  (**v5)(v16);
  ServiceMap = Registry::getServiceMap(v16[0]);
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
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
  v17 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v17);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  std::mutex::unlock(v8);
  v16[2] = v15;
  v16[3] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
  }

  v17 = a1 + 5;
  sub_100438C04();
}

void sub_100432574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    dispatch_release(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  v24 = v21[16];
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = v21[14];
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = v21[12];
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v21[10];
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = v21[8];
  if (v28)
  {
    sub_100004A34(v28);
  }

  CoreUtilsMessageSessionDelegateInterface::~CoreUtilsMessageSessionDelegateInterface(v22);
  ctu::OsLogLogger::~OsLogLogger((v21 + 5));
  sub_1000C0544(v21 + 1);
  _Unwind_Resume(a1);
}

void CellularPlanSourceTransferModel::~CellularPlanSourceTransferModel(CellularPlanSourceTransferModel *this)
{
  *this = off_101E4C678;
  v2 = (this + 48);
  *(this + 6) = off_101E4C770;
  v3 = *(this + 48);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  sub_100438DE0(this + 328, *(this + 42));
  sub_100009970(this + 304, *(this + 39));
  sub_1000DD0AC(this + 280, *(this + 36));
  sub_100438D74(this + 256, *(this + 33));
  sub_100438D74(this + 232, *(this + 30));
  v10 = (this + 200);
  sub_100112048(&v10);
  sub_100359978(this + 176, *(this + 23));
  sub_100009970(this + 152, *(this + 20));
  v4 = *(this + 18);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  CoreUtilsMessageSessionDelegateInterface::~CoreUtilsMessageSessionDelegateInterface(v2);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  CellularPlanSourceTransferModel::~CellularPlanSourceTransferModel(this);

  operator delete();
}

void non-virtual thunk toCellularPlanSourceTransferModel::~CellularPlanSourceTransferModel(CellularPlanSourceTransferModel *this)
{
  CellularPlanSourceTransferModel::~CellularPlanSourceTransferModel((this - 48));
}

{
  CellularPlanSourceTransferModel::~CellularPlanSourceTransferModel((this - 48));

  operator delete();
}

void CellularPlanSourceTransferModel::connectRestResources_sync(void (****this)(Registry **__return_ptr))
{
  (**this[7])(&v2);
  Registry::createRestModuleOneTimeUseConnection(&v4, v2);
  ctu::RestModule::connect();
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100432E7C((this + 19));
  sub_100432F5C((this + 25));
  sub_10043303C((this + 22));
  v2 = CellularPlanSourceTransferModel::handleServiceTransfer_sync;
  v3 = 0;
  sub_100439348();
}

void sub_100432B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSourceTransferModel::PersistenceHelper::loadTransferredPlans(CellularPlanSourceTransferModel::PersistenceHelper *this@<X0>, void *a2@<X8>)
{
  v3 = 0u;
  v4 = 0u;
  sub_100438764(this, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", &v3);
  if (BYTE8(v4) == 1)
  {
    sub_10043C648(a2, &v3);
    if (BYTE8(v4))
    {
      sub_100438D74(&v3, *(&v3 + 1));
    }
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }
}

void sub_100432BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    sub_100438D74(&a9, a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSourceTransferModel::PersistenceHelper::loadMaybeTransferredPlans(CellularPlanSourceTransferModel::PersistenceHelper *this@<X0>, void *a2@<X8>)
{
  v3 = 0u;
  v4 = 0u;
  sub_100438764(this, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", &v3);
  if (BYTE8(v4) == 1)
  {
    sub_10043C648(a2, &v3);
    if (BYTE8(v4))
    {
      sub_100438D74(&v3, *(&v3 + 1));
    }
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }
}

void sub_100432CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    sub_100438D74(&a9, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100432CC8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 48))(v5, a2, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v8 = 0;
    (*(**(a1 + 8) + 40))(&v9);
    sub_100060DE8(&v8, &v9);
    sub_10000A1EC(&v9);
    if (v8)
    {
      v9 = 0uLL;
      v10 = 0;
      ctu::cf::assign();
      *__p = v9;
      v7 = v10;
      codec::decode<std::map<std::string,std::string>>(__p);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *a3 = 0;
      a3[24] = 0;
    }

    sub_100005978(&v8);
  }

  else
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_1017703C0();
    }

    *a3 = 0;
    a3[24] = 0;
  }
}

void sub_100432E30(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a7 < 0)
  {
    operator delete(a2);
  }

  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_100432E7C(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/prefs-nb/imeis");
  v4[0] = off_101E4CA80;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100432F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100432F5C(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/vinyl_info");
  v4[0] = off_101E4CB00;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100433010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10043303C(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/sims_on_device");
  v4[0] = off_101E4CB80;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1004330F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CellularPlanSourceTransferModel::handleServiceTransfer_sync(uint64_t *a1, void **a2)
{
  sub_10017518C((a1 + 35), a2);
  sub_100436CA4(a1[9], (a1 + 35), @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"transferredBackPairs");

  CellularPlanSourceTransferModel::maybeDeleteTransferBackPlan_sync(a1);
}

void CellularPlanSourceTransferModel::createTransferSessionHandler_sync(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = a2[1];
  v19 = *a2;
  v20 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v23, (a1 + 8));
  v7 = v24;
  if (v24)
  {
    v8 = v23;
    atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
    v17 = 0;
    v18 = 0;
    v9 = std::__shared_weak_count::lock(v7);
    v10 = v9;
    if (v9)
    {
      v11 = v8 + 48;
      if (!v8)
      {
        v11 = 0;
      }

      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v11 = 0;
    }

    v17 = v11;
    v18 = v9;
    std::__shared_weak_count::__release_weak(v7);
    if (v10)
    {
      sub_100004A34(v10);
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  (*(*v5 + 472))(v21, v5, &v19, &v17);
  v12 = v21[0];
  v21[0] = 0uLL;
  v13 = *(a1 + 112);
  *(a1 + 104) = v12;
  if (v13)
  {
    sub_100004A34(v13);
    if (*(&v21[0] + 1))
    {
      sub_100004A34(*(&v21[0] + 1));
    }
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (*(a1 + 104))
  {
    v14 = sub_100649C38(2);
    sub_10000501C(&v23, v14);
    memset(v16, 0, sizeof(v16));
    sub_10016FB64(v16, &v23, &v25, 1uLL);
    sub_100004AA0(v21, (a1 + 8));
    v15 = *(&v21[0] + 1);
    if (*(&v21[0] + 1))
    {
      atomic_fetch_add_explicit((*(&v21[0] + 1) + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
    }

    v22 = 0;
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017703F4();
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_100433444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, char a21)
{
  sub_100287FF4(&a21);
  a20 = &a10;
  sub_1000087B4(&a20);
  if (*(v21 - 57) < 0)
  {
    operator delete(*(v21 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t CellularPlanSourceTransferModel::registerMessageHandler_sync(uint64_t this)
{
  if (*(this + 104))
  {
    v1 = this;
    v2 = sub_100649C38(9);
    sub_10000501C(v8, v2);
    memset(v4, 0, sizeof(v4));
    sub_10016FB64(v4, v8, &v9, 1uLL);
    sub_100004AA0(&v5, (v1 + 8));
    v3 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
    }

    v7 = 0;
    operator new();
  }

  return this;
}

void sub_100433628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, char a15)
{
  sub_100287FF4(&a15);
  a14 = &a9;
  sub_1000087B4(&a14);
  if (*(v15 - 41) < 0)
  {
    operator delete(*(v15 - 64));
  }

  _Unwind_Resume(a1);
}

void CellularPlanSourceTransferModel::recalculateTransferredPlans_sync(CellularPlanSourceTransferModel *a1, uint64_t *a2, unint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v37 = 0;
  v5 = *(a1 + 25);
  v6 = *(a1 + 26);
  if (v5 != v6)
  {
    v7 = (v5 + 16);
    do
    {
      if (*(v7 - 1) == 3 && *v7 != 0)
      {
        sub_100922314(v7, a3, buf);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *buf;
        v37 = v39;
      }

      v8 = v7 + 72;
      v7 = (v7 + 88);
    }

    while (v8 != v6);
  }

  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    do
    {
      v11 = (v9 + 72);
      if ((CellularPlanSourceTransferModel::hasIccid_sync(a1, (v9 + 72)) & 1) != 0 && *(v9 + 192) == 1)
      {
        if (*(v9 + 144) == 2)
        {
          if (sub_10016FA58(a1 + 152, (v9 + 24)))
          {
            goto LABEL_14;
          }

          v15 = v37 >= 0 ? HIBYTE(v37) : __p[1];
          if (v15)
          {
            v16 = *(v9 + 71);
            v17 = v16;
            if (v16 < 0)
            {
              v16 = *(v9 + 56);
            }

            if (v15 == v16)
            {
              v18 = v37 >= 0 ? __p : __p[0];
              v19 = v17 >= 0 ? (v9 + 48) : *(v9 + 48);
              if (!memcmp(v18, v19, v15))
              {
LABEL_14:
                v12 = *(a1 + 5);
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  v13 = (v9 + 72);
                  if (*(v9 + 95) < 0)
                  {
                    v13 = *v11;
                  }

                  *buf = 136315138;
                  *&buf[4] = v13;
                  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I transferred local plan : %s", buf, 0xCu);
                }

                __dst[0] = 0;
                __dst[1] = 0;
                v35 = 0;
                if (*(v9 + 183) < 0)
                {
                  sub_100005F2C(__dst, *(v9 + 160), *(v9 + 168));
                }

                else
                {
                  *__dst = *(v9 + 160);
                  v35 = *(v9 + 176);
                }

                v20 = *(v9 + 71);
                if (v20 < 0)
                {
                  v21 = *(v9 + 56);
                }

                else
                {
                  v21 = *(v9 + 71);
                }

                v22 = *(v9 + 144);
                if (!v21)
                {
                  goto LABEL_59;
                }

                if (v20 >= 0)
                {
                  v23 = *(v9 + 71);
                }

                else
                {
                  v23 = *(v9 + 56);
                }

                v24 = *(v9 + 143);
                v25 = v24;
                if ((v24 & 0x80u) != 0)
                {
                  v24 = *(v9 + 128);
                }

                if (v23 == v24)
                {
                  if (v20 >= 0)
                  {
                    v26 = (v9 + 48);
                  }

                  else
                  {
                    v26 = *(v9 + 48);
                  }

                  if (v25 >= 0)
                  {
                    v27 = (v9 + 120);
                  }

                  else
                  {
                    v27 = *(v9 + 120);
                  }

                  if (!memcmp(v26, v27, v23))
                  {
                    v28 = 4;
                  }

                  else
                  {
                    v28 = 2;
                  }
                }

                else
                {
LABEL_59:
                  v28 = 2;
                }

                v29 = 0;
                if (v22 > 2)
                {
                  if (v22 == 3)
                  {
                    v29 = 3;
                  }

                  else if (v22 == 4)
                  {
                    v29 = 5;
                  }
                }

                else if (v22 == 1)
                {
                  v29 = 1;
                }

                else if (v22 == 2)
                {
                  v29 = v28;
                }

                if (sub_10016FA58(a1 + 232, (v9 + 72)))
                {
                  v30 = *(a1 + 5);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    if (*(v9 + 95) < 0)
                    {
                      v11 = *v11;
                    }

                    *buf = 136315138;
                    *&buf[4] = v11;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I plan : %s has already transferred", buf, 0xCu);
                  }
                }

                else
                {
                  if (CellularPlanSourceTransferModel::isActiveIccid_sync(a1, v9 + 72))
                  {
                    v31 = *(a1 + 5);
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                    {
                      v32 = (v9 + 72);
                      if (*(v9 + 95) < 0)
                      {
                        v32 = *v11;
                      }

                      *buf = 136315138;
                      *&buf[4] = v32;
                      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I add active profile to maybetransferred plan : %s", buf, 0xCu);
                    }

                    if (SHIBYTE(v35) < 0)
                    {
                      sub_100005F2C(buf, __dst[0], __dst[1]);
                    }

                    else
                    {
                      *buf = *__dst;
                      v39 = v35;
                    }

                    if (*(v9 + 143) < 0)
                    {
                      sub_100005F2C(&v40, *(v9 + 120), *(v9 + 128));
                    }

                    else
                    {
                      v40 = *(v9 + 120);
                      v41 = *(v9 + 136);
                    }

                    v42 = v29;
                    v43 = 0;
                    sub_10043A2C8(a1 + 256, (v9 + 72));
                    if (SHIBYTE(v41) < 0)
                    {
                      operator delete(v40);
                    }

                    if (SHIBYTE(v39) < 0)
                    {
                      operator delete(*buf);
                    }

                    sub_1004384A0(*(a1 + 9), a1 + 256, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"maybeTransferredPlans");
                    CellularPlanSourceTransferModel::evaluateCurrentNetworkStatusForIccid_sync(a1, (v9 + 72));
                  }

                  else
                  {
                    CellularPlanSourceTransferModel::addTransferredPlan_sync(a1, (v9 + 72), (v9 + 120), __dst, v29);
                  }

                  CellularPlanSourceTransferModel::notifyTransferConfirmed(a1, v33, __dst);
                }

                if (SHIBYTE(v35) < 0)
                {
                  operator delete(__dst[0]);
                }
              }
            }
          }
        }

        else
        {
          v14 = *(a1 + 5);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v9 + 95) < 0)
            {
              v11 = *v11;
            }

            *buf = 136315138;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I ignore out of band transferred plan : %s", buf, 0xCu);
          }
        }
      }

      v9 += 200;
    }

    while (v9 != v10);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100433B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSourceTransferModel::hasIccid_sync(uint64_t a1, const void **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  if (!v3)
  {
    return 1;
  }

  v4 = *(a1 + 176);
  v5 = (a1 + 184);
  if (v4 != (a1 + 184))
  {
    if (v2 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    do
    {
      v7 = *(v4 + 135);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = v4[15];
      }

      if (v7 == v3)
      {
        v9 = v8 >= 0 ? v4 + 14 : v4[14];
        if (!memcmp(v9, v6, v3))
        {
          return 1;
        }
      }

      v10 = v4[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v4[2];
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }

  sGetProfileDetails();
  v13 = v16;
  if (v16 == 1)
  {
    sub_100E3A5D4(v15);
  }

  return v13;
}

uint64_t CellularPlanSourceTransferModel::isActiveIccid_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 176);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v20 = *(a2 + 16);
  }

  v5 = (a1 + 184);
  v6 = HIBYTE(v20);
  if (v4 != (a1 + 184))
  {
    if (v20 >= 0)
    {
      v7 = HIBYTE(v20);
    }

    else
    {
      v7 = __p[1];
    }

    if (v20 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    while (1)
    {
      v9 = *(v4 + 135);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = v4[15];
      }

      if (v9 == v7)
      {
        v11 = v10 >= 0 ? v4 + 14 : v4[14];
        if (!memcmp(v11, v8, v7))
        {
          break;
        }
      }

      v12 = v4[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v4[2];
          v14 = *v13 == v4;
          v4 = v13;
        }

        while (!v14);
      }

      v4 = v13;
      if (v13 == v5)
      {
        v4 = (a1 + 184);
        break;
      }
    }
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 == v5 || (subscriber::isEsimCapable() & 1) != 0 || (subscriber::isPhySimDisabled() & 1) != 0)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    *buf = 0u;
    v22 = 0u;
    sGetProfileDetails();
    if (BYTE8(v34) == 1)
    {
      v15 = BYTE10(v26);
      sub_100E3A5D4(buf);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      *buf = 136315138;
      *&buf[4] = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Iccid %s is an active physical SIM", buf, 0xCu);
    }

    v15 = 1;
  }

  return v15 & 1;
}

void CellularPlanSourceTransferModel::evaluateCurrentNetworkStatusForIccid_sync(uint64_t a1, void **a2)
{
  if (sub_10016FA58(a1 + 304, a2))
  {
    sub_1000727F0((a1 + 304), a2);
    CellularPlanSourceTransferModel::addTransferredPlan_sync(a1, a2);
  }

  CellularPlanSourceTransferModel::maybeRecheckEntitlement_sync(a1, a2);
}

uint64_t CellularPlanSourceTransferModel::addTransferredPlan_sync(CellularPlanSourceTransferModel *a1, void **a2, __int128 *a3, uint64_t a4, char a5)
{
  v10 = *(a1 + 5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I add inactive profile to transferred plan: %s", buf, 0xCu);
  }

  v13 = *(a1 + 25);
  v14 = *(a1 + 26);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 1));
  }

  else
  {
    *__p = *a3;
    v27 = *(a3 + 2);
  }

  v23 = a5;
  if (v13 != v14)
  {
    v15 = v13 + 88;
    while (1)
    {
      ctu::hex(buf, (v15 - 72), 0x10, v11);
      if (v27 >= 0)
      {
        v11 = HIBYTE(v27);
      }

      else
      {
        v11 = __p[1];
      }

      v16 = HIBYTE(v29);
      v17 = SHIBYTE(v29);
      if (v29 < 0)
      {
        v16 = *&buf[8];
      }

      if (v11 == v16)
      {
        break;
      }

      v20 = 0;
      if (SHIBYTE(v29) < 0)
      {
        goto LABEL_26;
      }

LABEL_27:
      v21 = v15 == v14 || v20;
      v15 += 88;
      if (v21 == 1)
      {
        goto LABEL_33;
      }
    }

    if (v27 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if (v29 >= 0)
    {
      v19 = buf;
    }

    else
    {
      v19 = *buf;
    }

    v20 = memcmp(v18, v19, v11) == 0;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_26:
    operator delete(*buf);
    goto LABEL_27;
  }

  v20 = 0;
LABEL_33:
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
    if (v20)
    {
      goto LABEL_35;
    }
  }

  else if (v20)
  {
LABEL_35:
    sub_10000501C(buf, "");
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&v30, *a3, *(a3 + 1));
    }

    else
    {
      v30 = *a3;
      v31 = *(a3 + 2);
    }

    *v32 = 4;
    v32[2] = 0;
    sub_10043A2C8(a1 + 232, a2);
    goto LABEL_47;
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(buf, *a4, *(a4 + 8));
  }

  else
  {
    *buf = *a4;
    v29 = *(a4 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v30, *a3, *(a3 + 1));
  }

  else
  {
    v30 = *a3;
    v31 = *(a3 + 2);
  }

  v32[0] = v23;
  *&v32[1] = 0;
  sub_10043A2C8(a1 + 232, a2);
LABEL_47:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(*buf);
  }

  sub_1004384A0(*(a1 + 9), a1 + 232, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"transferredPlans");
  CellularPlanSourceTransferModel::notifyTransferredPlansUpdate_sync(a1);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, a2[1]);
  }

  else
  {
    *__dst = *a2;
    v25 = a2[2];
  }

  CellularPlanSourceTransferModel::maybeDeletePlanAfterTransfer(a1, __dst);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  return 1;
}

void sub_100434308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSourceTransferModel::notifyTransferConfirmed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v20 = 0;
  (***(a1 + 56))(&__dst);
  Registry::getNotificationSenderFactory(&v24, __dst);
  v5 = v24;
  (***(a1 + 56))(&v15);
  Registry::getTimerService(&v17, v15);
  (*(*v5 + 168))(&v19, v5, &v17, a1 + 24);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (*(&v24 + 1))
  {
    sub_100004A34(*(&v24 + 1));
  }

  if (*(&__dst + 1))
  {
    sub_100004A34(*(&__dst + 1));
  }

  if (v19)
  {
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v13 = *(a3 + 16);
    }

    if (SHIBYTE(v13) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v23 = v13;
    }

    v21 = 0;
    if (SHIBYTE(v23) < 0)
    {
      sub_100005F2C(&v24, __dst, *(&__dst + 1));
    }

    else
    {
      v24 = __dst;
      v25 = v23;
    }

    v26 = 0;
    if (ctu::cf::convert_copy())
    {
      v6 = v21;
      v21 = v26;
      v15 = v6;
      sub_100005978(&v15);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    v7 = v21;
    v14 = v21;
    v21 = 0;
    sub_100005978(&v21);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__dst);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    *&__dst = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      *&__dst = Mutable;
      *&v24 = 0;
      sub_1000296E0(&v24);
      v7 = v14;
      Mutable = __dst;
    }

    sub_1001768B8(Mutable, @"kTargetName", v7);
    v15 = 0;
    v9 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v9)
    {
      v15 = v9;
      *&v24 = 0;
      sub_1000296E0(&v24);
      v9 = v15;
    }

    sub_10043B768(v9, @"kTransferConfirmation", __dst);
    v10 = v19;
    sub_100010180(&v11, &v15);
    (*(*v10 + 40))(v10, &v11);
    sub_10001021C(&v11);
    sub_1000296E0(&v15);
    sub_1000296E0(&__dst);
    sub_100005978(&v14);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101770428();
  }

  if (v20)
  {
    sub_100004A34(v20);
  }
}

void sub_1004346B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, const void *a28)
{
  sub_100005978(&a28);
  if (*(v28 - 73) < 0)
  {
    operator delete(*(v28 - 96));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  _Unwind_Resume(a1);
}

void CellularPlanSourceTransferModel::maybeDeletePlanAfterTransfer(uint64_t a1, __int128 *a2)
{
  if (sIsProfileInstalled())
  {
    v4 = *(a1 + 96);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = *(a1 + 88);
        if (v6)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v7 = *(a1 + 176);
          if (v7 != (a1 + 184))
          {
            do
            {
              *__p = 0u;
              v45 = 0u;
              v42 = 0u;
              *v43 = 0u;
              *v40 = 0u;
              *v41 = 0u;
              *v38 = 0u;
              v39 = 0u;
              *v36 = 0u;
              *v37 = 0u;
              *buf = 0u;
              *buf = *(v7 + 8);
              sub_100032BFC(&buf[8], (v7 + 5));
              v8 = v47;
              if (v47 >= v48)
              {
                v9 = sub_100438918(&v46, &buf[8]);
              }

              else
              {
                sub_100032BFC(v47, &buf[8]);
                v9 = v8 + 168;
              }

              v47 = v9;
              if (SHIBYTE(v45) < 0)
              {
                operator delete(__p[1]);
              }

              if (SHIBYTE(__p[0]) < 0)
              {
                operator delete(v43[0]);
              }

              if (SHIBYTE(v42) < 0)
              {
                operator delete(v41[1]);
              }

              if (SHIBYTE(v41[0]) < 0)
              {
                operator delete(v40[0]);
              }

              *v32 = v38;
              sub_100034D1C(v32);
              if (v36[1])
              {
                v37[0] = v36[1];
                operator delete(v36[1]);
              }

              v10 = v7[1];
              if (v10)
              {
                do
                {
                  v11 = v10;
                  v10 = *v10;
                }

                while (v10);
              }

              else
              {
                do
                {
                  v11 = v7[2];
                  v12 = *v11 == v7;
                  v7 = v11;
                }

                while (!v12);
              }

              v7 = v11;
            }

            while (v11 != (a1 + 184));
          }

          v43[0] = 0;
          *v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          *v40 = 0u;
          *v37 = 0u;
          *v38 = 0u;
          *buf = 0u;
          *v36 = 0u;
          (*(*v6 + 48))(v32, v6);
          sub_100931FDC(buf, a1 + 40, a2, a1 + 200, &v46, v32);
          sub_10016A798(v32, v33);
          if ((v43[0] & 1) == 0)
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_10177045C();
            }

            goto LABEL_61;
          }

          if (((*(**(a1 + 56) + 1032))(*(a1 + 56), v37, &v38[1], v40, &v41[1], a2) & 1) == 0)
          {
            v25 = *(a1 + 40);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *v32 = 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I delete plan after transfer not supported", v32, 2u);
            }

            goto LABEL_61;
          }

          CellularPlanSourceTransferModel::getAllUserPlanIccids(a1, v32);
          v13 = v34;
          sub_100009970(v32, v33);
          if (v13 != 1)
          {
LABEL_51:
            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(__dst, *a2, *(a2 + 1));
              v26 = *(a2 + 23) < 0;
            }

            else
            {
              v26 = 0;
              *__dst = *a2;
              v31 = *(a2 + 2);
            }

            v27[0] = _NSConcreteStackBlock;
            v27[1] = 1174405120;
            v27[2] = sub_100434FE8;
            v27[3] = &unk_101E4C788;
            v27[4] = a1;
            if (v26)
            {
              sub_100005F2C(&v28, *a2, *(a2 + 1));
            }

            else
            {
              v28 = *a2;
              v29 = *(a2 + 2);
            }

            (*(*v6 + 40))(v6, __dst, v27);
            if (SHIBYTE(v31) < 0)
            {
              operator delete(__dst[0]);
            }

            if (SHIBYTE(v29) < 0)
            {
              operator delete(v28);
            }

LABEL_61:
            if (LOBYTE(v43[0]) == 1)
            {
              if (SHIBYTE(v42) < 0)
              {
                operator delete(v41[1]);
              }

              if (SHIBYTE(v41[0]) < 0)
              {
                operator delete(v40[0]);
              }

              if (SHIBYTE(v39) < 0)
              {
                operator delete(v38[1]);
              }

              if (SHIBYTE(v38[0]) < 0)
              {
                operator delete(v37[0]);
              }

              if (LOBYTE(v36[1]) == 1 && SHIBYTE(v36[0]) < 0)
              {
                operator delete(*buf);
              }
            }

            *buf = &v46;
            sub_1000B2AF8(buf);
LABEL_74:
            if (v5)
            {
              sub_100004A34(v5);
            }

            return;
          }

          (***(a1 + 56))(v32);
          ServiceMap = Registry::getServiceMap(*v32);
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
          v49 = v16;
          v20 = sub_100009510(&v15[1].__m_.__sig, &v49);
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
LABEL_45:
              if (v33)
              {
                sub_100004A34(v33);
              }

              if (v22)
              {
                (*(*v22 + 88))(v22, 0);
              }

              if ((v23 & 1) == 0)
              {
                sub_100004A34(v21);
              }

              goto LABEL_51;
            }
          }

          else
          {
            v22 = 0;
          }

          std::mutex::unlock(v15);
          v21 = 0;
          v23 = 1;
          goto LABEL_45;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101770490();
    }

    goto LABEL_74;
  }

  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I profile not found in vinyl info", buf, 2u);
  }
}

void sub_100434D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if ((v32 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  sub_100435110(&a31);
  a31 = v34 - 112;
  sub_1000B2AF8(&a31);
  sub_100004A34(v31);
  _Unwind_Resume(a1);
}

uint64_t sub_100434E20(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v4 = (a1 + 48);
  sub_100034D1C(&v4);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t CellularPlanSourceTransferModel::getAllUserPlanIccids@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = this;
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v4 = *(this + 176);
  v5 = (this + 184);
  if (v4 != (this + 184))
  {
    do
    {
      if ((*(v4 + 135) & 0x8000000000000000) != 0)
      {
        if (v4[15])
        {
LABEL_6:
          this = subscriber::isEsimCapable();
          if ((this & 1) == 0)
          {
            this = sub_100005BA0(a2, v4 + 14);
          }
        }
      }

      else if (*(v4 + 135))
      {
        goto LABEL_6;
      }

      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }

  v10 = *(v2 + 200);
  v9 = *(v2 + 208);
  while (v10 != v9)
  {
    if (*(v10 + 80) == 1)
    {
      v11 = *(v10 + 56);
      v12 = *(v10 + 64);
      while (v11 != v12)
      {
        if ((*(v11 + 39) & 0x8000000000000000) != 0)
        {
          if (!*(v11 + 24))
          {
            goto LABEL_25;
          }
        }

        else if (!*(v11 + 39))
        {
          goto LABEL_25;
        }

        if ((*(v11 + 89) & 1) == 0)
        {
          this = sub_100005BA0(a2, (v11 + 16));
        }

LABEL_25:
        v11 += 216;
      }
    }

    v10 += 88;
  }

  return this;
}

void sub_100434FE8(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    v6 = 136315650;
    v7 = v5;
    v8 = 1024;
    v9 = a2;
    v10 = 2080;
    v11 = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I callback for deleting plan after transfer. iccid: [%s], result: [%d], error: [%s]", &v6, 0x1Cu);
  }
}

char *sub_1004350D0(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_100005F2C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_1004350FC(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t sub_100435110(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void CellularPlanSourceTransferModel::notifyTransferredPlansUpdate_sync(CellularPlanSourceTransferModel *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 11);
      if (v5)
      {
        (*(*v5 + 16))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void CellularPlanSourceTransferModel::addTransferredPlan_sync(uint64_t a1, void **a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I move plan: %s from maybetransferred to transferred", buf, 0xCu);
  }

  v13 = 0;
  v6 = sub_100007A6C(a1 + 256, a2);
  if ((a1 + 264) == v6)
  {
    v6 = 0;
    v7 = 0;
    v13 = 0;
  }

  else
  {
    sub_1000194D8((a1 + 256), v6);
    v7 = 1;
  }

  v12 = v6;
  BYTE1(v13) = v7;
  sub_10043A4EC((a1 + 232), &v12, v10);
  if (v11)
  {
    v14 = 0;
    *buf = &v14;
    buf[8] = 1;
    sub_10043A48C(buf, v11);
    v11 = 0;
  }

  sub_1004384A0(*(a1 + 72), a1 + 256, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"maybeTransferredPlans");
  sub_1004384A0(*(a1 + 72), a1 + 232, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"transferredPlans");
  CellularPlanSourceTransferModel::notifyTransferredPlansUpdate_sync(a1);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, a2[1]);
  }

  else
  {
    *__p = *a2;
    v9 = a2[2];
  }

  CellularPlanSourceTransferModel::maybeDeletePlanAfterTransfer(a1, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (v12)
  {
    v14 = 0;
    *buf = &v14;
    buf[8] = 1;
    sub_10043A48C(buf, v12);
  }
}

void sub_100435410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    *(v19 - 65) = 0;
    *(v19 - 64) = v19 - 65;
    *(v19 - 56) = 1;
    sub_10043A48C(v19 - 64, a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSourceTransferModel::deleteTransferredPlan_sync(uint64_t a1, uint64_t a2)
{
  result = sub_10016FA58(a1 + 232, a2);
  if (result)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I remove transferred plan: %s", &v7, 0xCu);
    }

    sub_10043A5B8((a1 + 232), a2);
    return sub_1004384A0(*(a1 + 72), a1 + 232, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"transferredPlans");
  }

  return result;
}

BOOL CellularPlanSourceTransferModel::maybeClearTransferredPlans_sync(CellularPlanSourceTransferModel *this)
{
  v2 = (this + 232);
  v3 = *(this + 29);
  v4 = (this + 240);
  if (v3 != (this + 240))
  {
    do
    {
      if (CellularPlanSourceTransferModel::hasIccid_sync(this, v3 + 4))
      {
        v5 = v3[1];
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
          do
          {
            v6 = v3[2];
            v7 = *v6 == v3;
            v3 = v6;
          }

          while (!v7);
        }
      }

      else
      {
        v6 = sub_10043A600(v2, v3);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  v8 = *(this + 9);

  return sub_1004384A0(v8, v2, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"transferredPlans");
}

uint64_t CellularPlanSourceTransferModel::getTransferredPlanInfo_sync@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10016FA58(a1 + 232, a2);
  if (result)
  {
    result = sub_1000E20F0(a1 + 232, a2);
    v7 = result;
    if (*(result + 23) < 0)
    {
      result = sub_100005F2C(a3, *result, *(result + 8));
    }

    else
    {
      v8 = *result;
      *(a3 + 16) = *(result + 16);
      *a3 = v8;
    }

    if (*(v7 + 47) < 0)
    {
      result = sub_100005F2C((a3 + 24), *(v7 + 24), *(v7 + 32));
    }

    else
    {
      v10 = *(v7 + 24);
      *(a3 + 40) = *(v7 + 40);
      *(a3 + 24) = v10;
    }

    v11 = *(v7 + 48);
    *(a3 + 50) = *(v7 + 50);
    *(a3 + 48) = v11;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    *a3 = 0;
  }

  *(a3 + 56) = v9;
  return result;
}

void sub_1004356C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSourceTransferModel::getTransferredIccids_sync@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 232);
  v3 = (this + 240);
  if (v2 != (this + 240))
  {
    do
    {
      this = sub_100005308(a2, v2 + 2);
      v5 = *(v2 + 1);
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
        do
        {
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return this;
}

void sub_100435770(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

void CellularPlanSourceTransferModel::setDeactivatedIccids_sync(uint64_t a1, void **a2)
{
  if (sub_10016FA58(a1 + 232, a2))
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Already marked as transferred", v5, 2u);
    }
  }

  else if (sub_10016FA58(a1 + 256, a2))
  {

    CellularPlanSourceTransferModel::addTransferredPlan_sync(a1, a2);
  }

  else
  {

    sub_100005BA0(a1 + 304, a2);
  }
}

void CellularPlanSourceTransferModel::setTransferSession_sync(uint64_t a1, std::string *a2)
{
  if (!sub_10064B124((a1 + 352), a2))
  {
    sub_10064B0E4(a1 + 352);
    std::string::operator=((a1 + 352), a2);
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_10064B1B0(a1 + 352, __p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Transfer session info %s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void CellularPlanSourceTransferModel::getSecureIntentLAContext_sync(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = (a1 + 352);
  if (!*(a1 + 376))
  {
    sub_10043A64C();
  }

  if (!sub_10064B124(v6, a2))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 375) < 0)
      {
        v6 = *v6;
      }

      if (*(a2 + 23) >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      buf[0] = 136315394;
      *&buf[1] = v6;
      LOWORD(buf[3]) = 2080;
      *(&buf[3] + 2) = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Inconsistent transfer sessions, cached session (%s), transfer session (%s) to get secure intent LAContext", buf, 0x16u);
    }
  }

  v8 = *(a1 + 384);
  *a3 = *(a1 + 376);
  a3[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }
}

void CellularPlanSourceTransferModel::setSecureIntentDtoEvaluationStatus_sync(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  v6 = (a1 + 352);
  if (sub_10064B124((a1 + 352), a2))
  {
    *(a1 + 393) = a3;
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064B1B0(v6, __p);
      if (v15 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Transfer session info %s", &v10, 0xCu);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 375) < 0)
      {
        v6 = *v6;
      }

      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      *__p = 136315650;
      *&__p[4] = v6;
      v13 = 2080;
      v14 = v4;
      v15 = 2080;
      v16 = asString();
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Inconsistent transfer sessions, cached session (%s), transfer session (%s), dto status %s", __p, 0x20u);
    }
  }
}

uint64_t CellularPlanSourceTransferModel::getSecureIntentDtoEvaluationStatus_sync(uint64_t a1, void *a2)
{
  if (sub_10064B124((a1 + 352), a2))
  {
    return *(a1 + 393);
  }

  else
  {
    return 1;
  }
}

void CellularPlanSourceTransferModel::setUserConsentState_sync(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v6 = (a1 + 352);
  if (sub_10064B124((a1 + 352), a2))
  {
    *(a1 + 392) = a3;
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064B1B0(v6, __p);
      if (v15 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Transfer session info %s", &v10, 0xCu);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 375) < 0)
      {
        v6 = *v6;
      }

      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      *__p = 136315650;
      *&__p[4] = v6;
      v13 = 2080;
      v14 = v4;
      v15 = 2080;
      v16 = sub_100649BB4(a3);
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Inconsistent transfer sessions, cached session (%s), transfer session (%s), user consent state %s", __p, 0x20u);
    }
  }
}

uint64_t CellularPlanSourceTransferModel::getUserConsentState_sync(uint64_t a1, void *a2)
{
  if (sub_10064B124((a1 + 352), a2))
  {
    return *(a1 + 392);
  }

  else
  {
    return 4;
  }
}

void CellularPlanSourceTransferModel::setTransferProxCardComplete_sync(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v6 = (a1 + 352);
  if (sub_10064B124((a1 + 352), a2))
  {
    *(a1 + 394) = a3;
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064B1B0(v6, __p);
      if (v15 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Transfer session info %s", &v10, 0xCu);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 375) < 0)
      {
        v6 = *v6;
      }

      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      *__p = 136315650;
      *&__p[4] = v6;
      v13 = 2080;
      v14 = v4;
      v15 = 2080;
      v16 = asString(a3);
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Inconsistent transfer sessions, cached session (%s), transfer session (%s), prox status %s", __p, 0x20u);
    }
  }
}

uint64_t CellularPlanSourceTransferModel::getTransferProxCardComplete_sync(uint64_t a1, void *a2)
{
  if (sub_10064B124((a1 + 352), a2))
  {
    v3 = *(a1 + 394);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void CellularPlanSourceTransferModel::setSelectedTransferPlansCount_sync(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = (a1 + 352);
  if (sub_10064B124((a1 + 352), a2))
  {
    *(a1 + 396) = a3;
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064B1B0(v6, __p);
      if (v16 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      v11 = 136315138;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Transfer session info %s", &v11, 0xCu);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 375) < 0)
      {
        v6 = *v6;
      }

      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      *__p = 136315650;
      *&__p[4] = v6;
      v14 = 2080;
      v15 = v10;
      v16 = 1024;
      v17 = a3;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Inconsistent transfer sessions, cached session (%s), transfer session (%s), selected transfer plans count %d", __p, 0x1Cu);
    }
  }
}

void CellularPlanSourceTransferModel::dumpState_sync(CellularPlanSourceTransferModel *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 29);
    v4 = this + 240;
    v36 = ",";
    v37 = 1;
    memset(&v38, 0, sizeof(v38));
    if (v3 != (this + 240))
    {
      if (*(v3 + 55) < 0)
      {
        sub_100005F2C(&__p, v3[4], v3[5]);
      }

      else
      {
        __p = *(v3 + 4);
      }

      v5 = v3[1];
      v38 = __p;
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
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      if (v6 != v4)
      {
        do
        {
          sub_100074CFC(&v36, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
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

          std::string::append(&v38, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (*(v6 + 55) < 0)
          {
            sub_100005F2C(&__p, v6[4], v6[5]);
          }

          else
          {
            __p = *(v6 + 4);
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v10 = &__p;
          }

          else
          {
            v10 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v11 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&v38, v10, v11);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v12 = v6[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = v6[2];
              v7 = *v13 == v6;
              v6 = v13;
            }

            while (!v7);
          }

          v6 = v13;
        }

        while (v13 != v4);
      }
    }

    v14 = &v38;
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v38.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Transferred iccids : [%s]", &__p, 0xCu);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(this + 32);
    v16 = this + 264;
    v36 = ",";
    v37 = 1;
    memset(&v38, 0, sizeof(v38));
    if (v15 != (this + 264))
    {
      if (*(v15 + 55) < 0)
      {
        sub_100005F2C(&__p, v15[4], v15[5]);
      }

      else
      {
        __p = *(v15 + 4);
      }

      v17 = v15[1];
      v38 = __p;
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
          v18 = v15[2];
          v7 = *v18 == v15;
          v15 = v18;
        }

        while (!v7);
      }

      if (v18 != v16)
      {
        do
        {
          sub_100074CFC(&v36, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &__p;
          }

          else
          {
            v19 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v20 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&v38, v19, v20);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (*(v18 + 55) < 0)
          {
            sub_100005F2C(&__p, v18[4], v18[5]);
          }

          else
          {
            __p = *(v18 + 4);
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = &__p;
          }

          else
          {
            v21 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v22 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&v38, v21, v22);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v23 = v18[1];
          if (v23)
          {
            do
            {
              v24 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v18[2];
              v7 = *v24 == v18;
              v18 = v24;
            }

            while (!v7);
          }

          v18 = v24;
        }

        while (v24 != v16);
      }
    }

    v25 = &v38;
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v38.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v25;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Maybe transferred iccids : [%s]", &__p, 0xCu);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(this + 37);
    LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
    *(__p.__r_.__value_.__r.__words + 4) = v26;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Transferred back pairs map size: %lu", &__p, 0xCu);
  }

  v27 = *(this + 35);
  if (v27 != (this + 288))
  {
    do
    {
      v28 = *(this + 5);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = (v27 + 32);
        if (*(v27 + 55) < 0)
        {
          v29 = *v29;
        }

        v30 = (v27 + 56);
        if (*(v27 + 79) < 0)
        {
          v30 = *v30;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v29;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I  from: [%s] to: [%s] ", &__p, 0x16u);
      }

      v31 = *(v27 + 1);
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = *(v27 + 2);
          v7 = *v32 == v27;
          v27 = v32;
        }

        while (!v7);
      }

      v27 = v32;
    }

    while (v32 != (this + 288));
  }

  v33 = *(this + 5);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    sub_100074B94(*(this + 38), this + 13, ",", 1, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &__p;
    }

    else
    {
      v34 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(v38.__r_.__value_.__l.__data_) = 136315138;
    *(v38.__r_.__value_.__r.__words + 4) = v34;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Deactivated ICCIDs [%s]", &v38, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v33 = *(this + 5);
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    sub_10064B1B0(this + 352, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &__p;
    }

    else
    {
      v35 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(v38.__r_.__value_.__l.__data_) = 136315138;
    *(v38.__r_.__value_.__r.__words + 4) = v35;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Transfer session info %s", &v38, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1004367AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSourceTransferModel::activateCrossPlatformTransport_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 120);
  if (v4 && (*(*v4 + 40))(v4))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017704C4();
    }

    return sub_10025BA88(a2, 269);
  }

  else
  {
    v6 = *(a1 + 24);
    object = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    v7 = *(a1 + 64);
    v10 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1009C0B00(1, &v12);
    v8 = v12;
    v12 = 0uLL;
    v9 = *(a1 + 128);
    *(a1 + 120) = v8;
    if (v9)
    {
      sub_100004A34(v9);
      if (*(&v12 + 1))
      {
        sub_100004A34(*(&v12 + 1));
      }
    }

    if (v10)
    {
      sub_100004A34(v10);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (*(a1 + 120))
    {
      sub_10043A78C(v13, a2);
      v14 = 0;
      operator new();
    }

    return sub_10025BA88(a2, 260);
  }
}

void sub_1004369E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_10028ED7C(v16 - 56);
  sub_10039D5CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSourceTransferModel::deactivateCrossPlatformTransport_sync(void *a1, uint64_t a2)
{
  v3 = a1[15];
  if (v3)
  {
    v5 = a1[5];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I deactivate cross platform transfer", v8, 2u);
      v3 = a1[15];
    }

    (*(*v3 + 24))(v3, 1);
    v6 = a1[16];
    a1[15] = 0;
    a1[16] = 0;
    if (v6)
    {
      sub_100004A34(v6);
    }

    return sub_10025BA88(a2, 0);
  }

  else
  {

    return sub_10025BA88(a2, 260);
  }
}

uint64_t CellularPlanSourceTransferModel::connectCrossPlatformTransportWithCode_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    (*(*v4 + 48))(v4);
    v5 = 0;
  }

  else
  {
    v5 = 260;
  }

  return sub_10025BA88(a3, v5);
}

uint64_t CellularPlanSourceTransferModel::getMessageSessionWrapper_sync@<X0>(CellularPlanSourceTransferModel *this@<X0>, void *a2@<X8>)
{
  result = *(this + 15);
  if (result)
  {
    return (*(*result + 32))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void CellularPlanSourceTransferModel::sessionInvalidated(CellularPlanSourceTransferModel *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

BOOL sub_100436CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 8))
  {
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1017703C0();
    return 0;
  }

  if (!a4)
  {
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1017704F8();
    return 0;
  }

  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  codec::encode<std::map<std::string,std::string>>(v13, a2);
  if (SHIBYTE(v14) < 0)
  {
    sub_100005F2C(v10, v13[0], v13[1]);
  }

  else
  {
    *v10 = *v13;
    v11 = v14;
  }

  if (SHIBYTE(v11) < 0)
  {
    sub_100005F2C(__dst, v10[0], v10[1]);
  }

  else
  {
    *__dst = *v10;
    v17 = v11;
  }

  v15 = 0;
  if (SHIBYTE(v17) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v19 = v17;
  }

  v20 = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = v15;
    v15 = v20;
    v21 = v8;
    sub_100005978(&v21);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = v15;
  v12 = v15;
  v15 = 0;
  sub_100005978(&v15);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  (*(**(a1 + 8) + 16))(*(a1 + 8), a4, v9, a3, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  (*(**(a1 + 8) + 48))(*(a1 + 8), a3, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100005978(&v12);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  return 1;
}

void sub_100436EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_100005978(&a22);
  if (a28 < 0)
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

  _Unwind_Resume(a1);
}

void CellularPlanSourceTransferModel::maybeDeleteTransferBackPlan_sync(CellularPlanSourceTransferModel *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3 && *(this + 11))
    {
      memset(&v20, 0, sizeof(v20));
      v4 = *(this + 35);
      if (v4 != (this + 288))
      {
        while (!sub_10016FA58(this + 232, v4 + 4))
        {
          v5 = *(v4 + 1);
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
            do
            {
              v6 = *(v4 + 2);
              v7 = *v6 == v4;
              v4 = v6;
            }

            while (!v7);
          }

          v4 = v6;
          if (v6 == (this + 288))
          {
            goto LABEL_17;
          }
        }

        std::string::operator=(&v20, (v4 + 32));
      }

LABEL_17:
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!v20.__r_.__value_.__l.__size_)
        {
LABEL_51:
          if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v20.__r_.__value_.__l.__data_);
          }

          goto LABEL_53;
        }

        v8 = *(this + 22);
        sub_100005F2C(&__p, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
      }

      else
      {
        if (!*(&v20.__r_.__value_.__s + 23))
        {
          goto LABEL_53;
        }

        v8 = *(this + 22);
        __p = v20;
      }

      v9 = this + 184;
      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (v8 != this + 184)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        while (1)
        {
          v13 = v8[135];
          v14 = v13;
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(v8 + 15);
          }

          if (v13 == size)
          {
            v15 = v14 >= 0 ? v8 + 112 : *(v8 + 14);
            if (!memcmp(v15, p_p, size))
            {
              break;
            }
          }

          v16 = *(v8 + 1);
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
              v17 = *(v8 + 2);
              v7 = *v17 == v8;
              v8 = v17;
            }

            while (!v7);
          }

          v8 = v17;
          if (v17 == v9)
          {
            v8 = this + 184;
            break;
          }
        }
      }

      if (v10 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v8 == v9 || (subscriber::isEsimCapable() & 1) != 0)
      {
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&v18, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
        }

        else
        {
          v18 = v20;
        }

        v21 = 0;
        operator new();
      }

      goto LABEL_51;
    }
  }

  else
  {
    v3 = 0;
  }

  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_10177052C();
  }

LABEL_53:
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_10043726C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v26);
  _Unwind_Resume(a1);
}

void CellularPlanSourceTransferModel::handleGenericTransferPayloadRequest_sync(os_log_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7)
{
  v14 = sub_100649C38(9);
  v15 = strlen(v14);
  v16 = v15;
  v17 = *(a6 + 23);
  if (v17 < 0)
  {
    if (v15 != a6[1])
    {
      v19 = a1[5];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_13:
      a6 = *a6;
LABEL_14:
      *buf = 136446210;
      *&buf[4] = a6;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "unhandled message type : %{public}s", buf, 0xCu);
      return;
    }

    if (v15 == -1)
    {
      sub_10013C334();
    }

    v18 = *a6;
LABEL_8:
    if (memcmp(v18, v14, v16))
    {
      v19 = a1[5];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0;
    v32 = 0;
    __p = 0;
    sub_100034C50(&__p, *a7, a7[1], a7[1] - *a7);
    *buf = 0u;
    *v38 = 0u;
    PB::Reader::Reader(buf, __p, v31 - __p);
    memset(v36, 0, sizeof(v36));
    sub_1009CEC2C(v36);
    if (sub_1009CEF9C(v36, buf))
    {
      sub_1009CEF0C(&v33, v36);
      v20 = 1;
    }

    else
    {
      v20 = 0;
      LOBYTE(v33) = 0;
    }

    LOBYTE(v35) = v20;
    sub_1009CECC8(v36);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    if (v35 != 1 || !v34)
    {
      goto LABEL_39;
    }

    v21 = *(v34 + 23);
    if (v21 < 0)
    {
      if (!*(v34 + 8))
      {
        goto LABEL_39;
      }
    }

    else if (!*(v34 + 23))
    {
      goto LABEL_39;
    }

    if (v21 >= 0)
    {
      v22 = *(v34 + 23);
    }

    else
    {
      v22 = *(v34 + 8);
    }

    v23 = *(a3 + 23);
    v24 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(a3 + 8);
    }

    if (v22 == v23)
    {
      v25 = v21 >= 0 ? v34 : *v34;
      v26 = v24 >= 0 ? a3 : *a3;
      if (!memcmp(v25, v26, v22))
      {
        v43 = 0;
        *v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        *v40 = 0u;
        memset(v38, 0, sizeof(v38));
        *buf = 0u;
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(buf, *a2, *(a2 + 8));
          LOBYTE(v24) = *(a3 + 23);
        }

        else
        {
          *buf = *a2;
          v38[0] = *(a2 + 16);
        }

        if ((v24 & 0x80) != 0)
        {
          sub_100005F2C(&v38[1], *a3, *(a3 + 8));
        }

        else
        {
          *&v38[1] = *a3;
          v38[3] = *(a3 + 16);
        }

        *&v39 = a4;
        *(&v39 + 1) = a5;
        *v40 = 0u;
        *v41 = 0u;
        v42 = 0u;
        LOBYTE(v43) = 0;
        *&v36[0] = a3;
        v27 = sub_10043ABB8((a1 + 41), a3);
        std::string::operator=((v27 + 56), buf);
        std::string::operator=((v27 + 80), &v38[1]);
        *(v27 + 104) = v39;
        std::string::operator=((v27 + 120), v40);
        if ((v27 + 56) != buf)
        {
          sub_1001122C4((v27 + 144), v41[1], v42, v42 - v41[1]);
        }

        *(v27 + 168) = v43;
        if (*(a3 + 23) < 0)
        {
          sub_100005F2C(v28, *a3, *(a3 + 8));
        }

        else
        {
          *v28 = *a3;
          v29 = *(a3 + 16);
        }

        ((*a1)[28].isa)(a1, v28);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28[0]);
        }

        if (v41[1])
        {
          *&v42 = v41[1];
          operator delete(v41[1]);
        }

        if (SHIBYTE(v41[0]) < 0)
        {
          operator delete(v40[0]);
        }

        if (SHIBYTE(v38[3]) < 0)
        {
          operator delete(v38[1]);
        }

        if (SHIBYTE(v38[0]) < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_41;
      }
    }

LABEL_39:
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_101770560();
    }

LABEL_41:
    if (v35 == 1)
    {
      sub_1009CECC8(&v33);
    }

    return;
  }

  v18 = a6;
  if (v16 == v17)
  {
    goto LABEL_8;
  }

  v19 = a1[5];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }
}

void sub_100437710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    sub_1009CECC8(&a18);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSourceTransferModel::handleDeleteProfileRequest_sync(uint64_t a1, void **a2)
{
  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a2;
    if (*(a2 + 23) < 0)
    {
      v6 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I received request to delete profile with iccid: %s", buf, 0xCu);
  }

  if (sIsProfileInstalled())
  {
    v7 = *(a1 + 96);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = *(a1 + 88);
        if (v9)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v10 = *(a1 + 176);
          if (v10 != (a1 + 184))
          {
            do
            {
              *__p = 0u;
              v51 = 0u;
              v48 = 0u;
              *v49 = 0u;
              *v46 = 0u;
              *v47 = 0u;
              *v44 = 0u;
              v45 = 0u;
              *v42 = 0u;
              *v43 = 0u;
              *buf = 0u;
              *buf = *(v10 + 8);
              sub_100032BFC(&buf[8], (v10 + 5));
              v11 = v38;
              if (v38 >= v39)
              {
                v12 = sub_100438918(&v37, &buf[8]);
              }

              else
              {
                sub_100032BFC(v38, &buf[8]);
                v12 = v11 + 168;
              }

              v38 = v12;
              if (SHIBYTE(v51) < 0)
              {
                operator delete(__p[1]);
              }

              if (SHIBYTE(__p[0]) < 0)
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

              v34 = v44;
              sub_100034D1C(&v34);
              if (v42[1])
              {
                v43[0] = v42[1];
                operator delete(v42[1]);
              }

              v13 = v10[1];
              if (v13)
              {
                do
                {
                  v14 = v13;
                  v13 = *v13;
                }

                while (v13);
              }

              else
              {
                do
                {
                  v14 = v10[2];
                  v15 = *v14 == v10;
                  v10 = v14;
                }

                while (!v15);
              }

              v10 = v14;
            }

            while (v14 != (a1 + 184));
          }

          v49[0] = 0;
          *v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          *v46 = 0u;
          *v43 = 0u;
          *v44 = 0u;
          *buf = 0u;
          *v42 = 0u;
          (*(*v9 + 48))(&v34, v9);
          sub_100931FDC(buf, v5, a2, a1 + 200, &v37, &v34);
          sub_10016A798(&v34, v35);
          if ((v49[0] & 1) == 0)
          {
            if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
            {
              sub_10177045C();
            }

            goto LABEL_68;
          }

          if (((*(**(a1 + 56) + 1024))(*(a1 + 56), v43, &v44[1], v46, &v47[1], a2) & 1) == 0)
          {
            if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
            {
              sub_101770594();
            }

            goto LABEL_68;
          }

          CellularPlanSourceTransferModel::getAllUserPlanIccids(a1, &v34);
          v16 = v36;
          sub_100009970(&v34, v35);
          if (v16 != 1)
          {
LABEL_58:
            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(__dst, *a2, a2[1]);
              v28 = *(a2 + 23) < 0;
            }

            else
            {
              v28 = 0;
              *__dst = *a2;
              v33 = a2[2];
            }

            v29[0] = _NSConcreteStackBlock;
            v29[1] = 1174405120;
            v29[2] = sub_100437EA8;
            v29[3] = &unk_101E4C7B8;
            v29[4] = a1;
            if (v28)
            {
              sub_100005F2C(&v30, *a2, a2[1]);
            }

            else
            {
              v30 = *a2;
              v31 = a2[2];
            }

            (*(*v9 + 40))(v9, __dst, v29);
            if (SHIBYTE(v33) < 0)
            {
              operator delete(__dst[0]);
            }

            if (SHIBYTE(v31) < 0)
            {
              operator delete(v30);
            }

LABEL_68:
            if (LOBYTE(v49[0]) == 1)
            {
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
                operator delete(v44[1]);
              }

              if (SHIBYTE(v44[0]) < 0)
              {
                operator delete(v43[0]);
              }

              if (LOBYTE(v42[1]) == 1 && SHIBYTE(v42[0]) < 0)
              {
                operator delete(*buf);
              }
            }

            *buf = &v37;
            sub_1000B2AF8(buf);
LABEL_44:
            sub_100004A34(v8);
            return;
          }

          (***(a1 + 56))(&v34);
          ServiceMap = Registry::getServiceMap(v34);
          v18 = ServiceMap;
          if ((v19 & 0x8000000000000000) != 0)
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
          v40 = v19;
          v23 = sub_100009510(&v18[1].__m_.__sig, &v40);
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
LABEL_52:
              if (v35)
              {
                sub_100004A34(v35);
              }

              if (v25)
              {
                (*(*v25 + 88))(v25, 0);
              }

              if ((v26 & 1) == 0)
              {
                sub_100004A34(v24);
              }

              goto LABEL_58;
            }
          }

          else
          {
            v25 = 0;
          }

          std::mutex::unlock(v18);
          v24 = 0;
          v26 = 1;
          goto LABEL_52;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_101770490();
    }

    if (v8)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v27 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I profile not found in vinyl info", buf, 2u);
    }
  }
}

void sub_100437DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char *a33)
{
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v35);
  }

  sub_100435110(&a33);
  a33 = &a29;
  sub_1000B2AF8(&a33);
  sub_100004A34(v33);
  _Unwind_Resume(a1);
}

void sub_100437EA8(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    v6 = 136315650;
    v7 = v5;
    v8 = 1024;
    v9 = a2;
    v10 = 2080;
    v11 = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I callback for deleting plan being transferred. iccid: [%s], result: [%d], error: [%s]", &v6, 0x1Cu);
  }
}

void CellularPlanSourceTransferModel::maybeRecheckEntitlement_sync(uint64_t a1, uint64_t a2)
{
  if (sub_10016FA58(a1 + 256, a2) && (*(sub_1000E20F0(a1 + 256, a2) + 50) & 1) == 0)
  {
    v4 = *(a1 + 176);
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v26 = *(a2 + 16);
    }

    v5 = (a1 + 184);
    if (v4 != (a1 + 184))
    {
      while (1)
      {
        v6 = *(v4 + 135);
        if (v6 >= 0)
        {
          v7 = *(v4 + 135);
        }

        else
        {
          v7 = v4[15];
        }

        v8 = HIBYTE(v26);
        if (v26 < 0)
        {
          v8 = __p[1];
        }

        if (v7 == v8)
        {
          v9 = v6 >= 0 ? v4 + 14 : v4[14];
          v10 = v26 >= 0 ? __p : __p[0];
          if (!memcmp(v9, v10, v7) && (subscriber::isSimReady() & 1) != 0)
          {
            break;
          }
        }

        v11 = v4[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v4[2];
            v13 = *v12 == v4;
            v4 = v12;
          }

          while (!v13);
        }

        v4 = v12;
        if (v12 == v5)
        {
          v4 = (a1 + 184);
          break;
        }
      }
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (v4 != v5)
    {
      *buf = a2;
      *(sub_10043BB1C(a1 + 256, a2) + 106) = 1;
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v15 = a2;
        }

        else
        {
          v15 = *a2;
        }

        *buf = 136315138;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I schedule force entitlement check for %s", buf, 0xCu);
      }

      (***(a1 + 56))(&v23);
      Registry::getTimerService(&v24, v23);
      sub_10000501C(v21, "force.entitlement.check");
      *&v17 = a1;
      sub_100004AA0(buf, (a1 + 8));
      v16 = *&buf[8];
      *(&v17 + 1) = *buf;
      v18 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(v19, *a2, *(a2 + 8));
      }

      else
      {
        *v19 = *a2;
        v20 = *(a2 + 16);
      }

      *v27 = *v21;
      v28 = v22;
      v21[0] = 0;
      v21[1] = 0;
      v22 = 0;
      *buf = v17;
      v30 = v18;
      if (SHIBYTE(v20) < 0)
      {
        sub_100005F2C(&v31, v19[0], v19[1]);
      }

      else
      {
        v31 = *v19;
        v32 = v20;
      }

      v33 = 0;
      operator new();
    }
  }
}

void sub_1004383C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  v41 = v38[3];
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  operator delete(v38);
  sub_100260030(v39 - 144);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  sub_100260030(&a9);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a25)
  {
    sub_100004A34(a25);
  }

  if (a23)
  {
    sub_100004A34(a23);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1004384A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 8))
  {
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1017703C0();
    return 0;
  }

  if (!a4)
  {
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1017704F8();
    return 0;
  }

  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  sub_100737C00(v13, a2);
  if (SHIBYTE(v14) < 0)
  {
    sub_100005F2C(v10, v13[0], v13[1]);
  }

  else
  {
    *v10 = *v13;
    v11 = v14;
  }

  if (SHIBYTE(v11) < 0)
  {
    sub_100005F2C(__dst, v10[0], v10[1]);
  }

  else
  {
    *__dst = *v10;
    v17 = v11;
  }

  v15 = 0;
  if (SHIBYTE(v17) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v19 = v17;
  }

  v20 = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = v15;
    v15 = v20;
    v21 = v8;
    sub_100005978(&v21);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = v15;
  v12 = v15;
  v15 = 0;
  sub_100005978(&v15);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  (*(**(a1 + 8) + 16))(*(a1 + 8), a4, v9, a3, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  (*(**(a1 + 8) + 48))(*(a1 + 8), a3, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100005978(&v12);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  return 1;
}

void sub_1004386E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_100005978(&a22);
  if (a28 < 0)
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

  _Unwind_Resume(a1);
}

void sub_100438764(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 48))(v5, a2, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v8 = 0;
    (*(**(a1 + 8) + 40))(&v9);
    sub_100060DE8(&v8, &v9);
    sub_10000A1EC(&v9);
    if (v8)
    {
      v9 = 0uLL;
      v10 = 0;
      ctu::cf::assign();
      *__p = v9;
      v7 = v10;
      sub_100737B48(__p);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *a3 = 0;
      a3[24] = 0;
    }

    sub_100005978(&v8);
  }

  else
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_1017703C0();
    }

    *a3 = 0;
    a3[24] = 0;
  }
}