@interface NTKDolomiteNumeralEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)defaultOptionForDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKDolomiteNumeralEditOption

+ (id)defaultOptionForDevice:(id)device
{
  deviceCopy = device;
  v4 = CLKLocaleCurrentNumberSystem();
  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (v4 == 2);
  }

  v6 = [NTKDolomiteNumeralEditOption optionWithNumeral:v5 forDevice:deviceCopy];

  return v6;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_D5C590 + value);
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_D62610 != -1)
  {
    sub_9764();
  }

  v3 = qword_D62608;

  return v3;
}

- (id)localizedName
{
  if (_os_feature_enabled_impl())
  {
    device = [(NTKDolomiteNumeralEditOption *)self device];
    v4 = [device supportsPDRCapability:270936181];
  }

  else
  {
    v4 = 0;
  }

  numeral = [(NTKDolomiteNumeralEditOption *)self numeral];
  v6 = @"EDIT_OPTION_LABEL_NUMERAL_ARABIC_INDIC_COMPATIBILITY";
  if (v4)
  {
    v6 = @"EDIT_OPTION_LABEL_NUMERAL_ARABIC_INDIC";
  }

  v7 = @"EDIT_OPTION_LABEL_NUMERAL_ARABIC_COMPATIBILITY";
  if (v4)
  {
    v7 = @"EDIT_OPTION_LABEL_NUMERAL_ARABIC";
  }

  if (numeral)
  {
    v7 = 0;
  }

  if (numeral != 1)
  {
    v6 = v7;
  }

  if (numeral == 2)
  {
    v8 = @"EDIT_OPTION_LABEL_NUMERAL_DEVANAGARI";
  }

  else
  {
    v8 = v6;
  }

  return [NTKDolomiteFaceBundle localizedStringForKey:v8 comment:@"numeral"];
}

@end