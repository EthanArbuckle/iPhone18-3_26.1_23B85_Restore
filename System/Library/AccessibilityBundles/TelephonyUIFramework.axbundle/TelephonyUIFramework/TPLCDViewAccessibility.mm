@interface TPLCDViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation TPLCDViewAccessibility

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(TPLCDViewAccessibility *)self accessibilityLabel];
  v3 = [accessibilityLabel length] != 0;

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(TPLCDViewAccessibility *)self safeValueForKey:@"_textView"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(TPLCDViewAccessibility *)self safeValueForKey:@"_labelView"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = __UIAXStringForVariables();

  return v7;
}

@end