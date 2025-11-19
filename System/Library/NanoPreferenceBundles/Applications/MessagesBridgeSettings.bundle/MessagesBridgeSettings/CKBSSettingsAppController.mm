@interface CKBSSettingsAppController
- (BOOL)_supportModernTextInput;
- (CKBSSettingsAppController)initWithNibName:(id)a3 bundle:(id)a4;
- (NPSDomainAccessor)domainAccessor;
- (NPSManager)syncManager;
- (id)_alertStringFromAlertCount:(int64_t)a3;
- (id)_mirroredAlertStringFromAlertCount:(int64_t)a3;
- (id)_mirroringReadReceiptsString;
- (id)_mirroringRepeatAlertsString;
- (id)applicationGroupSpecifiers;
- (id)dictationMode;
- (id)localizedMirroringDetailFooter;
- (id)localizedPaneTitle;
- (id)mirroredApplicationGroupSpecifiers;
- (id)notificationApplicationSpecifiers;
- (int64_t)_validateMirroredAlertCount:(int64_t)a3;
- (void)dealloc;
- (void)mirrorSettingsChanged:(BOOL)a3;
- (void)setDictationMode:(id)a3 specifier:(id)a4;
@end

@implementation CKBSSettingsAppController

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v4.receiver = self;
  v4.super_class = CKBSSettingsAppController;
  [(CKBSSettingsAppController *)&v4 dealloc];
}

- (CKBSSettingsAppController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = CKBSSettingsAppController;
  v4 = [(CKBSSettingsAppController *)&v7 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"reloadSpecifiers" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v4;
}

- (id)localizedPaneTitle
{
  v2 = CKBSFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NANO_APP_TITLE" value:&stru_4368 table:@"MessagesNotificationsSpecifiers"];

  return v3;
}

- (id)applicationGroupSpecifiers
{
  if ([(CKBSSettingsAppController *)self settingsMode]== &dword_0 + 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(CKBSSettingsAppController *)self nanoSpecifiers];

    if (!v4)
    {
      v5 = [(CKBSSettingsAppController *)self _supportModernTextInput];
      v6 = @"MessagesNanoLegacySpecifiers";
      if (v5)
      {
        v6 = @"MessagesNanoSpecifiers";
      }

      v7 = v6;
      v8 = CKBSFrameworkBundle();
      v9 = [(CKBSSettingsAppController *)self loadSpecifiersFromPlistName:v7 target:self bundle:v8];

      [(CKBSSettingsAppController *)self setNanoSpecifiers:v9];
    }

    v3 = [(CKBSSettingsAppController *)self nanoSpecifiers];
  }

  return v3;
}

- (id)notificationApplicationSpecifiers
{
  v3 = [(CKBSSettingsAppController *)self alertSpecifiers];
  if (v3)
  {
  }

  else if (([(CKBSSettingsAppController *)self mirrorSettings]& 1) == 0)
  {
    v4 = CKBSFrameworkBundle();
    v5 = [(CKBSSettingsAppController *)self loadSpecifiersFromPlistName:@"MessagesNotificationsSpecifiers" target:self bundle:v4];

    v6 = [v5 indexOfObjectPassingTest:&stru_4228];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v5 objectAtIndexedSubscript:v6];
      v8 = +[NSMutableArray array];
      v9 = [v7 values];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = -[CKBSSettingsAppController _alertStringFromAlertCount:](self, "_alertStringFromAlertCount:", [*(*(&v17 + 1) + 8 * i) integerValue]);
            [v8 addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v11);
      }

      [v7 setValues:v9 titles:v8];
    }

    [(CKBSSettingsAppController *)self setAlertSpecifiers:v5];
  }

  v15 = [(CKBSSettingsAppController *)self alertSpecifiers];

  return v15;
}

- (id)mirroredApplicationGroupSpecifiers
{
  if ([(CKBSSettingsAppController *)self settingsMode]== &dword_0 + 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(CKBSSettingsAppController *)self mirroredSpecifiers];

    if (!v4)
    {
      v5 = CKBSFrameworkBundle();
      v6 = [(CKBSSettingsAppController *)self loadSpecifiersFromPlistName:@"MessagesMirroredSpecifiers" target:self bundle:v5];
      [(CKBSSettingsAppController *)self setMirroredSpecifiers:v6];
    }

    v3 = [(CKBSSettingsAppController *)self mirroredSpecifiers];
  }

  return v3;
}

- (id)localizedMirroringDetailFooter
{
  v3 = CKBSFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"REPEAT_ALERT_SUMMARY_BULLET" value:&stru_4368 table:@"MessagesNotificationsSpecifiers"];

  v5 = [(CKBSSettingsAppController *)self settingsMode];
  v6 = [(CKBSSettingsAppController *)self _mirroringRepeatAlertsString];
  v7 = v6;
  if (v5)
  {
    v8 = [NSString stringWithFormat:@"%@%@", v4, v6];
  }

  else
  {
    v9 = [(CKBSSettingsAppController *)self _mirroringReadReceiptsString];
    v8 = [NSString stringWithFormat:@"%@%@\n%@%@", v4, v7, v4, v9];
  }

  return v8;
}

- (id)_mirroringReadReceiptsString
{
  CFPreferencesSynchronize(@"com.apple.madrid", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ReadReceiptsEnabled", @"com.apple.madrid", &keyExistsAndHasValidFormat);
  v3 = keyExistsAndHasValidFormat;
  v4 = CKBSFrameworkBundle();
  v5 = v4;
  if (AppBooleanValue)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = @"DONT_SEND_READ_RECEIPTS";
  }

  else
  {
    v7 = @"SEND_READ_RECEIPTS";
  }

  v8 = [v4 localizedStringForKey:v7 value:&stru_4368 table:@"MessagesNotificationsSpecifiers"];

  return v8;
}

- (id)_mirroringRepeatAlertsString
{
  v3 = [(CKBSSettingsAppController *)self applicationBundleIdentifier];
  CFPreferencesAppSynchronize(v3);
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IncomingMessageAlertCount", v3, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v5 = AppIntegerValue;
  }

  else
  {
    v5 = 2;
  }

  v6 = [(CKBSSettingsAppController *)self _mirroredAlertStringFromAlertCount:v5];

  return v6;
}

- (id)_alertStringFromAlertCount:(int64_t)a3
{
  v4 = [(CKBSSettingsAppController *)self _validateMirroredAlertCount:a3];
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        v5 = CKBSFrameworkBundle();
        v6 = [v5 localizedStringForKey:@"ALERT_3_TIMES" value:&stru_4368 table:@"MessagesNotificationsSpecifiers"];
        v7 = 3;
        goto LABEL_15;
      case 6:
        v5 = CKBSFrameworkBundle();
        v6 = [v5 localizedStringForKey:@"ALERT_5_TIMES" value:&stru_4368 table:@"MessagesNotificationsSpecifiers"];
        v7 = 5;
        goto LABEL_15;
      case 11:
        v5 = CKBSFrameworkBundle();
        v6 = [v5 localizedStringForKey:@"ALERT_10_TIMES" value:&stru_4368 table:@"MessagesNotificationsSpecifiers"];
        v7 = 10;
        goto LABEL_15;
    }

LABEL_12:
    v8 = [(CKBSSettingsAppController *)self _mirroredAlertStringFromAlertCount:2];
    goto LABEL_17;
  }

  if (v4 != 1)
  {
    if (v4 == 2)
    {
      v5 = CKBSFrameworkBundle();
      v6 = [v5 localizedStringForKey:@"ALERT_1_TIME" value:&stru_4368 table:@"MessagesNotificationsSpecifiers"];
      v7 = 1;
      goto LABEL_15;
    }

    if (v4 == 3)
    {
      v5 = CKBSFrameworkBundle();
      v6 = [v5 localizedStringForKey:@"ALERT_2_TIMES" value:&stru_4368 table:@"MessagesNotificationsSpecifiers"];
      v7 = 2;
LABEL_15:
      [NSString localizedStringWithFormat:v6, v7];
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v5 = CKBSFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"ALERT_0_TIMES" value:&stru_4368 table:@"MessagesNotificationsSpecifiers"];
  [NSString localizedStringWithFormat:v6, 0];
  v8 = LABEL_16:;

LABEL_17:

  return v8;
}

- (id)_mirroredAlertStringFromAlertCount:(int64_t)a3
{
  v3 = [(CKBSSettingsAppController *)self _alertStringFromAlertCount:a3];
  v4 = CKBSFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"REPEAT_ALERT" value:&stru_4368 table:@"MessagesNotificationsSpecifiers"];
  v6 = CKBSFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"REPEAT_ALERT_SUMMARY_COLON" value:&stru_4368 table:@"MessagesNotificationsSpecifiers"];
  v8 = [NSString stringWithFormat:@"%@%@%@", v5, v7, v3];

  return v8;
}

- (int64_t)_validateMirroredAlertCount:(int64_t)a3
{
  if (a3 > 0xB)
  {
    return 2;
  }

  else
  {
    return qword_3B68[a3];
  }
}

- (void)mirrorSettingsChanged:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKBSSettingsAppController *)self applicationBundleIdentifier];
  v35 = @"IncomingMessageAlertCount";
  v36[0] = v5;
  v6 = [NSArray arrayWithObjects:&v35 count:1];
  v36[1] = @"com.apple.madrid";
  v37[0] = v6;
  v37[1] = &off_46D8;
  v7 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];

  v8 = [(CKBSSettingsAppController *)self syncManager];
  if (v3)
  {
    v31 = 0uLL;
    v32 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = [v9 objectForKeyedSubscript:v14];
          v16 = [NSSet setWithArray:v15];
          [v8 synchronizeUserDefaultsDomain:v14 keys:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v25 + 1) + 8 * j);
          v23 = [v17 objectForKeyedSubscript:{v22, v25}];
          v24 = [NSSet setWithArray:v23];
          [v8 synchronizeNanoDomain:v22 keys:v24];
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }
  }
}

- (id)dictationMode
{
  v2 = [(CKBSSettingsAppController *)self domainAccessor];
  v3 = [v2 objectForKey:@"CKNanoDictationMode"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"DEFAULT_DICTATION_MODE" value:&stru_4368 table:@"ChatKit"];
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 integerValue]);
  }

  return v5;
}

- (void)setDictationMode:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(CKBSSettingsAppController *)self domainAccessor];
  [v6 setObject:v5 forKey:@"CKNanoDictationMode"];

  v7 = [(CKBSSettingsAppController *)self domainAccessor];
  v8 = [v7 synchronize];

  v9 = [(CKBSSettingsAppController *)self syncManager];
  v10 = [(CKBSSettingsAppController *)self applicationBundleIdentifier];
  v11 = [NSSet setWithObject:@"CKNanoDictationMode"];
  [v9 synchronizeNanoDomain:v10 keys:v11];

  [(CKBSSettingsAppController *)self reloadSpecifiers];
}

- (BOOL)_supportModernTextInput
{
  v2 = +[PDRRegistry sharedInstance];
  v3 = [v2 getActivePairedDevice];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 systemBuildVersion];
    v6 = [v5 componentsSeparatedByString:@"."];
    if ([v6 count])
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = [v7 integerValue];

      v9 = v8 > 7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NPSDomainAccessor)domainAccessor
{
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    v4 = [NPSDomainAccessor alloc];
    v5 = [(CKBSSettingsAppController *)self applicationBundleIdentifier];
    v6 = [v4 initWithDomain:v5];
    v7 = self->_domainAccessor;
    self->_domainAccessor = v6;

    domainAccessor = self->_domainAccessor;
  }

  return domainAccessor;
}

- (NPSManager)syncManager
{
  syncManager = self->_syncManager;
  if (!syncManager)
  {
    v4 = objc_alloc_init(NPSManager);
    v5 = self->_syncManager;
    self->_syncManager = v4;

    syncManager = self->_syncManager;
  }

  return syncManager;
}

@end