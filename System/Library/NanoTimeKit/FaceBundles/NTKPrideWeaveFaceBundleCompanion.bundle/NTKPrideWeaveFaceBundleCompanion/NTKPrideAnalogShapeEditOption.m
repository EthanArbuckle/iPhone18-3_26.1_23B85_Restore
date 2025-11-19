@interface NTKPrideAnalogShapeEditOption
+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (int64_t)indexForStyle:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKPrideAnalogShapeEditOption

+ (int64_t)indexForStyle:(unint64_t)a3 forDevice:(id)a4
{
  v5 = [a1 _orderedValuesForDevice:a4];
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [v5 indexOfObject:v6];

  return v7;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"fullscreen";
  if (a3 != 1)
  {
    v4 = 0;
  }

  if (a3)
  {
    return v4;
  }

  else
  {
    return @"dial";
  }
}

+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (!a3)
  {
    v6 = @"EDIT_OPTION_LABEL_PRIDE_ANALOG_STYLE_DIAL";
LABEL_5:
    v7 = [NTKPrideAnalogFaceBundle localizedStringForKey:v6 table:@"PrideAnalog" comment:@"Style", v4];

    return v7;
  }

  if (a3 == 1)
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