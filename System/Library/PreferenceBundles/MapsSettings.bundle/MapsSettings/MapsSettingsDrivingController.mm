@interface MapsSettingsDrivingController
- (id)_avoidHighways:(id)highways;
- (id)_avoidTolls:(id)tolls;
- (id)specifiers;
- (void)_setReportAndVerifyIncidentsWhileNavigating:(id)navigating specifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation MapsSettingsDrivingController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MapsSettingsDrivingController;
  [(MapsSettingsDrivingController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v4 = [v3 localizedStringForKey:@"Driving Group Title [Settings]" value:@"localized string not found" table:0];

  [(MapsSettingsDrivingController *)self setTitle:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = MapsSettingsDrivingController;
  [(MapsSettingsDrivingController *)&v9 viewDidAppear:appear];
  v4 = MapsSettingsDrivingTitle();
  v5 = AppsSettingsTitle();
  v10[0] = v5;
  v6 = MapsSettingsRootTitle();
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.Maps/DrivingLinkPreferenceID"];
  [(MapsSettingsDrivingController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.Maps" title:v4 localizedNavigationComponents:v7 deepLink:v8];
}

- (id)_avoidTolls:(id)tolls
{
  v3 = [MapsSettings valueForDefaultsKey:@"MapsDefaultAvoidTollsKey"];
  if (!v3)
  {
    v3 = &__kCFBooleanFalse;
  }

  return v3;
}

- (id)_avoidHighways:(id)highways
{
  v3 = [MapsSettings valueForDefaultsKey:@"MapsDefaultAvoidHighwaysKey"];
  if (!v3)
  {
    v3 = &__kCFBooleanFalse;
  }

  return v3;
}

- (void)_setReportAndVerifyIncidentsWhileNavigating:(id)navigating specifier:(id)specifier
{
  [navigating BOOLValue];

  GEOConfigSetBOOL();
}

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v5 = [v4 localizedStringForKey:@"Avoid Group Label [Settings]" value:@"localized string not found" table:0];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  v37 = v6;
  [v3 addObject:v6];
  v7 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v8 = [v7 localizedStringForKey:@"Avoid Tolls Switch Label [Settings]" value:@"localized string not found" table:0];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"_setAvoidTolls:specifier:" get:"_avoidTolls:" detail:0 cell:6 edit:0];

  v10 = PSEnabledKey;
  [v9 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  v11 = PSDefaultsKey;
  [v9 setProperty:@"MapsDefaultAvoidTollsKey" forKey:PSDefaultsKey];
  [v3 addObject:v9];
  v12 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v13 = [v12 localizedStringForKey:@"Avoid Highways Switch Label [Settings]" value:@"localized string not found" table:0];
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"_setAvoidHighways:specifier:" get:"_avoidHighways:" detail:0 cell:6 edit:0];

  [v14 setProperty:&__kCFBooleanTrue forKey:v10];
  [v14 setProperty:@"MapsDefaultAvoidHighwaysKey" forKey:v11];
  [v3 addObject:v14];
  if ([(MapsSettingBaseController *)self supportsNavigation])
  {
    v15 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v16 = [v15 localizedStringForKey:@"Show in Navigation Title [Settings]" value:@"localized string not found" table:0];
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    v18 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v19 = [v18 localizedStringForKey:@"Default Navigation Footer [Settings]" value:@"localized string not found" table:0];
    v36 = v17;
    [v17 setProperty:v19 forKey:PSFooterTextGroupKey];

    [v3 addObject:v17];
    v20 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v21 = [v20 localizedStringForKey:@"Show Heading Switch Label [Settings]" value:@"localized string not found" table:0];
    v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:"_setShowHeading:specifier:" get:"_showHeading:" detail:0 cell:6 edit:0];

    [v22 setProperty:&__kCFBooleanTrue forKey:v10];
    [v22 setProperty:@"NavigationShowHeadingKey" forKey:v11];
    [v22 setProperty:GEODefaultsDomain() forKey:@"MapsSettingsSpecifierBundleID"];
    [v3 addObject:v22];
    v23 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v24 = [v23 localizedStringForKey:@"Show Speed Limit Switch Label [Settings]" value:@"localized string not found" table:0];
    v14 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:"_setShowSpeedLimit:specifier:" get:"_showSpeedLimit:" detail:0 cell:6 edit:0];

    [v14 setProperty:&__kCFBooleanTrue forKey:v10];
    [v14 setProperty:@"NavigationShowSpeedLimitKey" forKey:v11];
    [v14 setProperty:GEODefaultsDomain() forKey:@"MapsSettingsSpecifierBundleID"];
    [v3 addObject:v14];
  }

  v25 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v26 = [v25 localizedStringForKey:@"Driving" value:@"localized string not found" table:0];

  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    v27 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v28 = [v27 localizedStringForKey:@"Reporting Incidents Title [Settings]" value:@"localized string not found" table:0];
    v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    v30 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v31 = [v30 localizedStringForKey:@"Reporting Incidents footer [Settings]" value:@"localized string not found" table:0];
    [v29 setProperty:v31 forKey:PSFooterTextGroupKey];

    [v3 addObject:v29];
    v32 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v33 = [v32 localizedStringForKey:@"Report and Verify While Navigating Label [Settings]" value:@"localized string not found" table:0];
    v34 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:"_setReportAndVerifyIncidentsWhileNavigating:specifier:" get:"_reportAndVerifyIncidentsWhileNavigating:" detail:0 cell:6 edit:0];

    [v34 setProperty:&__kCFBooleanTrue forKey:v10];
    [v34 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v3 addObject:v34];

    v14 = v34;
  }

  [(MapsSettingsDrivingController *)self setSpecifiers:v3];

  return v3;
}

@end