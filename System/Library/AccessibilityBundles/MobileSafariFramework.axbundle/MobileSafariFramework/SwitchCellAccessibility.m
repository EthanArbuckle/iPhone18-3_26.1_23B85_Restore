@interface SwitchCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)accessibilityValue;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SwitchCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_SFBrowsingAssistantSwitchCell" hasSwiftField:@"switch" withSwiftType:"UISwitch"];
  [v3 validateClass:@"UISwitch" hasInstanceVariable:@"_on" withType:"BOOL"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SwitchCellAccessibility;
  [(SwitchCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SwitchCellAccessibility *)self safeSwiftValueForKey:@"switch"];
  [v3 setIsAccessibilityElement:0];
}

- (BOOL)accessibilityActivate
{
  v7.receiver = self;
  v7.super_class = SwitchCellAccessibility;
  [(SwitchCellAccessibility *)&v7 accessibilityActivate];
  objc_opt_class();
  v3 = [(SwitchCellAccessibility *)self safeSwiftValueForKey:@"switch"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 safeValueForKey:@"_on"];
  LODWORD(v3) = [v5 BOOLValue];

  [v4 setOn:v3 ^ 1 animated:1];
  [v4 sendActionsForControlEvents:4096];

  return 1;
}

- (id)accessibilityValue
{
  v2 = [(SwitchCellAccessibility *)self safeSwiftValueForKey:@"switch"];
  v3 = [v2 accessibilityValue];

  return v3;
}

@end