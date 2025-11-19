@interface ICStartupController
+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)lastShownStartupWelcomeScreenVersion;
+ (BOOL)consumeShouldResetMigrationStateInternalSetting;
+ (BOOL)hasShownWelcomeScreen;
+ (BOOL)isCurrentStartupVersionNewerThanLastSeenVersion;
+ (BOOL)isOSVersion:(id *)a3 newerThanVersion:(id *)a4;
+ (BOOL)shouldBypassICloudAlert;
+ (BOOL)shouldBypassWelcomeAndWhatsNewScreen;
+ (BOOL)shouldShowUpdateICloudAccountView;
+ (BOOL)shouldShowWelcomeOrWhatsNewScreen;
+ (BOOL)shouldShowWelcomeScreen;
+ (BOOL)shouldShowWhatsNewScreen;
+ (id)copyExchangeAccountAlertMessage;
+ (id)copyIMAPAccountAlertMessage;
+ (id)hostedAppKeyWithBaseKey:(id)a3;
+ (id)importantDisclaimerAttributedString;
+ (id)moveLocalNotesAlertMessage;
+ (void)setHasShownWelcomeScreen:(BOOL)a3;
+ (void)setLastShownStartupWelcomeScreenVersionToCurrentVersion;
- (ICStartupController)initWithDelegate:(id)a3;
- (ICStartupControllerDelegate)delegate;
- (unint64_t)getStartupMigrationType;
- (unint64_t)getStartupMigrationTypeWithAccounts:(id)a3;
- (void)checkStatusIfNecessaryWithDeviceCheckIndicator:(id)a3;
- (void)dealloc;
- (void)deviceCheckTimeout:(id)a3;
- (void)didContinueFromStartupView;
- (void)didUpgradeFromStartupView:(BOOL)a3;
- (void)migrationStateDidChange:(id)a3;
- (void)reachabilityChanged:(id)a3;
- (void)startIndicatorAnimationIfNecessaryForDeviceCheckIndicator:(id)a3;
- (void)startTimeoutTimerIfNecessaryWithDeviceCheckIndicator:(id)a3;
- (void)stopIndicatorAnimationIfNecessaryForDeviceCheckIndicator:(id)a3;
@end

@implementation ICStartupController

+ (BOOL)consumeShouldResetMigrationStateInternalSetting
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = kICInternalSettingsResetMigrationStateDefaultKey;
  v4 = [v2 BOOLForKey:kICInternalSettingsResetMigrationStateDefaultKey];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 removeObjectForKey:v3];

  return v4;
}

+ (BOOL)shouldShowWelcomeOrWhatsNewScreen
{
  if ([a1 shouldShowWelcomeScreen])
  {
    return 1;
  }

  return [a1 shouldShowWhatsNewScreen];
}

+ (BOOL)shouldShowWelcomeScreen
{
  if ([a1 shouldBypassWelcomeAndWhatsNewScreen])
  {
    v3 = 0;
    return v3 & 1;
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:kICEnableForcediCloudMigrationDefaultsKey];

  if ([a1 hasShownWelcomeScreen])
  {
    if ([a1 isCurrentStartupVersionNewerThanLastSeenVersion])
    {
      v6 = +[ICAccountUtilities sharedInstance];
      v7 = [v6 primaryICloudAccountEnabled];

      v8 = +[ICAccountUtilities sharedInstance];
      v9 = [v8 didChooseToMigratePrimaryICloudAccount];

      v10 = +[ICAccountUtilities sharedInstance];
      v11 = [v10 primaryICloudACAccount];
      v12 = [v11 ic_isNotesMigrated];

      v13 = +[ICMigrationController didChooseToMigrateLocalAccount];
      v3 = (v7 ^ 1 | v9 | v12) & v13 ^ 1;
      v14 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        v35 = v7;
        v36 = 1024;
        v37 = v9 & 1;
        v38 = 1024;
        v39 = v12 & 1;
        v40 = 1024;
        v41 = v13 & 1;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "shouldShowWelcomeScreen: primaryiCloudAccountEnabled=%d didChooseToMigratePrimaryiCloudAccount=%d primaryiCloudAccountMigrated=%d didChooseToMigrateLocalAccount=%d", buf, 0x1Au);
      }

      if (((v7 ^ 1 | v9 | v12) & v13 ^ 1))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v3 = 0;
    }

    if (((v5 ^ 1) & 1) == 0)
    {
      v15 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "shouldShowWelcomeScreen: forceUpgrade", buf, 2u);
      }

      v16 = +[ICAccountUtilities sharedInstance];
      v17 = [v16 allICloudACAccounts];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        v22 = ICACAccountPropertyDidChooseToMigrate;
        while (2)
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v24 = *(*(&v29 + 1) + 8 * i);
            v25 = [v24 objectForKeyedSubscript:{v22, v29}];
            if ([v24 ic_supportsModernNotes])
            {
              v26 = ![v24 ic_isNotesEnabled] || v25 == 0;
              if (!v26 && ([v25 BOOLValue] & 1) == 0)
              {

                v3 = 1;
                goto LABEL_29;
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v3 = 0;
LABEL_29:
    }

    goto LABEL_30;
  }

  v3 = 1;
LABEL_30:
  v27 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v35 = v3 & 1;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "shouldShowWelcomeScreen: shouldShow=%d", buf, 8u);
  }

  return v3 & 1;
}

+ (BOOL)shouldBypassWelcomeAndWhatsNewScreen
{
  v2 = +[ICLaunchConfiguration currentConfiguration];
  v3 = [v2 environment];

  if ((v3 - 1) < 2)
  {
    return 1;
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"bypassWhatsNewScreen"];

  return v6;
}

+ (BOOL)shouldShowWhatsNewScreen
{
  if ([a1 shouldBypassWelcomeAndWhatsNewScreen])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [a1 isCurrentStartupVersionNewerThanLastSeenVersion];
    if (v3)
    {
      LOBYTE(v3) = [a1 shouldShowWelcomeScreen] ^ 1;
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = [(ICStartupController *)self previousCheckStatusCancellationObject];
  [v3 setValue:1];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = ICStartupController;
  [(ICStartupController *)&v5 dealloc];
}

+ (BOOL)hasShownWelcomeScreen
{
  v2 = [a1 hasShowWelcomeScreenDefaultsKey];
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:v2];

  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = v2;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@=%d", &v7, 0x12u);
  }

  return v4;
}

+ (void)setHasShownWelcomeScreen:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [a1 hasShowWelcomeScreenDefaultsKey];
  [v5 setBool:v3 forKey:v6];

  [a1 setLastShownStartupWelcomeScreenVersionToCurrentVersion];
}

+ (id)hostedAppKeyWithBaseKey:(id)a3
{
  v3 = a3;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 ic_hasConnectedHostedWindowScene];

  v6 = v3;
  if (v5)
  {
    v6 = [NSString stringWithFormat:@"%@-%@", @"Calculator", v3];
  }

  return v6;
}

+ (BOOL)shouldBypassICloudAlert
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"bypassICloudAlert"];

  return v3;
}

+ (BOOL)isCurrentStartupVersionNewerThanLastSeenVersion
{
  v3 = +[UMUserManager sharedManager];
  v4 = [v3 currentUser];

  if ([v4 userType] == 1)
  {
    a1 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_INFO, "isCurrentStartupVersionNewerThanLastSeenVersion: UMUserTypeEphemeral", buf, 2u);
    }

    LOBYTE(a1) = 0;
  }

  else
  {
    memset(buf, 0, sizeof(buf));
    v15 = 0;
    [a1 lastShownStartupWelcomeScreenVersion];
    v5 = +[UIApplication sharedApplication];
    v6 = [v5 ic_hasConnectedHostedWindowScene];

    v13 = 0;
    if (v6)
    {
      v7 = &xmmword_100531BE0;
    }

    else
    {
      v7 = &xmmword_100531BF8;
    }

    v12 = *v7;
    *v16 = v12;
    v17 = v13;
    v10 = *buf;
    v11 = v15;
    LODWORD(a1) = [a1 isOSVersion:v16 newerThanVersion:&v10];
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v16 = 67109120;
      *&v16[4] = a1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "isCurrentStartupVersionNewerThanLastSeenVersion=%d", v16, 8u);
    }
  }

  return a1;
}

+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)lastShownStartupWelcomeScreenVersion
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [a2 lastShownStartupDefaultsKey];
  v15 = [v5 objectForKey:v6];

  objc_opt_class();
  v7 = ICDynamicCast();
  if ([v7 count] == 3)
  {
    objc_opt_class();
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = ICDynamicCast();
    retstr->var0 = [v9 integerValue];

    objc_opt_class();
    v10 = [v7 objectAtIndexedSubscript:1];
    v11 = ICDynamicCast();
    retstr->var1 = [v11 integerValue];

    objc_opt_class();
    v12 = [v7 objectAtIndexedSubscript:2];
    v13 = ICDynamicCast();
    retstr->var2 = [v13 integerValue];
  }

  return result;
}

+ (BOOL)isOSVersion:(id *)a3 newerThanVersion:(id *)a4
{
  v4 = a3->var0 <= a4->var0;
  if (a3->var0 == a4->var0)
  {
    var1 = a3->var1;
    v6 = a4->var1;
    v4 = var1 <= v6;
    if (var1 == v6)
    {
      v4 = a3->var2 <= a4->var2;
    }
  }

  return !v4;
}

+ (void)setLastShownStartupWelcomeScreenVersionToCurrentVersion
{
  v3 = +[NSProcessInfo processInfo];
  v4 = v3;
  if (v3)
  {
    [v3 operatingSystemVersion];
  }

  v5 = [NSNumber numberWithInteger:0];
  v11[0] = v5;
  v6 = [NSNumber numberWithInteger:0];
  v11[1] = v6;
  v7 = [NSNumber numberWithInteger:0];
  v11[2] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:3];

  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [a1 lastShownStartupDefaultsKey];
  [v9 setObject:v8 forKey:v10];
}

+ (BOOL)shouldShowUpdateICloudAccountView
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = +[ICNoteContext sharedContext];
  v3 = [v2 managedObjectContext];
  v4 = [ICAccount allCloudKitAccountsInContext:v3];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v11 + 1) + 8 * i) didChooseToMigrate])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v4 = +[ICMigrationController legacyLocalAccount];
  v9 = v4 != 0;
LABEL_11:

  return v9;
}

- (ICStartupController)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICStartupController;
  v5 = [(ICStartupController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(ICStartupController *)v5 setDelegate:v4];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"migrationStateDidChange:" name:ICMigrationStateDidChangeNotification object:0];
  }

  return v6;
}

- (void)didContinueFromStartupView
{
  [objc_opt_class() setHasShownWelcomeScreen:1];

  [(ICStartupController *)self setUserDidContinue:1];
}

- (void)didUpgradeFromStartupView:(BOOL)a3
{
  v3 = a3;
  [(ICStartupController *)self didContinueFromStartupView];
  if ([(ICStartupController *)self didAddReachabilityObserver])
  {
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = kReachabilityChangedNotification;
    v7 = +[ICReachability sharedReachabilityForInternetConnection];
    [v5 removeObserver:self name:v6 object:v7];

    [(ICStartupController *)self setDidAddReachabilityObserver:0];
  }

  v8 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v56 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User made upgrade choice (%d) from startup view", buf, 8u);
  }

  v9 = [(ICStartupController *)self targetAccountID];
  v10 = objc_alloc_init(NSMutableArray);
  v11 = +[ICAccountUtilities sharedInstance];
  v12 = v11;
  if (v9)
  {
    v13 = [v11 iCloudACAccountWithIdentifier:v9];

    if (!v13)
    {
      goto LABEL_21;
    }

    [v10 addObject:v13];
  }

  else
  {
    v39 = v3;
    v14 = [v11 allICloudACAccounts];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v13 = v14;
    v15 = [v13 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v49;
      v18 = ICACAccountPropertyDidChooseToMigrate;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v49 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v48 + 1) + 8 * i);
          if ([v20 ic_isNotesEnabled])
          {
            if ([v20 ic_supportsModernNotes])
            {
              v21 = [v20 objectForKeyedSubscript:v18];
              v22 = [v21 BOOLValue];

              if ((v22 & 1) == 0)
              {
                [v10 addObject:v20];
              }
            }
          }
        }

        v16 = [v13 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v16);
    }

    v3 = v39;
  }

LABEL_21:
  if (v3)
  {
    [ICMigrationController setDidChooseToMigrateLocalAccount:1];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v23 = v10;
    v24 = [v23 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v45;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          v28 = v9;
          if (*v45 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v44 + 1) + 8 * j);
          v30 = [ICMigrationController legacyAccountForICloudACAccount:v29];
          v9 = [v29 identifier];

          v31 = [ICMigrationController currentMigrationStateForAccountID:v9];
          if (v30 && (v31 < 2 || ([v30 didChooseToMigrate] & 1) == 0))
          {
            v32 = +[ICMigrationController sharedController];
            [v32 startMigrationForICloudAccountID:v9];
          }

          +[ICMigrationController migrateLocalAccountIfNecessary];
        }

        v25 = [v23 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v25);
    }
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v33 = v10;
    v34 = [v33 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v41;
      do
      {
        v37 = 0;
        v38 = v9;
        do
        {
          if (*v41 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v9 = [*(*(&v40 + 1) + 8 * v37) identifier];

          [ICMigrationController setCurrentMigrationState:1 forAccountID:v9];
          v37 = v37 + 1;
          v38 = v9;
        }

        while (v35 != v37);
        v35 = [v33 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v35);
    }
  }
}

- (void)checkStatusIfNecessaryWithDeviceCheckIndicator:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Check device and migration status.", buf, 2u);
  }

  v6 = [(ICStartupController *)self previousCheckStatusCancellationObject];

  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cancelling previous status check.", buf, 2u);
    }

    v8 = [(ICStartupController *)self previousCheckStatusCancellationObject];
    [v8 setValue:1];

    [(ICStartupController *)self setPreviousCheckStatusCancellationObject:0];
  }

  [(ICStartupController *)self setPrimaryAccountDevices:0];
  v9 = objc_alloc_init(ICMutableBool);
  [(ICStartupController *)self setPreviousCheckStatusCancellationObject:v9];
  v10 = [(ICStartupController *)self timeoutTimer];

  if (v10)
  {
    v11 = [(ICStartupController *)self timeoutTimer];
    [v11 invalidate];

    [(ICStartupController *)self setTimeoutTimer:0];
    [(ICStartupController *)self setDeviceCheckIndicatorAnimationLevel:1];
    [(ICStartupController *)self startTimeoutTimerIfNecessaryWithDeviceCheckIndicator:v4];
  }

  else
  {
    [(ICStartupController *)self setDeviceCheckIndicatorAnimationLevel:0];
    [(ICStartupController *)self startIndicatorAnimationIfNecessaryForDeviceCheckIndicator:v4];
  }

  objc_initWeak(buf, self);
  v12 = +[ICNoteContext sharedContext];
  v13 = [v12 primaryICloudACAccount];
  v14 = [v13 identifier];

  if (v14)
  {
    v15 = +[ICNoteContext sharedContext];
    v16 = [v15 managedObjectContext];
    v17 = [ICAccount accountWithIdentifier:v14 context:v16];

    if (v17)
    {
      [(ICStartupController *)self startIndicatorAnimationIfNecessaryForDeviceCheckIndicator:v4];
      v18 = +[ICCompatibilityController sharedController];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000DFC94;
      v26[3] = &unk_100649460;
      v27 = v9;
      objc_copyWeak(&v29, buf);
      v28 = v4;
      [v18 devicesForAccount:v17 completionHandler:v26];

      objc_destroyWeak(&v29);
    }
  }

  else
  {
    v17 = 0;
  }

  if (![ICMigrationController currentMigrationStateForAccountID:v14])
  {
    [(ICStartupController *)self startIndicatorAnimationIfNecessaryForDeviceCheckIndicator:v4];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000DFE94;
    v22 = &unk_100649488;
    v23 = v9;
    objc_copyWeak(&v25, buf);
    v24 = v4;
    [ICMigrationUtilities fetchAndSetMigrationStateForAccountID:0 withCompletionHandler:&v19];

    objc_destroyWeak(&v25);
  }

  [(ICStartupController *)self stopIndicatorAnimationIfNecessaryForDeviceCheckIndicator:v4, v19, v20, v21, v22];

  objc_destroyWeak(buf);
}

- (void)deviceCheckTimeout:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Timeout waiting for device list or migration state", v11, 2u);
  }

  v6 = [(ICStartupController *)self previousCheckStatusCancellationObject];
  [v6 setValue:1];

  [(ICStartupController *)self setPreviousCheckStatusCancellationObject:0];
  v7 = [v4 userInfo];
  v8 = [v7 conformsToProtocol:&OBJC_PROTOCOL___ICStartupDeviceCheckIndicator];

  if (v8)
  {
    v9 = [v4 userInfo];
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1004DF378(v4, v10);
    }

    v9 = 0;
  }

  [(ICStartupController *)self setTimeoutTimer:0];
  [v9 stopIndicatorAnimation];
}

- (void)startTimeoutTimerIfNecessaryWithDeviceCheckIndicator:(id)a3
{
  v9 = a3;
  v4 = [(ICStartupController *)self timeoutTimer];

  if (!v4)
  {
    v5 = [NSTimer timerWithTimeInterval:self target:"deviceCheckTimeout:" selector:v9 userInfo:0 repeats:4.0];
    [(ICStartupController *)self setTimeoutTimer:v5];

    v6 = +[NSRunLoop currentRunLoop];
    v7 = [(ICStartupController *)self timeoutTimer];
    v8 = [(ICStartupController *)self timerRunLoopMode];
    [v6 addTimer:v7 forMode:v8];
  }
}

- (void)startIndicatorAnimationIfNecessaryForDeviceCheckIndicator:(id)a3
{
  v4 = a3;
  if (![(ICStartupController *)self deviceCheckIndicatorAnimationLevel])
  {
    [v4 startIndicatorAnimation];
  }

  [(ICStartupController *)self setDeviceCheckIndicatorAnimationLevel:[(ICStartupController *)self deviceCheckIndicatorAnimationLevel]+ 1];
  [(ICStartupController *)self startTimeoutTimerIfNecessaryWithDeviceCheckIndicator:v4];
}

- (void)stopIndicatorAnimationIfNecessaryForDeviceCheckIndicator:(id)a3
{
  v6 = a3;
  if ([(ICStartupController *)self deviceCheckIndicatorAnimationLevel])
  {
    [(ICStartupController *)self setDeviceCheckIndicatorAnimationLevel:[(ICStartupController *)self deviceCheckIndicatorAnimationLevel]- 1];
    if (![(ICStartupController *)self deviceCheckIndicatorAnimationLevel])
    {
      v4 = [(ICStartupController *)self timeoutTimer];

      if (v4)
      {
        v5 = [(ICStartupController *)self timeoutTimer];
        [v5 invalidate];

        [(ICStartupController *)self setTimeoutTimer:0];
        [v6 stopIndicatorAnimation];
      }
    }
  }
}

+ (id)copyIMAPAccountAlertMessage
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"This IMAP account is syncing with the Notes app. If you copy your notes to iCloud value:this account will stop syncing with the Notes app." table:{&stru_100661CF0, 0}];

  return v3;
}

+ (id)copyExchangeAccountAlertMessage
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"This Exchange account is syncing with the Notes app. If you copy your notes to iCloud value:this account will stop syncing with the Notes app." table:{&stru_100661CF0, 0}];

  return v3;
}

+ (id)moveLocalNotesAlertMessage
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"To see these notes on all your devices value:move them to iCloud.\n\nOnce these notes are moved to iCloud table:{this local account will be removed.", &stru_100661CF0, 0}];

  return v3;
}

- (void)migrationStateDidChange:(id)a3
{
  v4 = a3;
  if ([(ICStartupController *)self userDidContinue]&& !+[ICStartupController hasAccountForMigration])
  {
    v10 = [(ICStartupController *)self delegate];
    [v10 startupControllerShouldCloseDeviceListView];
  }

  else if (![(ICStartupController *)self userDidContinue])
  {
    objc_opt_class();
    v5 = [v4 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"ICCurrentDeviceMigrationStateChangeWasForLocalAccountKey"];
    v7 = ICDynamicCast();

    if (([v7 BOOLValue] & 1) == 0)
    {
      v8 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Startup migration type might have changed from migration state did change.", v11, 2u);
      }

      v9 = [(ICStartupController *)self delegate];
      [v9 startupMigrationTypeMightHaveChanged];
    }
  }
}

- (void)reachabilityChanged:(id)a3
{
  if (![(ICStartupController *)self userDidContinue])
  {
    v4 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Startup migration type might have changed from reachability changed.", v6, 2u);
    }

    v5 = [(ICStartupController *)self delegate];
    [v5 startupMigrationTypeMightHaveChanged];
  }
}

+ (id)importantDisclaimerAttributedString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 URLForResource:@"WelcomeScreenDisclaimer" withExtension:@"rtf"];

  v4 = [[NSAttributedString alloc] initWithString:&stru_100661CF0];
  if (v3)
  {
    v5 = [NSAttributedString alloc];
    v10 = NSDocumentTypeDocumentAttribute;
    v11 = NSRTFTextDocumentType;
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [v5 initWithURL:v3 options:v6 documentAttributes:0 error:0];

    v4 = v6;
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1004DF410(v8);
    }

    v7 = [[NSAttributedString alloc] initWithString:@"Missing RTF file"];
  }

  return v7;
}

- (unint64_t)getStartupMigrationType
{
  v3 = +[ICAccountUtilities sharedInstance];
  v4 = [v3 allICloudACAccounts];

  v5 = [(ICStartupController *)self getStartupMigrationTypeWithAccounts:v4];
  return v5;
}

- (unint64_t)getStartupMigrationTypeWithAccounts:(id)a3
{
  v4 = a3;
  +[ICMigrationController upgradeEmptyLocalLegacyAccountIfNecessary];
  v39 = [objc_opt_class() hasShownWelcomeScreen];
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v46;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        if ([v11 ic_isNotesEnabled] && objc_msgSend(v11, "ic_supportsModernNotes"))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v8);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    v16 = ICACAccountPropertyDidChooseToMigrate;
    while (2)
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v41 + 1) + 8 * j);
        v19 = [v18 objectForKeyedSubscript:v16];
        if (([v18 ic_isNotesMigrated] & 1) == 0 && (objc_msgSend(v19, "BOOLValue") & 1) == 0)
        {

          v20 = 0;
          goto LABEL_22;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_22:

  if (![(ICStartupController *)self didAddReachabilityObserver])
  {
    v21 = +[NSNotificationCenter defaultCenter];
    v22 = kReachabilityChangedNotification;
    v23 = +[ICReachability sharedReachabilityForInternetConnection];
    [v21 addObserver:self selector:"reachabilityChanged:" name:v22 object:v23];

    [(ICStartupController *)self setDidAddReachabilityObserver:1];
  }

  if (+[ICMigrationController didChooseToMigrateLocalAccount])
  {
    v24 = 0;
  }

  else
  {
    v25 = +[ICMigrationController legacyLocalAccount];
    v24 = ICProtocolCast();
  }

  v26 = +[ICMigrationController legacyAccountContext];
  if ([v12 count])
  {
    v27 = [(ICStartupController *)self primaryAccountDevices];
    v28 = [v27 ic_containsObjectPassingTest:&stru_1006494C8];

    if (v20)
    {
      if (!v24)
      {
LABEL_33:
        v30 = os_log_create("com.apple.notes", "Migration");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "startupMigrationType: ICStartupMigrationTypeAlreadyUpgraded", buf, 2u);
        }

        v31 = 1;
        goto LABEL_61;
      }

      v29 = [v24 objectID];
      if (![v26 nonEmptyNoteExistsForLegacyAccountWithObjectID:v29] || +[ICMigrationController didChooseToMigrateLocalAccount](ICMigrationController, "didChooseToMigrateLocalAccount"))
      {

        goto LABEL_33;
      }

      v37 = +[ICMigrationController didMigrateLocalAccount];

      if (v37)
      {
        goto LABEL_33;
      }

      v30 = os_log_create("com.apple.notes", "Migration");
      v38 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v39)
      {
        if (v38)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "startupMigrationType: ICStartupMigrationTypeAlreadyUpgradedButLocalAccountNotUpgraded", buf, 2u);
        }

        v31 = 3;
      }

      else if (v38)
      {
        *buf = 0;
        v31 = 2;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "startupMigrationType: ICStartupMigrationTypeAlreadyUpgradedButLocalAccountNotUpgradedAndIsFirstLaunchOnThisDevice", buf, 2u);
      }

      else
      {
        v31 = 2;
      }
    }

    else if ([v12 count] && (+[ICUtilities isInternetReachable](ICUtilities, "isInternetReachable") & 1) == 0)
    {
      v30 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "startupMigrationType: ICStartupMigrationTypeICloudAccountButOffline", buf, 2u);
      }

      v31 = 6;
    }

    else if ([v12 count] && (-[ICStartupController primaryAccountDevices](self, "primaryAccountDevices"), v34 = objc_claimAutoreleasedReturnValue(), v34, !v34))
    {
      v30 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "startupMigrationType: ICStartupMigrationTypeICloudAccountAndOnlineButUnableToGetDevices", buf, 2u);
      }

      v31 = 7;
    }

    else
    {
      v30 = os_log_create("com.apple.notes", "Migration");
      v35 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v28)
      {
        if (v35)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "startupMigrationType: ICStartupMigrationTypeNotesOnOneOrMoreDevicesSomeRequireOSUpdates", buf, 2u);
        }

        v31 = 5;
      }

      else
      {
        if (v35)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "startupMigrationType: ICStartupMigrationTypeAllDevicesUpgradedOrLocalNotesWithNoICloudAccount", buf, 2u);
        }

        v31 = 4;
      }
    }
  }

  else if (v24 && ([v24 objectID], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v26, "nonEmptyNoteExistsForLegacyAccountWithObjectID:", v32), v32, (v33 & 1) != 0))
  {
    v30 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "startupMigrationType: ICStartupMigrationTypeNoICloudWithOnlyHTMLLocalAccount", buf, 2u);
    }

    v31 = 8;
  }

  else
  {
    v30 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "startupMigrationType: ICStartupMigrationTypeNoICloudOrLocalAccounts", buf, 2u);
    }

    v31 = 9;
  }

LABEL_61:

  return v31;
}

- (ICStartupControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end