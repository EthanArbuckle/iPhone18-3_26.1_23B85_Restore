@interface SearchUITableRowCardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SearchUITableRowCardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUICardSectionView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TLKGridRowView" hasInstanceMethod:@"labels" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SearchUITableRowCardViewAccessibility *)self safeValueForKey:@"contentView"];
  v3 = [v2 safeArrayForKey:@"labels"];
  v4 = MEMORY[0x29ED341C0]();

  return v4;
}

@end