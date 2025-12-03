@interface NCClickInteractionPresentedControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation NCClickInteractionPresentedControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCClickInteractionPresentedControl" hasInstanceMethod:@"_presentedView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCClickInteractionPresentedView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  if (AXProcessIsSpringBoard())
  {
    [validationsCopy validateClass:@"CSCombinedListViewController" hasInstanceVariable:@"_structuredListViewController" withType:"NCNotificationStructuredListViewController"];
  }
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NCClickInteractionPresentedControlAccessibility;
  return *MEMORY[0x29EDC7F70] | [(NCClickInteractionPresentedControlAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(NCClickInteractionPresentedControlAccessibility *)self safeValueForKey:@"_presentedView"];
  v4 = [v3 safeValueForKey:@"_titleLabel"];
  v5 = __UIAccessibilityCastAsClass();

  text = [v5 text];

  return text;
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [(NCClickInteractionPresentedControlAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_3 startWithSelf:1];
  _accessibilityViewController = [v2 _accessibilityViewController];
  v4 = [_accessibilityViewController safeValueForKey:@"_structuredListViewController"];
  accessibilityPerformEscape = [v4 accessibilityPerformEscape];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return accessibilityPerformEscape;
}

uint64_t __77__NCClickInteractionPresentedControlAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Cscombinedlist.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end