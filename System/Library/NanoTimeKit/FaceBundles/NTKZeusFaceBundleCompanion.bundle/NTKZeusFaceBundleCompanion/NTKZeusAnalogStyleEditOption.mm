@interface NTKZeusAnalogStyleEditOption
+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (BOOL)optionExistsInDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKZeusAnalogStyleEditOption

- (BOOL)optionExistsInDevice:(id)device
{
  if ([device pdrDeviceVersion] >> 18)
  {
    return 1;
  }

  device = [(NTKZeusAnalogStyleEditOption *)self device];
  v5 = sub_7534(device, device);
  v6 = [v5 containsIndex:{-[NTKZeusAnalogStyleEditOption _value](self, "_value")}];

  return v6 ^ 1;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    return 0;
  }

  else
  {
    return off_44B88[value];
  }
}

+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_44BA8[value];
  }

  v9 = [(__CFString *)v8 stringByAppendingString:@"_COMPANION", device, v5, v4, v6];
  if (v9)
  {
    v10 = [NTKZeusAnalogFaceBundle localizedStringForKey:v9 comment:&stru_45510];
  }

  else
  {
    v10 = &stru_45510;
  }

  return v10;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_585F8 != -1)
  {
    sub_2ECFC();
  }

  v3 = qword_585F0;

  return v3;
}

@end