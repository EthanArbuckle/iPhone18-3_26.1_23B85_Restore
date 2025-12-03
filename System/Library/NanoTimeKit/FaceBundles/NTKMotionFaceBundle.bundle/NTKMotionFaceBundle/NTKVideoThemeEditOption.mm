@interface NTKVideoThemeEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)localizedNameForValidValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKVideoThemeEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return off_82E8[value];
  }
}

+ (id)localizedNameForValidValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    v7 = 0;
  }

  else
  {
    v4 = off_8300[value];
    v5 = [@"Motion" stringByAppendingString:{@"-Companion", device}];
    v6 = [(__CFString *)v4 stringByAppendingString:@"_COMPANION"];
    v7 = [NTKMotionFaceBundle localizedStringForKey:v6 table:v5 comment:@"Motion Style"];
  }

  return v7;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_CA30 != -1)
  {
    sub_3348();
  }

  v3 = qword_CA28;

  return v3;
}

@end