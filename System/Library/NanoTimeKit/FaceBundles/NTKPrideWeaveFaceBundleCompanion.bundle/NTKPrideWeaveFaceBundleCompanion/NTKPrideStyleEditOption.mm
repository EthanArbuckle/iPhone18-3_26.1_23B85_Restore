@interface NTKPrideStyleEditOption
+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (int64_t)indexForStyle:(unint64_t)style forDevice:(id)device;
- (BOOL)optionExistsInDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKPrideStyleEditOption

+ (int64_t)indexForStyle:(unint64_t)style forDevice:(id)device
{
  v5 = [self _orderedValuesForDevice:device];
  v6 = [NSNumber numberWithUnsignedInteger:style];
  v7 = [v5 indexOfObject:v6];

  return v7;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return off_247E0[value];
  }
}

+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [NTKPrideDigitalFaceBundle localizedStringForKey:off_247F8[value] table:@"PrideDigital" comment:@"Style", v4];
  }

  return v6;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_2CCE8 != -1)
  {
    sub_15228();
  }

  v3 = qword_2CCE0;

  return v3;
}

- (BOOL)optionExistsInDevice:(id)device
{
  deviceCopy = device;
  pdrDeviceVersion = [deviceCopy pdrDeviceVersion];
  style = [(NTKPrideStyleEditOption *)self style];
  if (style == 2)
  {
    v7 = [deviceCopy supportsPDRCapability:3503302961];
  }

  else
  {
    v7 = style != 1 || pdrDeviceVersion > 0x50200;
  }

  return v7;
}

@end