@interface NTKProteusBackgroundEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKProteusBackgroundEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"off";
  if (a3)
  {
    v4 = 0;
  }

  if (a3 == 1)
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