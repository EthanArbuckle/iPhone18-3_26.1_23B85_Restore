@interface SPUISearchHeaderInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SPUISearchHeaderInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SPUISearchHeaderInvertColorsAccessibility;
  [(SPUISearchHeaderInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SPUISearchHeaderInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  if (_AXSInvertColorsEnabledGlobalCached())
  {
    objc_opt_class();
    v3 = [(SPUISearchHeaderInvertColorsAccessibility *)self safeValueForKey:@"cancelButton"];
    v4 = __UIAccessibilityCastAsClass();

    v5 = +[UIColor whiteColor];
    titleLabel = [v4 titleLabel];
    [titleLabel setTextColor:v5];
  }

  else
  {
    AXPerformSafeBlock();
  }
}

@end