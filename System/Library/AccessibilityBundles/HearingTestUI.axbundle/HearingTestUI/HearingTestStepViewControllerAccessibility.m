@interface HearingTestStepViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation HearingTestStepViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HearingTestUI.HearingTestStepViewController" isKindOfClass:@"OBWelcomeController"];
  [v3 validateClass:@"OBWelcomeController" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
}

void __60__HearingTestStepViewControllerAccessibility_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  argument = [WeakRetained safeValueForKey:@"headerView"];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], argument);
}

@end