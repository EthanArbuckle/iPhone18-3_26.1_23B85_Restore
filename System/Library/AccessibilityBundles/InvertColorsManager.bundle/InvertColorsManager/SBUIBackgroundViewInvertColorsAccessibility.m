@interface SBUIBackgroundViewInvertColorsAccessibility
- (id)_backgroundColorForDarkenAlpha:(double)a3 andProgress:(double)a4;
- (void)beginTransitionToBackgroundStyle:(int64_t)a3;
@end

@implementation SBUIBackgroundViewInvertColorsAccessibility

- (id)_backgroundColorForDarkenAlpha:(double)a3 andProgress:(double)a4
{
  v7.receiver = self;
  v7.super_class = SBUIBackgroundViewInvertColorsAccessibility;
  v4 = [(SBUIBackgroundViewInvertColorsAccessibility *)&v7 _backgroundColorForDarkenAlpha:a3 andProgress:a4];
  if (_AXSInvertColorsEnabled())
  {
    v5 = AXInvertColorForColorPreservingAlpha();

    v4 = v5;
  }

  return v4;
}

- (void)beginTransitionToBackgroundStyle:(int64_t)a3
{
  if (a3 == 8)
  {
    if (_AXSInvertColorsEnabled())
    {
      a3 = 4;
    }

    else
    {
      a3 = 8;
    }
  }

  v4.receiver = self;
  v4.super_class = SBUIBackgroundViewInvertColorsAccessibility;
  [(SBUIBackgroundViewInvertColorsAccessibility *)&v4 beginTransitionToBackgroundStyle:a3];
}

@end