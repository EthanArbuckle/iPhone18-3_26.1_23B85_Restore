@interface NTKGladiusColorPalette
- (BOOL)_isLightColor;
- (id)_background;
- (id)_hourMinuteHandStrokeDay;
- (id)_hourMinuteHandStrokeNight;
- (id)_hourTickNight;
- (id)_minuteTickNight;
- (id)_topComplicationDay;
- (id)_topComplicationNight;
- (id)swatch;
- (void)configurationDidChange:(id)a3;
@end

@implementation NTKGladiusColorPalette

- (void)configurationDidChange:(id)a3
{
  v3.receiver = self;
  v3.super_class = NTKGladiusColorPalette;
  [(NTKGladiusColorPalette *)&v3 configurationDidChange:a3];
}

- (id)_minuteTickNight
{
  v3 = [(NTKGladiusColorPalette *)self _isLightColor];
  v4 = [(NTKGladiusColorPalette *)self primaryColor];
  v5 = v4;
  v6 = 0.3;
  if (v3)
  {
    v6 = 0.2;
  }

  v7 = [v4 colorWithAlphaComponent:v6];

  return v7;
}

- (id)_hourTickNight
{
  v2 = [(NTKGladiusColorPalette *)self primaryColor];
  v3 = [v2 colorWithAlphaComponent:0.3];

  return v3;
}

- (id)_background
{
  if ([(NTKGladiusColorPalette *)self isSeasonalCollection]&& [(NTKGladiusColorPalette *)self _isLightColor])
  {
    v3 = [(NTKGladiusColorPalette *)self primaryColor];
    v4 = NTKColorByModifyingHSB();
  }

  else
  {
    v4 = [(NTKGladiusColorPalette *)self primaryColor];
  }

  return v4;
}

- (id)_hourMinuteHandStrokeDay
{
  v2 = [(NTKGladiusColorPalette *)self primaryColor];
  v3 = NTKColorByModifyingHSB();

  return v3;
}

- (id)_hourMinuteHandStrokeNight
{
  [(NTKGladiusColorPalette *)self _isLightColor];
  v3 = [(NTKGladiusColorPalette *)self primaryColor];
  v4 = NTKColorByModifyingHSB();

  return v4;
}

- (id)_topComplicationDay
{
  v2 = [(NTKGladiusColorPalette *)self primaryColor];
  v3 = +[UIColor whiteColor];
  v4 = NTKInterpolateBetweenColors();
  v5 = [v4 colorWithAlphaComponent:0.8];

  return v5;
}

- (id)_topComplicationNight
{
  v2 = [(NTKGladiusColorPalette *)self primaryColor];
  v3 = +[UIColor whiteColor];
  v4 = NTKInterpolateBetweenColors();
  v5 = [v4 colorWithAlphaComponent:0.6];

  return v5;
}

- (BOOL)_isLightColor
{
  v2 = [(NTKGladiusColorPalette *)self primaryColor];
  v3 = +[UIColor whiteColor];
  CLKContrastRatioForColors();
  v5 = v4 < 2.0;

  return v5;
}

- (id)swatch
{
  v3 = [(NTKGladiusColorPalette *)self pigmentEditOption];
  v4 = [v3 fullname];

  if (([v4 isEqualToString:ntk_standard_yellow] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", ntk_standard_lightYellow) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", ntk_standard_lightGreen) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", ntk_standard_green) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", ntk_standard_blue) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", ntk_standard_cream))
  {
    v5 = [(NTKGladiusColorPalette *)self background];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKGladiusColorPalette;
    v5 = [(NTKGladiusColorPalette *)&v8 swatch];
  }

  v6 = v5;

  return v6;
}

@end