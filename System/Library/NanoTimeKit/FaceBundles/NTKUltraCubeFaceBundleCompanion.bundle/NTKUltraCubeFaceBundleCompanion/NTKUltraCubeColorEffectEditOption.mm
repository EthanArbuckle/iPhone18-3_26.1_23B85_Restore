@interface NTKUltraCubeColorEffectEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKUltraCubeColorEffectEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"none";
  if (value == 1)
  {
    v4 = @"background";
  }

  if (value == 2)
  {
    return @"duotone";
  }

  else
  {
    return v4;
  }
}

- (id)_valueToFaceBundleStringDict
{
  v4[0] = &off_4B618;
  v4[1] = &off_4B630;
  v5[0] = NTKFaceBundleUltraCubeColorEffectNone;
  v5[1] = NTKFaceBundleUltraCubeColorEffectBackground;
  v4[2] = &off_4B648;
  v5[2] = NTKFaceBundleUltraCubeColorEffectDuotone;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (id)localizedName
{
  colorEffect = [(NTKUltraCubeColorEffectEditOption *)self colorEffect];
  v3 = @"EDIT_OPTION_LABEL_EFFECT_NONE";
  if (colorEffect == 1)
  {
    v3 = @"EDIT_OPTION_LABEL_EFFECT_BACKGROUND";
  }

  if (colorEffect == 2)
  {
    v4 = @"EDIT_OPTION_LABEL_EFFECT_DUOTONE";
  }

  else
  {
    v4 = v3;
  }

  v5 = [(__CFString *)v4 stringByAppendingString:@"_COMPANION"];
  v6 = [NTKUltraCubeFaceBundle localizedStringForKey:v5 comment:@"effect"];

  return v6;
}

@end