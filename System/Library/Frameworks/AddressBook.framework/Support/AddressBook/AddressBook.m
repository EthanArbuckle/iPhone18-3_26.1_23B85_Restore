BOOL sub_1000009F4()
{
  sp = 0;
  v0 = bootstrap_check_in(bootstrap_port, "com.apple.ABDatabaseDoctor", &sp);
  v1 = v0;
  if (v0)
  {
    v2 = mach_error_string(v0);
    syslog(3, "Couldn't register with bootstrap server %s (0x%x); failing...", v2, v1);
  }

  else
  {
    v3 = CFMachPortCreateWithPort(kCFAllocatorDefault, sp, sub_1000009E8, 0, 0);
    RunLoopSource = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, v3, 0);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 1u);
    CFRelease(RunLoopSource);
    CFRelease(v3);
  }

  return v1 == 0;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (sub_1000009F4() && (ABDeviceIsBeforeFirstUnlockWithDataProtected() & 1) == 0)
  {
    v1 = +[NSMutableArray array];
    v2 = ABCAddressBookCopyDBDirectory();
    if (v2)
    {
      [v1 addObject:v2];
      v3 = ABCAddressBookCopyDelegateDBDirectories();
      if (v3)
      {
        [v1 addObjectsFromArray:v3];
      }
    }

    [v1 enumerateObjectsUsingBlock:&stru_1000041E8];
  }

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_100000B9C(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = kCFRunLoopDefaultMode;
  v6 = &ABAddressBookCheckDefaultSourceIntegrityAndUpdateIfNeeded_ptr;
  v7 = &ABAddressBookCheckDefaultSourceIntegrityAndUpdateIfNeeded_ptr;
  v8 = &ABAddressBookCheckDefaultSourceIntegrityAndUpdateIfNeeded_ptr;
  v34 = v4;
  do
  {
    byte_100008050 = 1;
    getpid();
    proc_disable_cpumon();
    v9 = ABAddressBookCreateWithDatabaseDirectoryAndForceInProcessLinking();
    ABDatabaseIntegrityCheckWithAddressBook();
    buf[0] = 1;
    if ((ABCIsSortDataValid() & 1) == 0 && buf[0] == 1)
    {
      ABCRebuildSearchIndex();
      ABCResetSortData();
    }

    ABAddressBookCheckDefaultSourceIntegrityAndUpdateIfNeeded();
    if ([v6[50] isLinkDataValidForAddressBook:v9])
    {
      v10 = os_log_create("com.apple.contacts.database-doctor", "autolinking");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "BEGIN autolinking", buf, 2u);
      }

      ABDiagnosticsEnabled();
      _ABLog2();
      v11 = [objc_alloc(v6[50]) initWithAddressBook:v9];
      v12 = sub_1000010A4(@"ABAutolinkLimit", 200, @"limit");
      v13 = sub_1000010A4(@"ABAutolinkSleepSeconds", 1, @"sleep time");
      v14 = os_signpost_id_generate(v10);
      v15 = v10;
      v16 = v15;
      v36 = v14 - 1;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Autolinking", &unk_1000017DE, buf, 2u);
      }

      spid = v14;
      v17 = v12;

      while (1)
      {
        v18 = os_signpost_id_generate(v16);
        v19 = v16;
        v20 = v19;
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "Autolinking (batch)", &unk_1000017DE, buf, 2u);
        }

        v21 = [v11 linkRecentlyAddedPeopleWithLimit:v17];
        v22 = v20;
        v23 = v22;
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v18, "Autolinking (batch)", &unk_1000017DE, buf, 2u);
        }

        if (!v21)
        {
          break;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v38 = v13;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Sleeping for %i seconds", buf, 8u);
        }

        ABDiagnosticsEnabled();
        v33 = v13;
        _ABLog2();
        sleep(v13);
      }

      v24 = v23;
      v25 = v24;
      v5 = kCFRunLoopDefaultMode;
      if (v36 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, spid, "Autolinking", &unk_1000017DE, buf, 2u);
      }

      v7 = &ABAddressBookCheckDefaultSourceIntegrityAndUpdateIfNeeded_ptr;
      v8 = &ABAddressBookCheckDefaultSourceIntegrityAndUpdateIfNeeded_ptr;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "END autolinking", buf, 2u);
      }

      ABDiagnosticsEnabled();
      _ABLog2();

      v4 = v34;
      v6 = &ABAddressBookCheckDefaultSourceIntegrityAndUpdateIfNeeded_ptr;
    }

    v26 = [objc_alloc(v7[49]) initWithAddressBook:v9];
    [v26 performPendingMergeOrDeleteAction];

    CFRelease(v9);
    getpid();
    proc_set_cpumon_defaults();
    v27 = [v8[51] date];
    if (byte_100008050 == 1)
    {
      do
      {
        v28 = [v8[51] date];
        [v28 timeIntervalSinceDate:v27];
        v30 = v29;

        if (v30 >= 10.0)
        {
          break;
        }

        v31 = CFRunLoopRunInMode(v5, 10.0 - v30, 1u) - 3;
      }

      while (byte_100008050 == 1 && v31 < 0xFFFFFFFE);
    }
  }

  while (byte_100008050 != 1);
}

CFIndex sub_1000010A4(const __CFString *a1, CFIndex a2, void *a3)
{
  keyExistsAndHasValidFormat = 0;
  v5 = a3;
  v6 = ABPeoplePickerPrefs();
  AppIntegerValue = CFPreferencesGetAppIntegerValue(a1, v6, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v8 = AppIntegerValue;
    ABDiagnosticsEnabled();
    _ABLog2();
    a2 = v8;
  }

  else
  {
    ABDiagnosticsEnabled();
    _ABLog2();
  }

  return a2;
}