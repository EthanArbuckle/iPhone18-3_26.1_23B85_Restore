@interface SearchUILargeTitleDetailedRowCardSectionViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SearchUILargeTitleDetailedRowCardSectionViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(SearchUILargeTitleDetailedRowCardSectionViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v3 = __AXStringForVariables();

  return v3;
}

uint64_t __99__SearchUILargeTitleDetailedRowCardSectionViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _accessibilityViewIsVisible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end