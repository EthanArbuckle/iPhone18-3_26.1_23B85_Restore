@interface MKAttributionLabelAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MKAttributionLabelAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(MKAttributionLabelAccessibility *)self safeValueForKey:@"_innerText"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 string];

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MKAttributionLabelAccessibility;
  return *MEMORY[0x29EDC7F98] | [(MKAttributionLabelAccessibility *)&v3 accessibilityTraits];
}

@end