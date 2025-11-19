@interface NTKColorAnalogStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (int64_t)swatchStyle;
@end

@implementation NTKColorAnalogStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_10498[a3];
  }
}

- (id)localizedName
{
  v2 = [(NTKColorAnalogStyleEditOption *)self style];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_104B0[v2];
  }

  return [NTKColorAnalogFaceBundle localizedStringForKey:v3 comment:@"Dial Style"];
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_15688 != -1)
  {
    sub_7C9C();
  }

  v3 = qword_15680;

  return v3;
}

- (int64_t)swatchStyle
{
  v2 = [(NTKColorAnalogStyleEditOption *)self device];
  v3 = [v2 deviceCategory];

  if (v3 == &dword_0 + 1)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

@end