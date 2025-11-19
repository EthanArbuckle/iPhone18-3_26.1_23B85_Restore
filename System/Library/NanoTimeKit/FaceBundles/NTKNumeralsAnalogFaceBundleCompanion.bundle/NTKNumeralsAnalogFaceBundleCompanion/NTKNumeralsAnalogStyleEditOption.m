@interface NTKNumeralsAnalogStyleEditOption
+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (int64_t)indexForNumeralsStyle:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKNumeralsAnalogStyleEditOption

+ (int64_t)indexForNumeralsStyle:(unint64_t)a3 forDevice:(id)a4
{
  v5 = [NTKNumeralsAnalogStyleEditOption availableOrderedValuesForDevice:a4];
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [v5 indexOfObject:v6];

  return v7;
}

+ (id)_orderedValuesForDevice:(id)a3
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

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 8)
  {
    return 0;
  }

  else
  {
    return off_10440[a3];
  }
}

+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = [NTKNumeralsAnalogStyleEditOption _nameLocalizationKeyForValue:a3 forDevice:a4];
  v5 = [v4 stringByAppendingString:@"_COMPANION"];

  v6 = [NTKNumeralsAnalogFaceBundle localizedStringForKey:v5 comment:@"style"];

  return v6;
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 8)
  {
    return 0;
  }

  else
  {
    return off_10488[a3];
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