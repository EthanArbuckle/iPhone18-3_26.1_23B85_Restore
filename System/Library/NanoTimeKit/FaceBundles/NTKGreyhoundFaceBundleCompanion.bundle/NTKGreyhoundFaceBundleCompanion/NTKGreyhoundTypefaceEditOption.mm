@interface NTKGreyhoundTypefaceEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKGreyhoundTypefaceEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_143C8 + value);
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_193F0 != -1)
  {
    sub_C76C();
  }

  v3 = qword_193E8;

  return v3;
}

- (id)localizedName
{
  typeface = [(NTKGreyhoundTypefaceEditOption *)self typeface];
  if (typeface > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_143E0 + typeface);
  }

  return [NTKGreyhoundFaceBundle localizedStringForKey:v3 comment:@"typeface"];
}

@end