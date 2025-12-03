@interface HearingTestStepViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation HearingTestStepViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HearingTestUI.HearingTestStepViewController" isKindOfClass:@"OBWelcomeController"];
  [validationsCopy validateClass:@"OBWelcomeController" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
}

void __60__HearingTestStepViewControllerAccessibility_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  argument = [WeakRetained safeValueForKey:@"headerView"];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], argument);
}

@end