@interface NTKKaleidoscopeCustomAssetOption
+ (id)_localizedNameForActionForValue:(unint64_t)value forDevice:(id)device;
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)localizedNameForValidValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKKaleidoscopeCustomAssetOption

+ (id)_orderedValuesForDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_D8AC;
  v5[3] = &unk_24D08;
  v5[4] = self;
  sub_D8AC(v5, device);
  v3 = qword_2CE88;

  return v3;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value == 1000)
  {
    v6 = @"asset-custom";
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___NTKKaleidoscopeCustomAssetOption;
    v6 = objc_msgSendSuper2(&v8, "_snapshotKeyForValue:forDevice:", value, device);
  }

  return v6;
}

+ (id)localizedNameForValidValue:(unint64_t)value forDevice:(id)device
{
  v4 = [self _nameLocalizationKeyForValue:value forDevice:device];
  v5 = [NTKKaleidoscopeFaceBundle localizedStringForKey:v4 comment:@"<CustomAssetOption>"];

  return v5;
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value == 1000)
  {
    v6 = @"EDIT_OPTION_LABEL_KALEIDOSCOPE_ASSET_CUSTOM";
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___NTKKaleidoscopeCustomAssetOption;
    v6 = objc_msgSendSuper2(&v8, "_nameLocalizationKeyForValue:forDevice:", value, device);
  }

  return v6;
}

+ (id)_localizedNameForActionForValue:(unint64_t)value forDevice:(id)device
{
  if (value == 1000)
  {
    v6 = [NTKKaleidoscopeFaceBundle localizedStringForKey:@"KALEIDOSCOPE_CHOOSE_PHOTO" comment:@"Choose Photo…", v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_valueToFaceBundleStringDict
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DD04;
  block[3] = &unk_24D30;
  block[4] = self;
  if (qword_2CEB0 != -1)
  {
    dispatch_once(&qword_2CEB0, block);
  }

  return qword_2CEA8;
}

@end