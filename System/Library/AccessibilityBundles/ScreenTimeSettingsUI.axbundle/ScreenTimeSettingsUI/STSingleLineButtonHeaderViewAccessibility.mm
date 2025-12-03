@interface STSingleLineButtonHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation STSingleLineButtonHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STSingleLineButtonHeaderView" isKindOfClass:@"STSingleLineHeaderView"];
  [validationsCopy validateClass:@"STSingleLineHeaderView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STSingleLineButtonHeaderView" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = [(STSingleLineButtonHeaderViewAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
  v5 = MEMORY[0x29EDB8D80];
  v6 = [(STSingleLineButtonHeaderViewAccessibility *)self safeValueForKey:@"button"];
  v7 = [v5 axArrayByIgnoringNilElementsWithCount:{2, v3, v6}];

  return v7;
}

@end