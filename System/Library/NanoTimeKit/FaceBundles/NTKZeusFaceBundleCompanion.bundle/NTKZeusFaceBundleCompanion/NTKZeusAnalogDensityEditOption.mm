@interface NTKZeusAnalogDensityEditOption
+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4;
@end

@implementation NTKZeusAnalogDensityEditOption

+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 - 1 > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_44BC8[a3 - 1];
  }

  v9 = [(__CFString *)v8 stringByAppendingString:@"_COMPANION", a4, v5, v4, v6];
  if (v9)
  {
    v10 = [NTKZeusAnalogFaceBundle localizedStringForKey:v9 comment:&stru_45510];
  }

  else
  {
    v10 = &stru_45510;
  }

  return v10;
}

@end