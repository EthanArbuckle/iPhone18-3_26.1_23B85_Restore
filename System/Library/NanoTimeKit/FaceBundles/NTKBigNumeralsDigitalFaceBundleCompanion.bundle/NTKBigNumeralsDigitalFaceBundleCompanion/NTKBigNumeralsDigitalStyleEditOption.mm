@interface NTKBigNumeralsDigitalStyleEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKBigNumeralsDigitalStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_C628 + value);
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_C640 + value);
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_11DD8 != -1)
  {
    sub_5914();
  }

  v3 = qword_11DD0;

  return v3;
}

@end