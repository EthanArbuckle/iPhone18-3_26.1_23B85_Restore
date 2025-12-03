@interface MadridInternalListController
- (MadridInternalListController)init;
- (id)autoSendLogValue;
- (id)automationIntervalForSpecifier:(id)specifier;
- (id)automationRepetitionsForSpecifier:(id)specifier;
- (id)fmfdLogging:(id)logging;
- (id)getTimeStampValueForSpecifier:(id)specifier;
- (id)madridBasicLogging:(id)logging;
- (id)madridBasicLoggingDefaults;
- (id)madridDebugLogging:(id)logging;
- (id)notifySMS:(id)s;
- (id)pendingAutomationRemoteForSpecifier:(id)specifier;
- (id)phishingMMSWhitelist:(id)whitelist;
- (id)pushDebugBannersEnabled:(id)enabled;
- (id)pushLoggingEnabled:(id)enabled;
- (id)readReceiptSettingsConfirmed:(id)confirmed;
- (id)readShowChatKitTesterAppSetting:(id)setting;
- (id)registrationLoggingEnabled:(id)enabled;
- (id)specifiers;
- (id)stkLogging:(id)logging;
- (id)technicalFailureUI:(id)i;
- (void)_handleReturnKeyTapped:(id)tapped;
- (void)_startListeningForReturnKey;
- (void)_stopListeningForReturnKey;
- (void)clearLogs:(id)logs;
- (void)dealloc;
- (void)hawkingTapped:(id)tapped;
- (void)resetSMSCounter:(id)counter;
- (void)setAutoSendLogValue:(id)value specifier:(id)specifier;
- (void)setAutomationInterval:(id)interval forSpecifier:(id)specifier;
- (void)setAutomationRemote:(id)remote forSpecifier:(id)specifier;
- (void)setAutomationRepetitions:(id)repetitions forSpecifier:(id)specifier;
- (void)setEnvironment:(id)environment specifier:(id)specifier;
- (void)setFMFDLogging:(id)logging specifier:(id)specifier;
- (void)setMadridBasicLogging:(id)logging specifier:(id)specifier;
- (void)setMadridDebugLogging:(id)logging specifier:(id)specifier;
- (void)setNotifySMS:(id)s specifier:(id)specifier;
- (void)setPhishingMMSWhitelist:(id)whitelist specifier:(id)specifier;
- (void)setPushDebugBannersEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setPushLoggingEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setReadReceiptSettingsConfirmed:(id)confirmed specifier:(id)specifier;
- (void)setRegistrationLoggingEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setSTKLogging:(id)logging specifier:(id)specifier;
- (void)setShowChatKitTesterAppSetting:(id)setting specifier:(id)specifier;
- (void)setTechnicalFailureUI:(id)i specifier:(id)specifier;
- (void)setTimeStampValue:(id)value forSpecifier:(id)specifier;
- (void)startAutomationTapped:(id)tapped;
- (void)viewAccountsTapped:(id)tapped;
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
        sliderValues = [(MadridInternalListController *)self sliderValues];
        v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [sliderValues count] - 1);
        [v11 setProperty:v13 forKey:PSControlMaximumKey];

        [v7 insertObject:v11 atIndex:v10 + 1];
      }
    }

    v14 = [v7 specifierForID:@"PUSH_TOKEN"];
    v15 = [APSConnection alloc];
    v16 = [v15 initWithEnvironmentName:APSEnvironmentProduction queue:&_dispatch_main_q];
    publicToken = [v16 publicToken];
    v18 = [publicToken description];
    [v14 setProperty:v18 forKey:PSFooterTextGroupKey];

    v19 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v7;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)setTimeStampValue:(id)value forSpecifier:(id)specifier
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_152C;
  v5[3] = &unk_C3B8;
  v5[4] = self;
  valueCopy = value;
  v4 = valueCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (id)getTimeStampValueForSpecifier:(id)specifier
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
  sliderValues = [(MadridInternalListController *)self sliderValues];
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [sliderValues indexOfObject:v7]);

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

- (void)_handleReturnKeyTapped:(id)tapped
{
  firstResponder = [(MadridInternalListController *)self firstResponder];
  [firstResponder resignFirstResponder];
}

- (id)pushLoggingEnabled:(id)enabled
{
  v3 = CNFIsPushLoggingEnabled();

  return [NSNumber numberWithBool:v3];
}

- (void)setPushLoggingEnabled:(id)enabled forSpecifier:(id)specifier
{
  [enabled BOOLValue];
  CNFSetPushLoggingEnabled();

  [(MadridInternalListController *)self reloadSpecifiers];
}

- (id)pushDebugBannersEnabled:(id)enabled
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

- (void)setPushDebugBannersEnabled:(id)enabled forSpecifier:(id)specifier
{
  if ([enabled BOOLValue])
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

- (id)fmfdLogging:(id)logging
{
  CFPreferencesAppSynchronize(@"com.apple.logging");
  v3 = CFPreferencesGetAppBooleanValue(@"FMFD", @"com.apple.logging", 0) != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setFMFDLogging:(id)logging specifier:(id)specifier
{
  if ([logging BOOLValue])
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

- (id)stkLogging:(id)logging
{
  CFPreferencesAppSynchronize(@"com.apple.logging");
  v3 = CFPreferencesGetAppBooleanValue(@"STK", @"com.apple.logging", 0) != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setSTKLogging:(id)logging specifier:(id)specifier
{
  if ([logging BOOLValue])
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

- (id)phishingMMSWhitelist:(id)whitelist
{
  CFPreferencesAppSynchronize(@"com.apple.logging");
  v3 = CFPreferencesGetAppBooleanValue(@"WhitelistEmailInternalPhishing", @"com.apple.sms", 0) != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setPhishingMMSWhitelist:(id)whitelist specifier:(id)specifier
{
  if ([whitelist BOOLValue])
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

- (id)madridDebugLogging:(id)logging
{
  v3 = CNFiMessageLogLevel();

  return [NSNumber numberWithInteger:v3];
}

- (void)setMadridDebugLogging:(id)logging specifier:(id)specifier
{
  integerValue = [logging integerValue];
  CNFSetiMessageLogLevel();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kMarcoSyncLoggingPrefs", 0, 0, 1u);
  if ((integerValue & 0x8000000000000000) != 0)
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

- (id)madridBasicLogging:(id)logging
{
  madridBasicLoggingDefaults = [(MadridInternalListController *)self madridBasicLoggingDefaults];
  if ([madridBasicLoggingDefaults count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = madridBasicLoggingDefaults;
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

- (void)setMadridBasicLogging:(id)logging specifier:(id)specifier
{
  bOOLValue = [logging BOOLValue];
  selfCopy = self;
  madridBasicLoggingDefaults = [(MadridInternalListController *)self madridBasicLoggingDefaults];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [madridBasicLoggingDefaults allKeys];
  v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    if (bOOLValue)
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
        v12 = [madridBasicLoggingDefaults objectForKey:v11];
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
  if (!bOOLValue)
  {
    v20 = selfCopy;
LABEL_21:
    CNFSetiMessageLogLevel();
    goto LABEL_22;
  }

  v19 = v18;
  CNFSetPushLoggingEnabled();
  v20 = selfCopy;
  if (v19 == -1)
  {
    goto LABEL_21;
  }

LABEL_22:
  CNFSetBasebandLoggingEnabled();
  [(MadridInternalListController *)v20 reloadSpecifiers];
}

- (id)registrationLoggingEnabled:(id)enabled
{
  v3 = CNFRegistrationLogLevel() >= 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setRegistrationLoggingEnabled:(id)enabled forSpecifier:(id)specifier
{
  v5 = [enabled BOOLValue] ^ 1;
  CNFSetRegistrationLogLevel();
  if ((v5 & 1) == 0)
  {
    CNFSetPushLoggingEnabled();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PCLoggingSettingsDidChangeNotification", 0, 0, 1u);
  }

  [(MadridInternalListController *)self reloadSpecifiers];
}

- (void)setAutoSendLogValue:(id)value specifier:(id)specifier
{
  [value integerValue];
  CNFSetSharedIntegerForKey();
  navigationController = [(MadridInternalListController *)self navigationController];
  v5 = [navigationController popViewControllerAnimated:1];
}

- (id)autoSendLogValue
{
  v2 = CNFGetSharedIntegerForKey();

  return [NSNumber numberWithInteger:v2];
}

- (void)hawkingTapped:(id)tapped
{
  tappedCopy = tapped;
  v6 = objc_alloc_init(MadridInternalHawkingListController);
  [(MadridInternalHawkingListController *)v6 setSpecifier:tappedCopy];

  rootController = [(MadridInternalListController *)self rootController];
  [(MadridInternalHawkingListController *)v6 setRootController:rootController];

  [(MadridInternalListController *)self showController:v6 animate:1];
}

- (void)setTechnicalFailureUI:(id)i specifier:(id)specifier
{
  if ([i BOOLValue])
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

- (id)technicalFailureUI:(id)i
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

- (void)clearLogs:(id)logs
{
  v4 = [IMUserNotification userNotificationWithIdentifier:@"Logs" title:@"iMessage Logging" message:@"Are you sure you want to delete all Messages logging?" defaultButton:@"Delete" alternateButton:@"Cancel" otherButton:0];
  v3 = +[IMUserNotificationCenter sharedInstance];
  [v3 addUserNotification:v4 listener:0 completionHandler:&stru_C458];
}

- (void)setEnvironment:(id)environment specifier:(id)specifier
{
  specifierCopy = specifier;
  [CNFInternalSettingsUtilities setIDSEnvironment:environment];
  navigationController = [(MadridInternalListController *)self navigationController];
  v8 = [navigationController popViewControllerAnimated:1];

  +[CNFInternalSettingsUtilities signOutAllAccounts];
  [specifierCopy setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  v11 = [specifierCopy propertyForKey:PSTableCellKey];

  [v11 setCellEnabled:0];
  v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:2];
  [v9 startAnimating];
  [v11 setAccessoryView:v9];
  [v11 setNeedsDisplay];
  v10 = dispatch_time(0, 3000000000);
  dispatch_after(v10, &_dispatch_main_q, &stru_C478);
}

- (void)viewAccountsTapped:(id)tapped
{
  tappedCopy = tapped;
  v6 = [[CNFInternalAccountListViewController alloc] initWithServiceType:1];
  [v6 setSpecifier:tappedCopy];

  rootController = [(MadridInternalListController *)self rootController];
  [v6 setRootController:rootController];

  [(MadridInternalListController *)self showController:v6 animate:1];
}

- (void)setNotifySMS:(id)s specifier:(id)specifier
{
  if ([s BOOLValue])
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

- (id)notifySMS:(id)s
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

- (void)resetSMSCounter:(id)counter
{
  CFPreferencesAppSynchronize(@"com.apple.conference");
  CFPreferencesSetAppValue(@"TotalSMSAttempts", 0, @"com.apple.conference");
  CFPreferencesAppSynchronize(@"com.apple.conference");

  [(MadridInternalListController *)self reloadSpecifiers];
}

- (id)pendingAutomationRemoteForSpecifier:(id)specifier
{
  automationOptions = [(MadridInternalListController *)self automationOptions];
  remote = [automationOptions remote];

  return remote;
}

- (void)setAutomationRemote:(id)remote forSpecifier:(id)specifier
{
  remoteCopy = remote;
  automationOptions = [(MadridInternalListController *)self automationOptions];
  [automationOptions setRemote:remoteCopy];
}

- (id)automationIntervalForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  automationOptions = [(MadridInternalListController *)self automationOptions];
  interval = [automationOptions interval];

  if (!interval)
  {
    v7 = [specifierCopy propertyForKey:PSDefaultValueKey];
    automationOptions2 = [(MadridInternalListController *)self automationOptions];
    [automationOptions2 setInterval:v7];
  }

  automationOptions3 = [(MadridInternalListController *)self automationOptions];
  interval2 = [automationOptions3 interval];

  return interval2;
}

- (void)setAutomationInterval:(id)interval forSpecifier:(id)specifier
{
  intervalCopy = interval;
  automationOptions = [(MadridInternalListController *)self automationOptions];
  [automationOptions setInterval:intervalCopy];
}

- (id)automationRepetitionsForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  automationOptions = [(MadridInternalListController *)self automationOptions];
  repetitions = [automationOptions repetitions];

  if (!repetitions)
  {
    v7 = [specifierCopy propertyForKey:PSDefaultValueKey];
    automationOptions2 = [(MadridInternalListController *)self automationOptions];
    [automationOptions2 setRepetitions:v7];
  }

  automationOptions3 = [(MadridInternalListController *)self automationOptions];
  repetitions2 = [automationOptions3 repetitions];

  return repetitions2;
}

- (void)setAutomationRepetitions:(id)repetitions forSpecifier:(id)specifier
{
  repetitionsCopy = repetitions;
  automationOptions = [(MadridInternalListController *)self automationOptions];
  [automationOptions setRepetitions:repetitionsCopy];
}

- (void)startAutomationTapped:(id)tapped
{
  firstResponder = [(MadridInternalListController *)self firstResponder];
  [firstResponder resignFirstResponder];

  automationOptions = [(MadridInternalListController *)self automationOptions];
  remote = [automationOptions remote];
  v7 = [remote length];

  if (v7 >= 5)
  {
    automationOptions2 = [(MadridInternalListController *)self automationOptions];
    interval = [automationOptions2 interval];
    automationOptions3 = [(MadridInternalListController *)self automationOptions];
    repetitions = [automationOptions3 repetitions];
    automationOptions4 = [(MadridInternalListController *)self automationOptions];
    remote2 = [automationOptions4 remote];
    v14 = [NSDictionary dictionaryWithObjectsAndKeys:interval, @"interval", repetitions, @"repetitions", remote2, @"target", 0];

    MarcoActionWithUserInfo();
  }
}

- (id)readReceiptSettingsConfirmed:(id)confirmed
{
  v3 = CNFGetSharedBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setReadReceiptSettingsConfirmed:(id)confirmed specifier:(id)specifier
{
  [confirmed BOOLValue];
  CNFSetSharedBooleanValueForKey();
  if (CNFSyncPreferences())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.ReadReceiptSettingsConfirmed.changed", 0, 0, 0);
  }
}

- (id)readShowChatKitTesterAppSetting:(id)setting
{
  v3 = CNFGetSharedBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setShowChatKitTesterAppSetting:(id)setting specifier:(id)specifier
{
  [setting BOOLValue];
  CNFSetSharedBooleanValueForKey();
  CNFSyncSharedPreferences();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.appIconVisibilityPreferencesChanged", 0, 0, 1u);
}

@end