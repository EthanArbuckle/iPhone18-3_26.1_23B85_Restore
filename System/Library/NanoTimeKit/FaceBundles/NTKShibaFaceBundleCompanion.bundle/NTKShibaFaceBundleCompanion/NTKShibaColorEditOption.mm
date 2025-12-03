@interface NTKShibaColorEditOption
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKShibaColorEditOption

- (id)localizedName
{
  pigmentEditOption = [(NTKShibaColorEditOption *)self pigmentEditOption];
  localizedName = [pigmentEditOption localizedName];

  return localizedName;
}

- (id)_valueToFaceBundleStringDict
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1F64;
  block[3] = &unk_C340;
  block[4] = self;
  if (qword_11A00 != -1)
  {
    dispatch_once(&qword_11A00, block);
  }

  return qword_119F8;
}

- (id)pigmentEditOption
{
  if ([(NTKShibaColorEditOption *)self color]== "Frameworks/UIKit.framework/UIKit")
  {
    v3 = [NTKPigmentEditOption pigmentNamed:ntk_special_multicolor];
  }

  else
  {
    v4 = NTKColorPaletteDomainVictoryHybrid;
    v5 = [NTKOlympusColorEditOption colorNameForColorValue:[(NTKShibaColorEditOption *)self color]];
    v3 = [[NTKPigmentEditOption alloc] initWithOptionName:v5 collectionName:v4];
  }

  return v3;
}

@end