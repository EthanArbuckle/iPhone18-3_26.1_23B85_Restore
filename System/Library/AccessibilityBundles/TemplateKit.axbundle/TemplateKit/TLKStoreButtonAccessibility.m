@interface TLKStoreButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation TLKStoreButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(TLKStoreButtonAccessibility *)self safeValueForKey:@"label"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end