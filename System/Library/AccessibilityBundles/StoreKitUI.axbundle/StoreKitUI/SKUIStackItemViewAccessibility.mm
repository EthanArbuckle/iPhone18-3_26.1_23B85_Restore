@interface SKUIStackItemViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SKUIStackItemViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(SKUIStackItemViewAccessibility *)self safeValueForKey:@"textView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end