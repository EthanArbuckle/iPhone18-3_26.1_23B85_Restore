@interface MFComposeTextColorButtonAccessibility
- (id)accessibilityValue;
@end

@implementation MFComposeTextColorButtonAccessibility

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(MFComposeTextColorButtonAccessibility *)self safeValueForKey:@"color"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = AXColorStringForColor();

  return v5;
}

@end