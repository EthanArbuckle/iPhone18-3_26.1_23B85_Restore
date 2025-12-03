@interface NTKVictoryDigitalColorPalette
- (id)_background;
- (id)_complication;
- (id)_complicationPlatter;
- (id)_digits;
- (id)_digitsOutlineBackground;
@end

@implementation NTKVictoryDigitalColorPalette

- (id)_digits
{
  if ([(NTKVictoryDigitalColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKVictoryDigitalColorPalette *)self paletteAtIndex:0];
    primaryColor = [v3 primaryColor];
  }

  else
  {
    pigmentEditOption = [(NTKVictoryDigitalColorPalette *)self pigmentEditOption];
    fullname = [pigmentEditOption fullname];
    v7 = [fullname isEqualToString:ntk_victory_fall2025_voltSplash];

    if (v7)
    {
      +[UIColor blackColor];
    }

    else
    {
      [(NTKVictoryDigitalColorPalette *)self primaryColor];
    }
    primaryColor = ;
  }

  return primaryColor;
}

- (id)_complication
{
  if ([(NTKVictoryDigitalColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKVictoryDigitalColorPalette *)self paletteAtIndex:1];
    primaryColor = [v3 primaryColor];
  }

  else
  {
    pigmentEditOption = [(NTKVictoryDigitalColorPalette *)self pigmentEditOption];
    fullname = [pigmentEditOption fullname];
    v7 = [fullname isEqualToString:ntk_victory_fall2025_voltSplash];

    if (v7)
    {
      +[UIColor blackColor];
    }

    else
    {
      [(NTKVictoryDigitalColorPalette *)self primaryColor];
    }
    primaryColor = ;
  }

  return primaryColor;
}

- (id)_complicationPlatter
{
  complication = [(NTKVictoryDigitalColorPalette *)self complication];
  pigmentEditOption = [(NTKVictoryDigitalColorPalette *)self pigmentEditOption];
  fullname = [pigmentEditOption fullname];
  v6 = [fullname isEqualToString:ntk_victory_fall2025_voltSplash];

  if (v6)
  {
    primaryColor = [(NTKVictoryDigitalColorPalette *)self primaryColor];

    complication = primaryColor;
  }

  v8 = NTKColorByPremultiplyingAlpha();

  return v8;
}

- (id)_background
{
  pigmentEditOption = [(NTKVictoryDigitalColorPalette *)self pigmentEditOption];
  fullname = [pigmentEditOption fullname];
  v5 = [fullname isEqualToString:ntk_victory_fall2025_voltSplash];

  if (v5)
  {
    [(NTKVictoryDigitalColorPalette *)self primaryColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v6 = ;

  return v6;
}

- (id)_digitsOutlineBackground
{
  pigmentEditOption = [(NTKVictoryDigitalColorPalette *)self pigmentEditOption];
  fullname = [pigmentEditOption fullname];
  v5 = [fullname isEqualToString:ntk_victory_fall2025_voltSplash];

  if (v5)
  {
    [(NTKVictoryDigitalColorPalette *)self primaryColor];
  }

  else
  {
    [UIColor colorWithWhite:0.12 alpha:1.0];
  }
  v6 = ;

  return v6;
}

@end