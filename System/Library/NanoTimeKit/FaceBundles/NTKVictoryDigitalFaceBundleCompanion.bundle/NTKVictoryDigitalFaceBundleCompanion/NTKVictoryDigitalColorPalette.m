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
    v4 = [v3 primaryColor];
  }

  else
  {
    v5 = [(NTKVictoryDigitalColorPalette *)self pigmentEditOption];
    v6 = [v5 fullname];
    v7 = [v6 isEqualToString:ntk_victory_fall2025_voltSplash];

    if (v7)
    {
      +[UIColor blackColor];
    }

    else
    {
      [(NTKVictoryDigitalColorPalette *)self primaryColor];
    }
    v4 = ;
  }

  return v4;
}

- (id)_complication
{
  if ([(NTKVictoryDigitalColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKVictoryDigitalColorPalette *)self paletteAtIndex:1];
    v4 = [v3 primaryColor];
  }

  else
  {
    v5 = [(NTKVictoryDigitalColorPalette *)self pigmentEditOption];
    v6 = [v5 fullname];
    v7 = [v6 isEqualToString:ntk_victory_fall2025_voltSplash];

    if (v7)
    {
      +[UIColor blackColor];
    }

    else
    {
      [(NTKVictoryDigitalColorPalette *)self primaryColor];
    }
    v4 = ;
  }

  return v4;
}

- (id)_complicationPlatter
{
  v3 = [(NTKVictoryDigitalColorPalette *)self complication];
  v4 = [(NTKVictoryDigitalColorPalette *)self pigmentEditOption];
  v5 = [v4 fullname];
  v6 = [v5 isEqualToString:ntk_victory_fall2025_voltSplash];

  if (v6)
  {
    v7 = [(NTKVictoryDigitalColorPalette *)self primaryColor];

    v3 = v7;
  }

  v8 = NTKColorByPremultiplyingAlpha();

  return v8;
}

- (id)_background
{
  v3 = [(NTKVictoryDigitalColorPalette *)self pigmentEditOption];
  v4 = [v3 fullname];
  v5 = [v4 isEqualToString:ntk_victory_fall2025_voltSplash];

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
  v3 = [(NTKVictoryDigitalColorPalette *)self pigmentEditOption];
  v4 = [v3 fullname];
  v5 = [v4 isEqualToString:ntk_victory_fall2025_voltSplash];

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