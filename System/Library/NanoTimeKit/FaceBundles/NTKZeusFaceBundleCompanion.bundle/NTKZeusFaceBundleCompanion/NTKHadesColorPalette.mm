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
  v3 = [(NTKHadesColorPalette *)self pigmentEditOption];
  v4 = [v3 optionName];
  v5 = [v4 isEqualToString:@"hades.noir"];

  if (v5)
  {
    v6 = [(NTKHadesColorPalette *)self background];
    v7 = NTKColorByBrightening();
  }

  else
  {
    v8 = [(NTKHadesColorPalette *)self pigmentEditOption];
    v9 = [v8 collectionName];
    v10 = [v9 isEqual:@"hades.seasons.fall2021"];

    if (v10)
    {
      v11 = [(NTKHadesColorPalette *)self background];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = NTKHadesColorPalette;
      v11 = [(NTKHadesColorPalette *)&v13 swatch];
    }

    v7 = v11;
  }

  return v7;
}

- (id)tritium_numbers
{
  v3 = [(NTKHadesColorPalette *)self numbers];
  v4 = [(NTKHadesColorPalette *)self background];
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