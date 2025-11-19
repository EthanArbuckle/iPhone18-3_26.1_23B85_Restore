@interface PageLabelViewAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PageLabelViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = PageLabelViewAccessibility;
  [(PageLabelViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(PageLabelViewAccessibility *)self safeSwiftValueForKey:@"label"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 text];
  [v4 setAccessibilityLabel:v5];
}

- (id)accessibilityValue
{
  v3 = [(PageLabelViewAccessibility *)self safeSwiftValueForKey:@"label"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityLabel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PageLabelViewAccessibility;
    v5 = [(PageLabelViewAccessibility *)&v8 accessibilityValue];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PageLabelViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PageLabelViewAccessibility *)&v3 accessibilityTraits];
}

@end