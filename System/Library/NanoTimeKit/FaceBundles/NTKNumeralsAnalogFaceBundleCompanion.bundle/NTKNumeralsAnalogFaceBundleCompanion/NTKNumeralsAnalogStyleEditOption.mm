@interface NTKNumeralsAnalogStyleEditOption
+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device;
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (int64_t)indexForNumeralsStyle:(unint64_t)style forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKNumeralsAnalogStyleEditOption

+ (int64_t)indexForNumeralsStyle:(unint64_t)style forDevice:(id)device
{
  v5 = [NTKNumeralsAnalogStyleEditOption availableOrderedValuesForDevice:device];
  v6 = [NSNumber numberWithUnsignedInteger:style];
  v7 = [v5 indexOfObject:v6];

  return v7;
}

+ (id)_orderedValuesForDevice:(id)device
{
  v3 = CLKLocaleCurrentNumberSystem();
  if (v3 > 2)
  {
    return &off_114A0;
  }

  else
  {
    return off_10428[v3];
  }
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 8)
  {
    return 0;
  }

  else
  {
    return off_10440[value];
  }
}

+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device
{
  v4 = [NTKNumeralsAnalogStyleEditOption _nameLocalizationKeyForValue:value forDevice:device];
  v5 = [v4 stringByAppendingString:@"_COMPANION"];

  v6 = [NTKNumeralsAnalogFaceBundle localizedStringForKey:v5 comment:@"style"];

  return v6;
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 8)
  {
    return 0;
  }

  else
  {
    return off_10488[value];
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_16618 != -1)
  {
    sub_7FF8();
  }

  v3 = qword_16610;

  return v3;
}

@end