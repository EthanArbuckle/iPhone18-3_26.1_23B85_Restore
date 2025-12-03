@interface NTKBigNumeralsDigitalTypefaceEditOption
+ (id)__orderedValuesForDevice:(id)device;
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)defaultOptionForLocale:(id)locale device:(id)device;
+ (id)localeForTypeface:(unint64_t)typeface;
- (NSLocale)locale;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKBigNumeralsDigitalTypefaceEditOption

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
    self = [NSLocale localeWithLocaleIdentifier:*(&off_C590 + typeface), v3];
  }

  return self;
}

+ (id)_orderedValuesForDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3FA8;
  v5[3] = &unk_C460;
  v5[4] = self;
  v3 = sub_3FA8(v5, device);

  return v3;
}

+ (id)__orderedValuesForDevice:(id)device
{
  v3 = _EnumValueRange();
  v4 = [v3 arrayByExcludingObjectsInArray:&off_D640];

  return v4;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_C5B0 + value);
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_C5D0 + value);
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_11DA8 != -1)
  {
    sub_5900();
  }

  v3 = qword_11DA0;

  return v3;
}

- (NSLocale)locale
{
  typeface = [(NTKBigNumeralsDigitalTypefaceEditOption *)self typeface];

  return [NTKBigNumeralsDigitalTypefaceEditOption localeForTypeface:typeface];
}

@end