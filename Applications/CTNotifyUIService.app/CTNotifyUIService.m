void sub_1000024B8(id a1)
{
  qword_100020190 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789*#+"];

  _objc_release_x1();
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_100004304(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void sub_10000434C(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 invalidate];
}

void sub_100005AA8(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void sub_100005AF0(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 invalidate];
}

void sub_1000078F8(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

void sub_1000079EC(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void sub_100007DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007DD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismiss];
}

void sub_100007F30(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void sub_100007F78(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 invalidate];
}

id sub_100008670(uint64_t a1)
{
  v2 = +[BSPlatform sharedInstance];
  v3 = [v2 isInternalInstall];

  if (v3)
  {
    v4 = STKCommonLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received string: %{public}@", &v7, 0xCu);
    }
  }

  return [*(a1 + 40) _noteDidReceiveContent:*(a1 + 32)];
}

void sub_1000087EC(uint64_t a1)
{
  v2 = +[BSPlatform sharedInstance];
  v3 = [v2 isInternalInstall];

  if (v3)
  {
    v4 = STKCommonLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 32);
      *buf = 67109378;
      v15 = v5;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received error code: %d, string: %{public}@", buf, 0x12u);
    }
  }

  v7 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v8 = [v7 localizedStringForKey:@"USSD_ERROR" value:&stru_100018670 table:@"SIMToolkitUI"];

  if (*(a1 + 32))
  {
    v9 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService", v8];
    v10 = [v9 localizedStringForKey:*(a1 + 32) value:&stru_100018670 table:@"SIMToolkitUI"];
    v13[1] = v10;
    v11 = [NSArray arrayWithObjects:v13 count:2];
    v12 = [v11 componentsJoinedByString:@"\n"];

    v8 = v12;
  }

  [*(a1 + 40) _noteDidReceiveContent:v8];
}

void sub_100008A2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v2 = [v3 localizedStringForKey:@"USSD_TERMINATED" value:&stru_100018670 table:@"SIMToolkitUI"];
  [v1 _noteDidReceiveContent:v2];
}

id sub_100008B30(uint64_t a1)
{
  [*(a1 + 32) setAllowsResponse:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _setupResponseBar];
}

id sub_10000A0D0(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:STKUSSDSupplementaryServiceSettingTypeKey];
  v3 = [v2 intValue];

  v4 = [v1 objectForKeyedSubscript:STKUSSDSupplementaryServiceNotificationDataKey];
  if (!v4)
  {
    v4 = objc_alloc_init(CTSuppServicesNotificationData);
  }

  v5 = &stru_100018670;
  if (v3 > 6)
  {
    if (v3 <= 8)
    {
      [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
      if (v3 == 7)
        v6 = {;
        v7 = [(__CFString *)v6 localizedStringForKey:@"Connected Line ID Restriction\n%@" value:&stru_100018670 table:@"SIMToolkitUI"];
        [v4 connectedLineIDRestrictionString];
      }

      else
        v6 = {;
        v7 = [(__CFString *)v6 localizedStringForKey:@"Calling Line Presentation\n%@" value:&stru_100018670 table:@"SIMToolkitUI"];
        [v4 callingLinePresentationString];
      }

      goto LABEL_8;
    }

    if (v3 == 9)
    {
      v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
      v7 = [(__CFString *)v6 localizedStringForKey:@"Connected Line Presentation\n%@" value:&stru_100018670 table:@"SIMToolkitUI"];
      v8 = [v4 connectedLinePresentationString];
      goto LABEL_25;
    }

    if (v3 != 10)
    {
      if (v3 != 11)
      {
        goto LABEL_36;
      }

      v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
      v7 = [(__CFString *)v6 localizedStringForKey:@"Calling Name Presentation\n%@" value:&stru_100018670 table:@"SIMToolkitUI"];
      v8 = [v4 callingNamePresentationString];
      goto LABEL_25;
    }

    v15 = [v4 enabledString];
    if ([v15 length])
    {
      v6 = [@"\n" stringByAppendingString:v15];
    }

    else
    {
      v6 = &stru_100018670;
    }

    v7 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v9 = [v7 localizedStringForKey:@"%@ Fixed Dialing%@" value:&stru_100018670 table:@"SIMToolkitUI"];
    v10 = [v4 callClassString];
    [NSString localizedStringWithFormat:v9, v10, v6];
    goto LABEL_33;
  }

  if (v3 <= 3)
  {
    if (v3 == 1)
    {
      v11 = [v4 callForwardingNumber];
      if ([v11 length])
      {
        v12 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
        v13 = [v12 localizedStringForKey:@"Forwards to %@\n" value:&stru_100018670 table:@"SIMToolkitUI"];
        v6 = [NSString localizedStringWithFormat:v13, v11];

        v11 = v12;
      }

      else
      {
        v6 = &stru_100018670;
      }

      v7 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
      v9 = [v7 localizedStringForKey:@"%@ Call Forwarding\n%@\n%@%@" value:&stru_100018670 table:@"SIMToolkitUI"];
      v10 = [v4 callClassString];
      v14 = [v4 callForwardingReasonString];
      v16 = [v4 enabledString];
      v5 = [NSString localizedStringWithFormat:v9, v10, v14, v6, v16];

      goto LABEL_30;
    }

    if (v3 != 3)
    {
      goto LABEL_36;
    }

    v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v7 = [(__CFString *)v6 localizedStringForKey:@"%@ Call Waiting\n%@" value:&stru_100018670 table:@"SIMToolkitUI"];
    v9 = [v4 callClassString];
    v10 = [v4 enabledString];
    [NSString localizedStringWithFormat:v7, v9, v10];
    v5 = LABEL_33:;
    goto LABEL_34;
  }

  if (v3 == 4)
  {
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v7 = [(__CFString *)v6 localizedStringForKey:@"%@ Call Barring\n%@\n%@" value:&stru_100018670 table:@"SIMToolkitUI"];
    v9 = [v4 callClassString];
    v10 = [v4 callBarringFacilityString];
    v14 = [v4 enabledString];
    v5 = [NSString localizedStringWithFormat:v7, v9, v10, v14];
LABEL_30:

LABEL_34:
    goto LABEL_35;
  }

  [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  if (v3 == 5)
    v6 = {;
    v7 = [(__CFString *)v6 localizedStringForKey:@"Supplementary Service Password\n%@" value:&stru_100018670 table:@"SIMToolkitUI"];
    [v4 ssServiceTypeString];
  }

  else
    v6 = {;
    v7 = [(__CFString *)v6 localizedStringForKey:@"Calling Line ID Restriction\n%@" value:&stru_100018670 table:@"SIMToolkitUI"];
    [v4 callingLineIDRestrictionString];
  }

  v8 = LABEL_8:;
LABEL_25:
  v9 = v8;
  v5 = [NSString localizedStringWithFormat:v7, v8];
LABEL_35:

LABEL_36:
  v17 = [v1 objectForKeyedSubscript:STKUSSDSupplementaryServiceEventTypeKey];
  v18 = [v17 intValue];

  v19 = &stru_100018670;
  if (v18 > 2)
  {
    if (v18 == 3)
    {
      v21 = [v4 mmiProcedureString];
      v23 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
      v24 = v23;
      v25 = @"Setting %@ Succeeded";
    }

    else
    {
      if (v18 != 4)
      {
        goto LABEL_48;
      }

      v21 = [v4 mmiProcedureString];
      v23 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
      v24 = v23;
      v25 = @"Setting %@ Failed";
    }

    v26 = [v23 localizedStringForKey:v25 value:&stru_100018670 table:@"SIMToolkitUI"];
    v19 = [NSString localizedStringWithFormat:v26, v21];
  }

  else
  {
    if (v18 == 1)
    {
      v20 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
      v21 = v20;
      v22 = @"Setting Interrogation Succeeded";
    }

    else
    {
      if (v18 != 2)
      {
        goto LABEL_48;
      }

      v20 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
      v21 = v20;
      v22 = @"Setting Interrogation Failed";
    }

    v19 = [v20 localizedStringForKey:v22 value:&stru_100018670 table:@"SIMToolkitUI"];
  }

LABEL_48:
  v27 = [(__CFString *)v19 stringByAppendingString:v5];

  return v27;
}