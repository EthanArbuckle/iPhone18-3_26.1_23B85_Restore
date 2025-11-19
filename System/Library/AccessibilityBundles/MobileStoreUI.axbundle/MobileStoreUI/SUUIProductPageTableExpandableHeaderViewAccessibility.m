@interface SUUIProductPageTableExpandableHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation SUUIProductPageTableExpandableHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIProductPageTableExpandableHeaderView" hasInstanceVariable:@"_actionLabel" withType:"UILabel"];
  [v3 validateClass:@"SUUIProductPageTableExpandableHeaderView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SUUIProductPageTableExpandableHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  [v3 axSafelyAddObject:v4];
  v5 = [(SUUIProductPageTableExpandableHeaderViewAccessibility *)self safeValueForKey:@"_actionLabel"];
  [v3 axSafelyAddObject:v5];

  return v3;
}

@end