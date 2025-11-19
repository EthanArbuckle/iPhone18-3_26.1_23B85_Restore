@interface SUUIStackItemViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SUUIStackItemViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(SUUIStackItemViewAccessibility *)self safeValueForKey:@"textView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end