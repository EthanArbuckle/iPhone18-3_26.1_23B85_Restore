@interface BFFPaneHeaderViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)setIcon:(id)a3;
@end

@implementation BFFPaneHeaderViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(BFFPaneHeaderViewInvertColorsAccessibility *)self safeUIViewForKey:@"_iconView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)setIcon:(id)a3
{
  v4.receiver = self;
  v4.super_class = BFFPaneHeaderViewInvertColorsAccessibility;
  [(BFFPaneHeaderViewInvertColorsAccessibility *)&v4 setIcon:a3];
  [(BFFPaneHeaderViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end