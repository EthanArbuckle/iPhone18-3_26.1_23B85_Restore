@interface NotchedPlatformSliderAccessibility
- (id)accessibilityValue;
@end

@implementation NotchedPlatformSliderAccessibility

- (id)accessibilityValue
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 value];
  v3 = AXFormatFloatWithPercentage();

  return v3;
}

@end