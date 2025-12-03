@interface CKImageBalloonViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)clearFilters;
- (void)layoutSubviews;
@end

@implementation CKImageBalloonViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v3 = [(CKImageBalloonViewInvertColorsAccessibility *)self safeValueForKey:@"tailMask"];
  v4 = __UIAccessibilityCastAsClass();

  layer = [v4 layer];
  [AXInvertColorsAppHelper toggleInvertColors:layer];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKImageBalloonViewInvertColorsAccessibility;
  [(CKImageBalloonViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(CKImageBalloonViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)clearFilters
{
  v3.receiver = self;
  v3.super_class = CKImageBalloonViewInvertColorsAccessibility;
  [(CKImageBalloonViewInvertColorsAccessibility *)&v3 clearFilters];
  [(CKImageBalloonViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
  [(CKImageBalloonViewInvertColorsAccessibility *)self setAccessibilityIgnoresInvertColors:0];
  [(CKImageBalloonViewInvertColorsAccessibility *)self setAccessibilityIgnoresInvertColors:1];
}

@end