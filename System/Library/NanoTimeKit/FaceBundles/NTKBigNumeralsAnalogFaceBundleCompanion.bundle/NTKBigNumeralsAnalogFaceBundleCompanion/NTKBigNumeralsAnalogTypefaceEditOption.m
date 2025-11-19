@interface NTKBigNumeralsAnalogTypefaceEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)defaultOptionForLocale:(id)a3 device:(id)a4;
+ (id)localeForTypeface:(unint64_t)a3;
- (NSLocale)locale;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKBigNumeralsAnalogTypefaceEditOption

+ (id)defaultOptionForLocale:(id)a3 device:(id)a4
{
  v5 = a4;
  v6 = +[NSLocale currentLocale];
  v7 = [v6 localeIdentifier];
  v8 = [IntlUtility numberingSystemForLocaleID:v7];

  if ([v8 isEqualToString:@"latn"])
  {
    v9 = 0;
  }

  else if ([v8 isEqualToString:@"arab"])
  {
    v9 = 1;
  }

  else if ([v8 isEqualToString:@"deva"])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = [a1 optionWithTypeface:v9 forDevice:v5];

  return v10;
}

+ (id)localeForTypeface:(unint64_t)a3
{
  if (a3 <= 3)
  {
    a1 = [NSLocale localeWithLocaleIdentifier:*(&off_C498 + a3), v3];
  }

  return a1;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5330;
  v5[3] = &unk_C3E0;
  v5[4] = a1;
  v3 = sub_5330(v5, a3);

  return v3;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_C4B8 + a3);
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  v6 = _os_feature_enabled_impl();
  if (v6)
  {
    v6 = [v5 supportsPDRCapability:270936181];
  }

  v7 = @"EDIT_OPTION_LABEL_BIG_NUMERALS_TYPEFACE_DEVANAGARI";
  v8 = @"EDIT_OPTION_LABEL_BIG_NUMERALS_TYPEFACE_ROMAN";
  if (a3 != 3)
  {
    v8 = 0;
  }

  if (a3 != 2)
  {
    v7 = v8;
  }

  v9 = @"EDIT_OPTION_LABEL_BIG_NUMERALS_TYPEFACE_WESTERN_ARABIC_COMPATIBILITY";
  if (v6)
  {
    v9 = @"EDIT_OPTION_LABEL_BIG_NUMERALS_TYPEFACE_WESTERN_ARABIC";
  }

  v10 = @"EDIT_OPTION_LABEL_BIG_NUMERALS_TYPEFACE_EASTERN_ARABIC_COMPATIBILITY";
  if (v6)
  {
    v10 = @"EDIT_OPTION_LABEL_BIG_NUMERALS_TYPEFACE_EASTERN_ARABIC";
  }

  if (a3 != 1)
  {
    v10 = 0;
  }

  if (a3)
  {
    v9 = v10;
  }

  if (a3 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  return v11;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_11538 != -1)
  {
    sub_56B8();
  }

  v3 = qword_11530;

  return v3;
}

- (NSLocale)locale
{
  v2 = [(NTKBigNumeralsAnalogTypefaceEditOption *)self typeface];

  return [NTKBigNumeralsAnalogTypefaceEditOption localeForTypeface:v2];
}

@end