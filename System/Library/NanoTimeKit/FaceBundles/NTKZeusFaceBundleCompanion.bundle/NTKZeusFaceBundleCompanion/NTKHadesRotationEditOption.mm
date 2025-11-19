@interface NTKHadesRotationEditOption
+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKHadesRotationEditOption

+ (id)_orderedValuesForDevice:(id)a3
{
  if (qword_58B48 != -1)
  {
    sub_2EE50();
  }

  v4 = qword_58B40;

  return v4;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"rotation2";
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
    return @"rotation1";
  }
}

+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"EDIT_OPTION_LABEL_HADES_ROTATION_2";
  if (a3 != 1)
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"EDIT_OPTION_LABEL_HADES_ROTATION_1";
  }

  v6 = [(__CFString *)v5 stringByAppendingString:@"_COMPANION", a4];
  if (v6)
  {
    v7 = [NTKHadesFaceBundle localizedStringForKey:v6 comment:&stru_45510];
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