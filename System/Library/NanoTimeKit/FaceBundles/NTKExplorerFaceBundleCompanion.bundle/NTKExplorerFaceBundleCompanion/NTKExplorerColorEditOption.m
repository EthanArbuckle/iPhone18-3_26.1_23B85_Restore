@interface NTKExplorerColorEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKExplorerColorEditOption

- (id)localizedName
{
  v2 = [(NTKExplorerColorEditOption *)self pigmentEditOption];
  v3 = [v2 localizedName];

  return v3;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_10420[a3];
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

  v3 = [objc_opt_class() pigmentFaceDomain];
  v4 = [[NTKPigmentEditOption alloc] initWithOptionName:v2 collectionName:v3];

  return v4;
}

@end