@interface SearchUINewsCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation SearchUINewsCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUINewsCardSectionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUINewsCardSectionView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUINewsCardSectionView" hasInstanceMethod:@"providerLabel" withFullSignature:{"@", 0}];
}

@end