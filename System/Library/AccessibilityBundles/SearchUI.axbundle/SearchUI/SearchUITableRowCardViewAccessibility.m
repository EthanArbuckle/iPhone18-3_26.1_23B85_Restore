@interface SearchUITableRowCardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SearchUITableRowCardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUICardSectionView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKGridRowView" hasInstanceMethod:@"labels" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SearchUITableRowCardViewAccessibility *)self safeValueForKey:@"contentView"];
  v3 = [v2 safeArrayForKey:@"labels"];
  v4 = MEMORY[0x29ED341C0]();

  return v4;
}

@end