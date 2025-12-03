@interface MapsSettingsWalkingController
- (id)_avoidBusyRoads:(id)roads;
- (id)_avoidHills:(id)hills;
- (id)_avoidStairs:(id)stairs;
- (id)specifiers;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation MapsSettingsWalkingController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MapsSettingsWalkingController;
  [(MapsSettingsWalkingController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v4 = [v3 localizedStringForKey:@"Walking Label [Settings]" value:@"localized string not found" table:0];

  [(MapsSettingsWalkingController *)self setTitle:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = MapsSettingsWalkingController;
  [(MapsSettingsWalkingController *)&v9 viewDidAppear:appear];
  v4 = MapsSettingsWalkingTitle();
  v5 = AppsSettingsTitle();
  v10[0] = v5;
  v6 = MapsSettingsRootTitle();
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.Maps/WalkingLinkPreferenceID"];
  [(MapsSettingsWalkingController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.Maps" title:v4 localizedNavigationComponents:v7 deepLink:v8];
}

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v5 = [v4 localizedStringForKey:@"Avoid Group Label [Settings]" value:@"localized string not found" table:0];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  [v3 addObject:v6];
  v7 = 0;
  if (MapsWalkPreferencesCurrentCountrySupportsAvoidHills())
  {
    v8 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v9 = [v8 localizedStringForKey:@"Avoid Hills Switch Label [Settings]" value:@"localized string not found" table:0];
    v7 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"_setAvoidHills:specifier:" get:"_avoidHills:" detail:0 cell:6 edit:0];

    [v7 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v7 setProperty:@"MapsDefaultWalkingAvoidHillsKey" forKey:PSDefaultsKey];
    [v3 addObject:v7];
  }

  if (MapsWalkPreferencesCurrentCountrySupportsAvoidBusyRoads())
  {
    v10 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v11 = [v10 localizedStringForKey:@"Avoid Busy Roads Switch Label [Settings]" value:@"localized string not found" table:0];
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"_setAvoidBusyRoads:specifier:" get:"_avoidBusyRoads:" detail:0 cell:6 edit:0];

    [v12 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v12 setProperty:@"MapsDefaultWalkingAvoidBusyRoadsKey" forKey:PSDefaultsKey];
    [v3 addObject:v12];
    v7 = v12;
  }

  if (MapsWalkPreferencesCurrentCountrySupportsAvoidStairs())
  {
    v13 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v14 = [v13 localizedStringForKey:@"Avoid Stairs Switch Label [Settings]" value:@"localized string not found" table:0];
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"_setAvoidStairs:specifier:" get:"_avoidStairs:" detail:0 cell:6 edit:0];

    [v15 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v15 setProperty:@"MapsDefaultWalkingAvoidStairsKey" forKey:PSDefaultsKey];
    [v3 addObject:v15];
    v7 = v15;
  }

  if (_isPedestrianARModeSupported() && MapsFeature_IsEnabled_PedestrianAR())
  {
    v16 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v17 = [v16 localizedStringForKey:@"Directions In The Real World Section Title [Settings]" value:@"localized string not found" table:0];
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v18 setProperty:v20 forKey:PSFooterCellClassGroupKey];

    [v3 addObject:v18];
    v21 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v22 = [v21 localizedStringForKey:@"Directions In The Real World Raise to View Switch Label [Settings]" value:@"localized string not found" table:0];
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:"setRaiseToStartPedestrianAR:specifier:" get:"raiseToStartPedestrianAR:" detail:0 cell:6 edit:0];

    [v23 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v23 setProperty:@"MapsEnablePedestrianARRaiseToStart" forKey:PSDefaultsKey];
    [v3 addObject:v23];

    v7 = v23;
  }

  if (_currentDeviceSupportsVIO() && GEOConfigGetBOOL())
  {
    v24 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v25 = [v24 localizedStringForKey:@"Optical Heading Section Title [Settings]" value:@"localized string not found" table:0];
    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    v27 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v28 = [v27 localizedStringForKey:@"Optical Heading Section Footer [Settings]" value:@"localized string not found" table:0];
    [v26 setProperty:v28 forKey:PSFooterTextGroupKey];

    [v3 addObject:v26];
    v29 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v30 = [v29 localizedStringForKey:@"Optical Heading Switch Label [Settings]" value:@"localized string not found" table:0];
    v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:self set:"setOpticalHeading:specifier:" get:"opticalHeading:" detail:0 cell:6 edit:0];

    [v31 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v31 setProperty:@"MapsWalkingEnableImageBasedHeading" forKey:PSDefaultsKey];
    [v3 addObject:v31];

    v7 = v31;
  }

  v32 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v33 = [v32 localizedStringForKey:@"Walking" value:@"localized string not found" table:0];

  [(MapsSettingsWalkingController *)self setSpecifiers:v3];

  return v3;
}

- (id)_avoidHills:(id)hills
{
  v3 = [MapsSettings valueForDefaultsKey:@"MapsDefaultWalkingAvoidHillsKey"];
  if (!v3)
  {
    v3 = &__kCFBooleanFalse;
  }

  return v3;
}

- (id)_avoidBusyRoads:(id)roads
{
  v3 = [MapsSettings valueForDefaultsKey:@"MapsDefaultWalkingAvoidBusyRoadsKey"];
  if (!v3)
  {
    v3 = &__kCFBooleanFalse;
  }

  return v3;
}

- (id)_avoidStairs:(id)stairs
{
  v3 = [MapsSettings valueForDefaultsKey:@"MapsDefaultWalkingAvoidStairsKey"];
  if (!v3)
  {
    v3 = &__kCFBooleanFalse;
  }

  return v3;
}

@end