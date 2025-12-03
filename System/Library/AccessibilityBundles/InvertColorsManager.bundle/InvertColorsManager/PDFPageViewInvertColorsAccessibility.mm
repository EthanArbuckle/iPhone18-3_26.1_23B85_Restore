@interface PDFPageViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)didMoveToWindow;
@end

@implementation PDFPageViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  selfCopy = self;
  window = [(PDFPageViewInvertColorsAccessibility *)selfCopy window];
  if ([AXInvertColorsAppHelper hasInvertFilter:window])
  {
    v3 = _AXSInvertColorsEnabled();

    if (v3)
    {
      [(PDFPageViewInvertColorsAccessibility *)selfCopy setAccessibilityInvertColorsIsolatedTree:1];
      layer = [(PDFPageViewInvertColorsAccessibility *)selfCopy layer];
      [AXInvertColorsAppHelper applyInvertFilterToLayer:layer];
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(PDFPageViewInvertColorsAccessibility *)selfCopy setAccessibilityInvertColorsIsolatedTree:0];
  layer = [(PDFPageViewInvertColorsAccessibility *)selfCopy layer];
  [AXInvertColorsAppHelper unapplyInvertFilterToLayer:layer];
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