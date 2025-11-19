void sub_1000010C8()
{
  context = objc_autoreleasePoolPush();
  v2 = 0;
  v3 = objc_alloc_init(NSMutableDictionary);

  CFDictionaryApplyFunction(qword_100028DD8, sub_100001308, v3);
  location = objc_alloc_init(NSMutableDictionary);
  CFDictionaryApplyFunction(qword_100028DE0, sub_100001544, location);
  [v3 setObject:location forKeyedSubscript:off_100028BC0];
  [HeimCredDecoder archiveRootObject:v3 toFile:qword_100028D10];
  objc_storeStrong(&location, 0);
  if (v2)
  {
    objc_exception_rethrow();
  }

  objc_storeStrong(&v3, 0);
  objc_autoreleasePoolPop(context);
}

void sub_100001308(uint64_t a1, uint64_t a2, void *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, id a20)
{
  v24 = a1;
  v23 = a2;
  v22[1] = a3;
  v22[0] = a3;
  location = objc_alloc_init(NSMutableDictionary);

  CFDictionaryApplyFunction(*(v23 + 24), sub_100001544, location);
  v20 = [NSNumber numberWithInt:*(v23 + 16)];
  [v22[0] setObject:location forKey:?];

  objc_storeStrong(&location, 0);
  objc_storeStrong(v22, 0);
}

void sub_100001544(uint64_t a1, char *a2, void *a3)
{
  v15 = a1;
  v14 = a2;
  v13[1] = a3;
  v13[0] = a3;
  v12 = v14;
  CFRetain(v14);
  v11 = [HeimCredDecoder copyCF2NS:v15];
  v10 = 0;
  if (sub_10000C464(v14))
  {
    pthread_mutex_lock((v12 + 40));
    value = CFDateCreate(0, *(v12 + 16) - kCFAbsoluteTimeIntervalSince1970);
    cf = CFNumberCreate(0, kCFNumberIntType, v12 + 144);
    pthread_mutex_unlock((v12 + 40));
    theDict = CFDictionaryCreateMutableCopy(0, 0, *(v12 + 3));
    CFDictionarySetValue(theDict, @"kHEIMAttrExpire", value);
    CFDictionarySetValue(theDict, @"kHEIMAttrStatus", cf);
    v3 = [HeimCredDecoder copyCF2NS:theDict];
    v4 = v10;
    v10 = v3;

    if (theDict)
    {
      CFRelease(theDict);
    }

    if (value)
    {
      CFRelease(value);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v5 = [HeimCredDecoder copyCF2NS:*(v12 + 3)];
    v6 = v10;
    v10 = v5;
  }

  CFRelease(v12);
  [v13[0] setObject:v10 forKey:v11];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(v13, 0);
}

void sub_10000179C()
{
  v0 = &_dispatch_main_q;
  v1 = &_dispatch_main_q;
  dispatch_async(v1, &stru_1000249F0);
}

void sub_1000017F4(id a1)
{
  v12 = a1;
  v11 = a1;
  v10 = 0;
  v9 = 0;
  if (!dword_100028E10)
  {
    v10 = sub_1000019A0();
    if (v10 >= qword_100028E08)
    {
      v9 = v10 - qword_100028E08;
    }

    else
    {
      v9 = 500000000;
    }

    location = sub_10000E120();
    v7 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v7;
      sub_100001A10(v6);
      _os_log_debug_impl(&_mh_execute_header, log, type, "sending cache changed notification", v6, 2u);
    }

    objc_storeStrong(&location, 0);
    if (v9 >= 0x1DCD6500)
    {
      notify_post("com.apple.Kerberos.cache.changed");
      qword_100028E08 = v10;
    }

    else
    {
      dword_100028E10 = 1;
      when = dispatch_time(0, 500000000 - v9);
      v1 = &_dispatch_main_q;
      v3 = &_dispatch_main_q;
      dispatch_after(when, v3, &stru_100024A10);
    }
  }
}

uint64_t sub_1000019A0()
{
  v2 = mach_absolute_time();
  if (!qword_100028E18)
  {
    v1 = 0;
    mach_timebase_info(&v1);
    qword_100028E18 = v1.numer / v1.denom;
  }

  return v2 * qword_100028E18;
}

_BYTE *sub_100001A10(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_100001A2C(id a1)
{
  dword_100028E10 = 0;
  qword_100028E08 = sub_1000019A0();
  notify_post("com.apple.Kerberos.cache.changed");
}

uint64_t sub_100001A74()
{
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  v8 = 0x100000;
  v3 = +[NSFileManager defaultManager];
  v7 = [(NSFileManager *)v3 attributesOfItemAtPath:qword_100028D10 error:0];

  v6 = [v7 objectForKeyedSubscript:NSFileSize];
  if ([v6 longLongValue] <= 0x100000)
  {
    v2 = [HeimCredDecoder copyUnarchiveObjectWithFileSecureEncoding:qword_100028D10];
    v0 = v9;
    v9 = v2;

    if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v9 enumerateKeysAndObjectsUsingBlock:&stru_100024A50];
      v10 = 0;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    location = sub_10000E120();
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      sub_100001F60(v11, v6, v8);
      _os_log_error_impl(&_mh_execute_header, location, OS_LOG_TYPE_ERROR, "The archive file size %@ exceeds the max limit of %lld. Aborting the load.", v11, 0x16u);
    }

    objc_storeStrong(&location, 0);
    v10 = 2;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v9, 0);
  objc_autoreleasePoolPop(v4);
  return v10;
}

uint64_t sub_100001F60(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_100001FB0(id a1, id a2, id a3, BOOL *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = a4;
  v13 = a1;
  valuePtr = [location[0] intValue];
  if (valuePtr == [off_100028BC0 intValue])
  {
    v11 = v15;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v11 enumerateKeysAndObjectsUsingBlock:&stru_100024A70];
      v10 = 1;
    }

    else
    {
      v10 = 1;
    }

    objc_storeStrong(&v11, 0);
  }

  else if (byte_100028D68 & 1) != 0 || (off_100028D58(valuePtr))
  {
    v9 = sub_1000026D4(valuePtr);
    if (v9)
    {
      v8 = v15;
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v8 enumerateKeysAndObjectsUsingBlock:?];
        CFDictionaryApplyFunction(qword_100028DE8, sub_100002E68, v9);
        if (CFDictionaryGetCount(v9[3]))
        {
          CFRelease(v9);
        }

        else
        {
          key = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          CFDictionaryRemoveValue(qword_100028DD8, key);
          CFRelease(v9);
          v9 = 0;
          if (key)
          {
            CFRelease(key);
          }
        }

        v10 = 0;
      }

      else
      {
        CFRelease(v9);
        v9 = 0;
        v10 = 1;
      }

      objc_storeStrong(&v8, 0);
      if (!v10)
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_100002314(id a1, id a2, id a3, BOOL *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = [HeimCredDecoder copyNS2CF:location[0]];
  cf = [HeimCredDecoder copyNS2CF:v8];
  if (v7 && cf)
  {
    value = sub_10000FE64(v7);
    if (value)
    {
      if (sub_1000024C4(value, cf))
      {
        *(value + 3) = CFRetain(cf);
        if (!sub_1000025E4(value))
        {
          CFDictionarySetValue(qword_100028DE0, *(value + 2), value);
        }
      }
    }

    if (value)
    {
      CFRelease(value);
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_1000024C4(uint64_t a1, const __CFDictionary *a2)
{
  v9 = a1;
  v8 = a2;
  if (*(a1 + 32))
  {
    heim_abort();
  }

  v7 = 0;
  v4 = v8;
  TypeID = CFStringGetTypeID();
  key = sub_10000A548(v4, @"kHEIMAttrType", TypeID, &v7);
  if (key && (Value = CFDictionaryGetValue(qword_100028DE8, key)) != 0)
  {
    *(v9 + 32) = Value;
    v10 = 1;
  }

  else
  {
    if (v7)
    {
      CFRelease(v7);
      v7 = 0;
    }

    v10 = 0;
  }

  return v10 & 1;
}

BOOL sub_1000025E4(CFDictionaryRef *a1)
{
  v5[1] = a1;
  v5[0] = CFDictionaryGetValue(a1[3], @"kHEIMAttrStoreTime");
  v3 = +[NSDate date];
  v2 = [v5[0] dateByAddingTimeInterval:heim_ntlm_time_skew];
  v4 = [(NSDate *)v3 compare:?];

  objc_storeStrong(v5, 0);
  return v4 == 1;
}

const void *sub_1000026D4(int a1)
{
  valuePtr = a1;
  v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v2)
  {
    heim_abort();
  }

  Value = CFDictionaryGetValue(qword_100028DD8, v2);
  if (Value)
  {
    if (v2)
    {
      CFRelease(v2);
    }

    CFRetain(Value);
    return Value;
  }

  else
  {
    if (!sub_10000A4D0())
    {
      heim_abort();
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      heim_abort();
    }

    *(Instance + 16) = valuePtr;
    *(Instance + 24) = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(Instance + 32) = qword_100028DE0;
    CFRetain(*(Instance + 32));
    *(Instance + 40) = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(Instance + 48) = 0;
    CFDictionarySetValue(qword_100028DD8, v2, Instance);
    if (v2)
    {
      CFRelease(v2);
    }

    return Instance;
  }
}

void sub_1000028C8(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13 = a4;
  v12 = a1;
  v11 = [HeimCredDecoder copyNS2CF:location[0]];
  v10 = [HeimCredDecoder copyNS2CF:v14];
  if (v11 && v10)
  {
    cf = sub_10000FE64(v11);
    if (byte_100028D68)
    {
      v8 = CFDictionaryGetValue(v10, @"kHEIMAttrASID");
      if ((!v8 || ((off_100028D58)([v8 intValue]) & 1) == 0) && cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      objc_storeStrong(&v8, 0);
    }

    if (cf && (sub_1000024C4(cf, v10) & 1) != 0)
    {
      v4 = CFRetain(v10);
      *(cf + 3) = v4;
      CFDictionarySetValue(*(a1[4] + 24), *(cf + 2), cf);
      if (!sub_100002B48(*(cf + 3)))
      {
        sub_100002BC0(a1[4], cf, *(cf + 3));
      }

      sub_100002CF4(cf, a1[4]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v11)
  {
    CFRelease(v11);
    v11 = 0;
  }

  if (v10)
  {
    CFRelease(v10);
    v10 = 0;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

BOOL sub_100002B48(const __CFDictionary *a1)
{
  v2 = 0;
  if (CFDictionaryContainsKey(a1, @"kHEIMAttrTemporaryCache"))
  {
    return CFDictionaryGetValue(a1, @"kHEIMAttrTemporaryCache") == kCFBooleanTrue;
  }

  return v2;
}

void sub_100002BC0(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  if (!*(a2 + 32))
  {
    heim_abort();
  }

  if (!CFDictionaryGetValue(a3, @"kHEIMAttrParentCredential"))
  {
    Value = CFDictionaryGetValue(*(a1 + 40), *(*(a2 + 32) + 16));
    BOOLean = CFDictionaryGetValue(a3, @"kHEIMAttrDefaultCredential");
    if (BOOLean)
    {
      if (CFBooleanGetValue(BOOLean))
      {
        if (Value)
        {
          sub_10000C4E0(Value, a1, 0);
        }

        CFDictionarySetValue(*(a1 + 40), *(*(a2 + 32) + 16), *(a2 + 16));
        if (*(*(a2 + 32) + 40))
        {
          (*(*(a2 + 32) + 40))();
        }
      }
    }
  }
}

void sub_100002CF4(uint64_t a1, uint64_t a2)
{
  if (CFEqual(*(*(a1 + 32) + 16), @"kHEIMTypeKerberos") || CFEqual(*(*(a1 + 32) + 16), @"kHEIMTypeKerberosAcquireCred"))
  {
    *(a1 + 148) = *(a2 + 16);
    cf = sub_10000F7C8(a1);
    *(a1 + 168) = CFRetain(cf);
    *(a1 + 136) = heim_ipc_event_cf_create_f(qword_100028D80, cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v2 = sub_10000F7C8(a1);
    *(a1 + 160) = CFRetain(v2);
    *(a1 + 112) = heim_ipc_event_cf_create_f(qword_100028D88, v2);
    if (v2)
    {
      CFRelease(v2);
    }

    heim_ipc_event_set_final_f(*(a1 + 112), qword_100028D90);
    heim_ipc_event_set_final_f(*(a1 + 136), qword_100028D90);
    sub_10000699C(a1);
  }
}

void sub_100002E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a2;
  v15 = a3;
  v14 = CFDictionaryGetValue(*(a3 + 40), *(a2 + 16));
  if (v14)
  {
    if (CFDictionaryGetValue(*(v15 + 24), v14))
    {
      return;
    }

    CFDictionaryRemoveValue(*(v15 + 40), *(v16 + 16));
    location = sub_10000E120();
    v12 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      sub_100003F54(v21, *(v16 + 16));
      _os_log_debug_impl(&_mh_execute_header, location, v12, "The default credential for %@ does not exist.", v21, 0xCu);
    }

    objc_storeStrong(&location, 0);
  }

  v11 = *(v15 + 24);
  oslog[1] = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10000C5C0;
  v8 = &unk_100024B40;
  v9 = v15;
  v10 = v16;
  [v11 enumerateKeysAndObjectsUsingBlock:?];
  v14 = CFDictionaryGetValue(*(v15 + 40), *(v16 + 16));
  if (!v14)
  {
    oslog[0] = sub_10000E120();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
    {
      sub_100003F54(v20, *(v16 + 16));
      _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "A default credential for %@ could not be identified.", v20, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    value = CFUUIDCreate(0);
    CFDictionarySetValue(*(v15 + 40), *(v16 + 16), value);
    if (value)
    {
      CFRelease(value);
    }
  }

  if (*(v16 + 40))
  {
    (*(v16 + 40))();
  }

  objc_storeStrong(&v11, 0);
}

uint64_t sub_100003164(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_1000031B4(void *a1, void *a2, void *a3)
{
  v48 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v46 = 0;
  objc_storeStrong(&v46, a3);
  MutableCopy = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = sub_10000E120();
  v37 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    sub_100003F54(v55, location);
    _os_log_debug_impl(&_mh_execute_header, v38, v37, "Begin Create Cred: %@", v55, 0xCu);
  }

  objc_storeStrong(&v38, 0);
  v13 = location;
  TypeID = CFDictionaryGetTypeID();
  v36 = sub_10000F630(v13, "attributes", TypeID);
  if (v36)
  {
    if ((sub_100003F94(v36, &v41) & 1) == 0)
    {
LABEL_33:
      sub_1000041C4(v46, v41);
      goto LABEL_75;
    }

    v12 = 1;
    if (!sub_100002B48(v36))
    {
      v12 = sub_100004294(v48[7], v36);
    }

    v39 = v12;
    v35 = CFDictionaryGetValue(v36, @"kHEIMAttrParentCredential");
    if (!v35 || (sub_100004360(v48, v35, &v42) & 1) != 0)
    {
      v43 = CFDictionaryGetValue(v36, @"kHEIMAttrUUID");
      if (v43)
      {
        CFRetain(v43);
        v11 = CFGetTypeID(v43);
        if (v11 != CFUUIDGetTypeID() || CFDictionaryGetValue(*(v48[7] + 24), v43))
        {
          goto LABEL_75;
        }
      }

      else
      {
        v43 = CFUUIDCreate(0);
        if (!v43)
        {
          goto LABEL_75;
        }
      }

      if ((sub_100004B4C(v48, v36, &v41) & 1) == 0)
      {
        goto LABEL_33;
      }

      v44 = sub_10000FE64(v43);
      if (v44)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v36);
        if (MutableCopy)
        {
          v34 = sub_10000534C(v48, MutableCopy);
          if ((v34 & 1) != 0 && (sub_1000054D0(v48) & 1) == 0)
          {
            v33 = CFDictionaryGetValue(MutableCopy, @"kHEIMAttrBundleIdentifierACL");
            if (!v33 || (v10 = CFGetTypeID(v33), v10 != CFArrayGetTypeID()) || CFArrayGetCount(v33) != 1)
            {
              v32 = sub_10000E120();
              v31 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v8 = v32;
                v9 = v31;
                sub_100001A10(v30);
                _os_log_error_impl(&_mh_execute_header, v8, v9, "peer sent more then one bundle id and is not accountsd", v30, 2u);
              }

              objc_storeStrong(&v32, 0);
              goto LABEL_75;
            }
          }

          if ((v42 & 1) == 0 && (v34 & 1) == 0)
          {
            values = 0;
            values = v48[1];
            value = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
            if (!value)
            {
              heim_abort();
            }

            CFDictionarySetValue(MutableCopy, @"kHEIMAttrBundleIdentifierACL", value);
            if (value)
            {
              CFRelease(value);
              value = 0;
            }
          }

          CFDictionarySetValue(MutableCopy, @"kHEIMAttrUUID", v43);
          if ((sub_100003F94(MutableCopy, &v41) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (sub_1000024C4(v44, MutableCopy))
          {
            sub_100005544(v44, MutableCopy);
            if (!v39)
            {
              sub_100002BC0(v48[7], v44, MutableCopy);
            }

            if ((byte_100028D18 & 1) == 0)
            {
              goto LABEL_43;
            }

            v6 = off_100028D20();
            v49 = 0;
            objc_storeStrong(&v49, v6);
            v7 = v49;
            objc_storeStrong(&v49, 0);

            cf = v7;
            if (v7)
            {
              CFDictionarySetValue(MutableCopy, @"kHEIMAttrAltDSID", cf);
              CFRelease(cf);
              cf = 0;
LABEL_43:
              if (byte_100028D68)
              {
                valuePtr = off_100028D30(*v48);
                v23 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                if (valuePtr)
                {
                  CFDictionarySetValue(MutableCopy, @"kHEIMAttrUserID", v23);
                }

                if (v23)
                {
                  CFRelease(v23);
                  v23 = 0;
                }

                v22 = off_100028D38(*v48);
                v21 = CFNumberCreate(0, kCFNumberIntType, &v22);
                CFDictionarySetValue(MutableCopy, @"kHEIMAttrASID", v21);
                if (v21)
                {
                  CFRelease(v21);
                  v21 = 0;
                }
              }

              if (!v35)
              {
                CFDictionarySetValue(MutableCopy, @"kHEIMAttrRetainStatus", &off_100026360);
              }

              *(v44 + 24) = CFRetain(MutableCopy);
              CFDictionarySetValue(*(v48[7] + 24), *(v44 + 16), v44);
              if (CFDictionaryGetValue(*(v44 + 24), @"kHEIMAttrLeadCredential") == kCFBooleanTrue && *(*(v44 + 32) + 40))
              {
                (*(*(v44 + 32) + 40))();
              }

              byte_100028E04 = 1;
              if (!*(v44 + 32))
              {
                heim_abort();
              }

              key = CFDictionaryGetValue(*(v48[7] + 40), *(*(v44 + 32) + 16));
              if (!v39 && (!key || !CFDictionaryGetValue(*(v48[7] + 24), key)))
              {
                v40 = CFDictionaryGetValue(*(v44 + 24), @"kHEIMAttrLeadCredential");
                if (v40)
                {
                  if (CFBooleanGetValue(v40))
                  {
                    *(v48[7] + 48) = 1;
                    sub_100005634(v48);
                  }
                }
              }

              sub_100002CF4(v44, v48[7]);
              v19 = sub_1000056A8(*(v44 + 24), &v41);
              if (v41)
              {
                v18 = sub_10000E120();
                v17 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  sub_100003F54(v51, v41);
                  _os_log_error_impl(&_mh_execute_header, v18, v17, "error filtering attributes: %@", v51, 0xCu);
                }

                objc_storeStrong(&v18, 0);
                if (v41)
                {
                  CFRelease(v41);
                  v41 = 0;
                }
              }

              sub_10000F6E8(v46, "attributes");
              if (v19)
              {
                CFRelease(v19);
                v19 = 0;
              }

              if (*(*(v44 + 32) + 24))
              {
                v16 = (*(*(v44 + 32) + 24))(v44);
                v15 = sub_10000E120();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
                {
                  sub_10000586C(v50, v16);
                  _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "End Create Cred: %{private}@", v50, 0xCu);
                }

                objc_storeStrong(&v15, 0);
                if (v16)
                {
                  CFRelease(v16);
                  v16 = 0;
                }
              }

              goto LABEL_75;
            }

            oslog = sub_10000E120();
            v26 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              v4 = oslog;
              v5 = v26;
              sub_100001A10(v25);
              _os_log_error_impl(&_mh_execute_header, v4, v5, "the device is multiuser and is missing the altDSID", v25, 2u);
            }

            objc_storeStrong(&oslog, 0);
            v53 = @"CommonErrorCode";
            v52 = kCFBooleanTrue;
            sub_1000055C4(&v41, 564486, &v53, &v52, 1);
            sub_1000041C4(v46, v41);
          }
        }
      }
    }
  }

LABEL_75:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
    MutableCopy = 0;
  }

  if (v36)
  {
    CFRelease(v36);
    v36 = 0;
  }

  if (v44)
  {
    CFRelease(v44);
    v44 = 0;
  }

  if (v43)
  {
    CFRelease(v43);
    v43 = 0;
  }

  if (v41)
  {
    CFRelease(v41);
    v41 = 0;
  }

  objc_storeStrong(&v46, 0);
  objc_storeStrong(&location, 0);
}

uint64_t sub_100003F54(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_100003F94(const __CFDictionary *a1, __CFError *a2)
{
  v10 = a1;
  v9 = a2;
  if (!a2)
  {
    heim_abort();
  }

  memset(__b, 0, sizeof(__b));
  __b[0] = 0;
  __b[1] = v10;
  __b[2] = 0;
  __b[3] = v9;
  LOBYTE(__b[4]) = 1;
  v6 = v10;
  TypeID = CFStringGetTypeID();
  v7 = sub_10000A548(v6, @"kHEIMObjectType", TypeID, v9);
  if (v7)
  {
    v5 = qword_100028DF0;
    v3 = CFDictionaryGetTypeID();
    __b[0] = sub_10000A548(v5, v7, v3, v9);
    if (__b[0])
    {
      CFDictionaryApplyFunction(v10, sub_10000D4E4, __b);
      CFDictionaryApplyFunction(__b[0], sub_10000D664, __b);
      v11 = __b[4] & 1;
    }

    else
    {
      v13 = @"CommonErrorCode";
      v12 = kCFBooleanTrue;
      sub_1000055C4(v9, 564482, &v13, &v12, 1);
      v11 = 0;
    }
  }

  else
  {
    v15 = @"CommonErrorCode";
    v14 = kCFBooleanTrue;
    sub_1000055C4(v9, 564481, &v15, &v14, 1);
    v11 = 0;
  }

  return v11 & 1;
}

void sub_1000041C4(void *a1, __CFError *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v7 = a2;
  if (a2)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xdict = v5;
    Code = CFErrorGetCode(v7);
    xpc_dictionary_set_int64(xdict, "error-code", Code);
    xpc_dictionary_set_value(location, "error", v5);
    objc_storeStrong(&v5, 0);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  objc_storeStrong(&location, 0);
}

BOOL sub_100004294(uint64_t a1, const __CFDictionary *a2)
{
  v5 = 0;
  key = CFDictionaryGetValue(a2, @"kHEIMAttrParentCredential");
  if (key)
  {
    Value = CFDictionaryGetValue(*(a1 + 24), key);
    if (Value)
    {
      if (CFDictionaryContainsKey(Value[3], @"kHEIMAttrTemporaryCache"))
      {
        return CFDictionaryGetValue(Value[3], @"kHEIMAttrTemporaryCache") == kCFBooleanTrue;
      }
    }
  }

  return v5;
}

uint64_t sub_100004360(void *a1, const void *a2, _BYTE *a3)
{
  v47 = a1;
  v46 = a2;
  v45 = a3;
  v44 = 10;
  v43 = 0;
  if (a3)
  {
    *v45 = 0;
  }

  v17 = CFGetTypeID(v46);
  if (v17 == CFUUIDGetTypeID())
  {
    while (1)
    {
      Value = CFDictionaryGetValue(*(v47[7] + 24), v46);
      v41 = 0;
      if (!Value)
      {
LABEL_58:
        v43 = 1;
        return v43 & 1;
      }

      v16 = CFGetTypeID(Value);
      if (v16 != sub_10000FE40())
      {
        heim_abort();
      }

      v3 = v44--;
      if (v3 < 0)
      {
        return v43 & 1;
      }

      if (byte_100028D18)
      {
        if (!off_100028D30(*v47))
        {
          goto LABEL_58;
        }

        v39 = 0;
        if (!v47[9])
        {
          v38 = off_100028D20();
          location = 0;
          objc_storeStrong(&location, v38);
          v15 = location;
          objc_storeStrong(&location, 0);
          v47[9] = v15;
          objc_storeStrong(&v38, 0);
        }

        v37 = CFDictionaryGetValue(Value[3], @"kHEIMAttrAltDSID");
        if (v37 && v47[9])
        {
          v39 = CFStringCompare(v37, v47[9], 0) == kCFCompareEqualTo;
        }

        if (!v39)
        {
          return v43 & 1;
        }
      }

      if (byte_100028D68)
      {
        valuePtr = off_100028D38(*v47);
        v35 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        v34 = CFDictionaryGetValue(Value[3], @"kHEIMAttrASID");
        v33 = 0;
        if (v35 && v34)
        {
          v33 = CFEqual(v35, v34) != 0;
        }

        v32 = off_100028D30(*v47);
        v31 = CFDictionaryGetValue(Value[3], @"kHEIMAttrUserID");
        v30 = CFNumberCreate(0, kCFNumberIntType, &v32);
        v29 = 0;
        if (v31 && v30)
        {
          v29 = CFEqual(v31, v30) != 0;
        }

        if (v30)
        {
          CFRelease(v30);
          v30 = 0;
        }

        if (v35)
        {
          CFRelease(v35);
          v35 = 0;
        }

        if (!v29 && !v33)
        {
          return v43 & 1;
        }
      }

      v28 = CFDictionaryGetValue(Value[3], @"kHEIMAttrBundleIdentifierACL");
      if (v28)
      {
        break;
      }

      v41 = CFDictionaryGetValue(Value[3], @"kHEIMAttrParentCredential");
      if (!v41)
      {
        return v43 & 1;
      }

      if (CFEqual(v41, v46))
      {
        goto LABEL_58;
      }

      v46 = v41;
    }

    i = 0;
    Count = 0;
    if (v45)
    {
      *v45 = 1;
    }

    v14 = CFGetTypeID(v28);
    if (v14 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v28);
      for (i = 0; i < Count; ++i)
      {
        cf = CFArrayGetValueAtIndex(v28, i);
        v13 = CFGetTypeID(cf);
        if (v13 != CFStringGetTypeID())
        {
          break;
        }

        if (CFEqual(v47[1], cf))
        {
          goto LABEL_58;
        }

        v24 = [NSPredicate predicateWithFormat:@"self like %@", cf];
        v23 = [v24 evaluateWithObject:v47[1]];
        if (v23)
        {
          v18 = 5;
        }

        else
        {
          if (!CFEqual(cf, @"com.apple.private.gssapi.allowmanagedapps"))
          {
            goto LABEL_51;
          }

          if (v47[8])
          {
            oslog = sub_10000E120();
            type = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              log = oslog;
              v12 = type;
              CStringPtr = CFStringGetCStringPtr(v47[1], 0x8000100u);
              sub_10000C8BC(v50, CStringPtr);
              _os_log_debug_impl(&_mh_execute_header, log, v12, "checking managed app status for: %{private}s", v50, 0xCu);
            }

            objc_storeStrong(&oslog, 0);
            v5 = v47[1];
            v20[0] = *(v47 + 3);
            v20[1] = *(v47 + 5);
            v6 = [qword_100028D60 isManagedApp:v5 auditToken:v20];
            *(v47 + 65) = v6;
            *(v47 + 64) = 0;
            v19 = sub_10000E120();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v10 = v19;
              v7 = CFStringGetCStringPtr(v47[1], 0x8000100u);
              if (*(v47 + 65))
              {
                v8 = "is managed";
              }

              else
              {
                v8 = "is not managed";
              }

              sub_10000C8FC(v49, v7, v8);
              _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "app %{private}s %s", v49, 0x16u);
            }

            objc_storeStrong(&v19, 0);
          }

          if (*(v47 + 65))
          {
            v18 = 5;
          }

          else
          {
LABEL_51:
            v18 = 0;
          }
        }

        objc_storeStrong(&v24, 0);
        if (v18)
        {
          goto LABEL_58;
        }
      }
    }
  }

  return v43 & 1;
}

uint64_t sub_100004B4C(void *a1, const __CFDictionary *a2, __CFError *a3)
{
  v41 = a1;
  v40 = a2;
  v39 = a3;
  v38 = 0;
  v37 = CFDictionaryGetValue(a2, @"kHEIMObjectType");
  if (CFEqual(v37, @"kHEIMObjectKerberos") || CFEqual(v37, @"kHEIMObjectConfiguration") || CFEqual(v37, @"kHEIMObjectKerberosAcquireCred"))
  {
    v36 = CFDictionaryGetValue(v40, @"kHEIMAttrParentCredential");
    v35 = CFDictionaryGetValue(v40, @"kHEIMAttrClientName");
    v34 = CFDictionaryGetValue(v40, @"kHEIMAttrServerName");
    if (!v36 || !v35 || !v34)
    {
      v42 = 1;
      v33 = 1;
      goto LABEL_38;
    }

    v49[0] = @"kHEIMObjectType";
    v50[0] = v37;
    v49[1] = @"kHEIMAttrParentCredential";
    v50[1] = v36;
    v49[2] = @"kHEIMAttrClientName";
    v50[2] = v35;
    v49[3] = @"kHEIMAttrServerName";
    v50[3] = v34;
    v14 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:4];
    v3 = [(NSDictionary *)v14 mutableCopy];
    v4 = v38;
    v38 = v3;
  }

  else if (CFEqual(v37, @"kHEIMObjectNTLM"))
  {
    v32 = CFDictionaryGetValue(v40, @"kHEIMAttrNTLMUsername");
    v31 = CFDictionaryGetValue(v40, @"kHEIMAttrNTLMDomain");
    v30 = CFDictionaryGetValue(v40, @"kHEIMAttrParentCredential");
    v47[0] = @"kHEIMObjectType";
    v48[0] = v37;
    v47[1] = @"kHEIMAttrNTLMUsername";
    v48[1] = v32;
    v47[2] = @"kHEIMAttrNTLMDomain";
    v48[2] = v31;
    v47[3] = @"kHEIMAttrData";
    v48[3] = @"kHEIMObjectAny";
    v13 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:4];
    v5 = [(NSDictionary *)v13 mutableCopy];
    v6 = v38;
    v38 = v5;

    if (v30)
    {
      [v38 setObject:v30 forKeyedSubscript:@"kHEIMAttrParentCredential"];
    }
  }

  else
  {
    if (!CFEqual(v37, @"kHEIMObjectSCRAM"))
    {
      v42 = 1;
      v33 = 1;
      goto LABEL_38;
    }

    v29 = CFDictionaryGetValue(v40, @"kHEIMAttrSCRAMUsername");
    v45[0] = @"kHEIMObjectType";
    v46[0] = v37;
    v45[1] = @"kHEIMAttrSCRAMUsername";
    v46[1] = v29;
    v12 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
    v7 = [(NSDictionary *)v12 mutableCopy];
    v8 = v38;
    v38 = v7;
  }

  if ((byte_100028D18 & 1) == 0)
  {
    goto LABEL_23;
  }

  location = off_100028D20();
  if (location)
  {
    [v38 setObject:location forKeyedSubscript:@"kHEIMAttrAltDSID"];
    v33 = 0;
  }

  else
  {
    oslog = sub_10000E120();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v11 = type;
      sub_100001A10(v25);
      _os_log_error_impl(&_mh_execute_header, log, v11, "the device is multiuser and is missing the altDSID", v25, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v44 = @"CommonErrorCode";
    v43 = kCFBooleanTrue;
    sub_1000055C4(v39, 564486, &v44, &v43, 1);
    v42 = 0;
    v33 = 1;
  }

  objc_storeStrong(&location, 0);
  if (!v33)
  {
LABEL_23:
    if (byte_100028D68)
    {
      valuePtr = off_100028D30(*v41);
      cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (valuePtr)
      {
        [v38 setObject:cf forKeyedSubscript:@"kHEIMAttrUserID"];
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v22 = off_100028D38(*v41);
      v21 = CFNumberCreate(0, kCFNumberIntType, &v22);
      [v38 setObject:v21 forKeyedSubscript:@"kHEIMAttrASID"];
      if (v21)
      {
        CFRelease(v21);
        v21 = 0;
      }
    }

    value = _CFXPCCreateXPCObjectFromCFObject();
    xdict = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(xdict, "command", "removeduplicates");
    xpc_dictionary_set_value(xdict, "query", value);
    theArray = sub_100005A8C(v41, xdict, "query");
    Count = CFArrayGetCount(theArray);
    for (idx = 0; idx < Count; ++idx)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
      sub_100005EA0(ValueAtIndex, v41);
    }

    if (Count > 0)
    {
      byte_100028E04 = 1;
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    v42 = 1;
    v33 = 1;
    objc_storeStrong(&xdict, 0);
    objc_storeStrong(&value, 0);
  }

LABEL_38:
  objc_storeStrong(&v38, 0);
  return v42 & 1;
}

uint64_t sub_10000534C(uint64_t a1, const __CFDictionary *a2)
{
  cf = CFDictionaryGetValue(a2, @"kHEIMAttrBundleIdentifierACL");
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 == CFArrayGetTypeID())
    {
      range_8 = CFArrayGetCount(cf);
      v10.location = 0;
      v10.length = range_8;
      if (!CFArrayContainsValue(cf, v10, *(a1 + 8)))
      {
        MutableCopy = CFArrayCreateMutableCopy(0, 0, cf);
        if (!MutableCopy)
        {
          v9 = 0;
          return v9 & 1;
        }

        CFArrayAppendValue(MutableCopy, *(a1 + 8));
        CFDictionarySetValue(a2, @"kHEIMAttrBundleIdentifierACL", MutableCopy);
        CFRelease(MutableCopy);
      }

      v9 = 1;
      return v9 & 1;
    }
  }

  v9 = 0;
  return v9 & 1;
}

uint64_t sub_1000054D0(uint64_t a1)
{
  v2 = 1;
  if (CFStringCompare(@"com.apple.accountsd", *(a1 + 16), 0))
  {
    v2 = off_100028D28(a1, "com.apple.private.gssapi.allowwildcardacl");
  }

  return v2 & 1;
}

void sub_100005544(uint64_t a1, __CFDictionary *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  value = CFDateCreate(0, Current);
  if (value)
  {
    CFDictionarySetValue(a2, @"kHEIMAttrStoreTime", value);
    CFRelease(value);
  }
}

CFErrorRef sub_1000055C4(CFErrorRef result, CFIndex a2, const void *const *a3, const void *const *a4, CFIndex a5)
{
  v5 = result;
  if (!*result)
  {
    result = CFErrorCreateWithUserInfoKeysAndValues(0, @"com.apple.GSS.credential-store", a2, a3, a4, a5);
    *v5 = result;
  }

  return result;
}

void sub_100005634(uint64_t a1)
{
  if (*(*(a1 + 56) + 48))
  {
    *(*(a1 + 56) + 48) = 0;
    CFDictionaryApplyFunction(qword_100028DE8, sub_100002E68, *(a1 + 56));
  }
}

CFMutableDictionaryRef sub_1000056A8(const __CFDictionary *a1, __CFError *a2)
{
  v12 = a1;
  v11 = a2;
  theDict = 0;
  MutableCopy = 0;
  v10 = a2;
  TypeID = CFStringGetTypeID();
  v7 = sub_10000A548(a1, @"kHEIMObjectType", TypeID, v11);
  if (v7)
  {
    v5 = qword_100028DF0;
    v3 = CFDictionaryGetTypeID();
    theDict = sub_10000A548(v5, v7, v3, v11);
    if (theDict)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v12);
      CFDictionaryApplyFunction(theDict, sub_10000D2C4, &theDict);
      return MutableCopy;
    }

    else
    {
      v15 = @"CommonErrorCode";
      v14 = kCFBooleanTrue;
      sub_1000055C4(v11, 564482, &v15, &v14, 1);
      return 0;
    }
  }

  else
  {
    v17 = @"CommonErrorCode";
    v16 = kCFBooleanTrue;
    sub_1000055C4(v11, 564481, &v17, &v16, 1);
    return 0;
  }
}

uint64_t sub_10000586C(uint64_t result, uint64_t a2)
{
  *result = 3;
  *(result + 1) = 1;
  *(result + 2) = 65;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_1000058AC(void *a1, void *a2, void *a3)
{
  v11 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  cf = 0;
  theArray = sub_100005A8C(v11, location, "query");
  if (theArray && CFArrayGetCount(theArray))
  {
    Count = CFArrayGetCount(theArray);
    for (idx = 0; idx < Count; ++idx)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
      sub_100005EA0(ValueAtIndex, v11);
    }

    byte_100028E04 = 1;
  }

  else
  {
    v13 = @"CommonErrorCode";
    v12 = kCFBooleanTrue;
    sub_1000055C4(&cf, 564483, &v13, &v12, 1);
  }

  if (cf)
  {
    sub_1000041C4(v9, cf);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

uint64_t sub_100005A8C(void *a1, void *a2, const char *a3)
{
  v28 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v26 = a3;
  memset(__b, 0, sizeof(__b));
  __b[0] = v28;
  v24 = 0;
  __b[6] = xpc_dictionary_get_string(location, "command");
  if (__b[6])
  {
    v13 = location;
    v12 = v26;
    TypeID = CFDictionaryGetTypeID();
    __b[2] = sub_10000F630(v13, v12, TypeID);
    if (__b[2])
    {
      __b[3] = CFDictionaryGetCount(__b[2]);
      if (__b[3] == 1 && (v20 = CFDictionaryGetValue(__b[2], @"kHEIMAttrUUID")) != 0 && (v11 = CFGetTypeID(v20), v11 == CFUUIDGetTypeID()))
      {
        if (sub_100004360(v28, v20, 0))
        {
          Value = CFDictionaryGetValue(*(v28[7] + 24), v20);
          if (Value)
          {
            v10 = CFGetTypeID(Value);
            if (v10 != sub_10000FE40())
            {
              heim_abort();
            }

            if (sub_100007BD8(Value[4], __b[6]))
            {
              __b[1] = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
              CFArrayAppendValue(__b[1], Value);
            }
          }
        }
      }

      else
      {
        __b[1] = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        v8 = __b[2];
        v4 = CFStringGetTypeID();
        v18 = sub_10000A548(v8, @"kHEIMObjectType", v4, &v24);
        v9 = __b[2];
        v5 = CFStringGetTypeID();
        cf1 = sub_10000A548(v9, @"kHEIMAttrType", v5, &v24);
        if (v18 && !CFEqual(v18, @"kHEIMObjectAny") && cf1 && CFEqual(cf1, @"kHEIMTypeSchema"))
        {
          CFDictionaryApplyFunction(qword_100028DF0, sub_10000C954, __b);
        }

        else
        {
          CFDictionaryApplyFunction(*(v28[7] + 24), sub_10000CA5C, __b);
        }
      }
    }
  }

  else
  {
    v23 = sub_10000E120();
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      log = v23;
      type = v22;
      sub_100001A10(v21);
      _os_log_error_impl(&_mh_execute_header, log, type, "query is missing command", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
  }

  if (v24)
  {
    CFRelease(v24);
    v24 = 0;
  }

  if (__b[2])
  {
    CFRelease(__b[2]);
    __b[2] = 0;
  }

  v7 = __b[1];
  objc_storeStrong(&location, 0);
  return v7;
}

void sub_100005EA0(uint64_t a1, uint64_t a2)
{
  v2 = CFGetTypeID(a1);
  if (v2 != sub_10000FE40())
  {
    heim_abort();
  }

  if (!CFEqual(*(*(a1 + 32) + 16), @"kHEIMTypeNTLMRelfection"))
  {
    CFDictionaryRemoveValue(*(*(a2 + 56) + 24), *(a1 + 16));
    sub_100008F80(*(a2 + 56), *(a1 + 16));
    if (*(*(a1 + 32) + 40))
    {
      (*(*(a1 + 32) + 40))();
    }

    sub_10000CCE0(a2, a1);
  }
}

void sub_100005F88(void *a1, void *a2, void *a3)
{
  v39 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v37 = 0;
  objc_storeStrong(&v37, a3);
  cf = sub_10000F5B8(location, "uuid");
  MutableCopy = 0;
  v34 = 0;
  v33 = 0;
  if (cf)
  {
    if (sub_100004360(v39, cf, 0))
    {
      Value = CFDictionaryGetValue(*(v39[7] + 24), cf);
      CFRelease(cf);
      cf = 0;
      if (Value)
      {
        v19 = CFGetTypeID(Value);
        if (v19 != sub_10000FE40())
        {
          heim_abort();
        }

        if (*(Value + 3))
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(Value + 3));
          if (!MutableCopy)
          {
            v32 = 1;
            goto LABEL_75;
          }
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v18 = location;
        TypeID = CFDictionaryGetTypeID();
        theDict = sub_10000F630(v18, "attributes", TypeID);
        if (theDict)
        {
          v49[0] = @"kHEIMObjectType";
          v49[1] = @"kHEIMAttrType";
          v49[2] = @"kHEIMAttrAltDSID";
          v49[3] = @"kHEIMAttrUserID";
          v49[4] = @"kHEIMAttrRetainStatus";
          v49[5] = @"kHEIMAttrUUID";
          v4 = [NSArray arrayWithObjects:v49 count:6];
          v5 = v33;
          v33 = v4;

          memset(__b, 0, sizeof(__b));
          v16 = v33;
          v17 = [v16 countByEnumeratingWithState:__b objects:v48 count:16];
          if (v17)
          {
            v13 = *__b[2];
            v14 = 0;
            v15 = v17;
            while (1)
            {
              v12 = v14;
              if (*__b[2] != v13)
              {
                objc_enumerationMutation(v16);
              }

              key = *(__b[1] + 8 * v14);
              if (CFDictionaryContainsKey(theDict, key))
              {
                break;
              }

              ++v14;
              if (v12 + 1 >= v15)
              {
                v14 = 0;
                v15 = [v16 countByEnumeratingWithState:__b objects:v48 count:16];
                if (!v15)
                {
                  goto LABEL_30;
                }
              }
            }

            v47 = @"CommonErrorCode";
            v46 = kCFBooleanTrue;
            sub_1000055C4(&v34, 564487, &v47, &v46, 1);
            sub_1000041C4(v37, v34);
            if (MutableCopy)
            {
              CFRelease(MutableCopy);
              MutableCopy = 0;
            }

            if (theDict)
            {
              CFRelease(theDict);
              theDict = 0;
            }

            v32 = 8;
          }

          else
          {
LABEL_30:
            v32 = 0;
          }

          if (v32)
          {
            if (v32 != 8)
            {
              goto LABEL_75;
            }
          }

          else if (CFEqual(*(*(Value + 4) + 16), @"kHEIMTypeNTLMRelfection"))
          {
            v45 = @"CommonErrorCode";
            v44 = kCFBooleanTrue;
            sub_1000055C4(&v34, 564487, &v45, &v44, 1);
            sub_1000041C4(v37, v34);
            if (MutableCopy)
            {
              CFRelease(MutableCopy);
              MutableCopy = 0;
            }

            if (theDict)
            {
              CFRelease(theDict);
              theDict = 0;
            }
          }

          else
          {
            BOOLean = CFDictionaryGetValue(theDict, @"kHEIMAttrDefaultCredential");
            v11 = 1;
            if (!sub_100002B48(*(Value + 3)))
            {
              v11 = sub_100004294(v39[7], *(Value + 3));
            }

            v26 = v11;
            if (v11 && BOOLean && CFBooleanGetValue(BOOLean))
            {
              v43 = @"CommonErrorCode";
              v42 = kCFBooleanTrue;
              sub_1000055C4(&v34, 564487, &v43, &v42, 1);
              sub_1000041C4(v37, v34);
              if (MutableCopy)
              {
                CFRelease(MutableCopy);
                MutableCopy = 0;
              }

              if (theDict)
              {
                CFRelease(theDict);
                theDict = 0;
              }
            }

            else
            {
              v25 = 0;
              v24 = CFDictionaryGetValue(theDict, @"kHEIMAttrBundleIdentifierACL");
              v25 = v24 && (v10 = CFGetTypeID(v24), v10 == CFArrayGetTypeID());
              if (!v25 || (sub_1000054D0(v39) & 1) != 0 || CFArrayGetCount(v24) == 1 && (cf1 = v39[1], ValueAtIndex = CFArrayGetValueAtIndex(v24, 0), CFEqual(cf1, ValueAtIndex)))
              {
                CFDictionaryApplyFunction(theDict, sub_10000695C, MutableCopy);
                if (theDict)
                {
                  CFRelease(theDict);
                  theDict = 0;
                }

                if (sub_100003F94(MutableCopy, &v34))
                {
                  sub_100002BC0(v39[7], Value, MutableCopy);
                  sub_10000534C(v39, MutableCopy);
                  if (*(Value + 3))
                  {
                    CFRelease(*(Value + 3));
                    *(Value + 3) = 0;
                  }

                  *(Value + 3) = MutableCopy;
                  byte_100028E04 = 1;
                  sub_10000699C(Value);
                }

                else
                {
                  sub_1000041C4(v37, v34);
                }
              }

              else
              {
                oslog = sub_10000E120();
                type = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
                {
                  log = oslog;
                  v8 = type;
                  sub_100001A10(v21);
                  _os_log_error_impl(&_mh_execute_header, log, v8, "peer sent more then one bundle id and is not allowed if the acl does not match the app bundle id.", v21, 2u);
                }

                objc_storeStrong(&oslog, 0);
                v41 = @"CommonErrorCode";
                v40 = kCFBooleanTrue;
                sub_1000055C4(&v34, 564487, &v41, &v40, 1);
                sub_1000041C4(v37, v34);
                if (MutableCopy)
                {
                  CFRelease(MutableCopy);
                  MutableCopy = 0;
                }

                if (theDict)
                {
                  CFRelease(theDict);
                  theDict = 0;
                }
              }
            }
          }
        }

        else if (MutableCopy)
        {
          CFRelease(MutableCopy);
          MutableCopy = 0;
        }

        if (v34)
        {
          CFRelease(v34);
          v34 = 0;
        }

        v32 = 0;
      }

      else
      {
        v32 = 1;
      }
    }

    else
    {
      CFRelease(cf);
      cf = 0;
      v32 = 1;
    }
  }

  else
  {
    v32 = 1;
  }

LABEL_75:
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&location, 0);
}

void sub_10000699C(uint64_t a1)
{
  v4 = a1;
  v3 = 0;
  location = CFDictionaryGetValue(*(a1 + 24), @"kHEIMAttrExpire");
  [location timeIntervalSince1970];
  v3 = v1;
  pthread_mutex_lock((v4 + 40));
  *(v4 + 128) = v3;
  if (location && sub_10000CD80(v4))
  {
    sub_100014F40(v4, *(v4 + 128));
  }

  pthread_mutex_unlock((v4 + 40));
  objc_storeStrong(&location, 0);
}

void sub_100006A58(void *a1, void *a2, void *a3)
{
  v18 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15 = 0;
  v14 = sub_10000F5B8(location, "uuid");
  if (v14)
  {
    if (sub_100004360(v18, v14, 0))
    {
      Value = CFDictionaryGetValue(*(v18[7] + 24), v14);
      CFRelease(v14);
      v14 = 0;
      if (Value)
      {
        v6 = location;
        TypeID = CFDictionaryGetTypeID();
        cf = sub_10000F630(v6, "attributes", TypeID);
        if (cf)
        {
          if (*(Value[4] + 32))
          {
            v15 = (*(Value[4] + 32))(v18, Value, cf);
            if (v15)
            {
              sub_10000F6E8(v16, "attributes");
            }
          }

          else
          {
            oslog = sub_10000E120();
            type = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              log = oslog;
              v5 = type;
              sub_100001A10(v8);
              _os_log_error_impl(&_mh_execute_header, log, v5, "no HeimCredAuthCallback defined for mech", v8, 2u);
            }

            objc_storeStrong(&oslog, 0);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v13 = 0;
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      CFRelease(v14);
      v14 = 0;
      v13 = 1;
    }
  }

  else
  {
    v13 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
}

void sub_100006CE0(void *a1, void *a2, void *a3)
{
  v18 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15 = 0;
  v14 = sub_10000F5B8(location, "uuid");
  if (v14)
  {
    if (sub_100004360(v18, v14, 0))
    {
      Value = CFDictionaryGetValue(*(v18[7] + 24), v14);
      CFRelease(v14);
      v14 = 0;
      if (Value)
      {
        v6 = location;
        TypeID = CFDictionaryGetTypeID();
        cf = sub_10000F630(v6, "attributes", TypeID);
        if (cf)
        {
          if (*(Value[4] + 32))
          {
            v15 = (*(Value[4] + 32))(v18, Value, cf);
            if (v15)
            {
              sub_10000F6E8(v16, "attributes");
            }
          }

          else
          {
            oslog = sub_10000E120();
            type = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              log = oslog;
              v5 = type;
              sub_100001A10(v8);
              _os_log_error_impl(&_mh_execute_header, log, v5, "no HeimCredAuthCallback defined for mech", v8, 2u);
            }

            objc_storeStrong(&oslog, 0);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v13 = 0;
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      CFRelease(v14);
      v14 = 0;
      v13 = 1;
    }
  }

  else
  {
    v13 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
}

void sub_100006F58(uint64_t a1, void *a2, void *a3)
{
  v19 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16 = 0;
  v15 = 0;
  value = 0;
  cf = 0;
  v10 = location;
  TypeID = CFDataGetTypeID();
  v21 = sub_10000F630(v10, "challenge", TypeID);
  v11 = v21;
  v4 = v21;
  v12 = v11;
  if (v12)
  {
    if ([v12 length] <= 8)
    {
      cf = CFUUIDCreate(0);
      if (cf)
      {
        value = sub_10000FE64(cf);
        if (value)
        {
          v22[0] = @"kHEIMObjectType";
          v23[0] = @"kHEIMObjectNTLMReflection";
          v22[1] = @"kHEIMAttrType";
          v23[1] = @"kHEIMTypeNTLMRelfection";
          v22[2] = @"kHEIMAttrData";
          v23[2] = v12;
          v8 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
          v5 = [(NSDictionary *)v8 mutableCopy];
          v6 = v15;
          v15 = v5;

          if (sub_100003F94(v15, &v16))
          {
            if (sub_1000024C4(value, v15))
            {
              if (!*(value + 4))
              {
                heim_abort();
              }

              sub_100005544(value, v15);
              v20 = 0;
              objc_storeStrong(&v20, v15);
              v7 = v20;
              objc_storeStrong(&v20, 0);
              *(value + 3) = v7;
              CFDictionarySetValue(*(*(v19 + 56) + 32), *(value + 2), value);
              byte_100028E04 = 1;
            }
          }

          else
          {
            sub_1000041C4(v17, v16);
            if (v16)
            {
              CFRelease(v16);
              v16 = 0;
            }
          }
        }
      }

      if (v16)
      {
        CFRelease(v16);
        v16 = 0;
      }

      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    else
    {
      sub_1000055C4(&v16, 564488, 0, 0, 0);
      sub_1000041C4(v17, v16);
      if (v16)
      {
        CFRelease(v16);
        v16 = 0;
      }
    }
  }

  else
  {
    sub_1000055C4(&v16, 564486, 0, 0, 0);
    sub_1000041C4(v17, v16);
    if (v16)
    {
      CFRelease(v16);
      v16 = 0;
    }
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&location, 0);
}

uint64_t sub_1000073A4(void *a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  if (byte_100028D69)
  {
    v20 = 0;
    v12 = 1;
  }

  else
  {
    v11 = [NSData dataWithBytes:v18 length:8];
    if (v11)
    {
      if (*(v19[7] + 32))
      {
        v10 = *(v19[7] + 32);
        v3 = v10;
        v4 = _NSConcreteStackBlock;
        v5 = -1073741824;
        v6 = 0;
        v7 = sub_1000075E0;
        v8 = &unk_100024AE8;
        v9[2] = v19;
        v9[0] = v11;
        v9[1] = &v13;
        [v3 enumerateKeysAndObjectsUsingBlock:&v4];
        v20 = v14[3] & 1;
        v12 = 1;
        objc_storeStrong(v9, 0);
        objc_storeStrong(&v10, 0);
      }

      else
      {
        v20 = 0;
        v12 = 1;
      }
    }

    else
    {
      v20 = 0;
      v12 = 1;
    }

    objc_storeStrong(&v11, 0);
  }

  _Block_object_dispose(&v13, 8);
  return v20 & 1;
}

void sub_1000075E0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10 = a4;
  v9 = a1;
  v8 = v11;
  if (sub_1000025E4(v11))
  {
    CFDictionaryRemoveValue(*(*(*(a1 + 48) + 56) + 32), *(v8 + 2));
    byte_100028E04 = 1;
  }

  v7 = CFDictionaryGetValue(*(v8 + 3), @"kHEIMAttrData");
  if ([*(a1 + 32) isEqualToData:v7])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *v10 = 1;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void sub_100007708(void *a1, void *a2, void *a3)
{
  v14 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11 = 0;
  v8 = location;
  TypeID = CFDataGetTypeID();
  v15 = sub_10000F630(v8, "challenge", TypeID);
  v9 = v15;
  v4 = v15;
  v10 = v9;
  if (v10)
  {
    if ([v10 length] <= 8)
    {
      v6 = v14;
      v5 = v10;
      if (sub_1000073A4(v6, [v10 bytes]))
      {
        sub_1000055C4(&v11, 564489, 0, 0, 0);
        sub_1000041C4(v12, v11);
        if (v11)
        {
          CFRelease(v11);
          v11 = 0;
        }
      }

      else
      {
        sub_10000F6E8(v12, "challenge-result");
      }
    }

    else
    {
      sub_1000055C4(&v11, 564488, 0, 0, 0);
      sub_1000041C4(v12, v11);
      if (v11)
      {
        CFRelease(v11);
        v11 = 0;
      }
    }
  }

  else
  {
    sub_1000055C4(&v11, 564486, 0, 0, 0);
    sub_1000041C4(v12, v11);
    if (v11)
    {
      CFRelease(v11);
      v11 = 0;
    }
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

void sub_100007940(void *a1, void *a2, void *a3)
{
  v12 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9 = sub_10000F5B8(location, "uuid");
  if (v9)
  {
    if (sub_100004360(v12, v9, 0))
    {
      Value = CFDictionaryGetValue(*(v12[7] + 24), v9);
      CFRelease(v9);
      v9 = 0;
      if (Value)
      {
        if (sub_100007BD8(*(Value + 4), "fetch"))
        {
          cf = 0;
          v5 = sub_1000056A8(*(Value + 3), &cf);
          if (cf)
          {
            oslog = sub_10000E120();
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              sub_100003F54(v13, cf);
              _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "error filtering attributes: %@", v13, 0xCu);
            }

            objc_storeStrong(&oslog, 0);
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }
          }

          sub_10000F6E8(v10, "attributes");
          if (v5)
          {
            CFRelease(v5);
            v5 = 0;
          }

          v8 = 0;
        }

        else
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      CFRelease(v9);
      v9 = 0;
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

BOOL sub_100007BD8(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  if (!a1)
  {
    heim_abort();
  }

  if (!v4)
  {
    heim_abort();
  }

  location = [NSString stringWithCString:v4 encoding:4];
  v6 = (*(v5 + 56) & 1) == 0 || !*(v5 + 64) || ([*(v5 + 64) containsObject:location] & 1) == 0;
  objc_storeStrong(&location, 0);
  return v6;
}

void sub_100007CEC(void *a1, void *a2, void *a3)
{
  v12 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  Mutable = 0;
  cf = 0;
  sub_100005634(v12);
  theArray = sub_100005A8C(v12, location, "query");
  if (theArray)
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      Count = CFArrayGetCount(theArray);
      if (Count > 1)
      {
        v14 = 0;
        v13 = Count;
        v15 = 0;
        v16 = Count;
        v19.location = 0;
        v19.length = Count;
        CFArraySortValues(theArray, v19, sub_100007FB8, 0);
      }

      for (idx = 0; idx < Count; ++idx)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
        CFArrayAppendValue(Mutable, ValueAtIndex[2]);
      }

      CFRelease(theArray);
      theArray = 0;
      sub_10000F6E8(v10, "items");
    }
  }

  else
  {
    v18 = @"CommonErrorCode";
    v17 = kCFBooleanTrue;
    sub_1000055C4(&cf, 564483, &v18, &v17, 1);
  }

  if (cf)
  {
    sub_1000041C4(v10, cf);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

CFComparisonResult sub_100007FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a1;
  v16 = a2;
  Value = CFDictionaryGetValue(*(a1 + 24), @"kHEIMAttrParentCredential");
  v14 = CFDictionaryGetValue(*(v16 + 24), @"kHEIMAttrParentCredential");
  if (Value && v14 && CFEqual(Value, v14))
  {
    v13 = CFDictionaryGetValue(*(v17 + 24), @"kHEIMAttrLeadCredential");
    v12 = CFDictionaryGetValue(*(v16 + 24), @"kHEIMAttrLeadCredential");
    if (v13 && CFBooleanGetValue(v13))
    {
      return -1;
    }

    if (v12 && CFBooleanGetValue(v12))
    {
      return 1;
    }
  }

  cf = 0;
  v7 = *(v17 + 24);
  TypeID = CFDateGetTypeID();
  theDate = sub_10000A548(v7, @"kHEIMAttrStoreTime", TypeID, &cf);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v6 = *(v16 + 24);
  v4 = CFDateGetTypeID();
  otherDate = sub_10000A548(v6, @"kHEIMAttrStoreTime", v4, &cf);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (theDate && otherDate)
  {
    return CFDateCompare(theDate, otherDate, 0);
  }

  v8 = CFHash(*(v17 + 16));
  if (v8 >= CFHash(*(v16 + 16)))
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_100008224(uint64_t a1, void *a2, void *a3)
{
  v10 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  sub_100005634(v10);
  v5 = location;
  TypeID = CFStringGetTypeID();
  key = sub_10000F630(v5, "mech", TypeID);
  if (key && (CFDictionaryGetValue(*(*(v10 + 56) + 40), key) || (*(*(v10 + 56) + 48) = 1, sub_100005634(v10), CFDictionaryGetValue(*(*(v10 + 56) + 40), key))))
  {
    sub_10000F6E8(v8, "default");
  }

  else
  {
    sub_1000055C4(&v7, 564483, 0, 0, 0);
  }

  if (v7)
  {
    sub_1000041C4(v8, v7);
    if (v7)
    {
      CFRelease(v7);
      v7 = 0;
    }
  }

  if (key)
  {
    CFRelease(key);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
}

void sub_1000083F4(void *a1, void *a2, void *a3)
{
  v48 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v46 = 0;
  objc_storeStrong(&v46, a3);
  v45 = 0;
  v16 = location;
  v3 = CFUUIDGetTypeID();
  v44 = sub_10000F630(v16, "from", v3);
  v17 = location;
  v4 = CFUUIDGetTypeID();
  v43 = sub_10000F630(v17, "to", v4);
  if (v44 && v43 && !CFEqual(v44, v43))
  {
    if (sub_100004360(v48, v44, 0) & 1) != 0 && (sub_100004360(v48, v43, 0))
    {
      v35 = CFDictionaryGetValue(*(v48[7] + 24), v44);
      v34 = CFDictionaryGetValue(*(v48[7] + 24), v43);
      v33 = 0;
      if (v35)
      {
        if (v35 == v34)
        {
          heim_abort();
        }

        if (!v34 || CFEqual(*(*(v35 + 4) + 16), *(*(v34 + 4) + 16)))
        {
          if (CFEqual(*(*(v35 + 4) + 16), @"kHEIMTypeNTLMRelfection"))
          {
            v26 = sub_10000E120();
            v25 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v5 = v26;
              v6 = v25;
              sub_100001A10(v24);
              _os_log_error_impl(&_mh_execute_header, v5, v6, "moving NTLM Reflection objects is not allowed", v24, 2u);
            }

            objc_storeStrong(&v26, 0);
            v50 = @"CommonErrorCode";
            v49 = kCFBooleanTrue;
            sub_1000055C4(&v45, 564487, &v50, &v49, 1);
            sub_1000041C4(v46, v45);
            if (v45)
            {
              CFRelease(v45);
              v45 = 0;
            }

            if (v44)
            {
              CFRelease(v44);
              v44 = 0;
            }

            if (v43)
            {
              CFRelease(v43);
              v43 = 0;
            }
          }

          theDict = CFDictionaryCreateMutableCopy(0, 0, *(v35 + 3));
          CFDictionaryRemoveValue(*(v48[7] + 24), v44);
          v35 = 0;
          if (sub_100002B48(theDict) && (!v34 || !sub_100002B48(*(v34 + 3))))
          {
            CFDictionaryRemoveValue(theDict, @"kHEIMAttrTemporaryCache");
          }

          CFDictionarySetValue(theDict, @"kHEIMAttrUUID", v43);
          if (v34)
          {
            value = CFDictionaryGetValue(*(v34 + 3), @"kHEIMAttrParentCredential");
            if (value)
            {
              CFDictionarySetValue(theDict, @"kHEIMAttrParentCredential", value);
            }

            BOOLean = CFDictionaryGetValue(*(v34 + 3), @"kHEIMAttrDefaultCredential");
            if (BOOLean && CFBooleanGetValue(BOOLean))
            {
              CFDictionarySetValue(theDict, @"kHEIMAttrDefaultCredential", kCFBooleanTrue);
            }

            v20 = CFDictionaryGetValue(theDict, @"kHEIMAttrDefaultCredential");
            if (v20 && CFBooleanGetValue(v20))
            {
              CFDictionarySetValue(*(v48[7] + 40), *(*(v34 + 4) + 16), *(v34 + 2));
            }

            if (*(v34 + 3))
            {
              CFRelease(*(v34 + 3));
              *(v34 + 3) = 0;
            }

            *(v34 + 3) = theDict;
            v33 = *(v34 + 4);
          }

          else
          {
            v34 = sub_10000FE64(v43);
            if (!v34)
            {
              heim_abort();
            }

            sub_1000024C4(v34, theDict);
            *(v34 + 3) = theDict;
            CFDictionarySetValue(*(v48[7] + 24), *(v34 + 2), v34);
            v33 = *(v34 + 4);
            if (v34)
            {
              CFRelease(v34);
              v34 = 0;
            }
          }

          sub_100008F80(v48[7], v43);
          context[0] = v44;
          context[1] = v43;
          CFDictionaryApplyFunction(*(v48[7] + 24), sub_10000909C, context);
          if (v33 && *(v33 + 40))
          {
            (*(v33 + 40))();
          }

          byte_100028E04 = 1;
          if (v33)
          {
            key = CFDictionaryGetValue(*(v48[7] + 40), *(v33 + 16));
            if (!key || !CFDictionaryGetValue(*(v48[7] + 24), key))
            {
              *(v48[7] + 48) = 1;
              sub_100005634(v48);
            }
          }

          v33 = 0;
          v39 = 0;
        }

        else
        {
          oslog = sub_10000E120();
          v28 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v7 = oslog;
            v8 = v28;
            sub_100001A10(v27);
            _os_log_error_impl(&_mh_execute_header, v7, v8, "moving between mechs is not supported", v27, 2u);
          }

          objc_storeStrong(&oslog, 0);
          v52 = @"CommonErrorCode";
          v51 = kCFBooleanTrue;
          sub_1000055C4(&v45, 564487, &v52, &v51, 1);
          sub_1000041C4(v46, v45);
          if (v45)
          {
            CFRelease(v45);
            v45 = 0;
          }

          if (v44)
          {
            CFRelease(v44);
            v44 = 0;
          }

          if (v43)
          {
            CFRelease(v43);
            v43 = 0;
          }

          v39 = 1;
        }
      }

      else
      {
        v32 = sub_10000E120();
        v31 = 16;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v9 = v32;
          v10 = v31;
          sub_100001A10(v30);
          _os_log_error_impl(&_mh_execute_header, v9, v10, "from is empty", v30, 2u);
        }

        objc_storeStrong(&v32, 0);
        if (v44)
        {
          CFRelease(v44);
          v44 = 0;
        }

        if (v43)
        {
          CFRelease(v43);
          v43 = 0;
        }

        v39 = 1;
      }
    }

    else
    {
      v38 = sub_10000E120();
      v37 = 16;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v11 = v38;
        v12 = v37;
        sub_100001A10(v36);
        _os_log_error_impl(&_mh_execute_header, v11, v12, "no access to caches", v36, 2u);
      }

      objc_storeStrong(&v38, 0);
      v54 = @"CommonErrorCode";
      v53 = kCFBooleanTrue;
      sub_1000055C4(&v45, 564480, &v54, &v53, 1);
      sub_1000041C4(v46, v45);
      if (v45)
      {
        CFRelease(v45);
        v45 = 0;
      }

      if (v44)
      {
        CFRelease(v44);
        v44 = 0;
      }

      if (v43)
      {
        CFRelease(v43);
        v43 = 0;
      }

      v39 = 1;
    }
  }

  else
  {
    if (v44)
    {
      CFRelease(v44);
      v44 = 0;
    }

    if (v43)
    {
      CFRelease(v43);
      v43 = 0;
    }

    v42 = sub_10000E120();
    v41 = 16;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      log = v42;
      type = v41;
      sub_100001A10(v40);
      _os_log_error_impl(&_mh_execute_header, log, type, "move missing required values", v40, 2u);
    }

    objc_storeStrong(&v42, 0);
    v56 = @"CommonErrorCode";
    v55 = kCFBooleanTrue;
    sub_1000055C4(&v45, 564486, &v56, &v55, 1);
    sub_1000041C4(v46, v45);
    if (v45)
    {
      CFRelease(v45);
      v45 = 0;
    }

    v39 = 1;
  }

  objc_storeStrong(&v46, 0);
  objc_storeStrong(&location, 0);
}

void sub_100008F80(CFDictionaryRef *a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v4 = a2;
  theArray = 0;
  v6 = a1;
  theArray = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  CFDictionaryApplyFunction(v8[3], sub_10000CE08, &v4);
  v3 = theArray;
  Count = CFArrayGetCount(theArray);
  v10 = 0;
  v9 = Count;
  v11 = 0;
  v12 = Count;
  v13.location = 0;
  v13.length = Count;
  CFArrayApplyFunction(v3, v13, sub_10000CF40, v8);
  if (theArray)
  {
    CFRelease(theArray);
  }
}

void sub_10000909C(uint64_t a1, CFDictionaryRef *a2, CFTypeRef *a3)
{
  v3 = CFGetTypeID(a2);
  if (v3 != sub_10000FE40())
  {
    heim_abort();
  }

  cf1 = CFDictionaryGetValue(a2[3], @"kHEIMAttrParentCredential");
  if (cf1 && CFEqual(cf1, *a3))
  {
    theDict = CFDictionaryCreateMutableCopy(0, 0, a2[3]);
    if (a2[3])
    {
      CFRelease(a2[3]);
      a2[3] = 0;
    }

    CFDictionarySetValue(theDict, @"kHEIMAttrParentCredential", a3[1]);
    a2[3] = theDict;
  }
}

void sub_1000091C0(void *a1, void *a2, void *a3)
{
  v9 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6 = off_100028D30(*v9);
  memset(&__b, 0, sizeof(__b));
  if (!v6 || (off_100028D28(v9, "com.apple.private.gssapi.credential-introspection") & 1) != 0)
  {
    context = xpc_dictionary_create(0, 0, 0);
    CFDictionaryApplyFunction(qword_100028DD8, sub_100009344, context);
    xpc_dictionary_set_value(v7, "items", context);
    objc_storeStrong(&context, 0);
  }

  if (stat([qword_100028D10 UTF8String], &__b))
  {
    xpc_dictionary_set_int64(v7, "cache-size", 0);
  }

  else
  {
    xpc_dictionary_set_int64(v7, "cache-size", __b.st_size);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
}

void sub_100009344(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a2;
  location = a3;
  context = xpc_dictionary_create(0, 0, 0);
  CFDictionaryApplyFunction(*(v7 + 24), sub_10000CFB4, context);
  cf = CFStringCreateWithFormat(0, 0, @"%@", v10);
  key = rk_cfstring2cstring(cf);
  xpc_dictionary_set_value(location, key, context);
  free(key);
  if (cf)
  {
    CFRelease(cf);
  }

  objc_storeStrong(&context, 0);
  objc_storeStrong(&location, 0);
}

void sub_100009454(void *a1, void *a2, void *a3)
{
  v18 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15 = 0;
  v14 = 0;
  v13 = off_100028D30(*v18);
  if (v13 || (off_100028D28(v18, "com.apple.private.gssapi.deleteall") & 1) == 0)
  {
    v21 = @"CommonErrorCode";
    v20 = kCFBooleanTrue;
    sub_1000055C4(&v15, 564484, &v21, &v20, 1);
    v6 = sub_10000E120();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100003F54(v19, v15);
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error in DeleteAll: %@", v19, 0xCu);
    }

    objc_storeStrong(&v6, 0);
  }

  else
  {
    oslog = sub_10000E120();
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      log = oslog;
      v4 = type;
      sub_100001A10(v10);
      _os_log_impl(&_mh_execute_header, log, v4, "Start of delete all", v10, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v14 = sub_100005A8C(v18, location, "query");
    if (v14)
    {
      Count = CFArrayGetCount(v14);
      for (idx = 0; idx < Count; ++idx)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, idx);
        sub_100005EA0(ValueAtIndex, v18);
      }

      byte_100028E04 = 1;
    }

    else
    {
      v23 = @"CommonErrorCode";
      v22 = kCFBooleanTrue;
      sub_1000055C4(&v15, 564483, &v23, &v22, 1);
    }
  }

  if (v15)
  {
    sub_1000041C4(v16, v15);
    if (v15)
    {
      CFRelease(v15);
      v15 = 0;
    }
  }

  if (v14)
  {
    CFRelease(v14);
    v14 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
}

void sub_1000097D4(void *a1, void *a2, void *a3)
{
  v26 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  v8 = location;
  v3 = CFUUIDGetTypeID();
  v23 = sub_10000F630(v8, "uuid", v3);
  MutableCopy = 0;
  v21 = 0;
  if (v23)
  {
    v19 = sub_10000E120();
    v18 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100003F54(v29, v23);
      _os_log_debug_impl(&_mh_execute_header, v19, v18, "do_RetainCache: %@", v29, 0xCu);
    }

    objc_storeStrong(&v19, 0);
    if (sub_100004360(v26, v23, 0))
    {
      Value = CFDictionaryGetValue(*(v26[7] + 24), v23);
      if (v23)
      {
        CFRelease(v23);
        v23 = 0;
      }

      if (Value)
      {
        v6 = CFGetTypeID(Value);
        if (v6 != sub_10000FE40())
        {
          heim_abort();
        }

        if (CFEqual(*(*(Value + 4) + 16), @"kHEIMTypeNTLMRelfection"))
        {
          v16 = sub_10000E120();
          v15 = 16;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v4 = v16;
            v5 = v15;
            sub_100001A10(v14);
            _os_log_error_impl(&_mh_execute_header, v4, v5, "NTLM Reflection objects can't be retained", v14, 2u);
          }

          objc_storeStrong(&v16, 0);
          v20 = 1;
        }

        else
        {
          if (*(Value + 3))
          {
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(Value + 3));
            if (!MutableCopy)
            {
              v20 = 1;
              goto LABEL_39;
            }
          }

          else
          {
            MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          }

          v12 = -1;
          v13 = CFDictionaryGetValue(MutableCopy, @"kHEIMAttrRetainStatus");

          if (v13)
          {
            v12 = [v13 intValue] + 1;
            oslog = sub_10000E120();
            v10 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              sub_100009DA0(v28, v12, *(Value + 2));
              _os_log_debug_impl(&_mh_execute_header, oslog, v10, "the new count is %d for %@", v28, 0x12u);
            }

            objc_storeStrong(&oslog, 0);
            CFDictionarySetValue(MutableCopy, @"kHEIMAttrRetainStatus", [NSNumber numberWithInt:v12]);
            if (*(Value + 3))
            {
              CFRelease(*(Value + 3));
              *(Value + 3) = 0;
            }

            *(Value + 3) = MutableCopy;
            byte_100028E04 = 1;
          }

          else
          {
            v9 = sub_10000E120();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              sub_100003F54(v27, *(Value + 2));
              _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "the retain count is missing: %@", v27, 0xCu);
            }

            objc_storeStrong(&v9, 0);
            if (MutableCopy)
            {
              CFRelease(MutableCopy);
              MutableCopy = 0;
            }
          }

          if (v21)
          {
            CFRelease(v21);
            v21 = 0;
          }

          objc_storeStrong(&v13, 0);
          v20 = 0;
        }
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      if (v23)
      {
        CFRelease(v23);
        v23 = 0;
      }

      v20 = 1;
    }
  }

  else
  {
    v20 = 1;
  }

LABEL_39:
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);
}

uint64_t sub_100009DA0(uint64_t result, int a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 64;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

void sub_100009DF4(void *a1, void *a2, void *a3)
{
  v28 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v8 = location;
  v3 = CFUUIDGetTypeID();
  v25 = sub_10000F630(v8, "uuid", v3);
  MutableCopy = 0;
  v23 = 0;
  if (v25)
  {
    v21 = sub_10000E120();
    v20 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_100003F54(v32, v25);
      _os_log_debug_impl(&_mh_execute_header, v21, v20, "do_ReleaseCache: %@", v32, 0xCu);
    }

    objc_storeStrong(&v21, 0);
    if (sub_100004360(v28, v25, 0))
    {
      Value = CFDictionaryGetValue(*(v28[7] + 24), v25);
      if (v25)
      {
        CFRelease(v25);
        v25 = 0;
      }

      if (Value)
      {
        CFRetain(Value);
        v6 = CFGetTypeID(Value);
        if (v6 != sub_10000FE40())
        {
          heim_abort();
        }

        if (CFEqual(*(*(Value + 4) + 16), @"kHEIMTypeNTLMRelfection"))
        {
          v18 = sub_10000E120();
          v17 = 16;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v4 = v18;
            v5 = v17;
            sub_100001A10(v16);
            _os_log_error_impl(&_mh_execute_header, v4, v5, "NTLM Reflection objects can't be released", v16, 2u);
          }

          objc_storeStrong(&v18, 0);
          if (Value)
          {
            CFRelease(Value);
            Value = 0;
          }

          v22 = 1;
        }

        else
        {
          if (*(Value + 3))
          {
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(Value + 3));
            if (!MutableCopy)
            {
              CFRelease(Value);
              v22 = 1;
              goto LABEL_46;
            }
          }

          else
          {
            MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          }

          v14 = -1;
          v15 = CFDictionaryGetValue(MutableCopy, @"kHEIMAttrRetainStatus");

          if (v15)
          {
            v14 = [v15 intValue] - 1;
            oslog = sub_10000E120();
            v12 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              sub_100009DA0(v31, v14, *(Value + 2));
              _os_log_debug_impl(&_mh_execute_header, oslog, v12, "the new count is %d for %@", v31, 0x12u);
            }

            objc_storeStrong(&oslog, 0);
            CFDictionarySetValue(MutableCopy, @"kHEIMAttrRetainStatus", [NSNumber numberWithInt:v14]);
            if (*(Value + 3))
            {
              CFRelease(*(Value + 3));
              *(Value + 3) = 0;
            }

            *(Value + 3) = MutableCopy;
            byte_100028E04 = 1;
            if (v14 < 1)
            {
              v9 = sub_10000E120();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
              {
                sub_100003F54(v29, *(Value + 2));
                _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "the new count is deleting cache for %@", v29, 0xCu);
              }

              objc_storeStrong(&v9, 0);
              sub_100005EA0(Value, v28);
            }
          }

          else
          {
            v11 = sub_10000E120();
            v10 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              sub_100003F54(v30, *(Value + 2));
              _os_log_error_impl(&_mh_execute_header, v11, v10, "the retain count is missing: %@", v30, 0xCu);
            }

            objc_storeStrong(&v11, 0);
            if (MutableCopy)
            {
              CFRelease(MutableCopy);
              MutableCopy = 0;
            }
          }

          if (v23)
          {
            CFRelease(v23);
            v23 = 0;
          }

          if (Value)
          {
            CFRelease(Value);
            Value = 0;
          }

          objc_storeStrong(&v15, 0);
          v22 = 0;
        }
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
      if (v25)
      {
        CFRelease(v25);
        v25 = 0;
      }

      v22 = 1;
    }
  }

  else
  {
    v22 = 1;
  }

LABEL_46:
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&location, 0);
}

uint64_t sub_10000A4D0()
{
  predicate = &unk_100028E28;
  block = 0;
  objc_storeStrong(&block, &stru_100024B68);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  return qword_100028E20;
}

CFTypeRef sub_10000A548(const __CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    heim_abort();
  }

  cf = CFDictionaryGetValue(a1, a2);
  if (!cf)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == a3)
  {
    return cf;
  }

  return 0;
}

void sub_10000A5EC(const void *a1, const __CFSet *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if (CFDictionaryGetValue(qword_100028DE8, a1))
  {
    heim_abort();
  }

  if (!sub_10000A788())
  {
    heim_abort();
  }

  value = _CFRuntimeCreateInstance();
  if (!value)
  {
    heim_abort();
  }

  value[2] = CFRetain(a1);
  value[3] = a3;
  value[4] = a4;
  value[5] = a5;
  value[6] = a6;
  *(value + 56) = a7 & 1;
  value[8] = a8;
  CFDictionarySetValue(qword_100028DE8, a1, value);
  if (value)
  {
    CFRelease(value);
  }

  CFSetApplyFunction(a2, sub_10000A800, 0);
}

uint64_t sub_10000A788()
{
  predicate = &unk_100028E38;
  block = 0;
  objc_storeStrong(&block, &stru_100024C60);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  return qword_100028E30;
}

void sub_10000A800(const __CFDictionary *a1)
{
  key = CFDictionaryGetValue(a1, @"kHEIMObjectType");
  if (!key)
  {
    heim_abort();
  }

  if (CFDictionaryGetValue(qword_100028DF0, key))
  {
    heim_abort();
  }

  CFDictionaryApplyFunction(a1, sub_10000DCDC, 0);
  CFDictionarySetValue(qword_100028DF0, key, a1);
}

__CFDictionary *sub_10000A8E0(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, @"kHEIMAttrType", @"kHEIMTypeSchema");
  CFDictionarySetValue(Mutable, @"kHEIMObjectType", a1);
  CFDictionarySetValue(Mutable, @"kHEIMAttrType", @"Rs");
  CFDictionarySetValue(Mutable, @"kHEIMAttrClientName", @"s");
  CFDictionarySetValue(Mutable, @"kHEIMAttrServerName", @"s");
  CFDictionarySetValue(Mutable, @"kHEIMAttrUUID", @"Gu");
  CFDictionarySetValue(Mutable, @"kHEIMAttrDisplayName", @"s");
  CFDictionarySetValue(Mutable, @"kHEIMAttrCredential", @"b");
  CFDictionarySetValue(Mutable, @"kHEIMAttrLeadCredential", @"b");
  CFDictionarySetValue(Mutable, @"kHEIMAttrParentCredential", @"u");
  CFDictionarySetValue(Mutable, @"kHEIMAttrBundleIdentifierACL", @"as");
  CFDictionarySetValue(Mutable, @"kHEIMAttrDefaultCredential", @"b");
  CFDictionarySetValue(Mutable, @"kHEIMAttrAuthTime", @"t");
  CFDictionarySetValue(Mutable, @"kHEIMAttrStoreTime", @"Gt");
  CFDictionarySetValue(Mutable, @"kHEIMAttrData", @"d");
  CFDictionarySetValue(Mutable, @"kHEIMAttrRetainStatus", @"n");
  CFDictionarySetValue(Mutable, @"kHEIMAttrAltDSID", @"s");
  CFDictionarySetValue(Mutable, @"kHEIMAttrUserID", @"n");
  CFDictionarySetValue(Mutable, @"kHEIMAttrASID", @"n");
  CFDictionarySetValue(Mutable, @"kHEIMAttrTemporaryCache", @"b");
  return Mutable;
}

void sub_10000AB40()
{
  Mutable = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  value = sub_10000A8E0(@"kHEIMObjectGeneric");
  CFSetAddValue(Mutable, value);
  if (value)
  {
    CFRelease(value);
  }

  sub_10000A5EC(@"kHEIMTypeGeneric", Mutable, sub_10000AC34, 0, 0, sub_10000B1A8, 0, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

id sub_10000AC34(uint64_t a1)
{
  v19 = a1;
  v18 = *(a1 + 24);
  v17 = [&__NSDictionary0__struct mutableCopy];
  v16 = [v18 objectForKeyedSubscript:@"kHEIMAttrParentCredential"];

  if (v16)
  {
    v8 = [v18 objectForKeyedSubscript:@"kHEIMAttrClientName"];
    [v17 setObject:? forKeyedSubscript:?];

    v9 = [v18 objectForKeyedSubscript:@"kHEIMAttrServerName"];
    [v17 setObject:? forKeyedSubscript:?];

    v10 = [v18 objectForKeyedSubscript:@"kHEIMAttrExpire"];
    [v17 setObject:? forKeyedSubscript:?];

    v11 = [v18 objectForKeyedSubscript:@"kHEIMAttrAuthTime"];
    [v17 setObject:? forKeyedSubscript:?];

    v12 = [v18 objectForKeyedSubscript:@"kHEIMAttrRenewTill"];
    [v17 setObject:? forKeyedSubscript:?];

    pthread_mutex_lock((v19 + 40));
    v13 = [NSDate dateWithTimeIntervalSince1970:*(v19 + 104)];
    [v17 setObject:? forKeyedSubscript:?];

    v14 = [NSNumber numberWithInt:*(v19 + 144)];
    [v17 setObject:? forKeyedSubscript:?];

    v15 = [NSDate dateWithTimeIntervalSince1970:*(v19 + 128)];
    [v17 setObject:? forKeyedSubscript:?];

    pthread_mutex_unlock((v19 + 40));
    [v17 setObject:*(*(v19 + 32) + 16) forKeyedSubscript:@"mech"];
    sub_10000BF84(v18, @"kHEIMAttrUUID", v17, @"uuid");
    sub_10000BF84(v18, @"kHEIMAttrParentCredential", v17, @"parent");
  }

  else
  {
    v3 = [v18 objectForKeyedSubscript:@"kHEIMAttrClientName"];
    [v17 setObject:? forKeyedSubscript:?];

    v4 = [v18 objectForKeyedSubscript:@"kHEIMAttrBundleIdentifierACL"];
    [v17 setObject:? forKeyedSubscript:?];

    v5 = [v18 objectForKeyedSubscript:@"kHEIMAttrAltDSID"];
    [v17 setObject:? forKeyedSubscript:?];

    v6 = [v18 objectForKeyedSubscript:@"kHEIMAttrUserID"];
    [v17 setObject:? forKeyedSubscript:?];

    v7 = [v18 objectForKeyedSubscript:@"kHEIMAttrRetainStatus"];
    [v17 setObject:? forKeyedSubscript:?];

    sub_10000BF84(v18, @"kHEIMAttrUUID", v17, @"uuid");
  }

  location = 0;
  objc_storeStrong(&location, v17);
  v2 = location;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  return v2;
}

id sub_10000B1A8(void *a1)
{
  v17 = a1;
  v16 = objc_alloc_init(NSMutableDictionary);
  v15 = v17;
  v20[0] = @"kHEIMAttrType";
  v20[1] = @"kHEIMObjectType";
  v20[2] = @"kHEIMAttrUUID";
  v20[3] = @"kHEIMAttrParentCredential";
  v20[4] = @"kHEIMAttrASID";
  v20[5] = @"kHEIMAttrAltDSID";
  v20[6] = @"kHEIMAttrUserID";
  v20[7] = @"kHEIMAttrDefaultCredential";
  v20[8] = @"kHEIMAttrBundleIdentifierACL";
  v20[9] = @"kHEIMAttrClientName";
  v20[10] = @"kHEIMAttrServerName";
  v20[11] = @"kHEIMAttrDisplayName";
  v20[12] = @"kHEIMAttrExpire";
  v20[13] = @"kHEIMAttrAuthTime";
  v20[14] = @"kHEIMAttrStoreTime";
  v20[15] = @"kHEIMAttrRenewTill";
  v20[16] = @"kHEIMAttrRetainStatus";
  v20[17] = @"kHEIMAttrLeadCredential";
  v20[18] = @"kHEIMAttrNTLMUsername";
  v20[19] = @"kHEIMAttrNTLMDomain";
  v20[20] = @"kHEIMAttrTransient";
  v20[21] = @"kHEIMAttrAllowedDomain";
  v20[22] = @"kHEIMAttrStatus";
  v20[23] = @"kHEIMAttrTemporaryCache";
  v14 = [NSArray arrayWithObjects:v20 count:24];
  memset(__b, 0, sizeof(__b));
  obj = v14;
  v11 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v8);
      v5 = [v15 objectForKeyedSubscript:v13];
      [v16 setObject:? forKeyedSubscript:?];

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  v4 = [v15 objectForKeyedSubscript:@"kHEIMAttrData"];
  if (v4)
  {
    [v16 setObject:@"<private>" forKeyedSubscript:@"kHEIMAttrData"];
  }

  v3 = [v15 objectForKeyedSubscript:@"kHEIMAttrNTLMSessionKey"];

  if (v3)
  {
    [v16 setObject:@"<private>" forKeyedSubscript:@"kHEIMAttrNTLMSessionKey"];
  }

  location = 0;
  objc_storeStrong(&location, v16);
  v2 = location;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  return v2;
}

void sub_10000B64C()
{
  Mutable = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  value = sub_10000A8E0(@"kHEIMObjectConfiguration");
  CFSetAddValue(Mutable, value);
  if (value)
  {
    CFRelease(value);
  }

  sub_10000A5EC(@"kHEIMTypeConfiguration", Mutable, sub_10000B740, 0, 0, sub_10000B1A8, 0, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

id sub_10000B740(uint64_t a1)
{
  v10 = a1;
  v9 = *(a1 + 24);
  v8 = [&__NSDictionary0__struct mutableCopy];
  v6 = [v9 objectForKeyedSubscript:@"kHEIMAttrClientName"];
  [v8 setObject:? forKeyedSubscript:?];

  v7 = [v9 objectForKeyedSubscript:@"kHEIMAttrServerName"];
  if (v7)
  {
    v5 = v7;
  }

  else
  {
    v5 = @"none";
  }

  [v8 setObject:v5 forKeyedSubscript:@"servername"];

  v2 = [v9 objectForKeyedSubscript:@"kHEIMAttrAuthTime"];
  [v8 setObject:? forKeyedSubscript:?];

  v3 = [v9 objectForKeyedSubscript:@"kHEIMAttrUserID"];
  [v8 setObject:? forKeyedSubscript:?];

  [v8 setObject:*(*(v10 + 32) + 16) forKeyedSubscript:@"mech"];
  sub_10000BF84(v9, @"kHEIMAttrUUID", v8, @"uuid");
  sub_10000BF84(v9, @"kHEIMAttrParentCredential", v8, @"parent");
  location = 0;
  objc_storeStrong(&location, v8);
  v4 = location;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  return v4;
}

void sub_10000B9AC(CFTypeRef *a1)
{
  if (a1[1])
  {
    CFRelease(a1[1]);
    a1[1] = 0;
  }

  if (a1[2])
  {
    CFRelease(a1[2]);
    a1[2] = 0;
  }

  if (a1[9])
  {
    CFRelease(a1[9]);
    a1[9] = 0;
  }

  if (a1[7])
  {
    CFRelease(a1[7]);
    a1[7] = 0;
  }

  free(a1);
}

void sub_10000BA94(unsigned int a1)
{
  valuePtr = a1;
  if (byte_100028D68)
  {
    context = objc_autoreleasePoolPush();
    v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    Value = CFDictionaryGetValue(qword_100028DD8, &off_100026378);
    if (Value)
    {
      sub_10000BCF4(Value, valuePtr);
    }

    location = sub_10000E120();
    v4 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
    {
      sub_100003F54(v10, v7);
      _os_log_impl(&_mh_execute_header, location, v4, "Session ended: %@", v10, 0xCu);
    }

    objc_storeStrong(&location, 0);
    if (v7)
    {
      CFRelease(v7);
      v7 = 0;
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    key = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!key)
    {
      heim_abort();
    }

    CFDictionaryRemoveValue(qword_100028DD8, key);
    oslog = sub_10000E120();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      sub_100003F54(v9, key);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "Session ended: %@", v9, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (key)
    {
      CFRelease(key);
    }
  }
}

void sub_10000BCF4(uint64_t a1, unsigned int a2)
{
  v22 = a1;
  v21 = a2;
  location = sub_10000E120();
  v19 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    sub_10000DDE8(v23, v21);
    _os_log_debug_impl(&_mh_execute_header, location, v19, "HeimCredRemoveItemsForASID: %d", v23, 8u);
  }

  objc_storeStrong(&location, 0);
  v18 = [&__NSArray0__struct mutableCopy];
  v17 = [NSNumber numberWithInt:v21];
  v16 = *(v22 + 24);
  v2 = v16;
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_10000DE20;
  v13 = &unk_100024CE8;
  v14 = v17;
  v15 = v18;
  [v2 enumerateKeysAndObjectsUsingBlock:&v9];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10000DFD0;
  v7 = &unk_100024D08;
  v8 = v22;
  [v18 enumerateObjectsUsingBlock:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
}

void sub_10000BF84(void *a1, void *a2, void *a3, void *a4)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v11 = 0;
  objc_storeStrong(&v11, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v7 = [location objectForKeyedSubscript:v11];

  if (v7)
  {
    v8 = CFUUIDCreateString(0, v7);
    if (v8)
    {
      [v10 setObject:v8 forKeyedSubscript:v9];
      CFRelease(v8);
    }
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

id sub_10000C0C4(uint64_t a1)
{
  v13 = a1;
  v12 = *(a1 + 24);
  v11 = [&__NSDictionary0__struct mutableCopy];
  v2 = [v12 objectForKeyedSubscript:@"kHEIMAttrClientName"];
  [v11 setObject:? forKeyedSubscript:?];

  v3 = [v12 objectForKeyedSubscript:@"kHEIMAttrExpire"];
  [v11 setObject:? forKeyedSubscript:?];

  v4 = [v12 objectForKeyedSubscript:@"kHEIMAttrStatus"];
  [v11 setObject:? forKeyedSubscript:?];

  v5 = [v12 objectForKeyedSubscript:@"kHEIMAttrAuthTime"];
  [v11 setObject:? forKeyedSubscript:?];

  pthread_mutex_lock((v13 + 40));
  v6 = [NSDate dateWithTimeIntervalSince1970:*(v13 + 104)];
  [v11 setObject:? forKeyedSubscript:?];

  v7 = [NSDate dateWithTimeIntervalSince1970:*(v13 + 120)];
  [v11 setObject:? forKeyedSubscript:?];

  v8 = [NSDate dateWithTimeIntervalSince1970:*(v13 + 128)];
  [v11 setObject:? forKeyedSubscript:?];

  v9 = [NSNumber numberWithInt:*(v13 + 144)];
  [v11 setObject:? forKeyedSubscript:?];

  pthread_mutex_unlock((v13 + 40));
  [v11 setObject:*(*(v13 + 32) + 16) forKeyedSubscript:@"mech"];
  sub_10000BF84(v12, @"kHEIMAttrUUID", v11, @"uuid");
  sub_10000BF84(v12, @"kHEIMAttrParentCredential", v11, @"parent");
  location = 0;
  objc_storeStrong(&location, v11);
  v10 = location;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  return v10;
}

BOOL sub_10000C464(uint64_t a1)
{
  v2 = 0;
  if (CFEqual(*(*(a1 + 32) + 16), @"kHEIMTypeKerberosAcquireCred"))
  {
    return CFDictionaryGetValue(*(a1 + 24), @"kHEIMAttrCredential") != 0;
  }

  return v2;
}

void sub_10000C4E0(const void *a1, uint64_t a2, const void *a3)
{
  v4 = CFDictionaryGetValue(*(a2 + 24), a1);
  if (v4)
  {
    theDict = CFDictionaryCreateMutableCopy(0, 0, v4[3]);
    if (a3)
    {
      CFDictionarySetValue(theDict, @"kHEIMAttrDefaultCredential", a3);
    }

    else
    {
      CFDictionaryRemoveValue(theDict, @"kHEIMAttrDefaultCredential");
    }

    if (v4[3])
    {
      CFRelease(v4[3]);
      v4[3] = 0;
    }

    v4[3] = theDict;
  }
}

void sub_10000C5C0(uint64_t *a1, void *a2, void *a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15 = a4;
  v14 = a1;
  v13 = v16;
  Value = CFDictionaryGetValue(*(v16 + 3), @"kHEIMAttrParentCredential");
  v8 = 1;
  if (!sub_100002B48(v13[3]))
  {
    v8 = sub_100004294(a1[4], v13[3]);
  }

  v11 = v8;
  if (CFEqual(*(v13[4] + 2), *(a1[5] + 16)) && Value && !v11 && CFDictionaryGetValue(v13[3], @"kHEIMAttrLeadCredential") == kCFBooleanTrue)
  {
    v10 = CFDictionaryGetValue(v13[3], @"kHEIMAttrExpire");
    [v10 timeIntervalSinceNow];
    if (v4 > 0.0)
    {
      CFDictionarySetValue(*(a1[4] + 40), *(v13[4] + 2), Value);
      sub_10000C4E0(Value, a1[4], kCFBooleanTrue);
      byte_100028E04 = 1;
      oslog = sub_10000E120();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C86C(v18, *(v13[4] + 2), v13);
        _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "The default for %@ credential is now %@", v18, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      *v15 = 1;
    }

    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_10000C86C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_10000C8BC(uint64_t result, uint64_t a2)
{
  *result = 3;
  *(result + 1) = 1;
  *(result + 2) = 33;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_10000C8FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 3;
  *(result + 1) = 2;
  *(result + 2) = 33;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_10000C954(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = CFGetTypeID(a2);
  if (v3 != CFDictionaryGetTypeID())
  {
    heim_abort();
  }

  *(a3 + 32) = a2;
  *(a3 + 40) = 0;
  CFDictionaryApplyFunction(*(a3 + 16), sub_10000CBC8, a3);
  if (*(a3 + 24) < *(a3 + 40))
  {
    heim_abort();
  }

  if (*(a3 + 24) == *(a3 + 40))
  {
    CFArrayAppendValue(*(a3 + 8), a2);
  }
}

void sub_10000CA5C(const void *a1, void *a2, void **a3)
{
  if (sub_100004360(*a3, a1, 0))
  {
    v3 = CFGetTypeID(a2);
    if (v3 != sub_10000FE40())
    {
      heim_abort();
    }

    if (a2[3])
    {
      a3[4] = a2[3];
      a3[5] = 0;
      CFDictionaryApplyFunction(a3[2], sub_10000CBC8, a3);
      if (a3[3] < a3[5])
      {
        heim_abort();
      }

      if (a3[3] == a3[5] && sub_100007BD8(a2[4], a3[6]))
      {
        CFArrayAppendValue(a3[1], a2);
      }
    }
  }
}

uint64_t sub_10000CBC8(const void *a1, const void *a2, uint64_t a3)
{
  if (!*(a3 + 32))
  {
    heim_abort();
  }

  if (CFEqual(a1, @"kHEIMObjectType"))
  {
    result = CFEqual(a2, @"kHEIMObjectAny");
    if (result)
    {
      ++*(a3 + 40);
      return result;
    }
  }

  cf1 = CFDictionaryGetValue(*(a3 + 32), a1);
  if (cf1)
  {
    result = CFEqual(cf1, a2);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = CFEqual(kCFNull, a2);
    if (!result)
    {
      return result;
    }
  }

  ++*(a3 + 40);
  return result;
}

void sub_10000CCE0(uint64_t a1, uint64_t a2)
{
  cf1 = CFDictionaryGetValue(*(*(a1 + 56) + 40), *(*(a2 + 32) + 16));
  if (cf1)
  {
    if (CFEqual(cf1, *(a2 + 16)))
    {
      CFDictionaryRemoveValue(*(*(a1 + 56) + 40), *(*(a2 + 32) + 16));
      *(*(a1 + 56) + 48) = 1;
      sub_100005634(a1);
    }
  }
}

BOOL sub_10000CD80(uint64_t a1)
{
  v2 = 0;
  if (CFEqual(*(*(a1 + 32) + 16), @"kHEIMTypeKerberos"))
  {
    return CFDictionaryGetValue(*(a1 + 24), @"kHEIMAttrLeadCredential") == kCFBooleanTrue;
  }

  return v2;
}

void sub_10000CE08(const void *a1, const void *a2, CFTypeRef *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a3;
  if (!CFEqual(a1, *a3))
  {
    v8 = v11;
    v3 = CFGetTypeID(v11);
    if (v3 != sub_10000FE40())
    {
      heim_abort();
    }

    cf2 = CFDictionaryGetValue(*(v8 + 3), @"kHEIMAttrParentCredential");
    if (cf2)
    {
      if (CFEqual(*v9, cf2))
      {
        CFArrayAppendValue(v9[1], *(v8 + 2));
        v5 = 0;
        v6 = 0;
        context = v12;
        v5 = v9[1];
        v6 = v9[2];
        CFDictionaryApplyFunction(*(v9[2] + 3), sub_10000CE08, &context);
      }
    }
  }
}

void sub_10000CF40(const void *a1, uint64_t a2)
{
  v2 = CFGetTypeID(a1);
  if (v2 != CFUUIDGetTypeID())
  {
    heim_abort();
  }

  CFDictionaryRemoveValue(*(a2 + 24), a1);
}

void sub_10000CFB4(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a2;
  v14 = a3;
  v19 = CFUUIDCreateString(0, *(v15 + 16));
  v3 = v19;
  v13 = v19;
  if (*(*(v15 + 32) + 24))
  {
    v12 = (*(*(v15 + 32) + 24))(v15);
    if (v12)
    {
      if (v13)
      {
        v11 = _CFXPCCreateXPCObjectFromCFObject();
        CFRelease(v12);
        v12 = 0;
        if (v11)
        {
          v4 = v13;
          v7 = [v13 UTF8String];
          if (v7)
          {
            xpc_dictionary_set_value(v14, v7, v11);
          }

          else
          {
            xpc_dictionary_set_value(v14, "none", v11);
          }
        }

        else
        {
          location = sub_10000E120();
          v9 = 16;
          if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
          {
            log = location;
            type = v9;
            sub_100001A10(v8);
            _os_log_error_impl(&_mh_execute_header, log, type, "status callback failed to convert to xpc object", v8, 2u);
          }

          objc_storeStrong(&location, 0);
        }

        objc_storeStrong(&v11, 0);
      }
    }
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
}

void sub_10000D1F4(CFTypeRef *a1)
{
  if (a1[3])
  {
    CFRelease(a1[3]);
    a1[3] = 0;
  }

  if (a1[5])
  {
    CFRelease(a1[5]);
    a1[5] = 0;
  }

  if (a1[4])
  {
    CFRelease(a1[4]);
    a1[4] = 0;
  }
}

void sub_10000D2C4(const void *a1, uint64_t a2, const __CFDictionary **a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a3;
  v11 = 0;
  v7 = *a3;
  TypeID = CFStringGetTypeID();
  v11 = sub_10000A548(v7, a1, TypeID, v12[2]);
  if (v11)
  {
    if (sub_10000D468(v11, @"W"))
    {
      CFDictionaryRemoveValue(v12[1], v15);
    }
  }

  else
  {
    v17 = *&off_100024BF8;
    v16[0] = v15;
    v16[1] = kCFBooleanTrue;
    sub_1000055C4(v12[2], 564480, &v17, v16, 2);
    oslog = sub_10000E120();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v5 = type;
      sub_100001A10(v8);
      _os_log_error_impl(&_mh_execute_header, log, v5, "unknown key", v8, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }
}

void sub_10000D4E4(const void *a1, uint64_t a2, const __CFDictionary **a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a3;
  v11 = 0;
  v7 = *a3;
  TypeID = CFStringGetTypeID();
  v11 = sub_10000A548(v7, a1, TypeID, v12[3]);
  if (!v11)
  {
    v17 = *&off_100024C18;
    v16[0] = v15;
    v16[1] = kCFBooleanTrue;
    sub_1000055C4(v12[3], 564480, &v17, v16, 2);
    *(v12 + 32) = 0;
    oslog = sub_10000E120();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v5 = type;
      sub_100001A10(v8);
      _os_log_error_impl(&_mh_execute_header, log, v5, "unknown key", v8, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }
}

void sub_10000D664(const __CFString *a1, const __CFString *a2, void *a3)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  context = a3;
  v19 = a2;
  cf = 0;
  if (!CFEqual(@"kHEIMObjectType", a1))
  {
    cf = CFDictionaryGetValue(*(context + 1), v23);
    if (cf)
    {
      v14 = sub_10000D9F0(v23, v19, 1);
      if (v14 != CFGetTypeID(cf))
      {
        v29 = *&off_100024C40;
        v30 = @"CommonErrorCode";
        v28[0] = v23;
        v28[1] = v19;
        v28[2] = kCFBooleanTrue;
        sub_1000055C4(*(context + 3), 564481, &v29, v28, 3);
        *(context + 32) = 0;
        v13 = sub_10000E120();
        v12 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v7 = v13;
          v8 = v12;
          sub_100001A10(v11);
          _os_log_error_impl(&_mh_execute_header, v7, v8, "key have wrong type key", v11, 2u);
        }

        objc_storeStrong(&v13, 0);
      }

      v6 = v14;
      if (v6 == CFArrayGetTypeID())
      {
        v3 = sub_10000D9F0(v23, v19, 0);
        *(context + 2) = v3;
        theArray = cf;
        Count = CFArrayGetCount(cf);
        v25 = 0;
        v24 = Count;
        v26 = 0;
        v27 = Count;
        v34.location = 0;
        v34.length = Count;
        CFArrayApplyFunction(theArray, v34, sub_10000DB6C, context);
      }
    }

    else if (sub_10000D468(v19, @"R"))
    {
      v32 = *&off_100024C28;
      v33 = @"CommonErrorCode";
      v31[0] = v23;
      v31[1] = v19;
      v31[2] = kCFBooleanTrue;
      sub_1000055C4(*(context + 3), 564481, &v32, v31, 3);
      *(context + 32) = 0;
      oslog = sub_10000E120();
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v10 = type;
        sub_100001A10(v15);
        _os_log_error_impl(&_mh_execute_header, log, v10, "key missing key", v15, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }
  }
}

CFTypeID sub_10000D9F0(const __CFString *a1, const __CFString *a2, char a3)
{
  if ((a3 & 1) != 0 && sub_10000D468(a2, @"a"))
  {
    return CFArrayGetTypeID();
  }

  if (sub_10000D468(a2, @"s"))
  {
    return CFStringGetTypeID();
  }

  if (sub_10000D468(a2, @"u"))
  {
    return CFUUIDGetTypeID();
  }

  if (sub_10000D468(a2, @"d"))
  {
    return CFDataGetTypeID();
  }

  if (sub_10000D468(a2, @"b"))
  {
    return CFBooleanGetTypeID();
  }

  if (sub_10000D468(a2, @"t"))
  {
    return CFDateGetTypeID();
  }

  if (sub_10000D468(a2, @"n"))
  {
    return CFNumberGetTypeID();
  }

  rk_cfstring2cstring(a2);
  rk_cfstring2cstring(a1);
  heim_abort();
  return v6;
}

CFTypeID sub_10000DB6C(const void *a1, uint64_t a2)
{
  result = CFGetTypeID(a1);
  if (result != *(a2 + 16))
  {
    v5 = @"CommonErrorCode";
    v4 = kCFBooleanTrue;
    result = sub_1000055C4(*(a2 + 24), 564480, &v5, &v4, 1);
    *(a2 + 32) = 0;
  }

  return result;
}

void sub_10000DC6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    CFRelease(*(a1 + 16));
    *(a1 + 16) = 0;
  }
}

void sub_10000DCDC(const __CFString *a1, const __CFString *a2)
{
  if (!CFEqual(@"kHEIMObjectType", a1))
  {
    v3 = sub_10000D9F0(a1, a2, 1);
    Value = CFDictionaryGetValue(qword_100028DF8, a1);
    if (Value)
    {
      if (sub_10000D9F0(a1, Value, 1) != v3)
      {
        rk_cfstring2cstring(a1);
        heim_abort();
      }
    }

    else
    {
      CFDictionarySetValue(qword_100028DF8, a1, a2);
    }
  }
}

uint64_t sub_10000DDE8(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

void sub_10000DE20(id *a1, void *a2, void *a3, uint64_t a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11 = a4;
  v10 = a1;
  v9 = v12;
  if (v12 && v9[3])
  {
    v8 = CFDictionaryGetValue(v9[3], @"kHEIMAttrASID");
    if ([a1[4] isEqualToNumber:v8])
    {
      [a1[5] addObject:location[0]];
      oslog = sub_10000E120();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_100003F54(v14, location[0]);
        _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "item to be deleted: %@", v14, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_10000DFD0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = a3;
  v11 = a4;
  v10 = a1;
  key = location[0];
  if (CFDictionaryGetValue(*(a1[4] + 24), location[0]))
  {
    CFDictionaryRemoveValue(*(a1[4] + 24), key);
    oslog = sub_10000E120();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_100003F54(v14, key);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "item deleted: %@", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

id sub_10000E120()
{
  predicate = &unk_100028E40;
  block = 0;
  objc_storeStrong(&block, &stru_100024D28);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_100028E48;

  return v0;
}

void sub_10000E1A8(id a1)
{
  v1 = os_log_create("com.apple.Heimdal", "GSSCred");
  v2 = qword_100028E48;
  qword_100028E48 = v1;
}

void sub_10000E200()
{
  Mutable = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  v0 = sub_10000A8E0(@"kHEIMObjectNTLM");
  CFDictionarySetValue(v0, @"kHEIMAttrData", @"Wd");
  CFDictionarySetValue(v0, @"kHEIMAttrNTLMUsername", @"Rs");
  CFDictionarySetValue(v0, @"kHEIMAttrNTLMDomain", @"Rs");
  CFDictionarySetValue(v0, @"kHEIMAttrTransient", @"b");
  CFDictionarySetValue(v0, @"kHEIMAttrAllowedDomain", @"as");
  CFDictionarySetValue(v0, @"kHEIMAttrStatus", @"n");
  CFDictionarySetValue(v0, @"kHEIMAttrLabelValue", @"d");
  CFSetAddValue(Mutable, v0);
  if (v0)
  {
    CFRelease(v0);
  }

  sub_10000A5EC(@"kHEIMTypeNTLM", Mutable, 0, sub_10000E3B4, 0, sub_10000B1A8, 0, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

CFDictionaryRef sub_10000E3B4(void *a1, uint64_t a2, const __CFDictionary *a3)
{
  v73 = a1;
  v72 = a2;
  v71 = a3;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  Attributes = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  valuePtr = 0;
  v53 = 0;
  v52 = 0;
  Length = 0;
  BytePtr = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  memset(__b, 0, sizeof(__b));
  memset(v80, 0, sizeof(v80));
  memset(v37, 0, sizeof(v37));
  v36 = 0;
  location = sub_10000E120();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    log = location;
    v24 = type;
    sub_100001A10(v33);
    _os_log_debug_impl(&_mh_execute_header, log, v24, "NTLMAuthCallback", v33, 2u);
  }

  objc_storeStrong(&location, 0);
  Length = 0;
  BytePtr = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  memset(__b, 0, sizeof(__b));
  memset(v80, 0, sizeof(v80));
  memset(v37, 0, sizeof(v37));
  Attributes = HeimCredGetAttributes();
  if (Attributes)
  {
    v22 = Attributes;
    TypeID = CFDataGetTypeID();
    v59 = sub_10000F4BC(v22, @"kHEIMAttrData", TypeID);
    if (v59)
    {
      BytePtr = CFDataGetBytePtr(v59);
      Length = CFDataGetLength(v59);
      v21 = v71;
      v4 = CFDataGetTypeID();
      v68 = sub_10000F4BC(v21, @"kHEIMAttrNTLMType2Data", v4);
      if (v68)
      {
        v45 = CFDataGetBytePtr(v68);
        v44 = CFDataGetLength(v68);
        v20 = v71;
        v5 = CFDataGetTypeID();
        v65 = sub_10000F4BC(v20, @"kHEIMAttrNTLMChannelBinding", v5);
        if (v65)
        {
          v39 = CFDataGetBytePtr(v65);
          v38 = CFDataGetLength(v65);
          v19 = v71;
          v6 = CFDataGetTypeID();
          v69 = sub_10000F4BC(v19, @"kHEIMAttrNTLMType1Data", v6);
          if (v69)
          {
            v47 = CFDataGetBytePtr(v69);
            v46 = CFDataGetLength(v69);
            v18 = v71;
            v7 = CFStringGetTypeID();
            v64 = sub_10000F4BC(v18, @"kHEIMAttrNTLMClientTargetName", v7);
            if (v64)
            {
              v55 = rk_cfstring2cstring(v64);
              if (v55)
              {
                v17 = v71;
                v8 = CFNumberGetTypeID();
                v61 = sub_10000F4BC(v17, @"kHEIMAttrNTLMClientFlags", v8);
                if (v61)
                {
                  CFRetain(v61);
                  if (CFNumberGetValue(v61, kCFNumberSInt32Type, &valuePtr))
                  {
                    v16 = v71;
                    v9 = CFStringGetTypeID();
                    v63 = sub_10000F4BC(v16, @"kHEIMAttrNTLMUsername", v9);
                    if (v63)
                    {
                      v57 = rk_cfstring2cstring(v63);
                      if (v57)
                      {
                        v15 = v71;
                        v10 = CFStringGetTypeID();
                        v62 = sub_10000F4BC(v15, @"kHEIMAttrNTLMDomain", v10);
                        if (v62)
                        {
                          CFRetain(v62);
                          v56 = rk_cfstring2cstring(v62);
                          if (v56)
                          {
                            v49 = v45;
                            v48 = v44;
                            v36 = heim_ntlm_decode_type2();
                            if (v36)
                            {
                              v32 = sub_10000E120();
                              v31 = OS_LOG_TYPE_ERROR;
                              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                              {
                                sub_10000DDE8(v77, v36);
                                _os_log_error_impl(&_mh_execute_header, v32, v31, "heim_ntlm_decode_type2 (%d)\n", v77, 8u);
                              }

                              objc_storeStrong(&v32, 0);
                            }

                            else if (sub_1000073A4(v73, &__b[4]))
                            {
                              v30 = sub_10000E120();
                              v29 = OS_LOG_TYPE_ERROR;
                              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                              {
                                v13 = v30;
                                v14 = v29;
                                sub_100001A10(v28);
                                _os_log_error_impl(&_mh_execute_header, v13, v14, "NTLM Mirror attack detected", v28, 2u);
                              }

                              objc_storeStrong(&v30, 0);
                            }

                            else
                            {
                              if (!sub_10000F530(v56) && strcasecmp(v56, __b[1]))
                              {
                                goto LABEL_30;
                              }

                              free(v56);
                              if (v62)
                              {
                                CFRelease(v62);
                                v62 = 0;
                              }

                              v62 = CFStringCreateWithCString(0, __b[1], 0x8000100u);
                              if (v62)
                              {
                                v56 = rk_cfstring2cstring(v62);
                                if (v56)
                                {
LABEL_30:
                                  v80[1] = v57;
                                  LODWORD(v80[0]) = __b[0] & valuePtr;
                                  v80[2] = v56;
                                  v80[9] = strdup("MOBILE");
                                  v36 = heim_ntlm_decode_targetinfo();
                                  if (!v36)
                                  {
                                    if (v37[5])
                                    {
                                      v53 |= 8u;
                                    }

                                    if (v37[8])
                                    {
                                      free(v37[8]);
                                    }

                                    if (v37[6])
                                    {
                                      free(v37[6]);
                                    }

                                    LODWORD(v37[5]) |= 2u;
                                    v37[6] = v55;
                                    if (v38)
                                    {
                                      v37[8] = v39;
                                      v37[7] = v38;
                                    }

                                    else
                                    {
                                      v37[8] = &unk_100028E50;
                                      v37[7] = 16;
                                    }

                                    v36 = heim_ntlm_encode_targetinfo();
                                    if (!v36)
                                    {
                                      memset(&v37[6], 0, 24);
                                      heim_ntlm_free_targetinfo();
                                      if (!v36)
                                      {
                                        v80[4] = malloc_type_malloc(0x18uLL, 0xD7B92B02uLL);
                                        if (v80[4])
                                        {
                                          v80[3] = 24;
                                          __memset_chk();
                                        }

                                        else
                                        {
                                          v36 = 12;
                                        }

                                        if (!v36)
                                        {
                                          v36 = heim_ntlm_calculate_ntlm2();
                                          if (!v36)
                                          {
                                            v11 = (v80[0] & 0x40000000) != 0 ? heim_ntlm_build_ntlm2_master() : heim_ntlm_v2_base_session();
                                            v36 = v11;
                                            if (!v11)
                                            {
                                              v36 = heim_ntlm_encode_type3();
                                              if (!v36)
                                              {
                                                if (v48 >= 0x10)
                                                {
                                                  if (v52 && v52 < v48 - 16)
                                                  {
                                                    bzero(&v27, 0x180uLL);
                                                    macOut = &v49[v52];
                                                    CCHmacInit(&v27, 1u, v43, v42);
                                                    CCHmacUpdate(&v27, v47, v46);
                                                    CCHmacUpdate(&v27, v45, v44);
                                                    CCHmacUpdate(&v27, v49, v48);
                                                    CCHmacFinal(&v27, macOut);
                                                  }

                                                  v67 = CFDataCreate(kCFAllocatorDefault, v49, v48);
                                                  if (v67)
                                                  {
                                                    v60 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v53);
                                                    if (v60)
                                                    {
                                                      if (v61)
                                                      {
                                                        CFRelease(v61);
                                                        v61 = 0;
                                                      }

                                                      v61 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v80);
                                                      if (v61)
                                                      {
                                                        v66 = CFDataCreate(kCFAllocatorDefault, v43, v42);
                                                        if (v66)
                                                        {
                                                          heim_ntlm_unparse_flags();
                                                          oslog = sub_10000E120();
                                                          if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
                                                          {
                                                            sub_10000F550(v76, v56, v57, v82);
                                                            _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "ntlm v2 request processed for %s\\%s flags: %s", v76, 0x20u);
                                                          }

                                                          objc_storeStrong(&oslog, 0);
                                                          v75[0] = @"kHEIMObjectType";
                                                          v75[1] = @"kHEIMAttrType";
                                                          v75[2] = @"kHEIMAttrNTLMUsername";
                                                          v75[3] = @"kHEIMAttrNTLMDomain";
                                                          v75[4] = @"kHEIMAttrNTLMType3Data";
                                                          v75[5] = @"kHEIMAttrNTLMSessionKey";
                                                          v75[6] = @"kHEIMAttrNTLMClientFlags";
                                                          v75[7] = @"kHEIMAttrNTLMKCMFlags";
                                                          v74[0] = @"kHEIMObjectNTLM";
                                                          v74[1] = @"kHEIMTypeNTLM";
                                                          v74[2] = v63;
                                                          v74[3] = v62;
                                                          v74[4] = v67;
                                                          v74[5] = v66;
                                                          v74[6] = v61;
                                                          v74[7] = v60;
                                                          v70 = CFDictionaryCreate(0, v75, v74, 8, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                                                          if (!v70)
                                                          {
                                                            heim_abort();
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  v36 = 22;
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

  v78 = 0;
  v79 = 0;
  if (v80[4])
  {
    free(v80[4]);
  }

  if (v80[6])
  {
    free(v80[6]);
  }

  if (v80[8])
  {
    free(v80[8]);
  }

  if (v80[9])
  {
    free(v80[9]);
  }

  heim_ntlm_free_type2();
  heim_ntlm_free_buf();
  heim_ntlm_free_buf();
  if (v67)
  {
    CFRelease(v67);
    v67 = 0;
  }

  if (v60)
  {
    CFRelease(v60);
    v60 = 0;
  }

  if (v61)
  {
    CFRelease(v61);
    v61 = 0;
  }

  if (v66)
  {
    CFRelease(v66);
    v66 = 0;
  }

  if (v62)
  {
    CFRelease(v62);
    v62 = 0;
  }

  return v70;
}

void sub_10000F3BC()
{
  Mutable = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  theDict = sub_10000A8E0(@"kHEIMObjectNTLMReflection");
  CFDictionarySetValue(theDict, @"kHEIMAttrData", @"WRd");
  CFSetAddValue(Mutable, theDict);
  if (theDict)
  {
    CFRelease(theDict);
  }

  sub_10000A5EC(@"kHEIMTypeNTLMRelfection", Mutable, 0, 0, 0, sub_10000B1A8, 0, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

CFTypeRef sub_10000F4BC(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  cf = CFDictionaryGetValue(a1, a2);
  if (cf && CFGetTypeID(cf) == a3)
  {
    return cf;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000F550(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 32;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

CFUUIDRef sub_10000F5B8(void *a1, const char *a2)
{
  uuid = xpc_dictionary_get_uuid(a1, a2);
  if (uuid)
  {
    return CFUUIDCreateFromUUIDBytes(0, *uuid);
  }

  else
  {
    return 0;
  }
}

CFTypeRef sub_10000F630(void *a1, const char *a2, uint64_t a3)
{
  if (!xpc_dictionary_get_value(a1, a2))
  {
    return 0;
  }

  cf = _CFXPCCreateCFObjectFromXPCObject();
  if (cf && CFGetTypeID(cf) != a3)
  {
    CFRelease(cf);
    return 0;
  }

  return cf;
}

void sub_10000F6E8(void *a1, const char *a2)
{
  value = _CFXPCCreateXPCObjectFromCFObject();
  if (value)
  {
    xpc_dictionary_set_value(a1, a2, value);
    xpc_release(value);
  }
}

void sub_10000F76C()
{
  if (qword_100028E60 != -1)
  {
    dispatch_once(&qword_100028E60, &stru_100024F08);
  }
}

uint64_t sub_10000F7C8(uint64_t a1)
{
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 0;
  }

  *(Instance + 16) = a1;
  pthread_mutex_init((Instance + 24), 0);
  return Instance;
}

void sub_10000F848(id a1)
{
  qword_100028DC0 = _CFRuntimeRegisterClass();
  qword_100028DC8 = _CFRuntimeRegisterClass();
  unk_100028DB8 = dispatch_queue_create("HeimCred", 0);
  qword_100028DD8 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  qword_100028DE0 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
}

uint64_t sub_10000F918(uint64_t a1)
{
  if (*(a1 + 16))
  {
    CFRelease(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  if (*(a1 + 24))
  {
    CFRelease(*(a1 + 24));
    *(a1 + 24) = 0;
  }

  pthread_mutex_lock((a1 + 40));
  if (*(a1 + 168))
  {
    pthread_mutex_lock((*(a1 + 168) + 24));
    *(*(a1 + 168) + 16) = 0;
    pthread_mutex_unlock((*(a1 + 168) + 24));
    if (*(a1 + 168))
    {
      CFRelease(*(a1 + 168));
      *(a1 + 168) = 0;
    }
  }

  if (*(a1 + 160))
  {
    pthread_mutex_lock((*(a1 + 160) + 24));
    *(*(a1 + 160) + 16) = 0;
    pthread_mutex_unlock((*(a1 + 160) + 24));
    if (*(a1 + 160))
    {
      CFRelease(*(a1 + 160));
      *(a1 + 160) = 0;
    }
  }

  if (*(a1 + 112))
  {
    heim_ipc_event_cancel(*(a1 + 112));
    heim_ipc_event_free(*(a1 + 112));
    *(a1 + 112) = 0;
  }

  if (*(a1 + 136))
  {
    heim_ipc_event_cancel(*(a1 + 136));
    heim_ipc_event_free(*(a1 + 136));
    *(a1 + 136) = 0;
  }

  pthread_mutex_unlock((a1 + 40));
  return pthread_mutex_destroy((a1 + 40));
}

CFStringRef sub_10000FB28(uint64_t a1)
{
  v31 = a1;
  v30 = a1;
  if (!*(a1 + 24))
  {
    return CFStringCreateWithFormat(0, 0, @"HeimCred<%@>", *(v30 + 16));
  }

  Value = CFDictionaryGetValue(*(v30 + 24), @"kHEIMAttrClientName");
  v28 = CFDictionaryGetValue(*(v30 + 24), @"kHEIMAttrServerName");
  v27 = CFDictionaryGetValue(*(v30 + 24), @"kHEIMAttrParentCredential");
  v26 = CFDictionaryGetValue(*(v30 + 24), @"kHEIMAttrLeadCredential");
  v25 = CFDictionaryGetValue(*(v30 + 24), @"kHEIMAttrAltDSID");
  v24 = CFDictionaryGetValue(*(v30 + 24), @"kHEIMAttrUserID");
  v23 = CFDictionaryGetValue(*(v30 + 24), @"kHEIMAttrASID");
  if (v26)
  {
    v20 = CFBooleanGetValue(v26);
  }

  else
  {
    v20 = 0;
  }

  v22 = v20;
  v21 = CFDictionaryGetValue(*(v30 + 24), @"kHEIMAttrBundleIdentifierACL");
  v14 = *(v30 + 16);
  v15 = v26;
  v16 = v27;
  v17 = Value;
  v18 = v28;
  v1 = "yes";
  if (!v20)
  {
    v1 = "no";
  }

  v19 = v1;
  if (v21)
  {
    v13 = v21;
  }

  else
  {
    v13 = &stru_100026110;
  }

  v11 = v13;
  v12 = v25;
  if (v25)
  {
    v10 = v12;
  }

  else
  {
    v10 = &stru_100026110;
  }

  v8 = v10;
  v9 = v24;
  if (v24)
  {
    v7 = v9;
  }

  else
  {
    v7 = &stru_100026110;
  }

  v5 = v7;
  v6 = v23;
  if (v23)
  {
    v4 = v6;
  }

  else
  {
    v4 = &stru_100026110;
  }

  v3[10] = v3;
  return CFStringCreateWithFormat(0, 0, @"HeimCred<%@ group: %@ parent: %@ client: %@ server: %@ lead: %s ACL: %@, altDSID: %@, Uid: %@, asid: %@>", v14, v15, v16, v17, v18, v19, v11, v8, v5, v4);
}

uint64_t sub_10000FE64(const void *a1)
{
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 0;
  }

  CFRetain(a1);
  *(Instance + 16) = a1;
  *(Instance + 144) = -1;
  *(Instance + 136) = 0;
  *(Instance + 112) = 0;
  pthread_mutex_init((Instance + 40), 0);
  *(Instance + 152) = 0;
  return Instance;
}

uint64_t start(int a1, void *a2)
{
  v38 = 0;
  v37 = a1;
  v36[1] = a2;
  v36[0] = 0;
  v35 = 0;
  os_log_set_client_type();
  umask(0x3Fu);
  _set_user_dir_suffix();
  v34 = 0;
  v18 = objc_autoreleasePoolPush();
  location = sub_10000E120();
  v32 = 1;
  if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
  {
    log = location;
    type = v32;
    sub_100001A10(v31);
    _os_log_impl(&_mh_execute_header, log, type, "Starting GSSCred", v31, 2u);
  }

  objc_storeStrong(&location, 0);
  off_100028D78 = sub_100010608;
  off_100028D20 = sub_1000106B8;
  v2 = objc_alloc_init(ManagedAppManager);
  v3 = qword_100028D60;
  qword_100028D60 = v2;

  off_100028D28 = sub_100010834;
  off_100028D30 = &xpc_connection_get_euid;
  off_100028D38 = &xpc_connection_get_asid;
  off_100028D40 = sub_100016180;
  off_100028D48 = sub_1000168C8;
  unk_100028D50 = sub_1000108D4;
  off_100028D58 = sub_10001092C;
  off_100028D70 = sub_100010944;
  byte_100028D18 = sub_100010984();
  byte_100028D68 = sub_100010A00();
  qword_100028D80 = sub_10001469C;
  qword_100028D88 = sub_100013D94;
  qword_100028D90 = sub_100015244;
  qword_100028D98 = sub_10000179C;
  qword_100028DA0 = sub_100010A7C();
  byte_100028D69 = sub_100010B2C();
  qword_100028DA8 = objc_opt_class();
  off_100028DB0 = sub_100010BA8;
  qword_100028DE8 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!qword_100028DE8)
  {
    heim_abort();
  }

  qword_100028DF0 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!qword_100028DF0)
  {
    heim_abort();
  }

  qword_100028DF8 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!qword_100028DF8)
  {
    heim_abort();
  }

  sub_10000AB40();
  sub_10000B64C();
  sub_100017490();
  sub_10000E200();
  sub_10000F3BC();
  sub_10001762C();
  nullsub_1();
  if (qword_100028DF8)
  {
    CFRelease(qword_100028DF8);
    qword_100028DF8 = 0;
  }

  objc_storeStrong(&qword_100028D10, @"/var/db/heim-credential-store.archive");
  v4 = dispatch_queue_create("com.apple.GSSCred", 0);
  v5 = qword_100028E68;
  qword_100028E68 = v4;

  if (!qword_100028E68)
  {
    heim_abort();
  }

  heim_ipc_init_globals();
  sub_10000F76C();
  sub_100001A74();
  sub_100010BFC();
  mach_service = xpc_connection_create_mach_service("com.apple.GSSCred", qword_100028E68, 1uLL);
  v7 = v36[0];
  v36[0] = mach_service;

  xpc_connection_set_event_handler(v36[0], &stru_100025008);
  heim_ipc_resume_events();
  xpc_connection_resume(v36[0]);
  objc_autoreleasePoolPop(v18);
  if (v35)
  {
    v30 = sub_100018AD4();
    v29 = 1;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v14 = v30;
      v15 = v29;
      sub_100001A10(v28);
      _os_log_impl(&_mh_execute_header, v14, v15, "Starting run loop", v28, 2u);
    }

    objc_storeStrong(&v30, 0);
  }

  else
  {
    v27 = sub_10000E120();
    v26 = 1;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v12 = v27;
      v13 = v26;
      sub_100001A10(v25);
      _os_log_impl(&_mh_execute_header, v12, v13, "Starting run loop", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
  }

  v8 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, qword_100028E68);
  v9 = v34;
  v34 = v8;

  handler = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = sub_100011138;
  v23 = &unk_100025028;
  v24 = v35 & 1;
  dispatch_source_set_event_handler(v34, &handler);
  dispatch_activate(v34);
  signal(15, 1);
  v11 = +[NSRunLoop currentRunLoop];
  [(NSRunLoop *)v11 run];

  v38 = 0;
  objc_storeStrong(&v34, 0);
  objc_storeStrong(v36, 0);
  return v38;
}

void *sub_100010608(const __CFString *a1)
{
  CFPreferencesSynchronize(@"com.apple.Heimdal.GSSCred", kCFPreferencesAnyUser, kCFPreferencesAnyHost);
  v3 = CFPreferencesCopyValue(a1, @"com.apple.Heimdal.GSSCred", kCFPreferencesAnyUser, kCFPreferencesAnyHost);
  v1 = v3;
  if (@"com.apple.Heimdal.GSSCred")
  {
    CFRelease(@"com.apple.Heimdal.GSSCred");
  }

  return v3;
}

id sub_1000106B8()
{
  v3 = +[UMUserManager sharedManager];
  v5 = [v3 currentUser];

  location = sub_10000E120();
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    v2 = [v5 alternateDSID];
    sub_10000586C(v6, v2);
    _os_log_debug_impl(&_mh_execute_header, location, OS_LOG_TYPE_DEBUG, "Current altDSID: %{private}@", v6, 0xCu);
  }

  objc_storeStrong(&location, 0);
  v1 = [v5 alternateDSID];
  objc_storeStrong(&v5, 0);

  return v1;
}

BOOL sub_100010834(void *a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  value = 0;
  v2 = *a1;
  object = xpc_connection_copy_entitlement_value();
  if (object && xpc_get_type(object) == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(object);
  }

  v4 = value;
  objc_storeStrong(&object, 0);
  return v4;
}

uint64_t sub_1000108D4(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
  return 0;
}

uint64_t sub_100010984()
{
  predicate = &unk_100028E70;
  block = 0;
  objc_storeStrong(&block, &stru_100025090);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  return byte_100028E78 & 1;
}

uint64_t sub_100010A00()
{
  predicate = &unk_100028E80;
  block = 0;
  objc_storeStrong(&block, &stru_1000250B0);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  return byte_100028E79 & 1;
}

uint64_t sub_100010A7C()
{
  v4 = 7200;
  location = off_100028D78(@"renew-interval");
  if (location)
  {
    if ([location longValue] >= 60)
    {
      v2 = [location longValue];
    }

    else
    {
      v2 = 60;
    }

    v4 = v2;
  }

  v1 = v4;
  objc_storeStrong(&location, 0);
  return v1;
}

uint64_t sub_100010B2C()
{
  predicate = &unk_100028E90;
  block = 0;
  objc_storeStrong(&block, &stru_1000250D0);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  return byte_100028E88 & 1;
}

void sub_100010BA8(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  dispatch_async(qword_100028E68, location);
  objc_storeStrong(&location, 0);
}

void sub_100010BFC()
{
  location = 0;
  v10 = au_sdev_open(0x10000);
  if (v10)
  {
    v0 = dispatch_get_global_queue(-2, 0);
    v1 = location;
    location = v0;

    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100011ACC;
    v6 = &unk_100025110;
    v7 = v10;
    dispatch_async(location, &v2);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  objc_storeStrong(&location, 0);
}

void sub_100010CE0(id a1, OS_xpc_object *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  sub_100010D38(location[0]);
  objc_storeStrong(location, 0);
}

void sub_100010D38(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  context = objc_autoreleasePoolPush();
  v20 = 0;
  v19 = xpc_get_type(location);
  if (v19 == &_xpc_type_connection)
  {
    v20 = malloc_type_calloc(1uLL, 0x58uLL, 0x10E0040DE1BA62FuLL);
    if (!v20)
    {
      heim_abort();
    }

    objc_storeStrong(v20, location);
    xpc_connection_get_audit_token();
    v20[1] = sub_100011BF8(location);
    if (v20[1])
    {
      v20[2] = CFRetain(v20[1]);
      if (byte_100028D68)
      {
        v20[7] = sub_1000026D4(-1);
      }

      else
      {
        v3 = off_100028D38(location);
        v20[7] = sub_1000026D4(v3);
      }

      if (!v20[7])
      {
        heim_abort();
      }

      v14 = sub_10000E120();
      v13 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_100011EFC(v22, v20[2], *(v20[7] + 4));
        _os_log_debug_impl(&_mh_execute_header, v14, v13, "new connection from %@, asid: %u", v22, 0x12u);
      }

      objc_storeStrong(&v14, 0);
      *(v20 + 64) = 1;
      *(v20 + 65) = 0;
      *(v20 + 20) = 0;
      xpc_connection_set_context(location, v20);
      xpc_connection_set_finalizer_f(location, sub_100011F50);
      handler = _NSConcreteStackBlock;
      v8 = -1073741824;
      v9 = 0;
      v10 = sub_100011F84;
      v11 = &unk_100025130;
      v12 = v20;
      xpc_connection_set_event_handler(location, &handler);
      xpc_connection_set_target_queue(location, qword_100028E68);
      xpc_connection_resume(location);
      v18 = 0;
    }

    else
    {
      v1 = getpid();
      if (proc_pidpath(v1, buffer, 0x400u) <= 0)
      {
        buffer[0] = 0;
      }

      oslog = sub_10000E120();
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v5 = type;
        atoken = *(v20 + 3);
        v2 = audit_token_to_pid(&atoken);
        sub_100011EA8(v23, v2, buffer);
        _os_log_error_impl(&_mh_execute_header, log, v5, "client[pid-%d] %s is not signed", v23, 0x12u);
      }

      objc_storeStrong(&oslog, 0);
      free(v20);
      xpc_connection_cancel(location);
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
  }

  objc_autoreleasePoolPop(context);
  if (!v18)
  {
    v18 = 0;
  }

  objc_storeStrong(&location, 0);
}

void sub_100011138(_BYTE *a1)
{
  location[2] = a1;
  location[1] = a1;
  v1 = a1[32];
  v21 = 0;
  v19 = 0;
  if (v1)
  {
    v22 = sub_100018AD4();
    v21 = 1;
    v2 = v22;
  }

  else
  {
    v20 = sub_10000E120();
    v19 = 1;
    v2 = v20;
  }

  location[0] = v2;
  if (v19)
  {
  }

  if (v21)
  {
  }

  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v18;
    sub_100001A10(v17);
    _os_log_impl(&_mh_execute_header, log, type, "Got SIGTERM, shutting down", v17, 2u);
  }

  objc_storeStrong(location, 0);
  if (byte_100028E05)
  {
    v3 = a1[32];
    v14 = 0;
    v12 = 0;
    if (v3)
    {
      v15 = sub_100018AD4();
      v14 = 1;
      v4 = v15;
    }

    else
    {
      v13 = sub_10000E120();
      v12 = 1;
      v4 = v13;
    }

    v16 = v4;
    if (v12)
    {
    }

    if (v14)
    {
    }

    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v16;
      v6 = v11;
      sub_100001A10(v10);
      _os_log_impl(&_mh_execute_header, v5, v6, "Saving cached credentials", v10, 2u);
    }

    objc_storeStrong(&v16, 0);
    sub_1000010C8();
  }

  exit(0);
}

void sub_100011404(id a1)
{
  v9[2] = a1;
  v9[1] = a1;
  if (byte_100028E04)
  {
    byte_100028E04 = 0;
    if ((byte_100028E05 & 1) == 0)
    {
      byte_100028E05 = 1;
      v9[0] = os_transaction_create();
      when = dispatch_time(0, 5000000000);
      queue = qword_100028E68;
      v3 = _NSConcreteStackBlock;
      v4 = -1073741824;
      v5 = 0;
      v6 = sub_10001154C;
      v7 = &unk_100025070;
      v8 = v9[0];
      dispatch_after(when, queue, &v3);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(v9, 0);
    }
  }
}

void sub_100011584(id a1)
{
  v4 = a1;
  v3 = a1;
  theDict = MKBUserTypeDeviceMode();
  cf1 = 0;
  if (theDict && CFDictionaryGetValueIfPresent(theDict, kMKBDeviceModeKey, &cf1) && CFEqual(cf1, kMKBDeviceModeMultiUser))
  {
    byte_100028E78 = 1;
  }

  if (theDict)
  {
    CFRelease(theDict);
  }
}

void sub_10001163C(id a1)
{
  v3 = a1;
  v2 = a1;
  *&v1[4] = off_100028D78(@"use-uid-matching");
  if (*&v1[4])
  {
    *v1 = [*&v1[4] BOOLValue];
  }

  else
  {
    *v1 = sub_1000116D4();
  }

  byte_100028E79 = *v1 != 0;
  objc_storeStrong(&v1[4], 0);
}

BOOL sub_1000116D4()
{
  v20 = 0;
  v19 = 0;
  location[1] = "/etc/kcm.conf";
  inited = krb5_init_context(&v19);
  if (inited)
  {
    location[0] = sub_10000E120();
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      sub_10000DDE8(v22, inited);
      _os_log_error_impl(&_mh_execute_header, location[0], v16, "krb5_init_context failed: %d", v22, 8u);
    }

    objc_storeStrong(location, 0);
    return 0;
  }

  else
  {
    v15[1] = 0;
    inited = krb5_prepend_config_files_default();
    if (inited)
    {
      v15[0] = sub_10000E120();
      v14 = 16;
      if (os_log_type_enabled(v15[0], OS_LOG_TYPE_ERROR))
      {
        v5 = v15[0];
        v6 = v14;
        sub_100001A10(v13);
        _os_log_error_impl(&_mh_execute_header, v5, v6, "error getting kcm configuration files", v13, 2u);
      }

      objc_storeStrong(v15, 0);
      krb5_free_context(v19);
      return 0;
    }

    else
    {
      inited = krb5_set_config_files();
      krb5_free_config_files();
      if (inited)
      {
        v12 = sub_10000E120();
        v11 = 16;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v3 = v12;
          v4 = v11;
          sub_100001A10(v10);
          _os_log_error_impl(&_mh_execute_header, v3, v4, "error reading kcm configuration files", v10, 2u);
        }

        objc_storeStrong(&v12, 0);
        krb5_free_context(v19);
        return 0;
      }

      else
      {
        v20 = krb5_config_get_BOOL_default() != 0;
        if (v20)
        {
          oslog = sub_10000E120();
          v8 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v1 = oslog;
            v2 = v8;
            sub_100001A10(v7);
            _os_log_error_impl(&_mh_execute_header, v1, v2, "*** Using 'use-uid-matching' in the kcm section of a krb5.conf file is deprecated.  It will be removed in a future macOS version.  Use the GSSCred default instead. ", v7, 2u);
          }

          objc_storeStrong(&oslog, 0);
        }

        krb5_free_context(v19);
        return v20;
      }
    }
  }
}

void sub_100011A54(id a1)
{
  v1[2] = a1;
  v1[1] = a1;
  v1[0] = off_100028D78(@"disable-ntlm-reflection-detection");
  byte_100028E88 = [v1[0] BOOLValue];
  objc_storeStrong(v1, 0);
}

void sub_100011ACC(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  while (1)
  {
    do
    {
      memset(&__b, 0, sizeof(__b));
      event = 0;
    }

    while (au_sdev_read_aia(*(a1 + 32), &event, &__b));
    if (event == 44903)
    {
      v2 = _NSConcreteStackBlock;
      v3 = -1073741824;
      v4 = 0;
      v5 = sub_100011BBC;
      v6 = &unk_1000250F0;
      memcpy(v7, &__b, sizeof(v7));
      dispatch_async(qword_100028E68, &v2);
    }
  }
}

CFStringRef sub_100011BF8(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v8 = 0;
  xpc_connection_get_pid(location);
  xpc_connection_get_audit_token();
  if (csops_audittoken() == -1 && *__error() == 34)
  {
    v3 = sub_100012B58(HIDWORD(v8));
    if (v3 <= 0x100000)
    {
      if (v3)
      {
        v2 = malloc_type_malloc(v3, 0x9B55C7F3uLL);
        if (v2)
        {
          if (csops_audittoken() || v3 <= 8 || (v4 = v3 - 8, v2[v4 + 7]))
          {
            free(v2);
            v7 = 0;
          }

          else
          {
            v5 = CFStringCreateWithBytes(0, v2 + 8, v4 - 1, 0x8000100u, 0);
            free(v2);
            v7 = v5;
          }
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

  objc_storeStrong(&location, 0);
  return v7;
}

uint64_t sub_100011EA8(uint64_t result, int a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 32;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

uint64_t sub_100011EFC(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

void sub_100011F84(void **a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  sub_100011FE4(a1[4], location[0]);
  objc_storeStrong(location, 0);
}

void sub_100011FE4(void *a1, void *a2)
{
  v59 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  dispatch_assert_queue_V2(qword_100028E68);
  context = objc_autoreleasePoolPush();
  v57 = 0;
  v56 = xpc_get_type(location);
  if (v56 == &_xpc_type_error)
  {
    objc_storeStrong(v59, 0);
    v55 = 1;
    goto LABEL_60;
  }

  if (v56 != &_xpc_type_dictionary)
  {
    __assert_rtn("GSSCred_peer_event_handler", "server.m", 282, "type == XPC_TYPE_DICTIONARY");
  }

  string = xpc_dictionary_get_string(location, "impersonate");
  if (string)
  {
    v2 = strlen(string);
    v53 = CFStringCreateWithBytes(0, string, v2, 0x8000100u, 0);
    if (v53 && !CFEqual(v59[1], v53))
    {
      if ((off_100028D28(v59, "com.apple.private.accounts.bundleidspoofing") & 1) == 0)
      {
        xpc_connection_cancel(*v59);
        CFRelease(v53);
        v53 = 0;
        v55 = 1;
        goto LABEL_60;
      }

      if (v59[1])
      {
        CFRelease(v59[1]);
        v59[1] = 0;
      }

      v59[1] = CFRetain(v53);
      *(v59 + 64) = 1;
      *(v59 + 65) = 0;
      v52 = sub_10000E120();
      v51 = 2;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        log = v52;
        type = v51;
        CStringPtr = CFStringGetCStringPtr(v59[1], 0x8000100u);
        atoken = *(v59 + 3);
        v3 = audit_token_to_pid(&atoken);
        sub_100012B78(v61, CStringPtr, v3);
        _os_log_debug_impl(&_mh_execute_header, log, type, "impersonating app: %s, %d", v61, 0x12u);
      }

      objc_storeStrong(&v52, 0);
    }

    if (v53)
    {
      CFRelease(v53);
      v53 = 0;
    }
  }

  v49 = [NSString stringWithFormat:@"%@ (%@)", v59[2], v59[1]];
  v39 = sub_10000E120();
  sub_100012BCC(v39, location, *(v59[7] + 16), v49, @"Request received");

  __s1 = xpc_dictionary_get_string(location, "command");
  if (__s1)
  {
    v4 = strcmp(__s1, "wakeup");
    if (v4)
    {
      if (!strcmp(__s1, "create"))
      {
        reply = xpc_dictionary_create_reply(location);
        v7 = v57;
        v57 = reply;

        sub_1000031B4(v59, location, v57);
      }

      else if (!strcmp(__s1, "delete"))
      {
        v8 = xpc_dictionary_create_reply(location);
        v9 = v57;
        v57 = v8;

        sub_1000058AC(v59, location, v57);
      }

      else if (!strcmp(__s1, "delete-all"))
      {
        v10 = xpc_dictionary_create_reply(location);
        v11 = v57;
        v57 = v10;

        sub_100009454(v59, location, v57);
      }

      else if (!strcmp(__s1, "setattributes"))
      {
        v12 = xpc_dictionary_create_reply(location);
        v13 = v57;
        v57 = v12;

        sub_100005F88(v59, location, v57);
      }

      else if (!strcmp(__s1, "fetch"))
      {
        v14 = xpc_dictionary_create_reply(location);
        v15 = v57;
        v57 = v14;

        sub_100007940(v59, location, v57);
      }

      else if (!strcmp(__s1, "move"))
      {
        v16 = xpc_dictionary_create_reply(location);
        v17 = v57;
        v57 = v16;

        sub_1000083F4(v59, location, v57);
      }

      else if (!strcmp(__s1, "query"))
      {
        v18 = xpc_dictionary_create_reply(location);
        v19 = v57;
        v57 = v18;

        sub_100007CEC(v59, location, v57);
      }

      else if (!strcmp(__s1, "default"))
      {
        v20 = xpc_dictionary_create_reply(location);
        v21 = v57;
        v57 = v20;

        sub_100008224(v59, location, v57);
      }

      else if (!strcmp(__s1, "retain-transient"))
      {
        v22 = xpc_dictionary_create_reply(location);
        v23 = v57;
        v57 = v22;

        sub_1000097D4(v59, location, v57);
      }

      else if (!strcmp(__s1, "release-transient"))
      {
        v24 = xpc_dictionary_create_reply(location);
        v25 = v57;
        v57 = v24;

        sub_100009DF4(v59, location, v57);
      }

      else if (!strcmp(__s1, "status"))
      {
        v26 = xpc_dictionary_create_reply(location);
        v27 = v57;
        v57 = v26;

        sub_1000091C0(v59, location, v57);
      }

      else if (!strcmp(__s1, "doauth"))
      {
        v28 = xpc_dictionary_create_reply(location);
        v29 = v57;
        v57 = v28;

        sub_100006A58(v59, location, v57);
      }

      else if (!strcmp(__s1, "doscram"))
      {
        v30 = xpc_dictionary_create_reply(location);
        v31 = v57;
        v57 = v30;

        sub_100006CE0(v59, location, v57);
      }

      else if (!strcmp(__s1, "add-challenge"))
      {
        v32 = xpc_dictionary_create_reply(location);
        v33 = v57;
        v57 = v32;

        sub_100006F58(v59, location, v57);
      }

      else if (!strcmp(__s1, "check-challenge"))
      {
        v34 = xpc_dictionary_create_reply(location);
        v35 = v57;
        v57 = v34;

        sub_100007708(v59, location, v57);
      }

      else
      {
        v44 = sub_10000E120();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          sub_100012F0C(v60, __s1);
          _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "peer sent invalid command %s", v60, 0xCu);
        }

        objc_storeStrong(&v44, 0);
        xpc_connection_cancel(*v59);
      }
    }
  }

  else
  {
    oslog = sub_10000E120();
    v46 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v37 = oslog;
      v38 = v46;
      sub_100001A10(v45);
      _os_log_error_impl(&_mh_execute_header, v37, v38, "peer sent invalid no command", v45, 2u);
    }

    objc_storeStrong(&oslog, 0);
    xpc_connection_cancel(*v59);
  }

  if (v57)
  {
    v36 = sub_10000E120();
    sub_100012BCC(v36, v57, *(v59[7] + 16), v49, @"Reply to be sent");

    xpc_connection_send_message(*v59, v57);
  }

  off_100028D70(v4, v5);
  objc_storeStrong(&v49, 0);
  v55 = 0;
LABEL_60:
  objc_storeStrong(&v57, 0);
  objc_autoreleasePoolPop(context);
  if (!v55)
  {
    v55 = 0;
  }

  objc_storeStrong(&location, 0);
}

uint64_t sub_100012B78(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

void sub_100012BCC(void *a1, void *a2, int a3, void *a4, void *a5)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v29 = 0;
  objc_storeStrong(&v29, a2);
  v28 = a3;
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v26 = 0;
  objc_storeStrong(&v26, a5);
  v33 = _CFXPCCreateCFObjectFromXPCObject();
  v18 = v33;
  v5 = v33;
  v25 = v18;
  v24 = [v25 mutableCopy];
  v23 = [v24 objectForKeyedSubscript:@"attributes"];
  if (v23)
  {
    [v24 setObject:0 forKeyedSubscript:@"attributes"];
    v22 = 0;
    v13 = v23;
    TypeID = CFStringGetTypeID();
    key = sub_10000A548(v13, @"kHEIMAttrType", TypeID, &v22);
    if (key)
    {
      Value = CFDictionaryGetValue(qword_100028DE8, key);
      if (Value)
      {
        v32 = Value[6](v23);
        v11 = v32;
        v7 = v32;
        v12 = v11;
        [v24 setObject:? forKeyedSubscript:?];
      }
    }

    else
    {
      v31 = sub_10000B1A8(v23);
      v9 = v31;
      v8 = v31;
      v10 = v9;
      [v24 setObject:? forKeyedSubscript:?];
    }
  }

  oslog = location;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100012F4C(v34, v26, v28, v27, v24);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%@: %u, %@, %@", v34, 0x26u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&location, 0);
}

uint64_t sub_100012F0C(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_100012F4C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 64;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 64;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

id sub_1000136C0()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_100028EA0;
  v13 = qword_100028EA0;
  if (!qword_100028EA0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000139B4;
    v6 = &unk_100025158;
    v7 = &v9;
    sub_1000139B4(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

id sub_1000138C4()
{
  v2 = sub_100013C20();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_1000139B4(uint64_t a1)
{
  sub_100013A5C();
  Class = objc_getClass("MCProfileConnection");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_100028EA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100013A5C()
{
  v2 = 0;
  v1 = sub_100013AD8(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t sub_100013AD8(uint64_t a1)
{
  v10 = a1;
  v8 = qword_100028EA8;
  v9 = qword_100028EA8;
  if (!qword_100028EA8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100013B8C;
    v6 = &unk_100025110;
    v7 = v10;
    sub_100013B8C(&v2);
  }

  return qword_100028EA8;
}

uint64_t sub_100013B8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100028EA8 = result;
  return result;
}

uint64_t sub_100013C20()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_100028EB0;
  v13 = qword_100028EB0;
  if (!qword_100028EB0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100013D28;
    v6 = &unk_100025158;
    v7 = &v9;
    sub_100013D28(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_100013D28(uint64_t a1)
{
  v1 = sub_100013A5C();
  v2 = dlsym(v1, "MCManagedAppsChangedNotification");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100028EB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100013D94(uint64_t a1, char *a2)
{
  v12 = a1;
  v11 = a2;
  v2 = CFGetTypeID(a2);
  if (v2 != sub_10000F748())
  {
    heim_abort();
  }

  sub_100015254();
  v10 = 0;
  v9 = v11;
  pthread_mutex_lock((v11 + 24));
  if (*(v11 + 2))
  {
    v10 = CFRetain(*(v9 + 2));
  }

  pthread_mutex_unlock((v9 + 24));
  if (v10)
  {
    block = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_100013ED0;
    v7 = &unk_100025110;
    v8 = v10;
    dispatch_sync(qword_100028EB8, &block);
    if (v10)
    {
      CFRelease(v10);
    }
  }
}

void sub_100013ED0(uint64_t a1)
{
  v20 = a1;
  v19 = a1;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  pthread_mutex_lock((*(a1 + 32) + 40));
  heim_ipc_event_cancel(*(*(a1 + 32) + 112));
  *(*(a1 + 32) + 120) = 0;
  pthread_mutex_unlock((*(a1 + 32) + 40));
  v1 = CFDictionaryGetValue(*(*(a1 + 32) + 24), @"kHEIMAttrClientName");
  v2 = v17;
  v17 = v1;

  location = sub_10000E120();
  v14 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    sub_100003F54(v25, v17);
    _os_log_debug_impl(&_mh_execute_header, location, v14, "renew_func: %@", v25, 0xCu);
  }

  objc_storeStrong(&location, 0);
  v18 = [qword_100028DA8 refreshForCred:*(a1 + 32) expireTime:&v16];
  if (v18 == -1765328360 || v18 == -1765328353)
  {
LABEL_10:
    v13 = sub_10000E120();
    v12 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100003F54(v24, v17);
      _os_log_debug_impl(&_mh_execute_header, v13, v12, "cache: %@ got auth failed, stop renewing", v24, 0xCu);
    }

    objc_storeStrong(&v13, 0);
    pthread_mutex_lock((*(a1 + 32) + 40));
    *(*(a1 + 32) + 144) = 1;
    pthread_mutex_unlock((*(a1 + 32) + 40));
    goto LABEL_22;
  }

  if (v18 != -1765328352)
  {
    if (v18 != -1765328343)
    {
      if (v18 == -1765328243)
      {
        v9 = sub_10000E120();
        v8 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_100003F54(v22, v17);
          _os_log_debug_impl(&_mh_execute_header, v9, v8, "cache not found, stop renewing: %@", v22, 0xCu);
        }

        objc_storeStrong(&v9, 0);
        pthread_mutex_lock((*(a1 + 32) + 40));
        *(*(a1 + 32) + 144) = 1;
        pthread_mutex_unlock((*(a1 + 32) + 40));
      }

      else if (v18)
      {
        sub_1000143E8(*(a1 + 32), 1);
        pthread_mutex_lock((*(a1 + 32) + 40));
        *(*(a1 + 32) + 144) = 2;
        pthread_mutex_unlock((*(a1 + 32) + 40));
      }

      else
      {
        v7 = sub_10000E120();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v5 = v17;
          v4 = v16;
          v3 = time(0);
          sub_100011EFC(v21, v5, v4 - v3);
          _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "cache: %@ got new tickets (expire in %d seconds)", v21, 0x12u);
        }

        objc_storeStrong(&v7, 0);
      }

      goto LABEL_22;
    }

    goto LABEL_10;
  }

  oslog = sub_10000E120();
  v10 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100003F54(v23, v17);
    _os_log_debug_impl(&_mh_execute_header, oslog, v10, "The ticket has expired, stop renewing: %@", v23, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  pthread_mutex_lock((*(a1 + 32) + 40));
  *(*(a1 + 32) + 144) = 1;
  pthread_mutex_unlock((*(a1 + 32) + 40));
LABEL_22:
  objc_storeStrong(&v17, 0);
}

uint64_t sub_1000143E8(uint64_t a1, char a2)
{
  v15 = a1;
  v14 = a2;
  v13 = time(0) + qword_100028DA0;
  if (v14)
  {
    v13 = time(0) + 300;
  }

  pthread_mutex_lock((v15 + 40));
  v12 = *(v15 + 128);
  if (time(0) + 60 <= v12)
  {
    if (v13 > v12 - 60)
    {
      v13 = v12 - 60;
    }

    oslog = sub_10000E120();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v4 = time(0);
      sub_100011EFC(v17, v15, v13 - v4);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%@: will try to renew credentals in %d seconds", v17, 0x12u);
    }

    objc_storeStrong(&oslog, 0);
    heim_ipc_event_set_time(*(v15 + 112), v13);
    *(v15 + 104) = v13;
    return pthread_mutex_unlock((v15 + 40));
  }

  else
  {
    v11 = sub_10000E120();
    v10 = 2;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      log = v11;
      type = v10;
      v16 = CFUUIDCreateString(0, *(v15 + 16));
      v2 = v16;
      v7 = v16;
      v9 = v7;
      sub_100003F54(v18, v9);
      _os_log_debug_impl(&_mh_execute_header, log, type, "%@: will expire before next attempt", v18, 0xCu);

      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
    return pthread_mutex_unlock((v15 + 40));
  }
}

void sub_10001469C(uint64_t a1, char *a2)
{
  v12 = a1;
  v11 = a2;
  v2 = CFGetTypeID(a2);
  if (v2 != sub_10000F748())
  {
    heim_abort();
  }

  sub_100015254();
  v10 = 0;
  v9 = v11;
  pthread_mutex_lock((v11 + 24));
  if (*(v11 + 2))
  {
    v10 = CFRetain(*(v9 + 2));
  }

  pthread_mutex_unlock((v9 + 24));
  if (v10)
  {
    block = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_1000147D8;
    v7 = &unk_100025110;
    v8 = v10;
    dispatch_sync(qword_100028EB8, &block);
    if (v10)
    {
      CFRelease(v10);
    }
  }
}

void sub_1000147D8(uint64_t a1)
{
  v22 = a1;
  v21 = a1;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  pthread_mutex_lock((*(a1 + 32) + 40));
  heim_ipc_event_cancel(*(*(a1 + 32) + 112));
  *(*(a1 + 32) + 120) = 0;
  if (*(*(a1 + 32) + 152))
  {
    pthread_mutex_unlock((*(a1 + 32) + 40));
    v2 = CFDictionaryGetValue(*(*(a1 + 32) + 24), @"kHEIMAttrClientName");
    v3 = v19;
    v19 = v2;

    location = sub_10000E120();
    v15 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      sub_100003F54(v26, v19);
      _os_log_debug_impl(&_mh_execute_header, location, v15, "expire_func: %@", v26, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v20 = [qword_100028DA8 acquireForCred:*(a1 + 32) expireTime:&v18];
    if (v20 == -1765328360 || v20 == -1765328353 || v20 == -1765328343)
    {
      oslog = sub_10000E120();
      v13 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_100003F54(v25, v19);
        _os_log_debug_impl(&_mh_execute_header, oslog, v13, "cache: %@ got bad password, stop renewing", v25, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      sub_100014CC0(*(a1 + 32), 1);
    }

    else if (v20 == -1765328243)
    {
      v12 = sub_10000E120();
      v11 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100003F54(v24, v19);
        _os_log_debug_impl(&_mh_execute_header, v12, v11, "cache not found, stop renewing: %@", v24, 0xCu);
      }

      objc_storeStrong(&v12, 0);
      sub_100014CC0(*(a1 + 32), 1);
    }

    else if (v20)
    {
      pthread_mutex_lock((*(a1 + 32) + 40));
      v6 = *(a1 + 32);
      v5 = time(0);
      sub_100014F40(v6, v5 + 300);
      pthread_mutex_unlock((*(a1 + 32) + 40));
      sub_100014CC0(*(a1 + 32), 2);
    }

    else
    {
      v10 = sub_10000E120();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v8 = v19;
        v7 = v18;
        v4 = time(0);
        sub_100011EFC(v23, v8, v7 - v4);
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "cache: %@ got new tickets (expire in %d seconds)", v23, 0x12u);
      }

      objc_storeStrong(&v10, 0);
      pthread_mutex_lock((*(a1 + 32) + 40));
      *(*(a1 + 32) + 128) = v18;
      pthread_mutex_unlock((*(a1 + 32) + 40));
      sub_100014CC0(*(a1 + 32), 3);
    }

    off_100028DB0(&stru_100025190);
    v17 = 0;
  }

  else
  {
    v1 = pthread_mutex_unlock((*(a1 + 32) + 40));
    if (*(*(*(a1 + 32) + 32) + 40))
    {
      (*(*(*(a1 + 32) + 32) + 40))(v1);
    }

    v17 = 1;
  }

  objc_storeStrong(&v19, 0);
}

uint64_t sub_100014CC0(uint64_t a1, int a2)
{
  v17 = a1;
  v16 = a2;
  v15 = sub_10000E120();
  v14 = 2;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    log = v15;
    type = v14;
    v18 = CFUUIDCreateString(0, *(v17 + 16));
    v2 = v18;
    v10 = v18;
    v13 = v10;
    sub_100003F54(v19, v13);
    _os_log_debug_impl(&_mh_execute_header, log, type, "cred_update_acquire_status: %@", v19, 0xCu);

    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v15, 0);
  pthread_mutex_lock((v17 + 40));
  *(v17 + 144) = v16;
  if (v16)
  {
    switch(v16)
    {
      case 1:
        *(v17 + 120) = 0;
        heim_ipc_event_cancel(*(v17 + 136));
        break;
      case 2:
        v6 = v17;
        v4 = time(0);
        sub_100014F40(v6, v4 + 300);
        break;
      case 3:
        v11 = time(0);
        if (*(v17 + 128) <= v11)
        {
          *(v17 + 120) = 0;
        }

        else
        {
          v12 = *(v17 + 128);
          if (v12 - v11 > 300)
          {
            v12 -= 300;
          }

          sub_100014F40(v17, v12);
        }

        break;
    }
  }

  else
  {
    v7 = v17;
    v3 = time(0);
    sub_100014F40(v7, v3 + 2);
  }

  return pthread_mutex_unlock((v17 + 40));
}

void sub_100014F40(uint64_t a1, time_t a2)
{
  v20 = a1;
  v19 = a2;
  if (!a2)
  {
    v19 = time(0);
LABEL_7:
    *(v20 + 120) = v19;
    heim_ipc_event_set_time(*(v20 + 136), v19);
    v15 = sub_10000E120();
    v14 = 2;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v7 = v15;
      v8 = v14;
      v21 = CFUUIDCreateString(0, *(v20 + 16));
      v3 = v21;
      v9 = v21;
      v6 = v9;
      v13 = v6;
      v5 = v19;
      v4 = time(0);
      sub_100011EFC(v23, v6, v5 - v4);
      _os_log_debug_impl(&_mh_execute_header, v7, v8, "%@: will try to acquire credentals in %d seconds", v23, 0x12u);

      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v15, 0);
    return;
  }

  if (v19 >= time(0))
  {
    goto LABEL_7;
  }

  *(v20 + 120) = 0;
  v18 = sub_10000E120();
  v17 = 2;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    log = v18;
    type = v17;
    v22 = CFUUIDCreateString(0, *(v20 + 16));
    v2 = v22;
    v12 = v22;
    v16 = v12;
    sub_100003F54(v24, v16);
    _os_log_debug_impl(&_mh_execute_header, log, type, "%@: acquire time is in the past", v24, 0xCu);

    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&v18, 0);
}

void sub_100015254()
{
  predicate = &unk_100028EC0;
  block = 0;
  objc_storeStrong(&block, &stru_1000251B0);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
}

void sub_1000152C4(id a1)
{
  v1 = dispatch_queue_create("com.apple.GSSCred.event_work", 0);
  v2 = qword_100028EB8;
  qword_100028EB8 = v1;
}

void sub_100015524(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = sub_10000E120();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_10000DDE8(v3, *(a1 + 32));
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "connection interrupted: %u", v3, 8u);
  }

  objc_storeStrong(oslog, 0);
}

void sub_100015604(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = sub_10000E120();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_10000DDE8(v3, *(a1 + 32));
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "connection invalidated: %u", v3, 8u);
  }

  objc_storeStrong(oslog, 0);
}

id sub_100016180(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v68 = 0;
  v67 = 32;
  v66 = 0;
  v65 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    heim_abort();
  }

  v64 = [location length];
  v63 = 16;
  if (SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, bytes))
  {
    abort();
  }

  if (SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, v79))
  {
    abort();
  }

  v62 = 128;
  v61 = sub_10001C5E8(bytes, 32, 13, -1, &v78, &v62, 0, v1, v13, v14, v15, v16, v17, obja, v19, v20, v21, v22, v23, v25, v26, v28, v29, __smax, __n, __s, v33, v35, v37, v38, v40, v42, v43, v44, v45, log);
  if (v61)
  {
    oslog = sub_10000E120();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10000DDE8(v77, v61);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "Error with wrap key: %d", v77, 8u);
    }

    objc_storeStrong(&oslog, 0);
    if (!qword_100028EC8)
    {
      v2 = os_transaction_create();
      v3 = qword_100028EC8;
      qword_100028EC8 = v2;
    }

    v70 = 0;
    v58 = 1;
  }

  else
  {
    if (qword_100028EC8)
    {
      objc_storeStrong(&qword_100028EC8, 0);
    }

    if (v62 > 0 && v62 <= 0x80)
    {
      v66 = v62;
      v55 = v62 + 4;
      v74 = 0;
      v4 = v55 >= 0xFFFFFFFFFFFFFFF0;
      v55 += 16;
      v73 = v4;
      if (v4 || (!__CFADD__(v55, v64) ? (v5 = 0) : (v5 = 1), (v55 += v64, v72 = v5, (v5 & 1) != 0) || (!__CFADD__(v55, v63) ? (v6 = 0) : (v6 = 1), v55 += v63, v71 = v6, (v6 & 1) != 0)))
      {
        v54 = sub_10000E120();
        v53 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v39 = v54;
          v41 = v53;
          sub_100001A10(v52);
          _os_log_error_impl(&_mh_execute_header, v39, v41, "Blob size calculation would overflow", v52, 2u);
        }

        objc_storeStrong(&v54, 0);
        v70 = 0;
        v58 = 1;
      }

      else
      {
        v7 = [[NSMutableData alloc] initWithLength:v55];
        v8 = v68;
        v68 = v7;

        if (v68)
        {
          v24 = v68;
          v9 = v68;
          v48 = [v24 mutableBytes];
          __memcpy_chk();
          __memcpy_chk();
          v48 += v66 + 4;
          __memcpy_chk();
          v48 += 16;
          v27 = location;
          v10 = location;
          [v27 bytes];
          v65 = CCCryptorGCMOneshotEncrypt();
          memset_s(bytes, 0, 32, 0x20uLL);
          if (!v65 && v63 == 16)
          {
            v70 = v68;
            v58 = 1;
          }

          else
          {
            v47 = sub_10000E120();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              sub_10000DDE8(v75, v65);
              _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Encryption error: %d", v75, 8u);
            }

            objc_storeStrong(&v47, 0);
            v70 = 0;
            v58 = 1;
          }
        }

        else
        {
          v51 = sub_10000E120();
          v50 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v34 = v51;
            v36 = v50;
            sub_100001A10(v49);
            _os_log_error_impl(&_mh_execute_header, v34, v36, "Failed to allocate memory for blob", v49, 2u);
          }

          objc_storeStrong(&v51, 0);
          v70 = 0;
          v58 = 1;
        }
      }
    }

    else
    {
      v57 = sub_10000E120();
      v56 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_10000DDE8(v76, v62);
        _os_log_error_impl(&_mh_execute_header, v57, v56, "Wrapped key size error: %d", v76, 8u);
      }

      objc_storeStrong(&v57, 0);
      v70 = 0;
      v58 = 1;
    }
  }

  objc_storeStrong(&v68, 0);
  objc_storeStrong(&location, 0);
  v11 = v70;

  return v11;
}

id sub_1000168C8(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v64 = 32;
  v63 = 22;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  if (location)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = [location length];
      v17 = location;
      v1 = location;
      v49 = [v17 bytes];
      v48 = 0;
      v47 = v50;
      v46 = 16;
      if (v50 >= 0x10)
      {
        v47 -= v46;
        if (v47 >= 4)
        {
          v48 = *v49++;
          v47 -= 4;
          if (v47 >= v48)
          {
            if (v48 > 0x80)
            {
              v37 = sub_10000E120();
              v36 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                sub_1000173F8(v71, v48, 128);
                _os_log_error_impl(&_mh_execute_header, v37, v36, "Decryption failed: Invalid wrapped key size: %u (maximum allowed: %d)", v71, 0xEu);
              }

              objc_storeStrong(&v37, 0);
              v66 = 0;
              v54 = 1;
            }

            else
            {
              v35 = 32;
              v2 = sub_10001C72C(v49, v48, 13, -1, __s, &v35);
              v63 = v2;
              if (v2)
              {
                v34 = sub_10000E120();
                v33 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  sub_10000DDE8(v70, v63);
                  _os_log_error_impl(&_mh_execute_header, v34, v33, "Decryption failed: Error unwrapping key: %d", v70, 8u);
                }

                objc_storeStrong(&v34, 0);
              }

              else if (v35 == 32)
              {
                v49 = (v49 + v48);
                v47 -= v48;
                if (v47 >= 0x10)
                {
                  v60 = v49;
                  v49 += 4;
                  v47 -= 16;
                  v3 = [NSMutableData dataWithLength:v47];
                  v4 = v58;
                  v58 = v3;

                  if (v58)
                  {
                    v61 = malloc_type_malloc(v46, 0xE207FD18uLL);
                    if (v61)
                    {
                      v8 = v58;
                      v5 = v58;
                      [v8 mutableBytes];
                      v62 = CCCryptorGCMOneshotDecrypt();
                      if (v62)
                      {
                        v22 = sub_10000E120();
                        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                        {
                          sub_10000DDE8(v67, v62);
                          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Decryption failed: CCCryptorGCMOneshotDecrypt error: %d", v67, 8u);
                        }

                        objc_storeStrong(&v22, 0);
                      }

                      else
                      {
                        objc_storeStrong(&v59, v58);
                      }
                    }

                    else
                    {
                      v25 = sub_10000E120();
                      v24 = OS_LOG_TYPE_ERROR;
                      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                      {
                        v9 = v25;
                        v10 = v24;
                        sub_100001A10(v23);
                        _os_log_error_impl(&_mh_execute_header, v9, v10, "Decryption failed: Failed to allocate memory for tag", v23, 2u);
                      }

                      objc_storeStrong(&v25, 0);
                      v63 = 12;
                    }
                  }

                  else
                  {
                    v28 = sub_10000E120();
                    v27 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                    {
                      v11 = v28;
                      v12 = v27;
                      sub_100001A10(v26);
                      _os_log_error_impl(&_mh_execute_header, v11, v12, "Decryption failed: Failed to allocate memory for plaintext", v26, 2u);
                    }

                    objc_storeStrong(&v28, 0);
                    v63 = 12;
                  }
                }

                else
                {
                  v30 = sub_10000E120();
                  v29 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    sub_100017444(v68, 16, v47);
                    _os_log_error_impl(&_mh_execute_header, v30, v29, "Decryption failed: Not enough data for IV (need %zu bytes, have %zu)", v68, 0x16u);
                  }

                  objc_storeStrong(&v30, 0);
                  v63 = 22;
                }
              }

              else
              {
                v32 = sub_10000E120();
                v31 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  sub_10000DDE8(v69, v35);
                  _os_log_error_impl(&_mh_execute_header, v32, v31, "Decryption failed: Invalid unwrapped key size: %d (expected 32)", v69, 8u);
                }

                objc_storeStrong(&v32, 0);
                v63 = 22;
              }

              memset_s(__s, 0, 32, 0x20uLL);
              free(v61);
              v66 = v59;
              v54 = 1;
            }
          }

          else
          {
            oslog = sub_10000E120();
            v38 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              sub_1000173A8(v72, v48, v47);
              _os_log_error_impl(&_mh_execute_header, oslog, v38, "Decryption failed: Blob too small for wrapped key data (need %u bytes, have %zu)", v72, 0x12u);
            }

            objc_storeStrong(&oslog, 0);
            v66 = 0;
            v54 = 1;
          }
        }

        else
        {
          v42 = sub_10000E120();
          v41 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v13 = v42;
            v14 = v41;
            sub_100001A10(v40);
            _os_log_error_impl(&_mh_execute_header, v13, v14, "Decryption failed: Blob too small for wrapped key size", v40, 2u);
          }

          objc_storeStrong(&v42, 0);
          v66 = 0;
          v54 = 1;
        }
      }

      else
      {
        v45 = sub_10000E120();
        v44 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v15 = v45;
          v16 = v44;
          sub_100001A10(v43);
          _os_log_error_impl(&_mh_execute_header, v15, v16, "Decryption failed: Blob too small for authentication tag", v43, 2u);
        }

        objc_storeStrong(&v45, 0);
        v66 = 0;
        v54 = 1;
      }
    }

    else
    {
      v53 = sub_10000E120();
      v52 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v18 = v53;
        v19 = v52;
        sub_100001A10(v51);
        _os_log_error_impl(&_mh_execute_header, v18, v19, "Decryption failed: Input is not NSData", v51, 2u);
      }

      objc_storeStrong(&v53, 0);
      v66 = 0;
      v54 = 1;
    }
  }

  else
  {
    v57 = sub_10000E120();
    v56 = 16;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      log = v57;
      type = v56;
      sub_100001A10(v55);
      _os_log_error_impl(&_mh_execute_header, log, type, "Decryption failed: Input blob is NULL", v55, 2u);
    }

    objc_storeStrong(&v57, 0);
    v66 = 0;
    v54 = 1;
  }

  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&location, 0);
  v6 = v66;

  return v6;
}

uint64_t sub_1000173A8(uint64_t result, int a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

uint64_t sub_1000173F8(uint64_t result, int a2, int a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  return result;
}

uint64_t sub_100017444(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_100017490()
{
  Mutable = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  v0 = sub_10000A8E0(@"kHEIMObjectKerberos");
  CFDictionarySetValue(v0, @"kHEIMAttrTransient", @"b");
  CFDictionarySetValue(v0, @"kHEIMAttrStatus", @"n");
  CFDictionarySetValue(v0, @"kHEIMAttrAuthTime", @"t");
  CFDictionarySetValue(v0, @"kHEIMAttrExpire", @"t");
  CFDictionarySetValue(v0, @"kHEIMAttrRenewTill", @"t");
  CFDictionarySetValue(v0, @"kHEIMAttrKerberosTicketGrantingTicket", @"b");
  CFSetAddValue(Mutable, v0);
  if (v0)
  {
    CFRelease(v0);
  }

  sub_10000A5EC(@"kHEIMTypeKerberos", Mutable, sub_10000AC34, 0, qword_100028D98, sub_10000B1A8, 0, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_10001762C()
{
  Mutable = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  theDict = sub_10000A8E0(@"kHEIMObjectKerberosAcquireCred");
  CFDictionarySetValue(theDict, @"kHEIMAttrStatus", @"n");
  CFDictionarySetValue(theDict, @"kHEIMAttrExpire", @"t");
  CFSetAddValue(Mutable, theDict);
  if (theDict)
  {
    CFRelease(theDict);
  }

  sub_10000A5EC(@"kHEIMTypeKerberosAcquireCred", Mutable, sub_10000C0C4, 0, 0, sub_10000B1A8, 1, &off_1000263B8);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_100017BF0(CFMutableDictionaryRef *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6 = [HeimCredDecoder copyNS2CF:location[0]];
  value = [HeimCredDecoder copyNS2CF:v7];
  if (v6 && value)
  {
    CFDictionarySetValue(a1[4], v6, value);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (value)
  {
    CFRelease(value);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_100018118(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a1;
  v6 = a2;
  v5[1] = a3;
  v5[0] = a3;
  v4 = [HeimCredDecoder copyCF2NS:v7];
  location = [HeimCredDecoder copyCF2NS:v6];
  if (v4 && location)
  {
    [v5[0] setObject:location forKey:v4];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v5, 0);
}

uint64_t sub_100018868(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_10001896C(id a1)
{
  v15 = a1;
  v14 = a1;
  v13 = [NSSet alloc];
  v12 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v1 = [v13 initWithObjects:{v12, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v2 = qword_100028ED8;
  qword_100028ED8 = v1;
}

id sub_100018AD4()
{
  predicate = &unk_100028EE0;
  block = 0;
  objc_storeStrong(&block, &stru_100025210);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = qword_100028EE8;

  return v0;
}

void sub_100018B5C(id a1)
{
  v1 = os_log_create("com.apple.Heimdal", "GSSCredHelper");
  v2 = qword_100028EE8;
  qword_100028EE8 = v1;
}

uint64_t sub_10001B524()
{
  if (qword_100028EF8 != -1)
  {
    sub_10001C5D4();
  }

  dispatch_sync(qword_100028F00, &stru_100025250);
  return dword_100028EF0;
}

void sub_10001B56C(id a1)
{
  if (!dword_100028EF0)
  {
    dword_100028EF0 = sub_10001B5D8("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t sub_10001B5D8(char *path, const char *a2)
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

uint64_t sub_10001B730(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10);
}

void heim_ipc_init_globals()
{
  if (qword_100028F30 != -1)
  {
    sub_10001C85C();
  }
}

void _heim_ipc_suspend_timer()
{
  v1 = qword_100028F10;
  if (!qword_100028F10)
  {
    sub_10001C870();
  }

  dispatch_suspend(v1);
}

void sub_10001B800(id a1)
{
  if (!qword_100028F10)
  {
    sub_10001C888();
  }

  sub_10001B844();
  v1 = qword_100028F10;

  dispatch_resume(v1);
}

void sub_10001B844()
{
  v0 = qword_100028F10;
  v1 = dispatch_time(0, 1000000000 * qword_100028F28);

  dispatch_source_set_timer(v0, v1, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
}

void sub_10001B8A8(id a1)
{
  qword_100028F18 = dispatch_queue_create("hiem-sipc-timer-q", 0);
  v1 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100028F18);
  qword_100028F10 = v1;
  if (!v1)
  {
    sub_10001C8A0();
  }

  dispatch_source_set_event_handler(v1, &stru_100025350);
  qword_100028F20 = dispatch_get_global_queue(0, 0);
  v2 = dispatch_queue_create("heim-ipc.event-queue", 0);
  qword_100028F08 = v2;

  dispatch_suspend(v2);
}

void *heap_new(unsigned int a1, uint64_t a2)
{
  if (!a1)
  {
    sub_10001C8B8();
  }

  v4 = malloc_type_malloc(0x18uLL, 0x10A0040319E9F20uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a2;
    *(v4 + 2) = a1;
    *(v4 + 3) = 0;
    v6 = malloc_type_malloc(16 * a1, 0xD004068C55854uLL);
    v5[2] = v6;
    if (v6)
    {
      bzero(v6, 16 * a1);
    }

    else
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

uint64_t heap_insert(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    sub_10001C8E4();
  }

  v6 = *(a1 + 12);
  if (v6 == *(a1 + 8))
  {
    v7 = 2 * v6;
    v8 = malloc_type_realloc(*(a1 + 16), 32 * v6, 0xD004068C55854uLL);
    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }

    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    v6 = *(a1 + 12);
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v9 = &unk_100028F38;
  if (a3)
  {
    v9 = a3;
  }

  v10 = &v8[16 * v6];
  *v10 = a2;
  *(v10 + 1) = v9;
  sub_10001BAB4(a1, v6);
  result = 0;
  ++*(a1 + 12);
  return result;
}

uint64_t sub_10001BAB4(uint64_t result, unsigned int a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 16);
  v5 = (v4 + 16 * a2);
  v6 = *v5;
  v7 = v5[1];
  if (a2)
  {
    do
    {
      v8 = ((v2 + 1) >> 1) - 1;
      result = (*v3)(*(v4 + 16 * v8), v6);
      v4 = *(v3 + 16);
      if (result < 1)
      {
        break;
      }

      *(v4 + 16 * v2) = *(v4 + 16 * v8);
      v4 = *(v3 + 16);
      **(v4 + 16 * v2 + 8) = v2;
      v2 = ((v2 + 1) >> 1) - 1;
    }

    while (v8);
  }

  v9 = (v4 + 16 * v2);
  *v9 = v6;
  v9[1] = v7;
  **(*(v3 + 16) + 16 * v2 + 8) = v2;
  return result;
}

uint64_t heap_head(uint64_t a1)
{
  if (*(a1 + 12))
  {
    return **(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001BB80(uint64_t result, unsigned int a2)
{
  v2 = *(result + 12);
  if (v2 <= a2)
  {
    sub_10001C910();
  }

  v4 = result;
  v5 = v2 - 1;
  *(result + 12) = v5;
  *(*(result + 16) + 16 * a2) = *(*(result + 16) + 16 * v5);
  v6 = *(result + 16);
  v7 = *(result + 12);
  v8 = (v6 + 16 * v7);
  *v8 = 0;
  v8[1] = 0;
  if (v7 != a2)
  {
    v9 = a2;
    v10 = (v6 + 16 * a2);
    v11 = *v10;
    v12 = v10[1];
    v13 = a2;
    if (a2 < v7 >> 1)
    {
      while (1)
      {
        v14 = (2 * v13) | 1;
        if (v14 >= v7)
        {
          sub_10001C93C();
        }

        v15 = (*v4)(v11, *(v6 + 16 * ((2 * v13) | 1)));
        if (2 * v13 + 2 < *(v4 + 12))
        {
          v16 = (*v4)(v11, *(*(v4 + 16) + 16 * (2 * v13 + 2)));
          if (v16 > v15)
          {
            v15 = v16;
            v14 = 2 * v13 + 2;
          }
        }

        v6 = *(v4 + 16);
        if (v15 <= 0)
        {
          break;
        }

        *(v6 + 16 * v13) = *(v6 + 16 * v14);
        v6 = *(v4 + 16);
        **(v6 + 16 * v13 + 8) = v13;
        LODWORD(v7) = *(v4 + 12);
        v13 = v14;
        if (v14 >= v7 >> 1)
        {
          v9 = v14;
          v13 = v14;
          goto LABEL_12;
        }
      }

      v9 = v13;
    }

LABEL_12:
    v17 = (v6 + 16 * v9);
    *v17 = v11;
    v17[1] = v12;
    **(*(v4 + 16) + 16 * v9 + 8) = v13;

    return sub_10001BAB4(v4, a2);
  }

  return result;
}

uint64_t heap_remove(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 12))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(*(a1 + 16) + 16 * a2 + 8) == &unk_100028F38)
  {
    sub_10001C968();
  }

  sub_10001BB80(a1, a2);
  return 0;
}

void *heim_ipc_event_create_f(uint64_t a1, uint64_t a2)
{
  if (qword_100028F58 != -1)
  {
    sub_10001C994();
  }

  result = malloc_type_malloc(0x38uLL, 0x10A004032F0517AuLL);
  if (result)
  {
    *result = -1;
    result[1] = 0;
    *(result + 4) = 0;
    result[3] = a1;
    result[5] = a2;
    result[6] = 0;
  }

  return result;
}

void *heim_ipc_event_cf_create_f(uint64_t a1, CFTypeRef cf)
{
  CFRetain(cf);
  result = heim_ipc_event_create_f(a1, cf);
  *(result + 4) |= 4u;
  return result;
}

uint64_t heim_ipc_event_set_time(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10001BE7C;
  v3[3] = &unk_100025370;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_sync(qword_100028F40, v3);
  return 0;
}

void sub_10001BE7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 16) & 2) != 0)
  {
    abort();
  }

  if (*v1 != -1)
  {
    heap_remove(qword_100028F48, *v1);
  }

  v3 = time(0);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v5 <= v3)
  {
    v5 = v3;
  }

  v4[6] = v5;
  heap_insert(qword_100028F48, v4, v4);

  sub_10001BEF8();
}

void sub_10001BEF8()
{
  v0 = heap_head(qword_100028F48);
  if (v0)
  {
    v4.tv_sec = *(v0 + 48);
    v4.tv_nsec = 0;
    v1 = qword_100028F60;
    v2 = dispatch_walltime(&v4, 0);
    dispatch_source_set_timer(v1, v2, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
  }

  else
  {
    v3 = qword_100028F60;

    dispatch_source_set_timer(v3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

void heim_ipc_event_cancel(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10001C010;
  block[3] = &unk_100025390;
  block[4] = a1;
  dispatch_sync(qword_100028F40, block);
}

void sub_10001C010(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*v1 != -1)
  {
    heap_remove(qword_100028F48, *v1);
    v1 = *(a1 + 32);
    *v1 = -1;
  }

  *(v1 + 48) = 0;

  sub_10001BEF8();
}

void heim_ipc_event_free(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10001C0E4;
  block[3] = &unk_1000253D0;
  block[4] = a1;
  dispatch_async(qword_100028F40, block);
}

void sub_10001C0E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 4);
  *(v2 + 4) = v3 | 2;
  if (*v2 != -1)
  {
    abort();
  }

  v4 = v3 & 1;
  if (*(v2 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    if ((v3 & 4) != 0)
    {
      CFRelease(*(v2 + 5));
      v2 = *(a1 + 32);
    }

    free(v2);
  }

  else
  {
    if (v3)
    {
      *(*(a1 + 32) + 8) = dispatch_semaphore_create(0);
      v2 = *(a1 + 32);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_10001C1E8;
    v6[3] = &unk_1000253B0;
    v7 = v4;
    v6[4] = v2;
    dispatch_async(qword_100028F50, v6);
  }
}

void sub_10001C1E8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    dispatch_semaphore_wait(*(*(a1 + 32) + 8), 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(*(*(a1 + 32) + 8));
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    v3(*(v2 + 40));
    v2 = *(a1 + 32);
  }

  if ((*(v2 + 16) & 4) != 0)
  {
    CFRelease(*(v2 + 40));
    v2 = *(a1 + 32);
  }

  free(v2);
}

void sub_10001C270(id a1)
{
  qword_100028F40 = dispatch_queue_create("hiem-timer-q", 0);
  qword_100028F50 = dispatch_get_global_queue(0, 0);
  qword_100028F48 = heap_new(0xBu, sub_10001C318);
  qword_100028F60 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100028F40);
  dispatch_source_set_event_handler(qword_100028F60, &stru_100025450);
  v1 = qword_100028F60;

  dispatch_resume(v1);
}

void sub_10001C328(id a1)
{
  v1 = time(0);
  v2 = heap_head(qword_100028F48);
  if (v2)
  {
    v3 = v2;
    do
    {
      if (*(v3 + 6) >= v1)
      {
        break;
      }

      heap_remove_head(qword_100028F48);
      *v3 = -1;
      v4 = v3[4];
      if (v4)
      {
        *(v3 + 6) = v1 + 10;
        heap_insert(qword_100028F48, v3, v3);
      }

      else
      {
        v3[4] = v4 | 1;
        _heim_ipc_suspend_timer();
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_10001C44C;
        block[3] = &unk_100025490;
        block[4] = v3;
        dispatch_async(qword_100028F50, block);
      }

      v3 = heap_head(qword_100028F48);
    }

    while (v3);
  }

  sub_10001BEF8();
}

void sub_10001C44C(uint64_t a1)
{
  (*(*(a1 + 32) + 24))(*(a1 + 32), *(*(a1 + 32) + 40));
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10001C4E0;
  block[3] = &unk_100025470;
  block[4] = *(a1 + 32);
  dispatch_async(qword_100028F40, block);
}

void sub_10001C4E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 16) &= ~1u;
  v3 = *(v2 + 8);
  if (v3)
  {
    dispatch_semaphore_signal(v3);
    v1 = vars8;
  }

  _heim_ipc_restart_timer();
}

char *rk_cfstring2cstring(const __CFString *a1)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {

    return strdup(CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x7F80866BuLL);
    if (v6 && !CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      free(v6);
      return 0;
    }

    return v6;
  }
}

uint64_t sub_10001C72C(const void *a1, int a2, int a3, int a4, void *a5, int *a6)
{
  sub_10001B720(__stack_chk_guard);
  v13 = sub_10001B524();
  if (v13)
  {
    v6 = (v6 + 6);
    if (a1)
    {
      if (a5)
      {
        if (a6)
        {
          v26[0] = a4;
          v26[1] = a3;
          v25 = *a6;
          v6 = sub_10001B730(v13, 0xBu, v26, 2u, a1, a2, v14, v15, a5, &v25);
          if (!v6)
          {
            *a6 = v25;
          }
        }
      }
    }
  }

  else
  {
    sub_10001B70C();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 942, "", "");
  }

  return v6;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}