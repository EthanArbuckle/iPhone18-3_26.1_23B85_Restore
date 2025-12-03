@interface NTKSharkTimescaleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKSharkTimescaleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value - 1 > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_389B8 + value - 1);
  }
}

- (id)localizedName
{
  timescale = [(NTKSharkTimescaleEditOption *)self timescale];
  if (timescale - 1 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_389E0 + timescale - 1);
  }

  return [NTKAlaskanFaceBundle localizedStringForKey:v3 comment:&stru_395D8];
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_46AC8 != -1)
  {
    sub_2209C();
  }

  v3 = qword_46AC0;

  return v3;
}

@end