@interface _UIPointerContentEffectInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_ensureRelativeEffectViewOrderInContainer;
@end

@implementation _UIPointerContentEffectInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v4 = [(_UIPointerContentEffectInvertColorsAccessibility *)self safeUIViewForKey:@"pointerPortal"];
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  layer = [v4 layer];
  if (IsInvertColorsEnabled)
  {
    [AXInvertColorsAppHelper applyInvertFilterToLayer:layer];
  }

  else
  {
    [AXInvertColorsAppHelper unapplyInvertFilterToLayer:layer];
  }
}

- (void)_ensureRelativeEffectViewOrderInContainer
{
  v3.receiver = self;
  v3.super_class = _UIPointerContentEffectInvertColorsAccessibility;
  [(_UIPointerContentEffectInvertColorsAccessibility *)&v3 _ensureRelativeEffectViewOrderInContainer];
  [(_UIPointerContentEffectInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end