@interface ActivityTileSectionHeaderAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ActivityTileSectionHeaderAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = ActivityTileSectionHeaderAccessibility;
  [(ActivityTileSectionHeaderAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(ActivityTileSectionHeaderAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:UIAccessibilityTraitHeader | v4];
}

@end