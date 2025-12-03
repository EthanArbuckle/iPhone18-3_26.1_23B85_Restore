@interface ASTMotionTrackingSettingsHelper
- (ASTMotionTrackingSettingsHelper)initWithEyeTracker:(id)tracker;
- (NSArray)autoHideTimeoutAndSliderContiguousSpecs;
- (PSSpecifier)autoHideOpacityGroupSpecifier;
- (PSSpecifier)autoHideOpacitySliderSpecifier;
- (PSSpecifier)autoHideTimeoutGroupSpecifier;
- (PSSpecifier)autoHideTimeoutStepperSpecifier;
- (double)maximumValueForSpecifier:(id)specifier;
- (double)minimumValueForSpecifier:(id)specifier;
- (double)stepValueForSpecifier:(id)specifier;
- (double)valueForSpecifier:(id)specifier;
- (id)assistiveTouchBubbleModeEnabled:(id)enabled;
- (id)assistiveTouchEyeTrackingAutoHideEnabled:(id)enabled;
- (id)assistiveTouchMotionTrackerShouldOffsetBufferPoints:(id)points;
- (id)assistiveTouchMotionTrackerSmoothingBufferSize:(id)size;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (id)unitsStringForSpecifier:(id)specifier;
- (void)setAssistiveTouchBubbleModeEnabled:(id)enabled specifier:(id)specifier;
- (void)setAssistiveTouchEyeTrackingAutoHideEnabled:(id)enabled specifier:(id)specifier;
- (void)setAssistiveTouchMotionTrackerShouldOffsetBufferPoints:(id)points specifier:(id)specifier;
- (void)setAssistiveTouchMotionTrackerSmoothingBufferSize:(id)size specifier:(id)specifier;
- (void)specifier:(id)specifier setValue:(double)value;
@end

@implementation ASTMotionTrackingSettingsHelper

- (ASTMotionTrackingSettingsHelper)initWithEyeTracker:(id)tracker
{
  trackerCopy = tracker;
  v9.receiver = self;
  v9.super_class = ASTMotionTrackingSettingsHelper;
  v6 = [(ASTMotionTrackingSettingsHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eyeTracker, tracker);
  }

  return v7;
}

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[AXSettings sharedInstance];
  assistiveTouchMotionTrackerConfigurable = [v4 assistiveTouchMotionTrackerConfigurable];

  if (assistiveTouchMotionTrackerConfigurable)
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
    eyeTracker = [(ASTMotionTrackingSettingsHelper *)self eyeTracker];
    [v16 setProperty:eyeTracker forKey:@"ASTEyeTrackerKey"];

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
    autoHideTimeoutGroupSpecifier = [(ASTMotionTrackingSettingsHelper *)self autoHideTimeoutGroupSpecifier];
    [v3 addObject:autoHideTimeoutGroupSpecifier];

    autoHideTimeoutStepperSpecifier = [(ASTMotionTrackingSettingsHelper *)self autoHideTimeoutStepperSpecifier];
    [v3 addObject:autoHideTimeoutStepperSpecifier];

    autoHideOpacityGroupSpecifier = [(ASTMotionTrackingSettingsHelper *)self autoHideOpacityGroupSpecifier];
    [v3 addObject:autoHideOpacityGroupSpecifier];

    autoHideOpacitySliderSpecifier = [(ASTMotionTrackingSettingsHelper *)self autoHideOpacitySliderSpecifier];
    [v3 addObject:autoHideOpacitySliderSpecifier];
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
  autoHideTimeoutGroupSpecifier = [(ASTMotionTrackingSettingsHelper *)self autoHideTimeoutGroupSpecifier];
  v9[0] = autoHideTimeoutGroupSpecifier;
  autoHideTimeoutStepperSpecifier = [(ASTMotionTrackingSettingsHelper *)self autoHideTimeoutStepperSpecifier];
  v9[1] = autoHideTimeoutStepperSpecifier;
  autoHideOpacityGroupSpecifier = [(ASTMotionTrackingSettingsHelper *)self autoHideOpacityGroupSpecifier];
  v9[2] = autoHideOpacityGroupSpecifier;
  autoHideOpacitySliderSpecifier = [(ASTMotionTrackingSettingsHelper *)self autoHideOpacitySliderSpecifier];
  v9[3] = autoHideOpacitySliderSpecifier;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

- (id)assistiveTouchMotionTrackerSmoothingBufferSize:(id)size
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 assistiveTouchMotionTrackerSmoothingBufferSize]);

  return v4;
}

- (void)setAssistiveTouchMotionTrackerSmoothingBufferSize:(id)size specifier:(id)specifier
{
  unsignedIntegerValue = [size unsignedIntegerValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMotionTrackerSmoothingBufferSize:unsignedIntegerValue];
}

- (id)assistiveTouchMotionTrackerShouldOffsetBufferPoints:(id)points
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMotionTrackerShouldOffsetBufferPoints]);

  return v4;
}

- (void)setAssistiveTouchMotionTrackerShouldOffsetBufferPoints:(id)points specifier:(id)specifier
{
  bOOLValue = [points BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMotionTrackerShouldOffsetBufferPoints:bOOLValue];
}

- (id)assistiveTouchBubbleModeEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchBubbleModeEnabled]);

  return v4;
}

- (void)setAssistiveTouchBubbleModeEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchBubbleModeEnabled:bOOLValue];
}

- (id)assistiveTouchEyeTrackingAutoHideEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchEyeTrackingAutoHideEnabled]);

  return v4;
}

- (void)setAssistiveTouchEyeTrackingAutoHideEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchEyeTrackingAutoHideEnabled:bOOLValue];
}

- (double)maximumValueForSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"EyeTrackingAutoHideTimeout"])
  {
    v4 = kAXSAssistiveTouchEyeTrackingAutoHideTimeoutMax;
  }

  else
  {
    v4 = *"";
  }

  return v4;
}

- (double)minimumValueForSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"EyeTrackingAutoHideTimeout"])
  {
    v4 = kAXSAssistiveTouchEyeTrackingAutoHideTimeoutMin;
  }

  else
  {
    v4 = -10000.0;
  }

  return v4;
}

- (double)stepValueForSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  v4 = 1.0;
  if (([identifier isEqualToString:@"MTSmoothingBufferSize"] & 1) == 0)
  {
    if ([identifier isEqualToString:@"MTSmoothingMaxDelta"])
    {
LABEL_3:
      v4 = 5.0;
      goto LABEL_6;
    }

    v4 = 0.25;
    if (([identifier isEqualToString:@"MTXNormalizationOrder"] & 1) == 0 && (objc_msgSend(identifier, "isEqualToString:", @"MTYNormalizationOrder") & 1) == 0)
    {
      if ([identifier isEqualToString:@"MTXNormalizationOffset"])
      {
        goto LABEL_3;
      }

      v4 = 5.0;
      if (([identifier isEqualToString:@"MTYNormalizationOffset"] & 1) == 0)
      {
        if ([identifier isEqualToString:@"EyeTrackingAutoHideTimeout"])
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

- (id)stringValueForSpecifier:(id)specifier
{
  [(ASTMotionTrackingSettingsHelper *)self valueForSpecifier:specifier];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

- (id)unitsStringForSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"MTSmoothingBufferSize"])
  {
    v4 = @"Smoothing Buffer Size";
  }

  else if ([identifier isEqualToString:@"MTSmoothingMaxDelta"])
  {
    v4 = @"Smoothing Max Delta";
  }

  else if ([identifier isEqualToString:@"MTXNormalizationOrder"])
  {
    v4 = @"X Normalization Order";
  }

  else if ([identifier isEqualToString:@"MTYNormalizationOrder"])
  {
    v4 = @"Y Normalization Order";
  }

  else if ([identifier isEqualToString:@"MTXNormalizationOffset"])
  {
    v4 = @"X Normalization Offset";
  }

  else if ([identifier isEqualToString:@"MTYNormalizationOffset"])
  {
    v4 = @"Y Normalization Offset";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"MTSmoothingBufferSize"])
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchMotionTrackerSmoothingBufferSize:value];
  }

  else if ([identifier isEqualToString:@"MTSmoothingMaxDelta"])
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchMotionTrackerSmoothingMaxDelta:value];
  }

  else if ([identifier isEqualToString:@"MTXNormalizationOrder"])
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchMotionTrackerXNormalizationOrder:value];
  }

  else if ([identifier isEqualToString:@"MTYNormalizationOrder"])
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchMotionTrackerYNormalizationOrder:value];
  }

  else if ([identifier isEqualToString:@"MTXNormalizationOffset"])
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchMotionTrackerXNormalizationOffset:value];
  }

  else if ([identifier isEqualToString:@"MTYNormalizationOffset"])
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchMotionTrackerYNormalizationOffset:value];
  }

  else
  {
    if (![identifier isEqualToString:@"EyeTrackingAutoHideTimeout"])
    {
      goto LABEL_16;
    }

    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchEyeTrackingAutoHideTimeout:value];
  }

LABEL_16:
}

- (double)valueForSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"MTSmoothingBufferSize"])
  {
    v4 = +[AXSettings sharedInstance];
    assistiveTouchMotionTrackerSmoothingBufferSize = [v4 assistiveTouchMotionTrackerSmoothingBufferSize];
LABEL_16:

    goto LABEL_17;
  }

  if ([identifier isEqualToString:@"MTSmoothingMaxDelta"])
  {
    v4 = +[AXSettings sharedInstance];
    [v4 assistiveTouchMotionTrackerSmoothingMaxDelta];
LABEL_15:
    assistiveTouchMotionTrackerSmoothingBufferSize = v6;
    goto LABEL_16;
  }

  if ([identifier isEqualToString:@"MTXNormalizationOrder"])
  {
    v4 = +[AXSettings sharedInstance];
    [v4 assistiveTouchMotionTrackerXNormalizationOrder];
    goto LABEL_15;
  }

  if ([identifier isEqualToString:@"MTYNormalizationOrder"])
  {
    v4 = +[AXSettings sharedInstance];
    [v4 assistiveTouchMotionTrackerYNormalizationOrder];
    goto LABEL_15;
  }

  if ([identifier isEqualToString:@"MTXNormalizationOffset"])
  {
    v4 = +[AXSettings sharedInstance];
    [v4 assistiveTouchMotionTrackerXNormalizationOffset];
    goto LABEL_15;
  }

  if ([identifier isEqualToString:@"MTYNormalizationOffset"])
  {
    v4 = +[AXSettings sharedInstance];
    [v4 assistiveTouchMotionTrackerYNormalizationOffset];
    goto LABEL_15;
  }

  assistiveTouchMotionTrackerSmoothingBufferSize = 0.0;
  if ([identifier isEqualToString:@"EyeTrackingAutoHideTimeout"])
  {
    v4 = +[AXSettings sharedInstance];
    [v4 assistiveTouchEyeTrackingAutoHideTimeout];
    goto LABEL_15;
  }

LABEL_17:

  return assistiveTouchMotionTrackerSmoothingBufferSize;
}

@end