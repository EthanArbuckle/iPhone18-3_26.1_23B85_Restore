@interface NTKPrideAnalogStyleEditOption
+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device;
@end

@implementation NTKPrideAnalogStyleEditOption

+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device
{
  if (value == 1)
  {
    v6 = @"EDIT_OPTION_LABEL_PRIDE_STYLE_BANDED";
LABEL_5:
    v7 = [NTKPrideDigitalFaceBundle localizedStringForKey:v6 table:@"PrideDigital" comment:@"Style", v4];

    return v7;
  }

  if (value == 2)
  {
    v6 = @"EDIT_OPTION_LABEL_PRIDE_STYLE_FABRIC";
    goto LABEL_5;
  }

  v7 = 0;

  return v7;
}

@end