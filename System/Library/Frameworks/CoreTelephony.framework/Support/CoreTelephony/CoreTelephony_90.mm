void sub_1005D36F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005D3728(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    return 2;
  }

  v2 = *(a1 + 72);
  v3 = (a1 + 80);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1174405120;
  v25 = sub_1005D5250;
  v26 = &unk_101E690E8;
  sub_10006F264(&__p, a2);
  if (v2 != v3)
  {
    while (1)
    {
      v30 = *(v2 + 8);
      v4 = v2[6];
      v31 = v2[5];
      v32 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v5 = v25(v24, &v30);
      if (v32)
      {
        std::__shared_weak_count::__release_weak(v32);
      }

      if (v5)
      {
        break;
      }

      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
      if (v7 == v3)
      {
        goto LABEL_21;
      }
    }
  }

  if (v2 != v3 && (v10 = v2[6]) != 0 && (v11 = std::__shared_weak_count::lock(v10)) != 0)
  {
    v12 = v11;
    v13 = v2[5];
    if (v13)
    {
      v14 = (*(*v13 + 104))(v2[5]);
      v15 = (*(*v13 + 112))(v13);
      v16 = v14 & 0xFFFFFF00;
      v17 = v15 & 0xFFFFFF00;
      v13 = HIDWORD(v14) & 1;
      v18 = HIDWORD(v15) & 1;
      v19 = v14;
      v20 = v15;
    }

    else
    {
      v17 = 0;
      v20 = 0;
      LODWORD(v18) = 0;
      v19 = 0;
      v16 = 0;
    }

    sub_100004A34(v12);
  }

  else
  {
LABEL_21:
    LODWORD(v13) = 0;
    v17 = 0;
    v20 = 0;
    LODWORD(v18) = 0;
    v19 = 0;
    v16 = 0;
  }

  if (v29 == 1 && v28 < 0)
  {
    operator delete(__p);
  }

  v21 = v16 | v19;
  if ((v16 | v19) < 2)
  {
    v21 = 2;
  }

  if (v13)
  {
    v22 = v21;
  }

  else
  {
    v22 = 2;
  }

  v23 = v20 | v17;
  if (v22 > (v20 | v17))
  {
    v23 = v22;
  }

  if (v18)
  {
    return v23;
  }

  else
  {
    return v22;
  }
}

void sub_1005D3974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  sub_100004A34(v23);
  if (a20 == 1 && a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005D39BC(uint64_t a1, const __CFDictionary *a2, __int128 *a3, int a4)
{
  sub_10006F264(__p, a3);
  v7 = sub_1005D3548(a1, a2, __p, &v12, a4);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_1005D3A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1005D3A64@<D0>(CFStringRef theString@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = @"phone.services.";
  if (CFStringHasPrefix(theString, @"phone.services.") || (v4 = @"assignments.", CFStringHasPrefix(theString, @"assignments.")))
  {
    sub_1005D3AF8(v4, &v6);
    result = *&v6;
    *a2 = v6;
    a2[2] = v7;
  }

  return result;
}

void sub_1005D3AF8(CFStringRef theString@<X1>, void *a2@<X8>)
{
  CFStringGetLength(theString);
  ctu::cf::assign();
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_1005D3BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1005D3C28@<X0>(CFStringRef theString@<X1>, uint64_t a2@<X0>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  theDict = 0;
  v33 = 0;
  HasPrefix = CFStringHasPrefix(theString, @"dev.");
  cf = 0;
  sub_1006160F0(&theString2);
  v9 = sub_1006160B8(theString2, theString);
  cf = v9;
  if (v30)
  {
    sub_100004A34(v30);
    v9 = cf;
  }

  if (!v9)
  {
    if (!a3)
    {
LABEL_20:
      v11 = 1;
      goto LABEL_21;
    }

    if (HasPrefix == 1)
    {
      v27 = a3;
      CFRetain(a3);
    }

    else
    {
      (*(**(a2 + 152) + 64))(&v27);
    }

    sub_100010180(&v28, &v27);
    theString2 = theDict;
    theDict = v28;
LABEL_19:
    v28 = 0;
    sub_10001021C(&theString2);
    sub_10001021C(&v28);
    sub_10000A1EC(&v27);
    goto LABEL_20;
  }

  if (!a3 || (v10 = CFGetTypeID(a3), v10 == CFStringGetTypeID()))
  {
    if (HasPrefix == 1)
    {
      v27 = cf;
      if (cf)
      {
        CFRetain(cf);
      }
    }

    else
    {
      (*(**(a2 + 152) + 64))(&v27);
    }

    sub_100010180(&v28, &v27);
    theString2 = v33;
    v33 = v28;
    goto LABEL_19;
  }

  if (HasPrefix == 1)
  {
    v27 = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  else
  {
    (*(**(a2 + 152) + 64))(&v27);
  }

  sub_100010180(&v28, &v27);
  v16 = v33;
  v33 = v28;
  v28 = 0;
  theString2 = v16;
  sub_10001021C(&theString2);
  sub_10001021C(&v28);
  sub_10000A1EC(&v27);
  if (HasPrefix == 1)
  {
    v27 = a3;
    CFRetain(a3);
  }

  else
  {
    (*(**(a2 + 152) + 64))(&v27);
  }

  sub_100010180(&v28, &v27);
  v17 = theDict;
  theDict = v28;
  v28 = 0;
  theString2 = v17;
  sub_10001021C(&theString2);
  sub_10001021C(&v28);
  sub_10000A1EC(&v27);
  if (CFEqual(cf, a3))
  {
    goto LABEL_28;
  }

  if (*(a2 + 96) != 1)
  {
    goto LABEL_20;
  }

  sub_1005D414C(a2, 0, &theString2);
  v18 = CFStringCompare(theString, theString2, 0);
  sub_100005978(&theString2);
  if (v18 == kCFCompareEqualTo)
  {
    goto LABEL_28;
  }

  sub_1005D4280(a2, 0, &theString2);
  v19 = CFStringCompare(theString, theString2, 0);
  sub_100005978(&theString2);
  v11 = 1;
  if (v19 == kCFCompareEqualTo && v33)
  {
    v12 = theDict;
    if (!theDict)
    {
      goto LABEL_36;
    }

    if (HasPrefix == 1)
    {
      v11 = 0;
      goto LABEL_22;
    }

    if (!CFDictionaryGetValue(theDict, @"hardware"))
    {
      Value = CFDictionaryGetValue(theDict, @"account");
      v22 = Value;
      if (Value)
      {
        v23 = CFGetTypeID(Value);
        if (v23 != CFStringGetTypeID())
        {
          v22 = 0;
        }
      }

      v24 = CFDictionaryGetValue(v33, @"account");
      v25 = v24;
      if (!v24)
      {
        goto LABEL_20;
      }

      v26 = CFGetTypeID(v24);
      if (v26 != CFStringGetTypeID() || !v22 || CFStringCompare(v22, v25, 0))
      {
        goto LABEL_20;
      }
    }

LABEL_28:
    v11 = 0;
  }

LABEL_21:
  v12 = theDict;
  if (!theDict)
  {
LABEL_36:
    v15 = 0;
    goto LABEL_37;
  }

LABEL_22:
  v13 = CFDictionaryGetValue(v12, @"ts");
  LODWORD(theString2) = 0;
  ctu::cf::assign(&theString2, v13, v14);
  v15 = theString2;
LABEL_37:
  *a4 = v11;
  sub_100060E84((a4 + 8), &cf);
  sub_100010024((a4 + 16), &v33);
  sub_100010024((a4 + 24), &theDict);
  *(a4 + 32) = v15;
  sub_10000A1EC(&cf);
  sub_10001021C(&theDict);
  return sub_10001021C(&v33);
}

void sub_1005D40A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  sub_10000A1EC(va);
  sub_10001021C(va1);
  sub_10001021C(va2);
  _Unwind_Resume(a1);
}

const void **sub_1005D414C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, CFStringRef *a3@<X8>)
{
  *a3 = 0;
  if (a2)
  {
    goto LABEL_4;
  }

  if (sub_1005D14F8(a1))
  {
    a2 = sub_1005D14F8(a1);
LABEL_4:
    v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%@", @"dev.", a2);
    v7 = *a3;
    *a3 = v6;
    v14 = v7;
    v8 = &v14;
    return sub_100005978(v8);
  }

  v12 = 0;
  v13 = 0;
  if (ctu::cf::convert_copy(&v13, "device-id-is-not-yet-given", 0x8000100, kCFAllocatorDefault, v5))
  {
    v12 = v13;
    v14 = 0;
    sub_100005978(&v14);
    v10 = v12;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = 0;
  sub_100005978(&v12);
  if (&v11 != a3)
  {
    v14 = *a3;
    *a3 = v10;
    v11 = 0;
    sub_100005978(&v14);
  }

  v8 = &v11;
  return sub_100005978(v8);
}

void sub_1005D4258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100005978(va);
  sub_100005978(v4);
  _Unwind_Resume(a1);
}

const void **sub_1005D4280@<X0>(void *a1@<X0>, uint64_t a2@<X1>, CFStringRef *a3@<X8>)
{
  *a3 = 0;
  if (a2)
  {
    goto LABEL_4;
  }

  if (sub_1005D14F8(a1))
  {
    a2 = sub_1005D14F8(a1);
LABEL_4:
    v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%@", @"device.", a2);
    v7 = *a3;
    *a3 = v6;
    v14 = v7;
    v8 = &v14;
    return sub_100005978(v8);
  }

  v12 = 0;
  v13 = 0;
  if (ctu::cf::convert_copy(&v13, "device-id-is-not-yet-given", 0x8000100, kCFAllocatorDefault, v5))
  {
    v12 = v13;
    v14 = 0;
    sub_100005978(&v14);
    v10 = v12;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = 0;
  sub_100005978(&v12);
  if (&v11 != a3)
  {
    v14 = *a3;
    *a3 = v10;
    v11 = 0;
    sub_100005978(&v14);
  }

  v8 = &v11;
  return sub_100005978(v8);
}

void sub_1005D438C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100005978(va);
  sub_100005978(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D43B4(uint64_t a1, const __CFString *a2)
{
  if (*(a1 + 96) != 1)
  {
    return 1;
  }

  sub_1005D414C(a1, 0, &theString2);
  if (CFStringCompare(a2, theString2, 0) == kCFCompareEqualTo)
  {
    sub_100005978(&theString2);
    return 1;
  }

  sub_1005D4280(a1, 0, &v6);
  v4 = CFStringCompare(a2, v6, 0);
  sub_100005978(&v6);
  sub_100005978(&theString2);
  if (v4 == kCFCompareEqualTo)
  {
    return 1;
  }

  result = CFStringHasPrefix(a2, @"message.");
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_1005D446C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100005978(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

void sub_1005D4494(uint64_t a1, const __CFString *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1005D47D0(a2);
      *&buf[8] = 0;
      *&buf[16] = 0;
      ctu::cf::assign();
      v12 = "update";
      *__p = 0u;
      if (!a6)
      {
        v12 = "new";
      }

      v23 = *&buf[16];
      v13 = __p;
      if ((buf[23] & 0x80u) != 0)
      {
        v13 = __p[0];
      }

      *buf = 136316418;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v25 = v12;
      v26 = 1024;
      *v27 = v11;
      *&v27[4] = 1024;
      *&v27[6] = a3;
      v28 = 2080;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s<<<<<<<  recv %s [%c-%u] : %s", buf, 0x36u);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }
    }

    *buf = off_101E69360;
    *&buf[8] = a1;
    v25 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
  }

  else
  {
    v15 = *(a1 + 40);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a5)
    {
      if (!v16)
      {
        return;
      }

      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v17 = "update";
      if (!a6)
      {
        v17 = "new";
      }

      *__p = *buf;
      v23 = *&buf[16];
      v18 = __p;
      if ((buf[23] & 0x80u) != 0)
      {
        v18 = *buf;
      }

      *buf = 136315906;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v25 = v17;
      v26 = 2080;
      *v27 = v18;
      v19 = "#I %s%s<<<<<<<  recv %s %s but cannot decrypt";
      v20 = v15;
      v21 = 42;
    }

    else
    {
      if (!v16)
      {
        return;
      }

      ctu::cf::assign();
      *__p = 0u;
      v23 = 0;
      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v25 = __p;
      v19 = "#I %s%s<<<<<<<  recv update to remove %s";
      v20 = v15;
      v21 = 32;
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1005D479C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005D47D0(const __CFString *a1)
{
  if (CFStringHasPrefix(a1, @"phone.services."))
  {
    return 67;
  }

  if (CFStringHasPrefix(a1, @"assignments."))
  {
    return 65;
  }

  if (CFStringHasPrefix(a1, @"dev."))
  {
    return 68;
  }

  if (CFStringHasPrefix(a1, @"device."))
  {
    return 100;
  }

  return 63;
}

void sub_1005D4870(uint64_t a1, const __CFString *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v7 = *(a1 + 40);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = sub_1005D47D0(a2);
    ctu::cf::assign();
    *__p = 0u;
    v16 = 0;
    buf = 136316162;
    buf_4 = "";
    buf_12 = 2080;
    buf_14 = "";
    v21 = 1024;
    *v22 = v8;
    *&v22[4] = 1024;
    *&v22[6] = a3;
    v23 = 2080;
    v24 = __p;
    v9 = "#I %s%s<<<<<<<  ignored update [%c-%u] : %s";
    v10 = v7;
    v11 = 44;
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (a5)
    {
      if (!v14)
      {
        return;
      }

      ctu::cf::assign();
      *__p = 0u;
      v16 = 0;
      buf = 136315650;
      buf_4 = "";
      buf_12 = 2080;
      buf_14 = "";
      v21 = 2080;
      *v22 = __p;
      v9 = "#I %s%s<<<<<<<  ignored update %s (cannot decrypt)";
    }

    else
    {
      if (!v14)
      {
        return;
      }

      ctu::cf::assign();
      *__p = 0u;
      v16 = 0;
      buf = 136315650;
      buf_4 = "";
      buf_12 = 2080;
      buf_14 = "";
      v21 = 2080;
      *v22 = __p;
      v9 = "#I %s%s<<<<<<<  ignored update to remove %s";
    }

    v10 = v13;
    v11 = 32;
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &buf, v11);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1005D4AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005D4AE8(uint64_t a1, const __CFString *a2, int a3, uint64_t a4)
{
  v8 = *(a1 + 40);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (v9)
    {
      v10 = sub_1005D47D0(a2);
      ctu::cf::assign();
      *__p = 0u;
      v12 = 0;
      *buf = 136316162;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      v14 = 1024;
      *v15 = v10;
      *&v15[4] = 1024;
      *&v15[6] = a3;
      v16 = 2080;
      v17 = __p;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s>>>>>>> send update [%c-%u] : %s", buf, 0x2Cu);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    *buf = off_101E693E0;
    *&buf[8] = a1;
    *v15 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
  }

  else if (v9)
  {
    ctu::cf::assign();
    *__p = 0u;
    v12 = 0;
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    v14 = 2080;
    *v15 = __p;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s>>>>>>> send update to remove %s", buf, 0x20u);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1005D4D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1005D4D30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 8);
      if (v7)
      {
        (*(*v7 + 16))(__p);
        v8 = v20;
        if ((v20 & 0x80u) == 0)
        {
          v9 = v20;
        }

        else
        {
          v9 = __p[1];
        }

        v10 = *(a1 + 55);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(a1 + 40);
        }

        if (v9 == v10)
        {
          if ((v20 & 0x80u) == 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          v15 = *(a1 + 32);
          v14 = (a1 + 32);
          v13 = v15;
          if (v11 >= 0)
          {
            v16 = v14;
          }

          else
          {
            v16 = v13;
          }

          v17 = memcmp(v12, v16, v9) == 0;
          if ((v8 & 0x80000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v17 = 0;
        if (v20 < 0)
        {
LABEL_21:
          operator delete(__p[0]);
        }
      }

      else
      {
        v17 = 0;
      }

LABEL_22:
      sub_100004A34(v6);
      return v17;
    }
  }

  return 0;
}

const void **sub_1005D4E48(const void **a1)
{
  sub_10001021C(a1 + 3);
  sub_10001021C(a1 + 2);
  sub_10000A1EC(a1 + 1);
  return a1;
}

BOOL sub_1005D4E84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 8);
      if (v7)
      {
        (*(*v7 + 16))(__p);
        v8 = v20;
        if ((v20 & 0x80u) == 0)
        {
          v9 = v20;
        }

        else
        {
          v9 = __p[1];
        }

        v10 = *(a1 + 55);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(a1 + 40);
        }

        if (v9 == v10)
        {
          if ((v20 & 0x80u) == 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          v15 = *(a1 + 32);
          v14 = (a1 + 32);
          v13 = v15;
          if (v11 >= 0)
          {
            v16 = v14;
          }

          else
          {
            v16 = v13;
          }

          v17 = memcmp(v12, v16, v9) == 0;
          if ((v8 & 0x80000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v17 = 0;
        if (v20 < 0)
        {
LABEL_21:
          operator delete(__p[0]);
        }
      }

      else
      {
        v17 = 0;
      }

LABEL_22:
      sub_100004A34(v6);
      return v17;
    }
  }

  return 0;
}

uint64_t sub_1005D4F9C(uint64_t a1)
{
  (*(*a1 + 40))(&v13);
  sub_100010180(&v14, &v13);
  v2 = (a1 + 200);
  if ((a1 + 200) != &v14)
  {
    v3 = *v2;
    *v2 = v14;
    v14 = 0;
    v15 = v3;
    sub_10001021C(&v15);
  }

  sub_10001021C(&v14);
  sub_1000296E0(&v13);
  v4 = *(a1 + 72);
  if (v4 != (a1 + 80))
  {
    do
    {
      v5 = v4[6];
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = v6;
          v8 = v4[5];
          if (v8)
          {
            (*(*v8 + 56))(v8);
          }

          sub_100004A34(v7);
        }
      }

      v9 = v4[1];
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
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != (a1 + 80));
  }

  return (*(*a1 + 88))(a1, 0);
}

void sub_1005D50F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

const void **sub_1005D5118@<X0>(CFDictionaryRef theDict@<X1>, const void **result@<X0>, __int128 *a3@<X2>, __CFDictionary **a4@<X8>)
{
  *a4 = 0;
  if (theDict)
  {
    v5 = result;
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
    *a4 = MutableCopy;
    v13 = 0;
    sub_1000296E0(&v13);
    sub_10006F264(__p, a3);
    v8 = sub_1005D3728(v5, __p);
    v9 = CFStringCreateWithFormat(0, 0, @"%u.%u", v8, *"\b");
    v13 = v9;
    if (v12 == 1 && v11 < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionarySetValue(MutableCopy, @"ver", v9);
    return sub_100005978(&v13);
  }

  return result;
}

void sub_1005D5204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_100005978((v19 - 40));
  sub_1000296E0(v18);
  _Unwind_Resume(a1);
}

BOOL sub_1005D5250(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 8);
      if (!v7)
      {
        v14 = 0;
        goto LABEL_23;
      }

      (*(*v7 + 16))(__p);
      v8 = v17;
      if (*(a1 + 56) != 1)
      {
        goto LABEL_20;
      }

      if ((v17 & 0x80u) == 0)
      {
        v9 = v17;
      }

      else
      {
        v9 = __p[1];
      }

      v10 = *(a1 + 55);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a1 + 40);
      }

      if (v9 == v10)
      {
        if ((v17 & 0x80u) == 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if (v11 >= 0)
        {
          v13 = (a1 + 32);
        }

        else
        {
          v13 = *(a1 + 32);
        }

        v14 = memcmp(v12, v13, v9) == 0;
        if ((v8 & 0x80) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
LABEL_20:
        v14 = 0;
        if ((v17 & 0x80) == 0)
        {
LABEL_23:
          sub_100004A34(v6);
          return v14;
        }
      }

      operator delete(__p[0]);
      goto LABEL_23;
    }
  }

  return 0;
}

void sub_1005D5388(uint64_t a1)
{
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_1005D53A8(uint64_t a1@<X0>, CFDictionaryRef *a2@<X1>, CFDictionaryRef *a3@<X8>)
{
  if (*(a1 + 208))
  {
    Count = CFDictionaryGetCount(*a2);
    if (Count)
    {
      keys = 0;
      v14 = 0;
      v15 = 0;
      sub_100222418(&keys, Count);
      CFDictionaryGetKeysAndValues(*a2, keys, 0);
      v7 = keys;
      v8 = v14;
      if (keys != v14)
      {
        do
        {
          v9 = *(a1 + 208);
          v16 = 0uLL;
          v17 = 0;
          ctu::cf::assign();
          *__p = v16;
          v12 = v17;
          v10 = sub_100007A6C(v9 + 144, __p);
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p[0]);
          }

          if (*(a1 + 208) + 152 == v10)
          {
            CFDictionaryRemoveValue(*a2, *v7);
          }

          ++v7;
        }

        while (v7 != v8);
        v7 = keys;
      }

      if (v7)
      {
        v14 = v7;
        operator delete(v7);
      }
    }
  }

  *a3 = *a2;
  *a2 = 0;
}

void sub_1005D54BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1005D550C(uint64_t a1, unsigned int a2, CFDictionaryRef theDict, unsigned int a4, __int128 *a5, int a6, int a7)
{
  v62 = 0;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 1));
  }

  else
  {
    *__p = *a5;
    v60 = *(a5 + 2);
  }

  v61 = 1;
  sub_1005D5118(theDict, a1, __p, &v62);
  if (v61 == 1 && SHIBYTE(v60) < 0)
  {
    operator delete(__p[0]);
  }

  value = 0;
  v58 = 0;
  if (a2 < 2)
  {
    sub_1005D60A4(a1, a2, a5, &v64);
    *&valuePtr = v58;
    v58 = v64;
    *&v64 = 0;
    sub_100005978(&valuePtr);
    sub_100005978(&v64);
    v14 = v62;
    if (v62)
    {
      *&v64 = 0;
      *&valuePtr = a4;
      v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
      if (v15)
      {
        *&v64 = v15;
        *&valuePtr = 0;
        sub_100029A48(&valuePtr);
        v16 = v64;
      }

      else
      {
        v16 = 0;
      }

      v69 = v16;
      *&v64 = 0;
      sub_100029A48(&v64);
      CFDictionarySetValue(v14, @"ts", v16);
      sub_100029A48(&v69);
      (*(**(a1 + 152) + 56))(&v64);
      *&valuePtr = value;
      value = v64;
      *&v64 = 0;
      sub_10000A1EC(&valuePtr);
      sub_10000A1EC(&v64);
    }

    sub_1005D615C(a1, v58, a4, value, a6, a7);
    goto LABEL_19;
  }

  if (a2 != 2)
  {
    goto LABEL_19;
  }

  sub_1005D414C(a1, 0, &v64);
  *&valuePtr = v58;
  v58 = v64;
  *&v64 = 0;
  sub_100005978(&valuePtr);
  sub_100005978(&v64);
  theDicta = 0;
  sub_1006160F0(&valuePtr);
  *&v64 = sub_1006160B8(valuePtr, v58);
  sub_100138C38(&theDicta, &v64);
  if (*(&valuePtr + 1))
  {
    sub_100004A34(*(&valuePtr + 1));
  }

  v55 = 0;
  if (theDicta)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDicta);
LABEL_21:
    v19 = v55;
    v55 = MutableCopy;
    *&valuePtr = v19;
    sub_1000296E0(&valuePtr);
    goto LABEL_22;
  }

  MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (MutableCopy)
  {
    goto LABEL_21;
  }

LABEL_22:
  v20 = CFDictionaryGetValue(v55, @"accounts");
  v21 = v20;
  if (v20 && (v22 = CFGetTypeID(v20), v22 == CFDictionaryGetTypeID()))
  {
    cf = 0;
    Mutable = CFDictionaryCreateMutableCopy(0, 0, v21);
  }

  else
  {
    cf = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      goto LABEL_27;
    }
  }

  v24 = cf;
  cf = Mutable;
  *&valuePtr = v24;
  sub_1000296E0(&valuePtr);
LABEL_27:
  if (v62)
  {
    (*(**(a1 + 152) + 56))(&v64);
    *&valuePtr = value;
    value = v64;
    *&v64 = 0;
    sub_10000A1EC(&valuePtr);
    sub_10000A1EC(&v64);
    v25 = cf;
    if (*(a5 + 23) < 0)
    {
      sub_100005F2C(&__dst, *a5, *(a5 + 1));
    }

    else
    {
      __dst = *a5;
      v52 = *(a5 + 2);
    }

    if (SHIBYTE(v52) < 0)
    {
      sub_100005F2C(&v64, __dst, *(&__dst + 1));
    }

    else
    {
      v64 = __dst;
      v65 = v52;
    }

    v63 = 0;
    if (SHIBYTE(v65) < 0)
    {
      sub_100005F2C(&valuePtr, v64, *(&v64 + 1));
    }

    else
    {
      valuePtr = v64;
      v67 = v65;
    }

    v68 = 0;
    v27 = kCFAllocatorDefault;
    if (ctu::cf::convert_copy())
    {
      v28 = v63;
      v63 = v68;
      v69 = v28;
      sub_100005978(&v69);
    }

    if (SHIBYTE(v67) < 0)
    {
      operator delete(valuePtr);
    }

    key = v63;
    v63 = 0;
    sub_100005978(&v63);
    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64);
    }

    CFDictionarySetValue(v25, key, value);
    sub_100005978(&key);
    if ((SHIBYTE(v52) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    v29 = __dst;
  }

  else
  {
    v26 = cf;
    if (*(a5 + 23) < 0)
    {
      sub_100005F2C(v49, *a5, *(a5 + 1));
    }

    else
    {
      *v49 = *a5;
      v50 = *(a5 + 2);
    }

    if (SHIBYTE(v50) < 0)
    {
      sub_100005F2C(&v64, v49[0], v49[1]);
    }

    else
    {
      v64 = *v49;
      v65 = v50;
    }

    v63 = 0;
    if (SHIBYTE(v65) < 0)
    {
      sub_100005F2C(&valuePtr, v64, *(&v64 + 1));
    }

    else
    {
      valuePtr = v64;
      v67 = v65;
    }

    v68 = 0;
    v27 = kCFAllocatorDefault;
    if (ctu::cf::convert_copy())
    {
      v30 = v63;
      v63 = v68;
      v69 = v30;
      sub_100005978(&v69);
    }

    if (SHIBYTE(v67) < 0)
    {
      operator delete(valuePtr);
    }

    key = v63;
    v63 = 0;
    sub_100005978(&v63);
    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64);
    }

    CFDictionaryRemoveValue(v26, key);
    sub_100005978(&key);
    if ((SHIBYTE(v50) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    v29 = v49[0];
  }

  operator delete(v29);
LABEL_63:
  v47 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_1005D53A8(a1, &v47, &v48);
  sub_1000296E0(&v48);
  sub_1000296E0(&v47);
  if (CFDictionaryGetCount(cf))
  {
    CFDictionarySetValue(v55, @"accounts", cf);
  }

  else
  {
    v31 = v55;
    v55 = 0;
    *&valuePtr = v31;
    sub_1000296E0(&valuePtr);
  }

  v32 = v55;
  if (v55)
  {
    *&v64 = 0;
    *&valuePtr = a4;
    v33 = CFNumberCreate(v27, kCFNumberLongLongType, &valuePtr);
    if (v33)
    {
      v34 = v64;
      *&v64 = v33;
      *&valuePtr = v34;
      sub_100029A48(&valuePtr);
    }

    v69 = v64;
    *&v64 = 0;
    sub_100029A48(&v64);
    CFDictionarySetValue(v32, @"ts", v69);
    sub_100029A48(&v69);
    v35 = v55;
  }

  else
  {
    v35 = 0;
  }

  sub_1005D615C(a1, v58, a4, v35, a6, 0);
  sub_1000296E0(&cf);
  sub_1000296E0(&v55);
  sub_10001021C(&theDicta);
  v36 = *(a1 + 208);
  if (v36)
  {
    v37 = sub_100007A6C(v36 + 144, a5);
    if (*(a1 + 208) + 152 != v37)
    {
      sub_1005D4280(a1, 0, &v64);
      *&valuePtr = v58;
      v58 = v64;
      *&v64 = 0;
      sub_100005978(&valuePtr);
      sub_100005978(&v64);
      v38 = value;
      value = 0;
      *&valuePtr = v38;
      sub_10000A1EC(&valuePtr);
      if (*(*(v37 + 56) + 76) >= 7u)
      {
        sub_1006160F0(&valuePtr);
        v42 = sub_100615F34(valuePtr, v58, 1);
        v68 = 0;
        v69 = v42;
        *&v64 = 0;
        sub_100138C38(&v64, &v69);
        if (v64)
        {
          sub_1000676D4(&v68, &v64);
        }

        sub_10001021C(&v64);
        v43 = v68;
        v63 = v68;
        v68 = 0;
        sub_10001021C(&v68);
        if (*(&valuePtr + 1))
        {
          sub_100004A34(*(&valuePtr + 1));
        }

        if (v43)
        {
          v44 = CFDictionaryGetValue(v43, @"account");
          if (v44)
          {
            v45 = CFGetTypeID(v44);
            if (v45 == CFStringGetTypeID())
            {
              valuePtr = 0uLL;
              v67 = 0;
              ctu::cf::assign();
              v64 = valuePtr;
              v65 = v67;
              v46 = sub_100071DF8(a5, &v64);
              if (SHIBYTE(v65) < 0)
              {
                operator delete(v64);
              }

              if (v46)
              {
                sub_1005D615C(a1, v58, 0, 0, 1, 1);
              }
            }
          }
        }

        sub_10001021C(&v63);
      }

      else
      {
        v39 = v62;
        if (v62)
        {
          *&v64 = 0;
          *&valuePtr = a4;
          v40 = CFNumberCreate(v27, kCFNumberLongLongType, &valuePtr);
          if (v40)
          {
            *&v64 = v40;
            *&valuePtr = 0;
            sub_100029A48(&valuePtr);
            v41 = v64;
          }

          else
          {
            v41 = 0;
          }

          v69 = v41;
          *&v64 = 0;
          sub_100029A48(&v64);
          CFDictionarySetValue(v39, @"ts", v41);
          sub_100029A48(&v69);
          (*(**(a1 + 152) + 56))(&v64);
          *&valuePtr = value;
          value = v64;
          *&v64 = 0;
          sub_10000A1EC(&valuePtr);
          sub_10000A1EC(&v64);
        }

        sub_1005D615C(a1, v58, a4, value, a6, a7);
      }
    }
  }

LABEL_19:
  sub_1005D626C(a1);
  sub_10000A1EC(&value);
  sub_100005978(&v58);
  return sub_1000296E0(&v62);
}

void sub_1005D5EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37, int a38, const void *a39, const void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, const void *a45, const void *a46)
{
  if (*(v46 - 105) < 0)
  {
    operator delete(*(v46 - 128));
  }

  sub_10001021C(&a46);
  sub_10000A1EC(&a39);
  sub_100005978(&a40);
  sub_1000296E0(&a45);
  _Unwind_Resume(a1);
}

void sub_1005D6080(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a31 == 1 && a30 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1005D6078);
}

CFStringRef sub_1005D60A4@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, CFStringRef *a4@<X8>)
{
  if (a2 == 2)
  {
    v7 = sub_1005D14F8(a1);

    return sub_1005D414C(a1, v7, a4);
  }

  else
  {
    if (a2 == 1)
    {
      v5 = off_101E438B8;
    }

    else
    {
      v5 = off_101E438B0;
    }

    v9 = *v5;
    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%s", v9, v10);
    *a4 = result;
  }

  return result;
}

void sub_1005D615C(uint64_t a1, const __CFString *a2, int a3, const void *a4, int a5, int a6)
{
  sub_1006160F0(&v12);
  sub_100616054(v12, a2, a4);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (a5)
  {
    sub_1005D4AE8(a1, a2, a3, a4);
    (*(**(a1 + 144) + 16))(*(a1 + 144), a2, a4);
    if (a6)
    {
      (*(**(a1 + 144) + 24))(*(a1 + 144));
    }
  }
}

void sub_1005D6240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005D626C(uint64_t result)
{
  if ((*(result + 224) & 1) == 0)
  {
    *(result + 224) = 1;
    v1[0] = 0;
    v1[1] = 0;
    sub_100004AA0(v1, (result + 8));
    operator new();
  }

  return result;
}

void sub_1005D6358(uint64_t a1)
{
  v2 = *(a1 + 152);
  v3 = *(a1 + 160);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 56))(v2);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_1005D63D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005D63F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 152);
  v6 = *(a1 + 160);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    a4 = *a4;
  }

  (*(*v5 + 64))(v5, a2, a3, a4);
  if (v6)
  {

    sub_100004A34(v6);
  }
}

void sub_1005D6480(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005D6498(CFDictionaryRef theDict@<X1>, uint64_t a2@<X8>)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"ts");
    v8 = 0;
    ctu::cf::assign(&v8, Value, v5);
    v6 = v8;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    v10 = MutableCopy;
    CFDictionaryRemoveValue(MutableCopy, @"ts");
    v8 = v6;
    v9 = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    *a2 = v6;
    sub_100010180((a2 + 8), &v9);
    sub_1000296E0(&v9);
    sub_1000296E0(&v10);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

void sub_1005D656C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000296E0((v4 + 8));
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

BOOL sub_1005D6590(uint64_t a1, int a2, uint64_t *a3)
{
  v17 = 0;
  if (a2 == 1)
  {
    sub_1006160F0(&v15);
    v8 = v15;
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%s", @"assignments.", v9);
    v7 = sub_1006160B8(v8, v14);
    goto LABEL_11;
  }

  if (!a2)
  {
    sub_1006160F0(&v15);
    v5 = v15;
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%s", @"phone.services.", v6);
    v7 = sub_1006160B8(v5, v14);
LABEL_11:
    v10 = v17;
    v17 = v7;
    v18 = v10;
    sub_10000A1EC(&v18);
    sub_100005978(&v14);
    if (v16)
    {
      sub_100004A34(v16);
    }

    goto LABEL_15;
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10177570C(a2, v11);
  }

LABEL_15:
  v12 = v17 != 0;
  sub_10000A1EC(&v17);
  return v12;
}

void sub_1005D66E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_100005978(&a12);
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_10000A1EC((v14 - 32));
  _Unwind_Resume(a1);
}

CFStringRef sub_1005D6728@<X0>(uint64_t *a1@<X1>, CFStringRef *a2@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%s", @"phone.services.", v3);
  *a2 = result;
  return result;
}

CFStringRef sub_1005D6790@<X0>(uint64_t *a1@<X1>, CFStringRef *a2@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%s", @"assignments.", v3);
  *a2 = result;
  return result;
}

void sub_1005D67F8(void *a1@<X0>, int a2@<W1>, void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      sub_1006160F0(buf);
      v9 = *buf;
      if (*(a3 + 23) >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      v57 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%s", @"assignments.", v10);
      v61 = 0;
      v55[0] = sub_100615F34(v9, v57, 1);
      __p[0] = 0;
      sub_100138C38(__p, v55);
      if (__p[0])
      {
        sub_1000676D4(&v61, __p);
      }

      goto LABEL_15;
    }

    if (!a2)
    {
      sub_1006160F0(buf);
      v7 = *buf;
      if (*(a3 + 23) >= 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = *a3;
      }

      v57 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%s", @"phone.services.", v8);
      v61 = 0;
      v55[0] = sub_100615F34(v7, v57, 1);
      __p[0] = 0;
      sub_100138C38(__p, v55);
      if (__p[0])
      {
        sub_1000676D4(&v61, __p);
      }

LABEL_15:
      sub_10001021C(__p);
      v11 = v61;
      v60 = v61;
      v61 = 0;
      sub_10001021C(&v61);
      sub_1005D6498(v11, a5);
      sub_10001021C(&v60);
      sub_100005978(&v57);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      return;
    }

LABEL_98:
    *buf = 0;
    __p[0] = 0;
    *a5 = 0;
    *(a5 + 8) = 0;
    *&buf[8] = 0;
    sub_10001021C(&buf[8]);
    sub_10001021C(__p);
    return;
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *v55 = 0u;
  v56 = 0;
  theDict = 0;
  sub_1006160F0(buf);
  v14 = *buf;
  sub_1005D414C(a1, a4, &v61);
  __p[0] = sub_1006160B8(v14, v61);
  sub_100138C38(&theDict, __p);
  sub_100005978(&v61);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"ts");
    v17 = Value;
    if (Value)
    {
      v18 = CFGetTypeID(Value);
      v19 = v18 == CFNumberGetTypeID() ? v17 : 0;
    }

    else
    {
      v19 = 0;
    }

    *buf = 0;
    ctu::cf::assign(buf, v19, v16);
    v20 = *buf;
    v21 = CFDictionaryGetValue(theDict, @"accounts");
    v22 = v21;
    if (v21)
    {
      v23 = CFGetTypeID(v21);
      if (v23 == CFDictionaryGetTypeID())
      {
        if (*(a3 + 23) < 0)
        {
          sub_100005F2C(__dst, *a3, a3[1]);
        }

        else
        {
          *__dst = *a3;
          v52 = a3[2];
        }

        if (SHIBYTE(v52) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v59 = v52;
        }

        v57 = 0;
        if (SHIBYTE(v59) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v59;
        }

        v60 = 0;
        if (ctu::cf::convert_copy())
        {
          v24 = v57;
          v57 = v60;
          v61 = v24;
          sub_100005978(&v61);
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        key = v57;
        v57 = 0;
        sub_100005978(&v57);
        if (SHIBYTE(v59) < 0)
        {
          operator delete(__p[0]);
        }

        v25 = CFDictionaryGetValue(v22, key);
        sub_100005978(&key);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v25)
        {
          v26 = a1[5];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a3 + 23) >= 0)
            {
              v27 = a3;
            }

            else
            {
              v27 = *a3;
            }

            v28 = v55;
            if (v56 < 0)
            {
              v28 = v55[0];
            }

            *buf = 136315906;
            *&buf[4] = "";
            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2080;
            v63 = v27;
            v64 = 2080;
            v65 = v28;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sfound account %s in section 'D' of device %s", buf, 0x2Au);
          }

          v60 = 0;
          sub_1005D414C(a1, a4, &v57);
          sub_1005D63F0(a1, v57, v25, a3);
          __p[0] = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          v61 = 0;
          *buf = 0;
          sub_100010180(buf, __p);
          if (*buf)
          {
            sub_1000676D4(&v61, buf);
          }

          sub_10001021C(buf);
          v60 = v61;
          v61 = 0;
          sub_10001021C(&v61);
          sub_10000A1EC(__p);
          sub_10000A1EC(&cf);
          sub_100005978(&v57);
          if (v60)
          {
            *a5 = v20;
            sub_100010024((a5 + 8), &v60);
            sub_10001021C(&v60);
LABEL_93:
            v47 = 0;
            goto LABEL_95;
          }

          v29 = a1[5];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            if (*(a3 + 23) >= 0)
            {
              v48 = a3;
            }

            else
            {
              v48 = *a3;
            }

            v49 = v55;
            if (v56 < 0)
            {
              v49 = v55[0];
            }

            *buf = 136315906;
            *&buf[4] = "";
            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2080;
            v63 = v48;
            v64 = 2080;
            v65 = v49;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "#E %s%sunable to decrypt account %s in section 'D' of device %s", buf, 0x2Au);
          }

          sub_10001021C(&v60);
        }
      }
    }
  }

  sub_1006160F0(buf);
  v30 = *buf;
  sub_1005D4280(a1, a4, &v60);
  v61 = sub_100615F34(v30, v60, 1);
  __p[0] = 0;
  sub_100138C38(__p, &v61);
  v31 = theDict;
  theDict = __p[0];
  __p[0] = v31;
  sub_10001021C(__p);
  sub_100005978(&v60);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (theDict)
  {
    v32 = CFDictionaryGetValue(theDict, @"account");
    if (v32)
    {
      v33 = CFGetTypeID(v32);
      if (v33 == CFStringGetTypeID())
      {
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        v59 = *&buf[16];
        *__p = *buf;
        v34 = *(a3 + 23);
        if (v34 >= 0)
        {
          v35 = *(a3 + 23);
        }

        else
        {
          v35 = a3[1];
        }

        v36 = HIBYTE(v59);
        v37 = SHIBYTE(v59);
        if (SHIBYTE(v59) < 0)
        {
          v36 = __p[1];
        }

        if (v35 == v36)
        {
          if (v34 >= 0)
          {
            v38 = a3;
          }

          else
          {
            v38 = *a3;
          }

          if (SHIBYTE(v59) >= 0)
          {
            v39 = __p;
          }

          else
          {
            v39 = __p[0];
          }

          v40 = memcmp(v38, v39, v35) == 0;
        }

        else
        {
          v40 = 0;
        }

        if (v37 < 0)
        {
          operator delete(__p[0]);
        }

        if (v40)
        {
          v41 = a1[5];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = v55;
            if (v56 < 0)
            {
              v42 = v55[0];
            }

            if (*(a3 + 23) >= 0)
            {
              v43 = a3;
            }

            else
            {
              v43 = *a3;
            }

            *buf = 136315906;
            *&buf[4] = "";
            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2080;
            v63 = v42;
            v64 = 2080;
            v65 = v43;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%sfound legacy 'd' for device %s account %s", buf, 0x2Au);
          }

          sub_1006160F0(buf);
          v44 = *buf;
          sub_1005D4280(a1, a4, &key);
          v45 = sub_100615F34(v44, key, 1);
          v60 = 0;
          v61 = v45;
          __p[0] = 0;
          sub_100138C38(__p, &v61);
          if (__p[0])
          {
            sub_1000676D4(&v60, __p);
          }

          sub_10001021C(__p);
          v46 = v60;
          v57 = v60;
          v60 = 0;
          sub_10001021C(&v60);
          sub_1005D6498(v46, a5);
          sub_10001021C(&v57);
          sub_100005978(&key);
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          goto LABEL_93;
        }
      }
    }
  }

  v47 = 1;
LABEL_95:
  sub_10001021C(&theDict);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55[0]);
  }

  if (v47)
  {
    goto LABEL_98;
  }
}

void sub_1005D70CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, int a21, const void *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, const void *a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, int a38, __int16 a39, char a40, char a41)
{
  sub_100005978(&a29);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  sub_10001021C(&a22);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void sub_1005D72A4(CFStringRef theString@<X4>, void *a2@<X0>, unsigned int a3@<W1>, uint64_t a4@<X2>, uint64_t a5@<X3>, const __CFDictionary *a6@<X5>, uint64_t a7@<X8>)
{
  if (!a6)
  {
    goto LABEL_72;
  }

  if (a3 < 2)
  {
    sub_1005D60A4(a2, a3, a4, theString2);
    v12 = CFStringCompare(theString, theString2[0], 0);
    sub_100005978(theString2);
    if (v12 == kCFCompareEqualTo)
    {
      sub_1005D6498(a6, a7);
      return;
    }

    goto LABEL_72;
  }

  if (a3 != 2)
  {
    goto LABEL_72;
  }

  if (a5)
  {
    sub_1005D4280(a2, a5, theString2);
    v14 = CFStringCompare(theString, theString2[0], 0);
    sub_100005978(theString2);
    if (v14)
    {
      sub_1005D414C(a2, a5, theString2);
      v15 = CFStringCompare(theString, theString2[0], 0);
      sub_100005978(theString2);
      if (v15 == kCFCompareEqualTo)
      {
        goto LABEL_16;
      }

LABEL_72:
      LODWORD(theString2[0]) = 0;
      __p[0] = 0;
      *a7 = 0;
      *(a7 + 8) = 0;
      theString2[1] = 0;
      sub_10001021C(&theString2[1]);
      v39 = __p;
      goto LABEL_73;
    }

LABEL_11:
    Value = CFDictionaryGetValue(a6, @"account");
    v17 = Value;
    if (Value)
    {
      v18 = CFGetTypeID(Value);
      if (v18 == CFStringGetTypeID())
      {
        if (*(a4 + 23) < 0)
        {
          sub_100005F2C(__dst, *a4, *(a4 + 8));
        }

        else
        {
          *__dst = *a4;
          v51 = *(a4 + 16);
        }

        if (SHIBYTE(v51) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v55 = v51;
        }

        v53 = 0;
        if (SHIBYTE(v55) < 0)
        {
          sub_100005F2C(theString2, __p[0], __p[1]);
        }

        else
        {
          *theString2 = *__p;
          theString2[2] = v55;
        }

        v56 = 0;
        if (ctu::cf::convert_copy())
        {
          v28 = v53;
          v53 = v56;
          v45[0] = v28;
          sub_100005978(v45);
        }

        if (SHIBYTE(theString2[2]) < 0)
        {
          operator delete(theString2[0]);
        }

        v29 = v53;
        key = v53;
        v53 = 0;
        sub_100005978(&v53);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(__p[0]);
        }

        v30 = CFStringCompare(v17, v29, 0);
        sub_100005978(&key);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v30 == kCFCompareEqualTo)
        {
          sub_1005D6498(a6, a7);
          return;
        }
      }
    }

    goto LABEL_72;
  }

  if (CFStringHasPrefix(theString, @"device."))
  {
    goto LABEL_11;
  }

  if (!CFStringHasPrefix(theString, @"dev."))
  {
    goto LABEL_72;
  }

LABEL_16:
  v19 = CFDictionaryGetValue(a6, @"ts");
  v21 = v19;
  if (v19)
  {
    v22 = CFGetTypeID(v19);
    if (v22 == CFNumberGetTypeID())
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

  LODWORD(theString2[0]) = 0;
  ctu::cf::assign(theString2, v23, v20);
  v24 = theString2[0];
  v25 = CFDictionaryGetValue(a6, @"accounts");
  v26 = v25;
  if (!v25)
  {
    goto LABEL_72;
  }

  v27 = CFGetTypeID(v25);
  if (v27 != CFDictionaryGetTypeID())
  {
    goto LABEL_72;
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(v48, *a4, *(a4 + 8));
  }

  else
  {
    *v48 = *a4;
    v49 = *(a4 + 16);
  }

  if (SHIBYTE(v49) < 0)
  {
    sub_100005F2C(__p, v48[0], v48[1]);
  }

  else
  {
    *__p = *v48;
    v55 = v49;
  }

  v53 = 0;
  if (SHIBYTE(v55) < 0)
  {
    sub_100005F2C(theString2, __p[0], __p[1]);
  }

  else
  {
    *theString2 = *__p;
    theString2[2] = v55;
  }

  v56 = 0;
  if (ctu::cf::convert_copy())
  {
    v31 = v53;
    v53 = v56;
    v45[0] = v31;
    sub_100005978(v45);
  }

  if (SHIBYTE(theString2[2]) < 0)
  {
    operator delete(theString2[0]);
  }

  key = v53;
  v53 = 0;
  sub_100005978(&v53);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

  v32 = CFDictionaryGetValue(v26, key);
  sub_100005978(&key);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48[0]);
  }

  if (!v32)
  {
    goto LABEL_72;
  }

  v33 = a2[5];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = *(a4 + 23);
    v35 = *a4;
    memset(theString2, 0, sizeof(theString2));
    ctu::cf::assign();
    if (v34 >= 0)
    {
      v36 = a4;
    }

    else
    {
      v36 = v35;
    }

    *__p = *theString2;
    v55 = theString2[2];
    v37 = __p;
    if (SHIBYTE(theString2[2]) < 0)
    {
      v37 = theString2[0];
    }

    LODWORD(theString2[0]) = 136315906;
    *(theString2 + 4) = "";
    WORD2(theString2[1]) = 2080;
    *(&theString2[1] + 6) = "";
    HIWORD(theString2[2]) = 2080;
    v58 = v36;
    v59 = 2080;
    v60 = v37;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%sfound account %s in section 'D' %s", theString2, 0x2Au);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_1005D63F0(a2, theString, v32, a4);
  sub_100060E84(__p, &v47);
  v45[0] = 0;
  theString2[0] = 0;
  sub_100010180(theString2, __p);
  if (theString2[0])
  {
    sub_1000676D4(v45, theString2);
  }

  sub_10001021C(theString2);
  v38 = v45[0];
  v56 = v45[0];
  v45[0] = 0;
  sub_10001021C(v45);
  sub_10000A1EC(__p);
  sub_10000A1EC(&v47);
  if (!v38)
  {
    v40 = a2[5];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = *(a4 + 23);
      v42 = *a4;
      __p[0] = 0;
      __p[1] = 0;
      v55 = 0;
      ctu::cf::assign();
      if (v41 >= 0)
      {
        v43 = a4;
      }

      else
      {
        v43 = v42;
      }

      *v45 = *__p;
      v46 = v55;
      v44 = v45;
      if (SHIBYTE(v55) < 0)
      {
        v44 = __p[0];
      }

      LODWORD(theString2[0]) = 136315906;
      *(theString2 + 4) = "";
      WORD2(theString2[1]) = 2080;
      *(&theString2[1] + 6) = "";
      HIWORD(theString2[2]) = 2080;
      v58 = v43;
      v59 = 2080;
      v60 = v44;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "#E %s%sunable to decrypt account %s in section 'D' %s", theString2, 0x2Au);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(v45[0]);
      }
    }

    sub_10001021C(&v56);
    goto LABEL_72;
  }

  *a7 = v24;
  sub_100010024((a7 + 8), &v56);
  v39 = &v56;
LABEL_73:
  sub_10001021C(v39);
}

void sub_1005D795C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, const void *a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a38);
  _Unwind_Resume(a1);
}

CFStringRef sub_1005D7A90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, CFStringRef *a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%s", a1, v4);
  *a3 = result;
  return result;
}

void sub_1005D7AFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  sub_1005D3AF8(@"phone.services.", v27);
  if (SHIBYTE(v28) < 0)
  {
    if (!a4 || !v27[1])
    {
      goto LABEL_41;
    }

    *type = 0;
  }

  else
  {
    if (!a4 || !HIBYTE(v28))
    {
      goto LABEL_41;
    }

    *type = 0;
  }

  (*(**(a1 + 152) + 64))(&cf);
  *&v29 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  __p[0] = 0;
  *buf = 0;
  sub_100010180(buf, &v29);
  if (*buf)
  {
    sub_1000676D4(__p, buf);
  }

  sub_10001021C(buf);
  *type = __p[0];
  __p[0] = 0;
  sub_10001021C(__p);
  sub_10000A1EC(&v29);
  sub_10000A1EC(&cf);
  if (*type)
  {
    v23 = 0;
    theDict = 0;
    sub_1005D6498(*type, &v23);
    v22 = 0;
    v7 = theDict;
    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(__dst, v27[0], v27[1]);
    }

    else
    {
      *__dst = *v27;
      v20 = v28;
    }

    v21 = 1;
    v10 = sub_1005D3548(a1, v7, __dst, &v22, 0);
    if (v21 == 1 && SHIBYTE(v20) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v10)
    {
      Value = CFDictionaryGetValue(theDict, @"primaryDeviceId");
      if (Value)
      {
        v12 = CFGetTypeID(Value);
        if (v12 == CFStringGetTypeID())
        {
          operator new();
        }
      }

      v15 = *(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 0uLL;
        v30 = 0;
        ctu::cf::assign();
        *__p = v29;
        v18 = v30;
        v16 = __p;
        if (v30 < 0)
        {
          v16 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "";
        v32 = 2080;
        v33 = "";
        v34 = 2080;
        v35 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: primary device ID is missing in config - probably old format - skipped", buf, 0x20u);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100005308((*a2 + 120), v27);
    }

    else
    {
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 0uLL;
        v30 = 0;
        ctu::cf::assign();
        *__p = v29;
        v18 = v30;
        v14 = __p;
        if (v30 < 0)
        {
          v14 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "";
        v32 = 2080;
        v33 = "";
        v34 = 2080;
        v35 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: schema version mismatch - account skipped", buf, 0x20u);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sub_10001021C(&theDict);
    sub_10001021C(type);
  }

  else
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 0uLL;
      v30 = 0;
      ctu::cf::assign();
      *__p = v29;
      v18 = v30;
      v9 = __p;
      if (v30 < 0)
      {
        v9 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "";
      v32 = 2080;
      v33 = "";
      v34 = 2080;
      v35 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: unencryptable config - skipped", buf, 0x20u);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100005308((*a2 + 96), v27);
    sub_10001021C(type);
  }

LABEL_41:
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }
}

void sub_1005D8344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, const void *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_10001021C((v39 + 8));
  sub_10001021C(&a26);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (v38)
  {
    sub_100004A34(v38);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005D8460(uint64_t a1, CFDictionaryRef theDict)
{
  if (*(a1 + 96) != 1)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(theDict, @"whiteList");
  if (!Value)
  {
    goto LABEL_13;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFArrayGetTypeID())
  {
    goto LABEL_13;
  }

  Count = CFArrayGetCount(v5);
  if (Count)
  {
    v8 = Count;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
      if (ValueAtIndex)
      {
        v11 = ValueAtIndex;
        v12 = CFGetTypeID(ValueAtIndex);
        if (v12 == CFStringGetTypeID())
        {
          if (sub_1005D14F8(a1))
          {
            v13 = sub_1005D14F8(a1);
            if (CFStringCompare(v11, v13, 0) == kCFCompareEqualTo)
            {
              break;
            }
          }
        }
      }

      if (v8 == ++v9)
      {
        goto LABEL_11;
      }
    }

LABEL_13:
    v14 = 1;
    goto LABEL_14;
  }

LABEL_11:
  v14 = 0;
LABEL_14:
  v15 = CFDictionaryGetValue(theDict, @"blackList");
  if (v15)
  {
    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 == CFArrayGetTypeID())
    {
      v18 = CFArrayGetCount(v16);
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        while (1)
        {
          v21 = CFArrayGetValueAtIndex(v16, v20);
          if (v21)
          {
            v22 = v21;
            v23 = CFGetTypeID(v21);
            if (v23 == CFStringGetTypeID())
            {
              if (sub_1005D14F8(a1))
              {
                v24 = sub_1005D14F8(a1);
                if (CFStringCompare(v22, v24, 0) == kCFCompareEqualTo)
                {
                  break;
                }
              }
            }
          }

          if (v19 == ++v20)
          {
            return v14;
          }
        }

        return 0;
      }
    }
  }

  return v14;
}

const void **sub_1005D8608(const void **result, uint64_t *a2, const __CFDictionary *a3)
{
  v3 = *(*a2 + 144);
  v57 = *a2 + 152;
  if (v3 == v57)
  {
    return result;
  }

  v4 = a3;
  v5 = result;
  v6 = kCFAllocatorDefault;
  while (1)
  {
    v7 = v3 + 4;
    v78 = 0;
    if (*(v3 + 55) < 0)
    {
      sub_100005F2C(&__dst, v3[4], v3[5]);
    }

    else
    {
      __dst = *v7;
      v77 = v3[6];
    }

    if (SHIBYTE(v77) < 0)
    {
      sub_100005F2C(&v79, __dst, *(&__dst + 1));
    }

    else
    {
      v79 = __dst;
      v80 = v77;
    }

    v59[0] = 0;
    if (SHIBYTE(v80) < 0)
    {
      sub_100005F2C(buf, v79, *(&v79 + 1));
    }

    else
    {
      *buf = v79;
      *&buf[16] = v80;
    }

    v61 = 0;
    if (ctu::cf::convert_copy())
    {
      v8 = v59[0];
      v59[0] = v61;
      __p[0] = v8;
      sub_100005978(__p);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v78 = v59[0];
    v59[0] = 0;
    sub_100005978(v59);
    if (SHIBYTE(v80) < 0)
    {
      operator delete(v79);
    }

    if (SHIBYTE(v77) < 0)
    {
      operator delete(__dst);
    }

    v75 = 0;
    v9 = (v3 + 4);
    if (*(v3 + 55) < 0)
    {
      v9 = *v7;
    }

    sub_10000501C(buf, v9);
    if ((buf[23] & 0x80u) == 0)
    {
      v10 = buf;
    }

    else
    {
      v10 = *buf;
    }

    v11 = CFStringCreateWithFormat(v6, 0, @"%@%s", @"assignments.", v10);
    v75 = v11;
    if (buf[23] < 0)
    {
      operator delete(*buf);
      v11 = v75;
    }

    if (!CFDictionaryGetValue(v4, v11))
    {
      v13 = *(v5 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v3 + 55) < 0)
        {
          v7 = *v7;
        }

        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v82 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#W %s%sNo assignment section for account %s", buf, 0x20u);
      }

      goto LABEL_100;
    }

    v74 = 0;
    (*(**(v5 + 152) + 64))(&v73);
    *&v79 = v73;
    if (v73)
    {
      CFRetain(v73);
    }

    __p[0] = 0;
    *buf = 0;
    sub_100010180(buf, &v79);
    if (*buf)
    {
      sub_1000676D4(__p, buf);
    }

    sub_10001021C(buf);
    v74 = __p[0];
    __p[0] = 0;
    sub_10001021C(__p);
    sub_10000A1EC(&v79);
    sub_10000A1EC(&v73);
    if (!v74)
    {
      v14 = *(v5 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v79 = 0uLL;
        v80 = 0;
        ctu::cf::assign();
        *__p = v79;
        v67 = v80;
        v15 = v79;
        if (SHIBYTE(v80) >= 0)
        {
          v15 = __p;
        }

        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v82 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to decrypt %s", buf, 0x20u);
        if (SHIBYTE(v67) < 0)
        {
          operator delete(__p[0]);
        }
      }

      goto LABEL_99;
    }

    v71 = 0;
    theDict = 0;
    sub_1005D6498(v74, &v71);
    v12 = theDict;
    if (*(v3 + 55) < 0)
    {
      sub_100005F2C(v68, v3[4], v3[5]);
    }

    else
    {
      *v68 = *v7;
      v69 = v3[6];
    }

    v70 = 1;
    v16 = sub_1005D39BC(v5, v12, v68, 0);
    if (v70 == 1 && SHIBYTE(v69) < 0)
    {
      operator delete(v68[0]);
    }

    if ((v16 & 1) == 0)
    {
      break;
    }

    *(v3[7] + 80) = sub_1005D8460(v5, theDict) ^ 1;
    Value = CFDictionaryGetValue(theDict, @"foreignDevicesCount");
    v18 = Value;
    *buf = 0;
    if (Value)
    {
      v19 = CFGetTypeID(Value);
      if (v19 == CFNumberGetTypeID())
      {
        ctu::cf::assign(buf, v18, v20);
      }
    }

    *(v3[7] + 10) = *buf;
    v21 = CFDictionaryGetValue(theDict, @"assignments");
    v22 = v21;
    if (v21)
    {
      Count = CFDictionaryGetCount(v21);
      *(v3[7] + 9) = Count;
      v79 = 0uLL;
      v80 = 0;
      sub_100222418(&v79, Count);
      __p[0] = 0;
      __p[1] = 0;
      v67 = 0;
      sub_10007D780(__p, Count);
      CFDictionaryGetKeysAndValues(v22, v79, __p[0]);
      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          v25 = *(__p[0] + i);
          if (v25)
          {
            v26 = *(v79 + 8 * i);
            v27 = CFGetTypeID(*(__p[0] + i));
            if (v27 == CFStringGetTypeID())
            {
              v64 = 0;
              v65 = 0;
              sub_1005D67F8(v5, 2, v3 + 4, v25, &v64);
              if (!v65)
              {
                goto LABEL_80;
              }

              v28 = CFDictionaryGetValue(v65, @"account");
              v29 = v28;
              if (v28 && (v30 = CFGetTypeID(v28), v30 == CFStringGetTypeID()) && CFStringCompare(v29, v78, 0))
              {
                v31 = v65;
                v65 = 0;
                *buf = v31;
                sub_10001021C(buf);
              }

              else
              {
                v61 = 0;
                v62 = 0;
                v63 = 0;
                *buf = v26;
                sub_10021D11C(&v61, buf);
                v32 = CFDictionaryGetValue(v65, @"enable");
                v33 = kCFBooleanTrue;
                if (v32)
                {
                  v33 = v32;
                }

                v59[0] = v33;
                *buf = 0;
                v34 = sub_1005DEE94(buf, v59);
                v35 = v62;
                v62 = *buf;
                *buf = v35;
                sub_100045C8C(v34);
                v36 = CFDictionaryGetValue(v65, @"hardware");
                v37 = v36;
                if (v36)
                {
                  v38 = CFGetTypeID(v36);
                  if (v38 == CFStringGetTypeID())
                  {
                    *buf = v37;
                    sub_10021D11C(&v63, buf);
                  }
                }

                v59[0] = 0;
                v59[1] = 0;
                v60 = 0;
                memset(buf, 0, sizeof(buf));
                ctu::cf::assign();
                *v59 = *buf;
                v60 = *&buf[16];
                v39 = v3[7];
                *buf = v59;
                v40 = sub_1005DEEF8(v39 + 88, v59);
                sub_100222570(v40 + 7, &v61);
                sub_1005DDAA8(v40 + 8, &v62);
                sub_100222570(v40 + 9, &v63);
                v41 = *(v5 + 40);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = v59;
                  if (v60 < 0)
                  {
                    v42 = v59[0];
                  }

                  v43 = v3 + 4;
                  if (*(v3 + 55) < 0)
                  {
                    v43 = *v7;
                  }

                  *buf = 136315906;
                  *&buf[4] = "";
                  *&buf[12] = 2080;
                  *&buf[14] = "";
                  *&buf[22] = 2080;
                  v82 = v42;
                  v83 = 2080;
                  v84 = v43;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%sdev:%s belongs to account:%s. Acknowledged.", buf, 0x2Au);
                }

                sub_100005BA0(*a2, v59);
                if (sub_1005D14F8(v5))
                {
                  v44 = sub_1005D14F8(v5);
                  if (CFStringCompare(v44, v25, 0) == kCFCompareEqualTo)
                  {
                    sub_100005308((*a2 + 48), v3 + 2);
                  }
                }

                if (SHIBYTE(v60) < 0)
                {
                  operator delete(v59[0]);
                }

                sub_100005978(&v63);
                sub_100045C8C(&v62);
                sub_100005978(&v61);
              }

              if (!v65)
              {
LABEL_80:
                v61 = 0;
                v62 = 0;
                v63 = 0;
                *buf = v26;
                sub_10021D11C(&v61, buf);
                v59[0] = 0;
                v59[1] = 0;
                v60 = 0;
                memset(buf, 0, sizeof(buf));
                ctu::cf::assign();
                *v59 = *buf;
                v60 = *&buf[16];
                v45 = v3[7];
                *buf = v59;
                v46 = sub_1005DEEF8(v45 + 88, v59);
                sub_100222570(v46 + 7, &v61);
                sub_1005DDAA8(v46 + 8, &v62);
                sub_100222570(v46 + 9, &v63);
                v47 = *(v5 + 40);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  v48 = v59;
                  if (v60 < 0)
                  {
                    v48 = v59[0];
                  }

                  v49 = v3 + 4;
                  if (*(v3 + 55) < 0)
                  {
                    v49 = *v7;
                  }

                  *buf = 136315906;
                  *&buf[4] = "";
                  *&buf[12] = 2080;
                  *&buf[14] = "";
                  *&buf[22] = 2080;
                  v82 = v48;
                  v83 = 2080;
                  v84 = v49;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I %s%sdev:%s belongs to account:%s", buf, 0x2Au);
                }

                sub_100005BA0(*a2, v59);
                if (sub_1005D14F8(v5))
                {
                  v50 = sub_1005D14F8(v5);
                  if (CFStringCompare(v50, v25, 0) == kCFCompareEqualTo)
                  {
                    sub_100005308((*a2 + 48), v3 + 2);
                  }
                }

                if (SHIBYTE(v60) < 0)
                {
                  operator delete(v59[0]);
                }

                sub_100005978(&v63);
                sub_100045C8C(&v62);
                sub_100005978(&v61);
              }

              sub_10001021C(&v65);
            }
          }
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v4 = a3;
      if (v79)
      {
        *(&v79 + 1) = v79;
        operator delete(v79);
      }
    }

    sub_10001021C(&theDict);
LABEL_99:
    sub_10001021C(&v74);
LABEL_100:
    sub_100005978(&v75);
    result = sub_100005978(&v78);
    v51 = v3[1];
    if (v51)
    {
      do
      {
        v52 = v51;
        v51 = *v51;
      }

      while (v51);
    }

    else
    {
      do
      {
        v52 = v3[2];
        v53 = *v52 == v3;
        v3 = v52;
      }

      while (!v53);
    }

    v3 = v52;
    v6 = kCFAllocatorDefault;
    if (v52 == v57)
    {
      return result;
    }
  }

  v54 = *(v5 + 40);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v79 = 0uLL;
    v80 = 0;
    ctu::cf::assign();
    *__p = v79;
    v67 = v80;
    v55 = __p;
    if (SHIBYTE(v80) < 0)
    {
      v55 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v82 = v55;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: schema version mismatch - assignment record skipped", buf, 0x20u);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10001021C(&theDict);
  sub_10001021C(&v74);
  sub_100005978(&v75);
  return sub_100005978(&v78);
}

void sub_1005D9184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50, uint64_t a51, char a52, const void *a53)
{
  if (*(v53 - 169) < 0)
  {
    operator delete(*(v53 - 192));
  }

  sub_10001021C(&a53);
  sub_10001021C((v53 - 240));
  sub_100005978((v53 - 232));
  sub_100005978((v53 - 200));
  _Unwind_Resume(a1);
}

const void **sub_1005D936C(const void **a1)
{
  sub_100005978(a1 + 2);
  sub_100045C8C(a1 + 1);

  return sub_100005978(a1);
}

void sub_1005D97AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  sub_10001021C(&a25);
  sub_100004A34(v31);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D9880(uint64_t a1, const __CFString *a2)
{
  v4 = sub_1005D14F8(a1);
  if (!v4)
  {
    goto LABEL_35;
  }

  v5 = sub_1005D14F8(a1);
  v6 = CFStringCompare(a2, v5, 0);
  if (!v6)
  {
LABEL_20:
    LODWORD(v4) = 1;
LABEL_21:
    LODWORD(v9) = 1;
    return v4 | (v9 << 8);
  }

  if (*(a1 + 96))
  {
    v7 = capabilities::ct::supportsThumperSourcing(v6);
    v8 = sub_1005CF7D4(a1);
    if (sub_1005CF104(v7, v8))
    {
      v9 = *(a1 + 112);
      if (v9)
      {
        v10 = v9[1];
        if (*v9 != v10)
        {
          v11 = (*v9 + 3);
          do
          {
            v12 = CFStringCompare(*(v11 - 24), a2, 0);
            LODWORD(v4) = v12 == kCFCompareEqualTo;
            if (v12)
            {
              v13 = v11 == v10;
            }

            else
            {
              v13 = 1;
            }

            v11 += 24;
          }

          while (!v13);
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v9 = *(a1 + 128);
      if (v9)
      {
        v18 = v9[1];
        if (*v9 != v18)
        {
          v19 = (*v9 + 3);
          do
          {
            v20 = CFStringCompare(*(v19 - 24), a2, 0);
            LODWORD(v4) = v20 == kCFCompareEqualTo;
            if (v20)
            {
              v21 = v19 == v18;
            }

            else
            {
              v21 = 1;
            }

            v19 += 24;
          }

          while (!v21);
          goto LABEL_21;
        }

LABEL_32:
        LODWORD(v4) = 0;
        goto LABEL_21;
      }
    }

LABEL_31:
    LODWORD(v4) = 0;
    return v4 | (v9 << 8);
  }

  v9 = *(a1 + 112);
  if (!v9)
  {
    goto LABEL_31;
  }

  v15 = *(a1 + 128);
  v14 = (a1 + 128);
  if (!v15)
  {
    LODWORD(v4) = 0;
LABEL_35:
    LODWORD(v9) = 0;
    return v4 | (v9 << 8);
  }

  v16 = *v9;
  v17 = v9[1];
  while (v16 != v17)
  {
    if (CFStringCompare(*v16, a2, 0) == kCFCompareEqualTo)
    {
      goto LABEL_20;
    }

    v16 += 3;
  }

  LODWORD(v4) = sub_1005DDA3C(v14, a2);
  LODWORD(v9) = v4;
  return v4 | (v9 << 8);
}

uint64_t sub_1005D99FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 16))(a1);
  if (result)
  {
    sub_1005D93B0();
  }

  *a2 = 0;
  return result;
}

void sub_1005DAE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, const void *a63)
{
  sub_100005978((v63 - 216));
  if (*(v63 - 185) < 0)
  {
    operator delete(*(v63 - 208));
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a63);
  sub_1000279DC((v63 - 248));
  sub_1000279DC((v63 - 240));
  sub_1000296E0(a12);
  v65 = *(v63 - 224);
  if (v65)
  {
    sub_100004A34(v65);
  }

  _Unwind_Resume(a1);
}

void sub_1005DB2C8(uint64_t a1, void **a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = *(a1 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v4[10] - v4[9]) >> 3);
      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2048;
      *v89 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s|  %zu own account(s)", buf, 0x20u);
      v4 = *a2;
    }

    v8 = v4[9];
    v9 = v4[10];
    if (v8 != v9)
    {
      do
      {
        v10 = *(v3 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v8;
          if (*(v8 + 23) < 0)
          {
            v11 = *v8;
          }

          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          *v89 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s|    %s", buf, 0x20u);
        }

        v8 += 3;
      }

      while (v8 != v9);
      v4 = *a2;
    }

    v12 = *(v3 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v4[7] - v4[6]) >> 3);
      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2048;
      *v89 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s|  %zu paired account(s)", buf, 0x20u);
      v4 = *a2;
    }

    v14 = v4[6];
    v15 = v4[7];
    if (v14 != v15)
    {
      do
      {
        v16 = *(v3 + 40);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v14;
          if (*(v14 + 23) < 0)
          {
            v17 = *v14;
          }

          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          *v89 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s|    %s", buf, 0x20u);
        }

        v14 += 3;
      }

      while (v14 != v15);
      v4 = *a2;
    }

    v18 = *(v3 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v4[20];
      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2048;
      *v89 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%s|  detected %zu account(s) in iCloud", buf, 0x20u);
      v4 = *a2;
    }

    v20 = v4[18];
    v71 = v4 + 19;
    if (v20 != v4 + 19)
    {
      v72 = v3;
      do
      {
        v21 = *(v3 + 40);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v20 + 4;
          if (*(v20 + 55) < 0)
          {
            v22 = *v22;
          }

          v86 = 0uLL;
          v87 = 0;
          ctu::cf::assign();
          v84 = v86;
          v85 = v87;
          if (v87 >= 0)
          {
            v23 = &v84;
          }

          else
          {
            v23 = v84;
          }

          v86 = 0uLL;
          v87 = 0;
          ctu::cf::assign();
          *v82 = v86;
          v83 = v87;
          if (v87 >= 0)
          {
            v24 = v82;
          }

          else
          {
            v24 = v82[0];
          }

          v86 = 0uLL;
          v87 = 0;
          ctu::cf::assign();
          *__p = v86;
          v81 = v87;
          v25 = v20[7];
          v27 = *(v25 + 72);
          v26 = *(v25 + 76);
          if (v87 >= 0)
          {
            v28 = __p;
          }

          else
          {
            v28 = __p[0];
          }

          v29 = "unknown";
          if (*(v25 + 9) == 1)
          {
            v29 = asStringBool(*(v25 + 8));
          }

          *buf = 136317186;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          *v89 = v22;
          *&v89[8] = 2080;
          v90 = v23;
          v91 = 2080;
          v92 = v24;
          v93 = 2080;
          v94 = v28;
          v95 = 1024;
          v96 = v27;
          v97 = 1024;
          v98 = v26;
          v99 = 2080;
          v100 = v29;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s|  > %s: mdn:%s mcc:%s iso:%s schema:%u.%u trusted:%s", buf, 0x54u);
          if (SHIBYTE(v81) < 0)
          {
            operator delete(__p[0]);
          }

          v3 = v72;
          if (SHIBYTE(v83) < 0)
          {
            operator delete(v82[0]);
          }

          if (SHIBYTE(v85) < 0)
          {
            operator delete(v84);
          }

          v21 = *(v72 + 40);
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          v86 = *buf;
          v87 = *&buf[16];
          v30 = *buf;
          if ((buf[23] & 0x80u) == 0)
          {
            v30 = &v86;
          }

          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          *v89 = v30;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s|      primary: %s", buf, 0x20u);
          if (SHIBYTE(v87) < 0)
          {
            operator delete(v86);
          }

          v21 = *(v3 + 40);
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          v86 = *buf;
          v87 = *&buf[16];
          v31 = *buf;
          if ((buf[23] & 0x80u) == 0)
          {
            v31 = &v86;
          }

          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          *v89 = v31;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s|      labelId: %s", buf, 0x20u);
          if (SHIBYTE(v87) < 0)
          {
            operator delete(v86);
          }

          v21 = *(v3 + 40);
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v20[7];
          v33 = *(v32 + 32);
          LODWORD(v32) = *(v32 + 36);
          *buf = 136315906;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 1024;
          *v89 = v33;
          *&v89[4] = 1024;
          *&v89[6] = v32;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s|      slots: %d (used: %d)", buf, 0x22u);
          v21 = *(v3 + 40);
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(v20[7] + 40);
          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 1024;
          *v89 = v34;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s|      foreign devices: %d", buf, 0x1Cu);
          v21 = *(v3 + 40);
        }

        v35 = v20[7];
        if (*(v35 + 80) == 1 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s|      account hidden for device", buf, 0x16u);
          v21 = *(v3 + 40);
          v35 = v20[7];
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(v35 + 104);
          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2048;
          *v89 = v36;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s|      associated devices: %zu", buf, 0x20u);
          v35 = v20[7];
        }

        v37 = *(v35 + 88);
        v38 = (v35 + 96);
        if (v37 != (v35 + 96))
        {
          do
          {
            v39 = *(v3 + 40);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v86 = 0uLL;
              v87 = 0;
              ctu::cf::assign();
              v40 = (v37 + 4);
              v84 = v86;
              v85 = v87;
              if (v87 >= 0)
              {
                v41 = &v84;
              }

              else
              {
                v41 = v84;
              }

              if (*(v37 + 55) < 0)
              {
                v40 = *v40;
              }

              v42 = v37[9];
              if (v42)
              {
                v86 = 0uLL;
                v87 = 0;
                ctu::cf::assign();
                *v78 = v86;
                v79 = v87;
                if (v87 >= 0)
                {
                  v43 = v78;
                }

                else
                {
                  v43 = v78[0];
                }
              }

              else
              {
                v43 = "unknown";
              }

              v44 = v37[8];
              if (v44)
              {
                Value = CFBooleanGetValue(v44);
                v46 = "on";
                if (!Value)
                {
                  v46 = "off";
                }
              }

              else
              {
                v46 = "unknown";
              }

              *buf = 136316418;
              *&buf[4] = "";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              *v89 = v41;
              *&v89[8] = 2080;
              v90 = v40;
              v91 = 2080;
              v92 = v43;
              v93 = 2080;
              v94 = v46;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%s|        %s %s, hw:%s, status:%s", buf, 0x3Eu);
              v3 = v72;
              if (v42 && SHIBYTE(v79) < 0)
              {
                operator delete(v78[0]);
              }

              if (SHIBYTE(v85) < 0)
              {
                operator delete(v84);
              }
            }

            v47 = v37[1];
            if (v47)
            {
              do
              {
                v48 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v48 = v37[2];
                v49 = *v48 == v37;
                v37 = v48;
              }

              while (!v49);
            }

            v37 = v48;
          }

          while (v48 != v38);
        }

        v50 = v20[1];
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
            v51 = v20[2];
            v49 = *v51 == v20;
            v20 = v51;
          }

          while (!v49);
        }

        v20 = v51;
      }

      while (v51 != v71);
      v4 = *a2;
    }

    v52 = *(v3 + 40);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = v4[5];
      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2048;
      *v89 = v53;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I %s%s|  %zu orphan dev records found", buf, 0x20u);
      v4 = *a2;
    }

    v54 = v4[3];
    if (v54 != v4 + 4)
    {
      do
      {
        v55 = *(v3 + 40);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = v54 + 4;
          if (*(v54 + 55) < 0)
          {
            v56 = *v56;
          }

          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          *v89 = v56;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%s|    %s", buf, 0x20u);
        }

        v57 = v54[1];
        if (v57)
        {
          do
          {
            v58 = v57;
            v57 = *v57;
          }

          while (v57);
        }

        else
        {
          do
          {
            v58 = v54[2];
            v49 = *v58 == v54;
            v54 = v58;
          }

          while (!v49);
        }

        v54 = v58;
      }

      while (v58 != v4 + 4);
    }

    v59 = *(v3 + 40);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I %s%s| DEV SECTIONS:", buf, 0x16u);
    }

    v60 = *a2;
    v61 = (*a2 + 1);
    v62 = **a2;
    if (v62 != v61)
    {
      do
      {
        if (*(v62 + 55) < 0)
        {
          sub_100005F2C(__dst, v62[4], v62[5]);
        }

        else
        {
          *__dst = *(v62 + 2);
          v76 = v62[6];
        }

        if (SHIBYTE(v76) < 0)
        {
          sub_100005F2C(&v86, __dst[0], __dst[1]);
        }

        else
        {
          v86 = *__dst;
          v87 = v76;
        }

        __p[0] = 0;
        if (SHIBYTE(v87) < 0)
        {
          sub_100005F2C(buf, v86, *(&v86 + 1));
        }

        else
        {
          *buf = v86;
          *&buf[16] = v87;
        }

        v82[0] = 0;
        if (ctu::cf::convert_copy())
        {
          v63 = __p[0];
          __p[0] = v82[0];
          *&v84 = v63;
          sub_100005978(&v84);
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        v77 = __p[0];
        __p[0] = 0;
        sub_100005978(__p);
        if (SHIBYTE(v87) < 0)
        {
          operator delete(v86);
        }

        sub_1005DC67C(v3, v77);
        sub_100005978(&v77);
        if (SHIBYTE(v76) < 0)
        {
          operator delete(__dst[0]);
        }

        v64 = v62[1];
        if (v64)
        {
          do
          {
            v65 = v64;
            v64 = *v64;
          }

          while (v64);
        }

        else
        {
          do
          {
            v65 = v62[2];
            v49 = *v65 == v62;
            v62 = v65;
          }

          while (!v49);
        }

        v62 = v65;
      }

      while (v65 != v61);
      v60 = *a2;
    }

    v66 = v60[3];
    v67 = v60 + 4;
    if (v66 != v60 + 4)
    {
      do
      {
        if (*(v66 + 55) < 0)
        {
          sub_100005F2C(v73, v66[4], v66[5]);
        }

        else
        {
          *v73 = *(v66 + 2);
          v74 = v66[6];
        }

        if (SHIBYTE(v74) < 0)
        {
          sub_100005F2C(&v86, v73[0], v73[1]);
        }

        else
        {
          v86 = *v73;
          v87 = v74;
        }

        __p[0] = 0;
        if (SHIBYTE(v87) < 0)
        {
          sub_100005F2C(buf, v86, *(&v86 + 1));
        }

        else
        {
          *buf = v86;
          *&buf[16] = v87;
        }

        v82[0] = 0;
        if (ctu::cf::convert_copy())
        {
          v68 = __p[0];
          __p[0] = v82[0];
          *&v84 = v68;
          sub_100005978(&v84);
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        v77 = __p[0];
        __p[0] = 0;
        sub_100005978(__p);
        if (SHIBYTE(v87) < 0)
        {
          operator delete(v86);
        }

        sub_1005DC67C(v3, v77);
        sub_100005978(&v77);
        if (SHIBYTE(v74) < 0)
        {
          operator delete(v73[0]);
        }

        v69 = v66[1];
        if (v69)
        {
          do
          {
            v70 = v69;
            v69 = *v69;
          }

          while (v69);
        }

        else
        {
          do
          {
            v70 = v66[2];
            v49 = *v70 == v66;
            v66 = v70;
          }

          while (!v49);
        }

        v66 = v70;
      }

      while (v70 != v67);
    }
  }

  else if (v6)
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sCloud analysis not ready yet", buf, 0x16u);
  }
}

void sub_1005DC198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (*(v61 - 233) < 0)
  {
    operator delete(*(v61 - 256));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1005DC310(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 8);
      if (v7)
      {
        (*(*v7 + 16))(__p);
        v8 = *(a1 + 32);
        v9 = v18;
        if ((v18 & 0x80u) == 0)
        {
          v10 = v18;
        }

        else
        {
          v10 = __p[1];
        }

        v11 = *(v8 + 23);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(v8 + 8);
        }

        if (v10 == v11)
        {
          if ((v18 & 0x80u) == 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          if (v12 >= 0)
          {
            v14 = *(a1 + 32);
          }

          else
          {
            v14 = *v8;
          }

          v15 = memcmp(v13, v14, v10) == 0;
          if ((v9 & 0x80000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v15 = 0;
        if (v18 < 0)
        {
LABEL_21:
          operator delete(__p[0]);
        }
      }

      else
      {
        v15 = 0;
      }

LABEL_22:
      sub_100004A34(v6);
      return v15;
    }
  }

  return 0;
}

uint64_t sub_1005DC42C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 216);
  *a2 = *(result + 208);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1005DC448(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  sub_1005D128C(a1);
  v3 = *(*a1 + 88);

  return v3(a1, 1);
}

uint64_t sub_1005DC4D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_10034462C(*(a1 + 96));
    ctu::cf::assign();
    *__p = 0u;
    v7 = 0;
    buf = 136315906;
    buf_4 = "";
    buf_12 = 2080;
    buf_14 = "";
    v12 = 2080;
    v13 = v3;
    v14 = 2080;
    v15 = __p;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fDevType: %s, fDeviceId: %s", &buf, 0x2Au);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_1005DB2C8(a1, (a1 + 208));
  v4 = *(a1 + 144);
  if (v4)
  {
    (*(*v4 + 80))(v4);
  }

  result = *(a1 + 152);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

void sub_1005DC658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1005DC67C(uint64_t a1, uint64_t a2)
{
  key = 0;
  sub_1005D414C(a1, a2, &key);
  theDict = 0;
  sub_1006160F0(buf);
  *&v32 = sub_1006160B8(*buf, key);
  sub_100138C38(&theDict, &v32);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v4 = theDict;
  if (theDict)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 0uLL;
      v33 = 0;
      ctu::cf::assign();
      *__p = v32;
      v29 = v33;
      v6 = v32;
      if (v33 >= 0)
      {
        v6 = __p;
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      v35 = 2080;
      v36 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%smodern %s {", buf, 0x20u);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
      }

      v4 = theDict;
    }

    Value = CFDictionaryGetValue(v4, @"accounts");
    v8 = Value;
    if (Value)
    {
      v9 = CFGetTypeID(Value);
      if (v9 == CFDictionaryGetTypeID())
      {
        v10 = *(a1 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 0uLL;
          v33 = 0;
          ctu::cf::assign();
          *__p = v32;
          v29 = v33;
          v11 = v32;
          if (v33 >= 0)
          {
            v11 = __p;
          }

          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          v35 = 2080;
          v36 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s\t%s:", buf, 0x20u);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p[0]);
          }
        }

        Count = CFDictionaryGetCount(v8);
        if (Count)
        {
          __p[0] = 0;
          __p[1] = 0;
          v29 = 0;
          sub_100222418(__p, Count);
          CFDictionaryGetKeysAndValues(v8, __p[0], 0);
          v13 = __p[0];
          v14 = __p[1];
          if (__p[0] != __p[1])
          {
            do
            {
              v15 = *(a1 + 40);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v32 = 0uLL;
                v33 = 0;
                ctu::cf::assign();
                *v26 = v32;
                v27 = v33;
                v16 = v32;
                if (v33 >= 0)
                {
                  v16 = v26;
                }

                *buf = 136315650;
                *&buf[4] = "";
                *&buf[12] = 2080;
                *&buf[14] = "";
                v35 = 2080;
                v36 = v16;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s\t\t%s", buf, 0x20u);
                if (SHIBYTE(v27) < 0)
                {
                  operator delete(v26[0]);
                }
              }

              v13 += 8;
            }

            while (v13 != v14);
            v13 = __p[0];
          }

          if (v13)
          {
            __p[1] = v13;
            operator delete(v13);
          }
        }
      }
    }

    v17 = CFDictionaryGetValue(theDict, @"ts");
    *buf = 0;
    ctu::cf::assign(buf, v17, v18);
    v19 = *buf;
    v20 = *(a1 + 40);
    if (*buf && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      v32 = 0uLL;
      v33 = 0;
      ctu::cf::assign();
      *__p = v32;
      v29 = v33;
      v21 = v32;
      if (v33 >= 0)
      {
        v21 = __p;
      }

      *buf = 136315906;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      v35 = 2080;
      v36 = v21;
      v37 = 1024;
      v38 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%s\t%s: %u", buf, 0x26u);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
      }

      v20 = *(a1 + 40);
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%s}", buf, 0x16u);
    }
  }

  sub_1005D4280(a1, a2, &v32);
  *buf = key;
  key = v32;
  *&v32 = 0;
  sub_100005978(buf);
  sub_100005978(&v32);
  sub_1006160F0(buf);
  __p[0] = sub_100615F34(*buf, key, 1);
  *&v32 = 0;
  sub_100138C38(&v32, __p);
  v22 = theDict;
  theDict = v32;
  *&v32 = v22;
  sub_10001021C(&v32);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (theDict)
  {
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 0uLL;
      v33 = 0;
      ctu::cf::assign();
      *__p = v32;
      v29 = v33;
      v24 = __p;
      if (v33 < 0)
      {
        v24 = v32;
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      v35 = 2080;
      v36 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%slegacy %s", buf, 0x20u);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
      }
    }

    *buf = off_101E69500;
    *&buf[8] = a1;
    v36 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
  }

  sub_10001021C(&theDict);
  return sub_100005978(&key);
}

void sub_1005DCCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, const void *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a18);
  sub_100005978(&a19);
  _Unwind_Resume(a1);
}

void sub_1005DCD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_100004A34(a24);
  }

  JUMPOUT(0x1005DCD34);
}

void sub_1005DCD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_100004A34(a24);
  }

  JUMPOUT(0x1005DCD3CLL);
}

uint64_t sub_1005DCD74(uint64_t a1)
{
  if (sub_1005CF7D4(a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 193);
  }

  return v2 & 1;
}

void sub_1005DCDAC(void *a1)
{
  v2 = a1[9];
  v3 = a1 + 10;
  if (v2 != a1 + 10)
  {
    do
    {
      v4 = v2[6];
      if (v4)
      {
        v5 = std::__shared_weak_count::lock(v4);
        if (v5)
        {
          v6 = v5;
          v7 = v2[5];
          if (v7)
          {
            (*(*v7 + 40))(v7);
          }

          sub_100004A34(v6);
        }
      }

      v8 = v2[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v2[2];
          v10 = *v9 == v2;
          v2 = v9;
        }

        while (!v10);
      }

      v2 = v9;
    }

    while (v9 != v3);
  }

  sub_1005D0430(a1);
}

void sub_1005DCE8C(uint64_t a1, int a2)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
  {
    sub_1017757B8();
  }

  if (a2)
  {
    (*(*a1 + 40))(&v17, a1);
    sub_100010180(&v18, &v17);
    v4 = (a1 + 200);
    if ((a1 + 200) != &v18)
    {
      v5 = *v4;
      *v4 = v18;
      v18 = 0;
      *buf = v5;
      sub_10001021C(buf);
    }

    sub_10001021C(&v18);
    sub_1000296E0(&v17);
  }

  if (*(a1 + 200))
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%scompiled cloud info:", buf, 0x16u);
    }

    *buf = off_101E69600;
    *&buf[8] = a1;
    v20 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
    sub_1005DD14C(a1);
  }

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
  *buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, buf);
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
      v16 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_19:
  (*(*v15 + 32))(v15);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

const void **sub_1005DD14C(uint64_t a1)
{
  result = capabilities::ct::supportsThumperService(a1);
  if (!result || !*(a1 + 208))
  {
    return result;
  }

  v79 = 0;
  getAssociatedID(&v79);
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *__p = *buf;
  v78 = *&buf[16];
  v3 = *(a1 + 208);
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4 != v5)
  {
    if (v78 >= 0)
    {
      v6 = HIBYTE(v78);
    }

    else
    {
      v6 = __p[1];
    }

    if (v78 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    while (1)
    {
      if (!v79)
      {
        goto LABEL_20;
      }

      v8 = *(v4 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v4 + 1);
      }

      if (v8 == v6)
      {
        v10 = v9 >= 0 ? v4 : *v4;
        if (!memcmp(v10, v7, v6))
        {
LABEL_20:
          v11 = sub_100007A6C(v3 + 144, v4);
          v3 = *(a1 + 208);
          if (v3 + 152 != v11)
          {
            v12 = *(v11 + 56);
            if (*(v12 + 9) == 1 && *(v12 + 8) == 1)
            {
              break;
            }
          }
        }
      }

      v4 = (v4 + 24);
      if (v4 == v5)
      {
        goto LABEL_22;
      }
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 48));
    v61 = ServiceMap;
    if (v62 < 0)
    {
      v63 = (v62 & 0x7FFFFFFFFFFFFFFFLL);
      v64 = 5381;
      do
      {
        v62 = v64;
        v65 = *v63++;
        v64 = (33 * v64) ^ v65;
      }

      while (v65);
    }

    std::mutex::lock(ServiceMap);
    *buf = v62;
    v66 = sub_100009510(&v61[1].__m_.__sig, buf);
    if (v66)
    {
      v68 = v66[3];
      v67 = v66[4];
      if (v67)
      {
        atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v61);
        atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v67);
        v69 = 0;
LABEL_96:
        if (*(v4 + 23) < 0)
        {
          sub_100005F2C(__dst, *v4, *(v4 + 1));
        }

        else
        {
          v70 = *v4;
          v76 = *(v4 + 2);
          *__dst = v70;
        }

        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        *v73 = *buf;
        v74 = *&buf[16];
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        *v71 = *buf;
        v72 = *&buf[16];
        (*(*v68 + 48))(v68, __dst, v73, v71);
        if (SHIBYTE(v72) < 0)
        {
          operator delete(v71[0]);
        }

        if (SHIBYTE(v74) < 0)
        {
          operator delete(v73[0]);
        }

        if (SHIBYTE(v76) < 0)
        {
          operator delete(__dst[0]);
        }

        if ((v69 & 1) == 0)
        {
          sub_100004A34(v67);
        }

        goto LABEL_22;
      }
    }

    else
    {
      v68 = 0;
    }

    std::mutex::unlock(v61);
    v67 = 0;
    v69 = 1;
    goto LABEL_96;
  }

LABEL_22:
  __dst[0] = 0;
  __dst[1] = 0;
  v76 = 0;
  v13 = Registry::getServiceMap(*(a1 + 48));
  v14 = v13;
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

  std::mutex::lock(v13);
  *buf = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, buf);
  if (!v19)
  {
    v21 = 0;
    goto LABEL_29;
  }

  v21 = v19[3];
  v20 = v19[4];
  if (!v20)
  {
LABEL_29:
    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
    goto LABEL_30;
  }

  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v14);
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v20);
  v22 = 0;
LABEL_30:
  (*(*v21 + 80))(__dst, v21, 0);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  v23 = __dst[0];
  v24 = __dst[1];
  if (__dst[0] != __dst[1])
  {
    while (1)
    {
      v73[0] = 0;
      v73[1] = 0;
      v25 = Registry::getServiceMap(*(a1 + 48));
      v26 = v25;
      v28 = v27;
      if (v27 < 0)
      {
        v29 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
        v30 = 5381;
        do
        {
          v28 = v30;
          v31 = *v29++;
          v30 = (33 * v30) ^ v31;
        }

        while (v31);
      }

      std::mutex::lock(v25);
      *buf = v28;
      v32 = sub_100009510(&v26[1].__m_.__sig, buf);
      if (!v32)
      {
        break;
      }

      v34 = v32[3];
      v33 = v32[4];
      if (!v33)
      {
        goto LABEL_40;
      }

      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v26);
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v33);
      v35 = 0;
LABEL_41:
      (*(*v34 + 136))(v73, v34, v23);
      if ((v35 & 1) == 0)
      {
        sub_100004A34(v33);
      }

      if (!v73[0] || *(v73[0] + 49) != 1)
      {
        goto LABEL_81;
      }

      v36 = *(a1 + 208);
      v37 = *(v36 + 48);
      v38 = *(v36 + 56);
      if (v37 != v38)
      {
        v39 = *(v23 + 23);
        if (v39 >= 0)
        {
          v40 = *(v23 + 23);
        }

        else
        {
          v40 = v23[1];
        }

        do
        {
          v41 = *(v37 + 23);
          v42 = v41;
          if ((v41 & 0x80u) != 0)
          {
            v41 = *(v37 + 8);
          }

          if (v40 == v41)
          {
            v43 = v39 >= 0 ? v23 : *v23;
            v44 = v42 >= 0 ? v37 : *v37;
            if (!memcmp(v43, v44, v40))
            {
              break;
            }
          }

          v37 += 24;
        }

        while (v37 != v38);
      }

      if (v37 != v38)
      {
        goto LABEL_81;
      }

      v45 = Registry::getServiceMap(*(a1 + 48));
      v46 = v45;
      if (v27 < 0)
      {
        v47 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
        v48 = 5381;
        do
        {
          v27 = v48;
          v49 = *v47++;
          v48 = (33 * v48) ^ v49;
        }

        while (v49);
      }

      std::mutex::lock(v45);
      *buf = v27;
      v50 = sub_100009510(&v46[1].__m_.__sig, buf);
      if (!v50)
      {
        v52 = 0;
LABEL_69:
        std::mutex::unlock(v46);
        v51 = 0;
        v53 = 1;
        goto LABEL_70;
      }

      v52 = v50[3];
      v51 = v50[4];
      if (!v51)
      {
        goto LABEL_69;
      }

      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v46);
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v51);
      v53 = 0;
LABEL_70:
      (*(*v52 + 144))(v52, v23);
      if ((v53 & 1) == 0)
      {
        sub_100004A34(v51);
      }

      sub_1009A9448(v23);
      v54 = *(a1 + 40);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = *(v23 + 23);
        v56 = (v55 & 0x80u) != 0;
        if ((v55 & 0x80u) != 0)
        {
          v55 = v23[1];
        }

        if (v56)
        {
          v57 = *v23;
        }

        else
        {
          v57 = v23;
        }

        v58 = v55 == 0;
        v59 = "<invalid>";
        if (!v58)
        {
          v59 = v57;
        }

        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v81 = v59;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I %s%sremove wallet for historically used cloud personality %s", buf, 0x20u);
      }

LABEL_81:
      if (v73[1])
      {
        sub_100004A34(v73[1]);
      }

      v23 += 3;
      if (v23 == v24)
      {
        goto LABEL_84;
      }
    }

    v34 = 0;
LABEL_40:
    std::mutex::unlock(v26);
    v33 = 0;
    v35 = 1;
    goto LABEL_41;
  }

LABEL_84:
  *buf = __dst;
  sub_10005AAF8(buf);
  if (SHIBYTE(v78) < 0)
  {
    operator delete(__p[0]);
  }

  return sub_100005978(&v79);
}

void sub_1005DD838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, const void *a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if ((v45 & 1) == 0)
  {
    sub_100004A34(v44);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  sub_100005978(&a38);
  _Unwind_Resume(a1);
}

void *sub_1005DD980(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_100005348(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

BOOL sub_1005DDA3C(uint64_t **a1, CFStringRef theString2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  if (v2 == v3)
  {
    return 0;
  }

  v5 = v2 + 24;
  do
  {
    v7 = CFStringCompare(*(v5 - 24), theString2, 0) == kCFCompareEqualTo;
    result = v7;
    v7 = v7 || v5 == v3;
    v5 += 24;
  }

  while (!v7);
  return result;
}

const void **sub_1005DDAA8(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_1005DDB00(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_100045C8C(&v5);
  }

  return a1;
}

const void **sub_1005DDB00(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void sub_1005DDB38(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1005DDB38(a1, *a2);
    sub_1005DDB38(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(a2);
  }
}

uint64_t *sub_1005DDB98(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void sub_1005DDC1C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005DDC54(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1005DDC84(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1005DDCD4(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_1000194D8(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_1005DDD14(unsigned __int8 **a1, _DWORD *a2)
{
  v5 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return 0;
  }

  v14 = v2;
  v15 = v3;
  v7 = *v5;
  if (v7 == 45 || v7 == 43)
  {
    *a1 = ++v5;
  }

  v9[0] = 0;
  v10 = 1;
  v11 = a2;
  v12 = v5;
  v13 = v4;
  result = sub_1005DDDA0(v9);
  if (v7 == 45)
  {
    *a2 = -*a2;
  }

  return result;
}

uint64_t sub_1005DDDA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  *(a1 + 24) = v1 - 1;
  v3 = *(a1 + 8);
  *v3 = 0;
  if (v2 <= v1 - 1)
  {
    v4 = *(v1 - 1);
    if ((v4 - 58) >= 0xF6u)
    {
      *v3 = (v4 - 48);
      *(a1 + 24) = v1 - 2;
      v30.__locale_ = 0;
      std::locale::locale(&v30);
      v7 = std::locale::classic();
      if (std::locale::operator==(&v30, v7))
      {
        v5 = sub_1005DE04C(a1);
LABEL_39:
        std::locale::~locale(&v30);
        return v5;
      }

      v8 = std::locale::use_facet(&v30, &std::numpunct<char>::id);
      (v8->__vftable[1].__on_zero_shared)(&__p);
      v9 = v29;
      if ((v29 & 0x8000000000000000) != 0)
      {
        v9 = v28;
        if (!v28)
        {
          goto LABEL_36;
        }

        p_p = __p;
      }

      else
      {
        if (!v29)
        {
          goto LABEL_36;
        }

        p_p = &__p;
      }

      if (*p_p >= 1)
      {
        v11 = (v8->__vftable[1].~facet_0)(v8);
        v12 = *(a1 + 16);
        v13 = *(a1 + 24);
        if (v13 >= v12)
        {
          v14 = 0;
          v15 = __p;
          if (v29 >= 0)
          {
            v15 = &__p;
          }

          v16 = *v15 - 1;
          do
          {
            if (v16)
            {
              v17 = *(a1 + 4);
              v18 = *a1 | (v17 > 0x19999999);
              *a1 = v18;
              v19 = 10 * v17;
              *(a1 + 4) = v19;
              v20 = *v13;
              if ((*v13 - 58) < 0xF6u)
              {
                goto LABEL_41;
              }

              v21 = v20 - 48;
              v22 = (v20 - 48) * v19;
              if (v21)
              {
                if (v18)
                {
                  goto LABEL_41;
                }

                if (((v21 * v19) & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_41;
                }

                v23 = *(a1 + 8);
                v24 = *v23;
                if (__CFADD__(v22, *v23))
                {
                  goto LABEL_41;
                }
              }

              else
              {
                v23 = *(a1 + 8);
                v24 = *v23;
              }

              *v23 = v24 + v22;
              --v16;
            }

            else
            {
              if (*v13 != v11)
              {
                goto LABEL_36;
              }

              if (v13 == v12)
              {
LABEL_41:
                v5 = 0;
                goto LABEL_37;
              }

              if (v9 - 1 > v14)
              {
                ++v14;
              }

              if (v29 >= 0)
              {
                v25 = &__p;
              }

              else
              {
                v25 = __p;
              }

              v16 = v25[v14];
            }

            *(a1 + 24) = --v13;
          }

          while (v13 >= v12);
        }

        v5 = 1;
        goto LABEL_37;
      }

LABEL_36:
      v5 = sub_1005DE04C(a1);
LABEL_37:
      if (v29 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_39;
    }
  }

  return 0;
}

void sub_1005DE018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DE04C(char *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 < v1)
  {
    return 1;
  }

  v4 = *a1;
  while (1)
  {
    v5 = *(a1 + 1);
    v4 |= v5 > 0x19999999;
    *a1 = v4 & 1;
    v6 = 10 * v5;
    *(a1 + 1) = 10 * v5;
    v7 = *v2;
    if ((*v2 - 58) < 0xF6u)
    {
      break;
    }

    v8 = v7 - 48;
    v9 = (v7 - 48) * v6;
    if (v8)
    {
      if (v4)
      {
        return 0;
      }

      if (((v8 * v6) & 0xFFFFFFFF00000000) != 0)
      {
        return 0;
      }

      v10 = *(a1 + 1);
      v11 = *v10;
      if (__CFADD__(v9, *v10))
      {
        return 0;
      }
    }

    else
    {
      v10 = *(a1 + 1);
      v11 = *v10;
    }

    *v10 = v11 + v9;
    *(a1 + 3) = --v2;
    if (v2 < v1)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1005DE100(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_1005DE160(exception, a1);
}

__n128 sub_1005DE160(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &off_101E25E78;
  a1->n128_u64[1] = &off_101E69338;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &off_101E692C0;
  a1->n128_u64[1] = off_101E692F0;
  a1[2].n128_u64[0] = off_101E69318;
  a1[2].n128_u64[1] = 0;
  return result;
}

uint64_t sub_1005DE20C(uint64_t a1)
{
  *(a1 + 32) = &off_101E25ED0;
  sub_100102904((a1 + 40));
  std::bad_cast::~bad_cast((a1 + 8));
  return a1;
}

void sub_1005DE42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100102904(&a9);
  sub_100102904(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1005DE498(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_1005DE74C(exception, a1);
}

void sub_1005DE4F4(uint64_t a1)
{
  *(a1 + 32) = &off_101E25ED0;
  sub_100102904((a1 + 40));
  std::bad_cast::~bad_cast((a1 + 8));

  operator delete();
}

void sub_1005DE568(uint64_t a1)
{
  *(a1 + 24) = &off_101E25ED0;
  sub_100102904((a1 + 32));

  std::bad_cast::~bad_cast(a1);
}

void sub_1005DE5C4(uint64_t a1)
{
  *(a1 + 24) = &off_101E25ED0;
  sub_100102904((a1 + 32));
  std::bad_cast::~bad_cast(a1);

  operator delete();
}

void sub_1005DE648(void *a1)
{
  *a1 = &off_101E25ED0;
  v1 = (a1 - 3);
  sub_100102904(a1 + 1);

  std::bad_cast::~bad_cast(v1);
}

void sub_1005DE6A0(void *a1)
{
  *a1 = &off_101E25ED0;
  v1 = (a1 - 3);
  sub_100102904(a1 + 1);
  std::bad_cast::~bad_cast(v1);

  operator delete();
}

void sub_1005DE714(std::bad_cast *a1)
{
  std::bad_cast::~bad_cast(a1);

  operator delete();
}

uint64_t sub_1005DE74C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_101E25E78;
  *(a1 + 8) = &off_101E69338;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = &off_101E25ED0;
  *(a1 + 40) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *a1 = &off_101E692C0;
  *(a1 + 8) = off_101E692F0;
  *(a1 + 32) = off_101E69318;
  return a1;
}

uint64_t sub_1005DE8F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E69360;
  a2[1] = v2;
  return result;
}

void sub_1005DE920(uint64_t a1, uint64_t *a2)
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

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_1005DE9EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005DEAA8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E693E0;
  a2[1] = v2;
  return result;
}

void sub_1005DEAD4(uint64_t a1, uint64_t *a2)
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

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_1005DEBA0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005DEC0C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E69460;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_1005DEC60(uint64_t a1)
{
  sub_1005DECC4(a1 + 112, *(a1 + 120));
  sub_100005978((a1 + 80));
  sub_100005978((a1 + 72));
  sub_100005978((a1 + 48));
  sub_100005978((a1 + 40));

  return sub_100005978((a1 + 24));
}

void sub_1005DECC4(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1005DECC4(a1, *a2);
    sub_1005DECC4(a1, *(a2 + 1));
    sub_100005978(a2 + 9);
    sub_100045C8C(a2 + 8);
    sub_100005978(a2 + 7);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_1005DED40(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1005DEDF4();
  }

  return v2;
}

void *sub_1005DEE94(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFBooleanGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1005DEEF8(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_1005DEF9C();
  }

  return result;
}

void sub_1005DF03C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1005DF058(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1005DF058(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_100005978((a2 + 72));
    sub_100045C8C((a2 + 64));
    sub_100005978((a2 + 56));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_1005DF0F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E694B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1005DF148(uint64_t a1)
{
  sub_1002472DC(a1 + 168, *(a1 + 176));
  v2 = (a1 + 144);
  sub_1000087B4(&v2);
  v2 = (a1 + 120);
  sub_1000087B4(&v2);
  v2 = (a1 + 96);
  sub_1000087B4(&v2);
  v2 = (a1 + 72);
  sub_1000087B4(&v2);
  sub_100009970(a1 + 48, *(a1 + 56));
  sub_100009970(a1 + 24, *(a1 + 32));
}

uint64_t sub_1005DF248(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E69500;
  a2[1] = v2;
  return result;
}

void sub_1005DF274(uint64_t a1, uint64_t *a2)
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

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_1005DF340(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005DF3FC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E69580;
  a2[1] = v2;
  return result;
}

void sub_1005DF428(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10177583C(a2, v3);
  }
}

uint64_t sub_1005DF470(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005DF52C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E69600;
  a2[1] = v2;
  return result;
}

void sub_1005DF558(uint64_t a1, uint64_t *a2)
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

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_1005DF624(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005DF670(void **a1)
{
  v2 = a1;
  v1 = **a1;
  v1[224] = 0;
  (*(*v1 + 88))(v1, 1);
  operator delete();
}

uint64_t sub_1005DF718(uint64_t a1, NSObject **a2, void *a3, void *a4, char a5)
{
  ctu::OsLogContext::OsLogContext(&v19, kCtLoggingSystemName, "cp.r.rx");
  sub_1005DF94C((a1 + 8), a2, &v19);
  ctu::OsLogContext::~OsLogContext(&v19);
  *a1 = off_101E69680;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = *a3;
  v10 = a3[1];
  *(a1 + 104) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = *a4;
  v11 = a4[1];
  *(a1 + 120) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 136) = 0;
  *(a1 + 128) = a5;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 176) = 0;
  sub_10000501C(&__p, "CellularPlanRemoteCommandReceiver");
  v12 = *(a1 + 24);
  v16 = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  v13 = *(a1 + 32);
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  if (v18 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  return a1;
}

void sub_1005DF89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18)
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

  sub_100045B14(v19, *(v18 + 168));
  sub_1005C0EBC(&a18);
  v21 = *(v18 + 120);
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = *(v18 + 104);
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = *(v18 + 88);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = *(v18 + 72);
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = *(v18 + 56);
  if (v25)
  {
    sub_100004A34(v25);
  }

  ctu::OsLogLogger::~OsLogLogger((v18 + 40));
  sub_1000C0544((v18 + 8));
  _Unwind_Resume(a1);
}

void *sub_1005DF94C(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1005DF9B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DF9DC(uint64_t a1)
{
  *a1 = off_101E69680;
  ctu::RestModule::disconnect((a1 + 184));
  sub_1005F0FC4(a1 + 200);
  v2 = *(a1 + 192);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100045B14(a1 + 160, *(a1 + 168));
  v9 = (a1 + 136);
  sub_1005C0EBC(&v9);
  v3 = *(a1 + 120);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    sub_100004A34(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1005DFAAC(uint64_t a1)
{
  sub_1005DF9DC(a1);

  operator delete();
}

void sub_1005DFAE4(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      if (*(a1 + 128))
      {
        return;
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 96));
      v4 = ServiceMap;
      v5 = "38CellularPlanIDSServiceManagerInterface";
      if (("38CellularPlanIDSServiceManagerInterface" & 0x8000000000000000) != 0)
      {
        v6 = ("38CellularPlanIDSServiceManagerInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
      v48 = v5;
      v9 = sub_100009510(&v4[1].__m_.__sig, &v48);
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
LABEL_40:
          (*(*v11 + 16))(&v47, v11);
LABEL_41:
          v43 = v47;
          v47 = 0uLL;
          v44 = *(a1 + 56);
          *(a1 + 48) = v43;
          if (v44)
          {
            sub_100004A34(v44);
            if (*(&v47 + 1))
            {
              sub_100004A34(*(&v47 + 1));
            }
          }

          if ((v12 & 1) == 0)
          {
            sub_100004A34(v10);
          }

          sub_1005DFF20(a1);
          return;
        }
      }

      else
      {
        v11 = 0;
      }

      std::mutex::unlock(v4);
      v10 = 0;
      v12 = 1;
      goto LABEL_40;
    }

    v13 = Registry::getServiceMap(*(a1 + 96));
    v14 = v13;
    v15 = "38CellularPlanIDSServiceManagerInterface";
    if (("38CellularPlanIDSServiceManagerInterface" & 0x8000000000000000) != 0)
    {
      v16 = ("38CellularPlanIDSServiceManagerInterface" & 0x7FFFFFFFFFFFFFFFLL);
      v17 = 5381;
      do
      {
        v15 = v17;
        v18 = *v16++;
        v17 = (33 * v17) ^ v18;
      }

      while (v18);
    }

    std::mutex::lock(v13);
    v48 = v15;
    v19 = sub_100009510(&v14[1].__m_.__sig, &v48);
    if (v19)
    {
      v20 = v19[3];
      v10 = v19[4];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v14);
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v10);
        v12 = 0;
LABEL_24:
        (*(*v20 + 24))(&v47, v20);
        goto LABEL_41;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v14);
    v10 = 0;
    v12 = 1;
    goto LABEL_24;
  }

  v21 = Registry::getServiceMap(*(a1 + 96));
  v22 = v21;
  v23 = "38CellularPlanIDSServiceManagerInterface";
  v24 = "38CellularPlanIDSServiceManagerInterface";
  if (("38CellularPlanIDSServiceManagerInterface" & 0x8000000000000000) != 0)
  {
    v25 = ("38CellularPlanIDSServiceManagerInterface" & 0x7FFFFFFFFFFFFFFFLL);
    v26 = 5381;
    do
    {
      v24 = v26;
      v27 = *v25++;
      v26 = (33 * v26) ^ v27;
    }

    while (v27);
  }

  std::mutex::lock(v21);
  v48 = v24;
  v28 = sub_100009510(&v22[1].__m_.__sig, &v48);
  if (!v28)
  {
    v30 = 0;
    goto LABEL_26;
  }

  v30 = v28[3];
  v29 = v28[4];
  if (!v29)
  {
LABEL_26:
    std::mutex::unlock(v22);
    v29 = 0;
    v31 = 1;
    goto LABEL_27;
  }

  atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v22);
  atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v29);
  v31 = 0;
LABEL_27:
  (*(*v30 + 16))(&v47, v30);
  v32 = v47;
  v47 = 0uLL;
  v33 = *(a1 + 72);
  *(a1 + 64) = v32;
  if (v33)
  {
    sub_100004A34(v33);
    if (*(&v47 + 1))
    {
      sub_100004A34(*(&v47 + 1));
    }
  }

  if ((v31 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  v34 = Registry::getServiceMap(*(a1 + 96));
  v35 = v34;
  if (("38CellularPlanIDSServiceManagerInterface" & 0x8000000000000000) != 0)
  {
    v36 = ("38CellularPlanIDSServiceManagerInterface" & 0x7FFFFFFFFFFFFFFFLL);
    v37 = 5381;
    do
    {
      v23 = v37;
      v38 = *v36++;
      v37 = (33 * v37) ^ v38;
    }

    while (v38);
  }

  std::mutex::lock(v34);
  v48 = v23;
  v39 = sub_100009510(&v35[1].__m_.__sig, &v48);
  if (v39)
  {
    v41 = v39[3];
    v40 = v39[4];
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v35);
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v40);
      v42 = 0;
      goto LABEL_49;
    }
  }

  else
  {
    v41 = 0;
  }

  std::mutex::unlock(v35);
  v40 = 0;
  v42 = 1;
LABEL_49:
  (*(*v41 + 32))(&v47, v41);
  v45 = v47;
  v47 = 0uLL;
  v46 = *(a1 + 88);
  *(a1 + 80) = v45;
  if (v46)
  {
    sub_100004A34(v46);
    if (*(&v47 + 1))
    {
      sub_100004A34(*(&v47 + 1));
    }
  }

  if ((v42 & 1) == 0)
  {
    sub_100004A34(v40);
  }

  sub_1005E01A4(a1);
}

void sub_1005DFEEC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005DFF20(uint64_t a1)
{
  sub_100004AA0(&v13, (a1 + 8));
  v3 = v13;
  v2 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v11[4] = a1;
  v12 = 16;
  v4 = *(a1 + 48);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_1005E05A4;
  v11[3] = &unk_101E696D8;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_1005E0670;
  v9[3] = &unk_101E69728;
  v9[4] = a1;
  v9[5] = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_1005E0D94;
  v7[3] = &unk_101E69788;
  v7[4] = a1;
  v7[5] = v3;
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if ((*(*v4 + 40))(v4, "CellularPlanRemoteCommandReceiver", &v12, v11, v9, v7))
  {
    Registry::createRestModuleOneTimeUseConnection(&v5, *(a1 + 96));
    ctu::RestModule::connect();
    if (v6)
    {
      sub_100004A34(v6);
    }

    sub_1005E1AC4((a1 + 200), a1 + 184);
    v13 = sub_1005E1B28;
    v14 = 0;
    sub_1005F1C84();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017758E0();
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1005E0158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E01A4(uint64_t a1)
{
  sub_100004AA0(&v22, (a1 + 8));
  v3 = v22;
  v2 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v20[4] = a1;
  v21 = 256;
  v4 = *(a1 + 64);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 0x40000000;
  v20[2] = sub_1005E1BB8;
  v20[3] = &unk_101E697B8;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1174405120;
  v18[2] = sub_1005E1BBC;
  v18[3] = &unk_101E69808;
  v18[4] = a1;
  v18[5] = v3;
  v19 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1174405120;
  v16[2] = sub_1005E1E10;
  v16[3] = &unk_101E69868;
  v16[4] = a1;
  v16[5] = v3;
  v17 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (*(*v4 + 40))(v4, "CellularPlanRemoteCommandReceiver", &v21, v20, v18, v16);
  v6 = *(a1 + 80);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = sub_1005E21A4;
  v15[3] = &unk_101E69898;
  v15[4] = a1;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1174405120;
  v13[2] = sub_1005E21A8;
  v13[3] = &unk_101E698E8;
  v13[4] = a1;
  v13[5] = v3;
  v14 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1174405120;
  v11[2] = sub_1005E249C;
  v11[3] = &unk_101E69948;
  v11[4] = a1;
  v11[5] = v3;
  v12 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*v6 + 40))(v6, "CellularPlanRemoteCommandReceiver", &v21, v15, v13, v11);
  if ((v5 & v7 & 1) == 0)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_101775914(v5, v7, v8);
    }
  }

  if ((v5 | v7))
  {
    Registry::createRestModuleOneTimeUseConnection(&v9, *(a1 + 96));
    ctu::RestModule::connect();
    if (v10)
    {
      sub_100004A34(v10);
    }

    v22 = sub_1005E1B28;
    v23 = 0;
    sub_1005F1C84();
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1005E0538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_weak(a37);
  }

  v40 = *(v38 - 136);
  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1005E05A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 55);
  if (v2 >= 0)
  {
    v3 = (a2 + 32);
  }

  else
  {
    v3 = *(a2 + 32);
  }

  v4 = *(a2 + 40);
  if (v2 >= 0)
  {
    v4 = *(a2 + 55);
  }

  if (v4 >= 5)
  {
    v6 = &v3[v4];
    v7 = v3;
    do
    {
      v8 = memchr(v7, 80, v4 - 4);
      if (!v8)
      {
        break;
      }

      if (*v8 == 1852794960 && v8[4] == 101)
      {
        if (v8 != v6)
        {
          v10 = (v8 - v3);
          result = *(a2 + 58) > 0xAu;
          if (v10 != -1)
          {
            return result;
          }
        }

        return 0;
      }

      v7 = v8 + 1;
      v4 = v6 - v7;
    }

    while (v6 - v7 >= 5);
  }

  return 0;
}

void sub_1005E0670(uint64_t a1, uint64_t *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1174405120;
  v5[2] = sub_1005E0800;
  v5[3] = &unk_101E696F8;
  v4 = *(a1 + 32);
  v6 = v4;
  v2 = *(a1 + 48);
  v7 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v8, 0, sizeof(v8));
  sub_1005F1008(v8, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
  v11 = 0;
  v12 = 0;
  sub_100004AA0(&v11, (v4 + 8));
  v3 = *(v4 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005F1754;
  block[3] = &unk_101E69D18;
  block[5] = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v3, block);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  block[0] = v8;
  sub_1005C0EBC(block);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1005E07E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E0800(void *a1)
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
        if (*(v3 + 128) == 1)
        {
          v6 = *(v3 + 255);
          if (v6 < 0)
          {
            v6 = *(v3 + 240);
          }

          if (!v6)
          {
            (*(**(v3 + 48) + 72))(__p);
            sub_1005E09C8(v3 + 200, __p);
            if (v11 < 0)
            {
              operator delete(__p[0]);
            }

            v7 = *(v3 + 40);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v8 = (v3 + 232);
              if (*(v3 + 255) < 0)
              {
                v8 = *v8;
              }

              LODWORD(__p[0]) = 136315138;
              *(__p + 4) = v8;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Local IDS device Id: [%s]", __p, 0xCu);
            }
          }
        }

        memset(v9, 0, sizeof(v9));
        sub_1005F1008(v9, a1[7], a1[8], 0xAAAAAAAAAAAAAAABLL * ((a1[8] - a1[7]) >> 5));
        sub_1005E0A5C(v3, v9);
        __p[0] = v9;
        sub_1005C0EBC(__p);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005E0984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E09C8(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v4 = *a2;
  *(a1 + 48) = *(a2 + 2);
  *(a1 + 32) = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  result = *(a1 + 24);
  if (result)
  {
    v6 = *(*result + 48);

    return v6();
  }

  return result;
}

void sub_1005E0A5C(uint64_t a1, std::string **a2)
{
  v4 = (a1 + 136);
  if (v4 != a2)
  {
    sub_1005C12F0(v4, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
  }

  if ((*(a1 + 256) & 1) == 0)
  {
    v11 = *(a1 + 40);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v12 = "#I Device not first unlocked yet, can't send IDS message";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    return;
  }

  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    while ((v5[1].__r_.__value_.__s.__data_[0] & 1) == 0)
    {
      v5 += 4;
      if (v5 == v6)
      {
        goto LABEL_18;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_18:
    v11 = *(a1 + 40);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v12 = "#I No Devices in proximity";
    goto LABEL_20;
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 112);
      if (v10)
      {
        *buf = 0;
        v16 = 0;
        v17 = 0;
        v14 = 0;
        v19[0] = 0;
        (*(*v10 + 104))(v10, v19, buf, &v14);
        if (v19[0] == 1)
        {
          v19[0] = 0;
        }

        memset(v13, 0, sizeof(v13));
        sub_10027E628(v13, *buf, v16, 0x2E8BA2E8BA2E8BA3 * ((v16 - *buf) >> 3));
        sub_1005E2E68(a1, v13, &v14);
        v18 = v13;
        sub_100112048(&v18);
        v18 = buf;
        sub_100112048(&v18);
      }

      sub_100004A34(v9);
    }
  }
}

void sub_1005E0C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  sub_100112048(&a16);
  a16 = &a13;
  sub_100112048(&a16);
  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E0CA8(void *a1, void *a2)
{
  v2 = a2[6];
  a1[5] = a2[5];
  a1[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  return sub_1005F1008((a1 + 7), a2[7], a2[8], 0xAAAAAAAAAAAAAAABLL * ((a2[8] - a2[7]) >> 5));
}

void sub_1005E0D0C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E0D24(uint64_t a1)
{
  v3 = (a1 + 56);
  sub_1005C0EBC(&v3);
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_1005E0D68(uint64_t result, uint64_t a2)
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

void sub_1005E0D84(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1005E0D94(uint64_t a1, __int128 *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_1005E0FC4;
  v6[3] = &unk_101E69758;
  v5 = *(a1 + 32);
  v7 = v5;
  v3 = *(a1 + 48);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v9, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    __p = *(a2 + 24);
    v12 = *(a2 + 5);
  }

  v13 = *(a2 + 24);
  sub_10002D728(&v14, a2 + 7);
  sub_1002030F8(&v15, a2 + 8);
  v16[0] = *(a2 + 9);
  *(v16 + 6) = *(a2 + 78);
  v19 = 0;
  v20 = 0;
  sub_100004AA0(&v19, (v5 + 8));
  v4 = *(v5 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005F1754;
  block[3] = &unk_101E69D18;
  block[5] = v19;
  v18 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v4, block);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  sub_1002030AC(&v15);
  sub_10002D760(&v14);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_1005E0F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E0FC4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        if (*(a1 + 79) < 0)
        {
          sub_100005F2C(v6, *(a1 + 56), *(a1 + 64));
        }

        else
        {
          *v6 = *(a1 + 56);
          v7 = *(a1 + 72);
        }

        if (*(a1 + 103) < 0)
        {
          sub_100005F2C(__p, *(a1 + 80), *(a1 + 88));
        }

        else
        {
          *__p = *(a1 + 80);
          v9 = *(a1 + 96);
        }

        v10 = *(a1 + 104);
        sub_10002D728(&v11, (a1 + 112));
        sub_1002030F8(&v12, (a1 + 120));
        v13[0] = *(a1 + 128);
        *(v13 + 6) = *(a1 + 134);
        sub_1005E111C(v3, v6);
        sub_1002030AC(&v12);
        sub_10002D760(&v11);
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v7) < 0)
        {
          operator delete(v6[0]);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005E10E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E111C(uint64_t a1, __int128 *a2)
{
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  sub_1009BD270(&v62);
  memset(v61, 0, sizeof(v61));
  BytePtr = CFDataGetBytePtr(*(a2 + 7));
  Length = CFDataGetLength(*(a2 + 7));
  PB::Reader::Reader(v61, BytePtr, Length);
  if (sub_1009BE33C(&v62, v61))
  {
    if (*(&v63 + 1))
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v44, *a2, *(a2 + 1));
      }

      else
      {
        v44 = *a2;
        v45 = *(a2 + 2);
      }

      if (*(a2 + 47) < 0)
      {
        sub_100005F2C(&v46, *(a2 + 3), *(a2 + 4));
      }

      else
      {
        v46 = *(a2 + 24);
        v47 = *(a2 + 5);
      }

      v48 = *(a2 + 24);
      sub_10002D728(&v49, a2 + 7);
      sub_1002030F8(&v50, a2 + 8);
      v51[0] = *(a2 + 9);
      *(v51 + 6) = *(a2 + 78);
      sub_1005E3468(a1, &v44);
      sub_1002030AC(&v50);
      sub_10002D760(&v49);
      if (SHIBYTE(v47) < 0)
      {
        operator delete(v46);
      }

      if (SHIBYTE(v45) < 0)
      {
        v6 = v44;
        goto LABEL_60;
      }
    }

    else if (*(&v62 + 1))
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v36, *a2, *(a2 + 1));
      }

      else
      {
        v36 = *a2;
        v37 = *(a2 + 2);
      }

      if (*(a2 + 47) < 0)
      {
        sub_100005F2C(&v38, *(a2 + 3), *(a2 + 4));
      }

      else
      {
        v38 = *(a2 + 24);
        v39 = *(a2 + 5);
      }

      v40 = *(a2 + 24);
      sub_10002D728(&v41, a2 + 7);
      sub_1002030F8(&v42, a2 + 8);
      v43[0] = *(a2 + 9);
      *(v43 + 6) = *(a2 + 78);
      sub_1005E3A20(a1, &v36, &v62);
      sub_1002030AC(&v42);
      sub_10002D760(&v41);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38);
      }

      if (SHIBYTE(v37) < 0)
      {
        v6 = v36;
        goto LABEL_60;
      }
    }

    else if (*(&v68 + 1))
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v28, *a2, *(a2 + 1));
      }

      else
      {
        v28 = *a2;
        v29 = *(a2 + 2);
      }

      if (*(a2 + 47) < 0)
      {
        sub_100005F2C(&v30, *(a2 + 3), *(a2 + 4));
      }

      else
      {
        v30 = *(a2 + 24);
        v31 = *(a2 + 5);
      }

      v32 = *(a2 + 24);
      sub_10002D728(&v33, a2 + 7);
      sub_1002030F8(&v34, a2 + 8);
      v35[0] = *(a2 + 9);
      *(v35 + 6) = *(a2 + 78);
      sub_1005E42A4(a1, &v28, &v62);
      sub_1002030AC(&v34);
      sub_10002D760(&v33);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30);
      }

      if (SHIBYTE(v29) < 0)
      {
        v6 = v28;
        goto LABEL_60;
      }
    }

    else if (v63)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v20, *a2, *(a2 + 1));
      }

      else
      {
        v20 = *a2;
        v21 = *(a2 + 2);
      }

      if (*(a2 + 47) < 0)
      {
        sub_100005F2C(&v22, *(a2 + 3), *(a2 + 4));
      }

      else
      {
        v22 = *(a2 + 24);
        v23 = *(a2 + 5);
      }

      v24 = *(a2 + 24);
      sub_10002D728(&v25, a2 + 7);
      sub_1002030F8(&v26, a2 + 8);
      v27[0] = *(a2 + 9);
      *(v27 + 6) = *(a2 + 78);
      sub_1005E4C68(a1, &v20, &v62);
      sub_1002030AC(&v26);
      sub_10002D760(&v25);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }

      if (SHIBYTE(v21) < 0)
      {
        v6 = v20;
        goto LABEL_60;
      }
    }

    else
    {
      if (v68)
      {
        sub_1005ACCF0(v19, a2);
        sub_1005E5488(a1, v19, &v62);
        v7 = v19;
      }

      else if (*(&v65 + 1))
      {
        sub_1005ACCF0(v18, a2);
        sub_1005E63E8(a1, v18, &v62);
        v7 = v18;
      }

      else if (*(&v64 + 1))
      {
        sub_1005ACCF0(v17, a2);
        sub_1005E7034(a1, v17);
        v7 = v17;
      }

      else if (v67)
      {
        sub_1005ACCF0(v16, a2);
        sub_1005E7D2C(a1, v16, &v62);
        v7 = v16;
      }

      else if (v64)
      {
        sub_1005ACCF0(v15, a2);
        sub_1005E8414(a1, v15, &v62);
        v7 = v15;
      }

      else if (*(&v67 + 1))
      {
        sub_1005ACCF0(v14, a2);
        sub_1005E8B04(a1, v14, &v62);
        v7 = v14;
      }

      else if (v69)
      {
        sub_1005ACCF0(v13, a2);
        sub_1005E91F4(a1, v13, &v62);
        v7 = v13;
      }

      else if (v65)
      {
        sub_1005ACCF0(v12, a2);
        sub_1005E9A38(a1, v12, &v62);
        v7 = v12;
      }

      else if (v66)
      {
        sub_1005ACCF0(v11, a2);
        sub_1005EA368(a1, v11, &v62);
        v7 = v11;
      }

      else if (*(&v66 + 1))
      {
        sub_1005ACCF0(v10, a2);
        sub_1005EAB3C(a1, v10, &v62);
        v7 = v10;
      }

      else
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_1017759D8();
        }

        sub_1005ACCF0(v9, a2);
        sub_100A34C5C(v52);
        sub_1005E31C8(a1, v9, v52);
        sub_100A34FF0(v52);
        v7 = v9;
      }

      sub_1005AD788(v7);
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017759A4();
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&__dst, *a2, *(a2 + 1));
    }

    else
    {
      __dst = *a2;
      v54 = *(a2 + 2);
    }

    if (*(a2 + 47) < 0)
    {
      sub_100005F2C(&__p, *(a2 + 3), *(a2 + 4));
    }

    else
    {
      __p = *(a2 + 24);
      v56 = *(a2 + 5);
    }

    v57 = *(a2 + 24);
    sub_10002D728(&v58, a2 + 7);
    sub_1002030F8(&v59, a2 + 8);
    v60[0] = *(a2 + 9);
    *(v60 + 6) = *(a2 + 78);
    sub_100A34C5C(v52);
    sub_1005E31C8(a1, &__dst, v52);
    sub_100A34FF0(v52);
    sub_1002030AC(&v59);
    sub_10002D760(&v58);
    if (SHIBYTE(v56) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v54) < 0)
    {
      v6 = __dst;
LABEL_60:
      operator delete(v6);
    }
  }

  return sub_1009BD5D4(&v62);
}

void sub_1005E1814(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100A34FF0(&STACK[0x548]);
  sub_1005AD788(va);
  sub_1009BD5D4((v2 - 192));
  _Unwind_Resume(a1);
}

const void **sub_1005E1964(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    sub_100005F2C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v6;
  }

  *(a1 + 104) = *(a2 + 104);
  sub_10002D728((a1 + 112), (a2 + 112));
  result = sub_1002030F8((a1 + 120), (a2 + 120));
  v8 = *(a2 + 128);
  *(a1 + 134) = *(a2 + 134);
  *(a1 + 128) = v8;
  return result;
}

void sub_1005E1A20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E1A50(uint64_t a1)
{
  sub_1002030AC((a1 + 120));
  sub_10002D760((a1 + 112));
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_1005E1AC4(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_1005F1790(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void sub_1005E1B28(uint64_t a1)
{
  if (*(a1 + 256) == 1)
  {
    memset(v2, 0, sizeof(v2));
    sub_1005F1008(v2, *(a1 + 136), *(a1 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 5));
    sub_1005E0A5C(a1, v2);
    v3 = v2;
    sub_1005C0EBC(&v3);
  }
}

void sub_1005E1BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1005C0EBC(va);
  _Unwind_Resume(a1);
}

void sub_1005E1BBC(uint64_t a1, uint64_t *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1174405120;
  v5[2] = sub_1005E1D4C;
  v5[3] = &unk_101E697D8;
  v4 = *(a1 + 32);
  v6 = v4;
  v2 = *(a1 + 48);
  v7 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v8, 0, sizeof(v8));
  sub_1005F1008(v8, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
  v11 = 0;
  v12 = 0;
  sub_100004AA0(&v11, (v4 + 8));
  v3 = *(v4 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005F1754;
  block[3] = &unk_101E69D18;
  block[5] = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v3, block);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  block[0] = v8;
  sub_1005C0EBC(block);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1005E1D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E1D4C(void *a1)
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
        memset(v6, 0, sizeof(v6));
        sub_1005F1008(v6, a1[7], a1[8], 0xAAAAAAAAAAAAAAABLL * ((a1[8] - a1[7]) >> 5));
        sub_1005E0A5C(v3, v6);
        v7 = v6;
        sub_1005C0EBC(&v7);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005E1DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1005C0EBC(va);
  sub_100004A34(v4);
  _Unwind_Resume(a1);
}

void sub_1005E1E10(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 32);
  *(a2 + 72) = 2;
  v4 = a2 + 9;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1174405120;
  v8[2] = sub_1005E204C;
  v8[3] = &unk_101E69838;
  v7 = v3;
  v9 = v3;
  v5 = *(a1 + 48);
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v11, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    v12 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    __p = *(a2 + 24);
    v14 = *(a2 + 5);
  }

  v15 = *(a2 + 24);
  sub_10002D728(&v16, a2 + 7);
  sub_1002030F8(&v17, a2 + 8);
  v18[0] = *v4;
  *(v18 + 6) = *(v4 + 6);
  v21 = 0;
  v22 = 0;
  sub_100004AA0(&v21, (v7 + 8));
  v6 = *(v7 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005F1754;
  block[3] = &unk_101E69D18;
  block[5] = v21;
  v20 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v8;
  dispatch_async(v6, block);
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

  sub_1002030AC(&v17);
  sub_10002D760(&v16);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_1005E2018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E204C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        if (*(a1 + 79) < 0)
        {
          sub_100005F2C(v6, *(a1 + 56), *(a1 + 64));
        }

        else
        {
          *v6 = *(a1 + 56);
          v7 = *(a1 + 72);
        }

        if (*(a1 + 103) < 0)
        {
          sub_100005F2C(__p, *(a1 + 80), *(a1 + 88));
        }

        else
        {
          *__p = *(a1 + 80);
          v9 = *(a1 + 96);
        }

        v10 = *(a1 + 104);
        sub_10002D728(&v11, (a1 + 112));
        sub_1002030F8(&v12, (a1 + 120));
        v13[0] = *(a1 + 128);
        *(v13 + 6) = *(a1 + 134);
        sub_1005E111C(v3, v6);
        sub_1002030AC(&v12);
        sub_10002D760(&v11);
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v7) < 0)
        {
          operator delete(v6[0]);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005E2168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void sub_1005E21A8(uint64_t a1, uint64_t *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1174405120;
  v5[2] = sub_1005E2338;
  v5[3] = &unk_101E698B8;
  v4 = *(a1 + 32);
  v6 = v4;
  v2 = *(a1 + 48);
  v7 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v8, 0, sizeof(v8));
  sub_1005F1008(v8, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
  v11 = 0;
  v12 = 0;
  sub_100004AA0(&v11, (v4 + 8));
  v3 = *(v4 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005F1754;
  block[3] = &unk_101E69D18;
  block[5] = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v3, block);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  block[0] = v8;
  sub_1005C0EBC(block);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1005E2320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E2338(void *a1)
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
        memset(v6, 0, sizeof(v6));
        sub_1005F1008(v6, a1[7], a1[8], 0xAAAAAAAAAAAAAAABLL * ((a1[8] - a1[7]) >> 5));
        sub_1005E23E8(v3, v6);
        v7 = v6;
        sub_1005C0EBC(&v7);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005E23E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Number of linked devices: %lu", &v5, 0xCu);
  }
}

void sub_1005E249C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 32);
  *(a2 + 72) = 1;
  v4 = a2 + 9;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1174405120;
  v8[2] = sub_1005E26D8;
  v8[3] = &unk_101E69918;
  v7 = v3;
  v9 = v3;
  v5 = *(a1 + 48);
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v11, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    v12 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    __p = *(a2 + 24);
    v14 = *(a2 + 5);
  }

  v15 = *(a2 + 24);
  sub_10002D728(&v16, a2 + 7);
  sub_1002030F8(&v17, a2 + 8);
  v18[0] = *v4;
  *(v18 + 6) = *(v4 + 6);
  v21 = 0;
  v22 = 0;
  sub_100004AA0(&v21, (v7 + 8));
  v6 = *(v7 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005F1754;
  block[3] = &unk_101E69D18;
  block[5] = v21;
  v20 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v8;
  dispatch_async(v6, block);
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

  sub_1002030AC(&v17);
  sub_10002D760(&v16);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_1005E26A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E26D8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        if (*(a1 + 79) < 0)
        {
          sub_100005F2C(v6, *(a1 + 56), *(a1 + 64));
        }

        else
        {
          *v6 = *(a1 + 56);
          v7 = *(a1 + 72);
        }

        if (*(a1 + 103) < 0)
        {
          sub_100005F2C(__p, *(a1 + 80), *(a1 + 88));
        }

        else
        {
          *__p = *(a1 + 80);
          v9 = *(a1 + 96);
        }

        v10 = *(a1 + 104);
        sub_10002D728(&v11, (a1 + 112));
        sub_1002030F8(&v12, (a1 + 120));
        v13[0] = *(a1 + 128);
        *(v13 + 6) = *(a1 + 134);
        sub_1005E111C(v3, v6);
        sub_1002030AC(&v12);
        sub_10002D760(&v11);
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v7) < 0)
        {
          operator delete(v6[0]);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005E27F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E2830(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  switch(v2)
  {
    case 3:
      return 0;
    case 2:
      *v20 = 0u;
      v21 = 0u;
      *v18 = 0u;
      v19 = 0u;
      memset(v17, 0, sizeof(v17));
      v5 = *(a1 + 136);
      v6 = *(a1 + 144);
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        v16 = *(a2 + 16);
      }

      v7 = HIBYTE(v16);
      if (v5 != v6)
      {
        if (v16 >= 0)
        {
          v8 = HIBYTE(v16);
        }

        else
        {
          v8 = __p[1];
        }

        if (v16 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        while (1)
        {
          v10 = *(v5 + 23);
          v11 = v10;
          if ((v10 & 0x80u) != 0)
          {
            v10 = *(v5 + 8);
          }

          if (v8 == v10)
          {
            v12 = v11 >= 0 ? v5 : *v5;
            if (!memcmp(v9, v12, v8))
            {
              break;
            }
          }

          v5 += 96;
          if (v5 == v6)
          {
            v5 = v6;
            break;
          }
        }
      }

      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      if (v5 != *(a1 + 144))
      {
        std::string::operator=(v17, v5);
        v13 = *(v5 + 24);
        v17[26] = *(v5 + 26);
        *&v17[24] = v13;
        std::string::operator=(v18, (v5 + 32));
        DWORD2(v19) = *(v5 + 56);
        std::string::operator=(v20, (v5 + 64));
        BYTE8(v21) = *(v5 + 88);
      }

      if (v17[26] == 1 && (v17[24] & 1) != 0)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }

      if (SBYTE7(v21) < 0)
      {
        operator delete(v20[0]);
      }

      if (SBYTE7(v19) < 0)
      {
        operator delete(v18[0]);
      }

      if ((v17[23] & 0x80000000) != 0)
      {
        operator delete(*v17);
      }

      break;
    case 1:
      return 0;
    default:
      return 2;
  }

  return v3;
}

void sub_1005E29F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001F7CFC(va);
  _Unwind_Resume(a1);
}

void sub_1005E2A08(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 80) == 1)
  {
    v6 = *(a2 + 56);
    v5 = *(a2 + 64);
    if (v6 != v5)
    {
      while ((*(v6 + 90) & 1) == 0)
      {
        v6 += 216;
        if (v6 == v5)
        {
          v6 = *(a2 + 64);
          break;
        }
      }
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
    v33 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &v33);
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
        v16 = 0;
LABEL_14:
        if (v6 == *(a2 + 64) || !v15)
        {
          goto LABEL_39;
        }

        theDict = 0;
        if (*(v6 + 39) < 0)
        {
          sub_100005F2C(__p, *(v6 + 16), *(v6 + 24));
        }

        else
        {
          *__p = *(v6 + 16);
          v37 = *(v6 + 32);
        }

        (**v15)(&v30, v15, __p);
        (*(v30->isa + 5))(&v33);
        v35 = theDict;
        theDict = v34;
        *&v34 = 0;
        sub_10001021C(&v35);
        v17 = BYTE8(v34);
        sub_10001021C(&v34);
        if (v31)
        {
          sub_100004A34(v31);
        }

        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
          if (!v17)
          {
LABEL_38:
            sub_10001021C(&theDict);
LABEL_39:
            if ((v16 & 1) == 0)
            {
              sub_100004A34(v14);
            }

            return;
          }
        }

        else if (!v17)
        {
          goto LABEL_38;
        }

        if (theDict)
        {
          Value = CFDictionaryGetValue(theDict, kCTProvisioningURL);
          v19 = Value;
          if (Value)
          {
            v20 = CFGetTypeID(Value);
            if (v20 == CFDictionaryGetTypeID())
            {
              v21 = a3[1];
              if (v21 >= a3[2])
              {
                v22 = sub_1005F1090(a3);
              }

              else
              {
                v21[3] = 0u;
                v21[4] = 0u;
                v21[1] = 0u;
                v21[2] = 0u;
                *v21 = 0u;
                v22 = (v21 + 5);
              }

              a3[1] = v22;
              std::string::operator=((v22 - 80), (v6 + 16));
              CFDictionaryGetValue(v19, kCTWebSheetURL);
              v33 = 0;
              v34 = 0uLL;
              ctu::cf::assign();
              v23 = v33;
              __p[0] = v34;
              *(__p + 7) = *(&v34 + 7);
              v24 = HIBYTE(v34);
              if (*(v22 - 33) < 0)
              {
                operator delete(*(v22 - 56));
              }

              *(v22 - 56) = v23;
              *(v22 - 48) = __p[0];
              *(v22 - 41) = *(__p + 7);
              *(v22 - 33) = v24;
              v25 = CFDictionaryGetValue(v19, kCTWebSheetPostData);
              v26 = v25;
              if (v25)
              {
                v27 = CFGetTypeID(v25);
                if (v27 == CFDataGetTypeID())
                {
                  v30 = CFStringCreateFromExternalRepresentation(0, v26, 0x600u);
                  v33 = 0;
                  v34 = 0uLL;
                  ctu::cf::assign();
                  v28 = v33;
                  __p[0] = v34;
                  *(__p + 7) = *(&v34 + 7);
                  v29 = HIBYTE(v34);
                  if (*(v22 - 9) < 0)
                  {
                    operator delete(*(v22 - 32));
                  }

                  *(v22 - 32) = v28;
                  *(v22 - 24) = __p[0];
                  *(v22 - 17) = *(__p + 7);
                  *(v22 - 9) = v29;
                  sub_100005978(&v30);
                }
              }
            }
          }
        }

        goto LABEL_38;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_14;
  }
}

void sub_1005E2DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  sub_10001021C(&a12);
  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_1005E2E68(uint64_t a1, int **a2, _BYTE *a3)
{
  v5 = *(a1 + 136);
  if (v5 == *(a1 + 144))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101775A74();
    }
  }

  else
  {
    __p = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    __dst = 0u;
    v23 = 0u;
    sub_1005C1568(&__dst, v5);
    if (*(a1 + 128) == 2 || (BYTE8(v23) & 1) != 0)
    {
      v21 = 0u;
      memset(v20, 0, sizeof(v20));
      sub_100806978(v20);
      sub_1008072AC(v20);
      v7 = *a2;
      v8 = a2[1];
      if (*a2 != v8)
      {
        do
        {
          if (*v7)
          {
            v18 = 0u;
            v19 = 0u;
            v16 = 0u;
            v17 = 0u;
            *buf = 0u;
            v15 = 0u;
            sub_10013F668(buf);
            memset(v13, 0, sizeof(v13));
            if (*(a1 + 128) == 2)
            {
              sub_1005E2A08(a1, v7, v13);
            }

            LOBYTE(v28[0]) = 0;
            sub_10039EA60(v7, v13, v28, buf);
            if (LOBYTE(v28[0]) == 1)
            {
              sub_100111E24(v32, v32[1]);
              if (v31 < 0)
              {
                operator delete(v30);
              }

              if (v29 < 0)
              {
                operator delete(v28[2]);
              }
            }

            sub_1005EE2D4();
          }

          v9 = *(a1 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Invalid card type - not sending", buf, 2u);
          }

          v7 += 22;
        }

        while (v7 != v8);
      }

      v10 = *(&v21 + 1);
      if (*(*(&v21 + 1) + 8) == *(*(&v21 + 1) + 16))
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101775A40();
        }
      }

      else
      {
        if (*a3 == 1)
        {
          v11 = a3[1];
          *(*(&v21 + 1) + 36) |= 1u;
          *(v10 + 32) = v11;
        }

        v12 = *(a1 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I [VinylInfoInd]", buf, 2u);
        }

        sub_1005EF7E8(a1, &__dst, v20);
      }

      sub_100806B4C(v20);
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101775A0C();
    }

    if (SBYTE7(v27) < 0)
    {
      operator delete(__p);
    }

    if (SBYTE7(v25) < 0)
    {
      operator delete(v24);
    }

    if (SBYTE7(v23) < 0)
    {
      operator delete(__dst);
    }
  }
}

void sub_1005E3174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_100806B4C(&a25);
  sub_1001F7CFC(&a33);
  _Unwind_Resume(a1);
}

void sub_1005E31C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *cf = 0u;
  *v21 = 0u;
  *&v21[20] = 0;
  memset(v19, 0, sizeof(v19));
  v21[8] = 2;
  *&v21[12] = 0x50000003CLL;
  std::string::operator=(v19, a2);
  std::string::operator=(&v19[1], (a2 + 24));
  LOWORD(cf[0]) = *(a2 + 48);
  v6 = *(a1 + 128);
  switch(v6)
  {
    case 3:
      goto LABEL_4;
    case 2:
      v7 = *(a2 + 72);
      break;
    case 1:
LABEL_4:
      v7 = 0;
      break;
    default:
      v7 = 2;
      break;
  }

  v21[8] = v7;
  sub_1005F1F2C(a3, &v18);
  v22 = cf[1];
  cf[1] = v18;
  v18 = 0;
  sub_10002D760(&v22);
  sub_10002D760(&v18);
  if (*(a1 + 128) != 2)
  {
    goto LABEL_15;
  }

  if (v21[8] != 1)
  {
    v9 = *(a1 + 64);
    v8 = *(a1 + 72);
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  if (v8)
  {
LABEL_12:
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_13:
  v10 = *(a1 + 56);
  *(a1 + 48) = v9;
  *(a1 + 56) = v8;
  if (v10)
  {
    sub_100004A34(v10);
  }

LABEL_15:
  v11 = *(a1 + 48);
  if (SHIBYTE(v19[0].__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v12, v19[0].__r_.__value_.__l.__data_, v19[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = v19[0];
  }

  if (SHIBYTE(v19[1].__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, v19[1].__r_.__value_.__l.__data_, v19[1].__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v19[1];
  }

  v14 = cf[0];
  v15 = cf[1];
  if (cf[1])
  {
    CFRetain(cf[1]);
  }

  v16 = *v21;
  if (*v21)
  {
    CFRetain(*v21);
  }

  v17[0] = *&v21[8];
  *(v17 + 6) = *&v21[14];
  (*(*v11 + 48))(v11, &v12, 0);
  sub_1002030AC(&v16);
  sub_10002D760(&v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  sub_1002030AC(v21);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v19[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19[0].__r_.__value_.__l.__data_);
  }
}

void sub_1005E3420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1005AD788(&a24);
  _Unwind_Resume(a1);
}

void sub_1005E3468(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [DeviceInfoReq]", buf, 2u);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(a1 + 112);
      if (v7)
      {
        v34[0] = 0;
        v34[1] = 0;
        v35[0] = 0;
        v49 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        *buf = 0u;
        v42 = 0u;
        v25 = 0;
        v40[0] = 0;
        (*(*v7 + 104))(v7, v40, v34, &v25);
        if (v40[0] == 1)
        {
          v40[0] = 0;
        }

        sub_100004AA0(&v50, (a1 + 8));
        v9 = v50;
        v8 = v51;
        if (v51)
        {
          atomic_fetch_add_explicit(&v51->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v8);
        }

        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1174405120;
        v13[2] = sub_1005EE948;
        v13[3] = &unk_101E69C18;
        v13[4] = a1;
        v13[5] = v9;
        v14 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        memset(v15, 0, sizeof(v15));
        sub_10027E628(v15, v34[0], v34[1], 0x2E8BA2E8BA2E8BA3 * ((v34[1] - v34[0]) >> 3));
        v24 = v25;
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(v16, *a2, *(a2 + 8));
        }

        else
        {
          *v16 = *a2;
          v17 = *(a2 + 16);
        }

        if (*(a2 + 47) < 0)
        {
          sub_100005F2C(v18, *(a2 + 24), *(a2 + 32));
        }

        else
        {
          *v18 = *(a2 + 24);
          v19 = *(a2 + 40);
        }

        v20 = *(a2 + 48);
        sub_10002D728(&v21, (a2 + 56));
        sub_1002030F8(&v22, (a2 + 64));
        v23[0] = *(a2 + 72);
        *(v23 + 6) = *(a2 + 78);
        (*(*v7 + 96))(v7, v13);
        sub_1002030AC(&v22);
        sub_10002D760(&v21);
        if (SHIBYTE(v19) < 0)
        {
          operator delete(v18[0]);
        }

        if (SHIBYTE(v17) < 0)
        {
          operator delete(v16[0]);
        }

        v50 = v15;
        sub_100112048(&v50);
        if (v14)
        {
          std::__shared_weak_count::__release_weak(v14);
        }

        if (v8)
        {
          std::__shared_weak_count::__release_weak(v8);
        }

        *buf = v34;
        sub_100112048(buf);
LABEL_46:
        sub_100004A34(v6);
        return;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  *buf = 0u;
  v42 = 0u;
  sub_100A34C5C(buf);
  v37 = 0u;
  *v38 = 0u;
  v39 = 0;
  *v35 = 0u;
  v36 = 0u;
  *v34 = 0u;
  v38[8] = 2;
  *&v38[12] = 0x50000003CLL;
  sub_100A3613C(v10);
  v11 = *(&v42 + 1);
  *(*(&v42 + 1) + 68) |= 1u;
  *(v11 + 48) = 18;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v12 = asString();
    sub_101775AA8(v12, &v50);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v27 = *(a2 + 16);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    __p = *(a2 + 24);
    v29 = *(a2 + 40);
  }

  v30 = *(a2 + 48);
  sub_10002D728(&v31, (a2 + 56));
  sub_1002030F8(&v32, (a2 + 64));
  v33[0] = *(a2 + 72);
  *(v33 + 6) = *(a2 + 78);
  sub_1005E31C8(a1, __dst, buf);
  sub_1002030AC(&v32);
  sub_10002D760(&v31);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_1002030AC(v38);
  sub_10002D760(&v37 + 1);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[1]);
  }

  if (SHIBYTE(v35[0]) < 0)
  {
    operator delete(v34[0]);
  }

  sub_100A34FF0(buf);
  if (v6)
  {
    goto LABEL_46;
  }
}