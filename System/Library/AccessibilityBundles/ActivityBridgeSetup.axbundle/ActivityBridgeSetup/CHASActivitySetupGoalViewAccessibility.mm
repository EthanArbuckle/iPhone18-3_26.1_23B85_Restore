@interface CHASActivitySetupGoalViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (void)_accessibilityPerformButtonActionForButton:(id)button;
@end

@implementation CHASActivitySetupGoalViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHASActivitySetupGoalView" hasInstanceVariable:@"_goalLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CHASActivitySetupGoalView" hasInstanceVariable:@"_unitLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CHASActivitySetupGoalView" hasInstanceVariable:@"_minusButton" withType:"UIButton"];
  [validationsCopy validateClass:@"CHASActivitySetupGoalView" hasInstanceVariable:@"_plusButton" withType:"UIButton"];
  [validationsCopy validateClass:@"CHASActivitySetupGoalView" hasInstanceMethod:@"buttonController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FIUIValueAdjustmentButtonController" hasInstanceMethod:@"_performPlusMinusActionWithButton:" withFullSignature:{"v", "@", 0}];
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
    text = [v4 text];
    text2 = [v6 text];
    accessibilityValue = __AXStringForVariables();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CHASActivitySetupGoalViewAccessibility;
    accessibilityValue = [(CHASActivitySetupGoalViewAccessibility *)&v11 accessibilityValue];
  }

  return accessibilityValue;
}

- (void)_accessibilityPerformButtonActionForButton:(id)button
{
  buttonCopy = button;
  v5 = [(CHASActivitySetupGoalViewAccessibility *)self safeValueForKey:@"buttonController"];
  objc_opt_class();
  v6 = [(CHASActivitySetupGoalViewAccessibility *)self safeValueForKey:buttonCopy];
  v7 = __UIAccessibilityCastAsClass();

  if (v5 && v7)
  {
    v8 = v5;
    v9 = v7;
    AXPerformSafeBlock();
  }
}

@end