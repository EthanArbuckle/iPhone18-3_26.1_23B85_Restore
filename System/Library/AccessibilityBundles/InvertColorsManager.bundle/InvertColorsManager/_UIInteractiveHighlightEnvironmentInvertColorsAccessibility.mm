@interface _UIInteractiveHighlightEnvironmentInvertColorsAccessibility
- (id)newViewRecordForView:(id)view options:(unint64_t)options;
@end

@implementation _UIInteractiveHighlightEnvironmentInvertColorsAccessibility

- (id)newViewRecordForView:(id)view options:(unint64_t)options
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = _UIInteractiveHighlightEnvironmentInvertColorsAccessibility;
  v7 = [(_UIInteractiveHighlightEnvironmentInvertColorsAccessibility *)&v12 newViewRecordForView:viewCopy options:options];
  if (_AXSInvertColorsEnabled())
  {
    objc_opt_class();
    v8 = __UIAccessibilityCastAsClass();
    accessibilityIgnoresInvertColors = [v8 accessibilityIgnoresInvertColors];

    if (accessibilityIgnoresInvertColors)
    {
      v10 = [v7 safeUIViewForKey:@"_effectView"];
      [v10 setAccessibilityIgnoresInvertColors:1];
    }
  }

  return v7;
}

@end