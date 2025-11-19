@interface SBHVisualStylingViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_updateVisualStyling;
@end

@implementation SBHVisualStylingViewInvertColorsAccessibility

- (void)_updateVisualStyling
{
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v4 = _NSConcreteStackBlock;
    v5 = 3221225472;
    v6 = sub_17878;
    v7 = &unk_44540;
    v8 = self;
    AXPerformSafeBlock();
  }

  else
  {
    v3.receiver = self;
    v3.super_class = SBHVisualStylingViewInvertColorsAccessibility;
    [(SBHVisualStylingViewInvertColorsAccessibility *)&v3 _updateVisualStyling];
  }
}

- (void)_accessibilityLoadInvertColors
{
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v3 = v6;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v4 = sub_17938;
  }

  else
  {
    v3 = v5;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v4 = sub_17940;
  }

  v3[2] = v4;
  v3[3] = &unk_44540;
  v3[4] = self;
  AXPerformSafeBlock();
}

@end