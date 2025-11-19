@interface ASTMouseKeysController
- (id)initialDelay:(id)a3;
- (id)maxSpeed:(id)a3;
- (id)mouseKeysEnabled:(id)a3;
- (id)optionToggleEnabled:(id)a3;
- (id)specifiers;
- (id)useMainKeyboardKeysEnabled:(id)a3;
- (void)setInitialDelay:(id)a3 specifier:(id)a4;
- (void)setMaxSpeed:(id)a3 specifier:(id)a4;
- (void)setMouseKeysEnabled:(id)a3 specifier:(id)a4;
- (void)setOptionToggleEnabled:(id)a3 specifier:(id)a4;
- (void)setUseMainKeyboardKeysEnabled:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation ASTMouseKeysController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = ASTMouseKeysController;
  [(ASTMouseKeysController *)&v7 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __37__ASTMouseKeysController_viewDidLoad__block_invoke;
  v4[3] = &unk_255388;
  objc_copyWeak(&v5, &location);
  [v3 registerUpdateBlock:v4 forRetrieveSelector:"assistiveTouchMouseKeysEnabled" withListener:self];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __37__ASTMouseKeysController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v44 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [PSSpecifier groupSpecifierWithID:@"MouseKeysEnableGroup"];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v5 setProperty:v7 forKey:PSFooterCellClassGroupKey];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 bundlePath];
    [v5 setProperty:v9 forKey:@"bundlePath"];

    [v5 setProperty:@"HandSettings" forKey:@"table"];
    [v5 setProperty:&off_27CB60 forKey:@"content"];
    [v4 addObject:v5];
    v10 = settingsLocString(@"MouseKeysMenuTitle", @"HandSettings");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setMouseKeysEnabled:specifier:" get:"mouseKeysEnabled:" detail:0 cell:6 edit:0];

    v12 = PSIDKey;
    [v11 setProperty:@"MouseKeysEnabled" forKey:PSIDKey];
    [v4 addObject:v11];
    v13 = +[PSSpecifier emptyGroupSpecifier];

    v14 = settingsLocString(@"MouseKeysMenuOptionToggleFooter", @"HandSettings");
    v15 = PSFooterTextGroupKey;
    [v13 setProperty:v14 forKey:PSFooterTextGroupKey];

    [v4 addObject:v13];
    v16 = settingsLocString(@"MouseKeysMenuOptionToggleTitle", @"HandSettings");
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:"setOptionToggleEnabled:specifier:" get:"optionToggleEnabled:" detail:0 cell:6 edit:0];

    [v17 setProperty:@"OptionKeyToggle" forKey:v12];
    [v4 addObject:v17];
    v18 = +[PSSpecifier emptyGroupSpecifier];

    v19 = settingsLocString(@"MouseKeysMenuUsePrimaryKeyboardFooter", @"HandSettings");
    [v18 setProperty:v19 forKey:v15];

    [v4 addObject:v18];
    v20 = settingsLocString(@"MouseKeysMenuUsePrimaryKeyboardTitle", @"HandSettings");
    v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:"setUseMainKeyboardKeysEnabled:specifier:" get:"useMainKeyboardKeysEnabled:" detail:0 cell:6 edit:0];

    [v21 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
    v37 = v12;
    [v21 setProperty:@"UsePrimaryKeyboard" forKey:v12];
    [v4 addObject:v21];
    v22 = settingsLocString(@"MouseKeysInitialDelayTitle", @"HandSettings");
    v23 = [PSSpecifier groupSpecifierWithName:v22];

    [v4 addObject:v23];
    v24 = settingsLocString(@"MouseKeysInitialDelayTitle", @"HandSettings");
    v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:"setInitialDelay:specifier:" get:"initialDelay:" detail:0 cell:5 edit:0];

    v43 = PSSliderIsSegmented;
    [v25 setProperty:&__kCFBooleanTrue forKey:?];
    v42 = PSSliderLocksToSegment;
    [v25 setProperty:&__kCFBooleanTrue forKey:?];
    v41 = PSSliderSnapsToSegment;
    [v25 setProperty:&__kCFBooleanTrue forKey:?];
    v40 = PSSliderIsContinuous;
    [v25 setProperty:&__kCFBooleanTrue forKey:?];
    v39 = PSSliderSegmentCount;
    [v25 setProperty:&off_279FC0 forKey:?];
    v26 = AXHareImage();
    v38 = PSSliderRightImageKey;
    [v25 setProperty:v26 forKey:?];

    v27 = AXTortoiseImage();
    v28 = PSSliderLeftImageKey;
    [v25 setProperty:v27 forKey:PSSliderLeftImageKey];

    [v25 setProperty:@"InitialDelay" forKey:v12];
    [v4 addObject:v25];
    v29 = settingsLocString(@"MouseKeysMaxSpeed", @"HandSettings");
    v30 = [PSSpecifier groupSpecifierWithName:v29];

    [v4 addObject:v30];
    v31 = settingsLocString(@"MouseKeysMaxSpeed", @"HandSettings");
    v32 = [PSSpecifier preferenceSpecifierNamed:v31 target:self set:"setMaxSpeed:specifier:" get:"maxSpeed:" detail:0 cell:5 edit:0];

    [v32 setProperty:&__kCFBooleanTrue forKey:v43];
    [v32 setProperty:&__kCFBooleanTrue forKey:v42];
    [v32 setProperty:&__kCFBooleanTrue forKey:v41];
    [v32 setProperty:&__kCFBooleanTrue forKey:v40];
    [v32 setProperty:&off_279FD8 forKey:v39];
    v33 = AXHareImage();
    [v32 setProperty:v33 forKey:v38];

    v34 = AXTortoiseImage();
    [v32 setProperty:v34 forKey:v28];

    [v32 setProperty:@"MaximumSpeed" forKey:v37];
    [v4 addObject:v32];
    [(ASTMouseKeysController *)self setAllSpecifiersUnsearchable:v4];
    v35 = *&self->AXUISettingsBaseListController_opaque[v44];
    *&self->AXUISettingsBaseListController_opaque[v44] = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v44];
  }

  return v3;
}

- (id)mouseKeysEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMouseKeysEnabled]);

  return v4;
}

- (void)setMouseKeysEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AXSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setAssistiveTouchMouseKeysEnabled:v5];
}

- (id)optionToggleEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMouseKeysOptionToggleEnabled]);

  return v4;
}

- (void)setOptionToggleEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AXSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setAssistiveTouchMouseKeysOptionToggleEnabled:v5];
}

- (id)useMainKeyboardKeysEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMouseKeysUseMainKeyboardKeys]);

  return v4;
}

- (void)setUseMainKeyboardKeysEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AXSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setAssistiveTouchMouseKeysUseMainKeyboardKeys:v5];
}

- (id)initialDelay:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchMouseKeysDelay];
  v6 = [v3 propertyForKey:PSSliderSegmentCount];

  [v6 floatValue];
  *&v8 = v5 / v7;
  v9 = [NSNumber numberWithFloat:v8];

  return v9;
}

- (void)setInitialDelay:(id)a3 specifier:(id)a4
{
  v5 = a4;
  [a3 floatValue];
  v7 = v6;
  v8 = [v5 propertyForKey:PSSliderSegmentCount];

  [v8 floatValue];
  v10 = (v7 * v9);

  v11 = +[AXSettings sharedInstance];
  [v11 setAssistiveTouchMouseKeysDelay:v10];
}

- (id)maxSpeed:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchMouseKeysMaxSpeed];
  v6 = [v3 propertyForKey:PSSliderSegmentCount];

  [v6 floatValue];
  *&v8 = v5 / v7;
  v9 = [NSNumber numberWithFloat:v8];

  return v9;
}

- (void)setMaxSpeed:(id)a3 specifier:(id)a4
{
  v5 = a4;
  [a3 floatValue];
  v7 = v6;
  v8 = [v5 propertyForKey:PSSliderSegmentCount];

  [v8 floatValue];
  v10 = (v7 * v9);

  v11 = +[AXSettings sharedInstance];
  [v11 setAssistiveTouchMouseKeysMaxSpeed:v10];
}

@end