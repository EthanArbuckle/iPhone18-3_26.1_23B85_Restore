@interface SilenceCallsSettingsController
- (BOOL)supportsCallBlockingForSubscriptionContext:(id)a3;
- (PSListController)parentListController;
- (SilenceCallsSettingsController)init;
- (id)getBooleanFromUserDefaults:(id)a3 default:(id)a4;
- (id)getOnlyAllowContacts:(id)a3;
- (id)informationalUrlForSubscriptionContext:(id)a3;
- (id)localizedStringForKey:(id)a3;
- (id)objectForKeyHierarchy:(id)a3 subscriptionContext:(id)a4 error:(id *)a5;
- (id)specifiers;
- (id)stringForKeyHierarchy:(id)a3 subscriptionContext:(id)a4 error:(id *)a5;
- (void)carrierBundleController:(id)a3 carrierBundleDidChangeForSubscriptionContext:(id)a4;
- (void)configurationChanged;
- (void)emitNavigationEvent;
- (void)setOnlyAllowContacts:(id)a3 specifier:(id)a4;
- (void)setValueInUserDefaults:(id)a3 forKey:(id)a4;
@end

@implementation SilenceCallsSettingsController

- (SilenceCallsSettingsController)init
{
  v8.receiver = self;
  v8.super_class = SilenceCallsSettingsController;
  v2 = [(SilenceCallsSettingsController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUFeatureFlags);
    tuFeatureFlags = v2->_tuFeatureFlags;
    v2->_tuFeatureFlags = v3;

    if ([(TUFeatureFlags *)v2->_tuFeatureFlags deviceExpertMigrationEnabled])
    {
      v5 = objc_alloc_init(TUConfigurationProvider);
      configurationProvider = v2->_configurationProvider;
      v2->_configurationProvider = v5;

      [(TUConfigurationProvider *)v2->_configurationProvider setDelegate:v2];
    }
  }

  return v2;
}

- (void)emitNavigationEvent
{
  v3 = [(SilenceCallsSettingsController *)self specifier];
  v4 = [v3 target];
  v5 = [v4 parentListController];
  v6 = [v5 specifierID];

  v7 = &TUResolvedPhoneResource_ptr;
  v8 = [_NSLocalizedStringResource alloc];
  v9 = +[NSLocale currentLocale];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 bundleURL];
  v12 = [v8 initWithKey:@"Apps" table:0 locale:v9 bundleURL:v11];

  v13 = [[NSMutableArray alloc] initWithObjects:{v12, 0}];
  if ([v6 isEqualToString:@"com.apple.preferences.facetime"])
  {
    v26 = TUBundleIdentifierFaceTimeApplication;
    v14 = [_NSLocalizedStringResource alloc];
    v15 = +[NSLocale currentLocale];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 bundleURL];
    v18 = [v14 initWithKey:@"FaceTime" table:0 locale:v15 bundleURL:v17];
    [v13 addObject:v18];

    v7 = &TUResolvedPhoneResource_ptr;
  }

  else
  {
    v26 = TUBundleIdentifierPhoneApplication;
    v15 = TUResolvedPhoneResource();
    [v13 addObject:v15];
  }

  v19 = [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/%@/%@", v26, @"SILENCE_CALLS"];
  v20 = [NSURL URLWithString:v19];
  v21 = objc_alloc(v7[61]);
  v22 = +[NSLocale currentLocale];
  v23 = [NSBundle bundleForClass:objc_opt_class()];
  v24 = [v23 bundleURL];
  v25 = [v21 initWithKey:@"Silence Unknown Callers" table:0 locale:v22 bundleURL:v24];

  [(SilenceCallsSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v26 title:v25 localizedNavigationComponents:v13 deepLink:v20];
}

- (BOOL)supportsCallBlockingForSubscriptionContext:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = [(SilenceCallsSettingsController *)self stringForKeyHierarchy:&off_8640 subscriptionContext:v4 error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v4;
      v9 = "Retrieved call blocking value '%@' for subscription %@";
LABEL_7:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0x16u);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v7;
      v9 = "Retrieving call blocking value for subscription %@ failed with error %@";
      goto LABEL_7;
    }
  }

LABEL_9:
  if ([v5 isEqualToIgnoringCase:@"Enabled"])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v5 isEqualToIgnoringCase:@"Dynamic"];
  }

  return v10;
}

- (id)informationalUrlForSubscriptionContext:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [(SilenceCallsSettingsController *)self stringForKeyHierarchy:&off_8658 subscriptionContext:v4 error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v4;
      v9 = "Retrieved informational url value '%@' for subscription %@";
LABEL_7:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0x16u);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v7;
      v9 = "Retrieving informational url value for subscription %@ failed with error %@";
      goto LABEL_7;
    }
  }

LABEL_9:

  return v5;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(TPSCarrierBundleController);
    carrierBundleController = self->_carrierBundleController;
    self->_carrierBundleController = v5;

    [(TPSCarrierBundleController *)self->_carrierBundleController addDelegate:self queue:self->_queue];
    v7 = [(SilenceCallsSettingsController *)self loadSpecifiersFromPlistName:@"SilenceCallsSettings" target:self];
    v8 = [PSSpecifier groupSpecifierWithID:@"SpamEnabledSettingsGroup" name:&stru_83F0];
    v9 = [(SilenceCallsSettingsController *)self localizedStringForKey:@"CALL_SILENCING_EXPLANATION"];
    [v8 setProperty:v9 forKey:PSFooterTextGroupKey];

    [v7 addObject:v8];
    v10 = [(SilenceCallsSettingsController *)self localizedStringForKey:@"SILENCE_CALLS_TOGGLE_TITLE"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setOnlyAllowContacts:specifier:" get:"getOnlyAllowContacts:" detail:0 cell:6 edit:0];

    if (v11)
    {
      [v7 addObject:v11];
      [v11 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    }

    v12 = [v7 copy];
    v13 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v12;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [(SilenceCallsSettingsController *)self localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_83F0 table:v6];

  return v7;
}

- (id)getOnlyAllowContacts:(id)a3
{
  v4 = [(SilenceCallsSettingsController *)self tuFeatureFlags];
  v5 = [v4 deviceExpertMigrationEnabled];

  v6 = [(SilenceCallsSettingsController *)self specifier];
  v7 = [v6 target];
  v8 = [v7 parentListController];
  v9 = [v8 specifierID];
  v10 = [v9 isEqualToString:@"com.apple.preferences.facetime"];

  if (v5)
  {
    v11 = [(SilenceCallsSettingsController *)self configurationProvider];
    v12 = v11;
    if (v10)
    {
      v13 = [v11 isSilenceUnknownCallersEnabledForFaceTime];
    }

    else
    {
      v13 = [v11 isSilenceUnknownCallersEnabledForPhone];
    }

    v16 = [NSNumber numberWithBool:v13];
  }

  else if (v10)
  {
    v14 = TUCallFilteringPreferencesSilenceUnknownFaceTimeCallersKey;
    v15 = [NSNumber numberWithBool:TUSilenceUnknownFaceTimeCallersDefaultValue()];
    v16 = [(SilenceCallsSettingsController *)self getBooleanFromUserDefaults:v14 default:v15];
  }

  else
  {
    v16 = [(SilenceCallsSettingsController *)self getBooleanFromUserDefaults:TUCallFilteringPreferencesContactsOnlyKey default:&off_85F8];
  }

  return v16;
}

- (void)setOnlyAllowContacts:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(SilenceCallsSettingsController *)self tuFeatureFlags];
  v7 = [v6 deviceExpertMigrationEnabled];

  v8 = [(SilenceCallsSettingsController *)self specifier];
  v9 = [v8 target];
  v10 = [v9 parentListController];
  v11 = [v10 specifierID];
  v12 = [v11 isEqualToString:@"com.apple.preferences.facetime"];

  v13 = PHDefaultLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v12)
    {
      if (v14)
      {
        v19 = 138412290;
        v20 = v5;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "User toggled Silence Unknown Callers FaceTime switch to %@", &v19, 0xCu);
      }

      v15 = [v5 BOOLValue];
      v16 = [(SilenceCallsSettingsController *)self configurationProvider];
      [v16 setSilenceUnknownCallersEnabledForFaceTime:v15];
    }

    else
    {
      if (v14)
      {
        v19 = 138412290;
        v20 = v5;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "User toggled Silence Unknown Callers switch to %@", &v19, 0xCu);
      }

      v18 = [v5 BOOLValue];
      v16 = [(SilenceCallsSettingsController *)self configurationProvider];
      [v16 setSilenceUnknownCallersEnabledForPhone:v18];
    }
  }

  else
  {
    if (v12)
    {
      if (v14)
      {
        v19 = 138412290;
        v20 = v5;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "User toggled Silence Unknown Callers FaceTime switch to %@", &v19, 0xCu);
      }

      v17 = &TUCallFilteringPreferencesSilenceUnknownFaceTimeCallersKey;
    }

    else
    {
      if (v14)
      {
        v19 = 138412290;
        v20 = v5;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "User toggled Silence Unknown Callers switch to %@", &v19, 0xCu);
      }

      v17 = &TUCallFilteringPreferencesContactsOnlyKey;
    }

    [(SilenceCallsSettingsController *)self setValueInUserDefaults:v5 forKey:*v17];
  }
}

- (id)getBooleanFromUserDefaults:(id)a3 default:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSUserDefaults alloc];
  v8 = [v7 initWithSuiteName:TUBundleIdentifierTelephonyUtilitiesFramework];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  return v10;
}

- (void)setValueInUserDefaults:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSUserDefaults alloc];
  v8 = TUBundleIdentifierTelephonyUtilitiesFramework;
  v9 = [v7 initWithSuiteName:TUBundleIdentifierTelephonyUtilitiesFramework];
  [v9 setValue:v6 forKey:v5];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"SilenceCallsSettingsChangedNotification" object:0];

  v12 = objc_opt_new();
  v11 = [NSSet setWithObject:v5];

  [v12 synchronizeUserDefaultsDomain:v8 keys:v11];
}

- (id)objectForKeyHierarchy:(id)a3 subscriptionContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[CTBundle alloc] initWithBundleType:1];
  v11 = [(SilenceCallsSettingsController *)self carrierBundleController];
  v12 = [v11 telephonyClient];
  v13 = [v12 copyCarrierBundleValue:v8 keyHierarchy:v9 bundleType:v10 error:a5];

  return v13;
}

- (id)stringForKeyHierarchy:(id)a3 subscriptionContext:(id)a4 error:(id *)a5
{
  v5 = [(SilenceCallsSettingsController *)self objectForKeyHierarchy:a3 subscriptionContext:a4 error:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)carrierBundleController:(id)a3 carrierBundleDidChangeForSubscriptionContext:(id)a4
{
  v4 = a4;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Carrier bundle changed for subscription context %@", &v6, 0xCu);
  }
}

- (void)configurationChanged
{
  [(SilenceCallsSettingsController *)self reloadSpecifiers];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"SilenceCallsSettingsChangedNotification" object:0];
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentListController);

  return WeakRetained;
}

@end