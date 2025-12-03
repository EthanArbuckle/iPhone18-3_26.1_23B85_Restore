@interface FilterAsNewCallersSettingsBundleController
+ (id)localizedStringForKey:(id)key;
- (BOOL)currentControllerIsFaceTimeSettings;
- (BOOL)filterNewCallersForFaceTimeIsEnabled;
- (BOOL)filterNewCallersForPhoneIsEnabled;
- (FilterAsNewCallersSettingsBundleController)initWithParentListController:(id)controller;
- (PSListController)parentListController;
- (id)createFilterAsNewCallersSpecifier;
- (id)currentControllerSpecifierIdentifier;
- (id)getBooleanFromUserDefaults:(id)defaults default:(id)default;
- (id)getFilterAsNewCallersEnabled:(id)enabled;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)refreshView;
- (void)setFilterAsNewCallersEnabled:(id)enabled specifier:(id)specifier;
- (void)setValueInUserDefaults:(id)defaults forKey:(id)key;
@end

@implementation FilterAsNewCallersSettingsBundleController

- (FilterAsNewCallersSettingsBundleController)initWithParentListController:(id)controller
{
  v10.receiver = self;
  v10.super_class = FilterAsNewCallersSettingsBundleController;
  v3 = [(FilterAsNewCallersSettingsBundleController *)&v10 initWithParentListController:controller];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"handleSettingDidChangeNotification:" name:@"FilterAsNewCallersSettingsChangedNotification" object:0];

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
    currentControllerSpecifierIdentifier = [(FilterAsNewCallersSettingsBundleController *)self currentControllerSpecifierIdentifier];
    v13 = 138412290;
    v14 = currentControllerSpecifierIdentifier;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Loading settings page for app %@", &v13, 0xCu);
  }

  v6 = +[NSMutableArray array];
  tuFeatureFlags = [(FilterAsNewCallersSettingsBundleController *)self tuFeatureFlags];
  if ([tuFeatureFlags junkFilteringEnabled])
  {
    activeSpecifier = [(FilterAsNewCallersSettingsBundleController *)self activeSpecifier];

    if (!activeSpecifier)
    {
      v9 = PHDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "User device meets FF criteria, adding Filter as New Callers switch to Settings", &v13, 2u);
      }

      createFilterAsNewCallersSpecifier = [(FilterAsNewCallersSettingsBundleController *)self createFilterAsNewCallersSpecifier];
      if (createFilterAsNewCallersSpecifier)
      {
        [v6 addObject:createFilterAsNewCallersSpecifier];
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  createFilterAsNewCallersSpecifier = PHDefaultLog();
  if (os_log_type_enabled(createFilterAsNewCallersSpecifier, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_0, createFilterAsNewCallersSpecifier, OS_LOG_TYPE_DEFAULT, "User device does not meet FF criteria or switch has already been added, so we are not adding Filter as New Callers switch to Settings", &v13, 2u);
  }

LABEL_12:

  v11 = [v6 copy];

  return v11;
}

- (id)createFilterAsNewCallersSpecifier
{
  v3 = [FilterAsNewCallersSettingsBundleController localizedStringForKey:@"FILTER_AS_NEW_CALLERS_TOGGLE_TITLE"];
  v4 = [FilterAsNewCallersSettingsBundleController localizedStringForKey:@"FILTER_AS_NEW_CALLERS_EXPLANATION"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setFilterAsNewCallersEnabled:specifier:" get:"getFilterAsNewCallersEnabled:" detail:0 cell:6 edit:0];
  [v5 setProperty:v4 forKey:PSTableCellSubtitleTextKey];
  [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v5 setIdentifier:@"FILTER_AS_NEW_CALLERS"];
  [(FilterAsNewCallersSettingsBundleController *)self setActiveSpecifier:v5];

  return v5;
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  localizationTableName = [self localizationTableName];
  v7 = [v5 localizedStringForKey:keyCopy value:&stru_42C8 table:localizationTableName];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)refreshView
{
  parentListController = [(FilterAsNewCallersSettingsBundleController *)self parentListController];
  activeSpecifier = [(FilterAsNewCallersSettingsBundleController *)self activeSpecifier];
  [parentListController reloadSpecifier:activeSpecifier animated:1];
}

- (void)setFilterAsNewCallersEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentControllerSpecifierIdentifier = [(FilterAsNewCallersSettingsBundleController *)self currentControllerSpecifierIdentifier];
    v14 = 138412546;
    v15 = currentControllerSpecifierIdentifier;
    v16 = 2112;
    v17 = enabledCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "User has toggled Filter as New Callers %@ switch to %@", &v14, 0x16u);
  }

  tuFeatureFlags = [(FilterAsNewCallersSettingsBundleController *)self tuFeatureFlags];
  deviceExpertMigrationEnabled = [tuFeatureFlags deviceExpertMigrationEnabled];

  currentControllerIsFaceTimeSettings = [(FilterAsNewCallersSettingsBundleController *)self currentControllerIsFaceTimeSettings];
  if (deviceExpertMigrationEnabled)
  {
    configurationProvider = [(FilterAsNewCallersSettingsBundleController *)self configurationProvider];
    bOOLValue = [enabledCopy BOOLValue];
    if (currentControllerIsFaceTimeSettings)
    {
      [configurationProvider setFilterAsNewCallersEnabledForFaceTime:bOOLValue];
    }

    else
    {
      [configurationProvider setFilterAsNewCallersEnabledForPhone:bOOLValue];
    }
  }

  else
  {
    configurationProvider = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [enabledCopy BOOLValue]);
    if (currentControllerIsFaceTimeSettings)
    {
      v13 = &TUCallFilteringUnknownFaceTimeCallersAsNewCallersKey;
    }

    else
    {
      v13 = &TUCallFilteringUnknownCallersAsNewCallersKey;
    }

    [(FilterAsNewCallersSettingsBundleController *)self setValueInUserDefaults:configurationProvider forKey:*v13];
  }
}

- (id)getFilterAsNewCallersEnabled:(id)enabled
{
  if ([(FilterAsNewCallersSettingsBundleController *)self currentControllerIsFaceTimeSettings])
  {
    filterNewCallersForFaceTimeIsEnabled = [(FilterAsNewCallersSettingsBundleController *)self filterNewCallersForFaceTimeIsEnabled];
  }

  else
  {
    filterNewCallersForFaceTimeIsEnabled = [(FilterAsNewCallersSettingsBundleController *)self filterNewCallersForPhoneIsEnabled];
  }

  v5 = [NSNumber numberWithBool:filterNewCallersForFaceTimeIsEnabled];

  return v5;
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
  [v9 postNotificationName:@"FilterAsNewCallersSettingsChangedNotification" object:0];
}

- (BOOL)currentControllerIsFaceTimeSettings
{
  currentControllerSpecifierIdentifier = [(FilterAsNewCallersSettingsBundleController *)self currentControllerSpecifierIdentifier];
  v3 = [currentControllerSpecifierIdentifier isEqualToString:@"FaceTime"];

  return v3;
}

- (id)currentControllerSpecifierIdentifier
{
  parentListController = [(FilterAsNewCallersSettingsBundleController *)self parentListController];
  specifier = [parentListController specifier];
  identifier = [specifier identifier];

  if (identifier)
  {
    v5 = identifier;
  }

  else
  {
    v5 = &stru_42C8;
  }

  return v5;
}

- (BOOL)filterNewCallersForFaceTimeIsEnabled
{
  v2 = [(FilterAsNewCallersSettingsBundleController *)self getBooleanFromUserDefaults:TUCallFilteringUnknownFaceTimeCallersAsNewCallersKey default:&off_4310];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)filterNewCallersForPhoneIsEnabled
{
  v2 = [(FilterAsNewCallersSettingsBundleController *)self getBooleanFromUserDefaults:TUCallFilteringUnknownCallersAsNewCallersKey default:&off_4310];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end