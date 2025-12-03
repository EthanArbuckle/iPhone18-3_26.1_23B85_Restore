@interface ActivitySettingsDetailController
- (id)_bundleIdentifier;
- (id)areFrequentUpdatesEnabled:(id)enabled;
- (id)areLiveActivitiesEnabled:(id)enabled;
- (id)specifiers;
- (void)setFrequentUpdatesEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setLiveActivitiesEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation ActivitySettingsDetailController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = ActivitySettingsDetailController;
  [(ActivitySettingsDetailController *)&v2 viewDidLoad];
}

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.ActivitySettings"];
  v5 = [v4 localizedStringForKey:@"ALLOW_LIVE_ACTIVITIES" value:&stru_4130 table:?];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setLiveActivitiesEnabled:forSpecifier:" get:"areLiveActivitiesEnabled:" detail:0 cell:6 edit:0];

  v21 = PSAllowMultilineTitleKey;
  [v6 setProperty:&__kCFBooleanTrue forKey:?];
  [v3 addObject:v6];
  v7 = [NSBundle bundleWithIdentifier:@"com.apple.ActivitySettings"];
  v8 = [v7 localizedStringForKey:@"FREQUENT_UPDATES_HEADER" value:&stru_4130 table:@"ActivitySettings"];
  v9 = [PSSpecifier groupSpecifierWithName:v8];

  v10 = [NSBundle bundleWithIdentifier:@"com.apple.ActivitySettings"];
  v11 = [v10 localizedStringForKey:@"FREQUENT_UPDATES_FOOTER" value:&stru_4130 table:@"ActivitySettings"];
  [v9 setProperty:v11 forKey:PSFooterTextGroupKey];

  [v3 addObject:v9];
  v12 = [NSBundle bundleWithIdentifier:@"com.apple.ActivitySettings"];
  v13 = [v12 localizedStringForKey:@"MORE_FREQUENT_UPDATES" value:&stru_4130 table:@"ActivitySettings"];
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"setFrequentUpdatesEnabled:forSpecifier:" get:"areFrequentUpdatesEnabled:" detail:0 cell:6 edit:0];

  [v14 setProperty:&__kCFBooleanTrue forKey:v21];
  [v3 addObject:v14];
  v15 = OBJC_IVAR___PSListController__specifiers;
  v16 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v17 = v3;

  v18 = *&self->PSListController_opaque[v15];
  v19 = v18;

  return v18;
}

- (id)areLiveActivitiesEnabled:(id)enabled
{
  v4 = objc_alloc_init(ACActivityAuthorization);
  _bundleIdentifier = [(ActivitySettingsDetailController *)self _bundleIdentifier];
  v6 = [v4 areActivitiesEnabledForBundleId:_bundleIdentifier];

  v7 = [NSNumber numberWithBool:v6];

  return v7;
}

- (void)setLiveActivitiesEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  v8 = objc_alloc_init(ACActivityAuthorization);
  bOOLValue = [enabledCopy BOOLValue];

  _bundleIdentifier = [(ActivitySettingsDetailController *)self _bundleIdentifier];
  [v8 setActivitiesEnabled:bOOLValue forBundleId:_bundleIdentifier];
}

- (id)areFrequentUpdatesEnabled:(id)enabled
{
  v4 = objc_alloc_init(ACActivityAuthorization);
  _bundleIdentifier = [(ActivitySettingsDetailController *)self _bundleIdentifier];
  v6 = [v4 areFrequentPushesEnabledForBundleId:_bundleIdentifier];

  v7 = [NSNumber numberWithBool:v6];

  return v7;
}

- (void)setFrequentUpdatesEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  v8 = objc_alloc_init(ACActivityAuthorization);
  bOOLValue = [enabledCopy BOOLValue];

  _bundleIdentifier = [(ActivitySettingsDetailController *)self _bundleIdentifier];
  [v8 setFrequentPushesEnabled:bOOLValue forBundleId:_bundleIdentifier];
}

- (id)_bundleIdentifier
{
  specifier = [(ActivitySettingsDetailController *)self specifier];
  v3 = [specifier propertyForKey:@"BUNDLE_ID"];

  return v3;
}

@end