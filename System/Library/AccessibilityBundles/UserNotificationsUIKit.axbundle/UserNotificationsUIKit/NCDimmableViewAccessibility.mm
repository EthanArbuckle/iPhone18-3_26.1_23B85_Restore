@interface NCDimmableViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (id)accessibilityLabel;
- (int64_t)accessibilityContainerType;
@end

@implementation NCDimmableViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  if (AXProcessIsSpringBoard())
  {
    [v3 validateClass:@"SBBannerWindow"];
  }

  [v3 validateClass:@"NCNotificationViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"NCNotificationViewController" hasInstanceMethod:@"_executeClearAction:" withFullSignature:{"v", "B", 0}];
}

- (BOOL)accessibilityPerformEscape
{
  objc_opt_class();
  v3 = [MEMORY[0x29EDC7DA8] viewControllerForView:self];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 presentingViewController];

  if (v5)
  {
    v7 = v4;
    AXPerformSafeBlock();
  }

  return v5 != 0;
}

- (int64_t)accessibilityContainerType
{
  v2 = [(NCDimmableViewAccessibility *)self _accessibilityWindow];
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
  v2 = [(NCDimmableViewAccessibility *)self _accessibilityWindow];
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