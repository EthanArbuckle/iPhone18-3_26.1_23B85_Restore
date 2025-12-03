@interface NTKHadesRotationEditOption
+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKHadesRotationEditOption

+ (id)_orderedValuesForDevice:(id)device
{
  if (qword_58B48 != -1)
  {
    sub_2EE50();
  }

  v4 = qword_58B40;

  return v4;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"rotation2";
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
    return @"rotation1";
  }
}

+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"EDIT_OPTION_LABEL_HADES_ROTATION_2";
  if (value != 1)
  {
    v4 = 0;
  }

  if (value)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"EDIT_OPTION_LABEL_HADES_ROTATION_1";
  }

  device = [(__CFString *)v5 stringByAppendingString:@"_COMPANION", device];
  if (device)
  {
    v7 = [NTKHadesFaceBundle localizedStringForKey:device comment:&stru_45510];
  }

  else
  {
    v7 = &stru_45510;
  }

  return v7;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_58B58 != -1)
  {
    sub_2EE64();
  }

  v3 = qword_58B50;

  return v3;
}

@end