@interface IMiCloudSettingsPlugin
+ (id)dataclasses;
- (BOOL)checkEligibilityWithError:(id *)a3;
- (BOOL)eligibleToToggleMiCSwitch;
- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6 withError:(id *)a7;
- (BOOL)purchasedMaxQuotaTier;
- (id)_deviceNameString;
- (id)actionsForDisablingDataclassOnAccount:(id)a3 forDataclass:(id)a4 withError:(id *)a5;
- (id)actionsForEnablingDataclassOnAccount:(id)a3 forDataclass:(id)a4 withError:(id *)a5;
- (int64_t)_disablementOptionForUserNotificationResponse:(id)a3;
- (int64_t)_promptUserIfTheyWantToDisableOrCancel;
- (void)_setupIMListener;
- (void)didPerformAdditionalStorageRequiredCheck:(id)a3;
- (void)didPerformEligibilityCheck:(id)a3;
- (void)performAdditionalStorageRequiredCheck;
- (void)setEnabledDidReturned:(id)a3;
@end

@implementation IMiCloudSettingsPlugin

+ (id)dataclasses
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "dataclasses request: kAccountDataclassMessages", v5, 2u);
    }
  }

  v6 = kAccountDataclassMessages;
  v3 = [NSArray arrayWithObjects:&v6 count:1];

  return v3;
}

- (id)actionsForDisablingDataclassOnAccount:(id)a3 forDataclass:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "actionsForDisablingDataclassOnAccount for dataclass: %@", buf, 0xCu);
    }
  }

  if (![(__CFString *)v9 isEqualToString:kAccountDataclassMessages])
  {
    goto LABEL_22;
  }

  v11 = [(IMiCloudSettingsPlugin *)self _promptUserIfTheyWantToDisableOrCancel];
  if (v11 == 2)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "User indicated that they want to disable MiC on all devices via alert.", buf, 2u);
      }
    }

    [(IMiCloudSettingsPlugin *)self _setupIMListener];
    v13 = +[IMCloudKitHooks sharedInstance];
    [v13 tryToDisableAllDevices];
  }

  v14 = v11 - 1;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (v14 < 2)
      {
        v16 = @"YES";
      }

      *buf = 138412546;
      v22 = v16;
      v23 = 2048;
      v24 = v11;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "User has chosen to disable Messages in iCloud: %@ disablement option: {%ld}", buf, 0x16u);
    }
  }

  if (v14 <= 1)
  {
    v17 = [ACDataclassAction actionWithType:2];
    v20 = v17;
    v18 = [NSArray arrayWithObjects:&v20 count:1];

    goto LABEL_23;
  }

  if (a5)
  {
    [NSError errorWithDomain:@"com.apple.messages" code:0 userInfo:0];
    *a5 = v18 = 0;
  }

  else
  {
LABEL_22:
    v18 = 0;
  }

LABEL_23:

  return v18;
}

- (id)actionsForEnablingDataclassOnAccount:(id)a3 forDataclass:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "actionsForEnablingDataclassOnAccount: %@", buf, 0xCu);
    }
  }

  if (![v9 isEqualToString:kAccountDataclassMessages])
  {
    goto LABEL_12;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "actionsForEnablingDataclassOnAccount", buf, 2u);
    }
  }

  if ([(IMiCloudSettingsPlugin *)self checkEligibilityWithError:a5])
  {
    v12 = [ACDataclassAction actionWithType:5];
    v15 = v12;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
  }

  else
  {
LABEL_12:
    v13 = 0;
  }

  return v13;
}

- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6 withError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v23 = 138412546;
      v24 = v12;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "perform action: %@ for dataclass: %@", &v23, 0x16u);
    }
  }

  byte_C630 = 0;
  qword_C638 = 0;
  v17 = kAccountDataclassMessages;
  if (![v15 isEqualToString:kAccountDataclassMessages] || objc_msgSend(v12, "type") != &dword_4 + 1)
  {
    goto LABEL_14;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "ACDataclassActionMergeLocalDataIntoSyncData action was called, requesting to enable Message in iCloud", &v23, 2u);
    }
  }

  if ([(IMiCloudSettingsPlugin *)self checkEligibilityWithError:a7])
  {
    v19 = 1;
  }

  else
  {
LABEL_14:
    if (![v15 isEqualToString:v17] || objc_msgSend(v12, "type") != &dword_0 + 2)
    {
      v21 = 0;
      goto LABEL_22;
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "ACDataclassActionMergeSyncDataIntoLocalData action was called requesting to disable Message in iCloud", &v23, 2u);
      }
    }

    v19 = 0;
  }

  v21 = [(IMiCloudSettingsPlugin *)self setCloudEnable:v19];
LABEL_22:

  return v21;
}

- (id)_deviceNameString
{
  v2 = MGCopyAnswer();
  v3 = [IMDeviceSupport marketingNameForModel:v2];

  return v3;
}

- (int64_t)_promptUserIfTheyWantToDisableOrCancel
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Prompting user to ensure they really want to disable", buf, 2u);
    }
  }

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DISABLE_MIC_MESSAGE_FORMAT" value:&stru_8260 table:@"IMiCloudSettingsPlugin"];
  v6 = [(IMiCloudSettingsPlugin *)self _deviceNameString];
  v7 = [NSString stringWithFormat:v5, v6];

  v8 = +[NSString stringGUID];
  v9 = sub_DD0(@"DISABLE_MIC_TITLE");
  v10 = sub_DD0(@"DISABLE_MIC_CONFIRM");
  v11 = sub_DD0(@"DISABLE_MIC_CANCEL");
  v12 = [IMUserNotification userNotificationWithIdentifier:v8 title:v9 message:v7 defaultButton:v10 alternateButton:v11 otherButton:0];

  *buf = 0;
  v28 = buf;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v13 = -1;
  v26 = -1;
  if (v12)
  {
    v14 = +[IMUserNotificationCenter sharedInstance];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1B1C;
    v22[3] = &unk_8218;
    v22[4] = self;
    v22[5] = &v23;
    v22[6] = buf;
    [v14 addUserNotification:v12 listener:0 completionHandler:v22];

    v15 = +[NSRunLoop currentRunLoop];
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Spinning runloop until user makes a selection", v21, 2u);
      }
    }

    v17 = IMRemoteObjectsRunLoopMode;
    do
    {
      v18 = [NSDate dateWithTimeIntervalSinceNow:0.5];
      [v15 runMode:v17 beforeDate:v18];
    }

    while (!v28[24]);
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Finished Blocking, user has interacted with alert.", v21, 2u);
      }
    }

    v13 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(buf, 8);

  return v13;
}

- (BOOL)checkEligibilityWithError:(id *)a3
{
  if (-[IMiCloudSettingsPlugin eligibleToToggleMiCSwitch](self, "eligibleToToggleMiCSwitch") && (+[IMCloudKitHooks sharedInstance](IMCloudKitHooks, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 mocAccountsMatch], v5, (v6 & 1) != 0))
  {
    [(IMiCloudSettingsPlugin *)self performAdditionalStorageRequiredCheck];
    if (!qword_C638)
    {
      return 1;
    }

    v7 = [(IMiCloudSettingsPlugin *)self purchasedMaxQuotaTier];
    v8 = IMOSLoggingEnabled();
    if (v7)
    {
      if (v8)
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v24 = qword_C638;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "User has already purchased max quota tier, additional storage required: %llu", buf, 0xCu);
        }
      }

      v21 = AADataclassActionUserInfoLibrarySize;
      v10 = [NSNumber numberWithUnsignedLongLong:qword_C638];
      v22 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

      if (a3)
      {
        *a3 = [NSError errorWithDomain:AADataclassActionErrorDomain code:2 userInfo:v11];
      }
    }

    else
    {
      if (v8)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v24 = qword_C638;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Additional storage required: %llu", buf, 0xCu);
        }
      }

      v17 = [NSNumber numberWithUnsignedLongLong:qword_C638, AADataclassActionUserInfoLibrarySize];
      v20 = v17;
      v18 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

      if (a3)
      {
        *a3 = [NSError errorWithDomain:AADataclassActionErrorDomain code:0 userInfo:v18];
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Not eligible as account does not support DeviceToDeviceEncryption, or iCloud & iMsg accounts do not match up", buf, 2u);
      }
    }

    if (a3)
    {
      v13 = [NSError errorWithDomain:AADataclassActionErrorDomain code:1 userInfo:0];
      v14 = v13;
      result = 0;
      *a3 = v13;
      return result;
    }
  }

  return 0;
}

- (void)_setupIMListener
{
  if (![(IMiCloudSettingsPlugin *)self hasSetupListener])
  {
    v3 = +[IMCloudKitHooks sharedInstance];
    [v3 setupIMCloudKitHooks];

    [(IMiCloudSettingsPlugin *)self setHasSetupListener:1];
  }
}

- (void)performAdditionalStorageRequiredCheck
{
  [(IMiCloudSettingsPlugin *)self _setupIMListener];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "performAdditionalStorageRequiredCheck", &v11, 2u);
    }
  }

  v4 = dispatch_semaphore_create(0);
  v5 = qword_C648;
  qword_C648 = v4;

  v6 = dispatch_time(0, 3000000000);
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"didPerformAdditionalStorageRequiredCheck:" name:IMCloudKitHooksAdditionalStorageCheckReturned object:0];

  v8 = +[IMCloudKitHooks sharedInstance];
  [v8 performAdditionalStorageRequiredCheck];

  LODWORD(v8) = dispatch_semaphore_wait(qword_C648, v6) == 0;
  v9 = IMOSLoggingEnabled();
  if (v8)
  {
    if (!v9)
    {
      return;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = qword_C638;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Signal has_storage_semaphore, additionalStorageRequired: %llu", &v11, 0xCu);
    }
  }

  else
  {
    if (!v9)
    {
      return;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = qword_C638;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Timeout storage_semaphore, additionalStorageRequired: %llu", &v11, 0xCu);
    }
  }
}

- (BOOL)eligibleToToggleMiCSwitch
{
  byte_C650 = IMCloudKitIsEligibleToToggleMiCSwitch();
  if ((byte_C650 & 1) == 0)
  {
    [(IMiCloudSettingsPlugin *)self _setupIMListener];
    v3 = dispatch_semaphore_create(0);
    v4 = qword_C658;
    qword_C658 = v3;

    v5 = dispatch_time(0, 5000000000);
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Since we are not eligible, fetching security level to check we are up to date", &v13, 2u);
      }
    }

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"didPerformEligibilityCheck:" name:IMCloudKitHooksValuesChanged object:0];

    v8 = +[IMCloudKitHooks sharedInstance];
    [v8 fetchAccountStatusAndUpdateMiCSwitchEligibility];

    if (dispatch_semaphore_wait(qword_C658, v5))
    {
      byte_C650 = IMCloudKitIsEligibleToToggleMiCSwitch();
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          if (byte_C650)
          {
            v10 = @"YES";
          }

          else
          {
            v10 = @"NO";
          }

          v13 = 138412290;
          v14 = v10;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Timeout eligible_semaphore, isEligible: %@", &v13, 0xCu);
        }

LABEL_20:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        if (byte_C650)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Signal eligible_semaphore, isEligible: %@", &v13, 0xCu);
      }

      goto LABEL_20;
    }
  }

  return byte_C650;
}

- (void)didPerformEligibilityCheck:(id)a3
{
  v4 = a3;
  byte_C650 = IMCloudKitIsEligibleToToggleMiCSwitch();
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (byte_C650)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Updated eligibility to %@", &v8, 0xCu);
    }
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self];

  dispatch_semaphore_signal(qword_C658);
}

- (void)didPerformAdditionalStorageRequiredCheck:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "didPerformAdditionalStorageRequiredCheck with userInfo: %@", &v9, 0xCu);
    }
  }

  v7 = [v5 objectForKeyedSubscript:IMCloudKitHooksResultAdditionalStorageRequiredUserInfoKey];
  qword_C638 = [v7 longLongValue];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self];

  dispatch_semaphore_signal(qword_C648);
}

- (void)setEnabledDidReturned:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "setEnabledDidReturned with result: %@", &v9, 0xCu);
    }
  }

  v7 = [v5 objectForKeyedSubscript:IMCloudKitHooksResultSuccessUserInfoKey];
  byte_C630 = [v7 BOOLValue];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self];

  dispatch_semaphore_signal(qword_C640);
}

- (BOOL)purchasedMaxQuotaTier
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_time(0, 3000000000);
  v4 = +[ACAccountStore defaultStore];
  v5 = [v4 aa_primaryAppleAccount];

  v6 = [[AAQuotaInfoRequest alloc] initDetailedRequestWithAccount:v5];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "requestQuota %@", buf, 0xCu);
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_2E34;
  v14[3] = &unk_8240;
  v16 = &v17;
  v8 = v2;
  v15 = v8;
  [v6 performRequestWithHandler:v14];
  if (dispatch_semaphore_wait(v8, v3))
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(v18 + 24);
        *buf = 67109120;
        LODWORD(v22) = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Timeout has_max_tier_semaphore, hasMaxTier: %d", buf, 8u);
      }

LABEL_13:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = *(v18 + 24);
      *buf = 67109120;
      LODWORD(v22) = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Signal has_max_tier_semaphore, hasMaxTier: %d", buf, 8u);
    }

    goto LABEL_13;
  }

  v12 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v12 & 1;
}

- (int64_t)_disablementOptionForUserNotificationResponse:(id)a3
{
  v3 = [a3 response];
  if (v3 > 3)
  {
    return -1;
  }

  else
  {
    return qword_3BC8[v3];
  }
}

@end