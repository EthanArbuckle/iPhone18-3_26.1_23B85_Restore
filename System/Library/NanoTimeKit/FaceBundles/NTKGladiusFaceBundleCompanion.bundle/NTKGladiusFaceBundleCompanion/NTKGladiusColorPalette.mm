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
- (void)configurationDidChange:(id)change;
@end

@implementation NTKGladiusColorPalette

- (void)configurationDidChange:(id)change
{
  v3.receiver = self;
  v3.super_class = NTKGladiusColorPalette;
  [(NTKGladiusColorPalette *)&v3 configurationDidChange:change];
}

- (id)_minuteTickNight
{
  _isLightColor = [(NTKGladiusColorPalette *)self _isLightColor];
  primaryColor = [(NTKGladiusColorPalette *)self primaryColor];
  v5 = primaryColor;
  v6 = 0.3;
  if (_isLightColor)
  {
    v6 = 0.2;
  }

  v7 = [primaryColor colorWithAlphaComponent:v6];

  return v7;
}

- (id)_hourTickNight
{
  primaryColor = [(NTKGladiusColorPalette *)self primaryColor];
  v3 = [primaryColor colorWithAlphaComponent:0.3];

  return v3;
}

- (id)_background
{
  if ([(NTKGladiusColorPalette *)self isSeasonalCollection]&& [(NTKGladiusColorPalette *)self _isLightColor])
  {
    primaryColor = [(NTKGladiusColorPalette *)self primaryColor];
    primaryColor2 = NTKColorByModifyingHSB();
  }

  else
  {
    primaryColor2 = [(NTKGladiusColorPalette *)self primaryColor];
  }

  return primaryColor2;
}

- (id)_hourMinuteHandStrokeDay
{
  primaryColor = [(NTKGladiusColorPalette *)self primaryColor];
  v3 = NTKColorByModifyingHSB();

  return v3;
}

- (id)_hourMinuteHandStrokeNight
{
  [(NTKGladiusColorPalette *)self _isLightColor];
  primaryColor = [(NTKGladiusColorPalette *)self primaryColor];
  v4 = NTKColorByModifyingHSB();

  return v4;
}

- (id)_topComplicationDay
{
  primaryColor = [(NTKGladiusColorPalette *)self primaryColor];
  v3 = +[UIColor whiteColor];
  v4 = NTKInterpolateBetweenColors();
  v5 = [v4 colorWithAlphaComponent:0.8];

  return v5;
}

- (id)_topComplicationNight
{
  primaryColor = [(NTKGladiusColorPalette *)self primaryColor];
  v3 = +[UIColor whiteColor];
  v4 = NTKInterpolateBetweenColors();
  v5 = [v4 colorWithAlphaComponent:0.6];

  return v5;
}

- (BOOL)_isLightColor
{
  primaryColor = [(NTKGladiusColorPalette *)self primaryColor];
  v3 = +[UIColor whiteColor];
  CLKContrastRatioForColors();
  v5 = v4 < 2.0;

  return v5;
}

- (id)swatch
{
  pigmentEditOption = [(NTKGladiusColorPalette *)self pigmentEditOption];
  fullname = [pigmentEditOption fullname];

  if (([fullname isEqualToString:ntk_standard_yellow] & 1) != 0 || (objc_msgSend(fullname, "isEqualToString:", ntk_standard_lightYellow) & 1) != 0 || (objc_msgSend(fullname, "isEqualToString:", ntk_standard_lightGreen) & 1) != 0 || (objc_msgSend(fullname, "isEqualToString:", ntk_standard_green) & 1) != 0 || (objc_msgSend(fullname, "isEqualToString:", ntk_standard_blue) & 1) != 0 || objc_msgSend(fullname, "isEqualToString:", ntk_standard_cream))
  {
    background = [(NTKGladiusColorPalette *)self background];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKGladiusColorPalette;
    background = [(NTKGladiusColorPalette *)&v8 swatch];
  }

  v6 = background;

  return v6;
}

@end