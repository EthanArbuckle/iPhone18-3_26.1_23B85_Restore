@interface NTKBigNumeralsAnalogColorPalette
+ (double)timeColorOpacityForEditOption:(id)option;
+ (double)timeColorOpacityForFraction:(double)fraction fromEditOption:(id)option toEditOption:(id)editOption;
+ (id)multicolorAxialGradientLayerForColor:(unint64_t)color device:(id)device;
@end

@implementation NTKBigNumeralsAnalogColorPalette

+ (double)timeColorOpacityForEditOption:(id)option
{
  isRainbowColor = [option isRainbowColor];
  result = 1.0;
  if (isRainbowColor)
  {
    return 0.0;
  }

  return result;
}

+ (double)timeColorOpacityForFraction:(double)fraction fromEditOption:(id)option toEditOption:(id)editOption
{
  editOptionCopy = editOption;
  if (([option isRainbowColor] & 1) == 0)
  {
    if ([editOptionCopy isRainbowColor])
    {
      fraction = 1.0 - fraction;
    }

    else
    {
      fraction = 1.0;
    }
  }

  return fraction;
}

+ (id)multicolorAxialGradientLayerForColor:(unint64_t)color device:(id)device
{
  if (color == 3000)
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