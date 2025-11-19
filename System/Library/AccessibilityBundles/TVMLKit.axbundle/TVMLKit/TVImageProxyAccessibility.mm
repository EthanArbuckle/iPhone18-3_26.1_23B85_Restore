@interface TVImageProxyAccessibility
- (id)accessibilityLabel;
@end

@implementation TVImageProxyAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(TVImageProxyAccessibility *)self safeValueForKey:@"object"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityRetrieveLabelForSource(v4);

  return v5;
}

@end