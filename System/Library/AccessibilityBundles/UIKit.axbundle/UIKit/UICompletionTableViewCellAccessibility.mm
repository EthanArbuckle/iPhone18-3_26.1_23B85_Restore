@interface UICompletionTableViewCellAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation UICompletionTableViewCellAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(UICompletionTableViewCellAccessibility *)self safeValueForKey:@"_tableCell"];
  isAccessibilityElement = [v3 isAccessibilityElement];
  MEMORY[0x29EDC9740](v3);
  return isAccessibilityElement;
}

- (id)accessibilityLabel
{
  v3 = [(UICompletionTableViewCellAccessibility *)self safeValueForKey:@"_tableCell"];
  _accessibilityAXAttributedLabel = [v3 _accessibilityAXAttributedLabel];
  MEMORY[0x29EDC9740](v3);

  return _accessibilityAXAttributedLabel;
}

- (id)accessibilityValue
{
  v3 = [(UICompletionTableViewCellAccessibility *)self safeValueForKey:@"_tableCell"];
  _accessibilityAXAttributedValue = [v3 _accessibilityAXAttributedValue];
  MEMORY[0x29EDC9740](v3);

  return _accessibilityAXAttributedValue;
}

@end