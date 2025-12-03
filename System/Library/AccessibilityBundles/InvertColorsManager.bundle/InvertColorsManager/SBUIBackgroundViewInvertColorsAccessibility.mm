@interface SBUIBackgroundViewInvertColorsAccessibility
- (id)_backgroundColorForDarkenAlpha:(double)alpha andProgress:(double)progress;
- (void)beginTransitionToBackgroundStyle:(int64_t)style;
@end

@implementation SBUIBackgroundViewInvertColorsAccessibility

- (id)_backgroundColorForDarkenAlpha:(double)alpha andProgress:(double)progress
{
  v7.receiver = self;
  v7.super_class = SBUIBackgroundViewInvertColorsAccessibility;
  v4 = [(SBUIBackgroundViewInvertColorsAccessibility *)&v7 _backgroundColorForDarkenAlpha:alpha andProgress:progress];
  if (_AXSInvertColorsEnabled())
  {
    v5 = AXInvertColorForColorPreservingAlpha();

    v4 = v5;
  }

  return v4;
}

- (void)beginTransitionToBackgroundStyle:(int64_t)style
{
  if (style == 8)
  {
    if (_AXSInvertColorsEnabled())
    {
      style = 4;
    }

    else
    {
      style = 8;
    }
  }

  v4.receiver = self;
  v4.super_class = SBUIBackgroundViewInvertColorsAccessibility;
  [(SBUIBackgroundViewInvertColorsAccessibility *)&v4 beginTransitionToBackgroundStyle:style];
}

@end