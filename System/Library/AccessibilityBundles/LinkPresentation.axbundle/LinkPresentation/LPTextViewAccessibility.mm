@interface LPTextViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation LPTextViewAccessibility

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(LPTextViewAccessibility *)self accessibilityLabel];
  v3 = [accessibilityLabel length] != 0;

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(LPTextViewAccessibility *)self safeValueForKey:@"_textView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end