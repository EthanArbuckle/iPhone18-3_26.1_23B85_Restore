@interface DBSExternalDisplayIconViewAccessibility
- (id)accessibilityLabel;
@end

@implementation DBSExternalDisplayIconViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(DBSExternalDisplayIconViewAccessibility *)self safeValueForKey:@"nameField"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end