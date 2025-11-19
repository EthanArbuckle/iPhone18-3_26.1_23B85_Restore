@interface SUUIItemTableViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SUUIItemTableViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SUUIItemTableViewCellAccessibility *)self safeValueForKey:@"layout"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end