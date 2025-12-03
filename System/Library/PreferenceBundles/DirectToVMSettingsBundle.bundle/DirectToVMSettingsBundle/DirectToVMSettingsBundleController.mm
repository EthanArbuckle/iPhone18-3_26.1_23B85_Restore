@interface DirectToVMSettingsBundleController
+ (id)localizedStringForKey:(id)key;
- (BOOL)currentControllerIsFaceTimeSettings;
- (BOOL)silenceUnknownCallersForFaceTimeIsEnabled;
- (BOOL)silenceUnknownCallersForPhoneIsEnabled;
- (DirectToVMSettingsBundleController)initWithParentListController:(id)controller;
- (PSListController)parentListController;
- (id)createDirectToVoicemailSpecifier;
- (id)currentControllerSpecifierID;
- (id)currentControllerSpecifierIdentifier;
- (id)getBooleanFromUserDefaults:(id)defaults default:(id)default;
- (id)getDirectToVoicemailEnabled:(id)enabled;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)refreshView;
- (void)setDirectToVoicemailEnabled:(id)enabled specifier:(id)specifier;
- (void)setValueInUserDefaults:(id)defaults forKey:(id)key;
@end

@implementation DirectToVMSettingsBundleController

- (DirectToVMSettingsBundleController)initWithParentListController:(id)controller
{
  v10.receiver = self;
  v10.super_class = DirectToVMSettingsBundleController;
  v3 = [(DirectToVMSettingsBundleController *)&v10 initWithParentListController:controller];
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

- (id)specifiersWithSpecifier:(id)specifier
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    currentControllerSpecifierIdentifier = [(DirectToVMSettingsBundleController *)self currentControllerSpecifierIdentifier];
    *v18 = 138412290;
    *&v18[4] = currentControllerSpecifierIdentifier;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "DIRECT TO VM SETTINGS: Loading settings page for app %@", v18, 0xCu);
  }

  v6 = +[NSMutableArray array];
  currentControllerIsPhoneSettings = [(DirectToVMSettingsBundleController *)self currentControllerIsPhoneSettings];
  createDirectToVoicemailSpecifier = PHDefaultLog();
  v9 = os_log_type_enabled(createDirectToVoicemailSpecifier, OS_LOG_TYPE_DEFAULT);
  if (currentControllerIsPhoneSettings)
  {
    if (v9)
    {
      *v18 = 0;
      _os_log_impl(&dword_0, createDirectToVoicemailSpecifier, OS_LOG_TYPE_DEFAULT, "DIRECT TO VM SETTINGS: We are in Phone Settings", v18, 2u);
    }

    configurationProvider = [(DirectToVMSettingsBundleController *)self configurationProvider];
    isReceptionistAvailable = [configurationProvider isReceptionistAvailable];

    createDirectToVoicemailSpecifier = PHDefaultLog();
    v12 = os_log_type_enabled(createDirectToVoicemailSpecifier, OS_LOG_TYPE_DEFAULT);
    if (isReceptionistAvailable)
    {
      if (v12)
      {
        *v18 = 0;
        _os_log_impl(&dword_0, createDirectToVoicemailSpecifier, OS_LOG_TYPE_DEFAULT, "DIRECT TO VM SETTINGS: We are in Phone Settings with receptionist available, so we will not show Silence Unknown Callers toggle, we must show Intelligent Call Screening group instead", v18, 2u);
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
    _os_log_impl(&dword_0, createDirectToVoicemailSpecifier, OS_LOG_TYPE_DEFAULT, v13, v18, 2u);
  }

  activeSpecifier = [(DirectToVMSettingsBundleController *)self activeSpecifier];

  if (activeSpecifier)
  {
    goto LABEL_18;
  }

  createDirectToVoicemailSpecifier = [(DirectToVMSettingsBundleController *)self createDirectToVoicemailSpecifier];
  if (createDirectToVoicemailSpecifier)
  {
    v15 = [PSSpecifier groupSpecifierWithName:&stru_42D0];
    [v6 addObject:v15];
    [v6 addObject:createDirectToVoicemailSpecifier];
    [(DirectToVMSettingsBundleController *)self setActiveSpecifier:createDirectToVoicemailSpecifier];
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

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  localizationTableName = [self localizationTableName];
  v7 = [v5 localizedStringForKey:keyCopy value:&stru_42D0 table:localizationTableName];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)refreshView
{
  parentListController = [(DirectToVMSettingsBundleController *)self parentListController];
  activeSpecifier = [(DirectToVMSettingsBundleController *)self activeSpecifier];
  [parentListController reloadSpecifier:activeSpecifier animated:1];
}

- (void)setDirectToVoicemailEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentControllerSpecifierIdentifier = [(DirectToVMSettingsBundleController *)self currentControllerSpecifierIdentifier];
    v12 = 138412546;
    v13 = currentControllerSpecifierIdentifier;
    v14 = 2112;
    v15 = enabledCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "User has toggled Direct to Voicemail %@ switch to %@", &v12, 0x16u);
  }

  currentControllerIsFaceTimeSettings = [(DirectToVMSettingsBundleController *)self currentControllerIsFaceTimeSettings];
  bOOLValue = [enabledCopy BOOLValue];
  configurationProvider = [(DirectToVMSettingsBundleController *)self configurationProvider];
  v11 = configurationProvider;
  if (currentControllerIsFaceTimeSettings)
  {
    [configurationProvider setSilenceUnknownCallersEnabledForFaceTime:bOOLValue];
  }

  else
  {
    [configurationProvider setSilenceUnknownCallersEnabledForPhone:bOOLValue];
  }
}

- (id)getDirectToVoicemailEnabled:(id)enabled
{
  tuFeatureFlags = [(DirectToVMSettingsBundleController *)self tuFeatureFlags];
  deviceExpertMigrationEnabled = [tuFeatureFlags deviceExpertMigrationEnabled];

  currentControllerIsFaceTimeSettings = [(DirectToVMSettingsBundleController *)self currentControllerIsFaceTimeSettings];
  if (deviceExpertMigrationEnabled)
  {
    configurationProvider = [(DirectToVMSettingsBundleController *)self configurationProvider];
    v8 = configurationProvider;
    if (currentControllerIsFaceTimeSettings)
    {
      isSilenceUnknownCallersEnabledForFaceTime = [configurationProvider isSilenceUnknownCallersEnabledForFaceTime];
    }

    else
    {
      isSilenceUnknownCallersEnabledForFaceTime = [configurationProvider isSilenceUnknownCallersEnabledForPhone];
    }

    v11 = [NSNumber numberWithBool:isSilenceUnknownCallersEnabledForFaceTime];
  }

  else
  {
    if (currentControllerIsFaceTimeSettings)
    {
      silenceUnknownCallersForFaceTimeIsEnabled = [(DirectToVMSettingsBundleController *)self silenceUnknownCallersForFaceTimeIsEnabled];
    }

    else
    {
      silenceUnknownCallersForFaceTimeIsEnabled = [(DirectToVMSettingsBundleController *)self silenceUnknownCallersForPhoneIsEnabled];
    }

    v11 = [NSNumber numberWithBool:silenceUnknownCallersForFaceTimeIsEnabled];
  }

  return v11;
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
  v8 = [v7 initWithSuiteName:TUBundleIdentifierTelephonyUtilitiesFramework];
  [v8 setValue:defaultsCopy forKey:keyCopy];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"DirectToVoicemailSettingsChangedNotification" object:0];
}

- (BOOL)currentControllerIsFaceTimeSettings
{
  currentControllerSpecifierIdentifier = [(DirectToVMSettingsBundleController *)self currentControllerSpecifierIdentifier];
  v4 = [currentControllerSpecifierIdentifier rangeOfString:@"FaceTime" options:1];

  currentControllerSpecifierID = [(DirectToVMSettingsBundleController *)self currentControllerSpecifierID];
  v6 = [currentControllerSpecifierID rangeOfString:@"FaceTime" options:1];

  return v4 != 0x7FFFFFFFFFFFFFFFLL || v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)currentControllerSpecifierIdentifier
{
  parentListController = [(DirectToVMSettingsBundleController *)self parentListController];
  specifier = [parentListController specifier];
  identifier = [specifier identifier];
  v5 = identifier;
  if (identifier)
  {
    v6 = identifier;
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
  parentListController = [(DirectToVMSettingsBundleController *)self parentListController];
  specifierID = [parentListController specifierID];
  v4 = specifierID;
  if (specifierID)
  {
    v5 = specifierID;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end