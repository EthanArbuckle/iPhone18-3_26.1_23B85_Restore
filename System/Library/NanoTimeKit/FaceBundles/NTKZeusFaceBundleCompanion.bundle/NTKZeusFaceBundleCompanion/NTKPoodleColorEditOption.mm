@interface NTKPoodleColorEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)colorNameForColorValue:(unint64_t)a3;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKPoodleColorEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 9)
  {
    return 0;
  }

  else
  {
    return off_44AA0[a3];
  }
}

- (id)localizedName
{
  v2 = [(NTKPoodleColorEditOption *)self pigmentEditOption];
  v3 = [v2 localizedName];

  return v3;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_58560 != -1)
  {
    sub_2ECE8();
  }

  v3 = qword_58558;

  return v3;
}

- (id)pigmentEditOption
{
  v2 = [objc_opt_class() colorNameForColorValue:{-[NTKPoodleColorEditOption color](self, "color")}];
  v3 = [[NTKPigmentEditOption alloc] initWithOptionName:v2 collectionName:@"zeus"];

  return v3;
}

+ (id)colorNameForColorValue:(unint64_t)a3
{
  if (a3 > 9)
  {
    return 0;
  }

  else
  {
    return off_44AF0[a3];
  }
}

@end