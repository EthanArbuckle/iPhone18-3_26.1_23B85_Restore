@interface HomeActionFooterCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HomeActionFooterCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HomeActionFooterCellAccessibility;
  [(HomeActionFooterCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(HomeActionFooterCellAccessibility *)self _accessibilityFindDescendant:&__block_literal_global_1];
  v4 = v3;
  if (v3)
  {
    [v3 setAccessibilityLabelBlock:&__block_literal_global_293];
  }
}

uint64_t __79__HomeActionFooterCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"TermsAndConditionsButton"];

  return v3;
}

@end