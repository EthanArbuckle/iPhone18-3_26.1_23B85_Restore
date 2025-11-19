@interface OSAXPCServices
+ (BOOL)handleDREOptInRequestWithParams:(id)a3 fromConnection:(id)a4 forReply:(id)a5;
+ (BOOL)handleDefaultsRequestWithParams:(id)a3 forReply:(id)a4;
+ (void)handleStabilityMonitorRequest:(id)a3 fromConnection:(id)a4 forReply:(id)a5;
- (BOOL)generateCrackShotWithParams:(id)a3;
- (BOOL)generateStackShotWithParams:(id)a3;
- (BOOL)generateSystemMemoryResetWithParams:(id)a3;
- (BOOL)serviceRequest:(id)a3 forOperation:(unint64_t)a4 fromConnection:(id)a5 forReply:(id)a6;
- (OSAXPCServices)init;
- (void)dealloc;
@end

@implementation OSAXPCServices

- (OSAXPCServices)init
{
  v12.receiver = self;
  v12.super_class = OSAXPCServices;
  v2 = [(OSAXPCServices *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.osanalytics.defaultsQueue", 0);
    defaultsQueue = v2->_defaultsQueue;
    v2->_defaultsQueue = v3;

    mach_service = xpc_connection_create_mach_service("com.apple.osanalytics.osanalyticshelper", 0, 1uLL);
    listenerConnection = v2->_listenerConnection;
    v2->_listenerConnection = mach_service;

    if (v2->_listenerConnection)
    {
      +[OSABridgeLinkRemote instantiate];
      +[OSALogHelper instantiate];
      objc_initWeak(&location, v2);
      v7 = v2->_listenerConnection;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000019D8;
      v9[3] = &unk_1000253D0;
      objc_copyWeak(&v10, &location);
      xpc_connection_set_event_handler(v7, v9);
      xpc_connection_resume(v2->_listenerConnection);
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100015FF8();
      }

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  listenerConnection = self->_listenerConnection;
  if (listenerConnection)
  {
    xpc_connection_cancel(listenerConnection);
  }

  v4.receiver = self;
  v4.super_class = OSAXPCServices;
  [(OSAXPCServices *)&v4 dealloc];
}

- (BOOL)serviceRequest:(id)a3 forOperation:(unint64_t)a4 fromConnection:(id)a5 forReply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (a4 > 6)
  {
    if (a4 <= 8)
    {
      if (a4 == 7)
      {
        v14 = xpc_connection_copy_entitlement_value();
        v15 = v14;
        if (v14 && xpc_get_type(v14) == &_xpc_type_BOOL && xpc_BOOL_get_value(v15))
        {
          defaultsQueue = self->_defaultsQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100010960;
          block[3] = &unk_1000253F8;
          v29 = &v30;
          v27 = v10;
          v28 = v12;
          dispatch_sync(defaultsQueue, block);
        }

        else
        {
          v24 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            pid = xpc_connection_get_pid(v11);
            sub_10001607C(buf, pid);
          }

          *(v31 + 24) = 0;
        }
      }

      else
      {
        [OSAXPCServices handleStabilityMonitorRequest:v10 fromConnection:v11 forReply:v12];
      }

      goto LABEL_30;
    }

    switch(a4)
    {
      case 9uLL:
        v13 = [OSALogHelper handleLogCleanupRequest:v10 fromConnection:v11 forReply:v12];
        goto LABEL_29;
      case 0xAuLL:
        v13 = [OSALogHelper overrideMountPathWithXPCRequest:v10 fromConnection:v11];
        goto LABEL_29;
      case 0xBuLL:
        v13 = [OSAXPCServices handleDREOptInRequestWithParams:v10 fromConnection:v11 forReply:v12];
        goto LABEL_29;
    }

LABEL_31:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_1000160C8();
    }

    goto LABEL_30;
  }

  if (a4 <= 3)
  {
    if (a4 == 2)
    {
      v13 = [(OSAXPCServices *)self generateStackShotWithParams:v10];
      goto LABEL_29;
    }

    if (a4 == 3)
    {
      v13 = [(OSAXPCServices *)self generateCrackShotWithParams:v10];
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (a4 == 4)
  {
    v13 = [(OSAXPCServices *)self generateSystemMemoryResetWithParams:v10];
    goto LABEL_29;
  }

  if (a4 != 5)
  {
    v13 = [OSALogHelper createForSubmissionWithXPCRequest:v10 fromConnection:v11 forReply:v12];
LABEL_29:
    *(v31 + 24) = v13;
    goto LABEL_30;
  }

  string = xpc_dictionary_get_string(v10, "log_countkey");
  v18 = xpc_dictionary_get_string(v10, "log_filepath");
  if (v18)
  {
    v19 = [NSString stringWithUTF8String:v18];
    if (string)
    {
      v20 = string;
    }

    else
    {
      v20 = "<unknown>";
    }

    v21 = [NSString stringWithUTF8String:v20];
    [OSABridgeLinkProxy transfer:v19 key:v21];

    *(v31 + 24) = 1;
  }

LABEL_30:
  v22 = *(v31 + 24);
  _Block_object_dispose(&v30, 8);

  return v22 & 1;
}

+ (BOOL)handleDefaultsRequestWithParams:(id)a3 forReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  string = xpc_dictionary_get_string(v5, "defaults_key");
  v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.osanalytics.internal"];
  uint64 = xpc_dictionary_get_uint64(v5, "defaults_operation");
  v10 = uint64;
  if (uint64 > 1)
  {
    if (uint64 != 2)
    {
      if (uint64 != 3)
      {
        if (uint64 == 4)
        {
          v11 = xpc_dictionary_get_remote_connection(v6);
          v12 = xpc_connection_copy_entitlement_value();
          v13 = v12;
          if (v12 && xpc_get_type(v12) == &_xpc_type_BOOL && xpc_BOOL_get_value(v13))
          {
            v14 = [v8 dictionaryRepresentation];
            v15 = v14;
            if (v6 && v14)
            {
              v16 = ns2xpc();
              xpc_dictionary_set_value(v6, "defaults_value", v16);
            }

            v10 = 1;
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100016144(v11);
            }

            v10 = 0;
          }

LABEL_42:

LABEL_43:
          goto LABEL_49;
        }

        goto LABEL_31;
      }

      v18 = xpc_dictionary_get_value(v5, "defaults_value");
      if (v18)
      {
        v22 = xpc2ns();
        v23 = v22;
        v10 = 0;
        if (!string || !v22)
        {
          goto LABEL_47;
        }

        v24 = +[NSNull null];
        v25 = [v23 isEqual:v24];

        if (v25)
        {
          v10 = 0;
LABEL_47:

          goto LABEL_48;
        }

        v31 = [NSString stringWithUTF8String:string];
        [v8 setObject:v23 forKey:v31];
      }

      else
      {
        v23 = [NSString stringWithUTF8String:string];
        [v8 removeObjectForKey:v23];
      }

      v10 = 1;
      goto LABEL_47;
    }

    v10 = 0;
    if (!v6 || !string)
    {
      goto LABEL_49;
    }

    v19 = [NSString stringWithUTF8String:string];
    v13 = [v8 objectForKey:v19];

    v11 = [NSString stringWithUTF8String:string];
    if (([(_xpc_connection_s *)v11 isEqualToString:@"LegacyAutomatedDeviceGroup"]& 1) == 0)
    {
      if (v13)
      {
        goto LABEL_39;
      }

      if (![(_xpc_connection_s *)v11 isEqualToString:@"AutomatedDeviceGroup"])
      {
LABEL_51:
        v10 = 0;
        goto LABEL_43;
      }
    }

    v20 = +[OSASystemConfiguration sharedInstance];
    v21 = [v20 getPrefsKey:@"AutomatedDeviceGroup" forDomain:@"com.apple.da" withOptions:0];

    v13 = v21;
    if (!v21)
    {
      goto LABEL_51;
    }

LABEL_39:
    v28 = ns2xpc();
    v10 = v28 != 0;
    if (v28)
    {
      xpc_dictionary_set_value(v6, "defaults_value", v28);
    }

    goto LABEL_42;
  }

  if (uint64)
  {
    if (uint64 != 1)
    {
LABEL_31:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000161C4();
      }

      v10 = 0;
      goto LABEL_49;
    }

    v17 = xpc_dictionary_get_value(v5, "defaults_value");
    v18 = v17;
    v10 = 0;
    if (string && v17)
    {
      if (xpc_get_type(v17) == &_xpc_type_BOOL)
      {
        value = xpc_BOOL_get_value(v18);
        v30 = [NSString stringWithUTF8String:string];
        [v8 setBool:value forKey:v30];

        v10 = 1;
      }

      else
      {
        v10 = 0;
      }
    }

LABEL_48:

    goto LABEL_49;
  }

  if (v6 && string)
  {
    v26 = [NSString stringWithUTF8String:string];
    v27 = [v8 BOOLForKey:v26];

    xpc_dictionary_set_BOOL(v6, "defaults_value", v27);
    v10 = 1;
  }

LABEL_49:

  return v10;
}

+ (BOOL)handleDREOptInRequestWithParams:(id)a3 fromConnection:(id)a4 forReply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[OSASystemConfiguration sharedInstance];
  v11 = [v10 isInDeviceRecoveryEnvironment];

  if (v11)
  {
    uint64 = xpc_dictionary_get_uint64(v7, "dre_optIn_operation");
    v13 = +[NSFileManager defaultManager];
    v14 = container_system_group_path_for_identifier();
    if (v14)
    {
      v15 = v14;
      v16 = [v13 stringWithFileSystemRepresentation:v14 length:strlen(v14)];
      free(v15);
      if (v16)
      {
        v17 = [v16 stringByAppendingPathComponent:@"com.apple.osanalytics.dre.plist"];
        if (uint64)
        {
          if (uint64 == 1)
          {
            v18 = xpc_connection_copy_entitlement_value();
            v19 = v18;
            if (!v18 || xpc_get_type(v18) != &_xpc_type_BOOL || !xpc_BOOL_get_value(v19))
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_1000163B4(v8);
              }

              v22 = 0;
              goto LABEL_32;
            }

            v20 = xpc_dictionary_get_value(v7, "dre_optInValue");
            v21 = v20;
            if (!v20 || xpc_get_type(v20) != &_xpc_type_BOOL)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_100016370();
              }

              v22 = 0;
              goto LABEL_49;
            }

            v32 = @"dreOptIn";
            value = xpc_BOOL_get_value(v21);
            v27 = [NSNumber numberWithBool:?];
            v33 = v27;
            v28 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

            if ([v28 writeToFile:v17 atomically:0])
            {
              [v17 fileSystemRepresentation];
              if (OSASafeOpenReadOnly())
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109378;
                  LODWORD(v31[0]) = value;
                  WORD2(v31[0]) = 2112;
                  *(v31 + 6) = v17;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Set DRE opt-in value to %d at %@", buf, 0x12u);
                }

                v22 = 1;
                goto LABEL_48;
              }

              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_1000162F8();
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100016280();
            }

            v22 = 0;
LABEL_48:

LABEL_49:
LABEL_32:

            goto LABEL_37;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_1000164B8();
          }
        }

        else if (v9)
        {
          if ([v13 fileExistsAtPath:v17])
          {
            v24 = [NSDictionary dictionaryWithContentsOfFile:v17];
            v25 = [v24 objectForKeyedSubscript:@"dreOptIn"];
            v26 = [v25 BOOLValue];
          }

          else
          {
            v26 = 0;
          }

          xpc_dictionary_set_BOOL(v9, "dre_optInValue", v26);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_100016434(v26);
          }

          v22 = 1;
          goto LABEL_37;
        }

        v22 = 0;
LABEL_37:

        goto LABEL_22;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100016530();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v31[0] = 1;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error getting system group container: %llu", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10001623C();
  }

  v22 = 0;
LABEL_22:

  return v22;
}

+ (void)handleStabilityMonitorRequest:(id)a3 fromConnection:(id)a4 forReply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = xpc_connection_copy_entitlement_value();
  v11 = v10;
  if (v10 && xpc_get_type(v10) == &_xpc_type_BOOL && xpc_BOOL_get_value(v11))
  {
    v12 = xpc_dictionary_get_value(v7, "stability_parameters");
    if (v12)
    {
      v13 = xpc2ns();
      if (v13)
      {
        v14 = v13;
        v15 = xpc_dictionary_get_value(v7, "stability_bundleID");
        if (!v15)
        {
          [OSAStabilityMonitor evaluateStabilityWithParameters:v14];
          if (v9)
          {
            xpc_dictionary_set_BOOL(v9, "result", 1);
            xpc_connection_send_message(v8, v9);
          }

          v23 = 0;
          goto LABEL_34;
        }

        v16 = v15;
        string_ptr = xpc_string_get_string_ptr(v15);
        if (string_ptr)
        {
          v18 = string_ptr;
          v19 = xpc_dictionary_get_value(v7, "stability_coalitionName");
          v28 = v19;
          if (v19)
          {
            v20 = xpc_string_get_string_ptr(v19);
            if (!v20)
            {
              v21 = 0;
LABEL_31:
              v25 = 0;
              v23 = "Unable to handle coalition name from XPC message";
              goto LABEL_33;
            }

            v21 = [NSString stringWithUTF8String:v20];
            if (!v21)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v21 = 0;
          }

          if (v9)
          {
            v24 = [NSString stringWithUTF8String:v18];
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 3221225472;
            v29[2] = sub_100011658;
            v29[3] = &unk_100025460;
            v30 = v9;
            v31 = v8;
            [OSAStabilityMonitor evaluateStabilityOfBundleID:v24 coalitionName:v21 parameters:v14 completionHandler:v29];

            v23 = 0;
            v25 = 1;
          }

          else
          {
            v25 = 0;
            v23 = "No XPC reply given for per-process stability monitor";
          }

LABEL_33:

          if (v25)
          {
LABEL_34:
            v22 = 0;
            goto LABEL_15;
          }

          goto LABEL_35;
        }

        v23 = "Unable to handle bundle ID from XPC message";
      }

      else
      {
        v23 = "Unable to convert stability parameters to NSDictionary";
      }
    }

    else
    {
      v23 = "Missing stability parameters from XPC message";
    }

LABEL_35:
    v26 = xpc_copy_description(v7);
    v27 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100016574();
    }

    if (v26)
    {
      free(v26);
    }

    v22 = 1;
    goto LABEL_15;
  }

  v12 = OSAStabilityMonitorLogDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1000165F8(v8, v12);
  }

  v22 = 1;
  v23 = "Client is not entitled to run the stability monitor";
LABEL_15:

  if (v9 && v22)
  {
    xpc_dictionary_set_BOOL(v9, "result", 0);
    if (v23)
    {
      xpc_dictionary_set_string(v9, "error_desc", v23);
    }

    xpc_connection_send_message(v8, v9);
  }
}

- (BOOL)generateStackShotWithParams:(id)a3
{
  v3 = a3;
  if (qword_10002A460 != -1)
  {
    sub_100016684();
  }

  string = xpc_dictionary_get_string(v3, "reason");
  v5 = xpc_dictionary_get_string(v3, "caller");
  uint64 = xpc_dictionary_get_uint64(v3, "exception_code");
  v51 = uint64;
  v7 = xpc_dictionary_get_uint64(v3, "PID");
  v8 = xpc_dictionary_get_uint64(v3, "flags");
  xdict = xpc_dictionary_get_value(v3, "additional_payload");
  ++dword_10002A480;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "<anonymous>";
    if (v5)
    {
      v9 = v5;
    }

    *buf = 136446722;
    v54 = *&v9;
    if (string)
    {
      v10 = string;
    }

    else
    {
      v10 = "<unknown>";
    }

    v55 = 2048;
    v56 = uint64;
    v57 = 2080;
    v58 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Stackshot requested by %{public}s, code: %llx, reason: %s", buf, 0x20u);
  }

  if (!dispatch_semaphore_wait(qword_10002A458, 0))
  {
LABEL_20:
    v15 = [NSString alloc];
    if (v5)
    {
      v16 = v5;
    }

    else
    {
      v16 = "<anonymous>";
    }

    v44 = v16;
    v17 = [v15 initWithUTF8String:?];
    v18 = qword_10002A470;
    qword_10002A470 = v17;

    qword_10002A468 = CFAbsoluteTimeGetCurrent();
    if (v7)
    {
      v19 = [[VMUProcInfo alloc] initWithPid:v7];
      v20 = v19;
      if (v19)
      {
        v47 = [v19 name];
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      v47 = 0;
    }

    v22 = +[OSASystemConfiguration sharedInstance];
    v23 = [NSString stringWithFormat:@"stackshot_%llx", uint64];
    v24 = [v22 getTaskingKey:v23];

    v25 = +[NSSet set];
    v26 = +[OSASystemConfiguration sharedInstance];
    v45 = v24;
    v46 = v25;
    if ([v26 appleInternal])
    {

LABEL_41:
      v31 = [CDStackshotReport alloc];
      v32 = v31;
      if (string)
      {
        v33 = [NSString stringWithUTF8String:string];
        v28 = [v32 initForPid:v7 process:v47 withReason:v33 exceptionCode:&v51 exceptionCodeCount:1 stackshotFlags:v8];
      }

      else
      {
        v28 = [v31 initForPid:v7 process:v47 withReason:@"(null)" exceptionCode:&v51 exceptionCodeCount:1 stackshotFlags:v8];
      }

      clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      [v28 acquireStackshot];
      clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      [v28 ss_trace_length];
      if (xdict)
      {
        applier[0] = _NSConcreteStackBlock;
        applier[1] = 3221225472;
        applier[2] = sub_100011F80;
        applier[3] = &unk_1000254A8;
        v34 = objc_alloc_init(NSMutableDictionary);
        v50 = v34;
        xpc_dictionary_apply(xdict, applier);
        [v28 setAdditionalPayload:v34];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100016758();
        }
      }

      v35 = [NSString stringWithFormat:@"Requested by %s", v44];
      v52 = v35;
      v36 = [NSArray arrayWithObjects:&v52 count:1];
      [v28 addNotes:v36];

      v21 = [v28 saveWithOptions:0];
      v37 = [v28 getExtraData:@"stackshot_duration_nsec"];
      [v37 longLongValue];

      v38 = [v28 getExtraData:@"stackshot_duration_outer_nsec"];
      [v38 longLongValue];

      v39 = [v28 getExtraData:@"stackshot_duration_prior_nsec"];
      [v39 longLongValue];

      v40 = [v28 getExtraData:@"stackshot_size_estimate"];
      [v40 longLongValue];

      v41 = [v28 getExtraData:@"stackshot_size_estimate_adj"];
      [v41 longLongValue];

LABEL_49:
      qword_10002A468 = 0;
      v42 = qword_10002A470;
      qword_10002A470 = 0;

      dword_10002A478 = 0;
      dispatch_semaphore_signal(qword_10002A458);

      goto LABEL_50;
    }

    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v27 = [v24 BOOLValue];

      if (v27)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v29 = [NSNumber numberWithLongLong:uint64];
      v30 = [v25 containsObject:v29];

      if ((v30 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v54 = *&v5;
      v55 = 2048;
      v56 = uint64;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Ignoring stackshot requested by %{public}s with exception code 0x%llx because it is not tasked.", buf, 0x16u);
    }

    v21 = 0;
    v28 = v45;
    goto LABEL_49;
  }

  v11 = qword_10002A470;
  v12 = *&qword_10002A468;
  if (*&qword_10002A468 == 0.0)
  {
    ++dword_10002A478;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Stackshot already in progress (just now), ignoring", buf, 2u);
    }
  }

  else
  {
    v13 = CFAbsoluteTimeGetCurrent() - v12;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v54 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Stackshot already in progress (%.2f ago), ignoring", buf, 0xCu);
    }

    if (v13 > 300.0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100016698();
      }

      v14 = "<anonymous>";
      if (v5)
      {
        v14 = v5;
      }

      [NSString stringWithFormat:@"Stackshot wedged (originally requested by %@). Found by %s (ignored %d others)", v11, v14, dword_10002A478];
      v3 = [objc_claimAutoreleasedReturnValue() UTF8String];
      +[OSASystemConfiguration sharedInstance];
      [objc_claimAutoreleasedReturnValue() appleInternal];
      abort_with_reason();
      goto LABEL_20;
    }
  }

  v21 = 0;
LABEL_50:
  analytics_send_event_lazy();

  return v21;
}

- (BOOL)generateCrackShotWithParams:(id)a3
{
  v3 = a3;
  string = xpc_dictionary_get_string(v3, "reason");
  uint64 = xpc_dictionary_get_uint64(v3, "PID");
  v18 = xpc_dictionary_get_uint64(v3, "ers_namespace");
  v19 = xpc_dictionary_get_uint64(v3, "ers_code");
  v20 = xpc_dictionary_get_uint64(v3, "ers_flags");
  v6 = xpc_dictionary_get_value(v3, "additional_payload");

  v7 = [CDTerminatingStackshotReport alloc];
  v8 = [NSString stringWithUTF8String:string];
  v9 = [v7 initForPid:uint64 exitSnapshot:&v18 reason:v8];

  if (v6)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000123B8;
    v16 = &unk_1000254A8;
    v10 = objc_alloc_init(NSMutableDictionary);
    v17 = v10;
    xpc_dictionary_apply(v6, &v13);
    [v9 setAdditionalPayload:{v10, v13, v14, v15, v16}];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100016758();
    }
  }

  [v9 acquireStackshot];
  v11 = [v9 saveWithOptions:0];

  return v11;
}

- (BOOL)generateSystemMemoryResetWithParams:(id)a3
{
  v3 = a3;
  string = xpc_dictionary_get_string(v3, "reason");
  uint64 = xpc_dictionary_get_uint64(v3, "event_code");

  v6 = [OSASystemMemoryResetReport alloc];
  v7 = v6;
  if (string)
  {
    v8 = [NSString stringWithUTF8String:string];
    v9 = [(OSASystemMemoryResetReport *)v7 initWithEvent:v8 code:uint64];
  }

  else
  {
    v9 = [(OSASystemMemoryResetReport *)v6 initWithEvent:0 code:uint64];
  }

  [(OSASystemMemoryResetReport *)v9 acquireJetsamData];
  v10 = [(OSASystemMemoryResetReport *)v9 saveWithOptions:0];

  return v10;
}

@end