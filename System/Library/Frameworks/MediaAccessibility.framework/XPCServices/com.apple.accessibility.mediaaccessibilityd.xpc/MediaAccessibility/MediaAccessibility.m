int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  sub_100000A10();
  dispatch_main();
}

void sub_100000A10()
{
  qword_100008070 = xpc_connection_create_mach_service("com.apple.accessibility.mediaaccessibilityd", &_dispatch_main_q, 1uLL);
  xpc_connection_set_event_handler(qword_100008070, &stru_100004328);
  v0 = qword_100008070;

  xpc_connection_resume(v0);
}

void sub_100000A6C(id a1, OS_xpc_object *a2)
{
  type = xpc_get_type(a2);
  if (&_xpc_type_error != &_xpc_type_connection && type == &_xpc_type_connection)
  {
    if (xpc_connection_get_euid(a2))
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100000B2C;
      handler[3] = &unk_100004350;
      handler[4] = a2;
      xpc_connection_set_event_handler(a2, handler);
      xpc_connection_resume(a2);
    }

    else
    {
      xpc_connection_cancel(a2);
    }
  }
}

void sub_100000B2C(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  type = xpc_get_type(a2);
  if (type != &_xpc_type_error)
  {
    if (type != &_xpc_type_dictionary)
    {
      goto LABEL_51;
    }

    value = xpc_dictionary_get_value(a2, "reqiestTypePreferences");
    if (!value || (v8 = value, xpc_get_type(value) != &_xpc_type_dictionary))
    {
LABEL_34:
      v20 = xpc_dictionary_get_value(a2, "callStatus");
      if (!v20 || (v21 = v20, xpc_get_type(v20) != &_xpc_type_dictionary))
      {
LABEL_47:
        if (xpc_dictionary_get_value(a2, "openSettings"))
        {
          v42 = [NSURL URLWithString:@"prefs:root=ACCESSIBILITY&path=SUBTITLES_CAPTIONING"];
          *&v74 = 0;
          *(&v74 + 1) = &v74;
          *&v75 = 0x3052000000;
          *(&v75 + 1) = sub_10000178C;
          v43 = qword_100008088;
          v76 = sub_10000179C;
          v77 = qword_100008088;
          if (!qword_100008088)
          {
            v73[0] = _NSConcreteStackBlock;
            v73[1] = 3221225472;
            v73[2] = sub_1000017A8;
            v73[3] = &unk_1000043B8;
            v73[4] = &v74;
            sub_1000017A8(v73);
            v43 = *(*(&v74 + 1) + 40);
          }

          _Block_object_dispose(&v74, 8);
          [objc_msgSend(v43 "defaultWorkspace")];
        }

        goto LABEL_51;
      }

      v22 = sub_100001938(v21);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v26)
        {
          sub_100001EDC(v26, v27, v28, v29, v30, v31, v32, v33);
        }

        goto LABEL_46;
      }

      v23 = [(__CFNumber *)v22 objectForKey:@"getOrSet"];
      if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v34 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v34)
        {
          sub_100001FCC(v34, v35, v36, v37, v38, v39, v40, v41);
        }

        goto LABEL_46;
      }

      if ([v24 isEqual:@"set"])
      {
        v25 = [(__CFNumber *)v22 objectForKey:@"preferenceValue"];
        if (objc_opt_respondsToSelector())
        {
          sub_10000115C(v5, [v25 BOOLValue]);
        }

        else
        {
          v47 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v47)
          {
            sub_100001F90(v47, v48, v49, v50, v51, v52, v53, v54);
          }
        }

LABEL_46:

        goto LABEL_47;
      }

      if (![v24 isEqual:@"get"])
      {
        v55 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v55)
        {
          sub_100001F18(v55, v56, v57, v58, v59, v60, v61, v62);
        }

        goto LABEL_46;
      }

      v74 = 0u;
      v75 = 0u;
      xpc_connection_get_audit_token();
      v44 = xpc_copy_entitlement_for_token();
      v45 = v44;
      if (v44 && xpc_BOOL_get_value(v44))
      {
        if (qword_100008080)
        {
          v46 = CFDictionaryGetCount(qword_100008080) > 0;
          goto LABEL_64;
        }
      }

      else
      {
        v63 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v63)
        {
          sub_100001F54(v63, v64, v65, v66, v67, v68, v69, v70);
        }
      }

      v46 = 0;
LABEL_64:
      reply = xpc_dictionary_create_reply(a2);
      remote_connection = xpc_dictionary_get_remote_connection(a2);
      xpc_dictionary_set_BOOL(reply, "result", v46);
      xpc_dictionary_set_BOOL(reply, "success", 1);
      xpc_connection_send_message(remote_connection, reply);
      CFRelease(reply);
      if (v45)
      {
        CFRelease(v45);
      }

      goto LABEL_46;
    }

    *&v74 = 0;
    v9 = sub_100001938(v8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(__CFNumber *)v9 objectForKey:@"preferenceName"];
      v11 = [(__CFNumber *)v9 objectForKey:@"getOrSet"];
      if (v10)
      {
        v12 = v11;
        objc_opt_class();
        v13 = 0;
        if ((objc_opt_isKindOfClass() & 1) == 0 || !v12)
        {
          goto LABEL_30;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (([v12 isEqual:@"get"] & 1) != 0 || objc_msgSend(v12, "isEqual:", @"set")))
        {
          if ([v12 isEqual:@"set"])
          {
            v14 = [(__CFNumber *)v9 objectForKey:@"preferenceValue"];
            if ([v10 isEqualToString:@"MACaptionPreferredLanguages"])
            {
              v15 = sub_100001260(v14);
LABEL_28:
              v13 = v15;
              goto LABEL_30;
            }

            if ([v10 isEqualToString:@"MACaptionDisplayType"])
            {
              v15 = sub_1000012B8(v14);
              goto LABEL_28;
            }

            if ([v10 isEqualToString:@"MACaptionActiveProfile"])
            {
              v15 = sub_10000132C(v14);
              goto LABEL_28;
            }
          }

          else
          {
            if ([v10 isEqualToString:@"MACaptionPreferredLanguages"])
            {
              v15 = sub_10000145C(&v74);
              goto LABEL_28;
            }

            if ([v10 isEqualToString:@"MACaptionDisplayType"])
            {
              v15 = sub_1000014D0(&v74);
              goto LABEL_28;
            }

            if ([v10 isEqualToString:@"MACaptionActiveProfile"])
            {
              v15 = sub_100001554(&v74);
              goto LABEL_28;
            }
          }
        }
      }
    }

    v13 = 0;
LABEL_30:

    v16 = xpc_dictionary_create_reply(a2);
    v17 = xpc_dictionary_get_remote_connection(a2);
    if (v74)
    {
      v18 = sub_100001B60(v74);
      if (v18)
      {
        v19 = v18;
        xpc_dictionary_set_value(v16, "result", v18);
        CFRelease(v19);
      }
    }

    xpc_dictionary_set_BOOL(v16, "success", v13);
    xpc_connection_send_message(v17, v16);
    CFRelease(v16);
    goto LABEL_34;
  }

  if (a2 == &_xpc_error_connection_invalid || a2 == &_xpc_error_termination_imminent)
  {
    sub_10000115C(v5, 0);
  }

LABEL_51:
  objc_autoreleasePoolPop(v4);
}

void sub_100001144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000115C(void *key, int a2)
{
  if (qword_100008078 != -1)
  {
    sub_100002008();
  }

  v4 = CFDictionaryContainsKey(qword_100008080, key);
  if (a2)
  {
    if (!v4)
    {
      v5 = os_transaction_create();
      CFDictionarySetValue(qword_100008080, key, v5);

      CFRelease(v5);
    }
  }

  else if (v4)
  {
    v6 = qword_100008080;

    CFDictionaryRemoveValue(v6, key);
  }
}

uint64_t sub_100001260(void *value)
{
  if (!value || (result = sub_1000015D4(value), result))
  {
    CFPreferencesSetAppValue(@"MACaptionPreferredLanguages", value, @"com.apple.mediaaccessibility.public");
    CFPreferencesAppSynchronize(@"com.apple.mediaaccessibility.public");
    return 1;
  }

  return result;
}

BOOL sub_1000012B8(void *a1)
{
  if (a1)
  {
    result = sub_100001718();
    if (!result)
    {
      return result;
    }

    v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a1 integerValue]);
  }

  else
  {
    v3 = 0;
  }

  CFPreferencesSetAppValue(@"MACaptionDisplayType", v3, @"com.apple.mediaaccessibility.public");
  CFPreferencesAppSynchronize(@"com.apple.mediaaccessibility.public");
  return 1;
}

uint64_t sub_10000132C(void *a1)
{
  if (!a1)
  {
    v2 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([a1 isEqual:@"MACaptionProfile-Default"] & 1) != 0 || (objc_msgSend(a1, "isEqual:", @"MACaptionProfile-Classic") & 1) != 0 || (objc_msgSend(a1, "isEqual:", @"MACaptionProfile-OutlineText") & 1) != 0 || (objc_msgSend(a1, "isEqual:", @"MACaptionProfile-LargeText"))
  {
    goto LABEL_7;
  }

  result = [a1 hasPrefix:@"MACaptionProfile-"];
  if (result)
  {
    result = _CFPrefsCopyAppDictionaryWithContainer();
    if (result)
    {
      v4 = result;
      v5 = CFDictionaryContainsKey(result, a1);
      CFRelease(v4);
      if (!v5)
      {
        return 0;
      }

LABEL_7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = a1;
LABEL_10:
        CFPreferencesSetAppValue(@"MACaptionActiveProfile", v2, @"com.apple.mediaaccessibility");
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10000145C(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = CFPreferencesCopyAppValue(@"MACaptionPreferredLanguages", @"com.apple.mediaaccessibility.public");
    v3 = v2;
    if (v2)
    {
      if (!sub_1000015D4(v2))
      {
        v1 = 0;
        goto LABEL_7;
      }

      *v1 = [NSArray arrayWithArray:v3];
    }

    v1 = 1;
LABEL_7:
  }

  return v1;
}

uint64_t sub_1000014D0(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = CFPreferencesCopyAppValue(@"MACaptionDisplayType", @"com.apple.mediaaccessibility.public");
    if (v2)
    {
      if (!sub_100001718() || (v3 = [v2 integerValue], v3 > 3))
      {
        v1 = 0;
        goto LABEL_8;
      }

      *v1 = [NSNumber numberWithInteger:v3];
    }

    v1 = 1;
LABEL_8:
  }

  return v1;
}

uint64_t sub_100001554(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = CFPreferencesCopyAppValue(@"MACaptionActiveProfile", @"com.apple.mediaaccessibility");
    v3 = v2;
    if (v2)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v1 = 0;
        goto LABEL_7;
      }

      v2 = [v3 copy];
    }

    *v1 = v2;
    v1 = 1;
LABEL_7:
  }

  return v1;
}

uint64_t sub_1000015D4(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
LABEL_4:
    v5 = 0;
    while (1)
    {
      if (*v9 != v4)
      {
        objc_enumerationMutation(a1);
      }

      v6 = *(*(&v8 + 1) + 8 * v5);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && [v6 length] < 0x800)
      {
        return 0;
      }

      if (v3 == ++v5)
      {
        v3 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
        result = 1;
        if (v3)
        {
          goto LABEL_4;
        }

        return result;
      }
    }
  }

  return 1;
}

BOOL sub_100001718()
{
  result = 0;
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 1;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 1;
    }
  }

  return result;
}

Class sub_1000017A8(uint64_t a1)
{
  if (!qword_100008090)
  {
    qword_100008090 = _sl_dlopen();
  }

  result = objc_getClass("LSApplicationWorkspace");
  *(*(*(a1 + 32) + 8) + 40) = result;
  qword_100008088 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_1000018A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100008090 = result;
  return result;
}

void sub_10000191C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

CFNumberRef sub_100001938(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  type = xpc_get_type(a1);
  if (type == &_xpc_type_int64)
  {
    valuePtr[0] = xpc_int64_get_value(a1);
    return CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
  }

  if (type == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(a1);

    return CFStringCreateWithCString(0, string_ptr, 0x8000100u);
  }

  else
  {
    if (type == &_xpc_type_array)
    {
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      count = xpc_array_get_count(a1);
      if (count)
      {
        v7 = count;
        for (i = 0; i != v7; ++i)
        {
          value = xpc_array_get_value(a1, i);
          v10 = sub_100001938(value);
          if (v10)
          {
            v11 = v10;
            CFArrayAppendValue(Mutable, v10);
            CFRelease(v11);
          }
        }
      }

      return Mutable;
    }

    if (type == &_xpc_type_dictionary)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      valuePtr[0] = _NSConcreteStackBlock;
      valuePtr[1] = 0x40000000;
      valuePtr[2] = sub_100001E58;
      valuePtr[3] = &unk_100004410;
      valuePtr[4] = Mutable;
      xpc_dictionary_apply(a1, valuePtr);
      return Mutable;
    }

    if (type != &_xpc_type_BOOL)
    {
      return 0;
    }

    v12 = xpc_BOOL_get_value(a1);
    v13 = &kCFBooleanTrue;
    if (!v12)
    {
      v13 = &kCFBooleanFalse;
    }

    v14 = *v13;

    return CFRetain(v14);
  }
}

xpc_object_t sub_100001B60(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFNumberGetTypeID())
  {
    valuePtr[0] = 0;
    CFNumberGetValue(a1, kCFNumberSInt64Type, valuePtr);
    return xpc_int64_create(valuePtr[0]);
  }

  if (v2 == CFStringGetTypeID())
  {
    LOBYTE(valuePtr[0]) = 0;
    CFStringGetCString(a1, valuePtr, 2048, 0x8000100u);
    return xpc_string_create(valuePtr);
  }

  if (v2 == CFArrayGetTypeID())
  {
    v4 = xpc_array_create(0, 0);
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        v9 = sub_100001B60(ValueAtIndex);
        if (v9)
        {
          v10 = v9;
          xpc_array_append_value(v4, v9);
          CFRelease(v10);
        }
      }
    }

    return v4;
  }

  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return sub_100001CFC(a1);
}

xpc_object_t sub_100001CFC(const __CFDictionary *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  Count = CFDictionaryGetCount(a1);
  v4 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  v5 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(a1, v4, v5);
  if (Count >= 1)
  {
    do
    {
      v6 = *v4;
      if (*v4)
      {
        v7 = CFGetTypeID(*v4);
        if (v7 == CFStringGetTypeID())
        {
          buffer[0] = 0;
          if (CFStringGetCString(v6, buffer, 2048, 0x8000100u))
          {
            v8 = sub_100001B60(*v5);
            if (v8)
            {
              v9 = v8;
              xpc_dictionary_set_value(v2, buffer, v8);
              CFRelease(v9);
            }
          }
        }
      }

      --Count;
    }

    while (Count);
  }

  free(v4);
  free(v5);
  return v2;
}

uint64_t sub_100001E58(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v5 = CFStringCreateWithCString(0, a2, 0x8000100u);
      if (v5)
      {
        v6 = v5;
        v7 = sub_100001938(a3);
        if (v7)
        {
          v8 = v7;
          CFDictionarySetValue(*(a1 + 32), v6, v7);
          CFRelease(v8);
        }

        CFRelease(v6);
      }
    }
  }

  return 1;
}