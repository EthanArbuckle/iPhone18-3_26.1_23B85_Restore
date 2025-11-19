void sub_10034D750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, const void *a11, void *__p, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t a21, uint64_t a22)
{
  std::mutex::unlock(v22 + 7);
  sub_1000296E0(&a11);
  sub_10001021C(&__p);
  sub_1000296E0(&a15);
  sub_10001021C((v24 + 8));
  sub_10001021C((v23 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_10034D890(uint64_t a1, void *a2)
{
  result = sub_10112CDBC(a2, (**(a1 + 80) + 24));
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = **(a1 + 80);
      if (v5)
      {
        v6 = PersonalityInfo::logPrefix(v5);
      }

      else
      {
        v6 = "-1";
      }

      v7 = 136315394;
      v8 = v6;
      v9 = 2080;
      v10 = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%shandlePSASChangedNotification", &v7, 0x16u);
    }

    return (*(*a1 + 384))(a1, 0);
  }

  return result;
}

uint64_t sub_10034D9AC(uint64_t a1)
{
  (*(*a1 + 472))(&cf);
  v1 = cf;
  v6 = 0;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v6, v1, v3);
      LOBYTE(v1) = v6;
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  sub_10000A1EC(&cf);
  return v1 & 1;
}

uint64_t sub_10034DA68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = result;
  if (result)
  {
    *a2 = result;
    *&v24 = 0;
    result = sub_1000296E0(&v24);
  }

  if (*(a1 + 344) == 1)
  {
    result = sub_10034AFC4(a1);
    if ((result & 1) == 0)
    {
      if (sub_10034B404(a1) != 1 || (sub_10034D9AC(a1) & 1) != 0 || (result = sub_10034AFC4(a1), (result & 1) == 0) && (*(a1 + 344) != 1 || *(a1 + 260) != 1 || *(a1 + 256) != 2))
      {
        theDict = 0;
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v7 = theDict;
          theDict = Mutable;
          *&v24 = v7;
          sub_1000296E0(&v24);
        }

        if (*(a1 + 216) == 1)
        {
          v8 = theDict;
          if (*(a1 + 215) < 0)
          {
            sub_100005F2C(__dst, *(a1 + 192), *(a1 + 200));
          }

          else
          {
            *__dst = *(a1 + 192);
            v18 = *(a1 + 208);
          }

          if (SHIBYTE(v18) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v23 = v18;
          }

          v21 = 0;
          if (SHIBYTE(v23) < 0)
          {
            sub_100005F2C(&v24, __p[0], __p[1]);
          }

          else
          {
            v24 = *__p;
            v25 = v23;
          }

          v26 = 0;
          if (ctu::cf::convert_copy())
          {
            v9 = v21;
            v21 = v26;
            v27 = v9;
            sub_100005978(&v27);
          }

          v10 = kCTWebSheetURL;
          if (SHIBYTE(v25) < 0)
          {
            operator delete(v24);
          }

          value = v21;
          v21 = 0;
          sub_100005978(&v21);
          if (SHIBYTE(v23) < 0)
          {
            operator delete(__p[0]);
          }

          CFDictionarySetValue(v8, v10, value);
          sub_100005978(&value);
          if (SHIBYTE(v18) < 0)
          {
            operator delete(__dst[0]);
          }

          if (*(a1 + 248) == 1)
          {
            if (*(a1 + 247) < 0)
            {
              sub_100005F2C(v14, *(a1 + 224), *(a1 + 232));
            }

            else
            {
              *v14 = *(a1 + 224);
              v15 = *(a1 + 240);
            }

            if (SHIBYTE(v15) < 0)
            {
              sub_100005F2C(__p, v14[0], v14[1]);
            }

            else
            {
              *__p = *v14;
              v23 = v15;
            }

            v21 = 0;
            if (SHIBYTE(v23) < 0)
            {
              sub_100005F2C(&v24, __p[0], __p[1]);
            }

            else
            {
              v24 = *__p;
              v25 = v23;
            }

            v26 = 0;
            if (ctu::cf::convert_copy())
            {
              v11 = v21;
              v21 = v26;
              v27 = v11;
              sub_100005978(&v27);
            }

            if (SHIBYTE(v25) < 0)
            {
              operator delete(v24);
            }

            v12 = v21;
            v16 = v21;
            v21 = 0;
            sub_100005978(&v21);
            if (SHIBYTE(v23) < 0)
            {
              operator delete(__p[0]);
            }

            ExternalRepresentation = CFStringCreateExternalRepresentation(0, v12, 0x600u, 0);
            value = ExternalRepresentation;
            sub_100005978(&v16);
            if (SHIBYTE(v15) < 0)
            {
              operator delete(v14[0]);
            }

            CFDictionarySetValue(theDict, kCTWebSheetPostData, ExternalRepresentation);
            sub_10002D760(&value);
          }

          CFDictionarySetValue(v5, kCTProvisioningURL, theDict);
        }

        return sub_1000296E0(&theDict);
      }
    }
  }

  return result;
}

void sub_10034DE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, int a23, const void *a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a25);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1000296E0(&a24);
  sub_1000296E0(v31);
  _Unwind_Resume(a1);
}

uint64_t sub_10034DF18(uint64_t a1, int a2)
{
  result = 0;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v3 = &kCTCapabilityAgent3;
        break;
      case 4:
        v3 = &kCTCapabilityNetworkSlicing;
        break;
      case 5:
        v3 = &kCTCapabilitySatellite;
        break;
      default:
        return result;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = &kCTCapabilityPhoneServices;
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      v3 = &kCTCapabilityAgent;
    }
  }

  else
  {
    v3 = &kCTCapabilityAgent2;
  }

  return *v3;
}

BOOL sub_10034DF9C(int a1, int a2, CFDictionaryRef theDict, const __CFDictionary *a4)
{
  if (a2)
  {
    return 0;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, kCTCapabilityAgent2);
    v7 = Value;
    if (!Value)
    {
      goto LABEL_11;
    }

    v8 = CFGetTypeID(Value);
    if (v8 == CFDictionaryGetTypeID())
    {
      v9 = CFDictionaryGetValue(v7, kCTProvisioningURL);
      v7 = v9;
      if (v9)
      {
        v10 = CFGetTypeID(v9);
        if (v10 != CFDictionaryGetTypeID())
        {
          v7 = 0;
        }
      }

      goto LABEL_11;
    }
  }

  v7 = 0;
LABEL_11:
  if (a4 && (v11 = CFDictionaryGetValue(a4, kCTCapabilityAgent2)) != 0 && (v12 = v11, v13 = CFGetTypeID(v11), v13 == CFDictionaryGetTypeID()) && (v14 = CFDictionaryGetValue(v12, kCTProvisioningURL)) != 0)
  {
    v15 = v14;
    v16 = CFGetTypeID(v14);
    if (v16 == CFDictionaryGetTypeID())
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v7 != v17 && (!v7 || !v17 || !CFEqual(v7, v17));
}

void sub_10034E0D4()
{
  __str = 0;
  v1 = 0;
  operator new();
}

void sub_10034E33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034E370()
{
  v3 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/ps_account_provisioning_url_changed");
  object = v3;
  v3 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_10034E404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

BOOL sub_10034E448(uint64_t a1, int a2)
{
  v2 = a1 + 608;
  v3 = *(a1 + 608);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = a1 + 608;
  do
  {
    if (*(v3 + 28) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 28) < a2));
  }

  while (v3);
  if (v4 == v2 || *(v4 + 28) > a2)
  {
LABEL_8:
    v4 = a1 + 608;
  }

  return v4 != v2;
}

void sub_10034E494(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 448));
  theDict = 0;
  v6 = *(a1 + 520);
  if (v6)
  {
    v7 = a1 + 520;
    do
    {
      if (*(v6 + 32) >= a2)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < a2));
    }

    while (v6);
    if (v7 != a1 + 520 && *(v7 + 32) <= a2)
    {
      v18 = 0;
      v10 = sub_100010024(&v18, (v7 + 40));
      v11 = v18;
      if (v18)
      {
        v12 = sub_10034DF18(v10, a2);
        Value = CFDictionaryGetValue(v11, v12);
        v20 = 0;
        sub_100010180(&v20, &Value);
        v13 = theDict;
        theDict = v20;
        v20 = v13;
        sub_10001021C(&v20);
        if (theDict)
        {
          v14 = CFDictionaryGetValue(theDict, kCTCapabilityStatus);
          v9 = v14;
          LOBYTE(v20) = 0;
          if (!v14)
          {
LABEL_16:
            sub_10001021C(&v18);
            v8 = 1;
            goto LABEL_9;
          }

          v15 = CFGetTypeID(v14);
          if (v15 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(&v20, v9, v16);
            LOBYTE(v9) = v20;
            goto LABEL_16;
          }
        }
      }

      LOBYTE(v9) = 0;
      goto LABEL_16;
    }
  }

  v8 = 0;
  LOBYTE(v9) = 0;
LABEL_9:
  *a3 = v9;
  sub_100010024((a3 + 8), &theDict);
  *(a3 + 16) = v8;
  sub_10001021C(&theDict);
  std::mutex::unlock((a1 + 448));
}

void sub_10034E5F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_10001021C(va1);
  std::mutex::unlock(v2 + 7);
  _Unwind_Resume(a1);
}

void sub_10034E61C(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 448));
  theDict = 0;
  v6 = *(a1 + 520);
  if (v6)
  {
    v7 = a1 + 520;
    do
    {
      if (*(v6 + 32) >= a2)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < a2));
    }

    while (v6);
    if (v7 != a1 + 520 && *(v7 + 32) <= a2)
    {
      v18 = 0;
      v10 = sub_100010024(&v18, (v7 + 40));
      v11 = v18;
      if (v18)
      {
        v12 = sub_10034DF18(v10, a2);
        Value = CFDictionaryGetValue(v11, v12);
        v20 = 0;
        sub_100010180(&v20, &Value);
        v13 = theDict;
        theDict = v20;
        v20 = v13;
        sub_10001021C(&v20);
        if (theDict)
        {
          v14 = CFDictionaryGetValue(theDict, kCTCapabilityCanSet);
          v9 = v14;
          LOBYTE(v20) = 0;
          if (!v14)
          {
LABEL_16:
            sub_10001021C(&v18);
            v8 = 1;
            goto LABEL_9;
          }

          v15 = CFGetTypeID(v14);
          if (v15 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(&v20, v9, v16);
            LOBYTE(v9) = v20;
            goto LABEL_16;
          }
        }
      }

      LOBYTE(v9) = 0;
      goto LABEL_16;
    }
  }

  v8 = 0;
  LOBYTE(v9) = 0;
LABEL_9:
  *a3 = v9;
  sub_100010024((a3 + 8), &theDict);
  *(a3 + 16) = v8;
  sub_10001021C(&theDict);
  std::mutex::unlock((a1 + 448));
}

void sub_10034E77C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_10001021C(va1);
  std::mutex::unlock(v2 + 7);
  _Unwind_Resume(a1);
}

void sub_10034E7A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = **(a1 + 80);
    if (v3)
    {
      v4 = PersonalityInfo::logPrefix(v3);
    }

    else
    {
      v4 = "-1";
    }

    if (*(a1 + 767) < 0)
    {
      sub_100005F2C(__p, *(a1 + 744), *(a1 + 752));
    }

    else
    {
      *__p = *(a1 + 744);
      v22 = *(a1 + 760);
    }

    v5 = __p[0];
    if (v22 >= 0)
    {
      v5 = __p;
    }

    v6 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v6 = *v6;
    }

    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2080;
    v25 = v5;
    v26 = 2080;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fHardware: '%s', fDisplayName: '%s'", buf, 0x2Au);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = **(a1 + 80);
    if (v7)
    {
      v8 = PersonalityInfo::logPrefix(v7);
    }

    else
    {
      v8 = "-1";
    }

    sub_1006152B0(a1 + 144, __p);
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2112;
    v25 = __p[0];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fAddr911Status: '%@'", buf, 0x20u);
    sub_10001021C(__p);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = **(a1 + 80);
    if (v9)
    {
      v10 = PersonalityInfo::logPrefix(v9);
    }

    else
    {
      v10 = "-1";
    }

    v11 = asStringBool(*(a1 + 352));
    v12 = asStringBool(*(a1 + 353));
    *buf = 136315906;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2080;
    v25 = v11;
    v26 = 2080;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fAddr911RefreshedOnBoot: %s, fAwaitingGetPSAS: %s", buf, 0x2Au);
  }

  std::mutex::lock((a1 + 448));
  v13 = *(a1 + 512);
  if (v13 != (a1 + 520))
  {
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      LODWORD(__p[0]) = *(v13 + 8);
      sub_100010024(&__p[1], v13 + 5);
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = **(a1 + 80);
        if (v15)
        {
          v16 = PersonalityInfo::logPrefix(v15);
        }

        else
        {
          v16 = "-1";
        }

        v17 = asString();
        *buf = 136315650;
        *&buf[4] = v16;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v24 = 2080;
        v25 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s| %s:", buf, 0x20u);
      }

      *buf = off_101E44510;
      *&buf[8] = a1;
      v25 = buf;
      logger::CFTypeRefLogger();
      sub_100007E44(buf);
      sub_10001021C(&__p[1]);
      v18 = v13[1];
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
          v19 = v13[2];
          v20 = *v19 == v13;
          v13 = v19;
        }

        while (!v20);
      }

      v13 = v19;
    }

    while (v19 != (a1 + 520));
  }

  std::mutex::unlock((a1 + 448));
}

char *sub_10034EBC8@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[767] < 0)
  {
    return sub_100005F2C(a2, *(result + 93), *(result + 94));
  }

  *a2 = *(result + 744);
  *(a2 + 16) = *(result + 95);
  return result;
}

uint64_t sub_10034EBF8(uint64_t a1, int a2)
{
  std::mutex::lock((a1 + 648));
  v4 = *(a1 + 720);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = a1 + 720;
  do
  {
    if (*(v4 + 28) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < a2));
  }

  while (v4);
  if (v5 != a1 + 720 && *(v5 + 28) <= a2)
  {
    v6 = (*(v5 + 32) != 0) | ((*(v5 + 32) == 2) << 8) | (*(v5 + 36) << 16);
  }

  else
  {
LABEL_8:
    v6 = 0;
  }

  std::mutex::unlock((a1 + 648));
  return v6;
}

void sub_10034EC94(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  std::mutex::lock((a1 + 448));
  *a2 = *(a1 + 536);
  *(a2 + 4) = *(a1 + 540);
  sub_10006F264(a2 + 8, (a1 + 544));

  std::mutex::unlock((a1 + 448));
}

void sub_10034ED04(uint64_t a1@<X0>, signed int a2@<W1>, void *a3@<X8>)
{
  std::mutex::lock((a1 + 448));
  v7 = *(a1 + 584);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = a1 + 584;
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v8 == a1 + 584 || *(v8 + 32) > a2)
  {
LABEL_8:
    sub_10034A388(v6, a2);
  }

  v10 = *(v8 + 40);
  v9 = *(v8 + 48);
  *a3 = v10;
  a3[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((a1 + 448));
}

void sub_10034EDC8(uint64_t a1, int a2, uint64_t *a3)
{
  v23 = a2;
  v5 = *(a1 + 104);
  if (v5)
  {
    v6 = a1 + 104;
    do
    {
      if (*(v5 + 32) >= a2)
      {
        v6 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 32) < a2));
    }

    while (v5);
    if (v6 != a1 + 104 && *(v6 + 32) <= a2)
    {
      v7 = (*(**(v6 + 40) + 88))(*(v6 + 40));
      std::mutex::lock((a1 + 648));
      v24 = &v23;
      v8 = sub_1002BBF6C(a1 + 712, &v23);
      *(v8 + 8) = v7;
      *(v8 + 36) = BYTE4(v7);
      std::mutex::unlock((a1 + 648));
    }
  }

  std::mutex::lock((a1 + 448));
  v24 = &v23;
  v9 = sub_100354A14(a1 + 576, &v23);
  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = v9[6];
  v9[5] = v11;
  v9[6] = v10;
  if (v12)
  {
    sub_100004A34(v12);
  }

  std::mutex::unlock((a1 + 448));
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v14 = ServiceMap;
  if ((v15 & 0x8000000000000000) != 0)
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
      goto LABEL_21;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v14);
  v20 = 0;
  v22 = 1;
LABEL_21:
  (*(*v21 + 32))(v21);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }
}

uint64_t sub_10034F010@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = *(a1 + 104);
  result = a1 + 104;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = result;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 != result && *(v6 + 32) <= a2)
  {
    v8 = *(v6 + 40);
    v7 = *(v6 + 48);
    *a3 = v8;
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

const __CFDictionary *sub_10034F0C4@<X0>(const __CFDictionary *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 65);
  if (!v3)
  {
    goto LABEL_34;
  }

  v4 = (result + 520);
  do
  {
    if (v3[8] >= 1)
    {
      v4 = v3;
    }

    v3 = *&v3[2 * (v3[8] < 1)];
  }

  while (v3);
  if (v4 != (result + 520) && v4[8] <= 1 && (result = CFDictionaryGetValue(*(v4 + 5), kCTCapabilityPhoneServices)) != 0 && (v5 = result, v6 = CFGetTypeID(result), result = CFDictionaryGetTypeID(), v6 == result) && (result = CFDictionaryGetValue(v5, kPSAccountDetails)) != 0 && (v7 = result, v8 = CFGetTypeID(result), result = CFDictionaryGetTypeID(), v8 == result) && (result = CFDictionaryGetValue(v7, kPSDeviceList)) != 0 && (v9 = result, v10 = CFGetTypeID(result), result = CFArrayGetTypeID(), v10 == result))
  {
    v11 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v12 = kPSStatus;
    v13 = kPSDeviceHardware;
    while (1)
    {
      result = CFArrayGetCount(v9);
      if (v11 >= result)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v9, v11);
      v15 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
        if (v16 == CFDictionaryGetTypeID() && CFDictionaryGetValue(v15, v12) == kCFBooleanTrue)
        {
          Value = CFDictionaryGetValue(v15, v13);
          if (Value)
          {
            v18 = CFGetTypeID(Value);
            if (v18 == CFStringGetTypeID())
            {
              v32 = 0;
              v33 = 0uLL;
              ctu::cf::assign();
              v36[0] = v33;
              *(v36 + 7) = *(&v33 + 7);
              v19 = HIBYTE(v33);
              v20 = *(a2 + 8);
              v21 = *(a2 + 16);
              if (v20 >= v21)
              {
                v23 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a2) >> 3);
                v24 = v23 + 1;
                if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_1000CE3D4();
                }

                v25 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a2) >> 3);
                if (2 * v25 > v24)
                {
                  v24 = 2 * v25;
                }

                if (v25 >= 0x555555555555555)
                {
                  v26 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v26 = v24;
                }

                v35 = a2;
                if (v26)
                {
                  sub_100005348(a2, v26);
                }

                v27 = 24 * v23;
                *v27 = v32;
                *(v27 + 8) = v36[0];
                *(v27 + 15) = *(v36 + 7);
                *(v27 + 23) = v19;
                v22 = 24 * v23 + 24;
                v28 = *(a2 + 8) - *a2;
                v29 = (24 * v23 - v28);
                memcpy(v29, *a2, v28);
                v30 = *a2;
                *a2 = v29;
                *(a2 + 8) = v22;
                v31 = *(a2 + 16);
                *(a2 + 16) = 0;
                *(&v33 + 1) = v30;
                v34 = v31;
                v32 = v30;
                *&v33 = v30;
                sub_1000054E0(&v32);
              }

              else
              {
                *v20 = v32;
                *(v20 + 8) = v36[0];
                *(v20 + 15) = *(v36 + 7);
                *(v20 + 23) = v19;
                v22 = v20 + 24;
              }

              *(a2 + 8) = v22;
            }
          }
        }
      }

      ++v11;
    }
  }

  else
  {
LABEL_34:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_10034F3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (v18 < 0)
  {
    operator delete(v17);
  }

  sub_1000087B4(&a17);
  _Unwind_Resume(a1);
}

BOOL sub_10034F440(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
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

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (!memcmp(a1, a2, v3))
  {
    v10 = v7 + 3;
    v9 = v7[3];
    v8 = v10[1];
    v12 = v6 + 3;
    v11 = v6[3];
    if (v8 - v9 == v12[1] - v11)
    {
      if (v8 == v9)
      {
        return 1;
      }

      v13 = 0;
      v14 = 0;
      v15 = (v8 - v9) >> 3;
      v16 = 0xAAAAAAAAAAAAAAABLL * v15;
      if (0xAAAAAAAAAAAAAAABLL * v15 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * v15;
      }

      while (1)
      {
        v18 = v11 + v13;
        v19 = *(v9 + v13 + 23);
        if (v19 >= 0)
        {
          v20 = *(v9 + v13 + 23);
        }

        else
        {
          v20 = *(v9 + v13 + 8);
        }

        v21 = *(v18 + 23);
        v22 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(v18 + 8);
        }

        if (v20 != v21)
        {
          break;
        }

        v23 = v19 >= 0 ? (v9 + v13) : *(v9 + v13);
        v24 = v22 >= 0 ? (v11 + v13) : *v18;
        if (memcmp(v23, v24, v20))
        {
          break;
        }

        ++v14;
        v13 += 24;
        if (v17 == v14)
        {
          return v14 >= v16;
        }
      }
    }
  }

  return 0;
}

BOOL sub_10034F590(uint64_t a1)
{
  cf = 0;
  (*(*a1 + 472))(&cf);
  v2 = cf;
  if (cf)
  {
    v23 = 0uLL;
    v24 = 0;
    v3 = CFGetTypeID(cf);
    if (v3 == CFArrayGetTypeID())
    {
      memset(buf, 0, 24);
      context = buf;
      v36.length = CFArrayGetCount(v2);
      v36.location = 0;
      CFArrayApplyFunction(v2, v36, sub_10035565C, &context);
      v4 = v23;
      v23 = *buf;
      *buf = v4;
      v5 = v24;
      v24 = *&buf[16];
      *&buf[16] = v5;
      context = buf;
      sub_1000087B4(&context);
    }

    v6 = v23;
    CSIPhoneNumber::CSIPhoneNumber();
    if (v23 != *(&v23 + 1))
    {
      while (1)
      {
        *__p = 0u;
        v35 = 0u;
        *v32 = 0u;
        v33 = 0u;
        *v30 = 0u;
        v31 = 0u;
        *v28 = 0u;
        v29 = 0u;
        memset(buf, 0, sizeof(buf));
        CSIPhoneNumber::CSIPhoneNumber();
        v7 = CSIPhoneNumber::operator==();
        if (SBYTE7(v35) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32[1]);
        }

        if (SBYTE7(v31) < 0)
        {
          operator delete(v30[0]);
        }

        if (SBYTE7(v29) < 0)
        {
          operator delete(v28[0]);
        }

        if (buf[31] < 0)
        {
          operator delete(*&buf[8]);
        }

        if (v7)
        {
          break;
        }

        v6 += 24;
        if (v6 == *(&v23 + 1))
        {
          v6 = *(&v23 + 1);
          break;
        }
      }
    }

    v8 = v6 != *(&v23 + 1);
    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (v6 != *(&v23 + 1))
    {
      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = **(a1 + 80);
        if (v10)
        {
          v11 = PersonalityInfo::logPrefix(v10);
        }

        else
        {
          v11 = "-1";
        }

        *buf = 136315394;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sEmergency number over Wi-Fi-only found", buf, 0x16u);
      }
    }

    *buf = &v23;
    sub_1000087B4(buf);
  }

  else
  {
    v8 = 0;
  }

  sub_10000A1EC(&cf);
  return v8;
}

void sub_10034F880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33, void **a34)
{
  a34 = &a29;
  sub_1000087B4(&a34);
  sub_10000A1EC(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_10034F8E8(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

BOOL sub_10034F95C(uint64_t a1)
{
  cf = 0;
  (*(*a1 + 472))(&cf);
  v2 = cf;
  if (cf)
  {
    v23 = 0uLL;
    v24 = 0;
    v3 = CFGetTypeID(cf);
    if (v3 == CFArrayGetTypeID())
    {
      memset(buf, 0, 24);
      context = buf;
      v36.length = CFArrayGetCount(v2);
      v36.location = 0;
      CFArrayApplyFunction(v2, v36, sub_10035565C, &context);
      v4 = v23;
      v23 = *buf;
      *buf = v4;
      v5 = v24;
      v24 = *&buf[16];
      *&buf[16] = v5;
      context = buf;
      sub_1000087B4(&context);
    }

    v6 = v23;
    CSIPhoneNumber::CSIPhoneNumber();
    if (v23 != *(&v23 + 1))
    {
      while (1)
      {
        *__p = 0u;
        v35 = 0u;
        *v32 = 0u;
        v33 = 0u;
        *v30 = 0u;
        v31 = 0u;
        *v28 = 0u;
        v29 = 0u;
        memset(buf, 0, sizeof(buf));
        CSIPhoneNumber::CSIPhoneNumber();
        v7 = CSIPhoneNumber::operator==();
        if (SBYTE7(v35) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32[1]);
        }

        if (SBYTE7(v31) < 0)
        {
          operator delete(v30[0]);
        }

        if (SBYTE7(v29) < 0)
        {
          operator delete(v28[0]);
        }

        if (buf[31] < 0)
        {
          operator delete(*&buf[8]);
        }

        if (v7)
        {
          break;
        }

        v6 += 24;
        if (v6 == *(&v23 + 1))
        {
          v6 = *(&v23 + 1);
          break;
        }
      }
    }

    v8 = v6 != *(&v23 + 1);
    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (v6 != *(&v23 + 1))
    {
      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = **(a1 + 80);
        if (v10)
        {
          v11 = PersonalityInfo::logPrefix(v10);
        }

        else
        {
          v11 = "-1";
        }

        *buf = 136315394;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sShortcode number found", buf, 0x16u);
      }
    }

    *buf = &v23;
    sub_1000087B4(buf);
  }

  else
  {
    v8 = 0;
  }

  sub_10000A1EC(&cf);
  return v8;
}

void sub_10034FC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33, void **a34)
{
  a34 = &a29;
  sub_1000087B4(&a34);
  sub_10000A1EC(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_10034FCB4(uint64_t a1, void **a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  v14 = (*(*v12 + 48))(v12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if ((v14 & 1) == 0)
  {
    if (sub_10034F590(a1))
    {
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = **(a1 + 80);
        if (v17)
        {
          v18 = PersonalityInfo::logPrefix(v17);
        }

        else
        {
          v18 = "-1";
        }

        *buf = 136315394;
        *&buf[4] = v18;
        v26 = 2080;
        v27 = " ";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sDialed number matches Emergency number over Wi-Fi-only. LocationService off is ignored", buf, 0x16u);
      }
    }

    else if (sub_10034F95C(a1))
    {
      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = **(a1 + 80);
        if (v20)
        {
          v21 = PersonalityInfo::logPrefix(v20);
        }

        else
        {
          v21 = "-1";
        }

        if (*(a2 + 23) >= 0)
        {
          v22 = a2;
        }

        else
        {
          v22 = *a2;
        }

        *buf = 136315650;
        *&buf[4] = v21;
        v26 = 2080;
        v27 = " ";
        v28 = 2080;
        v29 = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s### CallDeny: Can't dial shortcode number %s with LocationService disabled", buf, 0x20u);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(__p, *a2, a2[1]);
      }

      else
      {
        *__p = *a2;
        v24 = a2[2];
      }

      sub_10034FFC0(a1, __p);
    }
  }

  return 1;
}

void sub_10034FF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034FFC0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  sub_100004AA0(&v7, (a1 + 8));
  v3 = v8;
  v6[0] = v7;
  v6[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
  }

  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  operator new();
}

void sub_10035013C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035015C(uint64_t a1@<X0>, const __CFData **a2@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v32 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  v33 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v33);
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
  (*(*v12 + 160))(&v30, v12, *(**(a1 + 80) + 52));
  v14 = std::string::append(&v30, "/", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v34, "CarrierCA.crt", 0xDuLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v32 = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  operator delete(v30.__r_.__value_.__l.__data_);
  if ((v13 & 1) == 0)
  {
LABEL_13:
    sub_100004A34(v11);
  }

LABEL_14:
  v30.__r_.__value_.__r.__words[0] = &off_101EA1020;
  *a2 = 0;
  sub_1009C8EFC(&v30, __p);
  v18 = *a2;
  v19 = *(a1 + 40);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (!v20)
    {
      goto LABEL_30;
    }

    v21 = **(a1 + 80);
    if (v21)
    {
      v22 = PersonalityInfo::logPrefix(v21);
      v18 = *a2;
    }

    else
    {
      v22 = "-1";
    }

    Length = CFDataGetLength(v18);
    LODWORD(v34.__r_.__value_.__l.__data_) = 136315650;
    *(v34.__r_.__value_.__r.__words + 4) = v22;
    WORD2(v34.__r_.__value_.__r.__words[1]) = 2080;
    *(&v34.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(v34.__r_.__value_.__r.__words[2]) = 1024;
    LODWORD(v35) = Length;
    v26 = "#I %s%sePDG CA certificate file of size %d loaded";
    v27 = v19;
    v28 = 28;
  }

  else
  {
    if (!v20)
    {
      goto LABEL_30;
    }

    v23 = **(a1 + 80);
    if (v23)
    {
      v24 = PersonalityInfo::logPrefix(v23);
    }

    else
    {
      v24 = "-1";
    }

    v29 = __p;
    if (v32 < 0)
    {
      v29 = __p[0];
    }

    LODWORD(v34.__r_.__value_.__l.__data_) = 136315650;
    *(v34.__r_.__value_.__r.__words + 4) = v24;
    WORD2(v34.__r_.__value_.__r.__words[1]) = 2080;
    *(&v34.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(v34.__r_.__value_.__r.__words[2]) = 2080;
    v35 = v29;
    v26 = "#I %s%sUnable to open '%s' for reading";
    v27 = v19;
    v28 = 32;
  }

  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, &v34, v28);
LABEL_30:
  FileSystemInterface::~FileSystemInterface(&v30);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10035049C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_10002D760(v28);
  FileSystemInterface::~FileSystemInterface(&a10);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10035052C(uint64_t a1, int a2)
{
  v4 = *(a1 + 104);
  result = a1 + 104;
  v3 = v4;
  if (v4)
  {
    v5 = result;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v5 != result && *(v5 + 32) <= a2)
    {
      return (*(**(v5 + 40) + 96))();
    }
  }

  return result;
}

void sub_100350590(uint64_t a1)
{
  if (*(a1 + 354) == 1)
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = **(a1 + 80);
      if (v3)
      {
        v4 = PersonalityInfo::logPrefix(v3);
      }

      else
      {
        v4 = "-1";
      }

      *v17 = 136315394;
      *&v17[4] = v4;
      v18 = 2080;
      v19 = " ";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sPSControl is shutting down. Ignoring WiFiLocation evaluation", v17, 0x16u);
    }

    return;
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
  *v17 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v17);
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
      if (!v13)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (!v13)
  {
LABEL_11:
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      v15 = **(a1 + 80);
      if (v15)
      {
        v16 = PersonalityInfo::logPrefix(v15);
      }

      else
      {
        v16 = "-1";
      }

      sub_10176C06C(v16, v17);
    }

    goto LABEL_21;
  }

LABEL_16:
  (*(*v13 + 40))(v13);
LABEL_21:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10035078C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003507D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_10006F264(v4 + 32, (a2 + 32));
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 64) = v5;
  sub_10006F264(a1 + 88, (a2 + 88));
  sub_10006F264(a1 + 120, (a2 + 120));
  return a1;
}

void sub_100350834(_Unwind_Exception *exception_object)
{
  if (*(v1 + 112) == 1 && *(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100350944(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E43FD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100350998(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1003509AC(uint64_t a1, const void **a2)
{
  if (a2)
  {
    sub_1003509AC(a1, *a2);
    sub_1003509AC(a1, a2[1]);
    sub_10001021C(a2 + 5);

    operator delete(a2);
  }
}

void *sub_100350A08(void *a1)
{
  *a1 = off_101E44028;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100350A54(void *a1)
{
  *a1 = off_101E44028;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100350B34(uint64_t result, uint64_t a2)
{
  *a2 = off_101E44028;
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

void sub_100350B74(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100350B84(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100350BC4(uint64_t *a1, xpc_object_t *a2)
{
  sub_10013E998(a1[1], a2);
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
        v7 = sub_100007A6C((v4 + 100), (*v4[10] + 24));
        if (v4 + 101 != v7)
        {
          ((*v4)[37])(v4, *v4[10] + 24, v7 + 56, v7 + 64, v7 + 88);
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_100350CB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100350D00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100350E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

uint64_t sub_100350EA0(uint64_t a1)
{
  sub_100352130((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_100350EE0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100350F24(uint64_t *a1)
{
  memset(v3, 0, sizeof(v3));
  v2 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v3, v2);
  sub_10035101C(a1, v3);
}

void sub_100350FEC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035101C(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  sub_100351118(a1, a2);
}

void sub_100351100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003511B0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

atomic_uint **sub_1003511F4(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_1003514D4(a1, a2, 1, 2);
}

void sub_100351318(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_10035156C(&v2, a2);
}

uint64_t sub_100351378(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1003513BC(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_1003511B0(a1);
  result = sub_10022BA14(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_10022AF48(v10 + 2);
        sub_10022B384(v15, a2);
        v10 = v22;
      }

      if (*(sub_10022AF48(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_1003511B0(a1);
        v18 = sub_10022BA14(v17);
        v19 = sub_10022AF48(v22 + 2);
        v16 = sub_100100CE8(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_1003511B0(a1);
      result = sub_10022BA14(v20);
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

atomic_uint **sub_1003514D4(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_1003511B0(a1);
  v10 = sub_10022BA14(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_1003511B0(a1);
    v11 = *(sub_10022BA14(v12) + 8);
  }

  v14 = v11;
  return sub_1003513BC(a1, a2, a3, &v14, a4);
}

void sub_10035156C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1003515D8(&v2);
}

void sub_100351648(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100351688(uint64_t result)
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

uint64_t sub_1003517A4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1003517E8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100351854(&v2);
}

void sub_1003518C4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1003518EC(v1);
  __cxa_rethrow();
}

uint64_t sub_1003518EC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100352130((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100351960(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100352130((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

void (***sub_1003519D0(void (***result)(void, void, uint64_t), uint64_t a2))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_100352078(v4, result);
    sub_100352078(v3, a2);
    sub_100352078(a2, v4);
    return sub_100352130(v4);
  }

  return result;
}

uint64_t sub_100351A4C(uint64_t result, _WORD *a2, int a3)
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
  if (result != ("N3ctu12DispatchSlotIZN13PSControlBase10initializeEvE3$_1EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN13PSControlBase10initializeEvE3$_1EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_100351B48(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = v4;
    v11 = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  else
  {
    v10 = v4;
    v11 = 0;
  }

  v8 = off_101E44168;
  v9 = v3;
  sub_100351C78();
}

void sub_100351C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void (**a16)(void, void, uint64_t))
{
  sub_100352130(&a16);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void (***sub_100351DD8(uint64_t a1))(void, void, uint64_t)
{
  sub_100351E6C(*(a1 + 32));
  result = *(a1 + 32);
  if (result)
  {
    sub_100352130(result);
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

  return result;
}

uint64_t sub_100351E6C(void *a1)
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

void sub_100351F04(uint64_t a1, uint64_t a2, unsigned int a3)
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
    if (v7 == ("ZN13PSControlBase10initializeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN13PSControlBase10initializeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL)))
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

void sub_100351FE8(uint64_t *a1, void *a2)
{
  v3 = a1[2];
  if (v3)
  {
    v5 = *a1;
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[1])
      {
        sub_10034ADC0(v5, a2);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_100352078(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_10035210C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_100352130(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void sub_100352180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1003522C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

uint64_t sub_100352320(uint64_t a1)
{
  sub_1003542B8((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_100352360(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1003523A4(uint64_t *a1)
{
  memset(v3, 0, sizeof(v3));
  v2 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v3, v2);
  sub_10035249C(a1, v3);
}

void sub_10035246C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035249C(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  sub_100352598(a1, a2);
}

void sub_100352580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100352630(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_100352674(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

atomic_uint **sub_1003526B8(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_100352998(a1, a2, 1, 2);
}

void sub_1003527DC(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_100352A30(&v2, a2);
}

uint64_t sub_10035283C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100352880(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100352630(a1);
  result = sub_10035391C(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_100352674(v10 + 2);
        sub_100353060(v15, a2);
        v10 = v22;
      }

      if (*(sub_100352674(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100352630(a1);
        v18 = sub_10035391C(v17);
        v19 = sub_100352674(v22 + 2);
        v16 = sub_100100CE8(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_100352630(a1);
      result = sub_10035391C(v20);
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

atomic_uint **sub_100352998(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_100352630(a1);
  v10 = sub_10035391C(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100352630(a1);
    v11 = *(sub_10035391C(v12) + 8);
  }

  v14 = v11;
  return sub_100352880(a1, a2, a3, &v14, a4);
}

void sub_100352A30(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100352A9C(&v2);
}

void sub_100352B0C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100352B4C(uint64_t result)
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

uint64_t sub_100352C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100352DF0(a1, a2);
  sub_100352E5C((v4 + 3), a2 + 24);
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

void *sub_100352DF0(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_100352E5C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_100352EC4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100352F30(&v2);
}

void sub_100352FA0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_100352FE0(uint64_t result)
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

uint64_t *sub_100353060(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1003530CC(result);
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

uint64_t sub_1003530CC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100353110(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E44258;
  operator new();
}

void sub_100353220(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1001018AC(va);
  operator delete();
}

void sub_100353288(uint64_t a1)
{
  sub_100353634(a1);

  operator delete();
}

uint64_t sub_1003532C0(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1003536AC(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_10035336C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10035339C(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_1003533C8(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_1003533F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_10035344C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1003534B8(&v2);
}

void sub_100353528(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100353550(v1);
  __cxa_rethrow();
}

uint64_t sub_100353550(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1003542B8((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1003535C4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_1003542B8((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100353634(uint64_t a1)
{
  *a1 = off_101E44258;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1003536AC(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_1003530CC(result + 4); ; i += 6)
    {
      result = sub_1003530CC(v2);
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

void sub_100353794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1003537B4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100353820(&v2);
}

void sub_100353890(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1003538D4(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10035391C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void (***sub_100353960(void (***result)(void, void, uint64_t), uint64_t a2))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_100354200(v4, result);
    sub_100354200(v3, a2);
    sub_100354200(a2, v4);
    return sub_1003542B8(v4);
  }

  return result;
}

uint64_t sub_1003539DC(uint64_t result, _WORD *a2, int a3)
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
  if (result != ("N3ctu12DispatchSlotIZN13PSControlBase10initializeEvE3$_2EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN13PSControlBase10initializeEvE3$_2EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_100353AD8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  v7 = *a4;
  v6 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v8 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v9;
    v18 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  else
  {
    v17 = v5[2];
    v18 = 0;
  }

  v15 = off_101E443A0;
  v16 = v8;
  v13 = v7;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100353C74();
}

void sub_100353C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_1003542B8(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100353E3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = **(a1 + 48);
  v6 = v4[1];
  *&v12 = *v4;
  *(&v12 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100353F50(v2, v3, v5, &v12);
  if (*(&v12 + 1))
  {
    sub_100004A34(*(&v12 + 1));
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    sub_1003542B8(v7);
    operator delete();
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  result = *(a1 + 48);
  if (result)
  {
    operator delete();
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      sub_100004A34(v11);
    }

    operator delete();
  }

  return result;
}

void sub_100353F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100353F50(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v6, "call to empty boost::function");
    v6.__vftable = &off_101E25EA8;
    sub_1001028A8(&v6);
  }

  v4 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v5 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v4(a1 + 1, a2, a3, &v5);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_100353FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::runtime_error a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035400C(uint64_t a1, uint64_t a2, unsigned int a3)
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
    if (v7 == ("ZN13PSControlBase10initializeEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN13PSControlBase10initializeEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL)))
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

void sub_1003540F0(uint64_t *a1, void *a2, int a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v7 = a1[2];
  if (v7)
  {
    v10 = *a1;
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = v11;
      if (a1[1])
      {
        v13[0] = v6;
        v13[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10034C210(v10, a2, a3, v13);
        if (v5)
        {
          sub_100004A34(v5);
        }
      }

      sub_100004A34(v12);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_1003541D0(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v2);
  }

  else
  {
    v1 = v2;
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100354200(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_100354294(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_1003542B8(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100354308(uint64_t result, _WORD *a2, int a3)
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
  if (result != ("N3ctu12DispatchSlotIZN13PSControlBase10initializeEvE3$_3EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN13PSControlBase10initializeEvE3$_3EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_100354404(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = v4;
    v11 = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  else
  {
    v10 = v4;
    v11 = 0;
  }

  v8 = off_101E443E0;
  v9 = v3;
  sub_100351C78();
}

void sub_100354504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void (**a16)(void, void, uint64_t))
{
  sub_100352130(&a16);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100354534(uint64_t a1, uint64_t a2, unsigned int a3)
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
    if (v7 == ("ZN13PSControlBase10initializeEvE3$_3" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN13PSControlBase10initializeEvE3$_3" & 0x7FFFFFFFFFFFFFFFLL)))
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

void sub_100354618(uint64_t *a1, void *a2)
{
  v3 = a1[2];
  if (v3)
  {
    v5 = *a1;
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[1])
      {
        sub_10034D890(v5, a2);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_100354718(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E44410;
  a2[1] = v2;
  return result;
}

uint64_t sub_10035474C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100354798(uint64_t *a1, rest::PairedDeviceInfoList *a2, const xpc::object *a3)
{
  v3 = *a1;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  rest::read_rest_value(&v5, a2, a3);
  memset(v4, 0, sizeof(v4));
  sub_10035485C(v4, v5, v6, 0x84BDA12F684BDA13 * ((v6 - v5) >> 3));
  sub_101058BEC(v3, v4);
  v8 = v4;
  sub_10032DC68(&v8);
  v8 = &v5;
  sub_10032DC68(&v8);
}

void sub_10035482C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 24) = v13;
  sub_10032DC68((v14 - 24));
  *(v14 - 24) = &a13;
  sub_10032DC68((v14 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10035485C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003548E4(result, a4);
  }

  return result;
}

void sub_1003548C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10032DC68(&a9);
  _Unwind_Resume(a1);
}

void sub_1003548E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    sub_100354934(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_100354934(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100354990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_100DB112C(a4, v6);
      v6 += 216;
      a4 += 216;
      v7 -= 216;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1003549F0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 216;
    do
    {
      v4 = sub_100DB14E0(v4) - 216;
      v2 += 216;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100354A14(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_100354AE8(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(v1 + 8))
      {
        sub_10034F06C(v3);
      }

      sub_100004A34(v4);
    }
  }

  sub_10007060C(&v7);
  return sub_1000049E0(&v6);
}

void sub_100354B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100354BF0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E44490;
  a2[1] = v2;
  return result;
}

void sub_100354C1C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = **(v3 + 80);
    if (v5)
    {
      v6 = PersonalityInfo::logPrefix(v5);
    }

    else
    {
      v6 = "-1";
    }

    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136315650;
    v9 = v6;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v8, 0x20u);
  }
}

uint64_t sub_100354D0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100354D58(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_1000194D8(a1, v4);
  sub_10001021C((v4 + 40));
  operator delete(v4);
  return 1;
}

uint64_t *sub_100354DE4(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100354ED8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10001021C(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100354F94(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E44510;
  a2[1] = v2;
  return result;
}

void sub_100354FC0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = **(v3 + 80);
    if (v5)
    {
      v6 = PersonalityInfo::logPrefix(v5);
    }

    else
    {
      v6 = "-1";
    }

    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136315650;
    v9 = v6;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v8, 0x20u);
  }
}

uint64_t sub_1003550B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10035511C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E44590;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100355198(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E445E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10035526C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_100355310(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100355290(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003552D0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100355310(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (a2 + 24);
    sub_1000087B4(&v3);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

uint64_t sub_100355378(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  if (sub_10079D818())
  {
    operator new();
  }

  return a1;
}

uint64_t *sub_100355460(uint64_t *a1)
{
  sub_1003554BC(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_1003554BC(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    sub_100355534(result, *(result + 8));
    result = *v1;
    *v1 = 0;
    if (result)
    {
      v2 = *(*result + 8);

      return v2();
    }
  }

  return result;
}

void sub_100355534(uint64_t *a1, unsigned int a2)
{
  v10 = 0;
  v11 = 0;
  v4 = sub_10001C610(&v10);
  if (v10)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v6 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v7 = v6;
    if (v6)
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        if (*(v8 + 56))
        {
          WISTimestamp = *(v8 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v6);
          *(v8 + 56) |= 1u;
          *(v8 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v7, WISTimestamp, *v7, v8);
        (*(*v8 + 8))(v8);
      }

      wis::WISServerConnection::SubmitMetric(v10, v7);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_100355614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_10035565C(uint64_t a1, void **a2)
{
  __p = 0uLL;
  v4 = 0;
  ctu::cf::assign();
  sub_100005308(*a2, &__p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p);
  }
}

void sub_1003556B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1003556D4(uint64_t *a1)
{
  v1 = *a1;
  v69 = a1;
  v70 = v1;
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(v1 + 32))
      {
LABEL_109:
        sub_100004A34(v5);
        goto LABEL_110;
      }

      v6 = *(v3 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = **(v3 + 80);
        if (v7)
        {
          v8 = PersonalityInfo::logPrefix(v7);
        }

        else
        {
          v8 = "-1";
        }

        v9 = (v1 + 8);
        if (*(v1 + 31) < 0)
        {
          if (*(v1 + 16))
          {
            v9 = *v9;
          }

          else
          {
            v9 = "<none>";
          }
        }

        else if (!*(v1 + 31))
        {
          v9 = "<none>";
        }

        *buf = 136315650;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v84 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sShow location service off alert. number: '%s'", buf, 0x20u);
      }

      v76 = 0;
      v77 = 0;
      format = 0;
      alertMessage = 0;
      v73 = 0;
      if (*(v1 + 31) < 0)
      {
        v11 = *(v1 + 16);
        if (v11)
        {
          sub_100005F2C(__dst, *(v1 + 8), v11);
          goto LABEL_21;
        }
      }

      else if (*(v1 + 31))
      {
        v10 = *(v1 + 8);
        v72 = *(v1 + 24);
        *__dst = v10;
LABEL_21:
        if (SHIBYTE(v72) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v80 = v72;
        }

        v78 = 0;
        if (SHIBYTE(v80) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v80;
        }

        v81 = 0;
        if (ctu::cf::convert_copy())
        {
          v12 = v78;
          v78 = v81;
          v82 = v12;
          sub_100005978(&v82);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v73 = v78;
        v78 = 0;
        sub_100005978(&v78);
        if (SHIBYTE(v80) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v72) < 0)
        {
          operator delete(__dst[0]);
        }

LABEL_36:
        ServiceMap = Registry::getServiceMap(*(v3 + 48));
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
            goto LABEL_44;
          }
        }

        else
        {
          v21 = 0;
        }

        std::mutex::unlock(v14);
        v20 = 0;
        v22 = 1;
LABEL_44:
        if (!v73)
        {
          if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
          {
            v33 = **(v3 + 80);
            if (v33)
            {
              v34 = PersonalityInfo::logPrefix(v33);
            }

            else
            {
              v34 = "-1";
            }

            sub_10176C0F4(v34, buf);
          }

          goto LABEL_106;
        }

        v23 = Registry::getServiceMap(*(v3 + 48));
        v24 = v23;
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

        std::mutex::lock(v23);
        *buf = v25;
        v29 = sub_100009510(&v24[1].__m_.__sig, buf);
        v68 = v22;
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
            goto LABEL_56;
          }
        }

        else
        {
          v31 = 0;
        }

        std::mutex::unlock(v24);
        v30 = 0;
        v32 = 1;
LABEL_56:
        v35 = (*(*v31 + 72))(v31);
        if ((v32 & 1) == 0)
        {
          sub_100004A34(v30);
        }

        if (v35)
        {
          v36 = kAlertDialogLocalizationTable;
          (*(*v21 + 40))(__p, v21, kAlertDialogLocalizationTable, @"SHORT_CODE_CALLING_WITHOUT_LOCATION_WLAN", 0);
        }

        else
        {
          v36 = kAlertDialogLocalizationTable;
          (*(*v21 + 40))(__p, v21, kAlertDialogLocalizationTable, @"SHORT_CODE_CALLING_WITHOUT_LOCATION", 0);
        }

        *buf = format;
        format = __p[0];
        __p[0] = 0;
        sub_100005978(buf);
        sub_100005978(__p);
        if (!format)
        {
          if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
          {
            v50 = **(v3 + 80);
            if (v50)
            {
              v51 = PersonalityInfo::logPrefix(v50);
            }

            else
            {
              v51 = "-1";
            }

            sub_10176C0B0(v51, buf);
          }

          goto LABEL_106;
        }

        v37 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, format, v73);
        v38 = format;
        format = v37;
        *buf = v38;
        sub_100005978(buf);
        v39 = Registry::getServiceMap(*(v3 + 48));
        v40 = v39;
        v42 = v41;
        if (v41 < 0)
        {
          v43 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
          v44 = 5381;
          do
          {
            v42 = v44;
            v45 = *v43++;
            v44 = (33 * v44) ^ v45;
          }

          while (v45);
        }

        std::mutex::lock(v39);
        *buf = v42;
        v46 = sub_100009510(&v40[1].__m_.__sig, buf);
        if (v46)
        {
          v48 = v46[3];
          v47 = v46[4];
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v40);
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v47);
            v49 = 0;
            goto LABEL_73;
          }
        }

        else
        {
          v48 = 0;
        }

        std::mutex::unlock(v40);
        v47 = 0;
        v49 = 1;
LABEL_73:
        v52 = (*(*v48 + 56))(v48);
        if ((v49 & 1) == 0)
        {
          sub_100004A34(v47);
        }

        sub_100222570(&alertMessage, &format);
        __p[0] = 0;
        (*(*v21 + 40))(__p, v21, v36, @"CANCEL", @"Cancel");
        v82 = 0;
        if (v52)
        {
          v53 = @"TURN_ON";
        }

        else
        {
          v53 = @"SETTINGS";
        }

        if (v52)
        {
          v54 = @"Turn On";
        }

        else
        {
          v54 = @"Settings";
        }

        v22 = v68;
        (*(*v21 + 40))(&v82, v21, v36, v53, v54);
        v81 = 0;
        CFUserNotificationDisplayAlert(0.0, 0, v77, 0, 0, v76, alertMessage, __p[0], v82, 0, &v81);
        if (v81 != 1)
        {
          goto LABEL_105;
        }

        v55 = *(v3 + 40);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = **(v3 + 80);
          if (v56)
          {
            v57 = PersonalityInfo::logPrefix(v56);
          }

          else
          {
            v57 = "-1";
          }

          *buf = 136315394;
          *&buf[4] = v57;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%sLaunch Settings for Location", buf, 0x16u);
        }

        if (!v52)
        {
          *buf = 0;
          v78 = @"prefs:root=Privacy&path=LOCATION";
          sub_10021D11C(buf, &v78);
          v78 = *buf;
          if (*buf)
          {
            CFRetain(*buf);
          }

          sub_1003A5C7C(&v78);
          sub_100005978(&v78);
          sub_100005978(buf);
          goto LABEL_105;
        }

        v58 = Registry::getServiceMap(*(v3 + 48));
        v59 = v58;
        if (v41 < 0)
        {
          v60 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
          v61 = 5381;
          do
          {
            v41 = v61;
            v62 = *v60++;
            v61 = (33 * v61) ^ v62;
          }

          while (v62);
        }

        std::mutex::lock(v58);
        *buf = v41;
        v63 = sub_100009510(&v59[1].__m_.__sig, buf);
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
            goto LABEL_103;
          }
        }

        else
        {
          v65 = 0;
        }

        std::mutex::unlock(v59);
        v64 = 0;
        v66 = 1;
LABEL_103:
        (*(*v65 + 80))(v65, 1);
        if ((v66 & 1) == 0)
        {
          sub_100004A34(v64);
        }

LABEL_105:
        sub_100005978(&v82);
        sub_100005978(__p);
LABEL_106:
        if ((v22 & 1) == 0)
        {
          sub_100004A34(v20);
        }

        sub_100005978(&v73);
        sub_100005978(&format);
        sub_100005978(&alertMessage);
        sub_100005978(&v76);
        sub_1002030AC(&v77);
        goto LABEL_109;
      }

      v73 = 0;
      goto LABEL_36;
    }
  }

LABEL_110:
  sub_100356178(&v70);
  return sub_1000049E0(&v69);
}

void sub_100355FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, char a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, int a39, __int16 a40, char a41, char a42, int a43, __int16 a44, char a45, char a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100356178(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1003561E4(uint64_t a1, uint64_t *a2, void *a3, int a4, uint64_t a5, NSObject **a6, uint64_t *a7)
{
  v13 = kCtLoggingSystemName;
  DataContextName = DataUtils::getDataContextName();
  ctu::OsLogContext::OsLogContext(&v22, v13, DataContextName);
  sub_10035640C((a1 + 8), a6, &v22);
  ctu::OsLogContext::~OsLogContext(&v22);
  v15 = *a2;
  *a1 = *a2;
  *(a1 + *(v15 - 688)) = a2[1];
  *(a1 + *(*a1 - 56)) = a2[2];
  v16 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *a6;
  *(a1 + 64) = *a6;
  if (v17)
  {
    dispatch_retain(v17);
  }

  *(a1 + 72) = 0;
  v18 = DataUtils::getDataContextName();
  v20 = *a7;
  v19 = a7[1];
  *(a1 + 80) = v18;
  *(a1 + 88) = v20;
  *(a1 + 96) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 104) = a4;
  return a1;
}

void sub_1003563C8(_Unwind_Exception *a1)
{
  v3 = v1[8];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = v1[7];
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 5));
  sub_1000C0544(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_10035640C(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100356474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_100356498(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 688)) = a2[1];
  *(a1 + *(*a1 - 56)) = a2[2];
  v4 = a1[12];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    sub_100004A34(v6);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

uint64_t sub_100356654(char *a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 11);
  if (v7)
  {
    v8 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
    v9 = (*(*v7 + 80))(v7, v8, a2, 0);
  }

  else
  {
    v9 = 0;
  }

  sub_100004A34(v6);
  return v9;
}

std::__shared_weak_count *sub_100356744@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 96);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    v5 = *(a1 + 88);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

void sub_1003567A4(char *a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 12);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 11);
    if (v7)
    {
      v8 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
      (*(*v7 + 280))(v7, v8);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    sub_100004A34(v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

uint64_t sub_1003568D0(char *a1)
{
  v2 = *(a1 + 12);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 11);
  if (v5)
  {
    v6 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
    v5 = (*(*v5 + 288))(v5, v6);
  }

  sub_100004A34(v4);
  return v5;
}

uint64_t sub_1003569D0(char *a1)
{
  v2 = *(a1 + 12);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 11);
  if (v5)
  {
    v6 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
    v5 = (*(*v5 + 296))(v5, v6);
  }

  sub_100004A34(v4);
  return v5;
}

uint64_t sub_100356AD4(void *a1, int a2)
{
  v3 = (*(*a1 + 136))(a1, 3) & a2;
  if (v3 == 1)
  {
    (*(*a1 + 392))(a1, 24, "CommCenter");
    v4 = a1[12];
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = a1[11];
        if (v7)
        {
          (*(*v7 + 232))(v7, 3, 0, 1, 0);
        }

        sub_100004A34(v6);
      }
    }
  }

  return v3;
}

std::__shared_weak_count *sub_100356BE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  result = *(a1 + 96);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(a1 + 88);
    }
  }

  return result;
}

uint64_t sub_100356C44(char *a1, uint64_t a2)
{
  if ((*(*a1 + 136))(a1))
  {
    goto LABEL_11;
  }

  v4 = *(a1 + 12);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 11);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
  v10 = 0;
  v11 = 0;
  v8 = (*(*v6 + 440))(v6, v7, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (!v5)
  {
    if (!v8)
    {
      return 1;
    }

    goto LABEL_11;
  }

  sub_100004A34(v5);
  if (v8)
  {
LABEL_11:
    (*(*a1 + 648))(a1, a2, 0);
    (*(*a1 + 392))(a1, 23, "CommCenter");
  }

  return 1;
}

void sub_100356DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100356E58(char *a1)
{
  v2 = *(a1 + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "handleDataContextDeactivated";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: ", buf, 0xCu);
  }

  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 11);
      if (v6)
      {
        v7 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
        (*(*&a1[*(*a1 - 56)] + 16))(&v8);
        (*(*v6 + 304))(v6, v7, &v8);
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100356FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_1003570A0(char *a1)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 11);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
  (*(*v4 + 464))(v4, v5);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_100357190(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003571A8(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[11];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  (*(*(a1 + *(*a1 - 56)) + 16))(&v5);
  (*(*v4 + 472))(v4, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_100357290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003572BC(char *a1)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 11);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = (*(*&a1[*(*a1 - 688)] + 56))(&a1[*(*a1 - 688)]);
  (*(*v4 + 480))(v4, v5);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_1003573AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003573C4(uint64_t a1, char a2, int a3)
{
  if ((a2 & 1) != 0 && *(a1 + 72) != a3)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = asString();
      v8 = asStringBool(*(a1 + 72));
      v13 = 136315906;
      v14 = "setActivated";
      v15 = 2080;
      v16 = v7;
      v17 = 2080;
      v18 = v8;
      v19 = 2080;
      v20 = asStringBool(a3);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) %s: %s->%s", &v13, 0x2Au);
    }

    *(a1 + 72) = a3;
  }

  if ((a2 & 2) != 0 && *(a1 + 73) != a3)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      v11 = asStringBool(*(a1 + 73));
      v12 = asStringBool(a3);
      v13 = 136315906;
      v14 = "setActivated";
      v15 = 2080;
      v16 = v10;
      v17 = 2080;
      v18 = v11;
      v19 = 2080;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) %s: %s->%s", &v13, 0x2Au);
    }

    *(a1 + 73) = a3;
  }
}

void sub_100357590(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (*(*a1 + 48))(a1);
    v6 = 136315138;
    v7[0] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ------- %s (Base) -------", &v6, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 104);
    (*(*(a1 + *(*a1 - 56)) + 24))(a1 + *(*a1 - 56));
    v5 = subscriber::asString();
    v6 = 67109378;
    LODWORD(v7[0]) = v4;
    WORD2(v7[0]) = 2080;
    *(v7 + 6) = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fPdpId = %d simSlot = %s", &v6, 0x12u);
  }
}

uint64_t sub_100357764(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      goto LABEL_9;
    }

    if (a2 != 3)
    {
      return v2 & 1;
    }

LABEL_7:
    if (*(a1 + 72))
    {
      v2 = 1;
      return v2 & 1;
    }

LABEL_9:
    v2 = *(a1 + 73);
    return v2 & 1;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v2 = *(a1 + 72);
  }

  return v2 & 1;
}

void sub_1003577CC()
{
  qword_101FBA280 = @"mobile";
  v8 = 32;
  CFRetain(@"mobile");
  v0 = CFCopyHomeDirectoryURLForUser();
  if (v0)
  {
    v1 = v0;
    v2 = CFURLCopyFileSystemPath(v0, kCFURLPOSIXPathStyle);
    if (v2)
    {
      v3 = v2;
      qword_101FBA288 = sub_100357908(kCFAllocatorDefault, v2, 0, 0, 0x8000100u);
      CFRelease(v3);
    }

    CFRelease(v1);
  }

  *buffer = 0u;
  v10 = 0u;
  v4 = sub_100357908(kCFAllocatorDefault, @"mobile", buffer, &v8, 0x8000100u);
  if (v4)
  {
    v5 = v4;
    v6 = getpwnam(v4);
    if (v6)
    {
      pw_gid = v6->pw_gid;
      dword_101FBA290 = v6->pw_uid;
      dword_101FBA294 = pw_gid;
    }

    if (v5 != buffer)
    {
      CFAllocatorDeallocate(kCFAllocatorDefault, v5);
    }
  }
}

const char *sub_100357908(int a1, CFStringRef theString, char *buffer, CFIndex *a4, CFStringEncoding encoding)
{
  v7 = buffer;
  maxBufLen = 0;
  if (buffer && a4 && *a4 && CFStringGetCString(theString, buffer, *a4, encoding))
  {
    v9 = strlen(v7);
LABEL_12:
    *a4 = v9;
    return v7;
  }

  Length = CFStringGetLength(theString);
  v15.location = 0;
  v15.length = Length;
  CFStringGetBytes(theString, v15, encoding, 0, 0, 0, 0, &maxBufLen);
  Typed = CFAllocatorAllocateTyped();
  if (Typed)
  {
    v12 = Typed;
    v16.location = 0;
    v16.length = Length;
    CFStringGetBytes(theString, v16, encoding, 0, 0, Typed, maxBufLen, &maxBufLen);
    v7 = &v12[maxBufLen];
  }

  else
  {
    maxBufLen = 0;
    v12 = v7;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  *v7 = 0;
  v7 = v12;
LABEL_10:
  if (a4)
  {
    v9 = maxBufLen;
    goto LABEL_12;
  }

  return v7;
}

void sub_100357A80()
{
  qword_101FBA298 = @"_wireless";
  v8 = 32;
  CFRetain(@"_wireless");
  v0 = CFCopyHomeDirectoryURLForUser();
  if (v0)
  {
    v1 = v0;
    v2 = CFURLCopyFileSystemPath(v0, kCFURLPOSIXPathStyle);
    if (v2)
    {
      v3 = v2;
      qword_101FBA2A0 = sub_100357908(kCFAllocatorDefault, v2, 0, 0, 0x8000100u);
      CFRelease(v3);
    }

    CFRelease(v1);
  }

  *buffer = 0u;
  v10 = 0u;
  v4 = sub_100357908(kCFAllocatorDefault, @"_wireless", buffer, &v8, 0x8000100u);
  if (v4)
  {
    v5 = v4;
    v6 = getpwnam(v4);
    if (v6)
    {
      pw_gid = v6->pw_gid;
      dword_101FBA2A8 = v6->pw_uid;
      dword_101FBA2AC = pw_gid;
    }

    if (v5 != buffer)
    {
      CFAllocatorDeallocate(kCFAllocatorDefault, v5);
    }
  }
}

uint64_t sub_100357C64(_BYTE *a1, uid_t a2, gid_t a3, mode_t a4)
{
  bzero(v13, 0x400uLL);
  v8 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v9 = 0;
  v10 = a1 + 1;
  memset(&v12, 0, sizeof(v12));
  while (1)
  {
    v13[v9] = v8;
    if (v8 != 47 || !stat(v13, &v12))
    {
      goto LABEL_7;
    }

    if (mkdir(v13, 0x1FFu))
    {
      return *__error();
    }

    chown(v13, a2, a3);
    chmod(v13, a4);
LABEL_7:
    result = 0;
    if (v9 <= 0x3FD)
    {
      v8 = v10[v9++];
      if (v8)
      {
        continue;
      }
    }

    return result;
  }
}

uint64_t sub_100357D88(const __CFString *a1, const __CFString *a2)
{
  v4.length = CFStringGetLength(a1);
  v4.location = 0;

  return CFStringFindWithOptions(a1, a2, v4, 9uLL, 0);
}

uint64_t _CFStringCopyMCCMNCFromIMSI(const __CFString *a1, const __CFString **a2, CFStringRef *a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    Length = CFStringGetLength(a1);
    if (Length >= 3)
    {
      v8 = Length;
      memset(&v15, 0, sizeof(v15));
      std::string::resize(&v15, Length + 1, 0);
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v15;
      }

      else
      {
        v9 = v15.__r_.__value_.__r.__words[0];
      }

      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v15.__r_.__value_.__l.__size_;
      }

      if (CFStringGetCString(a1, v9, size, 0x8000100u))
      {
        v16.location = 0;
        v16.length = 3;
        v14 = CFStringCreateWithSubstring(kCFAllocatorDefault, a1, v16);
        CFStringGetIntValue(v14);
        if (_is3DigitMNCWithIMSI())
        {
          v11.length = 3;
        }

        else
        {
          v11.length = 2;
        }

        if (v8 >= v11.length + 3)
        {
          v11.location = 3;
          *a3 = CFStringCreateWithSubstring(kCFAllocatorDefault, a1, v11);
          v12 = v14;
          v14 = 0;
          *a2 = v12;
          v3 = 1;
        }

        else
        {
          v3 = 0;
        }

        sub_100005978(&v14);
      }

      else
      {
        v3 = 0;
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_100357F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_100005978(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100357F68(char *a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a3)
  {
    if (a2 < 1)
    {
      result = 0;
    }

    else
    {
      LODWORD(result) = 0;
      do
      {
        v5 = result + 1;
        *(a3 + result) = a0123456789abcd_1[*a1 >> 4];
        v6 = *a1++;
        result = (result + 2);
        *(a3 + v5) = a0123456789abcd_1[v6 & 0xF];
        --a2;
      }

      while (a2);
    }

    *(a3 + result) = 0;
  }

  return result;
}

CFStringRef sub_100357FCC(const __CFAllocator *a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  v6 = malloc_type_malloc((2 * Length) | 1, 0x100004077774924uLL);
  if (sub_100357F68(BytePtr, Length, v6))
  {
    v7 = CFStringCreateWithFormat(a1, 0, @"%s", v6);
  }

  else
  {
    v7 = 0;
  }

  free(v6);
  return v7;
}

void NetworkRejectionMonitorMode::create(CFDictionaryRef *a1@<X4>, char a2@<W5>, void *a3@<X8>)
{
  v38 = a2;
  Value = CFDictionaryGetValue(*a1, @"CellularDataPlanNotSubscribedErrors");
  v6 = 0uLL;
  if (Value)
  {
    v7 = Value;
    v8 = CFGetTypeID(Value);
    if (v8 == CFArrayGetTypeID())
    {
      v40 = 0uLL;
      v41 = 0;
      *&context = &v40;
      v42.length = CFArrayGetCount(v7);
      v42.location = 0;
      CFArrayApplyFunction(v7, v42, sub_100359A28, &context);
      v6 = v40;
      v9 = v41;
    }

    else
    {
      v9 = 0;
      v6 = 0uLL;
    }
  }

  else
  {
    v9 = 0;
  }

  *__p = v6;
  v37 = v9;
  context = 0uLL;
  v35 = 0;
  v10 = CFDictionaryGetValue(*a1, @"ExpirePlanOnNetworkRejectCauseCodes");
  v11 = v10;
  v33 = 0u;
  if (v10 && (v12 = CFGetTypeID(v10), v12 == CFArrayGetTypeID()))
  {
    v40 = 0uLL;
    v41 = 0;
    v39 = &v40;
    v43.length = CFArrayGetCount(v11);
    v43.location = 0;
    CFArrayApplyFunction(v11, v43, sub_100359A28, &v39);
    v33 = v40;
    v13 = v41;
  }

  else
  {
    v13 = 0;
  }

  context = v33;
  v35 = v13;
  v14 = CFDictionaryGetValue(*a1, @"DataPlanNetworkRejectionCause");
  v15 = v14;
  LODWORD(v40) = 0;
  if (v14)
  {
    v16 = CFGetTypeID(v14);
    if (v16 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v40, v15, v17);
    }

    if (v40)
    {
      v18 = *(&context + 1);
      if (*(&context + 1) >= v35)
      {
        v20 = context;
        v21 = *(&context + 1) - context;
        v22 = (*(&context + 1) - context) >> 2;
        v23 = v22 + 1;
        if ((v22 + 1) >> 62)
        {
          sub_1000CE3D4();
        }

        v24 = v35 - context;
        if ((v35 - context) >> 1 > v23)
        {
          v23 = v24 >> 1;
        }

        v25 = v24 >= 0x7FFFFFFFFFFFFFFCLL;
        v26 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v25)
        {
          v26 = v23;
        }

        if (v26)
        {
          sub_100016740(&context, v26);
        }

        *(4 * v22) = v40;
        v19 = 4 * v22 + 4;
        memcpy(0, v20, v21);
        v27 = context;
        *&context = 0;
        *(&context + 1) = v19;
        v35 = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        **(&context + 1) = v40;
        v19 = v18 + 4;
      }

      *(&context + 1) = v19;
    }
  }

  v28 = __p[0];
  v29 = __p[1];
  if (__p[0] != __p[1])
  {
    do
    {
      *v28 = gsmToCsiErrorWithCode();
      v28 += 4;
    }

    while (v28 != v29);
    goto LABEL_40;
  }

  v30 = context;
  if (context != *(&context + 1))
  {
    if (__p[0] >= v37)
    {
      v31 = (v37 - __p[0]) >> 1;
      if (v31 <= 1)
      {
        v31 = 1;
      }

      if (v37 - __p[0] >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v32 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v31;
      }

      sub_100016740(__p, v32);
    }

    *__p[1] = 65;
    __p[1] = v29 + 4;
LABEL_40:
    sub_100359B3C();
  }

  *a3 = 0;
  a3[1] = 0;
  if (v30)
  {
    *(&context + 1) = v30;
    operator delete(v30);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_100358438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void NetworkRejectionMonitorMode::init(NetworkRejectionMonitorMode *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

uint64_t NetworkRejectionMonitorMode::NetworkRejectionMonitorMode(uint64_t a1, dispatch_object_t *a2, void *a3, uint64_t *a4, uint64_t a5, CFDictionaryRef *a6, uint64_t *a7, uint64_t *a8, char a9)
{
  v31 = *a2;
  if (v31)
  {
    dispatch_retain(v31);
  }

  v17 = a4[1];
  v29 = *a4;
  v30 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v28 = *(a5 + 16);
  }

  sub_10031435C(a1, &v31, a3, &v29, "mm.rej", __p);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  if (v30)
  {
    sub_100004A34(v30);
  }

  if (v31)
  {
    dispatch_release(v31);
  }

  *a1 = off_101E44A10;
  sub_10000501C(&v25, "mm.rej");
  v24 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::RestModule::RestModule();
  if (v24)
  {
    dispatch_release(v24);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 176) = 0;
  *(a1 + 216) = 0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  sub_10024064C(a1 + 256, *a7, a7[1], (a7[1] - *a7) >> 2);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  sub_10024064C(a1 + 280, *a8, a8[1], (a8[1] - *a8) >> 2);
  v18 = a9;
  if (a9)
  {
    Value = CFDictionaryGetValue(*a6, @"ResetBBAfterSuccessfulPlanPurchase");
    v20 = Value;
    v32 = 0;
    if (Value && (v21 = CFGetTypeID(Value), v21 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v32, v20, v22);
      v18 = v32;
    }

    else
    {
      v18 = 0;
    }
  }

  *(a1 + 304) = v18 & 1;
  return a1;
}

void sub_1003587D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    sub_100004A34(a26);
  }

  v28 = *(v26 - 80);
  if (v28)
  {
    dispatch_release(v28);
  }

  _Unwind_Resume(exception_object);
}

void NetworkRejectionMonitorMode::~NetworkRejectionMonitorMode(NetworkRejectionMonitorMode *this)
{
  *this = off_101E44A10;
  v2 = (this + 160);
  sub_10035899C();
  sub_100358A0C();
  sub_100358A7C();
  sub_100358AEC();
  ctu::RestModule::disconnect(v2);
  v3 = *(this + 35);
  if (v3)
  {
    *(this + 36) = v3;
    operator delete(v3);
  }

  v4 = *(this + 32);
  if (v4)
  {
    *(this + 33) = v4;
    operator delete(v4);
  }

  sub_100359978(this + 232, *(this + 30));
  sub_10006DCAC(this + 208, *(this + 27));
  sub_100077CD4(this + 184, *(this + 24));
  v5 = *(this + 21);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_10031452C(this);
}

{
  NetworkRejectionMonitorMode::~NetworkRejectionMonitorMode(this);

  operator delete();
}

void sub_10035899C()
{
  sub_10000501C(&__p, "/cc/props/current_data_slot");
  ctu::RestModule::unobserveProperty();
  if (v1 < 0)
  {
    operator delete(__p);
  }
}

void sub_1003589F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100358A0C()
{
  sub_10000501C(&__p, "/cc/props/internal_internet_connection_state");
  ctu::RestModule::unobserveProperty();
  if (v1 < 0)
  {
    operator delete(__p);
  }
}

void sub_100358A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100358A7C()
{
  sub_10000501C(&__p, "/cc/props/network_rejects");
  ctu::RestModule::unobserveProperty();
  if (v1 < 0)
  {
    operator delete(__p);
  }
}

void sub_100358AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100358AEC()
{
  sub_10000501C(&__p, "/cc/props/sims_in_use");
  ctu::RestModule::unobserveProperty();
  if (v1 < 0)
  {
    operator delete(__p);
  }
}

void sub_100358B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NetworkRejectionMonitorMode::runMonitorModeAction_sync(NetworkRejectionMonitorMode *this)
{
  if (sub_100314EB4(this))
  {
    SimInstance_sync = NetworkRejectionMonitorMode::getSimInstance_sync(this, 3);
    if ((SimInstance_sync & 0x100000000) == 0)
    {
      return;
    }

    v3 = *(this + 24);
    if (!v3)
    {
      return;
    }

    v4 = (this + 192);
    do
    {
      if (v3[8] >= SimInstance_sync)
      {
        v4 = v3;
      }

      v3 = *&v3[2 * (v3[8] < SimInstance_sync)];
    }

    while (v3);
    if (v4 == (this + 192) || v4[8] > SimInstance_sync)
    {
      return;
    }

    v5 = v4[16];
    if (v5 != 3 && v5 != 0)
    {
      return;
    }

    ServiceMap = Registry::getServiceMap(*(this + 6));
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
    v20 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &v20);
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
        goto LABEL_26;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
LABEL_26:
    if (v15)
    {
      v17 = *(this + 44);
      sub_10000501C(__p, "Connection Expiry Monitor Mode Start");
      (*(*v15 + 88))(v15, v17, 1, 1, __p, 1, 0);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((v16 & 1) == 0)
    {
      sub_100004A34(v14);
    }

    return;
  }

  NetworkRejectionMonitorMode::handleNetworkRejectionUpdated_sync(this);
}

void sub_100358D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void NetworkRejectionMonitorMode::handleNetworkRejectionUpdated_sync(NetworkRejectionMonitorMode *this)
{
  SimInstance_sync = NetworkRejectionMonitorMode::getSimInstance_sync(this, 3);
  if ((SimInstance_sync & 0x100000000) != 0)
  {
    v3 = SimInstance_sync;
    if (*(this + 304) == 1 && (*(this + 305) & 1) == 0)
    {
      *(this + 305) = 1;
      sub_10000501C(&v10, "New Data Plan");
      rest::ResetPayload::ResetPayload();
      sub_100108D68();
      if (v13 < 0)
      {
        operator delete(__p);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    else if (!sub_100314EB4(this))
    {
      v4 = *(this + 27);
      if (v4)
      {
        v5 = this + 216;
        do
        {
          if (*(v4 + 7) >= v3)
          {
            v5 = v4;
          }

          v4 = *&v4[8 * (*(v4 + 7) < v3)];
        }

        while (v4);
        if (v5 != this + 216 && *(v5 + 7) <= v3)
        {
          v6 = *(this + 35);
          v7 = *(this + 36);
          if (v6 != v7)
          {
            v8 = v5[32];
            while (*v6 != v8)
            {
              if (++v6 == v7)
              {
                return;
              }
            }

            v9 = *(this + 5);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__p) = 67109120;
              HIDWORD(__p) = v8;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Matched reject expiry: %d", &__p, 8u);
            }

            sub_100314A14(this, 0x100u);
          }
        }
      }
    }
  }
}

void sub_100358F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t NetworkRejectionMonitorMode::getSimInstance_sync(uint64_t a1, int a2)
{
  v36 = 0u;
  memset(&__p, 0, sizeof(__p));
  *v34 = 0u;
  *v35 = 0u;
  *v32 = 0u;
  v33 = 0u;
  memset(v31, 0, sizeof(v31));
  v29 = 0u;
  *v30 = 0u;
  if (a2 == 3)
  {
    v3 = *(a1 + 232);
    v4 = (a1 + 240);
    if (v3 != (a1 + 240))
    {
      v5 = (a1 + 64);
      v6 = *(a1 + 87);
      if (v6 >= 0)
      {
        v7 = *(a1 + 87);
      }

      else
      {
        v7 = *(a1 + 72);
      }

      while (1)
      {
        v8 = *(v3 + 135);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = v3[15];
        }

        if (v8 == v7)
        {
          v10 = v9 >= 0 ? v3 + 14 : v3[14];
          v11 = (v6 >= 0 ? a1 + 64 : *v5);
          if (!memcmp(v10, v11, v7))
          {
            break;
          }
        }

        v12 = v3[1];
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
            v13 = v3[2];
            v14 = *v13 == v3;
            v3 = v13;
          }

          while (!v14);
        }

        v3 = v13;
        if (v13 == v4)
        {
          goto LABEL_52;
        }
      }
    }

    if (v3 == v4)
    {
      goto LABEL_52;
    }

    v29 = *(v3 + 5);
    if (&v29 != (v3 + 5))
    {
      sub_1000B26FC(v30, v3[7], v3[8], (v3[8] - v3[7]) >> 2);
      sub_1000B2828(v31 + 1, v3[10], v3[11], 0xCCCCCCCCCCCCCCCDLL * ((v3[11] - v3[10]) >> 3));
    }

    LODWORD(v32[0]) = *(v3 + 26);
    WORD2(v32[0]) = *(v3 + 54);
    std::string::operator=(&v32[1], (v3 + 14));
    std::string::operator=(v34, (v3 + 17));
    std::string::operator=(&v35[1], (v3 + 20));
    std::string::operator=(&__p, (v3 + 23));
  }

  else
  {
    v15 = *(a1 + 240);
    if (!v15)
    {
      goto LABEL_52;
    }

    v16 = a1 + 240;
    do
    {
      if (*(v15 + 32) >= a2)
      {
        v16 = v15;
      }

      v15 = *(v15 + 8 * (*(v15 + 32) < a2));
    }

    while (v15);
    if (v16 == a1 + 240 || *(v16 + 32) > a2)
    {
      goto LABEL_52;
    }

    v29 = *(v16 + 40);
    if (&v29 != (v16 + 40))
    {
      sub_1000B26FC(v30, *(v16 + 56), *(v16 + 64), (*(v16 + 64) - *(v16 + 56)) >> 2);
      sub_1000B2828(v31 + 1, *(v16 + 80), *(v16 + 88), 0xCCCCCCCCCCCCCCCDLL * ((*(v16 + 88) - *(v16 + 80)) >> 3));
    }

    LODWORD(v32[0]) = *(v16 + 104);
    WORD2(v32[0]) = *(v16 + 108);
    std::string::operator=(&v32[1], (v16 + 112));
    std::string::operator=(v34, (v16 + 136));
    std::string::operator=(&v35[1], (v16 + 160));
    std::string::operator=(&__p, (v16 + 184));
  }

  if (v33 >= 0)
  {
    v17 = HIBYTE(v33);
  }

  else
  {
    v17 = v33;
  }

  v18 = *(a1 + 87);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a1 + 72);
  }

  if (v17 != v18)
  {
LABEL_52:
    v26 = 0;
    v25 = 0;
    v27 = 0;
    goto LABEL_53;
  }

  if (v33 >= 0)
  {
    v20 = &v32[1];
  }

  else
  {
    v20 = v32[1];
  }

  v23 = *(a1 + 64);
  v22 = (a1 + 64);
  v21 = v23;
  if (v19 >= 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  v25 = 0;
  v26 = 0;
  if (!memcmp(v20, v24, v17))
  {
    v27 = 0;
    if (DWORD2(v29) == 5)
    {
      v27 = v29 & 0xFFFFFF00;
      v25 = v29;
      v26 = &_mh_execute_header;
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_53:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[1]);
  }

  if (SHIBYTE(v35[0]) < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  v38 = v31 + 1;
  sub_100034D1C(&v38);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  return v26 | v27 | v25;
}

void NetworkRejectionMonitorMode::dumpState_sync(NetworkRejectionMonitorMode *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 32);
    v3 = *(this + 33);
    v20 = ",";
    v21 = 1;
    memset(&__p, 0, sizeof(__p));
    if (v4 != v3)
    {
      std::to_string(&v22, *v4);
      __p = v22;
      for (i = v4 + 1; i != v3; ++i)
      {
        sub_100074CFC(&v20, &v22);
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v22;
        }

        else
        {
          v6 = v22.__r_.__value_.__r.__words[0];
        }

        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v22.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v6, size);
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        std::to_string(&v22, *i);
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = &v22;
        }

        else
        {
          v8 = v22.__r_.__value_.__r.__words[0];
        }

        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v9 = v22.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v8, v9);
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }
      }
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(v22.__r_.__value_.__l.__data_) = 136315138;
    *(v22.__r_.__value_.__r.__words + 4) = p_p;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Activation Expiry codes: {%s}", &v22, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(this + 35);
    v11 = *(this + 36);
    v20 = ",";
    v21 = 1;
    memset(&__p, 0, sizeof(__p));
    if (v12 != v11)
    {
      std::to_string(&v22, *v12);
      __p = v22;
      for (j = v12 + 1; j != v11; ++j)
      {
        sub_100074CFC(&v20, &v22);
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v22;
        }

        else
        {
          v14 = v22.__r_.__value_.__r.__words[0];
        }

        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v15 = v22.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v14, v15);
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        std::to_string(&v22, *j);
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v22;
        }

        else
        {
          v16 = v22.__r_.__value_.__r.__words[0];
        }

        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v17 = v22.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v16, v17);
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }
      }
    }

    v18 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(v22.__r_.__value_.__l.__data_) = 136315138;
    *(v22.__r_.__value_.__r.__words + 4) = v18;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Network Expiry codes: {%s}", &v22, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  sub_100314754(this);
}

void sub_100359610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NetworkRejectionMonitorMode::handleConnectionActivateError_sync(uint64_t a1, unint64_t a2, char a3)
{
  if (sub_100314EB4(a1))
  {
    return;
  }

  if ((NetworkRejectionMonitorMode::getSimInstance_sync(a1, a2) & 0x100000000) == 0)
  {
    return;
  }

  if (!sub_10030D8C4(a3))
  {
    return;
  }

  v6 = *(a1 + 256);
  v7 = *(a1 + 264);
  if (v6 == v7)
  {
    return;
  }

  v8 = HIDWORD(a2);
  while (*v6 != HIDWORD(a2))
  {
    if (++v6 == v7)
    {
      return;
    }
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Matched activation expiry: %d", buf, 8u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  *buf = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, buf);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_19:
  if (v18)
  {
    v20 = *(a1 + 176);
    sub_10000501C(__p, "Connection Expiry Monitor Mode Failure");
    (*(*v18 + 88))(v18, v20, 1, 0, __p, 1, 0);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  sub_100314A14(a1, 0x100u);
}

void sub_10035988C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void NetworkRejectionMonitorMode::handleInternetConnectionUpdated_sync(NetworkRejectionMonitorMode *this)
{
  SimInstance_sync = NetworkRejectionMonitorMode::getSimInstance_sync(this, 3);
  if ((SimInstance_sync & 0x100000000) != 0)
  {
    v3 = *(this + 24);
    if (v3)
    {
      v4 = (this + 192);
      do
      {
        if (v3[8] >= SimInstance_sync)
        {
          v4 = v3;
        }

        v3 = *&v3[2 * (v3[8] < SimInstance_sync)];
      }

      while (v3);
      if (v4 != (this + 192) && v4[8] <= SimInstance_sync && v4[16] == 2)
      {
        *(this + 305) = 1;

        sub_100314A14(this, 0x101u);
      }
    }
  }
}

void sub_100359978(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100359978(a1, *a2);
    sub_100359978(a1, *(a2 + 1));
    if (a2[207] < 0)
    {
      operator delete(*(a2 + 23));
    }

    if (a2[183] < 0)
    {
      operator delete(*(a2 + 20));
    }

    if (a2[159] < 0)
    {
      operator delete(*(a2 + 17));
    }

    if (a2[135] < 0)
    {
      operator delete(*(a2 + 14));
    }

    v5 = (a2 + 80);
    sub_100034D1C(&v5);
    v4 = *(a2 + 7);
    if (v4)
    {
      *(a2 + 8) = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void sub_100359A28(void *a1, const void ***a2)
{
  v18 = 0;
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v18, a1, v5);
    }
  }

  v6 = *a2;
  v8 = v6[1];
  v7 = v6[2];
  if (v8 >= v7)
  {
    v10 = *v6;
    v11 = v8 - *v6;
    v12 = v11 >> 2;
    v13 = (v11 >> 2) + 1;
    if (v13 >> 62)
    {
      sub_1000CE3D4();
    }

    v14 = v7 - v10;
    if (v14 >> 1 > v13)
    {
      v13 = v14 >> 1;
    }

    v15 = v14 >= 0x7FFFFFFFFFFFFFFCLL;
    v16 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v15)
    {
      v16 = v13;
    }

    if (v16)
    {
      sub_100016740(v6, v16);
    }

    *(4 * v12) = v18;
    v9 = 4 * v12 + 4;
    memcpy(0, v10, v11);
    v17 = *v6;
    *v6 = 0;
    v6[1] = v9;
    v6[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = v18;
    v9 = (v8 + 4);
  }

  v6[1] = v9;
}

void *sub_100359C18(void *a1, NSObject **a2, void *a3, uint64_t *a4, uint64_t a5, const void **a6, uint64_t *a7, uint64_t *a8, char *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E44AD8;
  sub_100359D20(a1 + 3, a2, a3, a4, a5, a6, a7, a8, a9);
  return a1;
}

void sub_100359CA4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E44AD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100359D20(void *a1, NSObject **a2, void *a3, uint64_t *a4, uint64_t a5, const void **a6, uint64_t *a7, uint64_t *a8, char *a9)
{
  v16 = *a2;
  v22 = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  v17 = *a4;
  v18 = a4[1];
  v21[0] = v17;
  v21[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v20, a6);
  NetworkRejectionMonitorMode::NetworkRejectionMonitorMode(a1, &v22, a3, v21, a5, &v20, a7, a8, *a9);
  sub_10001021C(&v20);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  *a1 = &off_101E44B28;
  return a1;
}

void sub_100359E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(a1);
}

void sub_100359E58(NetworkRejectionMonitorMode *a1)
{
  NetworkRejectionMonitorMode::~NetworkRejectionMonitorMode(a1);

  operator delete();
}

void sub_100359E90(uint64_t **a1)
{
  v1 = **a1;
  Registry::createRestModuleOneTimeUseConnection(&v2, *(v1 + 48));
  ctu::RestModule::connect();
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100118C58(v1 + 176);
  sub_10035A040();
}

void sub_100359FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  operator delete();
}

void sub_10035A12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10035A1DC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E44BC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10035A21C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10035A268(uint64_t *a1, xpc_object_t *a2)
{
  sub_10035A2E4(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10035A2E4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_100077CD4(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v12, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v11, object, count);
    xpc_release(object[0]);
    for (i = v13; i != v11[1] || v12 != v11[0]; i = ++v13)
    {
      v10 = 0;
      object[0] = &v12;
      object[1] = i;
      sub_10003EAD4(object, &v10);
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        v9 = 0;
        *object = 0u;
        v8 = 0u;
        sub_10035A750(object);
        v6 = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10035A59C(object, &v6);
        xpc_release(v6);
        sub_10035A7D8(a1, object);
        if (SHIBYTE(v8) < 0)
        {
          operator delete(object[1]);
        }
      }

      xpc_release(v10);
    }

    xpc_release(v11[0]);
    xpc_release(v12);
  }

  xpc_release(v3);
}

void sub_10035A4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(*(v21 - 48));
  xpc_release(v20);
  _Unwind_Resume(a1);
}

void sub_10035A59C(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    read_rest_value();
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_10035A6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

_DWORD *sub_10035A750(_DWORD *a1)
{
  *a1 = 0;
  sub_10000501C(&__p, "");
  NetworkInterfaceInfo::NetworkInterfaceInfo();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_10035A7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10035A7D8(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_10035A9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10035AA68(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E44C40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10035AAA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10035AAF4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a1;
  v21 = 0uLL;
  v22 = 0;
  sub_10010A62C(&v21, a2);
  p_size = &v3->__r_.__value_.__l.__size_;
  size = v3->__r_.__value_.__l.__size_;
  v18 = v3->__r_.__value_.__r.__words[0];
  v19 = size;
  v20 = v3->__r_.__value_.__r.__words[2];
  if (v20)
  {
    *(size + 16) = &v19;
    v3->__r_.__value_.__r.__words[0] = p_size;
    *p_size = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v18 = &v19;
  }

  v16 = v21;
  v17 = v22;
  v22 = 0;
  v21 = 0uLL;
  sub_100D21B04(v3, &v16);
  v23 = &v16;
  sub_1000B2AF8(&v23);
  if (v20 == v3->__r_.__value_.__r.__words[2])
  {
    v6 = v18;
    if (v18 == &v19)
    {
      goto LABEL_24;
    }

    v7 = v3->__r_.__value_.__r.__words[0];
    while (*(v6 + 8) == *(v7 + 8) && BasicSimInfo::operator==())
    {
      v8 = v6[1];
      v9 = v6;
      if (v8)
      {
        do
        {
          v6 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v6 = v9[2];
          v10 = *v6 == v9;
          v9 = v6;
        }

        while (!v10);
      }

      v11 = v7[1];
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
          v12 = v7[2];
          v10 = *v12 == v7;
          v7 = v12;
        }

        while (!v10);
      }

      v7 = v12;
      if (v6 == &v19)
      {
        goto LABEL_24;
      }
    }
  }

  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = (*(a1 + 8) + (v14 >> 1));
  if (v14)
  {
    v13 = *(*v15 + v13);
  }

  v13(v15);
LABEL_24:
  sub_100359978(&v18, v19);
  v18 = &v21;
  sub_1000B2AF8(&v18);
}

void sub_10035ACB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, char *a13, uint64_t a14, char a15)
{
  sub_100359978(&a12, a13);
  a12 = &a15;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_10035ACFC(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_10035AEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10035AF98(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E44CC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10035AFD8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10035B024(uint64_t *a1, xpc_object_t *a2)
{
  sub_1002FF8E0(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10035B17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10035B22C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E44D40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10035B264(void *a1)
{
  read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, 0, 0);
}

uint64_t sub_10035B2E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10035B40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10035B4BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E44DC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10035B4F4(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_10035B53C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL isMandatoryDisabledVoLTE(int a1)
{
  if (a1 == 1)
  {
    v1 = "DisableVoLTE_slot1";
  }

  else
  {
    v1 = "DisableVoLTE_slot2";
  }

  v7 = 0;
  v2 = sub_10005D028();
  sub_10000501C(__p, v1);
  v3 = sub_1010D7A88(v2, __p, &v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_10035B604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mandatoryDisableVoLTE(Registry **a1, uint64_t a2, int a3)
{
  if (a2 == 1)
  {
    v6 = "DisableVoLTE_slot1";
  }

  else
  {
    v6 = "DisableVoLTE_slot2";
  }

  v20 = 1;
  v7 = sub_10005D028();
  sub_10000501C(&__p, v6);
  v8 = sub_1010D7A88(v7, &__p.__r_.__value_.__l.__data_, &v20);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8 != a3)
  {
    v9 = sub_10005D028();
    sub_10000501C(&__p, v6);
    if (a3)
    {
      sub_1014A6EC0(v9, &__p, &v20);
    }

    else
    {
      sub_10033220C(v9, &__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ServiceMap = Registry::getServiceMap(*a1);
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
    __p.__r_.__value_.__r.__words[0] = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, &__p);
    if (!v16)
    {
      std::mutex::unlock(v11);
      return;
    }

    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      if (!v18)
      {
LABEL_26:
        sub_100004A34(v17);
        return;
      }
    }

    else
    {
      std::mutex::unlock(v11);
      if (!v18)
      {
        return;
      }
    }

    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    (*(*v18 + 8))(&__p, v18, a2);
    if (__p.__r_.__value_.__r.__words[0])
    {
      (*(*__p.__r_.__value_.__l.__data_ + 64))(__p.__r_.__value_.__r.__words[0], 2);
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      sub_100004A34(__p.__r_.__value_.__l.__size_);
    }

    if (v17)
    {
      goto LABEL_26;
    }
  }
}

void sub_10035B824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035B960(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoLteControl::VoLteControl(uint64_t a1, void *a2, NSObject **a3, void *a4, uint64_t a5)
{
  ctu::OsLogContext::OsLogContext(&v17, kCtLoggingSystemName, "ps.vol");
  sub_1001303E4((a1 + 8), a3, &v17);
  ctu::OsLogContext::~OsLogContext(&v17);
  *a1 = off_101E44E40;
  v10 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = a5;
  sub_10000501C(&__p, "VoLteControl");
  v12 = *(a1 + 24);
  v14 = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::RestModule::RestModule();
  if (v14)
  {
    dispatch_release(v14);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  *(a1 + 168) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 256) = a1 + 264;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  *(a1 + 292) = 0;
  *(a1 + 280) = 0;
  *(a1 + 284) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  MCCAndMNC::MCCAndMNC((a1 + 312));
  *(a1 + 376) = 0;
  sub_100375B34(a1 + 384, a2, *(**a4 + 52));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  return a1;
}

void sub_10035BB94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_1002FECBC(v24 + 80);
  sub_10004C4EC(v25, *(v18 + 264));
  sub_10006DCAC(v24, *(v18 + 240));
  sub_10006DCAC(v23, *(v18 + 216));
  sub_10006DCAC(v22, *(v18 + 192));
  sub_10032D3A4(v21, *(v18 + 168));
  sub_100009970(v20, *(v18 + 136));
  sub_10004EC58(v19, *(v18 + 112));
  v27 = *(v18 + 96);
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = *(v18 + 72);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v18 + 56);
  if (v29)
  {
    sub_100004A34(v29);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v18 + 40));
  sub_1000C0544((v18 + 8));
  _Unwind_Resume(a1);
}

void VoLteControl::~VoLteControl(VoLteControl *this)
{
  *this = off_101E44E40;
  v2 = *(this + 53);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100375B78((this + 384));
  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  if (*(this + 343) < 0)
  {
    operator delete(*(this + 40));
  }

  sub_10004C4EC(this + 256, *(this + 33));
  sub_10006DCAC(this + 232, *(this + 30));
  sub_10006DCAC(this + 208, *(this + 27));
  sub_10006DCAC(this + 184, *(this + 24));
  sub_10032D3A4(this + 160, *(this + 21));
  sub_100009970(this + 128, *(this + 17));
  sub_10004EC58(this + 104, *(this + 14));
  v3 = *(this + 12);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    sub_100004A34(v5);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  VoLteControl::~VoLteControl(this);

  operator delete();
}

void VoLteControl::storage_migration_Peace(Registry **this)
{
  v51 = 0;
  v2 = sub_10005D028();
  sub_10000501C(__p, "kEnableIMSUserPreference");
  v3 = sub_1002D5DB8(v2, __p, &v51);
  v4 = v3;
  if (v50 < 0)
  {
    operator delete(__p[0]);
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  else if (!v3)
  {
    goto LABEL_19;
  }

  v5 = sub_10005D028();
  sub_10000501C(__p, "kEnableIMSUserPreference");
  sub_10033220C(v5, __p);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  ServiceMap = Registry::getServiceMap(this[6]);
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
  __p[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __p);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_14:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_15;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_15:
  v16 = *this[8];
  v17 = kCFEnableIMSUserPreference;
  v52 = 0;
  LODWORD(__p[0]) = v51;
  v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, __p);
  if (v18)
  {
    v19 = v52;
    v52 = v18;
    __p[0] = v19;
    sub_100029A48(__p);
  }

  v48 = v52;
  v52 = 0;
  sub_100029A48(&v52);
  (*(*v14 + 48))(v14, v16 + 24, v17, v48, kPhoneServicesWalletDomain, 0, 1, 0);
  sub_100029A48(&v48);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

LABEL_19:
  LOBYTE(v52) = 0;
  v20 = sub_10005D028();
  sub_10000501C(__p, "VoLTEBlockedByNetwork");
  v21 = sub_10005D0D8(v20, __p, &v52);
  v22 = v21;
  if (v50 < 0)
  {
    operator delete(__p[0]);
    if (!v22)
    {
      goto LABEL_35;
    }
  }

  else if (!v21)
  {
    goto LABEL_35;
  }

  v23 = sub_10005D028();
  sub_10000501C(__p, "VoLTEBlockedByNetwork");
  sub_10033220C(v23, __p);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = Registry::getServiceMap(this[6]);
  v25 = v24;
  if (v26 < 0)
  {
    v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v26 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  std::mutex::lock(v24);
  __p[0] = v26;
  v30 = sub_100009510(&v25[1].__m_.__sig, __p);
  if (v30)
  {
    v32 = v30[3];
    v31 = v30[4];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v31);
      v33 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v32 = 0;
  }

  std::mutex::unlock(v25);
  v31 = 0;
  v33 = 1;
LABEL_33:
  (*(*v32 + 16))(v32, *this[8] + 24, kCFVoLTEBlockedByNetworkKey, kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 1, 0);
  if ((v33 & 1) == 0)
  {
    sub_100004A34(v31);
  }

LABEL_35:
  LOBYTE(v48) = 0;
  v34 = sub_10005D028();
  sub_10000501C(__p, "VoLTENetworkSeen");
  v35 = sub_10005D0D8(v34, __p, &v48);
  v36 = v35;
  if (v50 < 0)
  {
    operator delete(__p[0]);
    if (!v36)
    {
      return;
    }
  }

  else if (!v35)
  {
    return;
  }

  v37 = sub_10005D028();
  sub_10000501C(__p, "VoLTENetworkSeen");
  sub_10033220C(v37, __p);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  v38 = Registry::getServiceMap(this[6]);
  v39 = v38;
  if (v40 < 0)
  {
    v41 = (v40 & 0x7FFFFFFFFFFFFFFFLL);
    v42 = 5381;
    do
    {
      v40 = v42;
      v43 = *v41++;
      v42 = (33 * v42) ^ v43;
    }

    while (v43);
  }

  std::mutex::lock(v38);
  __p[0] = v40;
  v44 = sub_100009510(&v39[1].__m_.__sig, __p);
  if (v44)
  {
    v46 = v44[3];
    v45 = v44[4];
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v39);
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v45);
      v47 = 0;
      goto LABEL_49;
    }
  }

  else
  {
    v46 = 0;
  }

  std::mutex::unlock(v39);
  v45 = 0;
  v47 = 1;
LABEL_49:
  (*(*v46 + 16))(v46, *this[8] + 24, kCFVoLTENetworkSeenKey, kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 1, 0);
  if ((v47 & 1) == 0)
  {
    sub_100004A34(v45);
  }
}

void sub_10035C2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(exception_object);
}

void VoLteControl::initialize(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sinitializing", buf, 0x16u);
  }

  ServiceMap = Registry::getServiceMap(*(this + 6));
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
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
LABEL_11:
  v13 = *(this + 53);
  *(this + 52) = v12;
  *(this + 53) = v11;
  if (v13)
  {
    sub_100004A34(v13);
  }

  VoLteControl::storage_migration_Peace(this);
  Registry::createRestModuleOneTimeUseConnection(&v15, *(this + 6));
  ctu::RestModule::connect();
  if (v16)
  {
    sub_100004A34(v16);
  }

  sub_100004AA0(buf, this + 1);
  v14 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
  }

  sub_10000501C(&__p, "/cc/props/ims_voice_support");
  operator new();
}

void sub_10035CA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_1000062D4(&a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10035CB14(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/carrier_blocks_calls_over_cs");
  v4[0] = off_101E45468;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10035CBC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10035CBF4(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/operator_blocks_calls_over_cs");
  v4[0] = off_101E454E8;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10035CCA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **VoLteControl::readRawSwitchState(VoLteControl *this)
{
  *(this + 74) = 0;
  v21 = 0;
  ServiceMap = Registry::getServiceMap(*(this + 6));
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
  (*(*v10 + 64))(&v20, v10, **(this + 8) + 24, kCFEnableIMSUserPreference, kPhoneServicesWalletDomain, 0, 1);
  sub_10010B240(&v21, &v20);
  sub_10000A1EC(&v20);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v21)
  {
    *buf = 0;
    ctu::cf::assign(buf, v21, v12);
    v13 = *buf;
    if (*buf > 0)
    {
      v14 = 2;
LABEL_19:
      *(this + 74) = v14;
      return sub_100029A48(&v21);
    }

    v15 = VoLteControl::volteSwitchVer(this);
    v16 = -v13;
    if (v15 <= -v13)
    {
      v14 = 1;
      goto LABEL_19;
    }

    v17 = *(this + 5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = PersonalityInfo::logPrefix(**(this + 8));
      *buf = 136315906;
      *&buf[4] = v18;
      v23 = 2080;
      v24 = " ";
      v25 = 1024;
      v26 = v16;
      v27 = 1024;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: user preference has ver:%d vs current:%d, force reset to default", buf, 0x22u);
    }

    (*(*this + 96))(this);
  }

  return sub_100029A48(&v21);
}

void sub_10035CF44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

BOOL VoLteControl::evaluateCarrierSupport(VoLteControl *this)
{
  if (capabilities::ct::supportsVoLTE(this))
  {
    *buf = 0;
    (*(**(this + 52) + 96))(&v13);
    sub_10002FE1C(buf, &v13);
    sub_10000A1EC(&v13);
    LOBYTE(v13) = 0;
    ctu::cf::assign(&v13, *buf, v2);
    v3 = v13;
    sub_100045C8C(buf);
  }

  else
  {
    if (*(this + 281) == 1)
    {
      v4 = *(this + 5);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = PersonalityInfo::logPrefix(**(this + 8));
        *buf = 136315394;
        *&buf[4] = v5;
        v15 = 2080;
        v16 = " ";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sDevice does not support VoLTE", buf, 0x16u);
      }
    }

    v3 = 0;
  }

  v6 = *(this + 281);
  v7 = v3 & 1;
  if (v6 != v7)
  {
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(**(this + 8));
      v10 = CSIBOOLAsString(*(this + 281));
      v11 = CSIBOOLAsString(v7);
      *buf = 136315906;
      *&buf[4] = v9;
      v15 = 2080;
      v16 = " ";
      v17 = 2080;
      v18 = v10;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sSupports VoLTE capability is changing from %s to %s", buf, 0x2Au);
    }

    *(this + 281) = v7;
  }

  return v6 != v7;
}

void sub_10035D1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

uint64_t VoLteControl::start(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sstarted", &v5, 0x16u);
  }

  return (*(*this + 104))(this, 0, 1);
}

void VoLteControl::sHandleMigrationForAll(Registry **a1, uint64_t a2, int a3)
{
  oslog = 0;
  ctu::OsLogContext::OsLogContext(&buf, kCtLoggingSystemName, "ps.vol");
  ctu::OsLogLogger::OsLogLogger(&oslog, &buf);
  ctu::OsLogContext::~OsLogContext(&buf);
  v5 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.var0) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Migrator has called to re-evaluate the saved VoLTE Switch state", &buf, 2u);
    v5 = oslog;
  }

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v7 = CSIBOOLAsString(a3);
    LODWORD(buf.var0) = 136315138;
    *(&buf.var0 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Is from a different device: %s", &buf, 0xCu);
  }

  if (a3)
  {
    v8 = capabilities::ct::latestAndGreatestDevice(v6);
    v9 = oslog;
    if (v8)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I VoLTE Switch: Restoring on latest and greatest from other device, force reset to default if OFF", &buf, 2u);
      }

      ServiceMap = Registry::getServiceMap(*a1);
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
      buf.var0 = v12;
      v16 = sub_100009510(&v11[1].__m_.__sig, &buf);
      if (v16)
      {
        v18 = v16[3];
        v17 = v16[4];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v11);
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v17);
          v28 = 0;
LABEL_20:
          buf.var0 = 0;
          buf.var1.fRef = 0;
          v34 = 0;
          (*(*v18 + 80))(&buf, v18, 0);
          var0 = buf.var0;
          fRef = buf.var1.fRef;
          if (buf.var0 != buf.var1.fRef)
          {
            v21 = kPhoneServicesWalletDomain;
            do
            {
              v29 = 0;
              (*(*v18 + 64))(v32, v18, var0, kCFEnableIMSUserPreference, v21, 0, 1);
              sub_10010B240(&v29, v32);
              sub_10000A1EC(v32);
              if (v29)
              {
                v31 = 0;
                ctu::cf::assign(&v31, v29, v22);
                if (v31 <= 0)
                {
                  v23 = oslog;
                  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                  {
                    v24 = var0[23];
                    v25 = (v24 & 0x80u) != 0;
                    if ((v24 & 0x80u) != 0)
                    {
                      v24 = *(var0 + 1);
                    }

                    if (v25)
                    {
                      v26 = *var0;
                    }

                    else
                    {
                      v26 = var0;
                    }

                    if (v24)
                    {
                      v27 = v26;
                    }

                    else
                    {
                      v27 = "<invalid>";
                    }

                    *v32 = 136315138;
                    *&v32[4] = v27;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I VoLTE Switch: reset %s VoLTE state to default", v32, 0xCu);
                  }

                  (*(*v18 + 72))(v18, var0, kCFEnableIMSUserPreference, v21, 0, 1);
                }
              }

              sub_100029A48(&v29);
              var0 += 24;
            }

            while (var0 != fRef);
          }

          *v32 = &buf;
          sub_10005AAF8(v32);
          if ((v28 & 1) == 0)
          {
            sub_100004A34(v17);
          }

          goto LABEL_38;
        }
      }

      else
      {
        v18 = 0;
      }

      std::mutex::unlock(v11);
      v17 = 0;
      v28 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    v9 = oslog;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.var0) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I VoLTE Switch: migration don't cause VoLTE switch update", &buf, 2u);
  }

LABEL_38:
  ctu::OsLogLogger::~OsLogLogger(&oslog);
}

void sub_10035D6EC(_Unwind_Exception *a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if ((a4 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  ctu::OsLogLogger::~OsLogLogger(va);
  _Unwind_Resume(a1);
}

uint64_t VoLteControl::handleMigration(VoLteControl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(this + 8));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: review provisioning on migration", &v5, 0x16u);
  }

  VoLteControl::readRawSwitchState(this);
  return (*(*this + 104))(this, 0, 0);
}

unint64_t VoLteControl::volteSwitchVer(VoLteControl *this)
{
  cf = 0;
  (*(**(this + 52) + 96))(&cf, *(this + 52), *(**(this + 8) + 52), 1, kCFEnableLTEAfterUpgrade, 0, 0);
  if (!cf)
  {
    goto LABEL_9;
  }

  v1 = CFGetTypeID(cf);
  TypeID = CFNumberGetTypeID();
  v3 = cf;
  if (v1 != TypeID)
  {
    v10 = 0;
    if (!cf)
    {
      goto LABEL_10;
    }

    v6 = CFGetTypeID(cf);
    if (v6 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v10, v3, v7);
      v3 = v10;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v11 = 0;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v11, v3, v5);
      v3 = v11;
      goto LABEL_10;
    }

LABEL_9:
    v3 = 0;
  }

LABEL_10:
  sub_10000A1EC(&cf);
  return v3;
}

BOOL VoLteControl::isVoLteUserPreferenceSet(Registry **this)
{
  v15 = 0;
  ServiceMap = Registry::getServiceMap(this[6]);
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
  (*(*v10 + 64))(&v14, v10, *this[8] + 24, kCFEnableIMSUserPreference, kPhoneServicesWalletDomain, 0, 1);
  sub_10010B240(&v15, &v14);
  sub_10000A1EC(&v14);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v12 = v15 != 0;
  sub_100029A48(&v15);
  return v12;
}

void sub_10035DAFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000A1EC(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t VoLteControl::voLTESwitchPresent(VoLteControl *this)
{
  BOOLean = 0;
  (*(**(this + 52) + 96))(&v9);
  sub_10002FE1C(&BOOLean, &v9);
  sub_10000A1EC(&v9);
  if (BOOLean && CFBooleanGetValue(BOOLean) == 1)
  {
    v2 = sub_100375DA0(this + 384) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 24);
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = *(**(this + 8) + 52);
  v5 = this + 192;
  do
  {
    if (*(v3 + 7) >= v4)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 7) < v4)];
  }

  while (v3);
  if (v5 == this + 192)
  {
LABEL_15:
    v6 = v2;
  }

  else
  {
    v6 = v2;
    if (v4 >= *(v5 + 7))
    {
      if (v5[32])
      {
        v6 = v2;
      }

      else
      {
        v6 = 1;
      }
    }
  }

  if (v2)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  sub_100045C8C(&BOOLean);
  return v7 | v6;
}

void sub_10035DC54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

BOOL VoLteControl::mandatoryDisabled(VoLteControl *this)
{
  result = sub_10000BAA0();
  if (result)
  {
    v3 = *(**(this + 8) + 52);

    return isMandatoryDisabledVoLTE(v3);
  }

  return result;
}

BOOL VoLteControl::calculateVoLTESwitchState(VoLteControl *this)
{
  v2 = VoLteControl::voLTESwitchPresent(this);
  v3 = v2;
  DefaultVolteUserPreferenceFromBundle = VoLteControl::fetchDefaultVolteUserPreferenceFromBundle(this, (v2 >> 8) & 1);
  if (VoLteControl::mandatoryDisabled(this))
  {
    v5 = *(this + 5);
    DefaultVolteUserPreferenceFromBundle = 0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(this + 8));
      *buf = 136315394;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: mandatory disabled", buf, 0x16u);
      return 0;
    }
  }

  else if ((*(this + 284) & 1) != 0 || VoLteControl::operatorBlocksCallsOverCS(this))
  {
    v7 = *(this + 5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(this + 8));
      *buf = 136315394;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: Non-CS operator observed, value defaults to ON", buf, 0x16u);
    }

    return 1;
  }

  else if ((v3 & 1) != 0 && (v10 = *(this + 74)) != 0)
  {
    v11 = *(this + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(**(this + 8));
      v13 = sub_10060FFC0(*(this + 74));
      *buf = 136315650;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: Using manual preference %s", buf, 0x20u);
      v10 = *(this + 74);
    }

    return v10 == 2;
  }

  else
  {
    v14 = (*(**(this + 10) + 400))(*(this + 10), 0);
    *buf = *off_101E44F08;
    *&buf[16] = @"EnableVoLTEWithVoWiFi";
    v23 = 0;
    v24 = 0;
    __p = 0;
    sub_10005B328(&__p, buf, &v27, 3uLL);
    (*(**(this + 52) + 104))(buf);
    v15 = *buf;
    v25 = 0;
    if (*buf)
    {
      v16 = CFGetTypeID(*buf);
      if (v16 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(&v25, v15, v17);
        LOBYTE(v15) = v25;
      }

      else
      {
        LOBYTE(v15) = 0;
      }
    }

    sub_10000A1EC(buf);
    if ((v14 & 1) != 0 && (v15 & ((v14 & 0x100) >> 8)) == 1)
    {
      v18 = *(this + 5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = PersonalityInfo::logPrefix(**(this + 8));
        *buf = 136315394;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: Enable VoLTE along with VoWiFi", buf, 0x16u);
      }

      DefaultVolteUserPreferenceFromBundle = 1;
    }

    else
    {
      v20 = *(this + 5);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = PersonalityInfo::logPrefix(**(this + 8));
        *buf = 136315650;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 1024;
        LODWORD(v27) = DefaultVolteUserPreferenceFromBundle;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE Switch: Using carrier default %d", buf, 0x1Cu);
      }
    }

    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }
  }

  return DefaultVolteUserPreferenceFromBundle;
}