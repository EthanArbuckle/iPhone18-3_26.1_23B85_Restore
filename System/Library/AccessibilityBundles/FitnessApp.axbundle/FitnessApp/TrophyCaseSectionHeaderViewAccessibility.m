@interface TrophyCaseSectionHeaderViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation TrophyCaseSectionHeaderViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = TrophyCaseSectionHeaderViewAccessibility;
  [(TrophyCaseSectionHeaderViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(TrophyCaseSectionHeaderViewAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  [v3 setAccessibilityTraits:UIAccessibilityTraitHeader];
}

@end