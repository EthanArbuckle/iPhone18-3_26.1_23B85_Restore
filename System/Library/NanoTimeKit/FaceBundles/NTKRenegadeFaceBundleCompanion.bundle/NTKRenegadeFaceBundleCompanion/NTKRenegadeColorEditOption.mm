@interface NTKRenegadeColorEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKRenegadeColorEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return off_10520[value];
  }
}

- (id)localizedName
{
  color = [(NTKRenegadeColorEditOption *)self color];
  if (color > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_10538[color];
  }

  v4 = [(__CFString *)v3 stringByAppendingString:@"_COMPANION"];
  if (v4)
  {
    v5 = [NTKRenegadeFaceBundle localizedStringForKey:v4 comment:&stru_10808];
  }

  else
  {
    v5 = &stru_10808;
  }

  return v5;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_16C88 != -1)
  {
    sub_81C4();
  }

  v3 = qword_16C80;

  return v3;
}

@end