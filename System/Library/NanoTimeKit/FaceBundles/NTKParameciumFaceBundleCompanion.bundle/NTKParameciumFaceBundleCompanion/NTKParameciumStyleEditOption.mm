@interface NTKParameciumStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKParameciumStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_14700 + value);
  }
}

- (id)localizedName
{
  style = [(NTKParameciumStyleEditOption *)self style];
  if (style > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_14718 + style);
  }

  v4 = [v3 stringByAppendingString:@"_COMPANION"];
  v5 = [NTKParameciumFaceBundle localizedStringForKey:v4 comment:&stru_14B50];

  return v5;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_1A478 != -1)
  {
    sub_8FA0();
  }

  v3 = qword_1A470;

  return v3;
}

@end