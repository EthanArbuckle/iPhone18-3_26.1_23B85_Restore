@interface NCClickInteractionPresentedControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation NCClickInteractionPresentedControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCClickInteractionPresentedControl" hasInstanceMethod:@"_presentedView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCClickInteractionPresentedView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  if (AXProcessIsSpringBoard())
  {
    [v3 validateClass:@"CSCombinedListViewController" hasInstanceVariable:@"_structuredListViewController" withType:"NCNotificationStructuredListViewController"];
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

  v6 = [v5 text];

  return v6;
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [(NCClickInteractionPresentedControlAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_3 startWithSelf:1];
  v3 = [v2 _accessibilityViewController];
  v4 = [v3 safeValueForKey:@"_structuredListViewController"];
  v5 = [v4 accessibilityPerformEscape];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return v5;
}

uint64_t __77__NCClickInteractionPresentedControlAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Cscombinedlist.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end