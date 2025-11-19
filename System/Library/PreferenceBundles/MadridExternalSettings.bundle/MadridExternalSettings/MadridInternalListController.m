@interface MadridInternalListController
- (MadridInternalListController)init;
- (id)autoSendLogValue;
- (id)automationIntervalForSpecifier:(id)a3;
- (id)automationRepetitionsForSpecifier:(id)a3;
- (id)fmfdLogging:(id)a3;
- (id)getTimeStampValueForSpecifier:(id)a3;
- (id)madridBasicLogging:(id)a3;
- (id)madridBasicLoggingDefaults;
- (id)madridDebugLogging:(id)a3;
- (id)notifySMS:(id)a3;
- (id)pendingAutomationRemoteForSpecifier:(id)a3;
- (id)phishingMMSWhitelist:(id)a3;
- (id)pushDebugBannersEnabled:(id)a3;
- (id)pushLoggingEnabled:(id)a3;
- (id)readReceiptSettingsConfirmed:(id)a3;
- (id)readShowChatKitTesterAppSetting:(id)a3;
- (id)registrationLoggingEnabled:(id)a3;
- (id)specifiers;
- (id)stkLogging:(id)a3;
- (id)technicalFailureUI:(id)a3;
- (void)_handleReturnKeyTapped:(id)a3;
- (void)_startListeningForReturnKey;
- (void)_stopListeningForReturnKey;
- (void)clearLogs:(id)a3;
- (void)dealloc;
- (void)hawkingTapped:(id)a3;
- (void)resetSMSCounter:(id)a3;
- (void)setAutoSendLogValue:(id)a3 specifier:(id)a4;
- (void)setAutomationInterval:(id)a3 forSpecifier:(id)a4;
- (void)setAutomationRemote:(id)a3 forSpecifier:(id)a4;
- (void)setAutomationRepetitions:(id)a3 forSpecifier:(id)a4;
- (void)setEnvironment:(id)a3 specifier:(id)a4;
- (void)setFMFDLogging:(id)a3 specifier:(id)a4;
- (void)setMadridBasicLogging:(id)a3 specifier:(id)a4;
- (void)setMadridDebugLogging:(id)a3 specifier:(id)a4;
- (void)setNotifySMS:(id)a3 specifier:(id)a4;
- (void)setPhishingMMSWhitelist:(id)a3 specifier:(id)a4;
- (void)setPushDebugBannersEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setPushLoggingEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setReadReceiptSettingsConfirmed:(id)a3 specifier:(id)a4;
- (void)setRegistrationLoggingEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setSTKLogging:(id)a3 specifier:(id)a4;
- (void)setShowChatKitTesterAppSetting:(id)a3 specifier:(id)a4;
- (void)setTechnicalFailureUI:(id)a3 specifier:(id)a4;
- (void)setTimeStampValue:(id)a3 forSpecifier:(id)a4;
- (void)startAutomationTapped:(id)a3;
- (void)viewAccountsTapped:(id)a3;
@end

@implementation MadridInternalListController

- (MadridInternalListController)init
{
  v9.receiver = self;
  v9.super_class = MadridInternalListController;
  v2 = [(MadridInternalListController *)&v9 init];
  if (v2)
  {
    v3 = [IMServiceImpl serviceWithInternalName:@"Madrid"];
    [(MadridInternalListController *)v2 setService:v3];

    v4 = [[FTRegConnectionHandler alloc] initWithServiceType:1 name:@"InternalSettings"];
    connectionHandler = v2->_connectionHandler;
    v2->_connectionHandler = v4;

    v6 = objc_alloc_init(CNFAutomationOptions);
    automationOptions = v2->_automationOptions;
    v2->_automationOptions = v6;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MadridInternalListController;
  [(MadridInternalListController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [NSMutableArray alloc];
    v6 = [(MadridInternalListController *)self loadSpecifiersFromPlistName:@"MadridInternalSettings" target:self];
    v7 = [v5 initWithArray:v6];

    v8 = [v7 specifierForID:@"TIME_STAMP_BEHAVIOR_ID"];
    if (v8)
    {
      v9 = [v7 indexOfObject:v8];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v9;
        v11 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setTimeStampValue:forSpecifier:" get:"getTimeStampValueForSpecifier:" detail:0 cell:5 edit:0];
        [v11 setProperty:objc_opt_class() forKey:PSCellClassKey];
        [v11 setProperty:&__kCFBooleanFalse forKey:PSSliderIsContinuous];
        [v11 setProperty:&__kCFBooleanFalse forKey:PSSliderShowValueKey];
        [v11 setProperty:&off_D0F0 forKey:PSControlMinimumKey];
        v12 = [(MadridInternalListController *)self sliderValues];
        v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 count] - 1);
        [v11 setProperty:v13 forKey:PSControlMaximumKey];

        [v7 insertObject:v11 atIndex:v10 + 1];
      }
    }

    v14 = [v7 specifierForID:@"PUSH_TOKEN"];
    v15 = [APSConnection alloc];
    v16 = [v15 initWithEnvironmentName:APSEnvironmentProduction queue:&_dispatch_main_q];
    v17 = [v16 publicToken];
    v18 = [v17 description];
    [v14 setProperty:v18 forKey:PSFooterTextGroupKey];

    v19 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v7;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)setTimeStampValue:(id)a3 forSpecifier:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_152C;
  v5[3] = &unk_C3B8;
  v5[4] = self;
  v6 = a3;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (id)getTimeStampValueForSpecifier:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"TimestampInterval", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat);
  if (AppIntegerValue <= -1 || keyExistsAndHasValidFormat == 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = AppIntegerValue;
  }

  v7 = [NSNumber numberWithInteger:v6];
  v8 = [(MadridInternalListController *)self sliderValues];
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 indexOfObject:v7]);

  return v9;
}

- (void)_startListeningForReturnKey
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleReturnKeyTapped:" name:UIKeyboardReturnKeyPressed object:0];
}

- (void)_stopListeningForReturnKey
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIKeyboardReturnKeyPressed object:0];
}

- (void)_handleReturnKeyTapped:(id)a3
{
  v3 = [(MadridInternalListController *)self firstResponder];
  [v3 resignFirstResponder];
}

- (id)pushLoggingEnabled:(id)a3
{
  v3 = CNFIsPushLoggingEnabled();

  return [NSNumber numberWithBool:v3];
}

- (void)setPushLoggingEnabled:(id)a3 forSpecifier:(id)a4
{
  [a3 BOOLValue];
  CNFSetPushLoggingEnabled();

  [(MadridInternalListController *)self reloadSpecifiers];
}

- (id)pushDebugBannersEnabled:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"APSAlertsEnabled", @"com.apple.apsalerts", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue == 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

- (void)setPushDebugBannersEnabled:(id)a3 forSpecifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v5 = [NSNumber numberWithBool:1];
  }

  else
  {
    v5 = 0;
  }

  CFPreferencesSetAppValue(@"APSAlertsEnabled", v5, @"com.apple.apsalerts");
  CFPreferencesAppSynchronize(@"com.apple.apsalerts");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"APSAlertSettingsDidChangeNotification", 0, 0, 0);

  [(MadridInternalListController *)self reloadSpecifiers];
}

- (id)fmfdLogging:(id)a3
{
  CFPreferencesAppSynchronize(@"com.apple.logging");
  v3 = CFPreferencesGetAppBooleanValue(@"FMFD", @"com.apple.logging", 0) != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setFMFDLogging:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = [NSNumber numberWithInt:8];
    CFPreferencesSetAppValue(@"LogLevel", v4, @"com.apple.AOSNotification");

    v5 = [NSNumber numberWithBool:1];
    CFPreferencesSetAppValue(@"LogNetworkTraffic", v5, @"com.apple.AOSNotification");

    v6 = [NSNumber numberWithBool:1];
    CFPreferencesSetAppValue(@"FMFD", v6, @"com.apple.logging");

    v7 = [NSNumber numberWithBool:1];
    CFPreferencesSetAppValue(@"Enabled", v7, @"com.apple.logging");

    v8 = [NSNumber numberWithInt:7];
    CFPreferencesSetAppValue(@"LogLevel", v8, @"com.apple.icloud.fmfd");

    v9 = [NSNumber numberWithBool:1];
    CFPreferencesSetAppValue(@"LogToFile", v9, @"com.apple.icloud.fmfd");
  }

  else
  {
    CFPreferencesSetAppValue(@"LogLevel", 0, @"com.apple.AOSNotification");
    CFPreferencesSetAppValue(@"LogNetworkTraffic", 0, @"com.apple.AOSNotification");
    CFPreferencesSetAppValue(@"LogLevel", 0, @"com.apple.icloud.fmfd");
    CFPreferencesSetAppValue(@"LogToFile", 0, @"com.apple.icloud.fmfd");
    CFPreferencesSetAppValue(@"FMFD", 0, @"com.apple.logging");
    CFPreferencesSetAppValue(@"Enabled", 0, @"com.apple.logging");
  }

  CFPreferencesAppSynchronize(@"com.apple.logging");
  CFPreferencesAppSynchronize(@"com.apple.AOSNotification");

  CFPreferencesAppSynchronize(@"com.apple.icloud.fmfd");
}

- (id)stkLogging:(id)a3
{
  CFPreferencesAppSynchronize(@"com.apple.logging");
  v3 = CFPreferencesGetAppBooleanValue(@"STK", @"com.apple.logging", 0) != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setSTKLogging:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = [NSNumber numberWithBool:1];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"STK", v4, @"com.apple.logging");

  CFPreferencesAppSynchronize(@"com.apple.logging");
}

- (id)phishingMMSWhitelist:(id)a3
{
  CFPreferencesAppSynchronize(@"com.apple.logging");
  v3 = CFPreferencesGetAppBooleanValue(@"WhitelistEmailInternalPhishing", @"com.apple.sms", 0) != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setPhishingMMSWhitelist:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = [NSNumber numberWithBool:1];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"WhitelistEmailInternalPhishing", v4, @"com.apple.sms");

  CFPreferencesAppSynchronize(@"com.apple.sms");
}

- (id)madridDebugLogging:(id)a3
{
  v3 = CNFiMessageLogLevel();

  return [NSNumber numberWithInteger:v3];
}

- (void)setMadridDebugLogging:(id)a3 specifier:(id)a4
{
  v5 = [a3 integerValue];
  CNFSetiMessageLogLevel();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kMarcoSyncLoggingPrefs", 0, 0, 1u);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v11 = dispatch_get_global_queue(0, 0);
    dispatch_async(v11, &stru_C418);

    v12 = WiFiManagerClientCreate();
    if (v12)
    {
      v13 = v12;
      WiFiManagerClientSetProperty();
      WiFiManagerClientSetProperty();
      WiFiManagerClientSetProperty();
      CFRelease(v13);
    }
  }

  else
  {
    CNFSetPushLoggingEnabled();
    v7 = dispatch_get_global_queue(0, 0);
    dispatch_async(v7, &stru_C3F8);

    v8 = WiFiManagerClientCreate();
    if (v8)
    {
      v9 = v8;
      WiFiManagerClientSetProperty();
      WiFiManagerClientSetProperty();
      WiFiManagerClientSetProperty();
      CFRelease(v9);
    }

    CFPreferencesSetAppValue(@"showInternalErrors", [NSNumber numberWithBool:1], @"com.apple.MobileSMS");
    CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v10, @"CKTechnicalFailureUIPrefChangedNotification", 0, 0, 0);
  }

  [(MadridInternalListController *)self reloadSpecifiers];
}

- (id)madridBasicLoggingDefaults
{
  v2 = qword_11120;
  if (!qword_11120)
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = [NSArray arrayWithObjects:@"MadridEventLogging", @"IDSLogging", 0];
    [v3 setObject:v4 forKey:@"com.apple.logging"];

    v5 = [NSDictionary dictionaryWithDictionary:v3];
    v6 = qword_11120;
    qword_11120 = v5;

    v2 = qword_11120;
  }

  return v2;
}

- (id)madridBasicLogging:(id)a3
{
  v3 = [(MadridInternalListController *)self madridBasicLoggingDefaults];
  if ([v3 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = [v4 objectForKey:{v9, 0}];
          v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v19;
            while (2)
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v19 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                if (!CFPreferencesGetAppBooleanValue(*(*(&v18 + 1) + 8 * j), v9, 0))
                {
                  v16 = [NSNumber numberWithBool:0];

                  goto LABEL_21;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = [NSNumber numberWithBool:v15];
LABEL_21:

  return v16;
}

- (void)setMadridBasicLogging:(id)a3 specifier:(id)a4
{
  v22 = [a3 BOOLValue];
  v21 = self;
  v5 = [(MadridInternalListController *)self madridBasicLoggingDefaults];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [v5 allKeys];
  v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    if (v22)
    {
      v9 = kCFBooleanTrue;
    }

    else
    {
      v9 = 0;
    }

    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = [v5 objectForKey:v11];
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            v16 = 0;
            do
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              CFPreferencesSetAppValue(*(*(&v24 + 1) + 8 * v16), v9, v11);
              v16 = v16 + 1;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        CFPreferencesAppSynchronize(v11);
        v10 = v10 + 1;
      }

      while (v10 != v7);
      v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kMarcoSyncLoggingPrefs", 0, 0, 1u);
  v18 = CNFiMessageLogLevel();
  if (!v22)
  {
    v20 = v21;
LABEL_21:
    CNFSetiMessageLogLevel();
    goto LABEL_22;
  }

  v19 = v18;
  CNFSetPushLoggingEnabled();
  v20 = v21;
  if (v19 == -1)
  {
    goto LABEL_21;
  }

LABEL_22:
  CNFSetBasebandLoggingEnabled();
  [(MadridInternalListController *)v20 reloadSpecifiers];
}

- (id)registrationLoggingEnabled:(id)a3
{
  v3 = CNFRegistrationLogLevel() >= 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setRegistrationLoggingEnabled:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 BOOLValue] ^ 1;
  CNFSetRegistrationLogLevel();
  if ((v5 & 1) == 0)
  {
    CNFSetPushLoggingEnabled();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PCLoggingSettingsDidChangeNotification", 0, 0, 1u);
  }

  [(MadridInternalListController *)self reloadSpecifiers];
}

- (void)setAutoSendLogValue:(id)a3 specifier:(id)a4
{
  [a3 integerValue];
  CNFSetSharedIntegerForKey();
  v6 = [(MadridInternalListController *)self navigationController];
  v5 = [v6 popViewControllerAnimated:1];
}

- (id)autoSendLogValue
{
  v2 = CNFGetSharedIntegerForKey();

  return [NSNumber numberWithInteger:v2];
}

- (void)hawkingTapped:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(MadridInternalHawkingListController);
  [(MadridInternalHawkingListController *)v6 setSpecifier:v4];

  v5 = [(MadridInternalListController *)self rootController];
  [(MadridInternalHawkingListController *)v6 setRootController:v5];

  [(MadridInternalListController *)self showController:v6 animate:1];
}

- (void)setTechnicalFailureUI:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = [NSNumber numberWithBool:1];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"showInternalErrors", v4, @"com.apple.MobileSMS");
  CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CKTechnicalFailureUIPrefChangedNotification", 0, 0, 0);
}

- (id)technicalFailureUI:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"showInternalErrors", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue == 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

- (void)clearLogs:(id)a3
{
  v4 = [IMUserNotification userNotificationWithIdentifier:@"Logs" title:@"iMessage Logging" message:@"Are you sure you want to delete all Messages logging?" defaultButton:@"Delete" alternateButton:@"Cancel" otherButton:0];
  v3 = +[IMUserNotificationCenter sharedInstance];
  [v3 addUserNotification:v4 listener:0 completionHandler:&stru_C458];
}

- (void)setEnvironment:(id)a3 specifier:(id)a4
{
  v6 = a4;
  [CNFInternalSettingsUtilities setIDSEnvironment:a3];
  v7 = [(MadridInternalListController *)self navigationController];
  v8 = [v7 popViewControllerAnimated:1];

  +[CNFInternalSettingsUtilities signOutAllAccounts];
  [v6 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  v11 = [v6 propertyForKey:PSTableCellKey];

  [v11 setCellEnabled:0];
  v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:2];
  [v9 startAnimating];
  [v11 setAccessoryView:v9];
  [v11 setNeedsDisplay];
  v10 = dispatch_time(0, 3000000000);
  dispatch_after(v10, &_dispatch_main_q, &stru_C478);
}

- (void)viewAccountsTapped:(id)a3
{
  v4 = a3;
  v6 = [[CNFInternalAccountListViewController alloc] initWithServiceType:1];
  [v6 setSpecifier:v4];

  v5 = [(MadridInternalListController *)self rootController];
  [v6 setRootController:v5];

  [(MadridInternalListController *)self showController:v6 animate:1];
}

- (void)setNotifySMS:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = [NSNumber numberWithInt:1];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"NotifySMS", v4, @"com.apple.conference");

  CFPreferencesAppSynchronize(@"com.apple.conference");
}

- (id)notifySMS:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"NotifySMS", @"com.apple.conference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppIntegerValue == 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

- (void)resetSMSCounter:(id)a3
{
  CFPreferencesAppSynchronize(@"com.apple.conference");
  CFPreferencesSetAppValue(@"TotalSMSAttempts", 0, @"com.apple.conference");
  CFPreferencesAppSynchronize(@"com.apple.conference");

  [(MadridInternalListController *)self reloadSpecifiers];
}

- (id)pendingAutomationRemoteForSpecifier:(id)a3
{
  v3 = [(MadridInternalListController *)self automationOptions];
  v4 = [v3 remote];

  return v4;
}

- (void)setAutomationRemote:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  v6 = [(MadridInternalListController *)self automationOptions];
  [v6 setRemote:v5];
}

- (id)automationIntervalForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(MadridInternalListController *)self automationOptions];
  v6 = [v5 interval];

  if (!v6)
  {
    v7 = [v4 propertyForKey:PSDefaultValueKey];
    v8 = [(MadridInternalListController *)self automationOptions];
    [v8 setInterval:v7];
  }

  v9 = [(MadridInternalListController *)self automationOptions];
  v10 = [v9 interval];

  return v10;
}

- (void)setAutomationInterval:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  v6 = [(MadridInternalListController *)self automationOptions];
  [v6 setInterval:v5];
}

- (id)automationRepetitionsForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(MadridInternalListController *)self automationOptions];
  v6 = [v5 repetitions];

  if (!v6)
  {
    v7 = [v4 propertyForKey:PSDefaultValueKey];
    v8 = [(MadridInternalListController *)self automationOptions];
    [v8 setRepetitions:v7];
  }

  v9 = [(MadridInternalListController *)self automationOptions];
  v10 = [v9 repetitions];

  return v10;
}

- (void)setAutomationRepetitions:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  v6 = [(MadridInternalListController *)self automationOptions];
  [v6 setRepetitions:v5];
}

- (void)startAutomationTapped:(id)a3
{
  v4 = [(MadridInternalListController *)self firstResponder];
  [v4 resignFirstResponder];

  v5 = [(MadridInternalListController *)self automationOptions];
  v6 = [v5 remote];
  v7 = [v6 length];

  if (v7 >= 5)
  {
    v8 = [(MadridInternalListController *)self automationOptions];
    v9 = [v8 interval];
    v10 = [(MadridInternalListController *)self automationOptions];
    v11 = [v10 repetitions];
    v12 = [(MadridInternalListController *)self automationOptions];
    v13 = [v12 remote];
    v14 = [NSDictionary dictionaryWithObjectsAndKeys:v9, @"interval", v11, @"repetitions", v13, @"target", 0];

    MarcoActionWithUserInfo();
  }
}

- (id)readReceiptSettingsConfirmed:(id)a3
{
  v3 = CNFGetSharedBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setReadReceiptSettingsConfirmed:(id)a3 specifier:(id)a4
{
  [a3 BOOLValue];
  CNFSetSharedBooleanValueForKey();
  if (CNFSyncPreferences())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.ReadReceiptSettingsConfirmed.changed", 0, 0, 0);
  }
}

- (id)readShowChatKitTesterAppSetting:(id)a3
{
  v3 = CNFGetSharedBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setShowChatKitTesterAppSetting:(id)a3 specifier:(id)a4
{
  [a3 BOOLValue];
  CNFSetSharedBooleanValueForKey();
  CNFSyncSharedPreferences();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.appIconVisibilityPreferencesChanged", 0, 0, 1u);
}

@end