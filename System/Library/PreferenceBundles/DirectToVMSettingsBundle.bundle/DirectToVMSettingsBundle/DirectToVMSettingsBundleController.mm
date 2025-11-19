@interface DirectToVMSettingsBundleController
+ (id)localizedStringForKey:(id)a3;
- (BOOL)currentControllerIsFaceTimeSettings;
- (BOOL)silenceUnknownCallersForFaceTimeIsEnabled;
- (BOOL)silenceUnknownCallersForPhoneIsEnabled;
- (DirectToVMSettingsBundleController)initWithParentListController:(id)a3;
- (PSListController)parentListController;
- (id)createDirectToVoicemailSpecifier;
- (id)currentControllerSpecifierID;
- (id)currentControllerSpecifierIdentifier;
- (id)getBooleanFromUserDefaults:(id)a3 default:(id)a4;
- (id)getDirectToVoicemailEnabled:(id)a3;
- (id)specifiersWithSpecifier:(id)a3;
- (void)refreshView;
- (void)setDirectToVoicemailEnabled:(id)a3 specifier:(id)a4;
- (void)setValueInUserDefaults:(id)a3 forKey:(id)a4;
@end

@implementation DirectToVMSettingsBundleController

- (DirectToVMSettingsBundleController)initWithParentListController:(id)a3
{
  v10.receiver = self;
  v10.super_class = DirectToVMSettingsBundleController;
  v3 = [(DirectToVMSettingsBundleController *)&v10 initWithParentListController:a3];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"handleSettingDidChangeNotification:" name:@"DirectToVoicemailSettingsChangedNotification" object:0];

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
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(DirectToVMSettingsBundleController *)self currentControllerSpecifierIdentifier];
    *v18 = 138412290;
    *&v18[4] = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "DIRECT TO VM SETTINGS: Loading settings page for app %@", v18, 0xCu);
  }

  v6 = +[NSMutableArray array];
  v7 = [(DirectToVMSettingsBundleController *)self currentControllerIsPhoneSettings];
  v8 = PHDefaultLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *v18 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "DIRECT TO VM SETTINGS: We are in Phone Settings", v18, 2u);
    }

    v10 = [(DirectToVMSettingsBundleController *)self configurationProvider];
    v11 = [v10 isReceptionistAvailable];

    v8 = PHDefaultLog();
    v12 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v12)
      {
        *v18 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "DIRECT TO VM SETTINGS: We are in Phone Settings with receptionist available, so we will not show Silence Unknown Callers toggle, we must show Intelligent Call Screening group instead", v18, 2u);
      }

      goto LABEL_17;
    }

    if (v12)
    {
      *v18 = 0;
      v13 = "DIRECT TO VM SETTINGS: We are in Phone Settings with receptionist unavailable, so we will show Silence Unknown Callers toggle";
      goto LABEL_13;
    }
  }

  else if (v9)
  {
    *v18 = 0;
    v13 = "DIRECT TO VM SETTINGS: We are in FT Settings, so we will show Silence Unknown Callers toggle";
LABEL_13:
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v13, v18, 2u);
  }

  v14 = [(DirectToVMSettingsBundleController *)self activeSpecifier];

  if (v14)
  {
    goto LABEL_18;
  }

  v8 = [(DirectToVMSettingsBundleController *)self createDirectToVoicemailSpecifier];
  if (v8)
  {
    v15 = [PSSpecifier groupSpecifierWithName:&stru_42D0];
    [v6 addObject:v15];
    [v6 addObject:v8];
    [(DirectToVMSettingsBundleController *)self setActiveSpecifier:v8];
  }

LABEL_17:

LABEL_18:
  v16 = [v6 copy];

  return v16;
}

- (id)createDirectToVoicemailSpecifier
{
  v3 = [DirectToVMSettingsBundleController localizedStringForKey:@"DIRECT_TO_VOICEMAIL_TOGGLE_TITLE"];
  v4 = [DirectToVMSettingsBundleController localizedStringForKey:@"DIRECT_TO_VOICEMAIL_EXPLANATION"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setDirectToVoicemailEnabled:specifier:" get:"getDirectToVoicemailEnabled:" detail:0 cell:6 edit:0];
  [v5 setProperty:v4 forKey:PSTableCellSubtitleTextKey];
  [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v5 setIdentifier:@"DIRECT_TO_VOICEMAIL"];

  return v5;
}

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [a1 localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_42D0 table:v6];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)refreshView
{
  v4 = [(DirectToVMSettingsBundleController *)self parentListController];
  v3 = [(DirectToVMSettingsBundleController *)self activeSpecifier];
  [v4 reloadSpecifier:v3 animated:1];
}

- (void)setDirectToVoicemailEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(DirectToVMSettingsBundleController *)self currentControllerSpecifierIdentifier];
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "User has toggled Direct to Voicemail %@ switch to %@", &v12, 0x16u);
  }

  v8 = [(DirectToVMSettingsBundleController *)self currentControllerIsFaceTimeSettings];
  v9 = [v5 BOOLValue];
  v10 = [(DirectToVMSettingsBundleController *)self configurationProvider];
  v11 = v10;
  if (v8)
  {
    [v10 setSilenceUnknownCallersEnabledForFaceTime:v9];
  }

  else
  {
    [v10 setSilenceUnknownCallersEnabledForPhone:v9];
  }
}

- (id)getDirectToVoicemailEnabled:(id)a3
{
  v4 = [(DirectToVMSettingsBundleController *)self tuFeatureFlags];
  v5 = [v4 deviceExpertMigrationEnabled];

  v6 = [(DirectToVMSettingsBundleController *)self currentControllerIsFaceTimeSettings];
  if (v5)
  {
    v7 = [(DirectToVMSettingsBundleController *)self configurationProvider];
    v8 = v7;
    if (v6)
    {
      v9 = [v7 isSilenceUnknownCallersEnabledForFaceTime];
    }

    else
    {
      v9 = [v7 isSilenceUnknownCallersEnabledForPhone];
    }

    v11 = [NSNumber numberWithBool:v9];
  }

  else
  {
    if (v6)
    {
      v10 = [(DirectToVMSettingsBundleController *)self silenceUnknownCallersForFaceTimeIsEnabled];
    }

    else
    {
      v10 = [(DirectToVMSettingsBundleController *)self silenceUnknownCallersForPhoneIsEnabled];
    }

    v11 = [NSNumber numberWithBool:v10];
  }

  return v11;
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
  v8 = [v7 initWithSuiteName:TUBundleIdentifierTelephonyUtilitiesFramework];
  [v8 setValue:v6 forKey:v5];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"DirectToVoicemailSettingsChangedNotification" object:0];
}

- (BOOL)currentControllerIsFaceTimeSettings
{
  v3 = [(DirectToVMSettingsBundleController *)self currentControllerSpecifierIdentifier];
  v4 = [v3 rangeOfString:@"FaceTime" options:1];

  v5 = [(DirectToVMSettingsBundleController *)self currentControllerSpecifierID];
  v6 = [v5 rangeOfString:@"FaceTime" options:1];

  return v4 != 0x7FFFFFFFFFFFFFFFLL || v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)currentControllerSpecifierIdentifier
{
  v2 = [(DirectToVMSettingsBundleController *)self parentListController];
  v3 = [v2 specifier];
  v4 = [v3 identifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_42D0;
  }

  v7 = v6;

  return v6;
}

- (id)currentControllerSpecifierID
{
  v2 = [(DirectToVMSettingsBundleController *)self parentListController];
  v3 = [v2 specifierID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_42D0;
  }

  v6 = v5;

  return v5;
}

- (BOOL)silenceUnknownCallersForFaceTimeIsEnabled
{
  v3 = TUCallFilteringPreferencesSilenceUnknownFaceTimeCallersKey;
  v4 = [NSNumber numberWithBool:TUSilenceUnknownFaceTimeCallersDefaultValue()];
  v5 = [(DirectToVMSettingsBundleController *)self getBooleanFromUserDefaults:v3 default:v4];
  LOBYTE(v3) = [v5 BOOLValue];

  return v3;
}

- (BOOL)silenceUnknownCallersForPhoneIsEnabled
{
  v2 = [(DirectToVMSettingsBundleController *)self getBooleanFromUserDefaults:TUCallFilteringPreferencesContactsOnlyKey default:&off_4318];
  v3 = [v2 BOOLValue];

  return v3;
}

@end