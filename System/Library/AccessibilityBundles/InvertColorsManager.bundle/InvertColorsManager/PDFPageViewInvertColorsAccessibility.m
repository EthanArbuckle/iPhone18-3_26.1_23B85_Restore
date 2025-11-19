@interface PDFPageViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)didMoveToWindow;
@end

@implementation PDFPageViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v5 = self;
  v2 = [(PDFPageViewInvertColorsAccessibility *)v5 window];
  if ([AXInvertColorsAppHelper hasInvertFilter:v2])
  {
    v3 = _AXSInvertColorsEnabled();

    if (v3)
    {
      [(PDFPageViewInvertColorsAccessibility *)v5 setAccessibilityInvertColorsIsolatedTree:1];
      v4 = [(PDFPageViewInvertColorsAccessibility *)v5 layer];
      [AXInvertColorsAppHelper applyInvertFilterToLayer:v4];
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(PDFPageViewInvertColorsAccessibility *)v5 setAccessibilityInvertColorsIsolatedTree:0];
  v4 = [(PDFPageViewInvertColorsAccessibility *)v5 layer];
  [AXInvertColorsAppHelper unapplyInvertFilterToLayer:v4];
LABEL_6:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PDFPageViewInvertColorsAccessibility;
  [(PDFPageViewInvertColorsAccessibility *)&v3 didMoveToWindow];
  [(PDFPageViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end