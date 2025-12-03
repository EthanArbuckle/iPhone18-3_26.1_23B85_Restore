@interface NCDimmableViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (id)accessibilityLabel;
- (int64_t)accessibilityContainerType;
@end

@implementation NCDimmableViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  if (AXProcessIsSpringBoard())
  {
    [validationsCopy validateClass:@"SBBannerWindow"];
  }

  [validationsCopy validateClass:@"NCNotificationViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"NCNotificationViewController" hasInstanceMethod:@"_executeClearAction:" withFullSignature:{"v", "B", 0}];
}

- (BOOL)accessibilityPerformEscape
{
  objc_opt_class();
  v3 = [MEMORY[0x29EDC7DA8] viewControllerForView:self];
  v4 = __UIAccessibilityCastAsClass();

  presentingViewController = [v4 presentingViewController];

  if (presentingViewController)
  {
    v7 = v4;
    AXPerformSafeBlock();
  }

  return presentingViewController != 0;
}

- (int64_t)accessibilityContainerType
{
  _accessibilityWindow = [(NCDimmableViewAccessibility *)self _accessibilityWindow];
  NSClassFromString(&cfstr_Sbbannerwindow.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)accessibilityLabel
{
  _accessibilityWindow = [(NCDimmableViewAccessibility *)self _accessibilityWindow];
  NSClassFromString(&cfstr_Sbbannerwindow.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = accessibilityLocalizedString(@"notification.title");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end