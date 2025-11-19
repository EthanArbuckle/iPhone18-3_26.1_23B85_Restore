@interface SKUIItemTableViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SKUIItemTableViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SKUIItemTableViewCellAccessibility *)self safeValueForKey:@"layout"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end