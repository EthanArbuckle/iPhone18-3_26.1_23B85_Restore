uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[OSASystemConfiguration sharedInstance];
  v2 = [v1 logDomain];

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "*** Starting OTACrashCopier ***", buf, 2u);
  }

  +[OSATasking checkTaskingRelevance];
  v3 = objc_alloc_init(SubmissionController);
  if (v3)
  {
    v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.OSASubmission.client"];
    [v4 setDelegate:v3];
    [v4 resume];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100002450();
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001204;
  handler[3] = &unk_1000082C8;
  v5 = v3;
  v9 = v5;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);

  objc_autoreleasePoolPop(v0);
  v6 = +[NSRunLoop currentRunLoop];
  [v6 run];

  return 1;
}

void sub_100001204(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type != &_xpc_type_error)
  {
    if (type != &_xpc_type_dictionary)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        v5 = "Unknown XPC event type - ignoring.";
        v6 = 2;
LABEL_7:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, &v12, v6);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v7 = xpc_dictionary_get_value(v3, _xpc_event_key_name);
    v8 = v7;
    if (v7 && xpc_get_type(v7) == &_xpc_type_string)
    {
      string_ptr = xpc_string_get_string_ptr(v8);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        string = string_ptr;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Got event called '%s'", &v12, 0xCu);
      }

      if (!strcmp(string_ptr, "SubmissionPreferenceChangedEvent"))
      {
        [*(a1 + 32) handleOptInChange];
        goto LABEL_13;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        string = string_ptr;
        v9 = "Recieved LaunchEvent with unknown name '%s'";
        v10 = 12;
        goto LABEL_12;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v9 = "Recieved nameless LaunchEvent - ignoring.";
      v10 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, &v12, v10);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
    v5 = "Got XPC error in notifyd event handler: %s";
    v6 = 12;
    goto LABEL_7;
  }

LABEL_14:
}

id sub_1000015EC(uint64_t a1, int a2, void *a3)
{
  v4 = @"cellular";
  if ((a2 & 0x40000) == 0)
  {
    v4 = @"wifi";
  }

  if ((a2 & 6) == 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"<none>";
  }

  return [a3 reachabilityCallback:v5];
}

BOOL sub_100001A58(id a1, OSALog *a2)
{
  v2 = [(OSALog *)a2 filepath];
  v3 = getxattr([v2 UTF8String], "DnUOverride", 0, 0, 0, 0) < 1;

  return v3;
}

void sub_100001CBC(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"mode"];
    *buf = 138543362;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "submit mode=%{public}@", buf, 0xCu);
  }

  [OSAStateMonitor recordEvent:OSAStateMonitorEventSubmissionStarted];
  if (&_CPPowerAssertionCreate)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v27 = 0x4082C00000000000;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "creating power assertion for %.0f secs", buf, 0xCu);
    }

    *(*(a1 + 40) + 32) = CPPowerAssertionCreate();
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000020D8;
  v25[3] = &unk_100008330;
  v25[4] = *(a1 + 40);
  v5 = [NSBlockOperation blockOperationWithBlock:v25];
  v6 = [NSTimer scheduledTimerWithTimeInterval:v5 target:"main" selector:0 userInfo:0 repeats:600.0];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"mode"];
  v8 = [v7 isEqualToString:@"beta"];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v1 = [*(a1 + 32) objectForKeyedSubscript:@"mode"];
    v9 = [v1 isEqualToString:@"urgent"];
  }

  v10 = [NSNumber numberWithInt:v9];
  v11 = [*(*(a1 + 40) + 48) scanOptions];
  [v11 setObject:v10 forKeyedSubscript:kOSALogScanOptionIncludeOnlyUrgent];

  if ((v8 & 1) == 0)
  {
  }

  runCrashMoverService();
  v12 = [*(*(a1 + 40) + 8) connectionType];
  [*(*(a1 + 40) + 16) setConnectionType:v12];

  v13 = +[NSDate date];
  v14 = [*(a1 + 32) mutableCopy];
  v15 = [*(*(a1 + 40) + 24) copy];
  [v14 setObject:v15 forKeyedSubscript:@"notifications"];

  [v14 setObject:v13 forKeyedSubscript:@"time"];
  [*(*(a1 + 40) + 16) setLaunchInfo:v14];
  v16 = *(a1 + 40);
  v17 = *(v16 + 16);
  v18 = *(v16 + 48);
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100002164;
  v23 = &unk_100008358;
  v24 = *(a1 + 48);
  [v17 submitLogsUsingPolicy:v18 resultsCallback:&v20];
  [*(*(a1 + 40) + 24) removeAllObjects];
  v19 = *(*(a1 + 40) + 32);
  if (v19)
  {
    CFRelease(v19);
  }

  [v6 invalidate];
  [OSAStateMonitor recordEvent:OSAStateMonitorEventSubmissionCompleted];

  objc_autoreleasePoolPop(v3);
}

id sub_1000020D8(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "power assertion expired; aborting submission", v3, 2u);
  }

  [OSAStateMonitor recordEvent:OSAStateMonitorEventSubmissionErrorPowerAssertionExpired];
  return [*(*(a1 + 32) + 16) abort];
}

uint64_t sub_100002164(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100002348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002370(uint64_t a1)
{
  v2 = +[OSADeviceRecoveryEnvHelper sharedInstance];
  *(*(*(a1 + 40) + 8) + 24) = [v2 overrideMountPath:*(a1 + 32)];
}

void sub_1000024E0(uint8_t *buf, int a2)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Client (%d) not entitled to override mount path.", buf, 8u);
}