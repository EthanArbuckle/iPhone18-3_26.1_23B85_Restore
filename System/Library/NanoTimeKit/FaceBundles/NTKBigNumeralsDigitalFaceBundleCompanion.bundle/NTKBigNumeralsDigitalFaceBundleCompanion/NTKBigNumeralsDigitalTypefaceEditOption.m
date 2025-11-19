@interface NTKBigNumeralsDigitalTypefaceEditOption
+ (id)__orderedValuesForDevice:(id)a3;
+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)defaultOptionForLocale:(id)a3 device:(id)a4;
+ (id)localeForTypeface:(unint64_t)a3;
- (NSLocale)locale;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKBigNumeralsDigitalTypefaceEditOption

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
    a1 = [NSLocale localeWithLocaleIdentifier:*(&off_C590 + a3), v3];
  }

  return a1;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3FA8;
  v5[3] = &unk_C460;
  v5[4] = a1;
  v3 = sub_3FA8(v5, a3);

  return v3;
}

+ (id)__orderedValuesForDevice:(id)a3
{
  v3 = _EnumValueRange();
  v4 = [v3 arrayByExcludingObjectsInArray:&off_D640];

  return v4;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_C5B0 + a3);
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_C5D0 + a3);
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
  v2 = [(NTKBigNumeralsDigitalTypefaceEditOption *)self typeface];

  return [NTKBigNumeralsDigitalTypefaceEditOption localeForTypeface:v2];
}

@end