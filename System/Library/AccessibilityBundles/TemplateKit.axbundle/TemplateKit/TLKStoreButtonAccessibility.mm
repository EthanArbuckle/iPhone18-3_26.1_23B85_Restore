@interface TLKStoreButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation TLKStoreButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(TLKStoreButtonAccessibility *)self safeValueForKey:@"label"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end