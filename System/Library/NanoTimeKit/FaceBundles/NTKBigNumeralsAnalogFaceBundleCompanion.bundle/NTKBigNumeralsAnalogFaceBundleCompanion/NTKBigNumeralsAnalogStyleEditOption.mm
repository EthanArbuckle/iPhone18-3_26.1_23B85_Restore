@interface NTKBigNumeralsAnalogStyleEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKBigNumeralsAnalogStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"outline";
  if (value != 1)
  {
    v4 = 0;
  }

  if (value)
  {
    return v4;
  }

  else
  {
    return @"fill";
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"EDIT_OPTION_LABEL_BIG_NUMERALS_STYLE_OUTLINE";
  if (value != 1)
  {
    v4 = 0;
  }

  if (value)
  {
    return v4;
  }

  else
  {
    return @"EDIT_OPTION_LABEL_BIG_NUMERALS_STYLE_FILL";
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_11508 != -1)
  {
    sub_56A4();
  }

  v3 = qword_11500;

  return v3;
}

@end