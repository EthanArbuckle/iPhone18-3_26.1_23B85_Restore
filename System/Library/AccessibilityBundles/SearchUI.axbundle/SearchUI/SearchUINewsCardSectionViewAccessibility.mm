@interface SearchUINewsCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation SearchUINewsCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUINewsCardSectionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUINewsCardSectionView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUINewsCardSectionView" hasInstanceMethod:@"providerLabel" withFullSignature:{"@", 0}];
}

@end