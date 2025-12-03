@interface MTMaterialLayerInvertColorsAccessibility
- (void)_configureIfNecessaryWithSettingsInterpolator:(id)interpolator;
@end

@implementation MTMaterialLayerInvertColorsAccessibility

- (void)_configureIfNecessaryWithSettingsInterpolator:(id)interpolator
{
  interpolatorCopy = interpolator;
  v5 = [(MTMaterialLayerInvertColorsAccessibility *)self valueForKeyPath:@"filters.InvertColorsDoubleInvert"];

  v7.receiver = self;
  v7.super_class = MTMaterialLayerInvertColorsAccessibility;
  [(MTMaterialLayerInvertColorsAccessibility *)&v7 _configureIfNecessaryWithSettingsInterpolator:interpolatorCopy];

  if (!_AXSInvertColorsEnabledGlobalCached() && v5)
  {
    v6 = [(MTMaterialLayerInvertColorsAccessibility *)self valueForKeyPath:@"filters.InvertColorsDoubleInvert"];

    if (!v6)
    {
      [AXInvertColorsAppHelper toggleInvertColors:self moveFilterToFront:1];
    }
  }
}

@end