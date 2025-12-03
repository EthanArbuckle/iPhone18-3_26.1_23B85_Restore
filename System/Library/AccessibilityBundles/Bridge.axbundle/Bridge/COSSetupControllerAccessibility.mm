@interface COSSetupControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)blockGoingBackFromCurrentController;
- (void)buddyControllerHold:(id)hold beforePresentingBuddyController:(id)controller;
@end

@implementation COSSetupControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"COSSetupController" hasInstanceMethod:@"buddyControllerHold: beforePresentingBuddyController:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"COSSetupController" hasInstanceMethod:@"blockGoingBackFromCurrentController" withFullSignature:{"v", 0}];
}

- (void)buddyControllerHold:(id)hold beforePresentingBuddyController:(id)controller
{
  holdCopy = hold;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = COSSetupControllerAccessibility;
  [(COSSetupControllerAccessibility *)&v13 buddyControllerHold:holdCopy beforePresentingBuddyController:controllerCopy];
  objc_opt_class();
  v8 = [(COSSetupControllerAccessibility *)self safeValueForKey:@"_navigationController"];
  v9 = __UIAccessibilityCastAsClass();

  navigationBar = [v9 navigationBar];
  topItem = [navigationBar topItem];

  LODWORD(navigationBar) = *MEMORY[0x29EDC7F10];
  rightBarButtonItem = [topItem rightBarButtonItem];
  UIAccessibilityPostNotification(navigationBar, rightBarButtonItem);
}

- (void)blockGoingBackFromCurrentController
{
  v9.receiver = self;
  v9.super_class = COSSetupControllerAccessibility;
  [(COSSetupControllerAccessibility *)&v9 blockGoingBackFromCurrentController];
  objc_opt_class();
  v3 = [(COSSetupControllerAccessibility *)self safeValueForKey:@"_navigationController"];
  v4 = __UIAccessibilityCastAsClass();

  viewControllers = [v4 viewControllers];
  if ([viewControllers count] >= 2)
  {
    lastObject = [viewControllers lastObject];
    navigationItem = [lastObject navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    [leftBarButtonItem setIsAccessibilityElement:1];
    [leftBarButtonItem setAccessibilityTraits:*MEMORY[0x29EDC7500] | *MEMORY[0x29EDC7F70]];
  }
}

@end