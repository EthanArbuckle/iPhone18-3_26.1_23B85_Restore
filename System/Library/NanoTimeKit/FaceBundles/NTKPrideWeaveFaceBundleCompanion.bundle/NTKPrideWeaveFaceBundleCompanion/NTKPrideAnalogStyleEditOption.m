@interface NTKPrideAnalogStyleEditOption
+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4;
@end

@implementation NTKPrideAnalogStyleEditOption

+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 == 1)
  {
    v6 = @"EDIT_OPTION_LABEL_PRIDE_STYLE_BANDED";
LABEL_5:
    v7 = [NTKPrideDigitalFaceBundle localizedStringForKey:v6 table:@"PrideDigital" comment:@"Style", v4];

    return v7;
  }

  if (a3 == 2)
  {
    v6 = @"EDIT_OPTION_LABEL_PRIDE_STYLE_FABRIC";
    goto LABEL_5;
  }

  v7 = 0;

  return v7;
}

@end