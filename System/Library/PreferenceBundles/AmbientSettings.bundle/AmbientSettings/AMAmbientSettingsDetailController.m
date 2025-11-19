@interface AMAmbientSettingsDetailController
- (id)_alwaysOnDisplayLinkSpecifier;
- (id)_ambientFeatureName;
- (id)_ambientModeGroupSpecifier;
- (id)_ambientModeSpecifier;
- (id)_nightModeSwitchSpecifier;
- (id)_notificationsPreviewSpecifier;
- (id)_notificationsSpecifier;
- (id)_primaryDisplayGroupSpecifier;
- (id)_primaryNotificationsGroupSpecifier;
- (id)_secondaryDisplayGroupSpecifier;
- (id)_secondaryNotificationsGroupSpecifier;
- (id)specifiers;
- (void)_setAmbientModeEnabled:(id)a3 specifier:(id)a4;
- (void)_setNotificationsEnabled:(id)a3 specifier:(id)a4;
- (void)emitNavigationEvent;
- (void)viewDidLoad;
@end

@implementation AMAmbientSettingsDetailController

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = [(AMAmbientSettingsDetailController *)self _ambientModeGroupSpecifier];
  [v3 addObject:v4];
  v5 = [(AMAmbientSettingsDetailController *)self _ambientModeSpecifier];
  [v3 addObject:v5];
  v6 = [v5 performGetter];
  v7 = [v6 BOOLValue];

  v8 = [(AMAmbientSettingsDetailController *)self _updatesForSpecifiers:v3 ambientModeEnabled:v7 animated:0];
  v9 = [v8 currentSpecifiers];
  [v3 setArray:v9];

  v10 = OBJC_IVAR___PSListController__specifiers;
  v11 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v12 = v3;

  v13 = *&self->PSListController_opaque[v10];
  v14 = v13;

  return v13;
}

- (id)_ambientModeGroupSpecifier
{
  v3 = [PSSpecifier groupSpecifierWithName:&stru_86A0];
  [v3 setProperty:@"AMBIENT_MODE_ENABLED_GROUP" forKey:PSIDKey];
  v4 = AMAmbientSettingsBundle();
  v5 = [v4 localizedStringForKey:@"AMBIENT_MODE_ENABLED_FOOTER" value:&stru_86A0 table:@"AmbientSettings"];
  v6 = [(AMAmbientSettingsDetailController *)self _ambientFeatureName];
  v7 = [NSString stringWithFormat:v5, v6];
  [v3 setProperty:v7 forKey:PSFooterTextGroupKey];

  return v3;
}

- (id)_primaryDisplayGroupSpecifier
{
  v3 = [PSSpecifier groupSpecifierWithID:@"PRIMARY_DISPLAY_GROUP"];
  if (![(AMAmbientSettingsDetailController *)self _supportsAlwaysOn])
  {
    v4 = AMAmbientSettingsBundle();
    v5 = [v4 localizedStringForKey:@"DISPLAY_SETTINGS_GROUP_HEADER" value:&stru_86A0 table:@"AmbientSettings"];
    [v3 setName:v5];

    v6 = AMAmbientSettingsBundle();
    v7 = [v6 localizedStringForKey:@"NIGHT_MODE_ENABLED_FOOTER" value:&stru_86A0 table:@"AmbientSettings"];
    v8 = [(AMAmbientSettingsDetailController *)self _ambientFeatureName];
    v9 = [NSString stringWithFormat:v7, v8];
    [v3 setProperty:v9 forKey:PSFooterTextGroupKey];
  }

  return v3;
}

- (id)_secondaryDisplayGroupSpecifier
{
  v2 = [PSSpecifier groupSpecifierWithName:&stru_86A0];
  [v2 setProperty:@"SECONDARY_DISPLAY_GROUP" forKey:PSIDKey];

  return v2;
}

- (id)_ambientModeSpecifier
{
  v3 = [(AMAmbientSettingsDetailController *)self _ambientFeatureName];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"_setAmbientModeEnabled:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v4 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v4 setProperty:@"AMBIENT_MODE_ENABLED" forKey:PSIDKey];
  [v4 setProperty:@"com.apple.ambient" forKey:PSDefaultsKey];
  [v4 setProperty:@"AMEnableAmbientMode" forKey:PSKeyNameKey];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSDefaultValueKey];

  return v4;
}

- (id)_alwaysOnDisplayLinkSpecifier
{
  v2 = AMAmbientSettingsBundle();
  v3 = [v2 localizedStringForKey:@"ALWAYS_ON_DISPLAY_OPTIONS" value:&stru_86A0 table:@"AmbientSettings"];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  [v4 setProperty:&__kCFBooleanTrue forKey:PSDefaultValueKey];
  [v4 setProperty:@"ALWAYS_ON_DISPLAY_OPTIONS" forKey:PSIDKey];

  return v4;
}

- (id)_nightModeSwitchSpecifier
{
  v3 = AMAmbientSettingsBundle();
  v4 = [v3 localizedStringForKey:@"NIGHT_MODE_ENABLED" value:&stru_86A0 table:@"AmbientSettings"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v5 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v5 setProperty:@"BUMP_TO_WAKE_ENABLED" forKey:PSIDKey];
  [v5 setProperty:@"com.apple.ambient" forKey:PSDefaultsKey];
  [v5 setProperty:@"AMNightModeEnabled" forKey:PSKeyNameKey];
  [v5 setProperty:&__kCFBooleanTrue forKey:PSDefaultValueKey];

  return v5;
}

- (id)_primaryNotificationsGroupSpecifier
{
  v3 = AMAmbientSettingsBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATIONS_ENABLED_FOOTER" value:&stru_86A0 table:@"AmbientSettings"];
  v5 = [(AMAmbientSettingsDetailController *)self _ambientFeatureName];
  v6 = [NSString stringWithFormat:v4, v5];

  v7 = AMAmbientSettingsBundle();
  v8 = [v7 localizedStringForKey:@"NOTIFICATIONS_GROUP_HEADER" value:&stru_86A0 table:@"AmbientSettings"];
  v9 = [PSSpecifier groupSpecifierWithName:v8];

  [v9 setProperty:@"PRIMARY_NOTIFICATION_GROUP" forKey:PSIDKey];
  [v9 setProperty:v6 forKey:PSFooterTextGroupKey];

  return v9;
}

- (id)_secondaryNotificationsGroupSpecifier
{
  v3 = AMAmbientSettingsBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATIONS_PREVIEW_FOOTER" value:&stru_86A0 table:@"AmbientSettings"];
  v5 = [(AMAmbientSettingsDetailController *)self _ambientFeatureName];
  v6 = [NSString stringWithFormat:v4, v5];

  v7 = [PSSpecifier groupSpecifierWithName:&stru_86A0];
  [v7 setProperty:@"SECONDARY_NOTIFICATIONS_GROUP" forKey:PSIDKey];
  [v7 setProperty:v6 forKey:PSFooterTextGroupKey];

  return v7;
}

- (id)_notificationsSpecifier
{
  v3 = AMAmbientSettingsBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATIONS_ENABLED" value:&stru_86A0 table:@"AmbientSettings"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"_setNotificationsEnabled:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v5 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v5 setProperty:@"NOTIFICATIONS_ENABLED" forKey:PSIDKey];
  [v5 setProperty:@"com.apple.ambient" forKey:PSDefaultsKey];
  [v5 setProperty:@"AMNotificationsEnabled" forKey:PSKeyNameKey];
  [v5 setProperty:&__kCFBooleanTrue forKey:PSDefaultValueKey];

  return v5;
}

- (id)_notificationsPreviewSpecifier
{
  v3 = AMAmbientSettingsBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATIONS_PREVIEW" value:&stru_86A0 table:@"AmbientSettings"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v5 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v5 setProperty:@"NOTIFICATIONS_PREVIEW" forKey:PSIDKey];
  [v5 setProperty:@"com.apple.ambient" forKey:PSDefaultsKey];
  [v5 setProperty:@"AMNotificationsPreviewOnTapOnlyEnabled" forKey:PSKeyNameKey];
  [v5 setProperty:&__kCFBooleanFalse forKey:PSDefaultValueKey];

  return v5;
}

- (void)_setAmbientModeEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  CFPreferencesSetAppValue(@"AMEnableAmbientMode", v5, @"com.apple.ambient");
  v6 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v7 = [v5 BOOLValue];

  v8 = [(AMAmbientSettingsDetailController *)self _updatesForSpecifiers:v6 ambientModeEnabled:v7 animated:1];
  [(AMAmbientSettingsDetailController *)self performSpecifierUpdates:v8];
}

- (void)_setNotificationsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  CFPreferencesSetAppValue(@"AMNotificationsEnabled", v5, @"com.apple.ambient");
  v6 = OBJC_IVAR___PSListController__specifiers;
  v12 = [PSSpecifierUpdates updatesWithSpecifiers:*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers]];
  v7 = [v5 BOOLValue];

  if (v7)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = [(AMAmbientSettingsDetailController *)self _secondaryNotificationsGroupSpecifier];
    [v8 addObject:v9];

    v10 = [(AMAmbientSettingsDetailController *)self _notificationsPreviewSpecifier];
    [v8 addObject:v10];

    [v12 insertContiguousSpecifiers:v8 afterSpecifierWithID:@"NOTIFICATIONS_ENABLED"];
  }

  else
  {
    [v12 removeSpecifiersInRange:{objc_msgSend(*&self->PSListController_opaque[v6], "indexOfSpecifierWithID:", @"SECONDARY_NOTIFICATIONS_GROUP", 2}];
  }

  v11 = [v12 context];
  [v11 setAnimated:1];

  [(AMAmbientSettingsDetailController *)self performSpecifierUpdates:v12];
}

- (id)_ambientFeatureName
{
  v2 = AMAmbientSettingsBundle();
  v3 = [v2 localizedStringForKey:@"AMBIENT_FEATURE_NAME" value:&stru_86A0 table:@"AmbientSettings"];

  return v3;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AMAmbientSettingsDetailController;
  [(AMAmbientSettingsDetailController *)&v4 viewDidLoad];
  v3 = [(AMAmbientSettingsDetailController *)self _ambientFeatureName];
  [(AMAmbientSettingsDetailController *)self setTitle:v3];
}

- (void)emitNavigationEvent
{
  v8 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.StandBy"];
  v3 = [_NSLocalizedStringResource alloc];
  v4 = +[NSLocale currentLocale];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 bundleURL];
  v7 = [v3 initWithKey:@"AMBIENT_FEATURE_NAME" table:@"AmbientSettings" locale:v4 bundleURL:v6];

  [(AMAmbientSettingsDetailController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.standby" title:v7 localizedNavigationComponents:&__NSArray0__struct deepLink:v8];
}

@end