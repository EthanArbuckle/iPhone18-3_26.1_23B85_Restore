@interface _UIContextMenuUIControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation _UIContextMenuUIControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(_UIContextMenuUIControllerInvertColorsAccessibility *)self safeUIViewForKey:@"_backgroundEffectView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end