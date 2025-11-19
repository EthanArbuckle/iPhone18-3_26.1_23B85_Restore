uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_100002474(CFIndex a1, const __CFString *a2, __CFString *cf, CFTypeRef *a4, CFStringRef format, va_list arguments)
{
  if (!a4)
  {
    return;
  }

  if (*a4)
  {
    if (cf && *a4 != cf)
    {

      CFRelease(cf);
    }

    return;
  }

  v10 = CFStringCreateWithFormatAndArguments(0, 0, format, arguments);
  v28 = 0;
  if (!cf)
  {
    goto LABEL_30;
  }

  v11 = CFErrorCopyUserInfo(cf);
  Value = CFDictionaryGetValue(v11, kCFErrorDescriptionKey);
  if (Value)
  {
    v13 = CFStringCompare(v10, Value, 0) == kCFCompareEqualTo;
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = 0;
  if (v11)
  {
LABEL_11:
    CFRelease(v11);
  }

LABEL_12:
  Code = CFErrorGetCode(cf);
  Domain = CFErrorGetDomain(cf);
  v16 = CFStringCompare(a2, Domain, 0);
  v18 = Code == a1 && v16 == kCFCompareEqualTo;
  v19 = cf;
  if (v18 && v13)
  {
    goto LABEL_19;
  }

  v21 = CFErrorCopyUserInfo(cf);
  if (v21)
  {
    v22 = v21;
    v23 = kSOSCountKey;
    if (CFDictionaryContainsKey(v21, kSOSCountKey) == 1)
    {
      v24 = CFDictionaryGetValue(v22, v23);
      if (v24)
      {
        valuePtr = 0;
        CFNumberGetValue(v24, kCFNumberLongType, &valuePtr);
        if (valuePtr > 199)
        {
          CFRelease(v22);
          v19 = cf;
LABEL_19:
          CFRetain(v19);
          *a4 = cf;
          CFRelease(cf);
          if (!v10)
          {
            return;
          }

          v20 = v10;
          goto LABEL_44;
        }

        v28 = valuePtr + 1;
      }
    }

    CFRelease(v22);
  }

LABEL_30:
  v25 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &v28);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v27 = Mutable;
  if (cf)
  {
    CFDictionaryAddValue(Mutable, kCFErrorUnderlyingErrorKey, cf);
  }

  if (v25)
  {
    CFDictionaryAddValue(v27, kSOSCountKey, v25);
  }

  if (v10)
  {
    CFDictionaryAddValue(v27, kCFErrorDescriptionKey, v10);
  }

  *a4 = CFErrorCreate(kCFAllocatorDefault, a2, a1, v27);
  if (v25)
  {
    CFRelease(v25);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (cf)
  {
    v20 = cf;
LABEL_44:
    CFRelease(v20);
  }
}

void sub_100002764(uint64_t a1, __CFString **a2, CFStringRef format, ...)
{
  va_start(va, format);
  cf = 0;
  if (a2)
  {
    sub_100002474(-50, kCFErrorDomainOSStatus, *a2, &cf, format, va);
    *a2 = cf;
  }

  else
  {
    sub_100002474(-50, kCFErrorDomainOSStatus, 0, &cf, format, va);
    v4 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v4);
    }
  }
}

BOOL sub_1000027EC(void *a1, void *a2, __CFString **a3)
{
  length = 0;
  if (xpc_dictionary_get_data(a1, "status", &length))
  {
    v16 = 0;
    cf = 0;
    data = xpc_dictionary_get_data(a1, "status", &v16);
    if (data)
    {
      v7 = data + v16;
      SecCFAllocatorZeroize();
      if (der_decode_plist() != v7)
      {
        v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"trailing garbage after der decoded object for key %s", "status");
        sub_100002764(v8, a3, @"%@", v8);
        if (a3)
        {
          v9 = secLogObjForScope();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *a3;
            *buf = 138412290;
            v19 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "xpc: %@", buf, 0xCu);
          }
        }

        v11 = secLogObjForScope();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v19 = v8;
          v20 = 1024;
          v21 = 1405091842;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Simulating crash, reason: %@, code=%08x", buf, 0x12u);
        }

        getpid();
        SimulateCrash();
        if (v8)
        {
          CFRelease(v8);
        }

        v12 = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(v12);
        }
      }

      cc_clear();
      v13 = cf;
    }

    else
    {
      sub_100002764(0, a3, @"no object for key %s", "status");
      v13 = 0;
    }

    result = v13 != 0;
  }

  else
  {
    v13 = 0;
    result = 1;
  }

  *a2 = v13;
  return result;
}

xpc_object_t sub_100002A2C(xpc_object_t message, CFTypeRef *a2)
{
  if (qword_10000D4E8 != -1)
  {
    dispatch_once(&qword_10000D4E8, &stru_100008360);
  }

  v4 = 0;
  v5 = qword_10000D4F0;
  v6 = 1;
  v7 = -3;
  do
  {
    if ((v6 & 1) == 0)
    {
      xpc_release(v4);
    }

    v8 = xpc_connection_send_message_with_reply_sync(v5, message);
    v6 = 0;
    v9 = v8 != &_xpc_error_connection_interrupted || v7++ == 0;
    v4 = &_xpc_error_connection_interrupted;
  }

  while (!v9);
  if (xpc_get_type(v8) == &_xpc_type_error)
  {
    if (v8 == &_xpc_error_connection_invalid || v8 == &_xpc_error_connection_interrupted)
    {
      v11 = 3;
    }

    else
    {
      v11 = 4;
    }

    v12 = xpc_copy_description(v5);
    string = xpc_dictionary_get_string(v8, _xpc_error_key_description);
    sub_100002728(v11, v14, v15, a2, v16, @"%s: %s", v12, string);
    free(v12);
    xpc_release(v8);
    return 0;
  }

  return v8;
}

void sub_100002B5C(id a1)
{
  mach_service = xpc_connection_create_mach_service("com.apple.security.swcagent", 0, 0);
  xpc_connection_set_event_handler(mach_service, &stru_1000083A0);
  xpc_connection_resume(mach_service);
  qword_10000D4F0 = mach_service;
}

void sub_100002BAC(id a1, void *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_error_key_description);
  v3 = secLogObjForScope();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = string;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "got event: %s", &v4, 0xCu);
  }
}

xpc_object_t sub_100002C64(unsigned int a1, CFTypeRef *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v8 = v4;
  if (v4)
  {
    xpc_dictionary_set_uint64(v4, "operation", a1);
  }

  else
  {
    sub_100002728(3, v5, v6, a2, v7, @"xpc_dictionary_create returned NULL");
  }

  return v8;
}

BOOL sub_100002CD8(void *a1, uint64_t *a2)
{
  value = xpc_dictionary_get_value(a1, "error");
  v4 = value;
  if (a2 && value)
  {
    *a2 = SecCreateCFErrorWithXPCObject();
  }

  return v4 == 0;
}

BOOL sub_100002D24(const void *a1, uint64_t a2, CFTypeRef *a3)
{
  v6 = sub_100002C64(6u, a3);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_data(v6, "client", a1, 0x20uLL);
    if (a2)
    {
      v9 = der_sizeof_plist();
      if (v9)
      {
        v10 = v9;
        v11 = malloc_type_malloc(v9, 0xCB2622D6uLL);
        v12 = &v11[v10];
        v13 = der_encode_plist_repair();
        if (v13 && v12 > v13)
        {
          xpc_dictionary_set_data(v7, "query", v13, v12 - v13);
          free(v11);
          v14 = sub_100002A2C(v7, a3);
          if (v14)
          {
            v15 = v14;
            valuePtr = -1;
            cf = 0;
            if (!sub_100002CD8(v14, a3))
            {
              goto LABEL_22;
            }

            if (!sub_1000027EC(v15, &cf, a3))
            {
              goto LABEL_22;
            }

            v16 = cf;
            if (!cf)
            {
              goto LABEL_22;
            }

            v17 = CFGetTypeID(cf);
            if (v17 == CFBooleanGetTypeID())
            {
              v18 = CFEqual(v16, kCFBooleanTrue) != 0;
            }

            else
            {
              if (v17 != CFNumberGetTypeID() || CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr))
              {
                goto LABEL_21;
              }

              v18 = -1;
            }

            valuePtr = v18;
LABEL_21:
            CFRelease(v16);
LABEL_22:
            v19 = valuePtr != 0;
            xpc_release(v15);
            goto LABEL_17;
          }
        }

        else
        {
          free(v11);
        }
      }
    }

    else
    {
      sub_100002764(v8, a3, @"object for key %s is NULL", "query");
    }

    v19 = 0;
LABEL_17:
    xpc_release(v7);
    return v19;
  }

  return 0;
}