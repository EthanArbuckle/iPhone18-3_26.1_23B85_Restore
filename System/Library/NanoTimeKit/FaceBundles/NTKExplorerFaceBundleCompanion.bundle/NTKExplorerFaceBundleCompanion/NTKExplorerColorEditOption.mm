@interface NTKExplorerColorEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKExplorerColorEditOption

- (id)localizedName
{
  pigmentEditOption = [(NTKExplorerColorEditOption *)self pigmentEditOption];
  localizedName = [pigmentEditOption localizedName];

  return localizedName;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return off_10420[value];
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_161E0 != -1)
  {
    sub_82C8();
  }

  v3 = qword_161D8;

  return v3;
}

- (id)pigmentEditOption
{
  if ([(NTKExplorerColorEditOption *)self color]> 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = NTKNameForDuotones();
  }

  pigmentFaceDomain = [objc_opt_class() pigmentFaceDomain];
  v4 = [[NTKPigmentEditOption alloc] initWithOptionName:v2 collectionName:pigmentFaceDomain];

  return v4;
}

@end