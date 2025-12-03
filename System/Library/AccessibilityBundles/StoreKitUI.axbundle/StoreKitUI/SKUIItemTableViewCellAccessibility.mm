@interface SKUIItemTableViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SKUIItemTableViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SKUIItemTableViewCellAccessibility *)self safeValueForKey:@"layout"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end