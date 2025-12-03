@interface NTKTimeScaleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKTimeScaleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_1C658 + value);
  }
}

- (id)localizedName
{
  timeScale = [(NTKTimeScaleEditOption *)self timeScale];
  if (timeScale > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_1C678 + timeScale);
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