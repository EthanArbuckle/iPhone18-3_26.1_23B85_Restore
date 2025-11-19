@interface NTKGreyhoundTypefaceEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKGreyhoundTypefaceEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_143C8 + a3);
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
  v2 = [(NTKGreyhoundTypefaceEditOption *)self typeface];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_143E0 + v2);
  }

  return [NTKGreyhoundFaceBundle localizedStringForKey:v3 comment:@"typeface"];
}

@end