@interface NTKProteusBackgroundEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKProteusBackgroundEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"off";
  if (value)
  {
    v4 = 0;
  }

  if (value == 1)
  {
    return @"on";
  }

  else
  {
    return v4;
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_16338 != -1)
  {
    sub_8628();
  }

  v3 = qword_16330;

  return v3;
}

@end