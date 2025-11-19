@interface NTKParameciumBackgroundEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKParameciumBackgroundEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"off";
  if (a3 != 1)
  {
    v4 = 0;
  }

  if (a3)
  {
    return v4;
  }

  else
  {
    return @"on";
  }
}

- (id)localizedName
{
  v2 = [(NTKParameciumBackgroundEditOption *)self background];
  v3 = @"EDIT_OPTION_LABEL_PARAMECIUM_BACKGROUND_OFF";
  if (v2 != 1)
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"EDIT_OPTION_LABEL_PARAMECIUM_BACKGROUND_ON";
  }

  v5 = [(__CFString *)v4 stringByAppendingString:@"_COMPANION"];
  v6 = [NTKParameciumFaceBundle localizedStringForKey:v5 comment:&stru_14B50];

  return v6;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_1A468 != -1)
  {
    sub_8F8C();
  }

  v3 = qword_1A460;

  return v3;
}

@end