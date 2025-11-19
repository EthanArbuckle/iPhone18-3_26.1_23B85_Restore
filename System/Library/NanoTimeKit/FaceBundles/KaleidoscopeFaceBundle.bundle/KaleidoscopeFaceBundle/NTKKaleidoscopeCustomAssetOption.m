@interface NTKKaleidoscopeCustomAssetOption
+ (id)_localizedNameForActionForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)localizedNameForValidValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKKaleidoscopeCustomAssetOption

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_D8AC;
  v5[3] = &unk_24D08;
  v5[4] = a1;
  sub_D8AC(v5, a3);
  v3 = qword_2CE88;

  return v3;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 == 1000)
  {
    v6 = @"asset-custom";
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___NTKKaleidoscopeCustomAssetOption;
    v6 = objc_msgSendSuper2(&v8, "_snapshotKeyForValue:forDevice:", a3, a4);
  }

  return v6;
}

+ (id)localizedNameForValidValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = [a1 _nameLocalizationKeyForValue:a3 forDevice:a4];
  v5 = [NTKKaleidoscopeFaceBundle localizedStringForKey:v4 comment:@"<CustomAssetOption>"];

  return v5;
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 == 1000)
  {
    v6 = @"EDIT_OPTION_LABEL_KALEIDOSCOPE_ASSET_CUSTOM";
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___NTKKaleidoscopeCustomAssetOption;
    v6 = objc_msgSendSuper2(&v8, "_nameLocalizationKeyForValue:forDevice:", a3, a4);
  }

  return v6;
}

+ (id)_localizedNameForActionForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 == 1000)
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