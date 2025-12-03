@interface SearchUIMiniCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation SearchUIMiniCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUIMiniCardSectionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIMiniCardSectionView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIMiniCardSectionView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
}

@end