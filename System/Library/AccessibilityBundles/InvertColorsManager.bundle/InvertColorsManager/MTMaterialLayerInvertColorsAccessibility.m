@interface MTMaterialLayerInvertColorsAccessibility
- (void)_configureIfNecessaryWithSettingsInterpolator:(id)a3;
@end

@implementation MTMaterialLayerInvertColorsAccessibility

- (void)_configureIfNecessaryWithSettingsInterpolator:(id)a3
{
  v4 = a3;
  v5 = [(MTMaterialLayerInvertColorsAccessibility *)self valueForKeyPath:@"filters.InvertColorsDoubleInvert"];

  v7.receiver = self;
  v7.super_class = MTMaterialLayerInvertColorsAccessibility;
  [(MTMaterialLayerInvertColorsAccessibility *)&v7 _configureIfNecessaryWithSettingsInterpolator:v4];

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