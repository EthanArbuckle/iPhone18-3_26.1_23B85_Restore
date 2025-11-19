@interface UICompletionTableViewCellAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation UICompletionTableViewCellAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(UICompletionTableViewCellAccessibility *)self safeValueForKey:@"_tableCell"];
  v4 = [v3 isAccessibilityElement];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(UICompletionTableViewCellAccessibility *)self safeValueForKey:@"_tableCell"];
  v4 = [v3 _accessibilityAXAttributedLabel];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(UICompletionTableViewCellAccessibility *)self safeValueForKey:@"_tableCell"];
  v4 = [v3 _accessibilityAXAttributedValue];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

@end