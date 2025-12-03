@interface SilenceCallsSettingsBundleController
- (PSListController)parentListController;
- (SilenceCallsSettingsBundleController)initWithParentListController:(id)controller;
- (id)getBooleanFromUserDefaults:(id)defaults default:(id)default;
- (id)getSilenceLabel:(id)label;
- (id)getSilenceUnknownCallersEnabled:(id)enabled;
- (id)localizedStringForKey:(id)key;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)refreshView;
- (void)setOnlyAllowContacts:(id)contacts specifier:(id)specifier;
- (void)setValueInUserDefaults:(id)defaults forKey:(id)key;
@end

@implementation SilenceCallsSettingsBundleController

- (SilenceCallsSettingsBundleController)initWithParentListController:(id)controller
{
  v10.receiver = self;
  v10.super_class = SilenceCallsSettingsBundleController;
  v3 = [(SilenceCallsSettingsBundleController *)&v10 initWithParentListController:controller];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"handleSettingDidChangeNotification:" name:@"SilenceCallsSettingsChangedNotification" object:0];

    v5 = objc_alloc_init(TUFeatureFlags);
    tuFeatureFlags = v3->_tuFeatureFlags;
    v3->_tuFeatureFlags = v5;

    if ([(TUFeatureFlags *)v3->_tuFeatureFlags deviceExpertMigrationEnabled])
    {
      v7 = objc_alloc_init(TUConfigurationProvider);
      configurationProvider = v3->_configurationProvider;
      v3->_configurationProvider = v7;

      [(TUConfigurationProvider *)v3->_configurationProvider setDelegate:v3];
    }
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  v4 = +[NSMutableArray array];
  activeSpecifier = [(SilenceCallsSettingsBundleController *)self activeSpecifier];

  if (!activeSpecifier)
  {
    v6 = [(SilenceCallsSettingsBundleController *)self localizedStringForKey:@"SILENCE_CALLS_TOGGLE_TITLE"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setOnlyAllowContacts:specifier:" get:"getSilenceUnknownCallersEnabled:" detail:0 cell:6 edit:0];

    if (v7)
    {
      [v7 setIdentifier:@"SILENCE_CALLS"];
      [v7 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
      v8 = [(SilenceCallsSettingsBundleController *)self localizedStringForKey:@"CALL_SILENCING_EXPLANATION"];
      [v7 setProperty:v8 forKey:PSTableCellSubtitleTextKey];

      [v4 addObject:v7];
    }

    [(SilenceCallsSettingsBundleController *)self setActiveSpecifier:v7];
  }

  v9 = [v4 copy];

  return v9;
}

- (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  localizationTableName = [(SilenceCallsSettingsBundleController *)self localizationTableName];
  v7 = [v5 localizedStringForKey:keyCopy value:&stru_83F0 table:localizationTableName];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)refreshView
{
  parentListController = [(SilenceCallsSettingsBundleController *)self parentListController];
  activeSpecifier = [(SilenceCallsSettingsBundleController *)self activeSpecifier];
  [parentListController reloadSpecifier:activeSpecifier];
}

- (id)getSilenceLabel:(id)label
{
  v4 = [(SilenceCallsSettingsBundleController *)self getSilenceUnknownCallersEnabled:0];
  if ([v4 BOOLValue])
  {
    v5 = @"SILENCE_CALLS_ON";
  }

  else
  {
    v5 = @"SILENCE_CALLS_OFF";
  }

  v6 = [(SilenceCallsSettingsBundleController *)self localizedStringForKey:v5];

  return v6;
}

- (id)getSilenceUnknownCallersEnabled:(id)enabled
{
  activeSpecifier = [(SilenceCallsSettingsBundleController *)self activeSpecifier];
  target = [activeSpecifier target];
  parentListController = [target parentListController];
  specifierID = [parentListController specifierID];
  v8 = [specifierID isEqualToString:@"com.apple.preferences.facetime"];

  tuFeatureFlags = [(SilenceCallsSettingsBundleController *)self tuFeatureFlags];
  deviceExpertMigrationEnabled = [tuFeatureFlags deviceExpertMigrationEnabled];

  if (v8)
  {
    if (!deviceExpertMigrationEnabled)
    {
      v14 = TUCallFilteringPreferencesSilenceUnknownFaceTimeCallersKey;
      configurationProvider = [NSNumber numberWithBool:TUSilenceUnknownFaceTimeCallersDefaultValue()];
      v13 = [(SilenceCallsSettingsBundleController *)self getBooleanFromUserDefaults:v14 default:configurationProvider];
      goto LABEL_8;
    }

    configurationProvider = [(SilenceCallsSettingsBundleController *)self configurationProvider];
    isSilenceUnknownCallersEnabledForFaceTime = [configurationProvider isSilenceUnknownCallersEnabledForFaceTime];
LABEL_6:
    v13 = [NSNumber numberWithBool:isSilenceUnknownCallersEnabledForFaceTime];
LABEL_8:
    v15 = v13;

    goto LABEL_10;
  }

  if (deviceExpertMigrationEnabled)
  {
    configurationProvider = [(SilenceCallsSettingsBundleController *)self configurationProvider];
    isSilenceUnknownCallersEnabledForFaceTime = [configurationProvider isSilenceUnknownCallersEnabledForPhone];
    goto LABEL_6;
  }

  v15 = [(SilenceCallsSettingsBundleController *)self getBooleanFromUserDefaults:TUCallFilteringPreferencesContactsOnlyKey default:&off_85E0];
LABEL_10:

  return v15;
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

- (void)setOnlyAllowContacts:(id)contacts specifier:(id)specifier
{
  contactsCopy = contacts;
  tuFeatureFlags = [(SilenceCallsSettingsBundleController *)self tuFeatureFlags];
  deviceExpertMigrationEnabled = [tuFeatureFlags deviceExpertMigrationEnabled];

  activeSpecifier = [(SilenceCallsSettingsBundleController *)self activeSpecifier];
  target = [activeSpecifier target];
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
      configurationProvider = [(SilenceCallsSettingsBundleController *)self configurationProvider];
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
      configurationProvider = [(SilenceCallsSettingsBundleController *)self configurationProvider];
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

    [(SilenceCallsSettingsBundleController *)self setValueInUserDefaults:contactsCopy forKey:*v17];
  }
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

@end