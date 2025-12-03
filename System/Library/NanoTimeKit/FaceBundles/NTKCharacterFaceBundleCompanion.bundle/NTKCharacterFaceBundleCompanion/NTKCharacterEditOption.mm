@interface NTKCharacterEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)localizedNameForValidValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKCharacterEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"minnie";
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
    return @"mickey";
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"EDIT_OPTION_LABEL_CHARACTER_MINNIE";
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
    return @"EDIT_OPTION_LABEL_CHARACTER_MICKEY";
  }
}

+ (id)localizedNameForValidValue:(unint64_t)value forDevice:(id)device
{
  v4 = [self _nameLocalizationKeyForValue:value forDevice:device];
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