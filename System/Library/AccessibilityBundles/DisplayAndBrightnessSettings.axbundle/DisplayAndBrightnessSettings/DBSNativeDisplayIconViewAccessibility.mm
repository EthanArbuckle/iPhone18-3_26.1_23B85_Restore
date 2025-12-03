@interface DBSNativeDisplayIconViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation DBSNativeDisplayIconViewAccessibility

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = DBSNativeDisplayIconViewAccessibility;
  accessibilityTraits = [(DBSNativeDisplayIconViewAccessibility *)&v8 accessibilityTraits];
  v4 = [(DBSNativeDisplayIconViewAccessibility *)self safeValueForKey:@"nameField"];
  _accessibilityViewIsVisible = [v4 _accessibilityViewIsVisible];

  v6 = MEMORY[0x29EDC7FC0];
  if (!_accessibilityViewIsVisible)
  {
    v6 = MEMORY[0x29EDC7F70];
  }

  return *v6 | accessibilityTraits;
}

@end