@interface NTKUltraCubeContentEditOption
+ (id)_localizedNameForActionForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKUltraCubeContentEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return @"custom";
  }
}

+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3)
  {
    v6 = &stru_49630;
  }

  else
  {
    v6 = [NTKUltraCubeFaceBundle localizedStringForKey:@"EDIT_OPTION_LABEL_CONTENT_CUSTOM_COMPANION" comment:@"Photos", v4];
  }

  return v6;
}

+ (id)_localizedNameForActionForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [NTKUltraCubeFaceBundle localizedStringForKey:@"EDIT_OPTION_LABEL_CONTENT_CUSTOM_ACTION_COMPANION" comment:@"Choose Photos…", v4];
  }

  return v6;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_581B0 != -1)
  {
    sub_29BDC();
  }

  v3 = qword_581A8;

  return v3;
}

@end