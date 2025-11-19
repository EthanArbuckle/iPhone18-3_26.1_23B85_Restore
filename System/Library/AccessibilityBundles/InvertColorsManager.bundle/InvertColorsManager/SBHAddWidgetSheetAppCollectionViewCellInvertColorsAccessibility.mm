@interface SBHAddWidgetSheetAppCollectionViewCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SBHAddWidgetSheetAppCollectionViewCellInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBHAddWidgetSheetAppCollectionViewCellInvertColorsAccessibility;
  [(SBHAddWidgetSheetAppCollectionViewCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SBHAddWidgetSheetAppCollectionViewCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v3 = _AXSInvertColorsEnabledGlobalCached() != 0;
  v4 = [(SBHAddWidgetSheetAppCollectionViewCellInvertColorsAccessibility *)self safeUIViewForKey:@"_imageView"];
  [v4 setAccessibilityIgnoresInvertColors:v3];
}

@end