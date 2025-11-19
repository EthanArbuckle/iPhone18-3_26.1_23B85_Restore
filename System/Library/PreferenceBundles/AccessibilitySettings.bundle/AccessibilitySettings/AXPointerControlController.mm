@interface AXPointerControlController
- (id)allowCustomPointerShapes:(id)a3;
- (id)autoHidePointer:(id)a3;
- (id)globalDevicePreferences;
- (id)ignoreTrackpad:(id)a3;
- (id)increasePointerContrast:(id)a3;
- (id)localizedCurrentDoubleTapDragMode:(id)a3;
- (id)pointerColorDescription:(id)a3;
- (id)pointerEffectScalingEnabled:(id)a3;
- (id)pointerInertiaEnabled:(id)a3;
- (id)pointerScrollAccelerationFactor:(id)a3;
- (id)pointerSizeMultiplier:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_showAssistiveTouchSettings:(id)a3;
- (void)setAllowCustomPointerShapes:(id)a3 specifier:(id)a4;
- (void)setAutoHidePointer:(id)a3 specifier:(id)a4;
- (void)setIgnoreTrackpad:(id)a3 specifier:(id)a4;
- (void)setIncreasePointerContrast:(id)a3 specifier:(id)a4;
- (void)setPointerEffectScalingEnabled:(id)a3 specifier:(id)a4;
- (void)setPointerInertiaEnabled:(id)a3 specifier:(id)a4;
- (void)setPointerScrollAccelerationFactor:(id)a3 specifier:(id)a4;
- (void)setPointerSizeMultiplier:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AXPointerControlController

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v70 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = settingsLocString(@"PointerAppearanceTitle", @"Accessibility-hello");
    v6 = [PSSpecifier groupSpecifierWithName:v5];

    v7 = PSIDKey;
    [v6 setProperty:@"PointerAppearanceGroupSpecifier" forKey:PSIDKey];
    v69 = v6;
    [v4 addObject:v6];
    v8 = settingsLocString(@"PointerIncreaseContrast", @"Accessibility-hello");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setIncreasePointerContrast:specifier:" get:"increasePointerContrast:" detail:0 cell:6 edit:0];

    [v9 setProperty:@"PointerIncreaseContrastSpecifier" forKey:v7];
    v68 = v9;
    [v4 addObject:v9];
    v10 = settingsLocString(@"PointerAutoHideTitle", @"Accessibility-hello");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setAutoHidePointer:specifier:" get:"autoHidePointer:" detail:0 cell:6 edit:0];

    [v11 setProperty:@"PointerAutoHideSpecifier" forKey:v7];
    v67 = v11;
    [v4 addObject:v11];
    v12 = settingsLocString(@"PointerColorTitle", @"Accessibility-hello");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:"pointerColorDescription:" detail:objc_opt_class() cell:2 edit:0];

    [v13 setProperty:@"PointerColorSpecifier" forKey:v7];
    v66 = v13;
    [v4 addObject:v13];
    v14 = settingsLocString(@"PointerSizeTitle", @"Accessibility-hello");
    v15 = [PSSpecifier groupSpecifierWithName:v14];

    [v15 setProperty:@"PointerSizeGroupSpecifier" forKey:v7];
    v65 = v15;
    [v4 addObject:v15];
    v16 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setPointerSizeMultiplier:specifier:" get:"pointerSizeMultiplier:" detail:0 cell:5 edit:0];
    [v16 setProperty:@"PointerSizeSpecifier" forKey:v7];
    v63 = PSSliderIsSegmented;
    [v16 setProperty:&__kCFBooleanFalse forKey:?];
    v62 = PSSliderIsContinuous;
    [v16 setProperty:&__kCFBooleanTrue forKey:?];
    LODWORD(v17) = kAXSPointerSetSizeMultiplierMinimum;
    v18 = [NSNumber numberWithFloat:v17];
    v64 = PSControlMinimumKey;
    [v16 setProperty:v18 forKey:?];

    LODWORD(v19) = kAXSPointerSetSizeMultiplierMaximum;
    v20 = [NSNumber numberWithFloat:v19];
    v61 = PSControlMaximumKey;
    [v16 setProperty:v20 forKey:?];

    [v4 addObject:v16];
    v21 = +[AXPointerDeviceManager sharedInstance];
    v22 = [v21 containsTrackpad];

    if (v22)
    {
      v23 = settingsLocString(@"TrackpadTitle", @"Accessibility-hello");
      v24 = [PSSpecifier groupSpecifierWithName:v23];

      v25 = settingsLocString(@"PointerInertiaDescription", @"Accessibility-hello");
      [v24 setProperty:v25 forKey:PSFooterTextGroupKey];

      [v4 addObject:v24];
      v26 = settingsLocString(@"IgnoreTrackpad", @"Accessibility-hello");
      v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:"setIgnoreTrackpad:specifier:" get:"ignoreTrackpad:" detail:0 cell:6 edit:0];

      [v27 setProperty:@"IgnoreTrackpad" forKey:v7];
      [v4 addObject:v27];
      v28 = +[AXPointerDeviceManager sharedInstance];
      LODWORD(v26) = [v28 containsDragLockCompatibleDevice];

      if (v26)
      {
        v29 = settingsLocString(@"PointerDragging", @"Accessibility-hello");
        v30 = [PSSpecifier preferenceSpecifierNamed:v29 target:self set:0 get:"localizedCurrentDoubleTapDragMode:" detail:objc_opt_class() cell:2 edit:0];

        [v4 addObject:v30];
      }

      v31 = settingsLocString(@"PointerInertia", @"Accessibility-hello");
      v32 = [PSSpecifier preferenceSpecifierNamed:v31 target:self set:"setPointerInertiaEnabled:specifier:" get:"pointerInertiaEnabled:" detail:0 cell:6 edit:0];

      [v32 setProperty:@"PointerInertia" forKey:v7];
      [v4 addObject:v32];
    }

    if (AXDeviceIsPad())
    {
      v33 = +[PSSpecifier emptyGroupSpecifier];
      v34 = settingsLocString(@"PointerCustomShapesGroup", @"Accessibility-hello");
      [v33 setProperty:v34 forKey:PSFooterTextGroupKey];

      [v4 addObject:v33];
      v35 = settingsLocString(@"PointerCustomShapes", @"Accessibility-hello");
      v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:self set:"setAllowCustomPointerShapes:specifier:" get:"allowCustomPointerShapes:" detail:0 cell:6 edit:0];

      [v36 setProperty:@"PointerCustomShapes" forKey:v7];
      [v4 addObject:v36];
    }

    v37 = settingsLocString(@"DeviceScrollSpeed", @"Accessibility-hello");
    v38 = [PSSpecifier groupSpecifierWithName:v37];

    v60 = v38;
    [v4 addObject:v38];
    v39 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setPointerScrollAccelerationFactor:specifier:" get:"pointerScrollAccelerationFactor:" detail:0 cell:5 edit:0];
    [v39 setProperty:&__kCFBooleanFalse forKey:v63];
    [v39 setProperty:&__kCFBooleanTrue forKey:v62];
    [v39 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v39 setProperty:&off_27D220 forKey:v64];
    [v39 setProperty:&off_27D230 forKey:v61];
    [v39 setProperty:&off_27D240 forKey:PSDefaultValueKey];
    v40 = AXTortoiseImage();
    [v39 setProperty:v40 forKey:PSSliderLeftImageKey];

    v41 = AXHareImage();
    [v39 setProperty:v41 forKey:PSSliderRightImageKey];

    [v39 setProperty:@"DeviceScrollSpeed" forKey:v7];
    [v4 addObject:v39];
    v42 = +[AXMouseEventListener sharedInstance];
    v43 = [v42 discoveredMouseDevices];
    v44 = [v43 count];

    if (v44)
    {
      v45 = +[PSSpecifier emptyGroupSpecifier];
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      [v45 setProperty:v47 forKey:PSFooterCellClassGroupKey];

      v48 = settingsLocString(@"PointerButtonCustomizationFooter", @"Accessibility-hello");
      v49 = settingsLocString(@"PointerButtonCustomizationAssistiveTouchLink", @"Accessibility-hello");
      v50 = [NSString localizedStringWithFormat:v48, v49];

      v51 = settingsLocString(@"PointerButtonCustomizationAssistiveTouchLink", @"Accessibility-hello");
      v52 = [v50 rangeOfString:v51];
      v54 = v53;

      [v45 setProperty:v50 forKey:PSFooterHyperlinkViewTitleKey];
      v72.location = v52;
      v72.length = v54;
      v55 = NSStringFromRange(v72);
      [v45 setProperty:v55 forKey:PSFooterHyperlinkViewLinkRangeKey];

      v56 = [NSValue valueWithNonretainedObject:self];
      [v45 setProperty:v56 forKey:PSFooterHyperlinkViewTargetKey];

      v57 = NSStringFromSelector("_showAssistiveTouchSettings:");
      [v45 setProperty:v57 forKey:PSFooterHyperlinkViewActionKey];

      [v4 addObject:v45];
    }

    v58 = *&self->AXUISettingsBaseListController_opaque[v70];
    *&self->AXUISettingsBaseListController_opaque[v70] = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v70];
  }

  return v3;
}

- (id)ignoreTrackpad:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 ignoreTrackpad]);

  return v4;
}

- (void)setIgnoreTrackpad:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setIgnoreTrackpad:v4];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v12.receiver = self;
  v12.super_class = AXPointerControlController;
  v6 = a4;
  v7 = [(AXPointerControlController *)&v12 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(AXPointerControlController *)self specifierAtIndexPath:v6, v12.receiver, v12.super_class];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 control];
    scrollSpeedSlider = self->_scrollSpeedSlider;
    self->_scrollSpeedSlider = v9;
  }

  return v7;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = AXPointerControlController;
  [(AXPointerControlController *)&v8 viewDidLoad];
  v3 = settingsLocString(@"PointerControlTitle", @"Accessibility-hello");
  [(AXPointerControlController *)self setTitle:v3];

  v4 = +[AXPointerDeviceManager sharedInstance];
  [v4 addObserver:self];

  v5 = [(AXPointerControlController *)self table];
  v6 = objc_opt_class();
  v7 = +[AXUIScrollSpeedSlider cellReuseIdentifier];
  [v5 registerClass:v6 forCellReuseIdentifier:v7];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXPointerControlController;
  [(AXPointerControlController *)&v4 viewWillAppear:a3];
  [(AXPointerControlController *)self reloadSpecifiers];
}

- (void)_showAssistiveTouchSettings:(id)a3
{
  v4 = objc_opt_new();
  [(AXPointerControlController *)self showController:v4 animate:1];
}

- (id)globalDevicePreferences
{
  v2 = +[BKSMousePointerService sharedInstance];
  v3 = [v2 globalDevicePreferences];

  if (!v3)
  {
    v3 = [BKSMousePointerDevicePreferences defaultPreferencesForHardwareType:9];
  }

  return v3;
}

- (id)pointerSizeMultiplier:(id)a3
{
  _AXSPointerSizeMultiplier();

  return [NSNumber numberWithFloat:?];
}

- (void)setPointerSizeMultiplier:(id)a3 specifier:(id)a4
{
  v4 = [a3 floatValue];

  __AXSPointerSetSizeMultiplier(v4);
}

- (id)allowCustomPointerShapes:(id)a3
{
  v3 = _AXSPointerAllowAppCustomizationEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setAllowCustomPointerShapes:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  __AXSPointerAllowAppCustomizationSetEnabled(v4);
}

- (id)pointerInertiaEnabled:(id)a3
{
  v3 = _AXSPointerInertiaEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setPointerInertiaEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  __AXSPointerInertiaSetEnabled(v4);
}

- (id)pointerEffectScalingEnabled:(id)a3
{
  v3 = _AXSPointerEffectScalingEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setPointerEffectScalingEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  __AXSPointerEffectScalingSetEnabled(v4);
}

- (id)increasePointerContrast:(id)a3
{
  v3 = _AXSPointerIncreasedContrastEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setIncreasePointerContrast:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  __AXSPointerIncreasedContrastSetEnabled(v4);
}

- (id)autoHidePointer:(id)a3
{
  v3 = _AXSPointerAutoHideEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setAutoHidePointer:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  __AXSPointerAutoHideSetEnabled(v4);
}

- (id)pointerColorDescription:(id)a3
{
  v3 = _AXSPointerStrokeColor();

  return [AXPointerControlColorController localizedNameForColor:v3];
}

- (id)pointerScrollAccelerationFactor:(id)a3
{
  v3 = [(AXPointerControlController *)self globalDevicePreferences];
  [v3 scrollAccelerationFactor];
  v4 = [NSNumber numberWithFloat:?];

  return v4;
}

- (void)setPointerScrollAccelerationFactor:(id)a3 specifier:(id)a4
{
  [a3 floatValue];
  v6 = v5;
  if (fabs(v5 + -0.3125) < 0.03 && ([(UISlider *)self->_scrollSpeedSlider isTracking]& 1) == 0)
  {
    v6 = 0.3125;
    LODWORD(v7) = 0.3125;
    [(UISlider *)self->_scrollSpeedSlider setValue:1 animated:v7];
  }

  v10 = [(AXPointerControlController *)self globalDevicePreferences];
  *&v8 = v6;
  [v10 setScrollAccelerationFactor:v8];
  v9 = +[BKSMousePointerService sharedInstance];
  [v9 setGlobalDevicePreferences:v10];
}

- (id)localizedCurrentDoubleTapDragMode:(id)a3
{
  v3 = [(AXPointerControlController *)self globalDevicePreferences];
  v4 = +[AXPointerControlDraggingController localizedNameForDoubleTapDragMode:](AXPointerControlDraggingController, "localizedNameForDoubleTapDragMode:", [v3 doubleTapDragMode]);

  return v4;
}

@end