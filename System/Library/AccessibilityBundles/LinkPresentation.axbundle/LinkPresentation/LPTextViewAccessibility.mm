@interface LPTextViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation LPTextViewAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(LPTextViewAccessibility *)self accessibilityLabel];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(LPTextViewAccessibility *)self safeValueForKey:@"_textView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end