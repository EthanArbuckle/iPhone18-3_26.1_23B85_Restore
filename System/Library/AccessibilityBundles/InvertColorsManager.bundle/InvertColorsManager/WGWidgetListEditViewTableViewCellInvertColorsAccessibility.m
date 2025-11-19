@interface WGWidgetListEditViewTableViewCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation WGWidgetListEditViewTableViewCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(WGWidgetListEditViewTableViewCellInvertColorsAccessibility *)self safeValueForKey:@"imageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = WGWidgetListEditViewTableViewCellInvertColorsAccessibility;
  [(WGWidgetListEditViewTableViewCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(WGWidgetListEditViewTableViewCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end