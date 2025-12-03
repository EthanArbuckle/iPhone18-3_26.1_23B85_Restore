@interface HPCUIBatteryGroupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityOverridesInvalidFrames;
- (CGRect)accessibilityFrame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetupLabel;
- (void)setAXBatteryType:(id)type;
@end

@implementation HPCUIBatteryGroupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HPCUIBatteryGroupView" hasInstanceVariable:@"batteryPercentLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"HPCUIBatteryGroupView" hasInstanceMethod:@"setChargePercent:" withFullSignature:{"v", "C", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = HPCUIBatteryGroupViewAccessibility;
  [(HPCUIBatteryGroupViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(HPCUIBatteryGroupViewAccessibility *)self _axSetupLabel];
}

- (BOOL)_accessibilityOverridesInvalidFrames
{
  v7.receiver = self;
  v7.super_class = HPCUIBatteryGroupViewAccessibility;
  [(HPCUIBatteryGroupViewAccessibility *)&v7 accessibilityFrame];
  result = 1;
  if (fabs(v3) >= 0.001 && fabs(v4) >= 0.001 && v3 > 0.0 && v4 > 0.0)
  {
    v6.receiver = self;
    v6.super_class = HPCUIBatteryGroupViewAccessibility;
    return [(HPCUIBatteryGroupViewAccessibility *)&v6 _accessibilityOverridesInvalidFrames];
  }

  return result;
}

- (CGRect)accessibilityFrame
{
  v21.receiver = self;
  v21.super_class = HPCUIBatteryGroupViewAccessibility;
  [(HPCUIBatteryGroupViewAccessibility *)&v21 accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  if (fabs(v2) < 0.001 || fabs(v3) < 0.001 || v2 <= 0.0 || v3 <= 0.0)
  {
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    superview = [v10 superview];
    v12 = superview;
    if (superview)
    {
      [superview accessibilityFrame];
      v5 = v13;
      v7 = v14;
      v8 = v15;
      v9 = v16;
    }
  }

  v17 = v5;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)setAXBatteryType:(id)type
{
  [(HPCUIBatteryGroupViewAccessibility *)self _axSetBatteryType:type];

  [(HPCUIBatteryGroupViewAccessibility *)self _axSetupLabel];
}

- (void)_axSetupLabel
{
  objc_opt_class();
  v3 = [(HPCUIBatteryGroupViewAccessibility *)self safeValueForKey:@"batteryPercentLabel"];
  v4 = __UIAccessibilityCastAsClass();

  _axBatteryType = [(HPCUIBatteryGroupViewAccessibility *)self _axBatteryType];
  text = [v4 text];
  v7 = __UIAXStringForVariables();
  [v4 setAccessibilityLabel:{v7, text, @"__AXStringForVariablesSentinel"}];
}

@end