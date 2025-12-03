@interface AXMotionCuesController
- (AXMotionCuesController)init;
- (id)motionCuesEnabled:(id)enabled;
- (id)motionCuesIntensity:(id)intensity;
- (id)specifiers;
- (void)setMotionCuesEnabled:(id)enabled specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateMotionCuesInCarStatus;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation AXMotionCuesController

- (AXMotionCuesController)init
{
  v5.receiver = self;
  v5.super_class = AXMotionCuesController;
  v2 = [(AccessibilitySettingsBaseController *)&v5 init];
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, v2, _accessibilitySettingsChanged, kAXSMotionCuesPreferenceDidChangeNotification, 0, 1028);
  return v2;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXMotionCuesController;
  [(AXMotionCuesController *)&v4 viewDidAppear:appear];
  [(AXMotionCuesController *)self setIsDisappeared:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = AXMotionCuesController;
  [(AXMotionCuesController *)&v4 viewDidDisappear:disappear];
  [(AXMotionCuesController *)self setIsDisappeared:1];
}

- (void)updateMotionCuesInCarStatus
{
  if (![(AXMotionCuesController *)self isDisappeared])
  {

    [(AXMotionCuesController *)self reloadSpecifiers];
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = AXInBuddySetupKey;
    [v6 setProperty:&__kCFBooleanFalse forKey:AXInBuddySetupKey];
    v8 = AXLocStringKeyForModel();
    v9 = settingsLocString(v8, @"Accessibility-MotionCues");
    v10 = PSFooterTextGroupKey;
    [v6 setProperty:v9 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    if (AXDeviceIsPad())
    {
      v11 = settingsLocString(@"MotionCuesTitle", @"Accessibility-MotionCues");
      v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"setMotionCuesEnabled:specifier:" get:"motionCuesEnabled:" detail:0 cell:6 edit:0];

      [v12 setProperty:&__kCFBooleanTrue forKey:v7];
      v13 = PSIDKey;
      v14 = @"MotionCues";
    }

    else
    {
      v15 = settingsLocString(@"MotionCuesOn", @"Accessibility-MotionCues");
      v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v16 setProperty:&off_27A650 forKey:@"MotionCueKey"];
      v13 = PSIDKey;
      [v16 setProperty:@"MotionCuesOn" forKey:PSIDKey];
      [v5 addObject:v16];
      v17 = v10;
      settingsLocString(@"MotionCuesOff", @"Accessibility-MotionCues");
      v19 = v18 = v5;
      v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:3 edit:0];

      v5 = v18;
      [v20 setProperty:&off_27A668 forKey:@"MotionCueKey"];
      [v20 setProperty:@"MotionCuesOff" forKey:v13];
      [v18 addObject:v20];
      v21 = settingsLocString(@"MotionCuesInCar", @"Accessibility-MotionCues");
      v12 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:3 edit:0];

      v10 = v17;
      [v12 setProperty:&off_27A680 forKey:@"MotionCueKey"];
      v14 = @"MotionCuesOnInCar";
    }

    [v12 setProperty:v14 forKey:v13];
    [v5 addObject:v12];
    if (_os_feature_enabled_impl())
    {
      v22 = +[PSSpecifier emptyGroupSpecifier];

      v23 = settingsLocString(@"MotionCuesAppearanceFooter", @"Accessibility-MotionCues");
      [v22 setProperty:v23 forKey:v10];

      [v5 addObject:v22];
      v24 = settingsLocString(@"MotionCuesAppearanceButtonText", @"Accessibility-MotionCues");
      v12 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

      [v12 setProperty:@"MotionCuesAppearanceCell" forKey:v13];
      [v5 addObject:v12];
    }

    v25 = *&self->super.AXUISettingsListController_opaque[v3];
    *&self->super.AXUISettingsListController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsListController_opaque[v3];
  }

  return v4;
}

- (id)motionCuesIntensity:(id)intensity
{
  v3 = _AXSMotionCuesIntensity();
  if (v3 > 2)
  {
    v4 = &stru_25D420;
  }

  else
  {
    v4 = settingsLocString(*(&off_257D38 + v3), @"Accessibility-MotionCues");
  }

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  if (![path section] && !-[AXMotionCuesController isDisappeared](self, "isDisappeared"))
  {
    v7 = _AXSMotionCuesMode();
    v8 = cellCopy;
    specifier = [v8 specifier];
    v10 = [specifier propertyForKey:@"MotionCueKey"];
    v11 = [v10 intValue] == v7;

    [v8 setChecked:v11];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = AXMotionCuesController;
  [(AXMotionCuesController *)&v9 tableView:view didSelectRowAtIndexPath:pathCopy];
  if (![pathCopy section] && (AXDeviceIsPad() & 1) == 0)
  {
    v7 = [(AXMotionCuesController *)self specifierForIndexPath:pathCopy];
    v8 = [v7 propertyForKey:@"MotionCueKey"];
    [v8 intValue];

    _AXSSetMotionCuesMode();
    [(AXMotionCuesController *)self updateTableCheckedSelection:pathCopy];
  }
}

- (id)motionCuesEnabled:(id)enabled
{
  v3 = _AXSMotionCuesMode() == 1;

  return [NSNumber numberWithInt:v3];
}

- (void)setMotionCuesEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = AXLogMotionCues();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = bOOLValue;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Settings user change: enabled=%{BOOL}d", buf, 8u);
  }

  _AXSSetMotionCuesMode();
  aXMotionCuesAnalyticsEnableKey = [NSNumber numberWithBool:bOOLValue, AXMotionCuesAnalyticsEnableKey];
  v9 = aXMotionCuesAnalyticsEnableKey;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  AnalyticsSendEvent();
}

@end