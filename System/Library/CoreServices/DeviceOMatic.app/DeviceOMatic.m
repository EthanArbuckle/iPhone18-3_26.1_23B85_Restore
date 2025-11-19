uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  xpc_set_event_stream_handler("com.apple.iokit.matching", &_dispatch_main_q, &stru_100010610);
  CFRunLoopRun();
  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_100000D28(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  if (string)
  {
    v4 = string;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received %s", &v14, 0xCu);
    }

    uint64 = xpc_dictionary_get_uint64(v2, "IOMatchLaunchServiceID");
    v6 = IORegistryEntryIDMatching(uint64);
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      v9 = [NSString stringWithUTF8String:v4];
      v10 = [NSString stringWithFormat:@"com.apple.device-o-matic.overcurrent"];
      v11 = [v9 isEqualToString:v10];

      v12 = +[DOMAccessoryArbitrator sharedDomAccessoryArbitrator];
      v13 = v12;
      if (v11)
      {
        [v12 overcurrentCondition:v8];
      }

      else
      {
        [v12 deviceArrived:v8];
      }
    }
  }
}

void sub_1000015E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001610(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001628(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_1000078E0(v3, "sendreply handler");
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    if (xpc_dictionary_get_uint64(v3, "_LB_TYPE") == 3)
    {
      if (xpc_dictionary_get_BOOL(v3, "_LB_SUPPORTS"))
      {
        v4 = [NSNumber numberWithLongLong:xpc_dictionary_get_int64(v3, "_LB_PROBE_SCORE")];
        v5 = *(*(a1 + 48) + 8);
        v6 = *(v5 + 40);
        *(v5 + 40) = v4;

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [*(a1 + 32) xpcName];
          v8 = 138412546;
          v9 = v7;
          v10 = 2048;
          int64 = xpc_dictionary_get_int64(v3, "_LB_PROBE_SCORE");
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ probe returned: %lld", &v8, 0x16u);
        }
      }

      else
      {
        sub_100007F60(a1);
      }
    }

    else
    {
      sub_100007EB4(v3);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100007E00(v3);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100001D30(id a1)
{
  qword_100014FE0 = objc_alloc_init(DOMAccessoryArbitrator);

  _objc_release_x1();
}

uint64_t sub_1000027A0()
{
  if (qword_100015000 != -1)
  {
    sub_100008240();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100014FD8)
    {
      v0 = "TRUE";
    }

    else
    {
      v0 = "FALSE";
    }

    v2 = 136315138;
    v3 = v0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "returning %s", &v2, 0xCu);
  }

  return byte_100014FD8;
}

void sub_100002878(uint64_t a1)
{
  v2 = +[DOMAccessoryArbitrator sharedDomAccessoryArbitrator];
  [v2 userDismissedNotification:a1];
}

void sub_100002BB0(uint64_t a1)
{
  v2 = +[DOMAccessoryArbitrator sharedDomAccessoryArbitrator];
  [v2 userDismissedOvercurrentNotification:a1];
}

void sub_100002CDC(uint64_t a1)
{
  [*(a1 + 32) displayDialog];
  v2 = *(a1 + 40);

  dispatch_source_cancel(v2);
}

id sub_100002DCC(void *a1, io_iterator_t iterator)
{
  for (i = iterator; ; i = iterator)
  {
    v5 = IOIteratorNext(i);
    if (!v5)
    {
      break;
    }

    IOObjectRelease(v5);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a1 name];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "kicking %@!", &v8, 0xCu);
  }

  return [a1 kick];
}

id sub_100002F38(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [a4 name];
    v9 = 138412546;
    v10 = a3;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Got a notification:%@ for job %@!", &v9, 0x16u);
  }

  return [a2 kick];
}

void sub_1000033F4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [*(a1 + 32) personalities];
      v7 = [[DOMPersonality alloc] initWithPersonality:v5 personalityName:v8 serviceName:*(a1 + 40)];
      [v6 addObject:v7];
    }
  }
}

void sub_100003794(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"Disabled"];
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v4 BOOLValue] & 1) == 0)
  {
    v5 = [v3 objectForKey:@"MachServices"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 3221225472;
        v6[2] = sub_1000038A8;
        v6[3] = &unk_100010738;
        v6[4] = *(a1 + 32);
        [v5 enumerateKeysAndObjectsUsingBlock:v6];
      }
    }
  }
}

void sub_1000038A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = -1;
    v7 = [*(a1 + 32) jobType:v6 jobType:&v8];
    if (v7)
    {
      [*(a1 + 32) addMatchJobServiceNamed:v5 info:v7 jobType:v8];
    }
  }
}

void sub_100003A28(uint64_t a1, void *a2)
{
  v3 = a2;
  matches = 0;
  v4 = *(a1 + 48);
  v5 = [v3 personalityDict];
  IOServiceMatchPropertyTable(v4, v5, &matches);

  if (matches)
  {
    entryID = 0;
    IORegistryEntryGetRegistryEntryID(*(a1 + 48), &entryID);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 personalityName];
      v7 = [*(a1 + 32) name];
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, ">>>>>>> Probing personality %@ for device %@", buf, 0x16u);
    }

    v8 = *(a1 + 40);
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003BEC;
    block[3] = &unk_100010760;
    v11 = v3;
    v13 = entryID;
    v12 = *(a1 + 32);
    dispatch_group_async(v8, v9, block);
  }
}

uint64_t sub_1000042A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000042BC(uint64_t a1)
{
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  properties = 0;
  memset(name, 0, 128);
  if (IORegistryEntryCreateCFProperties(*(a1 + 40), &properties, 0, 0) || !properties)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100008420((a1 + 40));
    }
  }

  else
  {
    if (IORegistryEntryGetName(*(a1 + 40), name))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000084A0((a1 + 40));
      }
    }

    else
    {
      v5 = properties;
      v6 = [NSString stringWithUTF8String:name];
      CFDictionaryAddValue(v5, @"IORegistryEntryName", v6);
    }

    v7 = *(*(*(a1 + 32) + 8) + 40);
    v8 = properties;
    v9 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
    [v7 setObject:v8 forKey:v9];

    CFRelease(properties);
  }
}

void sub_100004A68(int a1, io_registry_entry_t entry, int a3)
{
  if (a3 == -536870608)
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, @"OvercurrentCount", kCFAllocatorDefault, 0);
    v4 = CFProperty;
    if (!CFProperty || ![CFProperty unsignedIntValue])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "IOServiceOvercurrentMatchingCallback";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: No longer overcurrent. Release dialog", &v6, 0xCu);
      }

      v5 = +[DOMAccessoryArbitrator sharedDomAccessoryArbitrator];
      [v5 releaseOverCurrentDialog];
    }
  }
}

void sub_100004BAC(id a1)
{
  v1 = CFPreferencesCopyValue(@"StoreDemoMode", @"com.apple.demo-settings", @"mobile", kCFPreferencesAnyHost);
  if (v1)
  {
    v2 = v1;
    v3 = CFBooleanGetValue(v1) != 0;
  }

  else
  {
    v3 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 67109120;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StoreDemoMode: %d", &v7, 8u);
  }

  if (v3)
  {
    v4 = CFPreferencesCopyValue(@"FProgramNumber", @"com.apple.demo-settings", @"mobile", kCFPreferencesAnyHost);
    if (v4)
    {
      v5 = v4;
      if ([v4 intValue] == 5)
      {
        byte_100014FF8 = 1;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v5 intValue];
        v7 = 67109120;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "FProgramNumber: %d", &v7, 8u);
      }
    }
  }
}

void sub_100004DD4(id a1)
{
  v1 = CFPreferencesCopyValue(@"DISABLE_DIALOGS", @"com.apple.mobile.device_o_matic", @"mobile", kCFPreferencesCurrentHost);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v2);
      byte_100014FD8 = Value == 0;
      if (!Value && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10000863C();
      }
    }

    CFRelease(v2);
  }
}

void sub_100005D88(uint64_t a1)
{
  v2 = [*(a1 + 32) longLongValue];
  v3 = [*(a1 + 40) winningScore];
  v4 = [v3 longLongValue];

  if (v2 >= v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 48) personalityName];
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "New winner: personality: %@, score: %@", &v7, 0x16u);
    }

    [*(a1 + 40) setWinningScore:*(a1 + 32)];
    [*(a1 + 40) setWinningDomPersonality:*(a1 + 48)];
    [*(a1 + 40) setWinningIORegEntryID:*(a1 + 56)];
  }
}

id sub_10000626C(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = v2;
  if (!v2)
  {
    v4 = 0;
    v13 = 0;
    goto LABEL_21;
  }

  v4 = [v2 localizations];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = CFPreferencesCopyValue(@"AppleLanguages", kCFPreferencesAnyApplication, @"mobile", kCFPreferencesAnyHost);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v6 = [NSBundle preferredLocalizationsFromArray:v4 forPreferences:v5];
  if (![v6 count])
  {

LABEL_19:
LABEL_20:
    v13 = [v3 localizedStringForKey:v1 value:v1 table:{@"Localizable", v15}];
    goto LABEL_21;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v3 localizedStringForKey:v1 value:0 table:@"Localizable" localization:{*(*(&v15 + 1) + 8 * i), v15}];
        if (v12)
        {
          v13 = v12;
          goto LABEL_16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_16:

  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v13;
}

uint64_t sub_100006494()
{
  if (qword_100015010 != -1)
  {
    sub_100008AB4();
  }

  return qword_100015008;
}

void sub_1000064CC(id a1)
{
  v1 = MOLogOpen();
  if (v1)
  {
    snprintf(__str, 0x400uLL, "/var/mobile/Library/Logs/Device-O-Matic/%s.log", "com.apple.mobile.device_o_matic");
    MOLogEnableDiskLogging();
  }

  qword_100015008 = v1;
}

id sub_100006580(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v7 = objc_alloc_init(NSMutableString);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_12:
    v15 = @"NULL";
LABEL_13:
    [v7 appendString:v15];
    goto LABEL_25;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (![v7 length] || (objc_msgSend(v7, "substringFromIndex:", objc_msgSend(v7, "length") - 1), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"\n"), v8, v9))
  {
    [v7 appendFormat:@"%*s", (2 * a2), &unk_10000B4DD];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a2)
    {
      v10 = @"<dict>\n";
    }

    else
    {
      v10 = @"\n<dict>\n";
    }

    v11 = sub_100006580(v10, a2, v7);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100007AD4;
    v33[3] = &unk_1000108D0;
    v35 = a2;
    v12 = v7;
    v34 = v12;
    [v5 enumerateKeysAndObjectsUsingBlock:v33];
    v13 = sub_100006580(@"</dict>", a2, v12);
    v14 = v34;
LABEL_24:

    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a2)
    {
      v16 = @"<array>\n";
    }

    else
    {
      v16 = @"\n<array>\n";
    }

    v17 = sub_100006580(v16, a2, v7);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100007B94;
    v30[3] = &unk_1000108F8;
    v32 = a2;
    v18 = v7;
    v31 = v18;
    [v5 enumerateObjectsUsingBlock:v30];
    v19 = sub_100006580(@"</array>", a2, v18);
    v14 = v31;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a2)
    {
      v20 = @"<set>\n";
    }

    else
    {
      v20 = @"\n<set>\n";
    }

    v21 = sub_100006580(v20, a2, v7);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100007BF4;
    v27[3] = &unk_100010920;
    v29 = a2;
    v22 = v7;
    v28 = v22;
    [v5 enumerateObjectsUsingBlock:v27];
    v23 = sub_100006580(@"</set>", a2, v22);
    v14 = v28;
    goto LABEL_24;
  }

  v25 = CFGetTypeID(v5);
  if (v25 == CFBooleanGetTypeID())
  {
    if ([v5 BOOLValue])
    {
      v15 = @"true";
    }

    else
    {
      v15 = @"false";
    }

    goto LABEL_13;
  }

  v26 = [v5 description];
  [v7 appendString:v26];

LABEL_25:

  return v7;
}

uint64_t sub_100006944(io_registry_entry_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_100006B04;
  v10 = &unk_100010860;
  v11 = &v12;
  v2 = v8;
  v17 = 0;
  v9();
  if ((v17 & 1) == 0)
  {
    IOObjectRetain(a1);
    if ((v17 & 1) == 0)
    {
      while (1)
      {
        parent = 0;
        ParentEntry = IORegistryEntryGetParentEntry(a1, "IOService", &parent);
        IOObjectRelease(a1);
        if (ParentEntry)
        {
          break;
        }

        a1 = parent;
        if (!parent)
        {
          goto LABEL_9;
        }

        (v9)(v2, parent, &v17);
        if (v17 == 1)
        {
          IOObjectRelease(a1);
          goto LABEL_9;
        }
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v4 = __error();
        v5 = strerror(*v4);
        sub_100008AC8(v5, buf);
      }
    }
  }

LABEL_9:

  v6 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_100006B04(uint64_t a1, io_registry_entry_t entry, _BYTE *a3)
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"removable", 0, 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    if (CFEqual(CFProperty, kCFBooleanTrue))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }

    CFRelease(v6);
  }
}

__CFDictionary *sub_100006BA0(uint64_t a1)
{
  v1 = IORegistryEntryIDMatching(a1);
  if (v1 && (MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1)) != 0)
  {
    v3 = MatchingService;
    properties = 0;
    v4 = 0;
    if (!IORegistryEntryCreateCFProperties(MatchingService, &properties, 0, 0))
    {
      v4 = properties;
    }

    IOObjectRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100006C34(io_registry_entry_t a1, __CFDictionary *a2, void *a3)
{
  v5 = a3;
  if (qword_100015020 != -1)
  {
    sub_100008B14();
  }

  v6 = qword_100015018;
  if (v5)
  {
    v6 = v5;
  }

  v7 = v6;
  iterator = 0;
  IORegistryEntryGetChildIterator(a1, "IOService", &iterator);
  v8 = IOIteratorNext(iterator);
  if (v8)
  {
    v9 = v8;
    v34 = 0;
    v10 = &_os_log_default;
    v28 = a2;
    v29 = v5;
    v32 = v7;
    do
    {
      IOServiceWaitQuiet(v9, 0);
      entryID = 0;
      IORegistryEntryGetRegistryEntryID(v9, &entryID);
      cf = CFNumberCreate(0, kCFNumberSInt64Type, &entryID);
      memset(className, 0, 128);
      IOObjectGetClass(v9, className);
      key = CFStringCreateWithFormat(0, 0, @"%s, %lld (0x%016llx)", className, entryID, entryID);
      if (v7)
      {
        matches[0] = 0;
        IOServiceMatchPropertyTable(v9, v7, matches);
        if (matches[0])
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v52 = key;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ matches via IOServiceMatchPropertyTable", buf, 0xCu);
          }

          v34 = 1;
        }
      }

      *matches = 0;
      IORegistryEntryCreateCFProperties(v9, matches, 0, 0);
      if (a2)
      {
        CFDictionarySetValue(a2, key, *matches);
      }

      if (!((v5 == 0) | v34 & 1))
      {
        v30 = v9;
        v38 = [v5 count];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        obj = v7;
        v36 = [(__CFDictionary *)obj countByEnumeratingWithState:&v44 objects:v62 count:16];
        if (v36)
        {
          v11 = 0;
          v34 = 0;
          v35 = *v45;
          do
          {
            for (i = 0; i != v36; i = i + 1)
            {
              if (*v45 != v35)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v44 + 1) + 8 * i);
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v14 = *matches;
              v15 = [v14 countByEnumeratingWithState:&v40 objects:v61 count:16];
              if (v15)
              {
                v16 = v15;
                v37 = i;
                v17 = *v41;
                while (2)
                {
                  for (j = 0; j != v16; j = j + 1)
                  {
                    if (*v41 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v40 + 1) + 8 * j);
                    if ([(__CFDictionary *)v13 isEqualToString:v19])
                    {
                      v20 = v10;
                      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
                      {
                        v21 = [(__CFDictionary *)obj objectForKey:v13];
                        v22 = [*matches objectForKey:v19];
                        *buf = 134219010;
                        v52 = v11;
                        v53 = 2112;
                        v54 = v13;
                        v55 = 2112;
                        v56 = v19;
                        v57 = 2112;
                        v58 = v21;
                        v59 = 2112;
                        v60 = v22;
                        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%lu] comparing keys %@:%@ and values %@:%@", buf, 0x34u);
                      }

                      v23 = [(__CFDictionary *)obj objectForKey:v13];
                      v24 = [*matches objectForKey:v19];
                      v25 = [v23 isEqual:v24];

                      if (v25)
                      {
                        v11 = (v11 + 1);
                        v10 = v20;
                        if (v11 == v38)
                        {
                          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412802;
                            v52 = key;
                            v53 = 2112;
                            v54 = v32;
                            v55 = 2112;
                            v56 = *matches;
                            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ MATCHED %@ with %@", buf, 0x20u);
                          }

                          v34 = 1;
                          v11 = v38;
                          goto LABEL_38;
                        }
                      }

                      else
                      {
                        v10 = v20;
                      }
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v40 objects:v61 count:16];
                  if (v16)
                  {
                    continue;
                  }

                  break;
                }

LABEL_38:
                i = v37;
              }
            }

            v36 = [(__CFDictionary *)obj countByEnumeratingWithState:&v44 objects:v62 count:16];
          }

          while (v36);
        }

        else
        {
          v34 = 0;
        }

        a2 = v28;
        v5 = v29;
        v7 = v32;
        v9 = v30;
      }

      CFRelease(key);
      CFRelease(cf);
      CFRelease(*matches);
      IOObjectRelease(v9);
      v9 = IOIteratorNext(iterator);
    }

    while (v9);
  }

  else
  {
    v34 = 0;
  }

  IOObjectRelease(iterator);

  return v34 & 1;
}

void sub_10000718C(id a1)
{
  qword_100015018 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/tmp/test.plist"];

  _objc_release_x1();
}

void sub_1000071D4(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_100006C34([v1 io_service], Mutable, 0);
  v4 = sub_100006580(Mutable, 2, v2);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = v1;
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@\nchildren: %@", &v5, 0x16u);
  }

  CFRelease(Mutable);
}

void sub_1000072F8(void *a1, void *a2)
{
  v12 = a1;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a2;
  v14 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v14)
  {
    v13 = *v22;
    do
    {
      v3 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = v3;
        v4 = *(*(&v21 + 1) + 8 * v3);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v27 = v12;
          v28 = 2112;
          v29 = v4;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ child %@", buf, 0x16u);
        }

        v5 = [obj objectForKey:v4];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v18;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v18 != v8)
              {
                objc_enumerationMutation(v5);
              }

              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                v10 = *(*(&v17 + 1) + 8 * i);
                v11 = [v5 objectForKey:v10];
                *buf = 138412546;
                v27 = v10;
                v28 = 2112;
                v29 = v11;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "\tproperty %@: %@", buf, 0x16u);
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v7);
        }

        v3 = v16 + 1;
      }

      while ((v16 + 1) != v14);
      v14 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v14);
  }
}

id sub_100007578(io_registry_entry_t a1)
{
  properties = 0;
  memset(path, 0, 512);
  IORegistryEntryGetNameInPlane(a1, "IOService", name);
  IORegistryEntryGetPath(a1, "IOService", path);
  IORegistryEntryCreateCFProperties(a1, &properties, 0, 0);
  v2 = objc_alloc_init(NSMutableString);
  v3 = sub_100006580(properties, 0, 0);
  [v2 appendFormat:@"%s:\nPath:\n%s\n%@\n", name, path, v3];

  return v2;
}

const char *sub_1000076BC(void *a1)
{
  if (a1 == &_xpc_type_connection)
  {
    return "XPC_TYPE_CONNECTION";
  }

  if (a1 == &_xpc_type_null)
  {
    return "XPC_TYPE_NULL";
  }

  if (a1 == &_xpc_type_BOOL)
  {
    return "XPC_TYPE_BOOL";
  }

  if (a1 == &_xpc_type_int64)
  {
    return "XPC_TYPE_INT64";
  }

  if (a1 == &_xpc_type_uint64)
  {
    return "XPC_TYPE_UINT64";
  }

  if (a1 == &_xpc_type_double)
  {
    return "XPC_TYPE_DOUBLE";
  }

  if (a1 == &_xpc_type_date)
  {
    return "XPC_TYPE_DATE";
  }

  if (a1 == &_xpc_type_data)
  {
    return "XPC_TYPE_DATA";
  }

  if (a1 == &_xpc_type_string)
  {
    return "XPC_TYPE_STRING";
  }

  if (a1 == &_xpc_type_uuid)
  {
    return "XPC_TYPE_UUID";
  }

  if (a1 == &_xpc_type_fd)
  {
    return "XPC_TYPE_FD";
  }

  if (a1 == &_xpc_type_shmem)
  {
    return "XPC_TYPE_SHMEM";
  }

  if (a1 == &_xpc_type_array)
  {
    return "XPC_TYPE_ARRAY";
  }

  if (a1 == &_xpc_type_dictionary)
  {
    return "XPC_TYPE_DICTIONARY";
  }

  if (a1 == &_xpc_type_error)
  {
    return "XPC_TYPE_ERROR";
  }

  return "Unknown type";
}

void sub_100007868(void *a1, uint64_t a2)
{
  v3 = a1;
  type = xpc_get_type(v3);
  v5 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100008B28(a2, type, v3);
  }
}

void sub_1000078E0(void *a1, uint64_t a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v6 = sub_1000079B8;
  v7 = &unk_1000108A8;
  v3 = a1;
  v8 = v3;
  v9 = a2;
  v4 = v5;
  if (qword_100015010 != -1)
  {
    sub_100008C14();
  }

  if (qword_100015008 && *(qword_100015008 + 44) >= 5)
  {
    v6(v4);
  }
}

void sub_1000079B8(uint64_t a1)
{
  type = xpc_get_type(*(a1 + 32));
  v3 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = sub_1000076BC(type);
    if (type == &_xpc_type_error)
    {
      string = xpc_dictionary_get_string(*(a1 + 32), _xpc_error_key_description);
    }

    else
    {
      string = &unk_10000B4DD;
    }

    v7 = 136315650;
    v8 = v4;
    v9 = 2080;
    v10 = v5;
    v11 = 2080;
    v12 = string;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
  }
}

void sub_100007AD4(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = sub_100006580(a2, (*(a1 + 40) + 1), *(a1 + 32));
  v6 = sub_100006580(@" : ", (*(a1 + 40) + 1), *(a1 + 32));
  v7 = sub_100006580(v9, (*(a1 + 40) + 1), *(a1 + 32));
  v8 = sub_100006580(@"\n", (*(a1 + 40) + 1), *(a1 + 32));
}

void sub_100007C54()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100001B50();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100007CAC(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100001B50();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100007D14(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100001B50();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  *a2 = 0;
}

void sub_100007E00(void *a1)
{
  type = xpc_get_type(a1);
  v3 = 136315394;
  v4 = sub_1000076BC(type);
  v5 = 2080;
  string = xpc_dictionary_get_string(a1, "XPCErrorDescription");
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Got unexpected stuff from xpc: %s : %s", &v3, 0x16u);
}

void sub_100007EB4(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    xpc_dictionary_get_uint64(a1, "_LB_TYPE");
    sub_100001B50();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_100007F60(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) xpcName];
    sub_100001B50();
    _os_log_impl(v2, v3, v4, v5, v6, 0x20u);
  }
}

void sub_100008034(_xpc_connection_s *a1, void *a2, void *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a3 xpcName];
    v12 = [a3 personalityName];
    sub_100001B50();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  xpc_connection_send_message(a1, a2);
}

void sub_100008134()
{
  v0 = __error();
  strerror(*v0);
  sub_100004E80();
  sub_100004E74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100008298()
{
  sub_100004E80();
  sub_100004E74();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100008310()
{
  sub_100004E80();
  sub_100004E74();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100008388(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Scanned plist: %@", buf, 0xCu);
}

void sub_1000083D4(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "IORegistryEntryGetChildIterator failed: %s", buf, 0xCu);
}

void sub_100008420(int *a1)
{
  v6 = *a1;
  sub_100004E74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000084A0(int *a1)
{
  v6 = *a1;
  sub_100004E74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000085A4()
{
  v0 = __error();
  strerror(*v0);
  sub_100004E80();
  sub_100004E74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000086C0()
{
  v0 = __error();
  strerror(*v0);
  sub_100004E74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100008748()
{
  v0 = __error();
  strerror(*v0);
  sub_100004E74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1000087F8()
{
  v0 = __error();
  strerror(*v0);
  sub_100006254();
  sub_100004E74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100008888()
{
  v0 = __error();
  strerror(*v0);
  sub_100006254();
  sub_100004E74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100008918(_BYTE *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100004E74();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100008984(_BYTE *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = __error();
    strerror(*v2);
    sub_100004E74();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  *a1 = 0;
}

void sub_100008A34(uint64_t a1)
{
  v6 = *(a1 + 24);
  sub_100004E74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100008AC8(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "IORegistryEntryGetParentIterator failed: %s", buf, 0xCu);
}

void sub_100008B28(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1000076BC(a2);
  if (a2 == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(a3, _xpc_error_key_description);
  }

  else
  {
    string = &unk_10000B4DD;
  }

  v8 = 136315650;
  v9 = a1;
  v10 = 2080;
  v11 = v6;
  v12 = 2080;
  v13 = string;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s %s %s", &v8, 0x20u);
}