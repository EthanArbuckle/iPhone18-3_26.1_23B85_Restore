@interface SUUIStackItemViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SUUIStackItemViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(SUUIStackItemViewAccessibility *)self safeValueForKey:@"textView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end