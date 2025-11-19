@interface NTKDolomiteNumeralEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)defaultOptionForDevice:(id)a3;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKDolomiteNumeralEditOption

+ (id)defaultOptionForDevice:(id)a3
{
  v3 = a3;
  v4 = CLKLocaleCurrentNumberSystem();
  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (v4 == 2);
  }

  v6 = [NTKDolomiteNumeralEditOption optionWithNumeral:v5 forDevice:v3];

  return v6;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_D5C590 + a3);
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
    v3 = [(NTKDolomiteNumeralEditOption *)self device];
    v4 = [v3 supportsPDRCapability:270936181];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NTKDolomiteNumeralEditOption *)self numeral];
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

  if (v5)
  {
    v7 = 0;
  }

  if (v5 != 1)
  {
    v6 = v7;
  }

  if (v5 == 2)
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