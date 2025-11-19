@interface TLKStoreButtonInvertColorsAccessibility
- (TLKStoreButtonInvertColorsAccessibility)init;
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation TLKStoreButtonInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 safeValueForKey:@"label"];
    if (v4)
    {
      if (_AXSInvertColorsEnabledGlobalCached())
      {
        v5 = +[UIColor blackColor];
        [v3 setBackgroundColor:v5];

        v6 = +[UIColor whiteColor];
        [v4 setTextColor:v6];
      }

      else
      {
        AXPerformSafeBlock();
      }
    }
  }
}

- (TLKStoreButtonInvertColorsAccessibility)init
{
  v5.receiver = self;
  v5.super_class = TLKStoreButtonInvertColorsAccessibility;
  v2 = [(TLKStoreButtonInvertColorsAccessibility *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TLKStoreButtonInvertColorsAccessibility *)v2 _accessibilityLoadInvertColors];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TLKStoreButtonInvertColorsAccessibility;
  [(TLKStoreButtonInvertColorsAccessibility *)&v3 layoutSubviews];
  [(TLKStoreButtonInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end