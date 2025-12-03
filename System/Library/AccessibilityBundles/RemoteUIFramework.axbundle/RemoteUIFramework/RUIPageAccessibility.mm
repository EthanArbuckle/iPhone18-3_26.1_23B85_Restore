@interface RUIPageAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
@end

@implementation RUIPageAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  if (AXProcessIsSetup())
  {
    [validationsCopy validateClass:@"BuddyAppleIDSpinnerPage"];
  }
}

- (BOOL)accessibilityPerformEscape
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  if (!AXProcessIsSetup())
  {
    goto LABEL_8;
  }

  navigationController = [v2 navigationController];

  if (!navigationController)
  {
    goto LABEL_8;
  }

  navigationController2 = [v2 navigationController];
  presentingViewController = [navigationController2 presentingViewController];
  childViewControllers = [presentingViewController childViewControllers];

  if (![childViewControllers count])
  {
LABEL_7:

LABEL_8:
    v11 = v2;
    AXPerformSafeBlock();
    childViewControllers = v11;
    goto LABEL_9;
  }

  lastObject = [childViewControllers lastObject];
  MEMORY[0x29C2EA9F0](@"BuddyAppleIDSpinnerPage");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_7;
  }

  navigationController3 = [v2 navigationController];
  v9 = [navigationController3 popViewControllerAnimated:1];

LABEL_9:
  return 1;
}

@end