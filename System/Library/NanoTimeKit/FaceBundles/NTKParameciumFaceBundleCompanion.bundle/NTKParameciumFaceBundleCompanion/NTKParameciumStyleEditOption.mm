@interface NTKParameciumStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKParameciumStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_14700 + a3);
  }
}

- (id)localizedName
{
  v2 = [(NTKParameciumStyleEditOption *)self style];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_14718 + v2);
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