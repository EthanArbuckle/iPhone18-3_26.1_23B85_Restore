@interface SKUIStackItemViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SKUIStackItemViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(SKUIStackItemViewAccessibility *)self safeValueForKey:@"textView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end