@interface CHASActivitySetupGoalViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (void)_accessibilityPerformButtonActionForButton:(id)a3;
@end

@implementation CHASActivitySetupGoalViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHASActivitySetupGoalView" hasInstanceVariable:@"_goalLabel" withType:"UILabel"];
  [v3 validateClass:@"CHASActivitySetupGoalView" hasInstanceVariable:@"_unitLabel" withType:"UILabel"];
  [v3 validateClass:@"CHASActivitySetupGoalView" hasInstanceVariable:@"_minusButton" withType:"UIButton"];
  [v3 validateClass:@"CHASActivitySetupGoalView" hasInstanceVariable:@"_plusButton" withType:"UIButton"];
  [v3 validateClass:@"CHASActivitySetupGoalView" hasInstanceMethod:@"buttonController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FIUIValueAdjustmentButtonController" hasInstanceMethod:@"_performPlusMinusActionWithButton:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(CHASActivitySetupGoalViewAccessibility *)self safeValueForKey:@"_goalLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v12 = 0;
  objc_opt_class();
  v5 = [(CHASActivitySetupGoalViewAccessibility *)self safeValueForKey:@"_unitLabel"];
  v6 = __UIAccessibilityCastAsClass();

  if (v4 && v6)
  {
    v7 = [v4 text];
    v10 = [v6 text];
    v8 = __AXStringForVariables();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CHASActivitySetupGoalViewAccessibility;
    v8 = [(CHASActivitySetupGoalViewAccessibility *)&v11 accessibilityValue];
  }

  return v8;
}

- (void)_accessibilityPerformButtonActionForButton:(id)a3
{
  v4 = a3;
  v5 = [(CHASActivitySetupGoalViewAccessibility *)self safeValueForKey:@"buttonController"];
  objc_opt_class();
  v6 = [(CHASActivitySetupGoalViewAccessibility *)self safeValueForKey:v4];
  v7 = __UIAccessibilityCastAsClass();

  if (v5 && v7)
  {
    v8 = v5;
    v9 = v7;
    AXPerformSafeBlock();
  }
}

@end