@interface SKUIProductPageTableExpandableHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation SKUIProductPageTableExpandableHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIProductPageTableExpandableHeaderView" hasInstanceVariable:@"_actionLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SKUIProductPageTableExpandableHeaderView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SKUIProductPageTableExpandableHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  [array axSafelyAddObject:v4];
  v5 = [(SKUIProductPageTableExpandableHeaderViewAccessibility *)self safeValueForKey:@"_actionLabel"];
  [array axSafelyAddObject:v5];

  return array;
}

@end