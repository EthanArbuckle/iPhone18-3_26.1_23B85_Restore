@interface ASTOnDeviceEyeTrackingSettingsHelper
- (ASTOnDeviceEyeTrackingSettingsHelper)initWithEyeTracker:(id)tracker;
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
- (id)assistiveTouchKeyboardZoomEnabled:(id)enabled;
- (id)assistiveTouchOnDeviceEyeTrackingAutoHideEnabled:(id)enabled;
- (id)assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize:(id)size;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (id)unitsStringForSpecifier:(id)specifier;
- (void)setAssistiveTouchBubbleModeEnabled:(id)enabled specifier:(id)specifier;
- (void)setAssistiveTouchKeyboardZoomEnabled:(id)enabled specifier:(id)specifier;
- (void)setAssistiveTouchOnDeviceEyeTrackingAutoHideEnabled:(id)enabled specifier:(id)specifier;
- (void)setAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSize:(id)size specifier:(id)specifier;
- (void)specifier:(id)specifier setValue:(double)value;
@end

@implementation ASTOnDeviceEyeTrackingSettingsHelper

- (ASTOnDeviceEyeTrackingSettingsHelper)initWithEyeTracker:(id)tracker
{
  trackerCopy = tracker;
  v9.receiver = self;
  v9.super_class = ASTOnDeviceEyeTrackingSettingsHelper;
  v6 = [(ASTOnDeviceEyeTrackingSettingsHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_onDeviceEyeTracker, tracker);
  }

  return v7;
}

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = settingsLocString(@"MOUSE_POINTER_HID_DEVICE_SMOOTHING", @"HandSettings");
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  v6 = settingsLocString(@"MOUSE_POINTER_HID_DEVICE_SMOOTHING_FOOTER", @"HandSettings");
  v7 = PSFooterTextGroupKey;
  [v5 setProperty:v6 forKey:PSFooterTextGroupKey];

  v27 = v5;
  [v3 addObject:v5];
  v8 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
  onDeviceEyeTracker = [(ASTOnDeviceEyeTrackingSettingsHelper *)self onDeviceEyeTracker];
  [v8 setProperty:onDeviceEyeTracker forKey:@"ASTOnDeviceEyeTrackerKey"];

  v10 = PSIDKey;
  [v8 setProperty:@"SMOOTHING" forKey:PSIDKey];
  [v3 addObject:v8];
  v11 = +[PSSpecifier emptyGroupSpecifier];
  v12 = settingsLocString(@"MOUSE_POINTER_HID_DEVICE_BUBBLE_MODE_FOOTER", @"HandSettings");
  [v11 setProperty:v12 forKey:v7];

  v26 = v11;
  [v3 addObject:v11];
  v13 = settingsLocString(@"MOUSE_POINTER_HID_DEVICE_BUBBLE_MODE", @"HandSettings");
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"setAssistiveTouchBubbleModeEnabled:specifier:" get:"assistiveTouchBubbleModeEnabled:" detail:0 cell:6 edit:0];

  [v14 setProperty:@"SNAP_TO_ITEM" forKey:v10];
  [v3 addObject:v14];
  v15 = settingsLocString(@"MOUSE_POINTER_HID_DEVICE_BUBBLE_MODE_KEYBOARD_ZOOM", @"HandSettings");
  v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:"setAssistiveTouchKeyboardZoomEnabled:specifier:" get:"assistiveTouchKeyboardZoomEnabled:" detail:0 cell:6 edit:0];

  [v16 setProperty:@"KEYBOARD_ZOOM" forKey:v10];
  [v3 addObject:v16];
  v17 = +[PSSpecifier emptyGroupSpecifier];
  [v3 addObject:v17];
  v18 = settingsLocString(@"MOUSE_POINTER_HID_DEVICE_AUTO_HIDE", @"HandSettings");
  v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"setAssistiveTouchOnDeviceEyeTrackingAutoHideEnabled:specifier:" get:"assistiveTouchOnDeviceEyeTrackingAutoHideEnabled:" detail:0 cell:6 edit:0];

  [v19 setProperty:@"AUTO_HIDE" forKey:v10];
  [v3 addObject:v19];
  v20 = +[AXSettings sharedInstance];
  LODWORD(v18) = [v20 assistiveTouchEyeTrackingAutoHideEnabled];

  if (v18)
  {
    autoHideTimeoutGroupSpecifier = [(ASTOnDeviceEyeTrackingSettingsHelper *)self autoHideTimeoutGroupSpecifier];
    [v3 addObject:autoHideTimeoutGroupSpecifier];

    autoHideTimeoutStepperSpecifier = [(ASTOnDeviceEyeTrackingSettingsHelper *)self autoHideTimeoutStepperSpecifier];
    [v3 addObject:autoHideTimeoutStepperSpecifier];

    autoHideOpacityGroupSpecifier = [(ASTOnDeviceEyeTrackingSettingsHelper *)self autoHideOpacityGroupSpecifier];
    [v3 addObject:autoHideOpacityGroupSpecifier];

    autoHideOpacitySliderSpecifier = [(ASTOnDeviceEyeTrackingSettingsHelper *)self autoHideOpacitySliderSpecifier];
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

    [(PSSpecifier *)self->_autoHideTimeoutStepperSpecifier setIdentifier:@"OnDeviceEyeTrackingAutoHideTimeout"];
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
  autoHideTimeoutGroupSpecifier = [(ASTOnDeviceEyeTrackingSettingsHelper *)self autoHideTimeoutGroupSpecifier];
  v9[0] = autoHideTimeoutGroupSpecifier;
  autoHideTimeoutStepperSpecifier = [(ASTOnDeviceEyeTrackingSettingsHelper *)self autoHideTimeoutStepperSpecifier];
  v9[1] = autoHideTimeoutStepperSpecifier;
  autoHideOpacityGroupSpecifier = [(ASTOnDeviceEyeTrackingSettingsHelper *)self autoHideOpacityGroupSpecifier];
  v9[2] = autoHideOpacityGroupSpecifier;
  autoHideOpacitySliderSpecifier = [(ASTOnDeviceEyeTrackingSettingsHelper *)self autoHideOpacitySliderSpecifier];
  v9[3] = autoHideOpacitySliderSpecifier;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

- (id)assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize:(id)size
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize]);

  return v4;
}

- (void)setAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSize:(id)size specifier:(id)specifier
{
  unsignedIntegerValue = [size unsignedIntegerValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSize:unsignedIntegerValue];
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

- (id)assistiveTouchKeyboardZoomEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchEyeTrackingUseZoomForKeyboardKeys]);

  return v4;
}

- (void)setAssistiveTouchKeyboardZoomEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchEyeTrackingUseZoomForKeyboardKeys:bOOLValue];
}

- (id)assistiveTouchOnDeviceEyeTrackingAutoHideEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchOnDeviceEyeTrackingAutoHideEnabled]);

  return v4;
}

- (void)setAssistiveTouchOnDeviceEyeTrackingAutoHideEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchOnDeviceEyeTrackingAutoHideEnabled:bOOLValue];
}

- (double)maximumValueForSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"OnDeviceEyeTrackingAutoHideTimeout"])
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
  if ([identifier isEqualToString:@"OnDeviceEyeTrackingAutoHideTimeout"])
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
  if (([identifier isEqualToString:@"ODETSmoothingBufferSize"] & 1) == 0)
  {
    if ([identifier isEqualToString:@"OnDeviceEyeTrackingAutoHideTimeout"])
    {
      v4 = kAXSAssistiveTouchEyeTrackingAutoHideTimeoutStepInterval;
    }

    else
    {
      v4 = 1.0;
    }
  }

  return v4;
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(ASTOnDeviceEyeTrackingSettingsHelper *)self valueForSpecifier:specifier];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

- (id)unitsStringForSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"ODETSmoothingBufferSize"])
  {
    v4 = @"Smoothing Buffer Size";
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
  if ([identifier isEqualToString:@"ODETSmoothingBufferSize"])
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSize:value];
  }

  else
  {
    if (![identifier isEqualToString:@"OnDeviceEyeTrackingAutoHideTimeout"])
    {
      goto LABEL_6;
    }

    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchEyeTrackingAutoHideTimeout:value];
  }

LABEL_6:
}

- (double)valueForSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"ODETSmoothingBufferSize"])
  {
    v4 = +[AXSettings sharedInstance];
    assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize = [v4 assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize];
LABEL_5:

    goto LABEL_6;
  }

  assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize = 0.0;
  if ([identifier isEqualToString:@"OnDeviceEyeTrackingAutoHideTimeout"])
  {
    v4 = +[AXSettings sharedInstance];
    [v4 assistiveTouchEyeTrackingAutoHideTimeout];
    assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize = v6;
    goto LABEL_5;
  }

LABEL_6:

  return assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize;
}

@end