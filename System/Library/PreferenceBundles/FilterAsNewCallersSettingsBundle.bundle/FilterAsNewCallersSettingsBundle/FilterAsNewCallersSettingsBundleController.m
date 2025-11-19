@interface FilterAsNewCallersSettingsBundleController
+ (id)localizedStringForKey:(id)a3;
- (BOOL)currentControllerIsFaceTimeSettings;
- (BOOL)filterNewCallersForFaceTimeIsEnabled;
- (BOOL)filterNewCallersForPhoneIsEnabled;
- (FilterAsNewCallersSettingsBundleController)initWithParentListController:(id)a3;
- (PSListController)parentListController;
- (id)createFilterAsNewCallersSpecifier;
- (id)currentControllerSpecifierIdentifier;
- (id)getBooleanFromUserDefaults:(id)a3 default:(id)a4;
- (id)getFilterAsNewCallersEnabled:(id)a3;
- (id)specifiersWithSpecifier:(id)a3;
- (void)refreshView;
- (void)setFilterAsNewCallersEnabled:(id)a3 specifier:(id)a4;
- (void)setValueInUserDefaults:(id)a3 forKey:(id)a4;
@end

@implementation FilterAsNewCallersSettingsBundleController

- (FilterAsNewCallersSettingsBundleController)initWithParentListController:(id)a3
{
  v10.receiver = self;
  v10.super_class = FilterAsNewCallersSettingsBundleController;
  v3 = [(FilterAsNewCallersSettingsBundleController *)&v10 initWithParentListController:a3];
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

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(FilterAsNewCallersSettingsBundleController *)self currentControllerSpecifierIdentifier];
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Loading settings page for app %@", &v13, 0xCu);
  }

  v6 = +[NSMutableArray array];
  v7 = [(FilterAsNewCallersSettingsBundleController *)self tuFeatureFlags];
  if ([v7 junkFilteringEnabled])
  {
    v8 = [(FilterAsNewCallersSettingsBundleController *)self activeSpecifier];

    if (!v8)
    {
      v9 = PHDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "User device meets FF criteria, adding Filter as New Callers switch to Settings", &v13, 2u);
      }

      v10 = [(FilterAsNewCallersSettingsBundleController *)self createFilterAsNewCallersSpecifier];
      if (v10)
      {
        [v6 addObject:v10];
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "User device does not meet FF criteria or switch has already been added, so we are not adding Filter as New Callers switch to Settings", &v13, 2u);
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

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [a1 localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_42C8 table:v6];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)refreshView
{
  v4 = [(FilterAsNewCallersSettingsBundleController *)self parentListController];
  v3 = [(FilterAsNewCallersSettingsBundleController *)self activeSpecifier];
  [v4 reloadSpecifier:v3 animated:1];
}

- (void)setFilterAsNewCallersEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(FilterAsNewCallersSettingsBundleController *)self currentControllerSpecifierIdentifier];
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "User has toggled Filter as New Callers %@ switch to %@", &v14, 0x16u);
  }

  v8 = [(FilterAsNewCallersSettingsBundleController *)self tuFeatureFlags];
  v9 = [v8 deviceExpertMigrationEnabled];

  v10 = [(FilterAsNewCallersSettingsBundleController *)self currentControllerIsFaceTimeSettings];
  if (v9)
  {
    v11 = [(FilterAsNewCallersSettingsBundleController *)self configurationProvider];
    v12 = [v5 BOOLValue];
    if (v10)
    {
      [v11 setFilterAsNewCallersEnabledForFaceTime:v12];
    }

    else
    {
      [v11 setFilterAsNewCallersEnabledForPhone:v12];
    }
  }

  else
  {
    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 BOOLValue]);
    if (v10)
    {
      v13 = &TUCallFilteringUnknownFaceTimeCallersAsNewCallersKey;
    }

    else
    {
      v13 = &TUCallFilteringUnknownCallersAsNewCallersKey;
    }

    [(FilterAsNewCallersSettingsBundleController *)self setValueInUserDefaults:v11 forKey:*v13];
  }
}

- (id)getFilterAsNewCallersEnabled:(id)a3
{
  if ([(FilterAsNewCallersSettingsBundleController *)self currentControllerIsFaceTimeSettings])
  {
    v4 = [(FilterAsNewCallersSettingsBundleController *)self filterNewCallersForFaceTimeIsEnabled];
  }

  else
  {
    v4 = [(FilterAsNewCallersSettingsBundleController *)self filterNewCallersForPhoneIsEnabled];
  }

  v5 = [NSNumber numberWithBool:v4];

  return v5;
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
  [v9 postNotificationName:@"FilterAsNewCallersSettingsChangedNotification" object:0];
}

- (BOOL)currentControllerIsFaceTimeSettings
{
  v2 = [(FilterAsNewCallersSettingsBundleController *)self currentControllerSpecifierIdentifier];
  v3 = [v2 isEqualToString:@"FaceTime"];

  return v3;
}

- (id)currentControllerSpecifierIdentifier
{
  v2 = [(FilterAsNewCallersSettingsBundleController *)self parentListController];
  v3 = [v2 specifier];
  v4 = [v3 identifier];

  if (v4)
  {
    v5 = v4;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)filterNewCallersForPhoneIsEnabled
{
  v2 = [(FilterAsNewCallersSettingsBundleController *)self getBooleanFromUserDefaults:TUCallFilteringUnknownCallersAsNewCallersKey default:&off_4310];
  v3 = [v2 BOOLValue];

  return v3;
}

@end