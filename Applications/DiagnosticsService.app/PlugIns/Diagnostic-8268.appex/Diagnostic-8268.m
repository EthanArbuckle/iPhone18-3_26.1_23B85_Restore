uint64_t sub_100002C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [NSData dataWithBytes:a2 length:a3];
  v5 = objc_opt_new();
  v6 = [*(a1 + 32) inputs];
  v7 = [v6 signingKeyBlob];
  v8 = [v5 sign:v4 keyBlob:v7];

  v9 = [v8 base64EncodedStringWithOptions:0];

  return v9;
}

BOOL sub_100003944(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_100003974(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 8u);
}

void sub_100003994(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_1000039B4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v5 | v6)
    {
      v8 = +[NSMutableDictionary dictionary];
      if (v5)
      {
        v9 = handleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10000C100(v5, v9);
        }

        [v8 setObject:v5 forKeyedSubscript:NSLocalizedDescriptionKey];
      }

      if (v7)
      {
        [v8 setObject:v7 forKeyedSubscript:NSUnderlyingErrorKey];
      }

      a1 = [NSError errorWithDomain:CRErrorDomain code:a1 userInfo:v8];
    }

    else
    {
      a1 = [NSError errorWithDomain:CRErrorDomain code:a1 userInfo:0];
    }
  }

  return a1;
}

uint64_t sub_100003AF4()
{
  v0 = IOServiceMatching("ApplePearlSEPDriver");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (MatchingService)
  {
    v2 = MatchingService;
    v3 = IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_100018A90);
    v4 = v3;
    if (v3)
    {
      sub_100004550(v3);
    }

    IOObjectRelease(v2);
  }

  else
  {
    sub_10000465C(&v6);
    return v6;
  }

  return v4;
}

uint64_t sub_100003B90(mach_port_t a1, __int16 a2, __int16 a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v14 = calloc(a5 + 8, 1uLL);
  if (v14)
  {
    v15 = v14;
    *v14 = 21072;
    v14[1] = a2;
    v14[2] = 1;
    v14[3] = a3;
    if (a5)
    {
      memmove(v14 + 4, a4, a5);
    }

    if (a7)
    {
      v18 = *a7;
      v16 = IOConnectCallStructMethod(a1, 0, v15, a5 + 8, a6, &v18);
      *a7 = v18;
    }

    else
    {
      v18 = 0;
      v16 = IOConnectCallStructMethod(a1, 0, v15, a5 + 8, a6, &v18);
    }

    free(v15);
  }

  else
  {
    sub_100004764(&v19);
    return v19;
  }

  return v16;
}

uint64_t pearlSeaCookieHandleMessage(int a1, const void *a2, size_t a3, void *a4, size_t *a5, id a6)
{
  v27 = a6;
  if (qword_100018A98 != -1)
  {
    sub_100004864();
  }

  v11 = &NSObject__properties;
  if (__osLogPearlLibTrace)
  {
    v12 = __osLogPearlLibTrace;
  }

  else
  {
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    *&buf[4] = a1;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    *v33 = a3;
    *&v33[8] = 2048;
    *&v33[10] = a4;
    v34 = 2048;
    v35 = a5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "pearlSeaCookieHandleMessage %d %p %zu %p %p\n", buf, 0x30u);
  }

  if (a1 && a1 != 7)
  {
    if (!a2)
    {
      sub_1000053A0(buf, &v28);
      goto LABEL_63;
    }

    if (!a3)
    {
      sub_100005294(buf, &v28);
      goto LABEL_63;
    }
  }

  if (a1 == 8 || a4)
  {
    if (a1 == 8 || a5)
    {
      if (a5)
      {
        v13 = *a5;
      }

      else
      {
        v13 = 0;
      }

      v14 = sub_100003AF4();
      if (v14)
      {
        sub_100004A90(v14, v14, buf, &v28);
        v16 = *buf;
        v24 = v28;
      }

      else
      {
        if (a3 >= 0xFFFFFFFFFFFFFFF3)
        {
          sub_100005180(a3 >= 0xFFFFFFFFFFFFFFF3, buf, &v28);
        }

        else
        {
          v15 = malloc(a3 + 13);
          if (v15)
          {
            v16 = v15;
            *v15 = a1;
            v15[4] = 1;
            *(v15 + 5) = a3;
            memcpy(v15 + 13, a2, a3);
            v17 = sub_100003B90(dword_100018A90, 70, 0, v16, a3 + 13, a4, a5);
            if (v17)
            {
              sub_100004BE8(v17, v16, v17, buf, &v28);
            }

            else
            {
              if (a1 == 2)
              {
LABEL_27:
                v16[4] = 0;
                *a5 = v13;
                v20 = sub_100003B90(dword_100018A90, 70, 0, v16, a3 + 13, a4, a5);
                if (!v20)
                {
LABEL_28:
                  if (a4 && a5)
                  {
                    if (qword_100018A98 != -1)
                    {
                      sub_10000503C();
                    }

                    if (__osLogPearlLib)
                    {
                      v21 = __osLogPearlLib;
                    }

                    else
                    {
                      v21 = &_os_log_default;
                    }

                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                    {
                      v22 = *a5;
                      *buf = 67109890;
                      *&buf[4] = a1;
                      v30 = 2048;
                      v31 = v22;
                      v32 = 1040;
                      *v33 = v22;
                      *&v33[4] = 2096;
                      *&v33[6] = a4;
                      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "pearlSeaCookieHandleMessage, type=%d reply[%zu] %.*P\n", buf, 0x22u);
                    }
                  }

                  if (qword_100018A98 != -1)
                  {
                    sub_10000503C();
                  }

                  if (__osLogPearlLibTrace)
                  {
                    v23 = __osLogPearlLibTrace;
                  }

                  else
                  {
                    v23 = &_os_log_default;
                  }

                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109376;
                    *&buf[4] = a1;
                    v30 = 1024;
                    LODWORD(v31) = 0;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "pearlSeaCookieHandleMessage, type=%d -> 0x%x\n", buf, 0xEu);
                  }

                  v24 = 0;
LABEL_45:
                  free(v16);
                  goto LABEL_46;
                }

                sub_100004E00(v20, v16, v20, buf, &v28);
                goto LABEL_60;
              }

              if (a1 != 5)
              {
                goto LABEL_28;
              }

              if (v27)
              {
                v18 = *a5;
                v19 = v27[2]();
                if (!v19)
                {
                  goto LABEL_27;
                }

                sub_100004CF4(v19, v16, v19, buf, &v28);
              }

              else
              {
                sub_100004F0C(v16, buf, &v28);
              }
            }

LABEL_60:
            v16 = *buf;
            v24 = v28;
            goto LABEL_61;
          }

          sub_100005064(buf, &v28);
        }

        v16 = *buf;
        v24 = v28;
      }

LABEL_61:
      v11 = &NSObject__properties;
      goto LABEL_64;
    }

    sub_100004984(buf, &v28);
  }

  else
  {
    sub_100004878(buf, &v28);
  }

LABEL_63:
  v16 = *buf;
  v24 = v28;
LABEL_64:
  if (qword_100018A98 != -1)
  {
    sub_10000503C();
  }

  if (v11[333])
  {
    v26 = v11[333];
  }

  else
  {
    v26 = &_os_log_default;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *&buf[4] = a1;
    v30 = 1024;
    LODWORD(v31) = v24;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "pearlSeaCookieHandleMessage, type=%d -> 0x%x\n", buf, 0xEu);
  }

  if (v16)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (dword_100018A90)
  {
    IOServiceClose(dword_100018A90);
    dword_100018A90 = 0;
  }

  return v24;
}

void sub_1000041B0(id a1)
{
  v1 = os_log_create("com.apple.BiometricKit", "Library-PearlFactory");
  v2 = __osLogPearlLib;
  __osLogPearlLib = v1;

  v3 = __osLogPearlLib;
  if (!__osLogPearlLib)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000054AC();
    }

    v3 = __osLogPearlLib;
  }

  objc_storeStrong(&__osLogPearlLibTrace, v3);
}

void sub_100004300(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x30u);
}

BOOL sub_100004320@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_100004340(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x30u);
}

BOOL sub_100004360@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_1000043C4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x30u);
}

BOOL sub_1000043E4@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_100004434()
{
  *v1 = 258;
  *v0 = 0;
  v3 = *(v2 - 56);
}

void sub_100004490(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x30u);
}

BOOL sub_1000044A8@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
}

void sub_100004508()
{
  *v1 = v3;
  *v0 = v2;
  v5 = *(v4 - 88);
}

uint64_t sub_1000054F4()
{

  return memset_s(v0, 8uLL, 0, 8uLL);
}

uint64_t sub_10000554C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);

  return sub_10000C5F8(v2, va, va1);
}

uint64_t sub_100005568(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void *sub_1000055C8()
{

  return calloc(8uLL, 1uLL);
}

uint64_t sub_1000055F0()
{
  if (qword_100018AA8 != -1)
  {
    sub_10000C464();
  }

  dispatch_sync(qword_100018AB0, &stru_1000145A8);
  return dword_100018AA0;
}

void sub_100005638(id a1)
{
  if (!dword_100018AA0)
  {
    dword_100018AA0 = sub_1000056A4("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t sub_1000056A4(char *path, const char *a2)
{
  connect = 0;
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3 || (v4 = v3, v5 = IOServiceOpen(v3, mach_task_self_, 0, &connect), IOObjectRelease(v4), v5))
  {
    v6 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      IOObjectRelease(v8);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t sub_100005844(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t sub_1000058C4(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  result = sub_100005960(a1, a2);
  if (result)
  {
    v4 = result;
    for (i = *v2; i != result; i = *i)
    {
      v2 = i;
    }

    *v2 = *i;
    v6 = *(result + 8);
    if (v6)
    {
      memset_s(v6, *(v4 + 16), 0, *(v4 + 16));
      free(*(v4 + 8));
    }

    memset_s(v4, 0x18uLL, 0, 0x18uLL);
    free(v4);
    return 0;
  }

  return result;
}

void *sub_100005960(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = a2 + 2;
    do
    {
      v6 = v2[1];
      if (ccder_blob_decode_sequence_tl() && sub_1000057D8(a2, &v4[a2[1]], v6))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

uint64_t sub_1000059EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (ccder_blob_decode_tl())
  {
    v8 = 0;
    v9 = 0;
    v7[0] = 12;
    v7[1] = 0;
    __memcpy_chk();
    if (!sub_1000058C4(a5, v7) && !sub_10000C7C8())
    {
      return 1;
    }
  }

  else
  {
    sub_10000CBFC();
  }

  sub_10000CC64();
  return 0;
}

uint64_t sub_100005ADC(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t sub_100005B08()
{
  v3 = v1 + *(v0 + 1) - v0;

  return ccder_blob_encode_body();
}

uint64_t sub_100005B34()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t sub_100005B54()
{

  return ccder_blob_encode_tl();
}

void *sub_100005BB0()
{

  return calloc(0x18uLL, 1uLL);
}

void *sub_100005BC8(size_t a1)
{

  return calloc(a1, 1uLL);
}

BOOL sub_100005C0C()
{
  *buffer = 0;
  v0 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/chosen");
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"development-cert", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v3 = CFProperty;
    v4 = CFGetTypeID(CFProperty);
    if (v4 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(v3);
      if ((Length - 1) <= 3)
      {
        v8.length = Length;
        v8.location = 0;
        CFDataGetBytes(v3, v8, buffer);
      }
    }

    CFRelease(v3);
  }

  IOObjectRelease(v1);
  return *buffer == 0;
}

uint64_t sub_100005CE0(const void *a1, CFMutableDictionaryRef *a2, CFErrorRef *a3, int a4)
{
  v32 = 88;
  if (!a1 || !a2)
  {
    AMSupportLogInternal();
    return 0;
  }

  v37 = 0;
  v36 = 0u;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  v33 = 0u;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v9 = sub_1000065CC(2, 0, 0, 0, &v33, &v32, 0, 0);
  AMSupportLogInternal();
  AMSupportLogInternal();
  AMSupportLogDumpMemory();
  if (v9)
  {
    if (a3)
    {
      *a3 = sub_1000064E0(11, @"Unable to get Pearl Information");
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  CFDictionarySetValue(Mutable, @"Command", a1);
  v11 = sub_1000064D8(&v33 + 4, 4u);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = kCFNull;
  }

  CFDictionarySetValue(Mutable, @"ApChipID", v13);
  AMSupportLogInternal();
  if (v12)
  {
    CFRelease(v12);
  }

  v14 = sub_1000064D8(&v33 + 8, 8u);
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = kCFNull;
  }

  CFDictionarySetValue(Mutable, @"ApECID", v16);
  AMSupportLogInternal();
  if (v15)
  {
    CFRelease(v15);
  }

  v17 = sub_1000064D8(&v34, 0x10u);
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = kCFNull;
  }

  CFDictionarySetValue(Mutable, @"SensorUID", v19);
  AMSupportLogInternal();
  if (v18)
  {
    CFRelease(v18);
  }

  v20 = sub_1000064D8(v35, 0x20u);
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = kCFNull;
  }

  CFDictionarySetValue(Mutable, @"SepNonce", v22);
  AMSupportLogInternal();
  if (v21)
  {
    CFRelease(v21);
  }

  v23 = sub_1000064D8(&v36, 4u);
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = kCFNull;
  }

  CFDictionarySetValue(Mutable, @"SensorChipID", v25);
  AMSupportLogInternal();
  if (v24)
  {
    CFRelease(v24);
  }

  v26 = sub_1000064D8(&v36 + 4, 0x14u);
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = kCFNull;
  }

  CFDictionarySetValue(Mutable, @"SensorSNUM", v28);
  AMSupportLogInternal();
  if (v27)
  {
    CFRelease(v27);
  }

  if (AMFDRSealingMapGetFDRDataVersionForDevice() == 2)
  {
    v29 = sub_100006298(kCFAllocatorDefault);
    v30 = v29;
    v31 = v29 ? v29 : kCFNull;
    CFDictionarySetValue(Mutable, @"SIK", v31);
    AMSupportLogInternal();
    if (v30)
    {
      CFRelease(v30);
    }
  }

  if (a4)
  {
    CFDictionarySetValue(Mutable, @"isSSR", kCFBooleanTrue);
  }

  if (!sub_100005C0C())
  {
    CFDictionarySetValue(Mutable, @"useProdMasterKey", kCFBooleanFalse);
  }

  *a2 = Mutable;
  return 1;
}

uint64_t sub_100006134(int a1, const void *a2, size_t a3, void *a4, size_t *a5, uint64_t a6)
{
  AMSupportLogInternal();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_1000061FC;
  v13[3] = &unk_100014610;
  v13[4] = a6;
  return pearlSeaCookieHandleMessage(a1, a2, a3, a4, a5, v13);
}

uint64_t sub_1000061FC(uint64_t a1, int a2)
{
  if (a2)
  {
    AMSupportLogInternal();
    return 1;
  }

  else
  {
    AMSupportLogInternal();
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }
}

__CFString *sub_1000063F0(unsigned __int8 *a1, unsigned int a2, unsigned int a3)
{
  MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, @"0x");
  result = 0;
  if (a2 && a3)
  {
    v8 = a3 - a2;
    if (a3 > a2 && v8 >= 1)
    {
      do
      {
        CFStringAppend(MutableCopy, @"00");
        --v8;
      }

      while (v8);
    }

    v9 = a2;
    do
    {
      v10 = *a1++;
      v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%.2X", v10);
      CFStringAppend(MutableCopy, v11);
      if (v11)
      {
        CFRelease(v11);
      }

      --v9;
    }

    while (v9);
    return MutableCopy;
  }

  return result;
}

CFErrorRef sub_1000064E0(int a1, const void *a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  AMSupportLogInternal();
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, kCFErrorLocalizedDescriptionKey, a2);

    return CFErrorCreate(kCFAllocatorDefault, @"HorizonSeaCookieErrorDomain", a1, Mutable);
  }

  else
  {
    AMSupportLogInternal();
    return 0;
  }
}

uint64_t sub_1000065CC(int a1, int a2, const void *a3, size_t a4, void *a5, size_t *a6, uint64_t a7, uint64_t a8)
{
  if (a1 == 2)
  {

    return sub_100006134(a2, a3, a4, a5, a6, a8);
  }

  else
  {
    if (a1 != 1)
    {
LABEL_8:
      AMSupportLogInternal();
      return 1;
    }

    if (a7)
    {
      AMSupportLogInternal();
      goto LABEL_8;
    }

    AMSupportLogInternal();

    return sub_100009100(a2, a3, a4, a5, a6);
  }
}

CFComparisonResult sub_1000066F8(CFComparisonResult result, int a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = (result + 24);
    do
    {
      if (CFStringCompare(*v3, @"C4", 0) == kCFCompareEqualTo)
      {
        *(v3 - 2) = @"ReprovisionSensor";
      }

      if (CFStringCompare(*v3, @"C6", 0) == kCFCompareEqualTo)
      {
        *(v3 - 2) = @"RePairingSessionKeyExchange";
      }

      result = CFStringCompare(*v3, @"C7", 0);
      if (result == kCFCompareEqualTo)
      {
        *(v3 - 2) = @"ReprovisionSensor";
      }

      v3 += 5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1000067B8(int a1, const void *a2, CFMutableDictionaryRef *a3, CFErrorRef *a4, int a5, int a6, _DWORD *a7, uint64_t a8)
{
  if (a1 == 2)
  {

    return sub_100005CE0(a2, a3, a4, a6);
  }

  else
  {
    if (a1 != 1)
    {
      AMSupportLogInternal();
      if (a4)
      {
        v16 = sub_1000064E0(-1, @"Unknown SeaCookie type");
        result = 0;
        *a4 = v16;
        return result;
      }

      return 0;
    }

    v48 = 102;
    if (!a2 || !a3)
    {
      AMSupportLogInternal();
      return 0;
    }

    memset(v52, 0, 38);
    memset(v51, 0, sizeof(v51));
    v49 = 0u;
    v50 = 0u;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v14 = sub_1000065CC(1, 0, 0, 0, &v49, &v48, a8, 0);
    AMSupportLogInternal();
    AMSupportLogInternal();
    AMSupportLogDumpMemory();
    if (v14)
    {
      if (a4)
      {
        *a4 = sub_1000064E0(11, @"Unable to get Mesa Information");
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return 0;
    }

    CFDictionarySetValue(Mutable, @"Command", a2);
    v17 = sub_1000063F0(&v49 + 4, 4u, 4u);
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = kCFNull;
    }

    CFDictionarySetValue(Mutable, @"ApChipID", v19);
    AMSupportLogInternal();
    if (v18)
    {
      CFRelease(v18);
    }

    v20 = sub_1000063F0(&v49 + 8, 8u, 8u);
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = kCFNull;
    }

    CFDictionarySetValue(Mutable, @"ApECID", v22);
    AMSupportLogInternal();
    if (v21)
    {
      CFRelease(v21);
    }

    v23 = sub_1000063F0(&v50, 0x10u, 0x10u);
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = kCFNull;
    }

    CFDictionarySetValue(Mutable, @"SensorSN", v25);
    AMSupportLogInternal();
    if (v24)
    {
      CFRelease(v24);
    }

    v26 = sub_1000063F0(v51, 0x20u, 0x20u);
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = kCFNull;
    }

    CFDictionarySetValue(Mutable, @"SepNonce", v28);
    AMSupportLogInternal();
    if (v27)
    {
      CFRelease(v27);
    }

    v29 = *(v52 + 2);
    v30 = bswap32(*(v52 + 2));
    v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", v30, &v49 + 4);
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = kCFNull;
    }

    CFDictionarySetValue(Mutable, @"Version", v33);
    AMSupportLogInternal();
    if (v32)
    {
      CFRelease(v32);
    }

    if (v29 == 0x2000000)
    {
      v34 = sub_1000063F0(v52 + 6, 0x20u, 0x20u);
      v35 = v34;
      v36 = v34 ? v34 : kCFNull;
      CFDictionarySetValue(Mutable, @"SensorNonce", v36);
      AMSupportLogInternal();
      if (v35)
      {
        CFRelease(v35);
      }
    }

    v37 = sub_1000063F0(v52, 2u, 4u);
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = kCFNull;
    }

    CFDictionarySetValue(Mutable, @"SensorChipID", v39);
    AMSupportLogInternal();
    if (v38)
    {
      CFRelease(v38);
    }

    if (!a8 && AMFDRSealingMapGetFDRDataVersionForDevice() >= 2)
    {
      v40 = sub_100006298(kCFAllocatorDefault);
      v41 = v40;
      v42 = v40 ? v40 : kCFNull;
      CFDictionarySetValue(Mutable, @"SIK", v42);
      AMSupportLogInternal();
      if (v41)
      {
        CFRelease(v41);
      }
    }

    if (a5)
    {
      v43 = sub_1000063F0(v52, 2u, 2u);
      v44 = v43;
      v45 = v43 ? v43 : kCFNull;
      CFDictionarySetValue(Mutable, @"SensorType", v45);
      AMSupportLogInternal();
      if (v44)
      {
        CFRelease(v44);
      }
    }

    if (a6)
    {
      CFDictionarySetValue(Mutable, @"isSSR", kCFBooleanTrue);
    }

    if (a7)
    {
      *a7 = v30;
    }

    *a3 = Mutable;
    return 1;
  }
}

uint64_t sub_100006D94()
{
  v0 = __chkstk_darwin();
  if (!v1 || (v8 = v2) == 0)
  {
    AMSupportLogInternal();
    return 0;
  }

  v9 = v7;
  v10 = v6;
  v11 = v5;
  v12 = v4;
  v13 = v3;
  v14 = v1;
  v15 = v0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v29 = *(v14 + 16);
  v32 = *(v14 + 8);
  AMSupportLogInternal();
  if (!CFDictionaryContainsKey(v8, *(v14 + 16)))
  {
    AMSupportLogInternal();
    if (v12)
    {
      v24 = @"appropriate command is not present";
LABEL_16:
      v25 = sub_1000064E0(11, v24);
      result = 0;
      *v12 = v25;
      return result;
    }

    return 0;
  }

  v33 = v10;
  v34 = v13;
  Value = CFDictionaryGetValue(v8, *(v14 + 16));
  CFDataGetBytePtr(Value);
  CFDataGetLength(Value);
  AMSupportLogDumpMemory();
  v18 = CFDataGetLength(Value);
  BytePtr = CFDataGetBytePtr(Value);
  AMSupportLogInternal();
  bzero(bytes, 0x2000uLL);
  length = 0x2000;
  if (sub_1000065CC(v15, *v14, BytePtr, v18, bytes, &length, v11, v9) || length >> 13)
  {
    AMSupportLogInternal();
    if (v12)
    {
      v24 = @"_HSCHandleMessage Failed";
      goto LABEL_16;
    }

    return 0;
  }

  AMSupportLogInternal();
  v20 = CFDataCreate(kCFAllocatorDefault, bytes, length);
  CFDictionarySetValue(Mutable, *(v14 + 24), v20);
  v30 = *(v14 + 24);
  AMSupportLogInternal();
  if (v33)
  {
    if (v15 == 2)
    {
      v21 = *(v14 + 24);
      v22 = @"C4";
      goto LABEL_18;
    }

    if (v15 == 1)
    {
      v21 = *(v14 + 24);
      v22 = @"C5";
LABEL_18:
      if (CFStringCompare(v21, v22, 0) == kCFCompareEqualTo)
      {
        v26 = (*(v33 + 16))(v33, bytes, length);
        v27 = v26;
        v28 = v26 ? v26 : kCFNull;
        CFDictionarySetValue(Mutable, @"signature", v28);
        AMSupportLogInternal();
        if (v27)
        {
          CFRelease(v27);
        }
      }
    }
  }

  v31 = *(v14 + 8);
  AMSupportLogInternal();
  CFDictionarySetValue(Mutable, @"Command", *(v14 + 8));
  *v34 = Mutable;
  if (v20)
  {
    CFRelease(v20);
  }

  AMSupportLogInternal();
  return 1;
}

uint64_t sub_100007164(int a1, const __CFURL *a2, const void *a3, CFComparisonResult a4, int a5, CFErrorRef *a6, uint64_t a7)
{
  cf = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v21 = -1;
  if (sub_1000067B8(a1, @"startPairing", &v25, a6, 0, a7 != 0, &v21, 0) == 1)
  {
    v13 = CFUUIDCreate(kCFAllocatorDefault);
    v14 = CFUUIDCreateString(kCFAllocatorDefault, v13);
    if (sub_100007950(v14, v22, v25, 1, &cf, a6) == 1 && sub_100007BD8(a2, cf, &v27, a3, a6, 1) == 1)
    {
      AMSupportLogInternal();
      if (sub_10000826C(v27, &v23, &v22, a6) == 1)
      {
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v27)
        {
          CFRelease(v27);
          v27 = 0;
        }

        if (a1 == 1 && v21 == 2)
        {
          sub_1000066F8(a4, a5);
        }

        if (a5 < 1)
        {
          v18 = 1;
          goto LABEL_31;
        }

        v20 = v13;
        v15 = a5;
        while (1)
        {
          v16 = sub_100006D94();
          if (v23)
          {
            CFRelease(v23);
            v23 = 0;
          }

          if (!v16)
          {
            v13 = v20;
            goto LABEL_40;
          }

          v17 = v24;
          if (sub_100007950(v14, v22, v24, 0, &cf, a6) != 1)
          {
            break;
          }

          if (sub_100007BD8(a2, cf, &v27, a3, a6, 0) != 1)
          {
            break;
          }

          AMSupportLogInternal();
          if (sub_10000826C(v27, &v23, &v22, a6) != 1)
          {
            break;
          }

          if (v23)
          {
            AMSupportLogInternal();
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v27)
          {
            CFRelease(v27);
            v27 = 0;
          }

          if (v17)
          {
            CFRelease(v17);
            v24 = 0;
          }

          a4 += 40;
          if (!--v15)
          {
            v18 = 1;
            v13 = v20;
            goto LABEL_31;
          }
        }

        v13 = v20;
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

LABEL_40:
  AMSupportLogInternal();
  v18 = 0;
LABEL_31:
  if (v25)
  {
    CFRelease(v25);
    v25 = 0;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  AMSupportLogInternal();
  return v18;
}

uint64_t HSCGetMesaNonce()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  bzero(bytes, 0x2000uLL);
  length = 0x2000;
  if (!v3)
  {
    if (v2)
    {
      v4 = @"Invalid Arguments";
      v5 = 1;
      goto LABEL_7;
    }

    return 0;
  }

  AMSupportLogInternal();
  if (sub_100009100(8, 0, 0, bytes, &length))
  {
    if (v2)
    {
      v4 = @"Unable to get mesa nonce";
      v5 = 11;
LABEL_7:
      v6 = sub_1000064E0(v5, v4);
      result = 0;
      *v2 = v6;
      return result;
    }

    return 0;
  }

  *v3 = CFDataCreate(kCFAllocatorDefault, bytes, length);
  AMSupportLogInternal();
  v8 = *v3;
  AMSupportLogInternal();
  return 1;
}

uint64_t HSCSecureProvisionMesaWithUIDProxy(const __CFURL *a1, const void *a2, CFDataRef theData, CFErrorRef *a4, uint64_t a5)
{
  if (!theData)
  {
    if (a4)
    {
      v12 = @"Invalid Arguments";
      v13 = 1;
      goto LABEL_7;
    }

    return 0;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  AMSupportLogInternal();
  if (sub_100009100(9, BytePtr, Length, 0, 0))
  {
    if (a4)
    {
      v12 = @"Unable to validate tatsu ticket";
      v13 = 11;
LABEL_7:
      *a4 = sub_1000064E0(v13, v12);
      return 0;
    }

    return 0;
  }

  AMSupportLogInternal();

  return sub_100007164(1, a1, a2, &unk_1000189C0, 3, a4, a5);
}

CFDataRef sub_100007854(const __CFData *a1)
{
  Length = CFDataGetLength(a1);
  v3 = malloc_type_malloc(Length, 0x9DAD2D97uLL);
  v4 = CFDataGetLength(a1);
  v5 = malloc_type_malloc(v4, 0x26C37980uLL);
  v12.length = CFDataGetLength(a1);
  v12.location = 0;
  CFDataGetBytes(a1, v12, v5);
  if (v3 && CFDataGetLength(a1) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v5[v6];
      if ((v8 - 9) >= 2)
      {
        v3[v7++] = v8;
      }

      ++v6;
    }

    while (CFDataGetLength(a1) > v6);
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = CFDataCreate(kCFAllocatorDefault, v3, v9);
  free(v3);
  free(v5);
  return v10;
}

uint64_t sub_100007950(const void *a1, const void *a2, const void *a3, int a4, const __CFData **a5, CFErrorRef *a6)
{
  error = 0;
  if (!a6)
  {
    return 0;
  }

  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = 1;
    }

    else
    {
      v13 = 0;
      *a6 = sub_1000064E0(3, @"Request Dictionary Creation failed\n");
    }

    CFDictionarySetValue(Mutable, @"SpecVersion", @"1.2");
    CFDictionarySetValue(Mutable, @"UUID", a1);
    if (a4)
    {
      AMSupportLogInternal();
      v14 = @"Request";
    }

    else
    {
      CFDictionarySetValue(Mutable, @"Session", a2);
      v14 = @"Response";
    }

    CFDictionarySetValue(Mutable, v14, a3);
    AMSupportLogInternal();
    AMSupportLogInternal();
    AMSupportLogInternal();
    v15 = CFPropertyListCreateData(kCFAllocatorDefault, Mutable, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (v15)
    {
      v16 = v15;
      CFDataGetLength(v15);
      AMSupportLogInternal();
      *a5 = v16;
      if (CFDictionaryContainsKey(a3, @"Command"))
      {
        Value = CFDictionaryGetValue(a3, @"Command");
        v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"/tmp/%@", Value, v16);
        if (v18)
        {
          CFRelease(v18);
        }
      }
    }

    else
    {
      AMSupportLogInternal();
      v13 = 0;
      *a6 = sub_1000064E0(10, @"CFPropertyListCreateData failed\n");
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v13 = 0;
    *a6 = sub_1000064E0(1, @"Input argument req_dict is empty or NULL\n");
  }

  if (error)
  {
    CFRelease(error);
  }

  return v13;
}

uint64_t sub_100007BD8(CFURLRef url, const __CFData *a2, uint64_t a3, const void *a4, CFErrorRef *a5, int a6)
{
  if (!a5)
  {
    AMSupportLogInternal();
    v13 = 0;
    v14 = 1;
    goto LABEL_41;
  }

  v8 = a4;
  if (!a4)
  {
    v8 = AMSupportHttpCopyProxySettings();
    if (!v8)
    {
      AMSupportLogInternal();
    }
  }

  Request = CFHTTPMessageCreateRequest(kCFAllocatorDefault, @"POST", url, kCFHTTPVersion1_1);
  if (!Request)
  {
    v14 = 0;
    v13 = 0;
    *a5 = sub_1000064E0(3, @"could not create httpRequest\n");
    goto LABEL_41;
  }

  v12 = Request;
  CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"application/xml");
  if (a6)
  {
    if (qword_100018AB8)
    {
      CFRelease(qword_100018AB8);
    }

    qword_100018AB8 = 0;
  }

  else if (qword_100018AB8)
  {
    CFHTTPMessageSetHeaderFieldValue(v12, @"X-Apple-SeaCookie-IP", qword_100018AB8);
  }

  v15 = sub_100007854(a2);
  CFHTTPMessageSetBody(v12, v15);
  Length = CFDataGetLength(v15);
  v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%lu", Length);
  if (!v17)
  {
    v25 = sub_1000064E0(3, @"could not create contentLengthStr\n");
    v13 = 0;
LABEL_47:
    v14 = 0;
    v20 = 0;
    goto LABEL_51;
  }

  CFHTTPMessageSetHeaderFieldValue(v12, @"Content-Length", v17);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v13 = Mutable;
  if (!Mutable)
  {
    v25 = sub_1000064E0(3, @"Failed to create connection options dictionary.\n");
    goto LABEL_47;
  }

  if (v8)
  {
    CFDictionarySetValue(Mutable, kAMSupportHttpOptionSocksProxySettings, v8);
  }

  SetFromCFIndexArray = AMSupportCreateSetFromCFIndexArray();
  CFDictionaryAddValue(v13, kAMSupportHttpOptionValidResponses, SetFromCFIndexArray);
  if (SetFromCFIndexArray)
  {
    CFRelease(SetFromCFIndexArray);
  }

  v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &unk_100018A58);
  if (v20)
  {
    CFDictionaryAddValue(v13, kAMSupportHttpOptionTimeout, v20);
    CFRelease(v20);
    v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &unk_100018A5C);
    if (v20)
    {
      CFDictionaryAddValue(v13, kAMSupportHttpOptionMaxAttempts, v20);
      CFRelease(v20);
      AMSupportLogInternal();
      CFDictionarySetValue(v13, kAMSupportHttpOptionDisableSSLValidation, kCFBooleanTrue);
      AMSupportLogInternal();
      v20 = CFHTTPMessageCopyAllHeaderFields(v12);
      if (v20)
      {
        AMSupportLogInternal();
        AMSupportLogInternal();
      }

      AMSupportLogInternal();
      v21 = AMSupportHttpSendSync();
      if (v21)
      {
        v22 = v21;
        AMSupportLogInternal();
        v23 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"HTTP send error: %d\n", v22, 0, 0);
        switch(v22)
        {
          case 0xB:
            v24 = 13;
            break;
          case 0xC:
            v24 = 14;
            break;
          case 0x10:
            v24 = 12;
            break;
          default:
            v24 = 15;
            break;
        }
      }

      else
      {
        AMSupportLogInternal();
        v23 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SeaCookie server returned HTTP status: %ld\n", 0);
        v24 = 16;
      }

      v25 = sub_1000064E0(v24, v23);
      v14 = 0;
      goto LABEL_33;
    }

    v27 = @"Failed to create max attempts\n";
  }

  else
  {
    v27 = @"Failed to create timeout\n";
  }

  v25 = sub_1000064E0(3, v27);
  v14 = 0;
LABEL_51:
  v23 = 0;
LABEL_33:
  *a5 = v25;
  if (v15)
  {
    CFRelease(v15);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  CFRelease(v12);
  if (v20)
  {
    CFRelease(v20);
  }

LABEL_41:
  if (v13)
  {
    CFRelease(v13);
  }

  AMSupportLogInternal();
  return v14;
}

uint64_t sub_10000826C(CFDataRef data, CFDictionaryRef *a2, CFDataRef *a3, CFErrorRef *a4)
{
  error = 0;
  if (!a4)
  {
    v8 = 0;
    goto LABEL_42;
  }

  if (!data || !a2)
  {
    v8 = 0;
    *a4 = sub_1000064E0(1, @"DataRef or responseDict is NULL.");
    goto LABEL_40;
  }

  v7 = CFPropertyListCreateWithData(kCFAllocatorDefault, data, 0x64uLL, 0, &error);
  v8 = v7;
  if (!v7)
  {
    AMSupportLogInternal();
    *a4 = sub_1000064E0(7, @"Create xmlData failed.");
    *a2 = 0;
    goto LABEL_40;
  }

  v9 = CFGetTypeID(v7);
  if (v9 == CFDictionaryGetTypeID())
  {
    AMSupportLogInternal();
    v10 = CFDictionaryContainsKey(v8, @"ErrorCode");
    v11 = CFDictionaryContainsKey(v8, @"ErrorMessage");
    if (v10 != 1 && v11 != 1)
    {
      if (a3 && !*a3)
      {
        if (!CFDictionaryContainsKey(v8, @"Session"))
        {
          v23 = @"Server did not return session cookie";
          v24 = 9;
LABEL_29:
          *a4 = sub_1000064E0(v24, v23);
          goto LABEL_39;
        }

        Value = CFDictionaryGetValue(v8, @"Session");
        *a3 = CFDataCreateCopy(kCFAllocatorDefault, Value);
      }

      v17 = @"Request";
      if (CFDictionaryContainsKey(v8, @"Request") == 1 || (v17 = @"Response", CFDictionaryContainsKey(v8, @"Response") == 1))
      {
        v18 = CFDictionaryGetValue(v8, v17);
        Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v18);
        if (Copy)
        {
          v20 = Copy;
          AMSupportLogInternal();
          if (CFDictionaryContainsKey(v20, @"Command"))
          {
            v21 = CFDictionaryGetValue(v20, @"Command");
            v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"/tmp/%@-from-server", v21);
            *a2 = CFDictionaryCreateCopy(kCFAllocatorDefault, v20);
            if (v22)
            {
              CFRelease(v22);
            }
          }

          else
          {
            *a2 = CFDictionaryCreateCopy(kCFAllocatorDefault, v20);
          }

          CFRelease(v8);
          CFRelease(v20);
          v8 = 1;
          goto LABEL_40;
        }
      }

      AMSupportLogInternal();
      v23 = @"responseDict NULL. Unable to parse Response\n";
      v24 = 8;
      goto LABEL_29;
    }

    v13 = v11;
    if (v10)
    {
      v14 = CFDictionaryGetValue(v8, @"ErrorCode");
      if (v13)
      {
LABEL_13:
        v15 = CFDictionaryGetValue(v8, @"ErrorMessage");
        AMSupportLogInternal();
        goto LABEL_32;
      }
    }

    else
    {
      v14 = 0;
      if (v11)
      {
        goto LABEL_13;
      }
    }

    v15 = 0;
LABEL_32:
    *a2 = 0;
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 1024);
    CFStringAppend(Mutable, @"Server returned an ");
    if (v14)
    {
      v26 = CFGetTypeID(v14);
      if (v26 == CFStringGetTypeID())
      {
        AMSupportLogInternal();
        CFStringAppend(Mutable, @"\terrorCode: ");
        CFStringAppend(Mutable, v14);
      }
    }

    if (v15)
    {
      CFStringAppend(Mutable, @"\terrorString: ");
      CFStringAppend(Mutable, v15);
    }

    *a4 = sub_1000064E0(6, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    goto LABEL_39;
  }

  *a4 = sub_1000064E0(7, @"xmlData is not CFDictionary type.");
  *a2 = 0;
LABEL_39:
  CFRelease(v8);
  v8 = 0;
LABEL_40:
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

LABEL_42:
  AMSupportLogInternal();
  return v8;
}

void sub_100008694(id a1)
{
  v1 = os_log_create("com.apple.BiometricKit", "Library-MesaFactory");
  qword_100018A78 = v1;
  if (!v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100009B3C(&v2);
      v1 = v2;
    }

    else
    {
      v1 = 0;
    }
  }

  qword_100018A80 = v1;
}

uint64_t sub_100008700(mach_port_t a1, __int16 a2, __int16 a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v8 = a5 + 8;
  if (a5 >= 0xFFFFFFFFFFFFFFF8)
  {
    sub_100009C78(a5 >= 0xFFFFFFFFFFFFFFF8, &outputStructCnt);
    return outputStructCnt;
  }

  v15 = malloc_type_malloc(a5 + 8, 0x85702932uLL);
  if (!v15)
  {
    sub_100009B9C();
    return outputStructCnt;
  }

  v16 = v15;
  *v15 = 19778;
  v15[1] = a2;
  v15[2] = 1;
  v15[3] = a3;
  if (a5)
  {
    memmove(v15 + 4, a4, a5);
  }

  if (a7)
  {
    outputStructCnt = *a7;
    v17 = IOConnectCallStructMethod(a1, 0, v16, v8, a6, &outputStructCnt);
    *a7 = outputStructCnt;
  }

  else
  {
    outputStructCnt = 0;
    v17 = IOConnectCallStructMethod(a1, 0, v16, v8, a6, &outputStructCnt);
  }

  free(v16);
  return v17;
}

uint64_t sub_100008834()
{
  v0 = sub_100008700(dword_100018A8C, 2, 1, 0, 0, 0, 0);
  v1 = v0;
  if (v0)
  {
    sub_100009D78();
  }

  return v1;
}

uint64_t sub_10000888C()
{
  v2 = 0;
  v1 = 4;
  if (sub_100008700(dword_100018A8C, 16, 0, 0, 0, &v2, &v1))
  {
    sub_100009E54();
  }

  else if (v1 != 4)
  {
    sub_100009F30(&v2);
  }

  return v2;
}

uint64_t sub_100008904()
{
  if (!dword_100018A8C)
  {
    v0 = IOServiceMatching("AppleBiometricServices");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
    if (!MatchingService)
    {
      sub_10000A0F4();
      return v5;
    }

    v2 = MatchingService;
    if (IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_100018A8C))
    {
      sub_10000A010();
      return v4;
    }

    IOObjectRelease(v2);
  }

  if (!sub_10000888C())
  {
    sub_100008834();
  }

  return 0;
}

uint64_t sub_1000089C0(void *a1, size_t *a2)
{
  if (!a1)
  {
    sub_10000A470();
    return v4;
  }

  if (!a2)
  {
    sub_10000A394();
    return v4;
  }

  if (!*a2)
  {
    sub_10000A2B8();
    return v4;
  }

  v2 = sub_100008700(dword_100018A8C, 34, 0, 0, 0, a1, a2);
  result = 0;
  if (v2)
  {
    sub_10000A1D4();
    return v4;
  }

  return result;
}

uint64_t sub_100008A58(void *a1, size_t *a2)
{
  if (!a1)
  {
    sub_10000A7E8();
    return v4;
  }

  if (!a2)
  {
    sub_10000A70C();
    return v4;
  }

  if (!*a2)
  {
    sub_10000A630();
    return v4;
  }

  v2 = sub_100008700(dword_100018A8C, 59, 0, 0, 0, a1, a2);
  result = 0;
  if (v2)
  {
    sub_10000A54C();
    return v4;
  }

  return result;
}

uint64_t sub_100008AF0(void *a1, size_t *a2)
{
  if (qword_100018AC0 != -1)
  {
    sub_10000A8C4();
  }

  if (qword_100018A80)
  {
    v4 = qword_100018A80;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218240;
    v12 = a1;
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getModuleSerialNumber(%p, %p)\n", &v11, 0x16u);
  }

  if (sub_100008904())
  {
    sub_10000A8D8();
  }

  else
  {
    if (!sub_1000089C0(a1, a2))
    {
      v5 = 0;
      goto LABEL_11;
    }

    sub_10000A9BC();
  }

  v5 = v11;
LABEL_11:
  if (dword_100018A8C)
  {
    IOServiceClose(dword_100018A8C);
    dword_100018A8C = 0;
  }

  if (v5)
  {
    if (qword_100018AC0 != -1)
    {
      sub_10000AAA0();
    }

    if (qword_100018A80)
    {
      v6 = qword_100018A80;
    }

    else
    {
      v6 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 67109120;
      LODWORD(v12) = v5;
      v7 = v6;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_28:
      _os_log_impl(&_mh_execute_header, v7, v8, "getModuleSerialNumber -> err:0x%x\n", &v11, 8u);
    }
  }

  else
  {
    if (qword_100018AC0 != -1)
    {
      sub_10000AAA0();
    }

    if (qword_100018A80)
    {
      v9 = qword_100018A80;
    }

    else
    {
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      LODWORD(v12) = 0;
      v7 = v9;
      v8 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_28;
    }
  }

  return v5;
}

uint64_t sub_100008CF8(char *a1, size_t *a2)
{
  if (qword_100018AC0 != -1)
  {
    sub_10000A8C4();
  }

  if (qword_100018A80)
  {
    v4 = qword_100018A80;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v18 = a1;
    v19 = 2048;
    v20 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getSensorSerialNumber(%p, %p)\n", buf, 0x16u);
  }

  if (sub_100008904())
  {
    sub_10000AAC8();
    v8 = *buf;
  }

  else
  {
    v5 = 0;
    v6 = qword_100018AC0;
    while (1)
    {
      if (v6 != -1)
      {
        sub_10000AAA0();
      }

      if (qword_100018A78)
      {
        v7 = qword_100018A78;
      }

      else
      {
        v7 = &_os_log_default;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v18) = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getSensorSerialNumber, retry: %d\n", buf, 8u);
      }

      v8 = sub_100008A58(a1, a2);
      if (!v8)
      {
        break;
      }

      if (qword_100018AC0 != -1)
      {
        sub_10000AAA0();
      }

      if (qword_100018A78)
      {
        v9 = qword_100018A78;
      }

      else
      {
        v9 = &_os_log_default;
      }

      v16 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v18 = "err == 0 ";
        v19 = 2048;
        v20 = v8;
        v21 = 2080;
        v22 = &unk_10000E83E;
        v23 = 2080;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Mesa/AppleBiometricServices/MesaFactoryC/MesaFactoryC.c";
        v25 = 1024;
        v26 = 656;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        v6 = qword_100018AC0;
        if (++v5 == 10)
        {
          if (qword_100018AC0 != -1)
          {
            sub_10000AAA0();
          }

LABEL_31:
          if (qword_100018A78)
          {
            v10 = qword_100018A78;
          }

          else
          {
            v10 = &_os_log_default;
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v18 = "err == 0 ";
            v19 = 2048;
            v20 = v8;
            v21 = 2080;
            v22 = &unk_10000E83E;
            v23 = 2080;
            v24 = "/Library/Caches/com.apple.xbs/Sources/Mesa/AppleBiometricServices/MesaFactoryC/MesaFactoryC.c";
            v25 = 1024;
            v26 = 662;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          }

          break;
        }
      }

      else
      {
        ++v5;
        v6 = -1;
        if (v5 == 10)
        {
          goto LABEL_31;
        }
      }
    }
  }

  if (dword_100018A8C)
  {
    IOServiceClose(dword_100018A8C);
    dword_100018A8C = 0;
  }

  if (v8)
  {
    if (qword_100018AC0 != -1)
    {
      sub_10000AAA0();
    }

    if (qword_100018A80)
    {
      v11 = qword_100018A80;
    }

    else
    {
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v18) = v8;
      v12 = v11;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_53:
      _os_log_impl(&_mh_execute_header, v12, v13, "getSensorSerialNumber -> err:0x%x\n", buf, 8u);
    }
  }

  else
  {
    if (qword_100018AC0 != -1)
    {
      sub_10000AAA0();
    }

    if (qword_100018A80)
    {
      v14 = qword_100018A80;
    }

    else
    {
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v18) = 0;
      v12 = v14;
      v13 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_53;
    }
  }

  return v8;
}

uint64_t sub_100009100(int a1, const void *a2, size_t a3, void *a4, void *a5)
{
  if (qword_100018AC0 != -1)
  {
    sub_10000A8C4();
  }

  if (qword_100018A80)
  {
    v10 = qword_100018A80;
  }

  else
  {
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    *v23 = a1;
    *&v23[4] = 2048;
    *&v23[6] = a2;
    v24 = 2048;
    *v25 = a3;
    *&v25[8] = 2048;
    *&v25[10] = a4;
    v26 = 2048;
    v27 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "seaCookieHandleMessage(type:%d, message:%p, messageLength:%zu, reply:%p, replySize:%p)\n", buf, 0x30u);
  }

  size = 0;
  if ((a1 & 0xFFFFFFF7) != 0 && !a2)
  {
    sub_10000B2B4();
LABEL_43:
    v15 = *buf;
LABEL_51:
    if (qword_100018AC0 != -1)
    {
      sub_10000AAA0();
    }

    if (qword_100018A80)
    {
      v18 = qword_100018A80;
    }

    else
    {
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v23 = a1;
      *&v23[4] = 1024;
      *&v23[6] = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "seaCookieHandleMessage(type:%d) -> err:0x%x\n", buf, 0xEu);
    }

    return v15;
  }

  if ((a1 & 0xFFFFFFF7) != 0 && !a3)
  {
    sub_10000B1D8();
    goto LABEL_43;
  }

  if (a1 != 9 && !a4)
  {
    sub_10000ABAC();
    goto LABEL_43;
  }

  if (a1 != 9 && !a5)
  {
    sub_10000AC88(qword_100018AC0 == -1);
    goto LABEL_43;
  }

  if (qword_100018AC0 != -1)
  {
    sub_10000AAA0();
  }

  if (qword_100018A78)
  {
    v11 = qword_100018A78;
  }

  else
  {
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *v23 = a3;
    *&v23[8] = 1040;
    *&v23[10] = a3;
    v24 = 2096;
    *v25 = a2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "seaCookieHandleMessage message[%zu] %.*P\n", buf, 0x1Cu);
  }

  if (sub_100008904())
  {
    sub_10000AD58();
    goto LABEL_43;
  }

  if (a3 >= 0xFFFFFFFFFFFFFFF4)
  {
    sub_10000B0D8(a3 >= 0xFFFFFFFFFFFFFFF4, buf);
LABEL_46:
    v15 = *buf;
    goto LABEL_51;
  }

  size = 8200;
  v12 = malloc_type_malloc(a3 + 12, 0x10000403E1C8BA9uLL);
  if (!v12)
  {
    sub_10000AFF8();
    goto LABEL_46;
  }

  v13 = v12;
  v14 = malloc_type_malloc(size, 0x100004000313F17uLL);
  *v13 = a1;
  *(v13 + 4) = a3;
  memcpy(v13 + 12, a2, a3);
  v15 = sub_100008700(dword_100018A8C, 77, 0, v13, a3 + 12, v14, &size);
  if (v15)
  {
    sub_10000AE3C();
    goto LABEL_48;
  }

  if (!a4 || !a5)
  {
LABEL_48:
    free(v13);
    if (!v14)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (*a5 < *v14)
  {
    sub_10000AF18();
    v15 = *buf;
  }

  else
  {
    memcpy(a4, v14 + 1, *v14);
    *a5 = *v14;
    if (qword_100018AC0 != -1)
    {
      sub_10000AAA0();
    }

    if (qword_100018A78)
    {
      v16 = qword_100018A78;
    }

    else
    {
      v16 = &_os_log_default;
    }

    v15 = 0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *a5;
      *buf = 67109890;
      *v23 = a1;
      *&v23[4] = 2048;
      *&v23[6] = v17;
      v24 = 1040;
      *v25 = v17;
      *&v25[4] = 2096;
      *&v25[6] = a4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "seaCookieHandleMessage, type=%d reply[%zu] %.*P\n", buf, 0x22u);
      v15 = 0;
    }
  }

  free(v13);
LABEL_49:
  free(v14);
LABEL_50:
  if (v15)
  {
    goto LABEL_51;
  }

  if (qword_100018AC0 != -1)
  {
    sub_10000AAA0();
  }

  if (qword_100018A80)
  {
    v19 = qword_100018A80;
  }

  else
  {
    v19 = &_os_log_default;
  }

  v15 = 0;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v23 = a1;
    *&v23[4] = 1024;
    *&v23[6] = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "seaCookieHandleMessage(type:%d) -> err:0x%x\n", buf, 0xEu);
    return 0;
  }

  return v15;
}

uint64_t sub_1000095D8(int a1, const void *a2, size_t a3)
{
  if (qword_100018AC0 != -1)
  {
    sub_10000A8C4();
  }

  if (qword_100018A80)
  {
    v6 = qword_100018A80;
  }

  else
  {
    v6 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109632;
    v17 = a1;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "mesaSetFDRData(type:%d, data:%p, dataLength:%zu)\n", &v16, 0x1Cu);
  }

  if (sub_100008904())
  {
    sub_10000B390();
    goto LABEL_35;
  }

  switch(a1)
  {
    case 3:
      v10 = sub_100008700(dword_100018A8C, 32, 6, a2, a3, 0, 0);
      v8 = qword_100018AC0;
      if (v10)
      {
        sub_10000B474();
        goto LABEL_35;
      }

      break;
    case 2:
      v9 = sub_100008700(dword_100018A8C, 32, 3, a2, a3, 0, 0);
      v8 = qword_100018AC0;
      if (v9)
      {
        sub_10000B560();
        goto LABEL_35;
      }

      break;
    case 1:
      if (sub_100008700(dword_100018A8C, 92, 0, a2, a3, 0, 0))
      {
        sub_10000B64C();
        goto LABEL_35;
      }

      v7 = sub_100008834();
      v8 = qword_100018AC0;
      if (v7)
      {
        sub_10000B730();
LABEL_35:
        v13 = v16;
        if (qword_100018AC0 != -1)
        {
          sub_10000AAA0();
        }

        if (qword_100018A80)
        {
          v15 = qword_100018A80;
        }

        else
        {
          v15 = &_os_log_default;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = 67109376;
          v17 = a1;
          v18 = 1024;
          LODWORD(v19) = v13;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "mesaSetFDRData(type:%d) -> err:0x%x\n", &v16, 0xEu);
        }

        return v13;
      }

      break;
    default:
      if (qword_100018AC0 != -1)
      {
        sub_10000AAA0();
      }

      if (qword_100018A78)
      {
        v11 = qword_100018A78;
      }

      else
      {
        v11 = &_os_log_default;
      }

      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v16 = 67109632;
      v17 = a1;
      v18 = 2048;
      v19 = a2;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "UNIMPLEMENTED - mesaSetFDRData type:%d data:%p dataLength:%zu\n", &v16, 0x1Cu);
      v8 = qword_100018AC0;
      break;
  }

  if (v8 != -1)
  {
    sub_10000AAA0();
  }

LABEL_28:
  if (qword_100018A80)
  {
    v12 = qword_100018A80;
  }

  else
  {
    v12 = &_os_log_default;
  }

  v13 = 0;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109376;
    v17 = a1;
    v18 = 1024;
    LODWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "mesaSetFDRData(type:%d) -> err:0x%x\n", &v16, 0xEu);
    return 0;
  }

  return v13;
}

void sub_100009A28(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

BOOL sub_100009A48@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void sub_100009A68(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

BOOL sub_100009A88@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

uint64_t sub_100009AC4@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return v1;
  }
}

BOOL sub_100009AE0@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void sub_100009B3C(void *a1)
{
  *v2 = 0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't create OS Log for 'com.apple.BiometricKit.Library-MesaFactory'!\n", v2, 2u);
  *a1 = qword_100018A78;
}

void sub_100009B9C()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000997C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009B2C();
}

void sub_100009C78(uint64_t a1, _DWORD *a2)
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009AE0(qword_100018A78))
  {
    sub_1000099D0();
    sub_100009AB8();
    sub_1000099BC();
    sub_100009AA8();
    _os_log_impl(v3, v4, v5, v6, v7, 0x30u);
  }

  *a2 = 1;
}

void sub_100009D78()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000999C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }
}

void sub_100009E54()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000999C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }
}

void sub_100009F30(_DWORD *a1)
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000997C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v8);
  }

  *a1 = 0;
}

void sub_10000A010()
{
  sub_1000099E4();
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A88(qword_100018A78))
  {
    sub_10000995C();
    sub_1000099BC();
    sub_100009A68(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009AD4();
}

void sub_10000A0F4()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000997C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009A08(0x2BCu);
}

void sub_10000A1D4()
{
  sub_1000099E4();
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A88(qword_100018A78))
  {
    sub_10000995C();
    sub_1000099BC();
    sub_100009A68(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009AD4();
}

void sub_10000A2B8()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000997C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009A18();
}

void sub_10000A394()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000997C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009A18();
}

void sub_10000A470()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000997C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009A18();
}

void sub_10000A54C()
{
  sub_1000099E4();
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A88(qword_100018A78))
  {
    sub_10000995C();
    sub_1000099BC();
    sub_100009A68(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009AD4();
}

void sub_10000A630()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000997C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009A18();
}

void sub_10000A70C()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000997C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009A18();
}

void sub_10000A7E8()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000997C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009A18();
}

void sub_10000A8D8()
{
  sub_1000099E4();
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A88(qword_100018A78))
  {
    sub_10000995C();
    sub_1000099BC();
    sub_100009A68(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009AD4();
}

void sub_10000A9BC()
{
  sub_1000099E4();
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A88(qword_100018A78))
  {
    sub_10000995C();
    sub_1000099BC();
    sub_100009A68(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009AD4();
}

void sub_10000AAC8()
{
  sub_1000099E4();
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A88(qword_100018A78))
  {
    sub_10000995C();
    sub_1000099BC();
    sub_100009A68(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009AD4();
}

void sub_10000ABAC()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000997C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_1000099F4();
}

void sub_10000AC88(char a1)
{
  if ((a1 & 1) == 0)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000997C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v7);
  }

  sub_1000099F4();
}

void sub_10000AD58()
{
  sub_1000099E4();
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A88(qword_100018A78))
  {
    sub_10000995C();
    sub_1000099BC();
    sub_100009A68(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009AD4();
}

void sub_10000AE3C()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000999C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }
}

void sub_10000AF18()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000997C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009A08(0x2DBu);
}

void sub_10000AFF8()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000997C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009A08(0x2BDu);
}

void sub_10000B0D8(uint64_t a1, _DWORD *a2)
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009AE0(qword_100018A78))
  {
    sub_1000099D0();
    sub_100009AB8();
    sub_1000099BC();
    sub_100009AA8();
    _os_log_impl(v3, v4, v5, v6, v7, 0x30u);
  }

  *a2 = 1;
}

void sub_10000B1D8()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000997C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_1000099F4();
}

void sub_10000B2B4()
{
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A48(qword_100018A78))
  {
    sub_10000997C();
    sub_1000099BC();
    sub_100009A28(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_1000099F4();
}

void sub_10000B390()
{
  sub_1000099E4();
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A88(qword_100018A78))
  {
    sub_10000995C();
    sub_1000099BC();
    sub_100009A68(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009AD4();
}

void sub_10000B474()
{
  sub_100009B1C();
  if (v0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009AE0(qword_100018A78))
  {
    sub_1000099D0();
    sub_100009AB8();
    sub_1000099BC();
    sub_100009AA8();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  sub_100009AD4();
}

void sub_10000B560()
{
  sub_100009B1C();
  if (v0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009AE0(qword_100018A78))
  {
    sub_1000099D0();
    sub_100009AB8();
    sub_1000099BC();
    sub_100009AA8();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  sub_100009AD4();
}

void sub_10000B64C()
{
  sub_1000099E4();
  if (qword_100018AC0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009A88(qword_100018A78))
  {
    sub_10000995C();
    sub_1000099BC();
    sub_100009A68(&_mh_execute_header, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  sub_100009AD4();
}

void sub_10000B730()
{
  sub_100009B1C();
  if (v0 != -1)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (sub_100009AE0(qword_100018A78))
  {
    sub_1000099D0();
    sub_100009AB8();
    sub_1000099BC();
    sub_100009AA8();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  sub_100009AD4();
}

void sub_10000B944()
{
  sub_100003968();
  sub_100001A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000B980()
{
  sub_100003968();
  sub_100001A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t sub_10000B9BC(uint64_t a1, uint64_t *a2)
{
  sub_10000395C();
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100003974(&_mh_execute_header, v5, v6, "Failed to set TATSU server URL with error %d", v7, v8, v9, v10, v12, v13, 0);
  }

  result = [NSString stringWithFormat:@"Failed to set TATSU server URL with error %d", a1];
  *a2 = result;
  return result;
}

uint64_t sub_10000BA80(uint64_t *a1)
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100003994(&_mh_execute_header, v3, v4, "Failed to enable single sign on", v5, v6, v7, v8, 0);
  }

  result = [NSString stringWithFormat:@"Failed to enable single sign on"];
  *a1 = result;
  return result;
}

uint64_t sub_10000BB00(uint64_t a1, uint64_t *a2)
{
  sub_10000395C();
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100003974(&_mh_execute_header, v5, v6, "Failed to set SEP nonce with error %d", v7, v8, v9, v10, v12, v13, 0);
  }

  result = [NSString stringWithFormat:@"Failed to set SEP nonce with error %d", a1];
  *a2 = result;
  return result;
}

void sub_10000BBC4()
{
  sub_10000395C();
  v1 = handleForCategory();
  if (sub_100003944(v1))
  {
    sub_100003934();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

uint64_t sub_10000BD50(uint64_t *a1)
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100003994(&_mh_execute_header, v3, v4, "Failed to get default AMAuthInstallRef", v5, v6, v7, v8, 0);
  }

  result = [NSString stringWithFormat:@"Failed to get default AMAuthInstallRef"];
  *a1 = result;
  return result;
}

void sub_10000BDD0(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = handleForCategory();
  if (sub_100003944(v3))
  {
    sub_100003934();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_10000BE70()
{
  sub_100003968();
  sub_100001A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000BEAC()
{
  sub_100003968();
  sub_100001A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000BEE8(NSObject *a1)
{
  if (sub_100003944(a1))
  {
    sub_100003934();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10000BF3C(NSObject *a1)
{
  if (sub_100003944(a1))
  {
    sub_100003934();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10000BF90()
{
  v1 = handleForCategory();
  if (sub_100003944(v1))
  {
    sub_100003934();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10000BFF0(uint64_t *a1)
{
  sub_10000395C();
  v3 = handleForCategory();
  if (sub_100003944(v3))
  {
    v9 = *a1;
    sub_100003934();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_10000C100(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

uint64_t sub_10000C178()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v10 = sub_1000055F0();
  if (v10)
  {
    if (v8)
    {
      v11 = v10;
      v12 = 3758097090;
      if (sub_10000C478(v8) == v6)
      {
        bzero(__src, 0x8000uLL);
        __count = 0x8000;
        input = v9;
        v12 = IOConnectCallMethod(v11, 0x2Bu, &input, 1u, v8, v6, 0, 0, __src, &__count);
        if (!v12 && v4 && v2)
        {
          v13 = calloc(__count, 1uLL);
          *v4 = v13;
          if (v13)
          {
            memcpy(v13, __src, __count);
            v12 = 0;
            *v2 = __count;
          }

          else
          {
            v12 = 3758097085;
          }
        }
      }
    }

    else
    {
      v12 = 3758097090;
    }
  }

  else
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", &unk_10000E83E, -1, &unk_10000E83E, &unk_10000E83E, &unk_10000E83E, &unk_10000E83E, "_aks_operation", ":", 457, &unk_10000E83E, &unk_10000E83E);
    v12 = 3758097084;
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  return v12;
}

uint64_t sub_10000C478(uint64_t a1)
{
  if (ccder_blob_decode_tag() && ccder_blob_decode_len())
  {
    return a1 - a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C4E0()
{
  sub_100005BA4();
  v14 = 0;
  v13 = 0;
  result = ccder_blob_decode_range();
  if (result)
  {
    v3 = ccder_blob_decode_sequence_tl();
    if (v3)
    {
      while (1)
      {
        v11 = v14;
        sub_100005BF4(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
        result = ccder_blob_decode_tl();
        if (!result)
        {
          break;
        }

        if (v14 - v11 != 2)
        {
          return 0;
        }

        result = v1(v11, -v11, v14 + v13, -(v14 + v13), v0);
        if (!result)
        {
          return result;
        }

        v3 = ccder_blob_decode_sequence_tl();
        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10000C5B0(uint64_t a1)
{
  if (a1)
  {
    return sub_10000C4E0() - 1;
  }

  else
  {
    return 4294967285;
  }
}

uint64_t sub_10000C5F8(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15 = *(v14 + 1);
                v15 += 16;
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, sub_10000CAD0);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v27 = v17;
              v28 = &v17[v16];
              v19 = v8 - 1;
              v20 = &v13[-v9 - 8];
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v24 = *(v20 - 1);
                v23 = *v20;
                v25 = ccder_blob_encode_body();
                v20 = v22;
                if ((v25 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v27 != v28)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_10000C7C8()
{
  result = sub_100005C00();
  if (v0)
  {
    v6 = v3;
    if (v3)
    {
      if (v4 && v5)
      {
        if (sub_10000C478(v4) <= (v5 - v4))
        {
          v7 = *(v6 + 1);
          v8 = ccder_sizeof();
          if (!sub_100005BC8(v8))
          {
            return 4294967279;
          }

          sub_100005B78();
          if (ccder_blob_encode_body())
          {
            sub_100005B08();
            sub_100005AF8();
            sub_100005B54();
            sub_100005AF8();
            if (v9 == v1)
            {
              v10 = sub_100005BB0();
              if (v10)
              {
                return sub_100005ADC(v10);
              }
            }
          }

          sub_100005B34();
          free(v1);
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t sub_10000C8CC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v11 = 8;
  }

  else
  {
    v7 = 9;
    v8 = 48;
    v9 = 1;
    while ((v7 - 2) >= 2)
    {
      v10 = a3 >> v8;
      --v7;
      v8 -= 8;
      if (v6 != v10)
      {
        v9 = v7 - 1;
        goto LABEL_8;
      }
    }

    v7 = 2;
LABEL_8:
    if ((((a3 >> (8 * v9 - 8)) ^ v6) & 0x80) != 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }
  }

  v22 = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v13 = a2 + 2;
    v14 = *(a2 + 1);
    ccder_sizeof();
    v15 = ccder_sizeof();
    v16 = calloc(v15, 1uLL);
    if (v16)
    {
      v17 = v16;
      v18 = v11;
      do
      {
        *(&v22 + v18 - 1) = v3;
        v3 >>= 8;
        --v18;
      }

      while (v18);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (v19 = v13 + *(a2 + 1), ccder_blob_encode_body(), sub_100005AF8(), sub_100005B8C(), ccder_blob_encode_tl(), sub_100005AF8(), v20 == v17) && sub_100005BB0())
      {
        result = sub_100005B98();
        v21[1] = v17;
        v21[2] = v15;
        *v21 = *a1;
        *a1 = v21;
      }

      else
      {
        memset_s(v17, v15, 0, v15);
        free(v17);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_10000CAD0(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *a1 + *(a1 + 8);
  __s2 = *a2;
  v5 = *a2 + *(a2 + 8);
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v6 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v6, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}

uint64_t sub_10000CCCC(char *a1)
{
  sub_100009B10();
  if (!v4)
  {
    dispatch_once(&qword_100018AC0, &stru_100014650);
  }

  if (qword_100018A80)
  {
    v2 = qword_100018A80;
  }

  else
  {
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134217984;
    v22 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "getSensorProvisioningState(%p)\n", &v21, 0xCu);
  }

  if (a1)
  {
    if (byte_100018A89 == 1)
    {
      v3 = 0;
      *a1 = dword_100018A60;
    }

    else
    {
      v3 = sub_100008904();
      if (v3)
      {
        sub_100009B10();
        if (!v4)
        {
          dispatch_once(&qword_100018AC0, &stru_100014650);
        }

        v15 = sub_100009AC4(qword_100018A78);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v21 = 136316162;
          v22 = "err == 0 ";
          v23 = 2048;
          v24 = v3;
          sub_100009AB8();
          v25 = &unk_10000E83E;
          sub_1000099BC();
          v26 = 406;
          sub_100009AA8();
          _os_log_impl(v16, v17, v18, v19, v20, 0x30u);
        }
      }

      else
      {
        *a1 = sub_10000888C();
      }
    }
  }

  else
  {
    v3 = 3758097090;
  }

  if (dword_100018A8C)
  {
    IOServiceClose(dword_100018A8C);
    dword_100018A8C = 0;
  }

  sub_100009B10();
  if (v3)
  {
    if (!v4)
    {
      dispatch_once(&qword_100018AC0, &stru_100014650);
    }

    v5 = sub_100009AC4(qword_100018A80);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        v6 = *a1;
      }

      v21 = 67109376;
      LODWORD(v22) = v3;
      sub_100009B00();
      sub_100009AA8();
LABEL_28:
      _os_log_impl(v9, v10, v11, v12, v13, 0xEu);
    }
  }

  else
  {
    if (!v4)
    {
      dispatch_once(&qword_100018AC0, &stru_100014650);
    }

    v7 = sub_100009AC4(qword_100018A80);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (a1)
      {
        v8 = *a1;
      }

      v21 = 67109376;
      LODWORD(v22) = 0;
      sub_100009B00();
      v9 = &_mh_execute_header;
      v12 = "getSensorProvisioningState -> err:0x%x, state:%d\n";
      v13 = &v21;
      v10 = &NSObject__properties;
      v11 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_28;
    }
  }

  return v3;
}