@interface _UIPortalViewInvertColorsAccessibility
- (void)setSourceView:(id)a3;
@end

@implementation _UIPortalViewInvertColorsAccessibility

- (void)setSourceView:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIPortalViewInvertColorsAccessibility;
  v4 = a3;
  [(_UIPortalViewInvertColorsAccessibility *)&v6 setSourceView:v4];
  v5 = [v4 accessibilityIgnoresInvertColors];

  [(_UIPortalViewInvertColorsAccessibility *)self setAccessibilityIgnoresInvertColors:v5];
}

@end