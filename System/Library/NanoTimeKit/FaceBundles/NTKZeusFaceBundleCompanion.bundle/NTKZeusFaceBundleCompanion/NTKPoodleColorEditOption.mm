@interface NTKPoodleColorEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)colorNameForColorValue:(unint64_t)value;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKPoodleColorEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 9)
  {
    return 0;
  }

  else
  {
    return off_44AA0[value];
  }
}

- (id)localizedName
{
  pigmentEditOption = [(NTKPoodleColorEditOption *)self pigmentEditOption];
  localizedName = [pigmentEditOption localizedName];

  return localizedName;
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

+ (id)colorNameForColorValue:(unint64_t)value
{
  if (value > 9)
  {
    return 0;
  }

  else
  {
    return off_44AF0[value];
  }
}

@end