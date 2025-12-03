@interface SearchUIHeroTitleCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SearchUIHeroTitleCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUIHeroTitleCardSectionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIHeroTitleCardSectionView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SearchUIHeroTitleCardSectionViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v6 = [(SearchUIHeroTitleCardSectionViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end