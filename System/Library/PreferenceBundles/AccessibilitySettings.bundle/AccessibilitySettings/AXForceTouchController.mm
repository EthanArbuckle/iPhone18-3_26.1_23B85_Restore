@interface AXForceTouchController
- (AXForceTouchController)init;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_previewForConfigurationWithIdentifier:(id)identifier inTableView:(id)view;
- (id)_specsForLongPressTiming;
- (id)_specsForMainSwitch;
- (id)_specsForSensitivity;
- (id)_specsForTester:(BOOL)tester;
- (id)forceTouchEnabled:(id)enabled;
- (id)forceTouchSensitivity:(id)sensitivity;
- (id)forceTouchTiming:(id)timing;
- (id)specifiers;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (id)tableView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration;
- (void)dealloc;
- (void)setForceTouchEnabled:(id)enabled specifier:(id)specifier;
- (void)setForceTouchSensitivity:(id)sensitivity specifier:(id)specifier;
- (void)setForceTouchSettingsEnabled:(BOOL)enabled;
- (void)setForceTouchTiming:(id)timing specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
@end

@implementation AXForceTouchController

- (AXForceTouchController)init
{
  v5.receiver = self;
  v5.super_class = AXForceTouchController;
  v2 = [(AXForceTouchController *)&v5 init];
  if (v2)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v2, _forceTouchEnabledSettingsChanged, kAXSForceTouchEnabledPreferenceNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(AXForceTouchController *)self setForceTouchSettingItems:0];
  v4.receiver = self;
  v4.super_class = AXForceTouchController;
  [(AXForceTouchController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    self->_forceTouchSettingsEnabled = _AXSForceTouchEnabled() != 0;
    if ([(AXForceTouchController *)self _deviceHasForcePress3dTouch])
    {
      _specsForMainSwitch = [(AXForceTouchController *)self _specsForMainSwitch];
      [v5 addObjectsFromArray:_specsForMainSwitch];
    }

    v7 = +[NSMutableArray array];
    if ([(AXForceTouchController *)self _deviceHasForcePress3dTouch])
    {
      _specsForSensitivity = [(AXForceTouchController *)self _specsForSensitivity];
      [v7 addObjectsFromArray:_specsForSensitivity];
      if (self->_forceTouchSettingsEnabled)
      {
        [v5 addObjectsFromArray:_specsForSensitivity];
      }
    }

    _specsForLongPressTiming = [(AXForceTouchController *)self _specsForLongPressTiming];
    [v5 addObjectsFromArray:_specsForLongPressTiming];

    v10 = [(AXForceTouchController *)self _specsForTester:[(AXForceTouchController *)self _deviceHasForcePress3dTouch]];
    [v5 addObjectsFromArray:v10];

    [(AXForceTouchController *)self setForceTouchSettingItems:v7];
    v11 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)_specsForMainSwitch
{
  v3 = +[NSMutableArray array];
  v4 = settingsLocString(@"FORCE_TOUCH", @"Accessibility");
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  v6 = settingsLocString(@"FORCE_TOUCH_FOOTER_TEXT", @"Accessibility");
  [v5 setProperty:v6 forKey:PSFooterTextGroupKey];
  [v3 addObject:v5];
  v7 = settingsLocString(@"FORCE_TOUCH", @"Accessibility");
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setForceTouchEnabled:specifier:" get:"forceTouchEnabled:" detail:0 cell:6 edit:0];

  [v8 setProperty:@"ForceTouchAccessibilityMainSwitch" forKey:PSIDKey];
  [v3 addObject:v8];

  return v3;
}

- (id)_specsForLongPressTiming
{
  v2 = +[NSMutableArray array];
  v3 = settingsLocString(@"HAPTIC_TOUCH_TIME", @"Accessibility");
  v4 = [PSSpecifier groupSpecifierWithName:v3];

  [v4 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v5 = PSIDKey;
  [v4 setProperty:@"timingGroup" forKey:PSIDKey];
  v16 = settingsLocString(@"HAPTIC_TOUCH_TIMING_FOOTER_TEXT", @"Accessibility");
  [v4 setProperty:? forKey:?];
  [v2 addObject:v4];
  v6 = settingsLocString(@"HAPTIC_TOUCH_TIMING_SLOW", @"Accessibility");
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v7 setProperty:&off_279DC8 forKey:@"hapticTouchValue"];
  [v7 setProperty:@"HapticTouchSlowIdentifier" forKey:v5];
  v8 = settingsLocString(@"HAPTIC_TOUCH_TIMING_DEFAULT", @"Accessibility");
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v9 setProperty:&off_279DE0 forKey:@"hapticTouchValue"];
  [v9 setProperty:@"HapticTouchFastIdentifier" forKey:v5];
  v10 = settingsLocString(@"HAPTIC_TOUCH_TIMING_FAST", @"Accessibility");
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v11 setProperty:&off_279DF8 forKey:@"hapticTouchValue"];
  [v11 setProperty:@"HapticTouchFastIdentifier" forKey:v5];
  v12 = _AXSForceTouchTimeDuration();
  v13 = v7;
  if (v12)
  {
    if (_AXSForceTouchTimeDuration() == 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v9;
    }
  }

  v14 = v13;
  [v4 setProperty:v14 forKey:PSRadioGroupCheckedSpecifierKey];
  [v2 addObject:v11];
  [v2 addObject:v9];
  [v2 addObject:v7];

  return v2;
}

- (id)_specsForSensitivity
{
  v3 = +[NSMutableArray array];
  v4 = settingsLocString(@"FORCE_TOUCH_SENSITIVITY", @"Accessibility");
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  [v5 setIdentifier:@"FourceTouchSensitivityGroupIdentifier"];
  [v3 addObject:v5];
  v6 = settingsLocString(@"FORCE_TOUCH_SENSITIVITY_FOOTER_TEXT", @"Accessibility");
  [v5 setProperty:v6 forKey:PSFooterTextGroupKey];
  v7 = settingsLocString(@"SENSITIVITY_LIGHT", @"Accessibility");
  v15 = v7;
  v8 = settingsLocString(@"SENSITIVITY_MEDIUM", @"Accessibility");
  v16 = v8;
  v9 = settingsLocString(@"SENSITIVITY_FIRM", @"Accessibility");
  v17 = v9;
  v10 = [NSArray arrayWithObjects:&v15 count:3];
  LODWORD(v11) = 1061997773;
  LODWORD(v12) = 1067030938;
  v13 = [AXSensitivitySliderCell specifierWithSensitivityNames:v10 minimumValue:self maximumValue:"setForceTouchSensitivity:specifier:" target:"forceTouchSensitivity:" set:v11 get:v12, v15, v16];
  [v3 addObject:v13];

  return v3;
}

- (id)_specsForTester:(BOOL)tester
{
  testerCopy = tester;
  v5 = +[NSMutableArray array];
  if (testerCopy)
  {
    v6 = @"FORCE_TOUCH_SENSITIVITY_TEST";
  }

  else
  {
    v6 = @"HAPTIC_TOUCH_TIMING_TEST";
  }

  if (testerCopy)
  {
    v7 = @"FORCE_TOUCH_SENSITIVITY_TEST_FOOTER_TEXT";
  }

  else
  {
    v7 = @"HAPTIC_TOUCH_TIMING_TEST_FOOTER_TEXT";
  }

  v8 = settingsLocString(v6, @"Accessibility");
  v9 = [PSSpecifier groupSpecifierWithName:v8];

  [v9 setIdentifier:@"FourceTouchSensitivityTestGroupIdentifier"];
  [v5 addObject:v9];
  v10 = settingsLocString(v7, @"Accessibility");
  [v9 setProperty:v10 forKey:PSFooterTextGroupKey];
  v11 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v11 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v11 setProperty:@"AXForceTouchSensitivityTestCell" forKey:PSIDKey];
  [v5 addObject:v11];

  return v5;
}

- (id)forceTouchEnabled:(id)enabled
{
  v3 = _AXSForceTouchEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setForceTouchEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  [(AXForceTouchController *)self setShouldIgnoreNextEnabledChangedNotification:1];
  [enabledCopy BOOLValue];
  _AXSSetForceTouchEnabled();
  bOOLValue = [enabledCopy BOOLValue];

  [(AXForceTouchController *)self setForceTouchSettingsEnabled:bOOLValue];
}

- (void)setForceTouchTiming:(id)timing specifier:(id)specifier
{
  [timing floatValue];

  _AXSSetForceTouchTimeDuration();
}

- (id)forceTouchTiming:(id)timing
{
  v3 = _AXSForceTouchTimeDuration();

  return [NSNumber numberWithUnsignedInt:v3];
}

- (void)setForceTouchSensitivity:(id)sensitivity specifier:(id)specifier
{
  floatValue = [sensitivity floatValue];

  __AXSSetForceTouchSensitivity(floatValue);
}

- (id)forceTouchSensitivity:(id)sensitivity
{
  _AXSForceTouchSensitivity();

  return [NSNumber numberWithFloat:?];
}

- (void)setForceTouchSettingsEnabled:(BOOL)enabled
{
  if (self->_forceTouchSettingsEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_forceTouchSettingsEnabled = enabled;
    forceTouchSettingItems = [(AXForceTouchController *)self forceTouchSettingItems];
    v7 = forceTouchSettingItems;
    if (enabledCopy)
    {
      [(AXForceTouchController *)self insertContiguousSpecifiers:forceTouchSettingItems afterSpecifierID:@"ForceTouchAccessibilityMainSwitch" animated:1];
    }

    else
    {
      [(AXForceTouchController *)self removeContiguousSpecifiers:forceTouchSettingItems animated:1];
    }
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(AXForceTouchController *)self specifierAtIndex:[(AXForceTouchController *)self indexForIndexPath:pathCopy]];
  v9 = [v8 propertyForKey:PSCellClassKey];
  v10 = objc_opt_class();

  if (v9 == v10)
  {
    v12 = 175.0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = AXForceTouchController;
    [(AXForceTouchController *)&v14 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
    v12 = v11;
  }

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = AXForceTouchController;
  pathCopy = path;
  [(AXForceTouchController *)&v13 tableView:view didSelectRowAtIndexPath:pathCopy];
  section = [pathCopy section];

  v8 = [(AXForceTouchController *)self specifierAtIndex:[(AXForceTouchController *)self indexOfGroup:section]];
  v9 = [v8 propertyForKey:PSIDKey];
  v10 = [v9 isEqualToString:@"timingGroup"];

  if (v10)
  {
    v11 = [v8 propertyForKey:PSRadioGroupCheckedSpecifierKey];
    v12 = [v11 propertyForKey:@"hapticTouchValue"];
    [v12 intValue];

    _AXSSetForceTouchTimeDuration();
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(AXForceTouchController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:PSIDKey];
  v10 = [v9 isEqualToString:@"AXForceTouchSensitivityTestCell"];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = AXForceTouchController;
    v11 = [(AXForceTouchController *)&v13 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
  }

  return v11;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  pathCopy = path;
  table = [(AXForceTouchController *)self table];
  v12 = [table cellForRowAtIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    flowersView = [v12 flowersView];
    [viewCopy convertPoint:flowersView toView:{x, y}];
    v15 = v14;
    v17 = v16;
    [flowersView bounds];
    v21.x = v15;
    v21.y = v17;
    if (CGRectContainsPoint(v22, v21))
    {
      v18 = [UIContextMenuConfiguration configurationWithIdentifier:@"_TestContextMenuConfigurationIdentifier" previewProvider:&__block_literal_global_20 actionProvider:0];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

AXForceTouchSensitivityTestViewController *__cdecl __84__AXForceTouchController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke(id a1)
{
  v1 = objc_alloc_init(AXForceTouchSensitivityTestViewController);

  return v1;
}

- (id)tableView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  identifier = [configuration identifier];
  v8 = [(AXForceTouchController *)self _previewForConfigurationWithIdentifier:identifier inTableView:viewCopy];

  return v8;
}

- (id)tableView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  identifier = [configuration identifier];
  v8 = [(AXForceTouchController *)self _previewForConfigurationWithIdentifier:identifier inTableView:viewCopy];

  return v8;
}

- (id)_previewForConfigurationWithIdentifier:(id)identifier inTableView:(id)view
{
  viewCopy = view;
  if ([identifier isEqualToString:@"_TestContextMenuConfigurationIdentifier"])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    visibleCells = [viewCopy visibleCells];
    v7 = [visibleCells countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(visibleCells);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = v10;
            goto LABEL_13;
          }
        }

        v7 = [visibleCells countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    window = [v7 window];

    if (window)
    {
      flowersView = [v7 flowersView];
      window = [[UITargetedPreview alloc] initWithView:flowersView];
    }
  }

  else
  {
    window = 0;
  }

  return window;
}

- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  previewViewController = [animatorCopy previewViewController];
  v8 = previewViewController;
  if (previewViewController)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __94__AXForceTouchController_tableView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v9[3] = &unk_255538;
    v9[4] = self;
    v10 = previewViewController;
    [animatorCopy addAnimations:v9];
  }
}

@end