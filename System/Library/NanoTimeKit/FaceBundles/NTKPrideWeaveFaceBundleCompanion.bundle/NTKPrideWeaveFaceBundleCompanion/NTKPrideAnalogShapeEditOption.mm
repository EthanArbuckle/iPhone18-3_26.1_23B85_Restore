@interface NTKPrideAnalogShapeEditOption
+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (int64_t)indexForStyle:(unint64_t)style forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKPrideAnalogShapeEditOption

+ (int64_t)indexForStyle:(unint64_t)style forDevice:(id)device
{
  v5 = [self _orderedValuesForDevice:device];
  v6 = [NSNumber numberWithUnsignedInteger:style];
  v7 = [v5 indexOfObject:v6];

  return v7;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"fullscreen";
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
    return @"dial";
  }
}

+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device
{
  if (!value)
  {
    v6 = @"EDIT_OPTION_LABEL_PRIDE_ANALOG_STYLE_DIAL";
LABEL_5:
    v7 = [NTKPrideAnalogFaceBundle localizedStringForKey:v6 table:@"PrideAnalog" comment:@"Style", v4];

    return v7;
  }

  if (value == 1)
  {
    v6 = @"EDIT_OPTION_LABEL_PRIDE_ANALOG_STYLE_FULLSCREEN";
    goto LABEL_5;
  }

  v7 = 0;

  return v7;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_2CD68 != -1)
  {
    sub_154CC();
  }

  v3 = qword_2CD60;

  return v3;
}

@end