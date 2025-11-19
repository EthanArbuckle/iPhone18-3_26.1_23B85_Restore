uint64_t sub_100001198()
{
  if (qword_100015A78 != -1)
  {
    sub_100007ABC();
  }

  return byte_100015A70;
}

void sub_100001BB8(uint64_t a1, uint64_t a2)
{
  v3 = CloudServicesLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v41 = "void response(CFUserNotificationRef, CFOptionFlags)";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  if (a2 == 2)
  {
    [qword_100015A80 notificationSnoozed];
    if (dword_100015A98 == 1)
    {
      v6 = @"https://support.apple.com/kb/HT5834";
    }

    else
    {
      if (dword_100015A98 != 2)
      {
        v4 = 0;
        goto LABEL_19;
      }

      v6 = @"https://support.apple.com/kb/HT205011";
    }

    v4 = [NSURL URLWithString:v6];
LABEL_19:
    v18 = +[LSApplicationWorkspace defaultWorkspace];
    v35[0] = 0;
    v19 = [v18 openURL:v4 withOptions:&__NSDictionary0__struct error:v35];
    v5 = v35[0];

    v20 = CloudServicesLog();
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v4;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "opened %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100007BC0(v4, v5, v21);
    }

    goto LABEL_25;
  }

  if (a2 == 1)
  {
    [qword_100015A80 setNotificationDisabled:1];
    v4 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.KeychainSync/ADVANCED"];
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    [v5 openSensitiveURL:v4 withOptions:0];
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  if (a2)
  {
LABEL_27:
    dword_100015A98 = 0;
    if (qword_100015AA0)
    {
      CFRunLoopSourceInvalidate(qword_100015AA0);
      CFRelease(qword_100015AA0);
      qword_100015AA0 = 0;
    }

    if (qword_100015A90)
    {
      CFRelease(qword_100015A90);
      qword_100015A90 = 0;
    }

    add_explicit = atomic_fetch_add_explicit(dword_100015AA8, 0xFFFFFFFF, memory_order_relaxed);
    v23 = CloudServicesLog();
    v24 = v23;
    if (add_explicit == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v41 = "void response(CFUserNotificationRef, CFOptionFlags)";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: ending xpc transaction", buf, 0xCu);
      }

      v24 = qword_100015A88;
      qword_100015A88 = 0;
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100007C48(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    v4 = CloudServicesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v41 = "void response(CFUserNotificationRef, CFOptionFlags)";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Exit %s", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if ([qword_100015A80 shouldAllowSnooze])
  {
    [qword_100015A80 notificationSnoozed];
    goto LABEL_27;
  }

  responseFlags = 0;
  error = 0;
  v38[0] = kCFUserNotificationAlertHeaderKey;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"RESET_CONFIRMATION_MESSAGE_TITLE" value:&stru_1000107A8 table:0];
  v39[0] = v8;
  v38[1] = kCFUserNotificationAlertMessageKey;
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"RESET_CONFIRMATION_MESSAGE" value:&stru_1000107A8 table:0];
  v39[1] = v10;
  v38[2] = kCFUserNotificationDefaultButtonTitleKey;
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"RESETKEYCHAIN" value:&stru_1000107A8 table:0];
  v39[2] = v12;
  v38[3] = kCFUserNotificationAlternateButtonTitleKey;
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"CANCEL" value:&stru_1000107A8 table:0];
  v39[3] = v14;
  v39[4] = kCFBooleanTrue;
  v38[4] = kCFUserNotificationAlertTopMostKey;
  v38[5] = SBUserNotificationDontDismissOnUnlock;
  v39[5] = &__kCFBooleanTrue;
  v39[6] = &__kCFBooleanFalse;
  v38[6] = SBUserNotificationDismissOnLock;
  v38[7] = SBUserNotificationPendInSetupIfNotAllowedKey;
  v39[7] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:8];

  v15 = CFUserNotificationCreate(0, 0.0, 0, &error, v4);
  if (v15)
  {
    v16 = v15;
    error = CFUserNotificationReceiveResponse(v15, 0.0, &responseFlags);
    if (error)
    {
      v17 = CloudServicesLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v41) = error;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Error getting alert response: %d", buf, 8u);
      }
    }

    else
    {
      if (responseFlags)
      {
LABEL_50:
        CFRelease(v16);
        goto LABEL_26;
      }

      [qword_100015A80 setNotificationDisabled:1];
      v17 = [[SecureBackup alloc] initWithUserActivityLabel:@"reset keychain"];
      v33 = [v17 disableWithInfo:0];
      if (v33)
      {
        v34 = CloudServicesLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v33;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Error disabling backup: %@", buf, 0xCu);
        }
      }

      v35[1] = 0;
      SOSCCResetToEmpty();
    }

    goto LABEL_50;
  }

  v32 = CloudServicesLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v41) = error;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Error displaying alert: %d", buf, 8u);
  }

LABEL_39:
}

void sub_1000022F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100002980(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id sub_1000029A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained metrics];

  return v2;
}

void sub_1000029F0(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity) == 2)
  {
    v3 = *(a1 + 32);
    v4 = v3[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002A90;
    block[3] = &unk_1000105A0;
    v6 = v3;
    dispatch_sync(v4, block);
  }
}

void sub_100002A90(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) handleTimerEvent];

  objc_autoreleasePoolPop(v2);
}

void sub_100002AD4(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = xpc_get_type(xdict) == &_xpc_type_dictionary;
  v4 = xdict;
  if (v3)
  {
    string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
    v4 = xdict;
    if (string)
    {
      v6 = [[NSString alloc] initWithCString:string encoding:4];
      if (v6)
      {
        [*(a1 + 32) handleNotification:v6];
      }

      v4 = xdict;
    }
  }
}

void sub_100003278(uint64_t a1, const void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if ((PCSServiceItemTypeIsManatee() & 1) == 0 && !CFEqual(a2, kPCSServiceRaw) && !CFEqual(a2, kPCSServiceEscrow) && !CFEqual(a2, kPCSServiceFDE))
  {
    v5 = PCSServiceItemGetNumberByName();
    (*(*(a1 + 32) + 16))();
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100003588(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = [v6 objectForKeyedSubscript:@"PublicIdentities"];

  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = PCSPublicIdentityCreateWithPublicKeyInfo();
        v16 = PCSPublicIdentityCopyPublicKey();
        CFRelease(v15);
        [v8 addObject:{v16, v17}];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [*(a1 + 40) setObject:v8 forKeyedSubscript:v5];
}

void sub_100003728(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = CloudServicesLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100007E3C();
    }

    **(a1 + 56) = 1;
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003844;
    v12[3] = &unk_100010640;
    v8 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = v5;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v15 = v9;
    v16 = v10;
    [v8 foreachStingrayService:v12];
  }
}

void sub_100003844(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v15 = [NSString stringWithFormat:@"PCSCKMirrorStatus-%@", a2];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v7 = [*(a1 + 40) objectForKeyedSubscript:v5];

  if (v6 && [v6 count])
  {
    if (*(a1 + 40) && [v7 count])
    {
      v8 = [NSSet setWithArray:v6];
      v9 = [NSSet setWithArray:v7];
      v10 = [v8 isEqualToSet:v9];

      v11 = v10 ^ 1;
    }

    else
    {
      v11 = 3;
    }
  }

  else
  {
    v11 = 2;
  }

  v12 = [NSNumber numberWithUnsignedInt:v11];
  [*(a1 + 48) setObject:v12 forKeyedSubscript:v15];

  if (v11)
  {
    **(a1 + 56) = 1;
    v13 = [[NSError alloc] initWithDomain:@"PCSCKMirrorStatus" code:v11 userInfo:0];
    v14 = +[CloudServicesAnalytics logger];
    [v14 logResultForEvent:v15 hardFailure:0 result:v13 withAttributes:0];
  }

  else
  {
    v13 = +[CloudServicesAnalytics logger];
    [v13 logSuccessForEvent:v15];
  }
}

void sub_100004CE0(id a1)
{
  v1 = objc_alloc_init(NSMutableCharacterSet);
  v2 = qword_100015AC8;
  qword_100015AC8 = v1;

  v3 = qword_100015AC8;
  v4 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  [v3 formUnionWithCharacterSet:v4];

  v5 = qword_100015AC8;

  [v5 removeCharactersInString:@"&"];
}

void sub_100004F60(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (os_variant_has_internal_diagnostics())
  {
    v3 = *(a1 + 32);
    if ([objc_opt_class() isRateLimited:v3])
    {
      v4 = CloudServicesLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [*(a1 + 32) alert];
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Not showing ttr due to ratelimiting: %@", &v8, 0xCu);
      }
    }

    else
    {
      v6 = *(a1 + 32);
      if ([objc_opt_class() askUserIfTTR:v6])
      {
        v7 = *(a1 + 32);
        [objc_opt_class() triggerTapToRadar:v7];
      }

      [*(a1 + 32) updateRetryTimestamp];
    }
  }

  objc_autoreleasePoolPop(v2);
}

id sub_1000061E8(uint64_t a1)
{
  if ((a1 - 3) > 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(&off_100010710 + a1 - 3);
  }

  return [v1 stringByAppendingString:@"Error"];
}

void sub_100006D08(uint64_t a1, uint64_t a2, void *a3)
{
  obj = [a3 currentStateMostRecentSample];
  if ([obj isNewerThanHealthSample:*(*(a1 + 32) + 16)])
  {
    objc_storeStrong((*(a1 + 32) + 16), obj);
  }
}

uint64_t start()
{
  signal(15, 1);
  v0 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  v1 = qword_100015AD8;
  qword_100015AD8 = v0;

  dispatch_source_set_event_handler(qword_100015AD8, &stru_100010728);
  dispatch_activate(qword_100015AD8);
  v2 = objc_autoreleasePoolPush();
  v3 = os_log_create("com.apple.EscrowSecurityAlert", "daemon");
  v4 = qword_100015AD0;
  qword_100015AD0 = v3;

  CloudServicesInitializeLogging();
  v5 = objc_alloc_init(EscrowSecurityAlert);
  v6 = objc_alloc_init(ESADelegate);
  [(EscrowSecurityAlert *)v5 setDelegate:v6];
  objc_autoreleasePoolPop(v2);
  CFRunLoopRun();

  return 0;
}

void sub_100007BC0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "could not open %@: %@", &v3, 0x16u);
}

void sub_100007F34(unsigned int *a1, NSObject *a2)
{
  v3 = [NSNumber numberWithInt:*a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create notification error %@", &v4, 0xCu);
}

void sub_100007FDC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error looking up authKitAccount: %@", &v2, 0xCu);
}