@interface SearchUIButtonCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SearchUIButtonCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TLKButtonView"];
  [validationsCopy validateClass:@"SearchUIButtonCardSectionView" hasProperty:@"contentView" withType:"@"];
  [validationsCopy validateClass:@"TLKButtonView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SearchUIButtonCardSectionViewAccessibility *)self safeValueForKey:@"contentView"];
  v3 = [v2 safeStringForKey:@"title"];

  return v3;
}

@end