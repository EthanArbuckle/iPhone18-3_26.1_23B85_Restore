@interface _SFSettingsAlertStepperAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (id)initUsingResetButton:(BOOL)a3;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _SFSettingsAlertStepperAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_SFSettingsAlertStepper" hasInstanceMethod:@"_incrementTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"_SFSettingsAlertStepper" hasInstanceMethod:@"_decrementTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"_SFSettingsAlertStepper" hasInstanceMethod:@"_resetTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"_SFSettingsAlertStepper" hasInstanceVariable:@"_resetButton" withType:"_SFSettingsAlertButton"];
  [v3 validateClass:@"_SFSettingsAlertButton" hasInstanceVariable:@"_text" withType:"NSString"];
}

- (id)initUsingResetButton:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _SFSettingsAlertStepperAccessibility;
  v3 = [(_SFSettingsAlertStepperAccessibility *)&v5 initUsingResetButton:a3];
  [v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = _SFSettingsAlertStepperAccessibility;
  [(_SFSettingsAlertStepperAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilitySafariServicesLocalizedString(@"increment");
  v4 = [(_SFSettingsAlertStepperAccessibility *)self safeUIViewForKey:@"_incrementButton"];
  [v4 setAccessibilityLabel:v3];

  v5 = accessibilitySafariServicesLocalizedString(@"decrement");
  v6 = [(_SFSettingsAlertStepperAccessibility *)self safeUIViewForKey:@"_decrementButton"];
  [v6 setAccessibilityLabel:v5];

  v7 = [(_SFSettingsAlertStepperAccessibility *)self safeUIViewForKey:@"_resetButton"];
  v8 = accessibilitySafariServicesLocalizedString(@"reset");
  [v7 setAccessibilityLabel:v8];

  objc_initWeak(&location, v7);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __82___SFSettingsAlertStepperAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v9[3] = &unk_29F2F2A50;
  objc_copyWeak(&v10, &location);
  [v7 _setAccessibilityValueBlock:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (unint64_t)accessibilityTraits
{
  v2 = [(_SFSettingsAlertStepperAccessibility *)self accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"PlaybackStateAndPosition"];

  v4 = MEMORY[0x29EDC7FA0];
  if (!v3)
  {
    v4 = MEMORY[0x29EDC7F60];
  }

  return *v4;
}

- (id)accessibilityValue
{
  v8.receiver = self;
  v8.super_class = _SFSettingsAlertStepperAccessibility;
  v3 = [(_SFSettingsAlertStepperAccessibility *)&v8 accessibilityValue];

  if (v3)
  {
    v7.receiver = self;
    v7.super_class = _SFSettingsAlertStepperAccessibility;
    v4 = [(_SFSettingsAlertStepperAccessibility *)&v7 accessibilityValue];
  }

  else
  {
    v5 = [(_SFSettingsAlertStepperAccessibility *)self safeValueForKey:@"_resetButton"];
    v4 = [v5 safeStringForKey:@"_text"];
  }

  return v4;
}

@end