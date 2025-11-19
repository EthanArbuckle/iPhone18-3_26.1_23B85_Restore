@interface SKUIProductPageTableExpandableHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation SKUIProductPageTableExpandableHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIProductPageTableExpandableHeaderView" hasInstanceVariable:@"_actionLabel" withType:"UILabel"];
  [v3 validateClass:@"SKUIProductPageTableExpandableHeaderView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SKUIProductPageTableExpandableHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  [v3 axSafelyAddObject:v4];
  v5 = [(SKUIProductPageTableExpandableHeaderViewAccessibility *)self safeValueForKey:@"_actionLabel"];
  [v3 axSafelyAddObject:v5];

  return v3;
}

@end