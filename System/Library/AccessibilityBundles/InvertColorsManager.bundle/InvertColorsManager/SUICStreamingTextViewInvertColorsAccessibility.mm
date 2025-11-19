@interface SUICStreamingTextViewInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation SUICStreamingTextViewInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  objc_opt_class();
  v3 = [(SUICStreamingTextViewInvertColorsAccessibility *)self safeValueForKey:@"_endTextColor"];
  v4 = __UIAccessibilityCastAsClass();

  AXColorGetLuma();
  v6 = v5 > 0.5;

  return v6;
}

@end