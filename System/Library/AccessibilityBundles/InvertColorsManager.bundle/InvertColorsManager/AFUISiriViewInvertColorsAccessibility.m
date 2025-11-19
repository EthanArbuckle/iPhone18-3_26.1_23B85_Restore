@interface AFUISiriViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation AFUISiriViewInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AFUISiriViewInvertColorsAccessibility;
  [(AFUISiriViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(AFUISiriViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  if (![AXInvertColorsManager objectIsOnCarScreen:self])
  {
    IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
    v4 = [(AFUISiriViewInvertColorsAccessibility *)self safeUIViewForKey:@"_backdropView"];
    [v4 setHidden:IsInvertColorsEnabled];
  }
}

@end