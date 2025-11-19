@interface SPUIBoxViewInvertColorsAccessibility
- (BOOL)_accessibilityFirstLayerInvertColors;
@end

@implementation SPUIBoxViewInvertColorsAccessibility

- (BOOL)_accessibilityFirstLayerInvertColors
{
  v2 = _AXSInvertColorsEnabled();
  if (v2)
  {
    LOBYTE(v2) = _AXSInvertColorsEnabledGlobalCached() == 0;
  }

  return v2;
}

@end