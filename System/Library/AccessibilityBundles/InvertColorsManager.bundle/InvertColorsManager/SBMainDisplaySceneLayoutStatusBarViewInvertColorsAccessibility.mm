@interface SBMainDisplaySceneLayoutStatusBarViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_layoutStatusBarForOrientation:(int64_t)orientation;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SBMainDisplaySceneLayoutStatusBarViewInvertColorsAccessibility

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = SBMainDisplaySceneLayoutStatusBarViewInvertColorsAccessibility;
  [(SBMainDisplaySceneLayoutStatusBarViewInvertColorsAccessibility *)&v4 traitCollectionDidChange:change];
  [(SBMainDisplaySceneLayoutStatusBarViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_layoutStatusBarForOrientation:(int64_t)orientation
{
  v4.receiver = self;
  v4.super_class = SBMainDisplaySceneLayoutStatusBarViewInvertColorsAccessibility;
  [(SBMainDisplaySceneLayoutStatusBarViewInvertColorsAccessibility *)&v4 _layoutStatusBarForOrientation:orientation];
  [(SBMainDisplaySceneLayoutStatusBarViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  selfCopy = self;
  window = [(SBMainDisplaySceneLayoutStatusBarViewInvertColorsAccessibility *)selfCopy window];
  traitCollection = [window traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v5 = selfCopy;
  if (userInterfaceStyle != &dword_0 + 2)
  {
    v6 = [(SBMainDisplaySceneLayoutStatusBarViewInvertColorsAccessibility *)selfCopy safeUIViewForKey:@"_statusBar"];
    _accessibilityAppliesInvertColors = [v6 _accessibilityAppliesInvertColors];
    layer = [v6 layer];
    if (_accessibilityAppliesInvertColors)
    {
      [AXInvertColorsAppHelper applyInvertFilterToLayer:layer];
    }

    else
    {
      [AXInvertColorsAppHelper unapplyInvertFilterToLayer:layer];
    }

    v5 = selfCopy;
  }
}

@end