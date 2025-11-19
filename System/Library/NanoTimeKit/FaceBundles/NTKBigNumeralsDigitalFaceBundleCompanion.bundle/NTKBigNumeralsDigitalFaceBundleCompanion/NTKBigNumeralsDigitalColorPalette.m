@interface NTKBigNumeralsDigitalColorPalette
+ (id)multicolorAxialGradientLayerForColor:(unint64_t)a3 device:(id)a4;
- (id)_hourDigits;
- (id)_minuteDigits;
@end

@implementation NTKBigNumeralsDigitalColorPalette

- (id)_hourDigits
{
  if ([(NTKBigNumeralsDigitalColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKBigNumeralsDigitalColorPalette *)self paletteAtIndex:0];
    v4 = [v3 primaryColor];
  }

  else
  {
    v4 = [(NTKBigNumeralsDigitalColorPalette *)self primaryShiftedColor];
  }

  return v4;
}

- (id)_minuteDigits
{
  if ([(NTKBigNumeralsDigitalColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKBigNumeralsDigitalColorPalette *)self paletteAtIndex:1];
    v4 = [v3 primaryColor];
  }

  else
  {
    v4 = [(NTKBigNumeralsDigitalColorPalette *)self primaryColor];
  }

  return v4;
}

+ (id)multicolorAxialGradientLayerForColor:(unint64_t)a3 device:(id)a4
{
  if (a3 == 3012)
  {
    v6 = [NTKPrideColorUtils axialColorGradientLayer:0 forDevice:a4, v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end