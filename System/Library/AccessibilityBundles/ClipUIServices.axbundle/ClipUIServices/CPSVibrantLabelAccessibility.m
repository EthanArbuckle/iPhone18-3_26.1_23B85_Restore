@interface CPSVibrantLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation CPSVibrantLabelAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(CPSVibrantLabelAccessibility *)self safeValueForKey:@"_label"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityLabel];

  return v5;
}

@end