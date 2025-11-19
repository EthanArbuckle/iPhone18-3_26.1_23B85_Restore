@interface ASTMotionTrackingSettingsHelper
- (ASTMotionTrackingSettingsHelper)initWithEyeTracker:(id)a3;
- (NSArray)autoHideTimeoutAndSliderContiguousSpecs;
- (PSSpecifier)autoHideOpacityGroupSpecifier;
- (PSSpecifier)autoHideOpacitySliderSpecifier;
- (PSSpecifier)autoHideTimeoutGroupSpecifier;
- (PSSpecifier)autoHideTimeoutStepperSpecifier;
- (double)maximumValueForSpecifier:(id)a3;
- (double)minimumValueForSpecifier:(id)a3;
- (double)stepValueForSpecifier:(id)a3;
- (double)valueForSpecifier:(id)a3;
- (id)assistiveTouchBubbleModeEnabled:(id)a3;
- (id)assistiveTouchEyeTrackingAutoHideEnabled:(id)a3;
- (id)assistiveTouchMotionTrackerShouldOffsetBufferPoints:(id)a3;
- (id)assistiveTouchMotionTrackerSmoothingBufferSize:(id)a3;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)a3;
- (id)unitsStringForSpecifier:(id)a3;
- (void)setAssistiveTouchBubbleModeEnabled:(id)a3 specifier:(id)a4;
- (void)setAssistiveTouchEyeTrackingAutoHideEnabled:(id)a3 specifier:(id)a4;
- (void)setAssistiveTouchMotionTrackerShouldOffsetBufferPoints:(id)a3 specifier:(id)a4;
- (void)setAssistiveTouchMotionTrackerSmoothingBufferSize:(id)a3 specifier:(id)a4;
- (void)specifier:(id)a3 setValue:(double)a4;
@end

@implementation ASTMotionTrackingSettingsHelper

- (ASTMotionTrackingSettingsHelper)initWithEyeTracker:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASTMotionTrackingSettingsHelper;
  v6 = [(ASTMotionTrackingSettingsHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eyeTracker, a3);
  }

  return v7;
}

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchMotionTrackerConfigurable];

  if (v5)
  {
    v31 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    [v31 setIdentifier:@"MTSmoothingBufferSize"];
    [v3 addObject:v31];
    v6 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    [v6 setIdentifier:@"MTSmoothingMaxDelta"];
    [v3 addObject:v6];
    v7 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    [v7 setIdentifier:@"MTXNormalizationOrder"];
    [v3 addObject:v7];
    v8 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    [v8 setIdentifier:@"MTYNormalizationOrder"];
    [v3 addObject:v8];
    v9 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    [v9 setIdentifier:@"MTXNormalizationOffset"];
    [v3 addObject:v9];
    v10 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    [v10 setIdentifier:@"MTYNormalizationOffset"];
    [v3 addObject:v10];
    v11 = [PSSpecifier preferenceSpecifierNamed:@"Offset Buffer Points" target:self set:"setAssistiveTouchMotionTrackerShouldOffsetBufferPoints:specifier:" get:"assistiveTouchMotionTrackerShouldOffsetBufferPoints:" detail:0 cell:6 edit:0];
    [v3 addObject:v11];

    v12 = PSFooterTextGroupKey;
  }

  else
  {
    v13 = settingsLocString(@"MOUSE_POINTER_HID_DEVICE_SMOOTHING", @"HandSettings");
    v14 = [PSSpecifier groupSpecifierWithName:v13];

    v15 = settingsLocString(@"MOUSE_POINTER_HID_DEVICE_SMOOTHING_FOOTER", @"HandSettings");
    v12 = PSFooterTextGroupKey;
    [v14 setProperty:v15 forKey:PSFooterTextGroupKey];

    [v3 addObject:v14];
    v16 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v16 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v17 = [(ASTMotionTrackingSettingsHelper *)self eyeTracker];
    [v16 setProperty:v17 forKey:@"ASTEyeTrackerKey"];

    [v3 addObject:v16];
  }

  v18 = +[PSSpecifier emptyGroupSpecifier];
  v19 = settingsLocString(@"MOUSE_POINTER_HID_DEVICE_BUBBLE_MODE_FOOTER", @"HandSettings");
  [v18 setProperty:v19 forKey:v12];

  [v3 addObject:v18];
  v20 = settingsLocString(@"MOUSE_POINTER_HID_DEVICE_BUBBLE_MODE", @"HandSettings");
  v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:"setAssistiveTouchBubbleModeEnabled:specifier:" get:"assistiveTouchBubbleModeEnabled:" detail:0 cell:6 edit:0];

  [v3 addObject:v21];
  v22 = +[PSSpecifier emptyGroupSpecifier];
  [v3 addObject:v22];
  v23 = settingsLocString(@"MOUSE_POINTER_HID_DEVICE_AUTO_HIDE", @"HandSettings");
  v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:"setAssistiveTouchEyeTrackingAutoHideEnabled:specifier:" get:"assistiveTouchEyeTrackingAutoHideEnabled:" detail:0 cell:6 edit:0];

  [v24 setIdentifier:@"AutoHideSwitchSpecifierKey"];
  [v3 addObject:v24];
  v25 = +[AXSettings sharedInstance];
  LODWORD(v23) = [v25 assistiveTouchEyeTrackingAutoHideEnabled];

  if (v23)
  {
    v26 = [(ASTMotionTrackingSettingsHelper *)self autoHideTimeoutGroupSpecifier];
    [v3 addObject:v26];

    v27 = [(ASTMotionTrackingSettingsHelper *)self autoHideTimeoutStepperSpecifier];
    [v3 addObject:v27];

    v28 = [(ASTMotionTrackingSettingsHelper *)self autoHideOpacityGroupSpecifier];
    [v3 addObject:v28];

    v29 = [(ASTMotionTrackingSettingsHelper *)self autoHideOpacitySliderSpecifier];
    [v3 addObject:v29];
  }

  return v3;
}

- (PSSpecifier)autoHideTimeoutGroupSpecifier
{
  autoHideTimeoutGroupSpecifier = self->_autoHideTimeoutGroupSpecifier;
  if (!autoHideTimeoutGroupSpecifier)
  {
    v4 = +[PSSpecifier emptyGroupSpecifier];
    v5 = self->_autoHideTimeoutGroupSpecifier;
    self->_autoHideTimeoutGroupSpecifier = v4;

    v6 = self->_autoHideTimeoutGroupSpecifier;
    v7 = settingsLocString(@"MOUSE_POINTER_HID_DEVICE_AUTO_HIDE_TIMEOUT_FOOTER", @"HandSettings");
    [(PSSpecifier *)v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    autoHideTimeoutGroupSpecifier = self->_autoHideTimeoutGroupSpecifier;
  }

  return autoHideTimeoutGroupSpecifier;
}

- (PSSpecifier)autoHideTimeoutStepperSpecifier
{
  autoHideTimeoutStepperSpecifier = self->_autoHideTimeoutStepperSpecifier;
  if (!autoHideTimeoutStepperSpecifier)
  {
    v4 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    v5 = self->_autoHideTimeoutStepperSpecifier;
    self->_autoHideTimeoutStepperSpecifier = v4;

    [(PSSpecifier *)self->_autoHideTimeoutStepperSpecifier setIdentifier:@"EyeTrackingAutoHideTimeout"];
    autoHideTimeoutStepperSpecifier = self->_autoHideTimeoutStepperSpecifier;
  }

  return autoHideTimeoutStepperSpecifier;
}

- (PSSpecifier)autoHideOpacityGroupSpecifier
{
  autoHideOpacityGroupSpecifier = self->_autoHideOpacityGroupSpecifier;
  if (!autoHideOpacityGroupSpecifier)
  {
    v4 = +[PSSpecifier emptyGroupSpecifier];
    v5 = self->_autoHideOpacityGroupSpecifier;
    self->_autoHideOpacityGroupSpecifier = v4;

    v6 = self->_autoHideOpacityGroupSpecifier;
    v7 = settingsLocString(@"MOUSE_POINTER_HID_DEVICE_AUTO_HIDE_OPACITY_FOOTER", @"HandSettings");
    [(PSSpecifier *)v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    autoHideOpacityGroupSpecifier = self->_autoHideOpacityGroupSpecifier;
  }

  return autoHideOpacityGroupSpecifier;
}

- (PSSpecifier)autoHideOpacitySliderSpecifier
{
  autoHideOpacitySliderSpecifier = self->_autoHideOpacitySliderSpecifier;
  if (!autoHideOpacitySliderSpecifier)
  {
    v4 = [PSSpecifier preferenceSpecifierNamed:&stru_25D420 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    v5 = self->_autoHideOpacitySliderSpecifier;
    self->_autoHideOpacitySliderSpecifier = v4;

    [(PSSpecifier *)self->_autoHideOpacitySliderSpecifier setProperty:objc_opt_class() forKey:PSCellClassKey];
    autoHideOpacitySliderSpecifier = self->_autoHideOpacitySliderSpecifier;
  }

  return autoHideOpacitySliderSpecifier;
}

- (NSArray)autoHideTimeoutAndSliderContiguousSpecs
{
  v3 = [(ASTMotionTrackingSettingsHelper *)self autoHideTimeoutGroupSpecifier];
  v9[0] = v3;
  v4 = [(ASTMotionTrackingSettingsHelper *)self autoHideTimeoutStepperSpecifier];
  v9[1] = v4;
  v5 = [(ASTMotionTrackingSettingsHelper *)self autoHideOpacityGroupSpecifier];
  v9[2] = v5;
  v6 = [(ASTMotionTrackingSettingsHelper *)self autoHideOpacitySliderSpecifier];
  v9[3] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

- (id)assistiveTouchMotionTrackerSmoothingBufferSize:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 assistiveTouchMotionTrackerSmoothingBufferSize]);

  return v4;
}

- (void)setAssistiveTouchMotionTrackerSmoothingBufferSize:(id)a3 specifier:(id)a4
{
  v4 = [a3 unsignedIntegerValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMotionTrackerSmoothingBufferSize:v4];
}

- (id)assistiveTouchMotionTrackerShouldOffsetBufferPoints:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMotionTrackerShouldOffsetBufferPoints]);

  return v4;
}

- (void)setAssistiveTouchMotionTrackerShouldOffsetBufferPoints:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMotionTrackerShouldOffsetBufferPoints:v4];
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

- (id)assistiveTouchEyeTrackingAutoHideEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchEyeTrackingAutoHideEnabled]);

  return v4;
}

- (void)setAssistiveTouchEyeTrackingAutoHideEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchEyeTrackingAutoHideEnabled:v4];
}

- (double)maximumValueForSpecifier:(id)a3
{
  v3 = [a3 identifier];
  if ([v3 isEqualToString:@"EyeTrackingAutoHideTimeout"])
  {
    v4 = kAXSAssistiveTouchEyeTrackingAutoHideTimeoutMax;
  }

  else
  {
    v4 = *"";
  }

  return v4;
}

- (double)minimumValueForSpecifier:(id)a3
{
  v3 = [a3 identifier];
  if ([v3 isEqualToString:@"EyeTrackingAutoHideTimeout"])
  {
    v4 = kAXSAssistiveTouchEyeTrackingAutoHideTimeoutMin;
  }

  else
  {
    v4 = -10000.0;
  }

  return v4;
}

- (double)stepValueForSpecifier:(id)a3
{
  v3 = [a3 identifier];
  v4 = 1.0;
  if (([v3 isEqualToString:@"MTSmoothingBufferSize"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"MTSmoothingMaxDelta"])
    {
LABEL_3:
      v4 = 5.0;
      goto LABEL_6;
    }

    v4 = 0.25;
    if (([v3 isEqualToString:@"MTXNormalizationOrder"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"MTYNormalizationOrder") & 1) == 0)
    {
      if ([v3 isEqualToString:@"MTXNormalizationOffset"])
      {
        goto LABEL_3;
      }

      v4 = 5.0;
      if (([v3 isEqualToString:@"MTYNormalizationOffset"] & 1) == 0)
      {
        if ([v3 isEqualToString:@"EyeTrackingAutoHideTimeout"])
        {
          v4 = kAXSAssistiveTouchEyeTrackingAutoHideTimeoutStepInterval;
        }

        else
        {
          v4 = 1.0;
        }
      }
    }
  }

LABEL_6:

  return v4;
}

- (id)stringValueForSpecifier:(id)a3
{
  [(ASTMotionTrackingSettingsHelper *)self valueForSpecifier:a3];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

- (id)unitsStringForSpecifier:(id)a3
{
  v3 = [a3 identifier];
  if ([v3 isEqualToString:@"MTSmoothingBufferSize"])
  {
    v4 = @"Smoothing Buffer Size";
  }

  else if ([v3 isEqualToString:@"MTSmoothingMaxDelta"])
  {
    v4 = @"Smoothing Max Delta";
  }

  else if ([v3 isEqualToString:@"MTXNormalizationOrder"])
  {
    v4 = @"X Normalization Order";
  }

  else if ([v3 isEqualToString:@"MTYNormalizationOrder"])
  {
    v4 = @"Y Normalization Order";
  }

  else if ([v3 isEqualToString:@"MTXNormalizationOffset"])
  {
    v4 = @"X Normalization Offset";
  }

  else if ([v3 isEqualToString:@"MTYNormalizationOffset"])
  {
    v4 = @"Y Normalization Offset";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)specifier:(id)a3 setValue:(double)a4
{
  v6 = [a3 identifier];
  if ([v6 isEqualToString:@"MTSmoothingBufferSize"])
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchMotionTrackerSmoothingBufferSize:a4];
  }

  else if ([v6 isEqualToString:@"MTSmoothingMaxDelta"])
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchMotionTrackerSmoothingMaxDelta:a4];
  }

  else if ([v6 isEqualToString:@"MTXNormalizationOrder"])
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchMotionTrackerXNormalizationOrder:a4];
  }

  else if ([v6 isEqualToString:@"MTYNormalizationOrder"])
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchMotionTrackerYNormalizationOrder:a4];
  }

  else if ([v6 isEqualToString:@"MTXNormalizationOffset"])
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchMotionTrackerXNormalizationOffset:a4];
  }

  else if ([v6 isEqualToString:@"MTYNormalizationOffset"])
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchMotionTrackerYNormalizationOffset:a4];
  }

  else
  {
    if (![v6 isEqualToString:@"EyeTrackingAutoHideTimeout"])
    {
      goto LABEL_16;
    }

    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchEyeTrackingAutoHideTimeout:a4];
  }

LABEL_16:
}

- (double)valueForSpecifier:(id)a3
{
  v3 = [a3 identifier];
  if ([v3 isEqualToString:@"MTSmoothingBufferSize"])
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 assistiveTouchMotionTrackerSmoothingBufferSize];
LABEL_16:

    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"MTSmoothingMaxDelta"])
  {
    v4 = +[AXSettings sharedInstance];
    [v4 assistiveTouchMotionTrackerSmoothingMaxDelta];
LABEL_15:
    v5 = v6;
    goto LABEL_16;
  }

  if ([v3 isEqualToString:@"MTXNormalizationOrder"])
  {
    v4 = +[AXSettings sharedInstance];
    [v4 assistiveTouchMotionTrackerXNormalizationOrder];
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"MTYNormalizationOrder"])
  {
    v4 = +[AXSettings sharedInstance];
    [v4 assistiveTouchMotionTrackerYNormalizationOrder];
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"MTXNormalizationOffset"])
  {
    v4 = +[AXSettings sharedInstance];
    [v4 assistiveTouchMotionTrackerXNormalizationOffset];
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"MTYNormalizationOffset"])
  {
    v4 = +[AXSettings sharedInstance];
    [v4 assistiveTouchMotionTrackerYNormalizationOffset];
    goto LABEL_15;
  }

  v5 = 0.0;
  if ([v3 isEqualToString:@"EyeTrackingAutoHideTimeout"])
  {
    v4 = +[AXSettings sharedInstance];
    [v4 assistiveTouchEyeTrackingAutoHideTimeout];
    goto LABEL_15;
  }

LABEL_17:

  return v5;
}

@end