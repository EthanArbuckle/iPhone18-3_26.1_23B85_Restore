@interface NTKBigNumeralsDigitalColorPalette
+ (id)multicolorAxialGradientLayerForColor:(unint64_t)color device:(id)device;
- (id)_hourDigits;
- (id)_minuteDigits;
@end

@implementation NTKBigNumeralsDigitalColorPalette

- (id)_hourDigits
{
  if ([(NTKBigNumeralsDigitalColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKBigNumeralsDigitalColorPalette *)self paletteAtIndex:0];
    primaryColor = [v3 primaryColor];
  }

  else
  {
    primaryColor = [(NTKBigNumeralsDigitalColorPalette *)self primaryShiftedColor];
  }

  return primaryColor;
}

- (id)_minuteDigits
{
  if ([(NTKBigNumeralsDigitalColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKBigNumeralsDigitalColorPalette *)self paletteAtIndex:1];
    primaryColor = [v3 primaryColor];
  }

  else
  {
    primaryColor = [(NTKBigNumeralsDigitalColorPalette *)self primaryColor];
  }

  return primaryColor;
}

+ (id)multicolorAxialGradientLayerForColor:(unint64_t)color device:(id)device
{
  if (color == 3012)
  {
    v6 = [NTKPrideColorUtils axialColorGradientLayer:0 forDevice:device, v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end