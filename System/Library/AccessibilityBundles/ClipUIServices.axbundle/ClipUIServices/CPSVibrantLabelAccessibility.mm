@interface CPSVibrantLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation CPSVibrantLabelAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(CPSVibrantLabelAccessibility *)self safeValueForKey:@"_label"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v4 accessibilityLabel];

  return accessibilityLabel;
}

@end