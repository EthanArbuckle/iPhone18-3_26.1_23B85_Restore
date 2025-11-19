@interface NTKCharacterEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)localizedNameForValidValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKCharacterEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"minnie";
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
    return @"mickey";
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"EDIT_OPTION_LABEL_CHARACTER_MINNIE";
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
    return @"EDIT_OPTION_LABEL_CHARACTER_MICKEY";
  }
}

+ (id)localizedNameForValidValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = [a1 _nameLocalizationKeyForValue:a3 forDevice:a4];
  if (!v4)
  {
    [NSException raise:NSInternalInconsistencyException format:@"%@ must implement either _localizedNameForValue:forDevice: or _nameLocalizationKeyForValue:forDevice:", objc_opt_class()];
  }

  v5 = [v4 stringByAppendingString:@"_COMPANION"];
  v6 = [NTKCharacterFaceBundle localizedStringForKey:v5 comment:@"name for edit option"];
  if (!v6)
  {
    v6 = [NTKCharacterFaceBundle localizedStringForKey:v4 comment:@"name for edit option"];
  }

  return v6;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_25C18 != -1)
  {
    sub_F528();
  }

  v3 = qword_25C10;

  return v3;
}

@end