@interface NTKMargaritaColorEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKMargaritaColorEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 0x29)
  {
    return 0;
  }

  else
  {
    return *(&off_14808 + value);
  }
}

- (id)localizedName
{
  pigmentEditOption = [(NTKMargaritaColorEditOption *)self pigmentEditOption];
  localizedName = [pigmentEditOption localizedName];

  return localizedName;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_1AC70 != -1)
  {
    sub_97A8();
  }

  v3 = qword_1AC68;

  return v3;
}

- (id)pigmentEditOption
{
  color = [(NTKMargaritaColorEditOption *)self color];
  if (color > 0x2A)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_14958 + color);
  }

  v4 = [[NTKPigmentEditOption alloc] initWithOptionName:v3 collectionName:@"margarita"];

  return v4;
}

@end