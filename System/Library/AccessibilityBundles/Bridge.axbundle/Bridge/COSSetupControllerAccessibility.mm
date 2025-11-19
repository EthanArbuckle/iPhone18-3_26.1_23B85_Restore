@interface COSSetupControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)blockGoingBackFromCurrentController;
- (void)buddyControllerHold:(id)a3 beforePresentingBuddyController:(id)a4;
@end

@implementation COSSetupControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"COSSetupController" hasInstanceMethod:@"buddyControllerHold: beforePresentingBuddyController:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"COSSetupController" hasInstanceMethod:@"blockGoingBackFromCurrentController" withFullSignature:{"v", 0}];
}

- (void)buddyControllerHold:(id)a3 beforePresentingBuddyController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = COSSetupControllerAccessibility;
  [(COSSetupControllerAccessibility *)&v13 buddyControllerHold:v6 beforePresentingBuddyController:v7];
  objc_opt_class();
  v8 = [(COSSetupControllerAccessibility *)self safeValueForKey:@"_navigationController"];
  v9 = __UIAccessibilityCastAsClass();

  v10 = [v9 navigationBar];
  v11 = [v10 topItem];

  LODWORD(v10) = *MEMORY[0x29EDC7F10];
  v12 = [v11 rightBarButtonItem];
  UIAccessibilityPostNotification(v10, v12);
}

- (void)blockGoingBackFromCurrentController
{
  v9.receiver = self;
  v9.super_class = COSSetupControllerAccessibility;
  [(COSSetupControllerAccessibility *)&v9 blockGoingBackFromCurrentController];
  objc_opt_class();
  v3 = [(COSSetupControllerAccessibility *)self safeValueForKey:@"_navigationController"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 viewControllers];
  if ([v5 count] >= 2)
  {
    v6 = [v5 lastObject];
    v7 = [v6 navigationItem];
    v8 = [v7 leftBarButtonItem];
    [v8 setIsAccessibilityElement:1];
    [v8 setAccessibilityTraits:*MEMORY[0x29EDC7500] | *MEMORY[0x29EDC7F70]];
  }
}

@end