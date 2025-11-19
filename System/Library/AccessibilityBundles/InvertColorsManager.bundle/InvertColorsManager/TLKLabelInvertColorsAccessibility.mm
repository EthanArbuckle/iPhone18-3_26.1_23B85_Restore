@interface TLKLabelInvertColorsAccessibility
- (TLKLabelInvertColorsAccessibility)initWithProminence:(unint64_t)a3;
- (void)_accessibilityLoadInvertColors;
@end

@implementation TLKLabelInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  if (_AXSInvertColorsEnabledGlobalCached())
  {
    AXPerformSafeBlock();
  }
}

- (TLKLabelInvertColorsAccessibility)initWithProminence:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = TLKLabelInvertColorsAccessibility;
  v3 = [(TLKLabelInvertColorsAccessibility *)&v6 initWithProminence:a3];
  v4 = v3;
  if (v3)
  {
    [(TLKLabelInvertColorsAccessibility *)v3 _accessibilityLoadInvertColors];
  }

  return v4;
}

@end