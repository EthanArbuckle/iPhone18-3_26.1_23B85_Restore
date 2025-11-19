@interface SilenceCallsSettingsBundleController
- (PSListController)parentListController;
- (SilenceCallsSettingsBundleController)initWithParentListController:(id)a3;
- (id)getBooleanFromUserDefaults:(id)a3 default:(id)a4;
- (id)getSilenceLabel:(id)a3;
- (id)getSilenceUnknownCallersEnabled:(id)a3;
- (id)localizedStringForKey:(id)a3;
- (id)specifiersWithSpecifier:(id)a3;
- (void)refreshView;
- (void)setOnlyAllowContacts:(id)a3 specifier:(id)a4;
- (void)setValueInUserDefaults:(id)a3 forKey:(id)a4;
@end

@implementation SilenceCallsSettingsBundleController

- (SilenceCallsSettingsBundleController)initWithParentListController:(id)a3
{
  v10.receiver = self;
  v10.super_class = SilenceCallsSettingsBundleController;
  v3 = [(SilenceCallsSettingsBundleController *)&v10 initWithParentListController:a3];
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

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = +[NSMutableArray array];
  v5 = [(SilenceCallsSettingsBundleController *)self activeSpecifier];

  if (!v5)
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

- (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [(SilenceCallsSettingsBundleController *)self localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_83F0 table:v6];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)refreshView
{
  v4 = [(SilenceCallsSettingsBundleController *)self parentListController];
  v3 = [(SilenceCallsSettingsBundleController *)self activeSpecifier];
  [v4 reloadSpecifier:v3];
}

- (id)getSilenceLabel:(id)a3
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

- (id)getSilenceUnknownCallersEnabled:(id)a3
{
  v4 = [(SilenceCallsSettingsBundleController *)self activeSpecifier];
  v5 = [v4 target];
  v6 = [v5 parentListController];
  v7 = [v6 specifierID];
  v8 = [v7 isEqualToString:@"com.apple.preferences.facetime"];

  v9 = [(SilenceCallsSettingsBundleController *)self tuFeatureFlags];
  v10 = [v9 deviceExpertMigrationEnabled];

  if (v8)
  {
    if (!v10)
    {
      v14 = TUCallFilteringPreferencesSilenceUnknownFaceTimeCallersKey;
      v11 = [NSNumber numberWithBool:TUSilenceUnknownFaceTimeCallersDefaultValue()];
      v13 = [(SilenceCallsSettingsBundleController *)self getBooleanFromUserDefaults:v14 default:v11];
      goto LABEL_8;
    }

    v11 = [(SilenceCallsSettingsBundleController *)self configurationProvider];
    v12 = [v11 isSilenceUnknownCallersEnabledForFaceTime];
LABEL_6:
    v13 = [NSNumber numberWithBool:v12];
LABEL_8:
    v15 = v13;

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = [(SilenceCallsSettingsBundleController *)self configurationProvider];
    v12 = [v11 isSilenceUnknownCallersEnabledForPhone];
    goto LABEL_6;
  }

  v15 = [(SilenceCallsSettingsBundleController *)self getBooleanFromUserDefaults:TUCallFilteringPreferencesContactsOnlyKey default:&off_85E0];
LABEL_10:

  return v15;
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

- (void)setOnlyAllowContacts:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(SilenceCallsSettingsBundleController *)self tuFeatureFlags];
  v7 = [v6 deviceExpertMigrationEnabled];

  v8 = [(SilenceCallsSettingsBundleController *)self activeSpecifier];
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
      v16 = [(SilenceCallsSettingsBundleController *)self configurationProvider];
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
      v16 = [(SilenceCallsSettingsBundleController *)self configurationProvider];
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

    [(SilenceCallsSettingsBundleController *)self setValueInUserDefaults:v5 forKey:*v17];
  }
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

@end