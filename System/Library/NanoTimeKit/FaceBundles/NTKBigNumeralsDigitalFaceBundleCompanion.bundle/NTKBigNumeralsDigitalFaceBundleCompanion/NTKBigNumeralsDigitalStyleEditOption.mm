@interface NTKBigNumeralsDigitalStyleEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKBigNumeralsDigitalStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_C628 + a3);
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_C640 + a3);
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