@interface SilenceCallsSettingsController
- (BOOL)supportsCallBlockingForSubscriptionContext:(id)context;
- (PSListController)parentListController;
- (SilenceCallsSettingsController)init;
- (id)getBooleanFromUserDefaults:(id)defaults default:(id)default;
- (id)getOnlyAllowContacts:(id)contacts;
- (id)informationalUrlForSubscriptionContext:(id)context;
- (id)localizedStringForKey:(id)key;
- (id)objectForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error;
- (id)specifiers;
- (id)stringForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error;
- (void)carrierBundleController:(id)controller carrierBundleDidChangeForSubscriptionContext:(id)context;
- (void)configurationChanged;
- (void)emitNavigationEvent;
- (void)setOnlyAllowContacts:(id)contacts specifier:(id)specifier;
- (void)setValueInUserDefaults:(id)defaults forKey:(id)key;
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
  specifier = [(SilenceCallsSettingsController *)self specifier];
  target = [specifier target];
  parentListController = [target parentListController];
  specifierID = [parentListController specifierID];

  v7 = &TUResolvedPhoneResource_ptr;
  v8 = [_NSLocalizedStringResource alloc];
  v9 = +[NSLocale currentLocale];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v10 bundleURL];
  v12 = [v8 initWithKey:@"Apps" table:0 locale:v9 bundleURL:bundleURL];

  v13 = [[NSMutableArray alloc] initWithObjects:{v12, 0}];
  if ([specifierID isEqualToString:@"com.apple.preferences.facetime"])
  {
    v26 = TUBundleIdentifierFaceTimeApplication;
    v14 = [_NSLocalizedStringResource alloc];
    v15 = +[NSLocale currentLocale];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    bundleURL2 = [v16 bundleURL];
    v18 = [v14 initWithKey:@"FaceTime" table:0 locale:v15 bundleURL:bundleURL2];
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
  bundleURL3 = [v23 bundleURL];
  v25 = [v21 initWithKey:@"Silence Unknown Callers" table:0 locale:v22 bundleURL:bundleURL3];

  [(SilenceCallsSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v26 title:v25 localizedNavigationComponents:v13 deepLink:v20];
}

- (BOOL)supportsCallBlockingForSubscriptionContext:(id)context
{
  contextCopy = context;
  v12 = 0;
  v5 = [(SilenceCallsSettingsController *)self stringForKeyHierarchy:&off_8640 subscriptionContext:contextCopy error:&v12];
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
      v16 = contextCopy;
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
      v14 = contextCopy;
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

- (id)informationalUrlForSubscriptionContext:(id)context
{
  contextCopy = context;
  v11 = 0;
  v5 = [(SilenceCallsSettingsController *)self stringForKeyHierarchy:&off_8658 subscriptionContext:contextCopy error:&v11];
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
      v15 = contextCopy;
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
      v13 = contextCopy;
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

- (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  localizationTableName = [(SilenceCallsSettingsController *)self localizationTableName];
  v7 = [v5 localizedStringForKey:keyCopy value:&stru_83F0 table:localizationTableName];

  return v7;
}

- (id)getOnlyAllowContacts:(id)contacts
{
  tuFeatureFlags = [(SilenceCallsSettingsController *)self tuFeatureFlags];
  deviceExpertMigrationEnabled = [tuFeatureFlags deviceExpertMigrationEnabled];

  specifier = [(SilenceCallsSettingsController *)self specifier];
  target = [specifier target];
  parentListController = [target parentListController];
  specifierID = [parentListController specifierID];
  v10 = [specifierID isEqualToString:@"com.apple.preferences.facetime"];

  if (deviceExpertMigrationEnabled)
  {
    configurationProvider = [(SilenceCallsSettingsController *)self configurationProvider];
    v12 = configurationProvider;
    if (v10)
    {
      isSilenceUnknownCallersEnabledForFaceTime = [configurationProvider isSilenceUnknownCallersEnabledForFaceTime];
    }

    else
    {
      isSilenceUnknownCallersEnabledForFaceTime = [configurationProvider isSilenceUnknownCallersEnabledForPhone];
    }

    v16 = [NSNumber numberWithBool:isSilenceUnknownCallersEnabledForFaceTime];
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

- (void)setOnlyAllowContacts:(id)contacts specifier:(id)specifier
{
  contactsCopy = contacts;
  tuFeatureFlags = [(SilenceCallsSettingsController *)self tuFeatureFlags];
  deviceExpertMigrationEnabled = [tuFeatureFlags deviceExpertMigrationEnabled];

  specifier = [(SilenceCallsSettingsController *)self specifier];
  target = [specifier target];
  parentListController = [target parentListController];
  specifierID = [parentListController specifierID];
  v12 = [specifierID isEqualToString:@"com.apple.preferences.facetime"];

  v13 = PHDefaultLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (deviceExpertMigrationEnabled)
  {
    if (v12)
    {
      if (v14)
      {
        v19 = 138412290;
        v20 = contactsCopy;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "User toggled Silence Unknown Callers FaceTime switch to %@", &v19, 0xCu);
      }

      bOOLValue = [contactsCopy BOOLValue];
      configurationProvider = [(SilenceCallsSettingsController *)self configurationProvider];
      [configurationProvider setSilenceUnknownCallersEnabledForFaceTime:bOOLValue];
    }

    else
    {
      if (v14)
      {
        v19 = 138412290;
        v20 = contactsCopy;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "User toggled Silence Unknown Callers switch to %@", &v19, 0xCu);
      }

      bOOLValue2 = [contactsCopy BOOLValue];
      configurationProvider = [(SilenceCallsSettingsController *)self configurationProvider];
      [configurationProvider setSilenceUnknownCallersEnabledForPhone:bOOLValue2];
    }
  }

  else
  {
    if (v12)
    {
      if (v14)
      {
        v19 = 138412290;
        v20 = contactsCopy;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "User toggled Silence Unknown Callers FaceTime switch to %@", &v19, 0xCu);
      }

      v17 = &TUCallFilteringPreferencesSilenceUnknownFaceTimeCallersKey;
    }

    else
    {
      if (v14)
      {
        v19 = 138412290;
        v20 = contactsCopy;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "User toggled Silence Unknown Callers switch to %@", &v19, 0xCu);
      }

      v17 = &TUCallFilteringPreferencesContactsOnlyKey;
    }

    [(SilenceCallsSettingsController *)self setValueInUserDefaults:contactsCopy forKey:*v17];
  }
}

- (id)getBooleanFromUserDefaults:(id)defaults default:(id)default
{
  defaultCopy = default;
  defaultsCopy = defaults;
  v7 = [NSUserDefaults alloc];
  v8 = [v7 initWithSuiteName:TUBundleIdentifierTelephonyUtilitiesFramework];
  v9 = [v8 objectForKey:defaultsCopy];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = defaultCopy;
  }

  v11 = v10;

  return v10;
}

- (void)setValueInUserDefaults:(id)defaults forKey:(id)key
{
  keyCopy = key;
  defaultsCopy = defaults;
  v7 = [NSUserDefaults alloc];
  v8 = TUBundleIdentifierTelephonyUtilitiesFramework;
  v9 = [v7 initWithSuiteName:TUBundleIdentifierTelephonyUtilitiesFramework];
  [v9 setValue:defaultsCopy forKey:keyCopy];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"SilenceCallsSettingsChangedNotification" object:0];

  v12 = objc_opt_new();
  v11 = [NSSet setWithObject:keyCopy];

  [v12 synchronizeUserDefaultsDomain:v8 keys:v11];
}

- (id)objectForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error
{
  contextCopy = context;
  hierarchyCopy = hierarchy;
  v10 = [[CTBundle alloc] initWithBundleType:1];
  carrierBundleController = [(SilenceCallsSettingsController *)self carrierBundleController];
  telephonyClient = [carrierBundleController telephonyClient];
  v13 = [telephonyClient copyCarrierBundleValue:contextCopy keyHierarchy:hierarchyCopy bundleType:v10 error:error];

  return v13;
}

- (id)stringForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error
{
  v5 = [(SilenceCallsSettingsController *)self objectForKeyHierarchy:hierarchy subscriptionContext:context error:error];
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

- (void)carrierBundleController:(id)controller carrierBundleDidChangeForSubscriptionContext:(id)context
{
  contextCopy = context;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = contextCopy;
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