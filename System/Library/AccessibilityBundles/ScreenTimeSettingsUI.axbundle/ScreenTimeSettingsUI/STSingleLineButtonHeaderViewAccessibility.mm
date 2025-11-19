@interface STSingleLineButtonHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation STSingleLineButtonHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STSingleLineButtonHeaderView" isKindOfClass:@"STSingleLineHeaderView"];
  [v3 validateClass:@"STSingleLineHeaderView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STSingleLineButtonHeaderView" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = [(STSingleLineButtonHeaderViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v4];
  v5 = MEMORY[0x29EDB8D80];
  v6 = [(STSingleLineButtonHeaderViewAccessibility *)self safeValueForKey:@"button"];
  v7 = [v5 axArrayByIgnoringNilElementsWithCount:{2, v3, v6}];

  return v7;
}

@end