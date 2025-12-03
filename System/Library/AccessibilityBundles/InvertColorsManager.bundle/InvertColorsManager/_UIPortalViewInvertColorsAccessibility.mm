@interface _UIPortalViewInvertColorsAccessibility
- (void)setSourceView:(id)view;
@end

@implementation _UIPortalViewInvertColorsAccessibility

- (void)setSourceView:(id)view
{
  v6.receiver = self;
  v6.super_class = _UIPortalViewInvertColorsAccessibility;
  viewCopy = view;
  [(_UIPortalViewInvertColorsAccessibility *)&v6 setSourceView:viewCopy];
  accessibilityIgnoresInvertColors = [viewCopy accessibilityIgnoresInvertColors];

  [(_UIPortalViewInvertColorsAccessibility *)self setAccessibilityIgnoresInvertColors:accessibilityIgnoresInvertColors];
}

@end