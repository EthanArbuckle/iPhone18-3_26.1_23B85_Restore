@interface CNPropertyPlaceholderCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CNPropertyPlaceholderCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CNPropertyPlaceholderCellAccessibility *)self safeValueForKey:@"label"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end