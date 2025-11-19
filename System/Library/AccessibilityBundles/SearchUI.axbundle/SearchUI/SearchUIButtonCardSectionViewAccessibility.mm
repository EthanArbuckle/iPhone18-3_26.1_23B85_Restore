@interface SearchUIButtonCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SearchUIButtonCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TLKButtonView"];
  [v3 validateClass:@"SearchUIButtonCardSectionView" hasProperty:@"contentView" withType:"@"];
  [v3 validateClass:@"TLKButtonView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SearchUIButtonCardSectionViewAccessibility *)self safeValueForKey:@"contentView"];
  v3 = [v2 safeStringForKey:@"title"];

  return v3;
}

@end