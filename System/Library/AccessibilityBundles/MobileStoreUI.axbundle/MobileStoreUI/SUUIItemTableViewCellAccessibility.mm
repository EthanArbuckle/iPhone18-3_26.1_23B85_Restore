@interface SUUIItemTableViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SUUIItemTableViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SUUIItemTableViewCellAccessibility *)self safeValueForKey:@"layout"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end