void start()
{
  v0 = objc_autoreleasePoolPush();
  sub_10000110C();
  dispatch_main();
}

void sub_10000110C()
{
  mach_service = xpc_connection_create_mach_service("com.apple.security.swcagent", 0, 1uLL);
  v1 = qword_10000C300;
  qword_10000C300 = mach_service;

  if (!qword_10000C300)
  {
    v3 = sub_100002C54("SecCritical");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "swcagent failed to register xpc listener, exiting", v4, 2u);
    }

    abort();
  }

  xpc_connection_set_event_handler(qword_10000C300, &stru_1000085E0);
  v2 = qword_10000C300;

  xpc_connection_resume(v2);
}

void sub_1000011CC(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_connection)
  {
    v14 = 0u;
    v15 = 0u;
    xpc_connection_get_audit_token();
    memset(&token, 0, sizeof(token));
    v3 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
    if (v3)
    {
      v4 = v3;
      v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.private.associated-domains", 0);
      if (v5)
      {
        v6 = v5;
        v7 = CFGetTypeID(v5);
        if (CFBooleanGetTypeID() == v7)
        {
          Value = CFBooleanGetValue(v6);
          CFRelease(v6);
          if (Value)
          {
            CFRelease(v4);
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = sub_100001418;
            handler[3] = &unk_100008630;
            v9 = v2;
            v13 = v9;
            xpc_connection_set_event_handler(v9, handler);
            xpc_connection_resume(v9);

            goto LABEL_15;
          }
        }

        else
        {
          CFRelease(v6);
        }
      }

      v11 = sub_100002C54("SecError");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        token.val[0] = 138412546;
        *&token.val[1] = v4;
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = @"com.apple.private.associated-domains";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "client %@ lacks entitlement %@", &token, 0x16u);
      }

      CFRelease(v4);
    }

    else
    {
      v10 = sub_100002C54("SecError");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        token.val[0] = 138412290;
        *&token.val[1] = v2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "can't get sectask of connection %@", &token, 0xCu);
      }
    }

    xpc_connection_cancel(v2);
  }

LABEL_15:
}

void sub_100001418(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v4 = dispatch_get_global_queue(0, 0);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000014F4;
    v5[3] = &unk_100008608;
    v6 = *(a1 + 32);
    v7 = v3;
    dispatch_async(v4, v5);
  }
}

void sub_1000014F4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  cf = 0;
  if (xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    sub_100004168(1, @"com.apple.security.xpc", v4, &cf, v5, @"Messages expect to be xpc dictionary, got: %@", v3);
    v6 = sub_100002C54("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      buf[0].val[0] = 138412546;
      *&buf[0].val[1] = 0;
      LOWORD(buf[0].val[3]) = 2112;
      *(&buf[0].val[3] + 2) = cf;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: returning error: %@", buf, 0x16u);
    }

    v7 = sub_1000060E0(cf);
    reply_with_format = xpc_create_reply_with_format();
    v9 = 0;
    v10 = 0;
    goto LABEL_92;
  }

  reply_with_format = xpc_dictionary_create_reply(v3);
  uint64 = xpc_dictionary_get_uint64(v3, "operation");
  v12 = sub_100002C54("swcagent_xpc");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if ((uint64 & 0xFFFFFFF8) != 0)
    {
      v39 = @"Unknown xpc operation";
    }

    else
    {
      v39 = off_1000086D0[uint64 & 7];
    }

    buf[0].val[0] = 138412546;
    *&buf[0].val[1] = v39;
    LOWORD(buf[0].val[3]) = 2048;
    *(&buf[0].val[3] + 2) = uint64;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "operation: %@ (%llu)", buf, 0x16u);
  }

  if ((uint64 - 5) <= 1)
  {
    v13 = xpc_connection_copy_entitlement_value();

    v10 = 0;
    v9 = 0;
    if (!v13)
    {
      goto LABEL_83;
    }

    goto LABEL_8;
  }

  length = 0;
  data = xpc_dictionary_get_data(v3, "client", &length);
  if (length != 32)
  {
    sub_10000419C(-34018, &cf, @"swcagent_xpc - wrong length for client id");
LABEL_31:
    v10 = 0;
    v9 = 0;
    goto LABEL_83;
  }

  buf[0] = *data;
  token = buf[0];
  v21 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  if (!v21)
  {
    pidp = 0;
    token = buf[0];
    audit_token_to_au32(&token, 0, 0, 0, 0, 0, &pidp, 0, 0);
    sub_10000419C(-34018, &cf, @"can't get entitlement of original client pid %d", pidp);
    goto LABEL_31;
  }

  v22 = v21;
  v23 = sub_100001EBC(v21);
  if (!v23)
  {
    sub_10000419C(-34018, &cf, @"%@ lacks entitlement %@", v22, @"com.apple.developer.associated-domains");
    CFRelease(v22);
    goto LABEL_31;
  }

  CFRelease(v23);
  v9 = sub_100001EBC(v22);
  LODWORD(length) = -1431655766;
  v24 = *(v22 + 2);
  *buf[0].val = *(v22 + 1);
  *&buf[0].val[4] = v24;
  audit_token_to_au32(buf, 0, 0, 0, 0, 0, &length, 0, 0);
  v25 = length;
  v26 = objc_alloc_init(Client);
  if (v26)
  {
    bzero(buf, 0x400uLL);
    if (proc_pidpath(v25, buf, 0x400u) <= 0)
    {
      v29 = sub_100002C54("swcagent");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        token.val[0] = 67109120;
        token.val[1] = v25;
        goto LABEL_72;
      }
    }

    else
    {
      v58 = 0;
      v27 = [NSString stringWithUTF8String:buf];
      [(Client *)v26 setPath:v27];
      if (v27)
      {
        [(Client *)v26 path];
        v28 = v52 = v26;
        v29 = [NSURL fileURLWithPath:v28];

        v26 = v52;
        if (v29)
        {
          v51 = _CFBundleCopyBundleURLForExecutableURL();
          if (!v51)
          {
            goto LABEL_76;
          }

          v30 = [NSBundle bundleWithURL:v51];
          [(Client *)v52 setBundle:v30];
          if (!v30)
          {
            goto LABEL_76;
          }

          v31 = [(Client *)v52 bundle];
          v32 = [v31 bundleIdentifier];
          [(Client *)v52 setClient:v32];

          v26 = v52;
          if (v32)
          {
            [(Client *)v52 setClient_type:0];
            v33 = [(Client *)v52 client];
            v34 = [LSApplicationProxy applicationProxyForIdentifier:v33];
            v35 = [v34 localizedNameForContext:0];
            [(Client *)v52 setClient_name:v35];

            v26 = v52;
            v10 = v52;
          }

          else
          {
LABEL_76:
            v48 = sub_100002C54("swcagent");
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              token.val[0] = 136315138;
              *&token.val[1] = buf;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Refusing client without bundle identifier (%s)", &token, 0xCu);
            }

            v10 = 0;
          }

          goto LABEL_80;
        }
      }

      v29 = sub_100002C54("swcagent");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        token.val[0] = 67109120;
        token.val[1] = v25;
LABEL_72:
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Refusing client without path (pid %d)", &token, 8u);
      }
    }

    v10 = 0;
LABEL_80:

    goto LABEL_81;
  }

  v10 = 0;
LABEL_81:

  CFRelease(v22);
  if (!v9 || !v10)
  {
    goto LABEL_83;
  }

LABEL_8:
  if (uint64 > 3)
  {
    if (uint64 > 5)
    {
      if (uint64 == 6)
      {
        v44 = sub_100002A68(v3, &cf);
        if (v44)
        {
          buf[0].val[0] = 1;
          v45 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, buf);
          sub_100002748(reply_with_format, v45, &cf, v46, v47);
          if (v45)
          {
            CFRelease(v45);
          }
        }

        if (qword_10000C308)
        {
          CFRelease(qword_10000C308);
        }

        qword_10000C308 = v44;
      }

      else if (uint64 == 7)
      {
        if (qword_10000C338 != -1)
        {
          dispatch_once(&qword_10000C338, &stru_1000086B0);
        }

        if (off_10000C330)
        {
          v37 = off_10000C330();
          v38 = &kCFBooleanTrue;
          if ((v37 & 1) == 0)
          {
            v38 = &kCFBooleanFalse;
          }
        }

        else
        {
          v38 = &kCFBooleanFalse;
        }

        sub_100002748(reply_with_format, *v38, &cf, v14, v15);
      }

      goto LABEL_83;
    }

    if (uint64 == 4)
    {
      v17 = sub_1000029CC(v3, &cf);
      v41 = sub_100002C54("SecError");
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        buf[0].val[0] = 138412290;
        *&buf[0].val[1] = v17;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "swcagent: unexpectedly got swca_select_request_id, items: %@", buf, 0xCu);
      }

      if (!v17)
      {
        goto LABEL_83;
      }

      goto LABEL_58;
    }

    sub_10000419C(-50, &cf, @"object for key %s is NULL", "status");
  }

  else
  {
    if (uint64 > 1)
    {
      if (uint64 == 2)
      {
        v42 = sub_100002A68(v3, &cf);
        if (!v42)
        {
          goto LABEL_83;
        }

        v17 = v42;
        *buf[0].val = 0;
        if (sub_100002190(v42, v10, buf))
        {
          goto LABEL_56;
        }
      }

      else
      {
        v36 = sub_100002A68(v3, &cf);
        if (!v36)
        {
          goto LABEL_83;
        }

        v17 = v36;
        *buf[0].val = 0;
        if (sub_100002020(v36, v10, buf))
        {
          goto LABEL_56;
        }
      }

LABEL_58:
      CFRelease(v17);
      goto LABEL_83;
    }

    if (uint64)
    {
      if (uint64 != 1)
      {
        goto LABEL_83;
      }

      v16 = sub_100002A68(v3, &cf);
      if (!v16)
      {
        goto LABEL_83;
      }

      v17 = v16;
      *buf[0].val = 0;
      if (!sub_1000020D8(v16, v10, buf))
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    v40 = sub_100002A68(v3, &cf);
    if (v40)
    {
      v17 = v40;
      *buf[0].val = 0;
      if (!sub_100001F68(v40, v10, buf))
      {
        goto LABEL_58;
      }

LABEL_56:
      v43 = *buf[0].val;
      if (*buf[0].val)
      {
        sub_100002748(reply_with_format, *buf[0].val, &cf, v18, v19);
        CFRelease(v43);
      }

      goto LABEL_58;
    }
  }

LABEL_83:
  if (!cf)
  {
    goto LABEL_93;
  }

  if (SecErrorGetOSStatus() != -25300)
  {
    v49 = sub_100002C54("SecError");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      if ((uint64 & 0xFFFFFFF8) != 0)
      {
        v50 = @"Unknown xpc operation";
      }

      else
      {
        v50 = off_1000086D0[uint64 & 7];
      }

      buf[0].val[0] = 138412802;
      *&buf[0].val[1] = 0;
      LOWORD(buf[0].val[3]) = 2112;
      *(&buf[0].val[3] + 2) = v50;
      HIWORD(buf[0].val[5]) = 2112;
      *&buf[0].val[6] = cf;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", buf, 0x20u);
    }
  }

  v7 = sub_1000060E0(cf);
  xpc_dictionary_set_value(reply_with_format, "error", v7);
LABEL_92:

LABEL_93:
  if (reply_with_format)
  {
    xpc_connection_send_message(v2, reply_with_format);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

const void *sub_100001EBC(__SecTask *a1)
{
  v1 = SecTaskCopyValueForEntitlement(a1, @"com.apple.developer.associated-domains", 0);
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 != CFArrayGetTypeID())
    {
LABEL_8:
      CFRelease(v2);
      return 0;
    }

    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
        v8 = CFGetTypeID(ValueAtIndex);
        if (v8 != CFStringGetTypeID())
        {
          break;
        }

        if (v5 == ++v6)
        {
          return v2;
        }
      }

      goto LABEL_8;
    }
  }

  return v2;
}

BOOL sub_100001F68(const __CFDictionary *a1, void *a2, CFNumberRef *a3)
{
  v5 = a2;
  Value = CFDictionaryGetValue(a1, kSecAttrServer);
  v6 = CFArrayCreate(kCFAllocatorDefault, &Value, 1, &kCFTypeArrayCallBacks);
  v7 = sub_10000228C(0, v5, v6);

  valuePtr = v7 & 3;
  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  *a3 = v8;
  return v8 != 0;
}

BOOL sub_100002020(const __CFDictionary *a1, void *a2, CFNumberRef *a3)
{
  v5 = a2;
  Value = CFDictionaryGetValue(a1, kSecAttrServer);
  v6 = CFArrayCreate(kCFAllocatorDefault, &Value, 1, &kCFTypeArrayCallBacks);
  v7 = sub_10000228C(3, v5, v6);

  valuePtr = v7 & 3;
  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  *a3 = v8;
  return v8 != 0;
}

BOOL sub_1000020D8(const __CFDictionary *a1, void *a2, CFNumberRef *a3)
{
  v5 = a2;
  Value = CFDictionaryGetValue(a1, kSecAttrServer);
  v6 = CFArrayCreate(kCFAllocatorDefault, &Value, 1, &kCFTypeArrayCallBacks);
  v7 = sub_10000228C(1, v5, v6);

  valuePtr = v7 & 3;
  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  *a3 = v8;
  return v8 != 0;
}

BOOL sub_100002190(const __CFDictionary *a1, void *a2, CFNumberRef *a3)
{
  v5 = a2;
  Value = CFDictionaryGetValue(a1, kSecAttrServer);
  v6 = CFArrayCreate(kCFAllocatorDefault, &Value, 1, &kCFTypeArrayCallBacks);
  v7 = sub_10000228C(2, v5, v6);

  valuePtr = v7 & 3;
  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  *a3 = v8;
  return v8 != 0;
}

void sub_100002248(id a1)
{
  v1 = dlopen("/System/Library/PrivateFrameworks/WebUI.framework/WebUI", 5);
  qword_10000C340 = v1;
  if (v1)
  {
    off_10000C330 = dlsym(v1, "WBUAutoFillGetEnabledDataClasses");
  }
}

CFOptionFlags sub_10000228C(int a1, void *a2, void *a3)
{
  v27 = a2;
  v5 = 0;
  responseFlags = 3;
  while (qword_10000C318 == -1)
  {
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_4:
    if (!dispatch_semaphore_wait(qword_10000C310, 0))
    {
      goto LABEL_7;
    }

    dispatch_semaphore_wait(qword_10000C310, 0xFFFFFFFFFFFFFFFFLL);
    v5 = 1;
  }

  dispatch_once(&qword_10000C318, &stru_100008670);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_7:
  v6 = +[NSMutableDictionary dictionary];
  if ([a3 count] == 1)
  {
    v28 = [a3 objectAtIndex:0];
  }

  else
  {
    v28 = 0;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v7 = "DELETE";
    }

    else if (v28)
    {
      v7 = "COPY";
    }

    else
    {
      v7 = "COPYALL";
    }
  }

  else if (a1)
  {
    v7 = "UPDATE";
  }

  else
  {
    v7 = "ADD";
  }

  v8 = [NSString stringWithFormat:@"SWC_REQUEST_%s", v7];
  v9 = sub_10000266C();
  v10 = [v9 localizedStringForKey:v8 value:&stru_100008A98 table:@"SharedWebCredentials"];

  v11 = [NSString stringWithFormat:@"SWC_ALLOW_%s", v7];
  v12 = [v27 client_name];
  v13 = [NSString stringWithFormat:v10, v12, v28];
  [v6 setObject:v13 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

  v14 = sub_10000266C();
  v15 = [v14 localizedStringForKey:@"SWC_INFO_MESSAGE" value:&stru_100008A98 table:@"SharedWebCredentials"];
  [v6 setObject:v15 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

  v16 = sub_10000266C();
  v17 = [v16 localizedStringForKey:@"SWC_NEVER" value:&stru_100008A98 table:@"SharedWebCredentials"];
  [v6 setObject:v17 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

  v18 = sub_10000266C();
  v19 = [v18 localizedStringForKey:v11 value:&stru_100008A98 table:@"SharedWebCredentials"];
  [v6 setObject:v19 forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];

  v20 = sub_10000266C();
  v21 = [v20 bundleURL];
  [v6 setObject:v21 forKeyedSubscript:kCFUserNotificationLocalizationURLKey];

  v22 = [v27 client];
  [v6 setObject:v22 forKeyedSubscript:SBUserNotificationAllowedApplicationsKey];

  error = -1431655766;
  v23 = CFUserNotificationCreate(0, 0.0, 0x20uLL, &error, v6);
  v24 = v23;
  if (v23 && !error)
  {
    CFUserNotificationReceiveResponse(v23, 0.0, &responseFlags);
    dispatch_semaphore_signal(qword_10000C310);
    goto LABEL_23;
  }

  dispatch_semaphore_signal(qword_10000C310);
  if (v24)
  {
LABEL_23:
    CFRelease(v24);
    v25 = responseFlags;
  }

  else
  {
    v25 = 3;
  }

  return v25;
}

id sub_10000266C()
{
  if (qword_10000C328 != -1)
  {
    dispatch_once(&qword_10000C328, &stru_100008690);
  }

  v1 = qword_10000C320;

  return v1;
}

void sub_1000026C0(id a1)
{
  qword_10000C320 = [NSBundle bundleWithPath:@"/System/Library/Frameworks/Security.framework"];

  _objc_release_x1();
}

void sub_100002708(id a1)
{
  v1 = dispatch_semaphore_create(1);
  v2 = qword_10000C310;
  qword_10000C310 = v1;

  if (!v1)
  {
    abort();
  }
}

void sub_100002748(void *a1, const __CFString *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = sub_100004C64(a2, a3, a3, a4, a5);
    if (v8)
    {
      v9 = v8;
      v10 = malloc_type_malloc(v8, 0xCB2622D6uLL);
      v11 = &v10[v9];
      v12 = sub_100004F08(a2, a3, 0, v10, v11);
      if (v12 && v11 > v12)
      {
        xpc_dictionary_set_data(a1, "status", v12, v11 - v12);
      }

      free(v10);
    }
  }

  else
  {
    sub_10000419C(-50, a3, @"object for key %s is NULL", "status");
  }
}

CFTypeRef sub_100002838(void *a1, __CFString **a2)
{
  length = 0;
  cf = 0;
  data = xpc_dictionary_get_data(a1, "query", &length);
  if (data)
  {
    v4 = data;
    v5 = data + length;
    v6 = SecCFAllocatorZeroize();
    if (sub_100004220(v6, &cf, a2, v4, v5) == v5)
    {
      v10 = cf;
    }

    else
    {
      v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"trailing garbage after der decoded object for key %s", "query");
      sub_10000419C(-50, a2, @"%@", v7);
      if (a2)
      {
        v8 = sub_100002C54("SecError");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *a2;
          *buf = 138412290;
          v15 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "xpc: %@", buf, 0xCu);
        }
      }

      sub_100005E84(v7);
      if (v7)
      {
        CFRelease(v7);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v10 = 0;
    }

    cc_clear();
  }

  else
  {
    sub_10000419C(-50, a2, @"no object for key %s", "query");
    return 0;
  }

  return v10;
}

const void *sub_1000029CC(void *a1, __CFString **a2)
{
  v3 = sub_100002838(a1, a2);
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 != CFArrayGetTypeID())
    {
      v6 = CFCopyTypeIDDescription(v5);
      sub_10000419C(-50, a2, @"object for key %s not array but %@", "query", v6);
      if (v6)
      {
        CFRelease(v6);
      }

      CFRelease(v4);
      return 0;
    }
  }

  return v4;
}

const void *sub_100002A68(void *a1, __CFString **a2)
{
  v3 = sub_100002838(a1, a2);
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 != CFDictionaryGetTypeID())
    {
      v6 = CFCopyTypeIDDescription(v5);
      sub_10000419C(-50, a2, @"object for key %s not dictionary but %@", "query", v6);
      if (v6)
      {
        CFRelease(v6);
      }

      CFRelease(v4);
      return 0;
    }
  }

  return v4;
}

const void *sub_100002B04(const __CFString *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = @"logging";
  }

  os_unfair_lock_lock_with_options();
  Mutable = qword_10000C350;
  if (!qword_10000C350)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, 0);
    qword_10000C350 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v1);
  if (!Value)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_100002C04;
    v5[3] = &unk_100008710;
    v5[4] = v1;
    sub_100003404(v1, v5);
    Value = CFDictionaryGetValue(qword_10000C350, v1);
  }

  os_unfair_lock_unlock(&unk_10000C348);
  return Value;
}

void sub_100002C04(uint64_t a1, const char *a2)
{
  v2 = qword_10000C350;
  v3 = *(a1 + 32);
  v4 = os_log_create("com.apple.securityd", a2);

  CFDictionaryAddValue(v2, v3, v4);
}

const void *sub_100002C54(const char *a1)
{
  pthread_mutex_lock(&stru_10000C2C0);
  pthread_mutex_unlock(&stru_10000C2C0);
  if (a1)
  {
    v2 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x600u);
    v3 = sub_100002B04(v2);
    if (v2)
    {
      CFRelease(v2);
    }

    return v3;
  }

  else
  {

    return sub_100002B04(0);
  }
}

uint64_t sub_100002CE4(const __CFDictionary *a1, uint64_t a2)
{
  v3 = xmmword_100006F70;
  v4 = a2;
  CFDictionaryApplyFunction(a1, sub_100002D4C, &v3);
  if (v3 == 1)
  {
    return ccder_sizeof();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002D4C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a3 == 1)
  {
    result = sub_100002D9C(result, a2, *(a3 + 16));
    if (result)
    {
      *(a3 + 8) += result;
    }

    else
    {
      *a3 = 0;
    }
  }

  return result;
}

uint64_t sub_100002D9C(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (sub_100004C64(a1, a3) && sub_100004C64(a2, a3))
  {

    return ccder_sizeof();
  }

  else
  {
    sub_100004168(-6, @"com.apple.security.cfder.error", v5, a3, v6, @"null input");
    return 0;
  }
}

uint64_t sub_100002E34(const __CFDictionary *a1, CFTypeRef *a2, char a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v13[0] = 0xAAAAAAAAAAAAAA01;
  v13[1] = a2;
  BYTE1(v13[0]) = a3;
  v13[2] = Mutable;
  v13[3] = 0;
  CFDictionaryApplyFunction(a1, sub_100003074, v13);
  if ((v13[0] & 1) == 0)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  v14.length = CFArrayGetCount(Mutable);
  v14.location = 0;
  CFArraySortValues(Mutable, v14, sub_100002FB8, 0);
  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v8 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v8 - 2);
      CFDataGetLength(ValueAtIndex);
      CFDataGetBytePtr(ValueAtIndex);
      ccder_encode_body();
      --v8;
    }

    while (v8 > 1);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  result = ccder_encode_constructed_tl();
  if (!result)
  {
    sub_100004168(-7, @"com.apple.security.cfder.error", v11, a2, v12, @"ccder failed to encode");
    return 0;
  }

  return result;
}

uint64_t sub_100002FB8(const __CFData *a1, const __CFData *a2)
{
  Length = CFDataGetLength(a1);
  v5 = CFDataGetLength(a2);
  v6 = v5;
  if ((Length & 0x8000000000000000) != 0 || v5 < 0)
  {
    if (Length >= v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (Length <= v5)
    {
      return v12;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (Length >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = Length;
    }

    BytePtr = CFDataGetBytePtr(a1);
    v9 = CFDataGetBytePtr(a2);
    v10 = memcmp(BytePtr, v9, v7);
    if (v10 <= 0 && (v10 || Length <= v6))
    {
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = Length >= v6;
      }

      v14 = !v13;
      return v14 << 63 >> 63;
    }

    else
    {
      return 1;
    }
  }
}

void sub_100003074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 == 1)
  {
    v6 = sub_100002D9C(a1, a2, *(a3 + 8));
    if (!v6)
    {
      *a3 = 0;
      return;
    }

    v7 = v6;
    Mutable = CFDataCreateMutable(*(a3 + 24), v6);
    CFDataSetLength(Mutable, v7);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v10 = *(a3 + 8);
    v11 = *(a3 + 1);
    v12 = sub_100004F08(a2, v10, v11, MutableBytePtr, &MutableBytePtr[v7]);
    sub_100004F08(a1, v10, v11, MutableBytePtr, v12);
    v13 = ccder_encode_constructed_tl();
    if (v13)
    {
      v17.length = v13 - MutableBytePtr;
      v17.location = 0;
      CFDataDeleteBytes(Mutable, v17);
      CFArrayAppendValue(*(a3 + 16), Mutable);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      sub_100004168(-7, @"com.apple.security.cfder.error", v14, v10, v15, @"ccder failed to encode");
      *a3 = 0;
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }
}

void sub_1000031C0(uint64_t a1)
{
  if (qword_10000C358 != -1)
  {
    dispatch_once(&qword_10000C358, &stru_1000087A8);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100003268;
  block[3] = &unk_100008738;
  block[4] = a1;
  dispatch_sync(qword_10000C360, block);
}

uint64_t sub_100003268(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_10000C368 != -1)
  {
    dispatch_once(&qword_10000C368, &stru_1000087E8);
  }

  v2 = qword_10000C370;
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_1000032D4(id a1)
{
  qword_10000C370 = CFCalendarCreateWithIdentifier(kCFAllocatorDefault, kCFGregorianCalendar);
  v1 = CFTimeZoneCreateWithTimeIntervalFromGMT(kCFAllocatorDefault, 0.0);
  CFCalendarSetTimeZone(qword_10000C370, v1);
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t sub_100003384(uint64_t result, int a2, UInt8 *buffer)
{
  if (buffer)
  {
    v4 = result;
    v5 = *(result + 40);
    v8 = *(v4 + 48);
    v6 = *(v4 + 64);
    usedBufLen = 0xAAAAAAAAAAAAAAAALL;
    CFStringGetBytes(v5, v8, 0x8000100u, 0, 0, buffer, v6, &usedBufLen);
    buffer[usedBufLen] = 0;
    return (*(*(v4 + 32) + 16))();
  }

  return result;
}

void sub_100003404(const __CFString *a1, uint64_t a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v8 = sub_10000354C;
  v9 = &unk_100008788;
  v10 = a2;
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v4 = CStringPtr;
    v5 = strlen(CStringPtr);
    (v8)(v7, v4, v5);
  }

  else
  {
    usedBufLen = 0;
    Length = CFStringGetLength(a1);
    v13.location = 0;
    v13.length = Length;
    CFStringGetBytes(a1, v13, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_100003384;
    v11[3] = &unk_100008760;
    v11[6] = 0;
    v11[7] = Length;
    v11[8] = usedBufLen;
    v11[4] = v7;
    v11[5] = a1;
    sub_100005F58(usedBufLen + 1, v11);
  }
}

uint64_t sub_10000355C(char **a1, unint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  if (*a1)
  {
    if (v7 >= a2)
    {
      sub_100004168(-1, @"com.apple.security.cfder.error", a3, a3, a5, @"Unexpected end of datetime");
      *a1 = 0;
    }

    else
    {
      v9 = *v7;
      v8 = v9;
      *a1 = v7 + 1;
      if ((v9 - 58) > 0xFFFFFFF5)
      {
        return (v8 - 48);
      }
    }
  }

  sub_100004168(-1, @"com.apple.security.cfder.error", a3, a3, a5, @"Not a decimal digit");
  *a1 = 0;
  return 0xFFFFFFFFLL;
}

char *sub_1000035F0(double *a1, CFTypeRef *a2, unsigned int a3, char *a4, unint64_t a5)
{
  v70 = a4;
  v67 = sub_10000355C(&v70, a5, a2, a4, a5);
  v66 = sub_10000355C(&v70, a5, a2, v7, v8);
  v65 = sub_10000355C(&v70, a5, a2, v9, v10);
  v13 = sub_10000355C(&v70, a5, a2, v11, v12);
  v16 = sub_10000355C(&v70, a5, a2, v14, v15);
  v19 = sub_10000355C(&v70, a5, a2, v17, v18);
  v22 = sub_10000355C(&v70, a5, a2, v20, v21);
  v25 = sub_10000355C(&v70, a5, a2, v23, v24);
  v28 = sub_10000355C(&v70, a5, a2, v26, v27);
  v34 = sub_10000355C(&v70, a5, a2, v29, v30);
  v35 = 0;
  v36 = v70;
  v37 = NAN;
  if (!v70 || v70 >= a5)
  {
LABEL_24:
    sub_100004168(-1, @"com.apple.security.cfder.error", v31, a2, v33, @"Invalid datetime character");
    v47 = NAN;
    if (!v35)
    {
      return v35;
    }

    goto LABEL_25;
  }

  v38 = *v70;
  if (v38 == 46)
  {
    if ((v70 + 1) < a5)
    {
      v38 = v70[1];
      if ((v38 - 58) < 0xFFFFFFF6)
      {
        v39 = @"fraction without digits";
LABEL_14:
        v41 = -1;
LABEL_23:
        sub_100004168(v41, @"com.apple.security.cfder.error", v31, a2, v33, v39);
        v35 = 0;
        goto LABEL_24;
      }

      v42 = 0;
      v43 = v70 + 2;
      v44 = 1;
      while (v43 != a5)
      {
        v45 = v38;
        v36 = v43;
        if (v44 < 0x1999999999999999)
        {
          v44 *= 10;
          v42 = (v38 & 0xF) + 10 * v42;
        }

        v46 = *v43++;
        v38 = v46;
        if ((v46 - 58) < 0xFFFFFFF6)
        {
          if (v45 == 48)
          {
            v39 = @"fraction ends in 0";
            goto LABEL_14;
          }

          v37 = v42 / v44;
          goto LABEL_8;
        }
      }
    }

    v39 = @"overflow";
    v41 = -8;
    goto LABEL_23;
  }

  v37 = 0.0;
LABEL_8:
  if (v36 >= a5)
  {
    v39 = @"Unexpected end of datetime";
    goto LABEL_14;
  }

  v35 = v36 + 1;
  v70 = v36 + 1;
  if (v38 == 90)
  {
    v47 = 0.0;
  }

  else
  {
    if (v38 == 45)
    {
      v40 = -60;
    }

    else
    {
      if (v38 != 43)
      {
        goto LABEL_24;
      }

      v40 = 60;
    }

    v64 = v40;
    v55 = sub_10000355C(&v70, a5, a2, v32, v33);
    v63 = sub_10000355C(&v70, a5, a2, v56, v57) + 10 * v55;
    v60 = sub_10000355C(&v70, a5, a2, v58, v59);
    v47 = ((sub_10000355C(&v70, a5, a2, v61, v62) + 10 * v60 + 60 * v63) * v64);
    v35 = v70;
    if (!v70)
    {
      return v35;
    }
  }

LABEL_25:
  if (v35 == a5)
  {
    v48 = (v13 + 10 * v65);
    v49 = (v19 + 10 * v16);
    v50 = (v25 + 10 * v22);
    v86[0] = 0;
    if (sub_100003A90(a3, (v66 + 10 * v67), v48, v49, v50, (v34 + 10 * v28), v86, a2))
    {
      v82 = 0;
      v83 = &v82;
      v84 = 0x2000000000;
      v85 = 0;
      v78 = 0;
      v79 = (&v77 + 4);
      v80 = 0x2000000000;
      v81 = 0;
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 0x40000000;
      v71[2] = sub_100003BB4;
      v71[3] = &unk_100008810;
      v71[4] = &v82;
      v71[5] = &v77 + 4;
      v72 = a3;
      v73 = v66 + 10 * v67;
      v74 = v48;
      v75 = v49;
      v76 = v50;
      v77 = (v34 + 10 * v28);
      sub_1000031C0(v71);
      if (v83[3])
      {
        v53 = v79[3] - v47;
      }

      else
      {
        sub_100004168(-1, @"com.apple.security.cfder.error", v51, a2, v52, @"Failed to encode date from components");
        v53 = NAN;
      }

      _Block_object_dispose(&v77 + 4, 8);
      _Block_object_dispose(&v82, 8);
      *a1 = v53;
      *a1 = v37 + v53;
    }

    else
    {
      v35 = 0;
      *a1 = NAN;
    }
  }

  else
  {
    sub_100004168(-1, @"com.apple.security.cfder.error", v31, a2, v33, @"trailing garbage at end of datetime");
    return 0;
  }

  return v35;
}

uint64_t sub_100003A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, __CFString **a8)
{
  if ((a1 & 3) != 0)
  {
    v8 = 0;
    if (!a7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  HIDWORD(v9) = -1030792151 * a1 + 85899344;
  LODWORD(v9) = HIDWORD(v9);
  if ((v9 >> 2) > 0x28F5C28)
  {
    v8 = 1;
    if (!a7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  HIDWORD(v11) = -1030792151 * a1 + 85899344;
  LODWORD(v11) = HIDWORD(v11);
  v8 = (v11 >> 4) < 0xA3D70B;
  if (a7)
  {
LABEL_6:
    *a7 = v8;
  }

LABEL_7:
  if (a6 <= 61 && a5 <= 59 && a4 <= 23 && (a2 - 13) >= 0xFFFFFFF4 && (a3 - 32) >= 0xFFFFFFE1 && (a2 != 2 || (v8 | 0x1C) >= a3) && (a2 == 2 || dword_100006FE0[a2] - dword_100006FE0[(a2 - 1)] >= a3))
  {
    return 1;
  }

  sub_10000419C(-1, a8, @"Invalid date: %i, %i, %i, %i, %i, %i, %i", a1, a2, a3, a4, a5, a6, v8);
  return 0;
}

uint64_t sub_100003BB4(uint64_t a1, CFCalendarRef calendar)
{
  result = CFCalendarComposeAbsoluteTime(calendar, (*(*(a1 + 40) + 8) + 24), "yMdHms", *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 64), *(a1 + 68));
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

uint64_t sub_100003C28(uint64_t a1, CFCalendarRef calendar)
{
  result = CFCalendarDecomposeAbsoluteTime(calendar, *(a1 + 40), "yMdHms", *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

uint64_t sub_100003C8C(const __CFNumber *a1, CFTypeRef *a2)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
  {
    if (HIBYTE(valuePtr) - 255 <= 0xFFFFFF01)
    {
      v5 = 9;
      v6 = 48;
      do
      {
        if ((v5 - 2) < 2)
        {
          break;
        }

        v7 = valuePtr >> v6;
        --v5;
        v6 -= 8;
      }

      while (HIBYTE(valuePtr) == v7);
    }

    return ccder_sizeof();
  }

  else
  {
    sub_100004168(-4, @"com.apple.security.cfder.error", v3, a2, v4, @"Unable to get number from data");
    return 0;
  }
}

uint64_t sub_100003D64(const __CFNumber *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (!CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
  {
    sub_100004168(-4, @"com.apple.security.cfder.error", v7, a2, v8, @"Unable to get number from data");
    return 0;
  }

  v9 = valuePtr;
  v10 = HIBYTE(valuePtr);
  if (HIBYTE(valuePtr) - 255 > 0xFFFFFF01)
  {
    v15 = 8;
    if (!a4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v11 = 9;
    v12 = 48;
    v13 = 1;
    while ((v11 - 2) >= 2)
    {
      v14 = valuePtr >> v12;
      --v11;
      v12 -= 8;
      if (v10 != v14)
      {
        v13 = v11 - 1;
        goto LABEL_11;
      }
    }

    v11 = 2;
LABEL_11:
    if ((((valuePtr >> (8 * v13 - 8)) ^ v10) & 0x80) != 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = v13;
    }

    if (!a4)
    {
      goto LABEL_22;
    }
  }

  if (a4 - a3 < v15)
  {
LABEL_22:
    sub_100004168(-3, @"com.apple.security.cfder.error", v7, a2, v8, @"Unknown size");
    return 0;
  }

  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  do
  {
    *--a4 = v9;
    v9 >>= 8;
    --v16;
  }

  while (v16);
  valuePtr = v9;
  result = ccder_encode_tl();
  if (!result)
  {
    sub_100004168(-7, @"com.apple.security.cfder.error", v18, a2, v19, @"ccder failed to encode");
    return 0;
  }

  return result;
}

void sub_100003EB4(CFIndex a1, const __CFString *a2, __CFString *cf, CFTypeRef *a4, CFStringRef format, va_list arguments)
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

void sub_10000419C(int a1, __CFString **a2, CFStringRef format, ...)
{
  va_start(va, format);
  cf = 0;
  if (a2)
  {
    sub_100003EB4(a1, kCFErrorDomainOSStatus, *a2, &cf, format, va);
    *a2 = cf;
  }

  else
  {
    sub_100003EB4(a1, kCFErrorDomainOSStatus, 0, &cf, format, va);
    v4 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v4);
    }
  }
}

uint64_t sub_100004220(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  if (a4)
  {
    if (ccder_decode_tag())
    {
      sub_100004168(-2, @"com.apple.security.cfder.error", v7, a3, v8, @"Unsupported DER Type");
    }

    else
    {
      sub_100004168(-1, @"com.apple.security.cfder.error", v7, a3, v8, @"invalid tag");
    }

    return 0;
  }

  else
  {
    sub_100004168(-6, @"com.apple.security.cfder.error", a3, a3, a5, @"null input");
  }

  return v5;
}

uint64_t sub_100004C64(const __CFString *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    sub_100004168(-5, @"com.apple.security.cfder.error", a3, a2, a5, @"Null CFType");
    return 0;
  }

  v7 = CFGetTypeID(a1);
  if (CFArrayGetTypeID() == v7)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v9 = 0;
      v10 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v10 - 2);
        v9 += sub_100004C64(ValueAtIndex, a2);
        --v10;
      }

      while (v10 > 1);
    }

    goto LABEL_14;
  }

  if (CFBooleanGetTypeID() == v7)
  {
LABEL_14:

    return ccder_sizeof();
  }

  if (CFDataGetTypeID() == v7)
  {
    Length = CFDataGetLength(a1);

    return _ccder_sizeof_raw_octet_string(Length);
  }

  if (CFDateGetTypeID() == v7)
  {
    CFDateGetAbsoluteTime(a1);
    __dtoa();
    __freedtoa();
    goto LABEL_14;
  }

  if (CFDictionaryGetTypeID() == v7)
  {

    return sub_100002CE4(a1, a2);
  }

  if (CFSetGetTypeID() == v7)
  {

    return sub_100005AA4(a1, a2);
  }

  if (CFStringGetTypeID() == v7)
  {

    return sub_1000058C0(a1);
  }

  if (CFNumberGetTypeID() != v7)
  {
    if (CFNullGetTypeID() == v7)
    {
      goto LABEL_14;
    }

    sub_100004168(-5, @"com.apple.security.cfder.error", v14, a2, v15, @"Unsupported CFType");
    return 0;
  }

  return sub_100003C8C(a1, a2);
}

uint64_t sub_100004F08(const __CFString *a1, CFTypeRef *a2, uint64_t a3, UInt8 *a4, unint64_t a5)
{
  if (!a1)
  {
    sub_100004168(-5, @"com.apple.security.cfder.error", a3, a2, a5, @"Null CFType");
    return 0;
  }

  v10 = CFGetTypeID(a1);
  if (CFArrayGetTypeID() == v10)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v12 = Count + 1;
      v13 = a5;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v12 - 2);
        v13 = sub_100004F08(ValueAtIndex, a2, a3, a4, v13);
        --v12;
      }

      while (v12 > 1);
    }

LABEL_6:
    v15 = ccder_encode_constructed_tl();
    goto LABEL_14;
  }

  if (CFBooleanGetTypeID() == v10)
  {
    buf[0] = CFBooleanGetValue(a1);
    ccder_encode_body();
LABEL_13:
    v15 = ccder_encode_tl();
LABEL_14:
    v18 = v15;
    if (!v15)
    {
      sub_100004168(-7, @"com.apple.security.cfder.error", v16, a2, v17, @"ccder failed to encode");
    }

    return v18;
  }

  if (CFDataGetTypeID() == v10)
  {
    CFDataGetLength(a1);
    CFDataGetBytePtr(a1);
    ccder_encode_body();
    goto LABEL_13;
  }

  if (CFDateGetTypeID() == v10)
  {
    AbsoluteTime = CFDateGetAbsoluteTime(a1);
    v56 = 0;
    v57 = 0;
    v55 = 0;
    err = 0;
    p_err = &err;
    v60 = 0x2000000000;
    v61 = -86;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_100003C28;
    v65 = &unk_100008838;
    v66 = &err;
    v67 = AbsoluteTime;
    v68 = &v57 + 4;
    v69 = &v57;
    v70 = &v56 + 4;
    v71 = &v56;
    v72 = &v55 + 4;
    v73 = &v55;
    sub_1000031C0(buf);
    if (*(p_err + 24) == 1)
    {
      _Block_object_dispose(&err, 8);
    }

    else
    {
      sub_100004168(-1, @"com.apple.security.cfder.error", v21, a2, v22, @"Failed to encode date.");
      v23 = *(p_err + 24);
      _Block_object_dispose(&err, 8);
      if ((v23 & 1) == 0)
      {
        v39 = sub_100002C54("SecError");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          if (a2)
          {
            v40 = *a2;
          }

          else
          {
            v40 = 0;
          }

          *buf = 138412290;
          *&buf[4] = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "der: unable to encode date: %@", buf, 0xCu);
        }

        goto LABEL_6;
      }
    }

    err = 0;
    if ((sub_100003A90(HIDWORD(v57), v57, HIDWORD(v56), v56, HIDWORD(v55), v55, 0, &err) & 1) == 0)
    {
      v24 = CFErrorCopyDescription(err);
      sub_100005E84(v24);
      if (v24)
      {
        CFRelease(v24);
      }

      v25 = sub_100002C54("SecError");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = "continuing";
        if (a3)
        {
          v26 = "setting default value";
        }

        *buf = 138412546;
        *&buf[4] = err;
        *&buf[12] = 2080;
        *&buf[14] = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "der: invalid date: %@; %s", buf, 0x16u);
      }

      v27 = err;
      if (err)
      {
        err = 0;
        CFRelease(v27);
      }

      if (a3)
      {
        v57 = 0x7D100000001;
        HIDWORD(v56) = 1;
        HIDWORD(v55) = 1;
      }
    }

    if ((a4 + 1) <= a5)
    {
      *(a5 - 1) = 90;
      v28 = a5 - 1;
    }

    else
    {
      v28 = 0;
    }

    v30 = v57;
    v29 = HIDWORD(v57);
    v53 = HIDWORD(v56);
    v54 = v56;
    v32 = v55;
    v31 = HIDWORD(v55);
    v62 = -1431655766;
    v63 = -1431655766;
    *buf = 0xAAAAAAAAAAAAAAAALL;
    v33 = __dtoa();
    v34 = v63;
    v35 = *buf;
    if (AbsoluteTime < 0.0)
    {
      v36 = v33 + (v63 & ~(v63 >> 31));
      if (v36 < *buf)
      {
        v37 = (*buf - 1);
        for (*v37 = 106 - *(*buf - 1); v37 > v36; *v37 = 105 - v38)
        {
          v38 = *--v37;
        }
      }

      v34 = v63;
      v35 = *buf;
    }

    if (v35 - v33 <= v34)
    {
      goto LABEL_75;
    }

    if (v34 < 0)
    {
      v52 = v30;
      v42 = v29;
      ccder_encode_body();
      v43 = -v63;
      v44 = ccder_encode_body_nocopy();
      v28 = v44;
      if (!v44)
      {
        v29 = v42;
        v30 = v52;
        goto LABEL_75;
      }

      if (AbsoluteTime >= 0.0)
      {
        v45 = 48;
      }

      else
      {
        v45 = 57;
      }

      memset(v44, v45, v43);
      v29 = v42;
      v30 = v52;
    }

    else
    {
      v28 = ccder_encode_body();
    }

    if ((a4 + 1) <= v28)
    {
      *--v28 = 46;
    }

    else
    {
      v28 = 0;
    }

LABEL_75:
    __freedtoa();
    if (!v28)
    {
      goto LABEL_83;
    }

    v50 = (a4 + 2);
    if ((a4 + 2) > v28)
    {
      goto LABEL_83;
    }

    *(v28 - 2) = v32 / 10 + 48;
    *(v28 - 1) = v32 % 10 + 48;
    if (v50 > v28 - 2)
    {
      goto LABEL_83;
    }

    *(v28 - 4) = v31 / 10 + 48;
    *(v28 - 3) = v31 % 10 + 48;
    if (v50 > v28 - 4)
    {
      goto LABEL_83;
    }

    *(v28 - 6) = v54 / 10 + 48;
    *(v28 - 5) = v54 % 10 + 48;
    if (v50 > v28 - 6)
    {
      goto LABEL_83;
    }

    *(v28 - 8) = v53 / 10 + 48;
    *(v28 - 7) = v53 % 10 + 48;
    if (v50 <= v28 - 8 && (*(v28 - 10) = v30 / 10 + 48, *(v28 - 9) = v30 % 10 + 48, v50 <= v28 - 10) && (v51 = (((103 * (v29 % 100)) >> 15) & 1) + ((103 * (v29 % 100)) >> 10), *(v28 - 12) = v51 + 48, *(v28 - 11) = v29 % 100 - 10 * v51 + 48, v50 <= v28 - 12))
    {
      *(v28 - 14) = v29 / 1000 + 48;
      *(v28 - 13) = v29 / 100 % 10 + 48;
    }

    else
    {
LABEL_83:
      sub_100004168(-7, @"com.apple.security.cfder.error", v48, a2, v49, @"ccder failed to encode");
    }

    goto LABEL_6;
  }

  if (CFDictionaryGetTypeID() == v10)
  {

    return sub_100002E34(a1, a2, a3);
  }

  if (CFSetGetTypeID() == v10)
  {

    return sub_100005B5C(a1, a2, a3);
  }

  if (CFStringGetTypeID() == v10)
  {

    return sub_100005940(a1, a2, a4, a5, v41);
  }

  if (CFNumberGetTypeID() == v10)
  {

    return sub_100003D64(a1, a2, a4, a5);
  }

  if (CFNullGetTypeID() != v10)
  {
    sub_100004168(-5, @"com.apple.security.cfder.error", v46, a2, v47, @"Unsupported CFType");
    return 0;
  }

  return sub_100005A48(a2);
}

uint64_t sub_1000058C0(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = 0;
  v6.location = 0;
  v6.length = Length;
  CFStringGetBytes(a1, v6, 0x8000100u, 0, 0, 0, MaximumSizeForEncoding, &usedBufLen);
  return ccder_sizeof();
}

uint64_t sub_100005940(const __CFString *a1, CFTypeRef *a2, UInt8 *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    Length = CFStringGetLength(a1);
    usedBufLen = 0;
    v16.location = 0;
    v16.length = Length;
    if (CFStringGetBytes(a1, v16, 0x8000100u, 0, 0, a3, a4 - a3, &usedBufLen) == Length)
    {
      ccder_encode_body();
      result = ccder_encode_tl();
      if (result)
      {
        return result;
      }

      sub_100004168(-7, @"com.apple.security.cfder.error", v13, a2, v14, @"ccder failed to encode");
    }

    else
    {
      sub_100004168(-5, @"com.apple.security.cfder.error", v10, a2, v11, @"String extraction failed");
    }
  }

  else
  {
    sub_100004168(-6, @"com.apple.security.cfder.error", a3, a2, a5, @"null input");
  }

  return 0;
}

uint64_t sub_100005A48(CFTypeRef *a1)
{
  v4 = ccder_encode_tl();
  if (!v4)
  {
    sub_100004168(-7, @"com.apple.security.cfder.error", v2, a1, v3, @"ccder failed to encode");
  }

  return v4;
}

uint64_t sub_100005AA4(const __CFSet *a1, uint64_t a2)
{
  v3 = xmmword_100006F70;
  v4 = a2;
  CFSetApplyFunction(a1, sub_100005B0C, &v3);
  if (v3 == 1)
  {
    return ccder_sizeof();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005B0C(uint64_t result, uint64_t a2)
{
  if (*a2 == 1)
  {
    result = sub_100004C64(result, *(a2 + 16));
    if (result)
    {
      *(a2 + 8) += result;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t sub_100005B5C(const __CFSet *a1, CFTypeRef *a2, char a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v13[0] = 0xAAAAAAAAAAAAAA01;
  v13[1] = a2;
  BYTE1(v13[0]) = a3;
  v13[2] = Mutable;
  v13[3] = 0;
  CFSetApplyFunction(a1, sub_100005D9C, v13);
  if ((v13[0] & 1) == 0)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  v14.length = CFArrayGetCount(Mutable);
  v14.location = 0;
  CFArraySortValues(Mutable, v14, sub_100005CE0, 0);
  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v8 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v8 - 2);
      CFDataGetLength(ValueAtIndex);
      CFDataGetBytePtr(ValueAtIndex);
      ccder_encode_body();
      --v8;
    }

    while (v8 > 1);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  result = ccder_encode_constructed_tl();
  if (!result)
  {
    sub_100004168(-7, @"com.apple.security.cfder.error", v11, a2, v12, @"ccder failed to encode");
    return 0;
  }

  return result;
}

uint64_t sub_100005CE0(const __CFData *a1, const __CFData *a2)
{
  Length = CFDataGetLength(a1);
  v5 = CFDataGetLength(a2);
  v6 = v5;
  if ((Length & 0x8000000000000000) != 0 || v5 < 0)
  {
    if (Length >= v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (Length <= v5)
    {
      return v12;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (Length >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = Length;
    }

    BytePtr = CFDataGetBytePtr(a1);
    v9 = CFDataGetBytePtr(a2);
    v10 = memcmp(BytePtr, v9, v7);
    if (v10 <= 0 && (v10 || Length <= v6))
    {
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = Length >= v6;
      }

      v14 = !v13;
      return v14 << 63 >> 63;
    }

    else
    {
      return 1;
    }
  }
}

void sub_100005D9C(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 == 1)
  {
    v7 = sub_100004C64(a1, *(a2 + 8), a3, a4, a5);
    if (!v7)
    {
      *a2 = 0;
      return;
    }

    v8 = v7;
    Mutable = CFDataCreateMutable(*(a2 + 24), v7);
    CFDataSetLength(Mutable, v8);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v11 = sub_100004F08(a1, *(a2 + 8), *(a2 + 1), MutableBytePtr, &MutableBytePtr[v8]);
    if (v11)
    {
      v13.length = v11 - MutableBytePtr;
      v13.location = 0;
      CFDataDeleteBytes(Mutable, v13);
      CFArrayAppendValue(*(a2 + 16), Mutable);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      *a2 = 0;
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }
}

uint64_t sub_100005E84(uint64_t a1)
{
  v2 = sub_100002C54("SecError");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412546;
    v5 = a1;
    v6 = 1024;
    v7 = 1405091842;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Simulating crash, reason: %@, code=%08x", &v4, 0x12u);
  }

  getpid();
  return SimulateCrash();
}

void sub_100005F58(size_t size, uint64_t a2)
{
  if (size)
  {
    if (size > 0x800)
    {
      v5 = malloc_type_malloc(size, 0x2B51245EuLL);
      (*(a2 + 16))(a2, size, v5);
      if (v5)
      {

        free(v5);
      }
    }

    else
    {
      __chkstk_darwin();
      memset(&v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0), 170, size);
      (*(a2 + 16))(a2, size, &v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0));
    }
  }

  else
  {
    v4 = *(a2 + 16);

    v4(a2, 0, 0);
  }
}

xpc_object_t sub_1000060E0(__CFError *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  Domain = CFErrorGetDomain(a1);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = sub_100006218;
  v15[3] = &unk_100008858;
  v15[4] = v2;
  v15[5] = "domain";
  sub_100003404(Domain, v15);
  Code = CFErrorGetCode(a1);
  xpc_dictionary_set_int64(v2, "code", Code);
  v5 = CFErrorCopyUserInfo(a1);
  v9 = sub_100004C64(v5, 0, v6, v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = malloc_type_malloc(v9, 0xD5244697uLL);
    v12 = &v11[v10];
    v13 = sub_100004F08(v5, 0, 0, v11, v12);
    if (v13)
    {
      xpc_dictionary_set_data(v2, "userinfo", v13, v12 - v13);
    }

    free(v11);
  }

  CFRelease(v5);
  return v2;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, const char *);
  return _CFCalendarDecomposeAbsoluteTime(calendar, at, v3);
}