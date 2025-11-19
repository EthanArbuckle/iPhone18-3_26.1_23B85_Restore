@interface SearchUIMiniCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation SearchUIMiniCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUIMiniCardSectionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIMiniCardSectionView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIMiniCardSectionView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
}

@end