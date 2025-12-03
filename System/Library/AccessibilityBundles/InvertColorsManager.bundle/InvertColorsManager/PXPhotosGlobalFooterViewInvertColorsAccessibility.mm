@interface PXPhotosGlobalFooterViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation PXPhotosGlobalFooterViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  selfCopy = self;
  if (_AXSInvertColorsEnabled() && (-[PXPhotosGlobalFooterViewInvertColorsAccessibility window](selfCopy, "window"), v2 = objc_claimAutoreleasedReturnValue(), [v2 traitCollection], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "userInterfaceStyle"), v3, v2, v4 == &dword_0 + 1))
  {
    if (([(PXPhotosGlobalFooterViewInvertColorsAccessibility *)selfCopy accessibilityInvertColorsIsolatedTree]& 1) != 0)
    {
      goto LABEL_7;
    }

    [(PXPhotosGlobalFooterViewInvertColorsAccessibility *)selfCopy setAccessibilityInvertColorsIsolatedTree:1];
    layer = [(PXPhotosGlobalFooterViewInvertColorsAccessibility *)selfCopy layer];
    [AXInvertColorsAppHelper applyInvertFilterToLayer:layer];
  }

  else
  {
    [(PXPhotosGlobalFooterViewInvertColorsAccessibility *)selfCopy setAccessibilityInvertColorsIsolatedTree:0];
    layer = [(PXPhotosGlobalFooterViewInvertColorsAccessibility *)selfCopy layer];
    [AXInvertColorsAppHelper unapplyInvertFilterToLayer:layer];
  }

LABEL_7:
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXPhotosGlobalFooterViewInvertColorsAccessibility;
  [(PXPhotosGlobalFooterViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(PXPhotosGlobalFooterViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end