@interface NTKTimeScaleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKTimeScaleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_1C658 + a3);
  }
}

- (id)localizedName
{
  v2 = [(NTKTimeScaleEditOption *)self timeScale];
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_1C678 + v2);
  }

  return [NTKChronographFaceBundle localizedStringForKey:v3 comment:@"timescale"];
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_233A0 != -1)
  {
    sub_FC84();
  }

  v3 = qword_23398;

  return v3;
}

@end