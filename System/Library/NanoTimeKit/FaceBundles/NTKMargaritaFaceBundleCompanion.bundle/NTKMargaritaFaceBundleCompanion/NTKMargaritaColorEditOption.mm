@interface NTKMargaritaColorEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKMargaritaColorEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 0x29)
  {
    return 0;
  }

  else
  {
    return *(&off_14808 + a3);
  }
}

- (id)localizedName
{
  v2 = [(NTKMargaritaColorEditOption *)self pigmentEditOption];
  v3 = [v2 localizedName];

  return v3;
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
  v2 = [(NTKMargaritaColorEditOption *)self color];
  if (v2 > 0x2A)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_14958 + v2);
  }

  v4 = [[NTKPigmentEditOption alloc] initWithOptionName:v3 collectionName:@"margarita"];

  return v4;
}

@end