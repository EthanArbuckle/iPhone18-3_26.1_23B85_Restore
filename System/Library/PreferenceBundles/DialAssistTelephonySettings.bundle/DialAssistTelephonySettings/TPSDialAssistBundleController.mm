@interface TPSDialAssistBundleController
- (BOOL)isHidden;
- (TPSDialAssistController)dialAssistController;
- (id)isMainSwitchOn:(id)a3;
- (id)specifiers;
- (id)supportedSubscriptions;
- (void)setMainSwitchOn:(id)a3 specifier:(id)a4;
@end

@implementation TPSDialAssistBundleController

- (id)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = +[NSMutableArray array];
    v5 = [PSSpecifier groupSpecifierWithID:@"DialAssistHelp"];
    v6 = [TPSDialAssistStrings localizedStringForKey:@"BUNDLE_CONTROLLER_SPECIFIER_GROUP_FOOTER_TEXT"];
    [v5 setProperty:v6 forKey:PSFooterTextGroupKey];

    [v4 addObject:v5];
    v7 = [TPSDialAssistStrings localizedStringForKey:@"BUNDLE_CONTROLLER_SPECIFIER_SWITCH_TITLE"];
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setMainSwitchOn:specifier:" get:"isMainSwitchOn:" detail:0 cell:6 edit:0];

    [v8 setProperty:@"DialAssistSwitch" forKey:PSIDKey];
    [v8 setProperty:@"com.apple.telephonyutilities.dialassist" forKey:PSDefaultsKey];
    v9 = [NSNumber numberWithBool:1];
    [v8 setProperty:v9 forKey:PSDefaultValueKey];

    [v8 setProperty:@"enable-dial-assist" forKey:PSKeyNameKey];
    [v8 setProperty:TUDialAssistUserSettingChanged forKey:PSValueChangedNotificationKey];
    [v4 addObject:v8];
    v10 = [v4 copy];
    v11 = self->_specifiers;
    self->_specifiers = v10;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (TPSDialAssistController)dialAssistController
{
  dialAssistController = self->_dialAssistController;
  if (!dialAssistController)
  {
    v4 = objc_alloc_init(TPSDialAssistController);
    v5 = self->_dialAssistController;
    self->_dialAssistController = v4;

    dialAssistController = self->_dialAssistController;
  }

  return dialAssistController;
}

- (BOOL)isHidden
{
  v7.receiver = self;
  v7.super_class = TPSDialAssistBundleController;
  if (![(TPSDialAssistBundleController *)&v7 isHidden]&& (+[UIApplication isRunningInStoreDemoMode]& 1) == 0)
  {
    v2 = +[UIDevice currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if (v3 != &dword_0 + 1)
    {
      return 0;
    }
  }

  v4 = TPSDialAssistLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Hiding TPSDialAssist settings row from view", v6, 2u);
  }

  return 1;
}

- (id)supportedSubscriptions
{
  supportedSubscriptions = self->_supportedSubscriptions;
  if (!supportedSubscriptions)
  {
    v21.receiver = self;
    v21.super_class = TPSDialAssistBundleController;
    v4 = [(TPSDialAssistBundleController *)&v21 subscriptions];
    v5 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [v4 count]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if (([v11 isSimHidden] & 1) == 0)
          {
            v12 = [(TPSDialAssistBundleController *)self dialAssistController];
            v13 = [v12 supportsDialAssistForSubscriptionContext:v11];

            if (v13)
            {
              [v5 addObject:v11];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v8);
    }

    v14 = [v5 copy];
    v15 = self->_supportedSubscriptions;
    self->_supportedSubscriptions = v14;

    supportedSubscriptions = self->_supportedSubscriptions;
  }

  return supportedSubscriptions;
}

- (id)isMainSwitchOn:(id)a3
{
  v4 = a3;
  v5 = [(TPSDialAssistBundleController *)self parentListController];
  v6 = [v5 readPreferenceValue:v4];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 BOOLValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = &dword_0 + 1;
  }

  v8 = [NSNumber numberWithBool:v7];

  return v8;
}

- (void)setMainSwitchOn:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = TPSDialAssistLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 BOOLValue];
    v10 = @"Disabling";
    if (v9)
    {
      v10 = @"Enabling";
    }

    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%@ dial assist", &v12, 0xCu);
  }

  v11 = [(TPSDialAssistBundleController *)self parentListController];
  [v11 setPreferenceValue:v6 specifier:v7];
}

@end