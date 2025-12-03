@interface NTKBigNumeralsAnalogTypefaceEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)defaultOptionForLocale:(id)locale device:(id)device;
+ (id)localeForTypeface:(unint64_t)typeface;
- (NSLocale)locale;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKBigNumeralsAnalogTypefaceEditOption

+ (id)defaultOptionForLocale:(id)locale device:(id)device
{
  deviceCopy = device;
  v6 = +[NSLocale currentLocale];
  localeIdentifier = [v6 localeIdentifier];
  v8 = [IntlUtility numberingSystemForLocaleID:localeIdentifier];

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

  v10 = [self optionWithTypeface:v9 forDevice:deviceCopy];

  return v10;
}

+ (id)localeForTypeface:(unint64_t)typeface
{
  if (typeface <= 3)
  {
    self = [NSLocale localeWithLocaleIdentifier:*(&off_C498 + typeface), v3];
  }

  return self;
}

+ (id)_orderedValuesForDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5330;
  v5[3] = &unk_C3E0;
  v5[4] = self;
  v3 = sub_5330(v5, device);

  return v3;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_C4B8 + value);
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  deviceCopy = device;
  v6 = _os_feature_enabled_impl();
  if (v6)
  {
    v6 = [deviceCopy supportsPDRCapability:270936181];
  }

  v7 = @"EDIT_OPTION_LABEL_BIG_NUMERALS_TYPEFACE_DEVANAGARI";
  v8 = @"EDIT_OPTION_LABEL_BIG_NUMERALS_TYPEFACE_ROMAN";
  if (value != 3)
  {
    v8 = 0;
  }

  if (value != 2)
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

  if (value != 1)
  {
    v10 = 0;
  }

  if (value)
  {
    v9 = v10;
  }

  if (value <= 1)
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
  typeface = [(NTKBigNumeralsAnalogTypefaceEditOption *)self typeface];

  return [NTKBigNumeralsAnalogTypefaceEditOption localeForTypeface:typeface];
}

@end