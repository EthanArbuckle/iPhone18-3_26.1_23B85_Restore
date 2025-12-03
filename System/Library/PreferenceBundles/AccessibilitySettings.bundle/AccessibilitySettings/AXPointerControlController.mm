@interface AXPointerControlController
- (id)allowCustomPointerShapes:(id)shapes;
- (id)autoHidePointer:(id)pointer;
- (id)globalDevicePreferences;
- (id)ignoreTrackpad:(id)trackpad;
- (id)increasePointerContrast:(id)contrast;
- (id)localizedCurrentDoubleTapDragMode:(id)mode;
- (id)pointerColorDescription:(id)description;
- (id)pointerEffectScalingEnabled:(id)enabled;
- (id)pointerInertiaEnabled:(id)enabled;
- (id)pointerScrollAccelerationFactor:(id)factor;
- (id)pointerSizeMultiplier:(id)multiplier;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_showAssistiveTouchSettings:(id)settings;
- (void)setAllowCustomPointerShapes:(id)shapes specifier:(id)specifier;
- (void)setAutoHidePointer:(id)pointer specifier:(id)specifier;
- (void)setIgnoreTrackpad:(id)trackpad specifier:(id)specifier;
- (void)setIncreasePointerContrast:(id)contrast specifier:(id)specifier;
- (void)setPointerEffectScalingEnabled:(id)enabled specifier:(id)specifier;
- (void)setPointerInertiaEnabled:(id)enabled specifier:(id)specifier;
- (void)setPointerScrollAccelerationFactor:(id)factor specifier:(id)specifier;
- (void)setPointerSizeMultiplier:(id)multiplier specifier:(id)specifier;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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
    containsTrackpad = [v21 containsTrackpad];

    if (containsTrackpad)
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
    discoveredMouseDevices = [v42 discoveredMouseDevices];
    v44 = [discoveredMouseDevices count];

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

- (id)ignoreTrackpad:(id)trackpad
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 ignoreTrackpad]);

  return v4;
}

- (void)setIgnoreTrackpad:(id)trackpad specifier:(id)specifier
{
  bOOLValue = [trackpad BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setIgnoreTrackpad:bOOLValue];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = AXPointerControlController;
  pathCopy = path;
  v7 = [(AXPointerControlController *)&v12 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(AXPointerControlController *)self specifierAtIndexPath:pathCopy, v12.receiver, v12.super_class];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    control = [v7 control];
    scrollSpeedSlider = self->_scrollSpeedSlider;
    self->_scrollSpeedSlider = control;
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

  table = [(AXPointerControlController *)self table];
  v6 = objc_opt_class();
  v7 = +[AXUIScrollSpeedSlider cellReuseIdentifier];
  [table registerClass:v6 forCellReuseIdentifier:v7];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXPointerControlController;
  [(AXPointerControlController *)&v4 viewWillAppear:appear];
  [(AXPointerControlController *)self reloadSpecifiers];
}

- (void)_showAssistiveTouchSettings:(id)settings
{
  v4 = objc_opt_new();
  [(AXPointerControlController *)self showController:v4 animate:1];
}

- (id)globalDevicePreferences
{
  v2 = +[BKSMousePointerService sharedInstance];
  globalDevicePreferences = [v2 globalDevicePreferences];

  if (!globalDevicePreferences)
  {
    globalDevicePreferences = [BKSMousePointerDevicePreferences defaultPreferencesForHardwareType:9];
  }

  return globalDevicePreferences;
}

- (id)pointerSizeMultiplier:(id)multiplier
{
  _AXSPointerSizeMultiplier();

  return [NSNumber numberWithFloat:?];
}

- (void)setPointerSizeMultiplier:(id)multiplier specifier:(id)specifier
{
  floatValue = [multiplier floatValue];

  __AXSPointerSetSizeMultiplier(floatValue);
}

- (id)allowCustomPointerShapes:(id)shapes
{
  v3 = _AXSPointerAllowAppCustomizationEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setAllowCustomPointerShapes:(id)shapes specifier:(id)specifier
{
  bOOLValue = [shapes BOOLValue];

  __AXSPointerAllowAppCustomizationSetEnabled(bOOLValue);
}

- (id)pointerInertiaEnabled:(id)enabled
{
  v3 = _AXSPointerInertiaEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setPointerInertiaEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];

  __AXSPointerInertiaSetEnabled(bOOLValue);
}

- (id)pointerEffectScalingEnabled:(id)enabled
{
  v3 = _AXSPointerEffectScalingEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setPointerEffectScalingEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];

  __AXSPointerEffectScalingSetEnabled(bOOLValue);
}

- (id)increasePointerContrast:(id)contrast
{
  v3 = _AXSPointerIncreasedContrastEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setIncreasePointerContrast:(id)contrast specifier:(id)specifier
{
  bOOLValue = [contrast BOOLValue];

  __AXSPointerIncreasedContrastSetEnabled(bOOLValue);
}

- (id)autoHidePointer:(id)pointer
{
  v3 = _AXSPointerAutoHideEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setAutoHidePointer:(id)pointer specifier:(id)specifier
{
  bOOLValue = [pointer BOOLValue];

  __AXSPointerAutoHideSetEnabled(bOOLValue);
}

- (id)pointerColorDescription:(id)description
{
  v3 = _AXSPointerStrokeColor();

  return [AXPointerControlColorController localizedNameForColor:v3];
}

- (id)pointerScrollAccelerationFactor:(id)factor
{
  globalDevicePreferences = [(AXPointerControlController *)self globalDevicePreferences];
  [globalDevicePreferences scrollAccelerationFactor];
  v4 = [NSNumber numberWithFloat:?];

  return v4;
}

- (void)setPointerScrollAccelerationFactor:(id)factor specifier:(id)specifier
{
  [factor floatValue];
  v6 = v5;
  if (fabs(v5 + -0.3125) < 0.03 && ([(UISlider *)self->_scrollSpeedSlider isTracking]& 1) == 0)
  {
    v6 = 0.3125;
    LODWORD(v7) = 0.3125;
    [(UISlider *)self->_scrollSpeedSlider setValue:1 animated:v7];
  }

  globalDevicePreferences = [(AXPointerControlController *)self globalDevicePreferences];
  *&v8 = v6;
  [globalDevicePreferences setScrollAccelerationFactor:v8];
  v9 = +[BKSMousePointerService sharedInstance];
  [v9 setGlobalDevicePreferences:globalDevicePreferences];
}

- (id)localizedCurrentDoubleTapDragMode:(id)mode
{
  globalDevicePreferences = [(AXPointerControlController *)self globalDevicePreferences];
  v4 = +[AXPointerControlDraggingController localizedNameForDoubleTapDragMode:](AXPointerControlDraggingController, "localizedNameForDoubleTapDragMode:", [globalDevicePreferences doubleTapDragMode]);

  return v4;
}

@end