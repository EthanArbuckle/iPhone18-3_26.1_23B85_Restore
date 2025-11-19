@interface TPLCDViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation TPLCDViewAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(TPLCDViewAccessibility *)self accessibilityLabel];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(TPLCDViewAccessibility *)self safeValueForKey:@"_textView"];
  v4 = [v3 accessibilityLabel];

  v5 = [(TPLCDViewAccessibility *)self safeValueForKey:@"_labelView"];
  v6 = [v5 accessibilityLabel];

  v7 = __UIAXStringForVariables();

  return v7;
}

@end