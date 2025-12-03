@interface AXMotionCuesAppearanceController
- (id)_motionCuesIncreasedCountEnabled;
- (id)_motionCuesIncreasedSizeEnabled;
- (id)specifiers;
- (void)_didBecomeActive;
- (void)_didBecomeKey;
- (void)_didResignKey;
- (void)_enableMotionCuesIfNeeded;
- (void)_registerNotifications;
- (void)_restoreMotionCuesMode;
- (void)_setMotionCuesIncreasedCountEnabled:(id)enabled;
- (void)_setMotionCuesIncreasedSizeEnabled:(id)enabled;
- (void)_unregisterNotifications;
- (void)_willResignActive;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)userDidSelectMotionCuesColor:(int)color;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation AXMotionCuesAppearanceController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = AXMotionCuesAppearanceController;
  [(AXMotionCuesAppearanceController *)&v7 viewDidLoad];
  table = [(AXMotionCuesAppearanceController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXMotionCuesColorCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];

  v6 = settingsLocString(@"MotionCuesAppearanceTitle", @"Accessibility-MotionCues");
  [(AXMotionCuesAppearanceController *)self setTitle:v6];
}

- (void)_registerNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_didBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_willResignActive" name:UIApplicationWillResignActiveNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_didBecomeKey" name:UIWindowDidBecomeKeyNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_didResignKey" name:UIWindowDidResignKeyNotification object:0];
}

- (void)_unregisterNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)_didBecomeActive
{
  v3 = AXLogMotionCues();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "didBecomeActive, enabling motion cues if needed", v4, 2u);
  }

  [(AXMotionCuesAppearanceController *)self _enableMotionCuesIfNeeded];
}

- (void)_willResignActive
{
  v3 = AXLogMotionCues();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    previousMotionCuesMode = [(AXMotionCuesAppearanceController *)self previousMotionCuesMode];
    v5 = 138412290;
    v6 = previousMotionCuesMode;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "willResignActive, restoring previous motion cues mode %@", &v5, 0xCu);
  }

  [(AXMotionCuesAppearanceController *)self _restoreMotionCuesMode];
}

- (void)_didBecomeKey
{
  v3 = AXLogMotionCues();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "didBecomeKey, enabling motion cues if needed", v4, 2u);
  }

  [(AXMotionCuesAppearanceController *)self _enableMotionCuesIfNeeded];
}

- (void)_didResignKey
{
  v3 = AXLogMotionCues();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    previousMotionCuesMode = [(AXMotionCuesAppearanceController *)self previousMotionCuesMode];
    v5 = 138412290;
    v6 = previousMotionCuesMode;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "didResignKey, restoring previous motion cues mode %@", &v5, 0xCu);
  }

  [(AXMotionCuesAppearanceController *)self _restoreMotionCuesMode];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = AXMotionCuesAppearanceController;
  [(AXMotionCuesAppearanceController *)&v6 viewDidAppear:appear];
  v4 = AXLogMotionCues();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "viewDidAppear, enabling motion cues if needed", v5, 2u);
  }

  [(AXMotionCuesAppearanceController *)self _enableMotionCuesIfNeeded];
  [(AXMotionCuesAppearanceController *)self _registerNotifications];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = AXMotionCuesAppearanceController;
  [(AXMotionCuesAppearanceController *)&v6 viewDidDisappear:disappear];
  [(AXMotionCuesAppearanceController *)self _unregisterNotifications];
  v4 = AXLogMotionCues();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    previousMotionCuesMode = [(AXMotionCuesAppearanceController *)self previousMotionCuesMode];
    *buf = 138412290;
    v8 = previousMotionCuesMode;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "viewDidDisappear, restoring previous motion cues mode %@", buf, 0xCu);
  }

  [(AXMotionCuesAppearanceController *)self _restoreMotionCuesMode];
}

- (void)_enableMotionCuesIfNeeded
{
  if (!_AXSMotionCuesActive())
  {
    v3 = [NSNumber numberWithInt:_AXSMotionCuesMode()];
    [(AXMotionCuesAppearanceController *)self setPreviousMotionCuesMode:v3];

    _AXSSetMotionCuesModeAndShowBanner();
  }
}

- (void)_restoreMotionCuesMode
{
  previousMotionCuesMode = [(AXMotionCuesAppearanceController *)self previousMotionCuesMode];

  if (previousMotionCuesMode)
  {
    previousMotionCuesMode2 = [(AXMotionCuesAppearanceController *)self previousMotionCuesMode];
    [previousMotionCuesMode2 intValue];
    _AXSSetMotionCuesModeAndShowBanner();

    [(AXMotionCuesAppearanceController *)self setPreviousMotionCuesMode:0];
  }
}

- (id)specifiers
{
  v3 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v29 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = settingsLocString(@"MotionCuesPattern", @"Accessibility-MotionCues");
    v6 = [PSSpecifier groupSpecifierWithName:v5];

    v7 = settingsLocString(@"MotionCuesPatternFooter", @"Accessibility-MotionCues");
    v8 = PSFooterTextGroupKey;
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v4 addObject:v6];
    v9 = settingsLocString(@"MotionCuesPatternDefault", @"Accessibility-MotionCues");
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v10 setProperty:&off_27A008 forKey:@"MotionCuesPatternKey"];
    v11 = PSIDKey;
    [v10 setProperty:@"MotionCuesStyleGrid" forKey:PSIDKey];
    [v4 addObject:v10];
    v12 = settingsLocString(@"MotionCuesPatternDynamic", @"Accessibility-MotionCues");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v13 setProperty:&off_27A020 forKey:@"MotionCuesPatternKey"];
    [v13 setProperty:@"MotionCuesStyleParticles" forKey:v11];
    [v4 addObject:v13];
    v14 = settingsLocString(@"MotionCuesTintColor", @"Accessibility-MotionCues");
    v15 = [PSSpecifier groupSpecifierWithName:v14];

    v16 = settingsLocString(@"MotionCuesTintColorFooter", @"Accessibility-MotionCues");
    [v15 setProperty:v16 forKey:v8];

    [v4 addObject:v15];
    v17 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];

    [v17 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v17 setProperty:@"MotionCuesTintColorKey" forKey:v11];
    [v17 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    v18 = [NSNumber numberWithInt:_AXSMotionCuesTintColor()];
    [v17 setProperty:v18 forKey:@"AXMotionCuesTintColor"];

    v19 = objc_initWeak(&location, self);
    [v17 setProperty:self forKey:@"AXMotionCuesTintColorDelegate"];

    [v4 addObject:v17];
    v20 = settingsLocString(@"MotionCuesVisibility", @"Accessibility-MotionCues");
    v21 = [PSSpecifier groupSpecifierWithName:v20];

    v22 = settingsLocString(@"MotionCuesVisibilityFooter", @"Accessibility-MotionCues");
    [v21 setProperty:v22 forKey:v8];

    [v4 addObject:v21];
    v23 = settingsLocString(@"MotionCuesIncreasedSize", @"Accessibility-MotionCues");
    v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:"_setMotionCuesIncreasedSizeEnabled:" get:"_motionCuesIncreasedSizeEnabled" detail:0 cell:6 edit:0];

    [v24 setProperty:@"MotionCuesSizeKey" forKey:v11];
    [v4 addObject:v24];
    v25 = settingsLocString(@"MotionCuesIncreasedCount", @"Accessibility-MotionCues");
    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:"_setMotionCuesIncreasedCountEnabled:" get:"_motionCuesIncreasedCountEnabled" detail:0 cell:6 edit:0];

    [v26 setProperty:@"MotionCuesDensityKey" forKey:v11];
    [v4 addObject:v26];
    v27 = *&self->super.AXUISettingsListController_opaque[v29];
    *&self->super.AXUISettingsListController_opaque[v29] = v4;

    objc_destroyWeak(&location);
    v3 = *&self->super.AXUISettingsListController_opaque[v29];
  }

  return v3;
}

- (void)userDidSelectMotionCuesColor:(int)color
{
  v3 = *&color;
  _AXSSetMotionCuesTintColor();
  v6 = [(AXMotionCuesAppearanceController *)self specifierForID:@"MotionCuesTintColorKey"];
  v5 = [NSNumber numberWithInt:v3];
  [v6 setProperty:v5 forKey:@"AXMotionCuesTintColor"];

  [(AXMotionCuesAppearanceController *)self reloadSpecifier:v6];
}

- (id)_motionCuesIncreasedSizeEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 motionCuesIncreasedSizeEnabled]);

  return v3;
}

- (void)_setMotionCuesIncreasedSizeEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = +[AXSettings sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [v5 setMotionCuesIncreasedSizeEnabled:bOOLValue];
}

- (id)_motionCuesIncreasedCountEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 motionCuesIncreasedDensityEnabled]);

  return v3;
}

- (void)_setMotionCuesIncreasedCountEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = +[AXSettings sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [v5 setMotionCuesIncreasedDensityEnabled:bOOLValue];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = AXMotionCuesAppearanceController;
  [(AXMotionCuesAppearanceController *)&v9 tableView:view didSelectRowAtIndexPath:pathCopy];
  if (![pathCopy section])
  {
    v7 = [(AXMotionCuesAppearanceController *)self specifierForIndexPath:pathCopy];
    v8 = [v7 propertyForKey:@"MotionCuesPatternKey"];
    [v8 intValue];

    _AXSSetMotionCuesStyle();
    [(AXMotionCuesAppearanceController *)self updateTableCheckedSelection:pathCopy];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  if (![path section])
  {
    v6 = _AXSMotionCuesStyle();
    v7 = cellCopy;
    specifier = [v7 specifier];
    v9 = [specifier propertyForKey:@"MotionCuesPatternKey"];
    v10 = [v9 intValue] == v6;

    [v7 setChecked:v10];
  }
}

@end