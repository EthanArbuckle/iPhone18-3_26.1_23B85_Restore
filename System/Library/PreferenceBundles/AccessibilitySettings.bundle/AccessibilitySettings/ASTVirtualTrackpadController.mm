@interface ASTVirtualTrackpadController
- (ASTVirtualTrackpadController)init;
- (id)assistiveTouchBubbleModeEnabled:(id)a3;
- (id)fadeDelay;
- (id)fullScreenToggleEnabled;
- (id)holdDuration;
- (id)scrollToggleEnabled;
- (id)specifiers;
- (id)virtualTrackpadEnabled:(id)a3;
- (id)virtualTrackpadScrollSpeed;
- (id)virtualTrackpadSpeed;
- (void)setAssistiveTouchBubbleModeEnabled:(id)a3 specifier:(id)a4;
- (void)setFadeDelay:(id)a3;
- (void)setFullScreenToggleEnabled:(id)a3;
- (void)setHoldDuration:(id)a3;
- (void)setScrollToggleEnabled:(id)a3;
- (void)setVirtualTrackpadEnabled:(id)a3 specifier:(id)a4;
- (void)setVirtualTrackpadScrollSpeed:(id)a3;
- (void)setVirtualTrackpadSpeed:(id)a3;
@end

@implementation ASTVirtualTrackpadController

- (ASTVirtualTrackpadController)init
{
  v8.receiver = self;
  v8.super_class = ASTVirtualTrackpadController;
  v2 = [(ASTVirtualTrackpadController *)&v8 init];
  if (v2 && AXDeviceSupportsVirtualTrackpad())
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSettings sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __36__ASTVirtualTrackpadController_init__block_invoke;
    v5[3] = &unk_255388;
    objc_copyWeak(&v6, &location);
    [v3 registerUpdateBlock:v5 forRetrieveSelector:"assistiveTouchVirtualTrackpadEnabled" withListener:v2];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __36__ASTVirtualTrackpadController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"VirtualTrackpadEnabledSpecifier" animated:0];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v44 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = settingsLocString(@"ASTVirtualTrackpadToggleFooter", @"HandSettings");
    v7 = PSFooterTextGroupKey;
    [v5 setProperty:v6 forKey:PSFooterTextGroupKey];

    [v4 addObject:v5];
    v8 = settingsLocString(@"ASTVirtualTrackpadToggleTitle", @"HandSettings");
    v43 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setVirtualTrackpadEnabled:specifier:" get:"virtualTrackpadEnabled:" detail:0 cell:6 edit:0];

    [v43 setIdentifier:@"VirtualTrackpadEnabledSpecifier"];
    [v4 addObject:v43];
    v9 = settingsLocString(@"ASTVirtualTrackpadTrackingSpeed", @"HandSettings");
    v10 = [PSSpecifier groupSpecifierWithName:v9];

    [v4 addObject:v10];
    v11 = settingsLocString(@"ASTVirtualTrackpadTrackingSpeed", @"HandSettings");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"setVirtualTrackpadSpeed:" get:"virtualTrackpadSpeed" detail:0 cell:5 edit:0];

    v42 = PSControlMinimumKey;
    [v12 setProperty:&off_27D0C0 forKey:?];
    v41 = PSControlMaximumKey;
    [v12 setProperty:&off_279B10 forKey:?];
    v13 = AXHareImage();
    v40 = PSSliderRightImageKey;
    [v12 setProperty:v13 forKey:?];

    v14 = AXTortoiseImage();
    v15 = PSSliderLeftImageKey;
    [v12 setProperty:v14 forKey:PSSliderLeftImageKey];

    v16 = PSIDKey;
    [v12 setProperty:@"TRACKING_SPEED_SLIDER" forKey:PSIDKey];
    [v4 addObject:v12];
    v17 = +[PSSpecifier emptyGroupSpecifier];

    v18 = settingsLocString(@"ASTVirtualTrackpadScrollOptionToggleFooter", @"HandSettings");
    [v17 setProperty:v18 forKey:v7];

    [v4 addObject:v17];
    v19 = settingsLocString(@"ASTVirtualTrackpadScrollOptionToggleTitle", @"HandSettings");
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:"setScrollToggleEnabled:" get:"scrollToggleEnabled" detail:0 cell:6 edit:0];

    [v20 setProperty:@"NATURAL_SCROLLING" forKey:v16];
    [v4 addObject:v20];
    v21 = settingsLocString(@"ASTVirtualTrackpadScrollSpeed", @"HandSettings");
    v22 = [PSSpecifier groupSpecifierWithName:v21];

    [v4 addObject:v22];
    v23 = settingsLocString(@"ASTVirtualTrackpadScrollSpeed", @"HandSettings");
    v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:"setVirtualTrackpadScrollSpeed:" get:"virtualTrackpadScrollSpeed" detail:0 cell:5 edit:0];

    [v24 setProperty:&off_27D0D0 forKey:v42];
    [v24 setProperty:&off_279B28 forKey:v41];
    v25 = AXHareImage();
    [v24 setProperty:v25 forKey:v40];

    v26 = AXTortoiseImage();
    [v24 setProperty:v26 forKey:v15];

    [v24 setProperty:@"SCROLL_SPEED_SLIDER" forKey:v16];
    [v4 addObject:v24];
    v27 = +[PSSpecifier emptyGroupSpecifier];

    [v4 addObject:v27];
    v28 = settingsLocString(@"MOUSE_POINTER_HID_DEVICE_BUBBLE_MODE", @"HandSettings");
    v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:"setAssistiveTouchBubbleModeEnabled:specifier:" get:"assistiveTouchBubbleModeEnabled:" detail:0 cell:6 edit:0];

    [v4 addObject:v29];
    v30 = settingsLocString(@"ASTVirtualTrackpadAppearance", @"HandSettings");
    v31 = [PSSpecifier groupSpecifierWithName:v30];

    [v4 addObject:v31];
    v32 = settingsLocString(@"ASTVirtualTrackpadBorderTitle", @"Accessibility-hello");
    v33 = [PSSpecifier preferenceSpecifierNamed:v32 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v33 setProperty:@"BORDER" forKey:v16];
    [v4 addObject:v33];
    v34 = settingsLocString(@"ASTVirtualTrackpadTitle", @"Accessibility-hello");
    v35 = [PSSpecifier preferenceSpecifierNamed:v34 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v35 setProperty:@"TRACKPAD" forKey:v16];
    [v4 addObject:v35];
    v36 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    v37 = settingsLocString(@"PointerControlTitle", @"Accessibility-hello");
    [v36 setName:v37];

    [v36 setObject:@"POINTER_CONTROL" forKeyedSubscript:v16];
    [v4 addObject:v36];
    v38 = *&self->AXUISettingsBaseListController_opaque[v44];
    *&self->AXUISettingsBaseListController_opaque[v44] = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v44];
  }

  return v3;
}

- (id)virtualTrackpadEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchVirtualTrackpadEnabled]);

  return v4;
}

- (void)setVirtualTrackpadEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchVirtualTrackpadEnabled:v4];
}

- (id)virtualTrackpadSpeed
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchVirtualTrackpadSpeed];
  *&v3 = v3;
  v4 = [NSNumber numberWithFloat:v3];

  return v4;
}

- (void)setVirtualTrackpadSpeed:(id)a3
{
  v3 = a3;
  v6 = +[AXSettings sharedInstance];
  [v3 floatValue];
  v5 = v4;

  [v6 setAssistiveTouchVirtualTrackpadSpeed:v5];
}

- (id)scrollToggleEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 assistiveTouchVirtualTrackpadScrollToggleEnabled]);

  return v3;
}

- (void)setScrollToggleEnabled:(id)a3
{
  v3 = a3;
  v5 = +[AXSettings sharedInstance];
  v4 = [v3 BOOLValue];

  [v5 setAssistiveTouchVirtualTrackpadScrollToggleEnabled:v4];
}

- (id)fullScreenToggleEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 assistiveTouchVirtualTrackpadFullScreenToggleEnabled]);

  return v3;
}

- (void)setFullScreenToggleEnabled:(id)a3
{
  v3 = a3;
  v5 = +[AXSettings sharedInstance];
  v4 = [v3 BOOLValue];

  [v5 setAssistiveTouchVirtualTrackpadFullScreenToggleEnabled:v4];
}

- (id)virtualTrackpadScrollSpeed
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchVirtualTrackpadScrollSpeed];
  *&v3 = v3;
  v4 = [NSNumber numberWithFloat:v3];

  return v4;
}

- (void)setVirtualTrackpadScrollSpeed:(id)a3
{
  v3 = a3;
  v6 = +[AXSettings sharedInstance];
  [v3 floatValue];
  v5 = v4;

  [v6 setAssistiveTouchVirtualTrackpadScrollSpeed:v5];
}

- (id)holdDuration
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchVirtualTrackpadHoldDuration];
  *&v3 = v3;
  v4 = [NSNumber numberWithFloat:v3];

  return v4;
}

- (void)setHoldDuration:(id)a3
{
  v3 = a3;
  v6 = +[AXSettings sharedInstance];
  [v3 floatValue];
  v5 = v4;

  [v6 setAssistiveTouchVirtualTrackpadHoldDuration:v5];
}

- (id)fadeDelay
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchVirtualTrackpadFadeDelay];
  *&v3 = v3;
  v4 = [NSNumber numberWithFloat:v3];

  return v4;
}

- (void)setFadeDelay:(id)a3
{
  v3 = a3;
  v6 = +[AXSettings sharedInstance];
  [v3 floatValue];
  v5 = v4;

  [v6 setAssistiveTouchVirtualTrackpadFadeDelay:v5];
}

- (id)assistiveTouchBubbleModeEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchBubbleModeEnabled]);

  return v4;
}

- (void)setAssistiveTouchBubbleModeEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchBubbleModeEnabled:v4];
}

@end