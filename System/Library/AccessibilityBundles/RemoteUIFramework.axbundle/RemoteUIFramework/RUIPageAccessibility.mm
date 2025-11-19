@interface RUIPageAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
@end

@implementation RUIPageAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  if (AXProcessIsSetup())
  {
    [v3 validateClass:@"BuddyAppleIDSpinnerPage"];
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

  v3 = [v2 navigationController];

  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = [v2 navigationController];
  v5 = [v4 presentingViewController];
  v6 = [v5 childViewControllers];

  if (![v6 count])
  {
LABEL_7:

LABEL_8:
    v11 = v2;
    AXPerformSafeBlock();
    v6 = v11;
    goto LABEL_9;
  }

  v7 = [v6 lastObject];
  MEMORY[0x29C2EA9F0](@"BuddyAppleIDSpinnerPage");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_7;
  }

  v8 = [v2 navigationController];
  v9 = [v8 popViewControllerAnimated:1];

LABEL_9:
  return 1;
}

@end