@interface TLKDescriptionViewInvertColorsAccessibility
- (TLKDescriptionViewInvertColorsAccessibility)init;
- (void)_accessibilityLoadInvertColors;
@end

@implementation TLKDescriptionViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(TLKDescriptionViewInvertColorsAccessibility *)self safeUIViewForKey:@"imageView"];
  [v2 setAccessibilityIgnoresInvertColors:_AXSInvertColorsEnabledGlobalCached() != 0];
}

- (TLKDescriptionViewInvertColorsAccessibility)init
{
  v4.receiver = self;
  v4.super_class = TLKDescriptionViewInvertColorsAccessibility;
  v2 = [(TLKDescriptionViewInvertColorsAccessibility *)&v4 init];
  [(TLKDescriptionViewInvertColorsAccessibility *)v2 _accessibilityLoadInvertColors];

  return v2;
}

@end