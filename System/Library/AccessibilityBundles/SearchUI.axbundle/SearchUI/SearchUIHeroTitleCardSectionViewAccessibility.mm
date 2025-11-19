@interface SearchUIHeroTitleCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SearchUIHeroTitleCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUIHeroTitleCardSectionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIHeroTitleCardSectionView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SearchUIHeroTitleCardSectionViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v6 = [(SearchUIHeroTitleCardSectionViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end