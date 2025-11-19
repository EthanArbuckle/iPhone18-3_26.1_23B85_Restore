@interface PUVideoPlayerViewInvertColorsAccessibility
- (void)_accessibilityForceInvertColorsUpdateFlagForSuperview:(id)a3;
- (void)layoutSubviews;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation PUVideoPlayerViewInvertColorsAccessibility

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PUVideoPlayerViewInvertColorsAccessibility;
  [(PUVideoPlayerViewInvertColorsAccessibility *)&v5 layoutSubviews];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 superview];
  [(PUVideoPlayerViewInvertColorsAccessibility *)self _accessibilityForceInvertColorsUpdateFlagForSuperview:v4];
}

- (void)willMoveToSuperview:(id)a3
{
  v5.receiver = self;
  v5.super_class = PUVideoPlayerViewInvertColorsAccessibility;
  v4 = a3;
  [(PUVideoPlayerViewInvertColorsAccessibility *)&v5 willMoveToSuperview:v4];
  [(PUVideoPlayerViewInvertColorsAccessibility *)self _accessibilityForceInvertColorsUpdateFlagForSuperview:v4, v5.receiver, v5.super_class];
}

- (void)_accessibilityForceInvertColorsUpdateFlagForSuperview:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = [v5 accessibilityIgnoresInvertColors];
      if (v6)
      {
        break;
      }

      v7 = [v5 superview];

      v5 = v7;
    }

    while (v7);
  }

  else
  {
    v6 = 0;
  }

  [(PUVideoPlayerViewInvertColorsAccessibility *)self _setAncestorIgnoresInvertColors:v6];

  [AXInvertColorsAppHelper toggleInvertColors:self];
}

@end