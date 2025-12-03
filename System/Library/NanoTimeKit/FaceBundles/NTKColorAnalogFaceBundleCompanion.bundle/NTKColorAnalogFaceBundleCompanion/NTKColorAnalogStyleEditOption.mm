@interface NTKColorAnalogStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (int64_t)swatchStyle;
@end

@implementation NTKColorAnalogStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return off_10498[value];
  }
}

- (id)localizedName
{
  style = [(NTKColorAnalogStyleEditOption *)self style];
  if (style > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_104B0[style];
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
  device = [(NTKColorAnalogStyleEditOption *)self device];
  deviceCategory = [device deviceCategory];

  if (deviceCategory == &dword_0 + 1)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

@end