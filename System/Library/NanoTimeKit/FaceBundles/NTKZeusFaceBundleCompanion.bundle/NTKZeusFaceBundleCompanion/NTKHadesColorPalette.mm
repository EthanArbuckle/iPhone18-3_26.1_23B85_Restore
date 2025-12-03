@interface NTKHadesColorPalette
- (NTKHadesColorPalette)init;
- (UIColor)swatch;
- (id)tritium_numbers;
@end

@implementation NTKHadesColorPalette

- (NTKHadesColorPalette)init
{
  v3 = +[NTKHadesFace pigmentFaceDomain];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v9.receiver = self;
  v9.super_class = NTKHadesColorPalette;
  v5 = [(NTKHadesColorPalette *)&v9 initWithDomainName:v3 inBundle:v4];

  if (v5)
  {
    v6 = objc_alloc_init(NTKZeusColorPalette);
    zeusPalette = v5->_zeusPalette;
    v5->_zeusPalette = v6;
  }

  return v5;
}

- (UIColor)swatch
{
  pigmentEditOption = [(NTKHadesColorPalette *)self pigmentEditOption];
  optionName = [pigmentEditOption optionName];
  v5 = [optionName isEqualToString:@"hades.noir"];

  if (v5)
  {
    background = [(NTKHadesColorPalette *)self background];
    v7 = NTKColorByBrightening();
  }

  else
  {
    pigmentEditOption2 = [(NTKHadesColorPalette *)self pigmentEditOption];
    collectionName = [pigmentEditOption2 collectionName];
    v10 = [collectionName isEqual:@"hades.seasons.fall2021"];

    if (v10)
    {
      background2 = [(NTKHadesColorPalette *)self background];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = NTKHadesColorPalette;
      background2 = [(NTKHadesColorPalette *)&v13 swatch];
    }

    v7 = background2;
  }

  return v7;
}

- (id)tritium_numbers
{
  numbers = [(NTKHadesColorPalette *)self numbers];
  background = [(NTKHadesColorPalette *)self background];
  v5 = CLKUICompareColorsByLightness();

  if (v5 == -1)
  {
    [(NTKHadesColorPalette *)self background];
  }

  else
  {
    [(NTKHadesColorPalette *)self numbers];
  }
  v6 = ;

  return v6;
}

@end