@interface AccessibilityPencilSettingsController
- (AccessibilityPencilSettingsController)init;
- (id)extendedSqueezeRange:(id)a3;
- (id)specifiers;
- (void)_setDoubleTapDurationSpecifiersVisible:(BOOL)a3;
- (void)dealloc;
- (void)setExtendedSqueezeRange:(id)a3 specifier:(id)a4;
- (void)setSpecifier:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)willBecomeActive;
@end

@implementation AccessibilityPencilSettingsController

- (void)setSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = AccessibilityPencilSettingsController;
  [(AccessibilityPencilSettingsController *)&v9 setSpecifier:?];
  if (a3)
  {
    v5 = [(AccessibilityPencilSettingsController *)self specifier];
    v6 = [v5 propertyForKey:@"ProductID"];
    [(AccessibilityPencilSettingsController *)self setProductID:v6];

    v7 = AXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(AccessibilityPencilSettingsController *)self productID];
      *buf = 138412290;
      v11 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Setting pencil product ID: %@", buf, 0xCu);
    }
  }
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = AccessibilityPencilSettingsController;
  [(AccessibilityPencilSettingsController *)&v3 willBecomeActive];
  [(AccessibilityPencilSettingsController *)self reloadSpecifiers];
}

- (AccessibilityPencilSettingsController)init
{
  v6.receiver = self;
  v6.super_class = AccessibilityPencilSettingsController;
  v2 = [(AccessibilityPencilSettingsController *)&v6 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _pencilSettingsChanged, kAXSPencilExtendedSqueezeRangeEnabledChangedNotification, 0, 1028);
    v4 = v2;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = AccessibilityPencilSettingsController;
  [(AccessibilityPencilSettingsController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = AXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(AccessibilityPencilSettingsController *)self productID];
      *buf = 138412290;
      v35 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Product ID for specs: %@", buf, 0xCu);
    }

    v8 = [(AccessibilityPencilSettingsController *)self productID];
    v9 = [v8 isEqual:&off_27A698];

    if (v9)
    {
      v10 = settingsLocString(@"PENCIL_SQUEEZE_THRESHOLD_TITLE", @"Accessibility-B532");
      v11 = [PSSpecifier groupSpecifierWithName:v10];

      v12 = settingsLocString(@"PENCIL_SQUEEZE_THRESHOLD_FOOTNOTE", @"Accessibility-B532");
      [v11 setProperty:v12 forKey:PSFooterTextGroupKey];

      [v5 addObject:v11];
      v13 = settingsLocString(@"EnableExtendedSqueezeRange", @"Accessibility-B532");
      v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"setExtendedSqueezeRange:specifier:" get:"extendedSqueezeRange:" detail:0 cell:6 edit:0];

      [v5 addObject:v14];
      v15 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:5 edit:0];
      [v15 setProperty:NSClassFromString(@"PNPSqueezeThresholdSliderCell") forKey:PSCellClassKey];
      v16 = [NSNumber numberWithUnsignedChar:_AXSPencilExtendedSqueezeRangeEnabled()];
      [v15 setProperty:v16 forKey:@"extendedRange"];

      [v5 addObject:v15];
    }

    v17 = settingsLocString(@"TapDuration", @"Accessibility");
    v18 = [PSSpecifier groupSpecifierWithName:v17];

    [v18 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v19 = PSIDKey;
    [v18 setProperty:@"TapGroup" forKey:PSIDKey];
    v20 = settingsLocString(@"TapDuration_Default", @"Accessibility");
    v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v21 setProperty:@"TapDefault" forKey:v19];
    v22 = settingsLocString(@"TapDuration_Slow", @"Accessibility");
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v23 setProperty:@"TapSlow" forKey:v19];
    v24 = settingsLocString(@"TapDuration_Slowest", @"Accessibility");
    v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v25 setProperty:@"TapSlowest" forKey:v19];
    _AXSOpaqueTouchTapSpeed();
    v27 = v21;
    if (fabs(v26 + -0.5) <= 0.0500000007 || (_AXSOpaqueTouchTapSpeed(), v27 = v23, fabs(v28 + -0.7) <= 0.0500000007) || (_AXSOpaqueTouchTapSpeed(), v27 = v25, fabs(v29 + -0.9) <= 0.0500000007))
    {
      [v18 setProperty:v27 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    v30 = [NSArray arrayWithObjects:v18, v21, v23, v25, 0];
    doubleTapDurationSpecifiers = self->_doubleTapDurationSpecifiers;
    self->_doubleTapDurationSpecifiers = v30;

    if (_AXSAllowOpaqueTouchGestures())
    {
      [v5 addObjectsFromArray:self->_doubleTapDurationSpecifiers];
    }

    v32 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)setExtendedSqueezeRange:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  __AXSSetPencilExtendedSqueezeRangeEnabled(v4);
}

- (id)extendedSqueezeRange:(id)a3
{
  v3 = _AXSPencilExtendedSqueezeRangeEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)_setDoubleTapDurationSpecifiersVisible:(BOOL)a3
{
  v3 = a3;
  v5 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v6 = [(NSArray *)self->_doubleTapDurationSpecifiers firstObject];
  LODWORD(v5) = [v5 containsObject:v6];

  if (v5 != v3)
  {
    doubleTapDurationSpecifiers = self->_doubleTapDurationSpecifiers;
    if (v3)
    {

      [(AccessibilityPencilSettingsController *)self insertContiguousSpecifiers:doubleTapDurationSpecifiers atIndex:0 animated:1];
    }

    else
    {

      [(AccessibilityPencilSettingsController *)self removeContiguousSpecifiers:doubleTapDurationSpecifiers animated:1];
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15.receiver = self;
  v15.super_class = AccessibilityPencilSettingsController;
  v6 = a4;
  [(AccessibilityPencilSettingsController *)&v15 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [v6 section];

  v8 = [(AccessibilityPencilSettingsController *)self specifierAtIndex:[(AccessibilityPencilSettingsController *)self indexOfGroup:v7]];
  v9 = PSIDKey;
  v10 = [v8 propertyForKey:PSIDKey];
  LODWORD(v6) = [v10 isEqualToString:@"TapGroup"];

  if (v6)
  {
    v11 = [v8 propertyForKey:PSRadioGroupCheckedSpecifierKey];
    v12 = [v11 propertyForKey:v9];

    _AXSOpaqueTouchTapSpeed();
    v13 = [v12 isEqualToString:@"TapDefault"];
    LODWORD(v14) = 0.5;
    if ((v13 & 1) == 0 && ([v12 isEqualToString:{@"TapSlow", v14}] & 1) == 0)
    {
      [v12 isEqualToString:@"TapSlowest"];
    }

    _AXSSetOpaqueTouchTapSpeed();
  }
}

@end