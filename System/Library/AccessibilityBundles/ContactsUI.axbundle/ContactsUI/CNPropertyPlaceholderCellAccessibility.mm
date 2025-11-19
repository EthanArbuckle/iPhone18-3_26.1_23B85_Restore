@interface CNPropertyPlaceholderCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CNPropertyPlaceholderCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CNPropertyPlaceholderCellAccessibility *)self safeValueForKey:@"label"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end