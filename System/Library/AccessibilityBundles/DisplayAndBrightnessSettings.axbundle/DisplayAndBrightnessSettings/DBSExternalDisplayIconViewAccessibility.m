@interface DBSExternalDisplayIconViewAccessibility
- (id)accessibilityLabel;
@end

@implementation DBSExternalDisplayIconViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(DBSExternalDisplayIconViewAccessibility *)self safeValueForKey:@"nameField"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end