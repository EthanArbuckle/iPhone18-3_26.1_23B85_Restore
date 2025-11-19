@interface NTKRenegadeColorEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKRenegadeColorEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_10520[a3];
  }
}

- (id)localizedName
{
  v2 = [(NTKRenegadeColorEditOption *)self color];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_10538[v2];
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