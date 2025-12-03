@interface NTKShibaColorPalette
- (BOOL)_usesOverrideTickColors;
- (id)_activeTickColor;
- (id)_inactiveTickColor;
@end

@implementation NTKShibaColorPalette

- (BOOL)_usesOverrideTickColors
{
  pigmentEditOption = [(NTKShibaColorPalette *)self pigmentEditOption];
  fullname = [pigmentEditOption fullname];
  v5 = [fullname isEqualToString:ntk_victory_fall2025_voltSplash];

  if (v5)
  {
    return 1;
  }

  if (![(NTKShibaColorPalette *)self isCompositePalette])
  {
    return 0;
  }

  v6 = 1;
  v7 = [(NTKShibaColorPalette *)self paletteAtIndex:1];
  isBlackColor = [v7 isBlackColor];

  if ((isBlackColor & 1) == 0)
  {
    return 0;
  }

  return v6;
}

- (id)_activeTickColor
{
  if ([(NTKShibaColorPalette *)self _usesOverrideTickColors])
  {
    [(NTKShibaColorPalette *)self primaryTextColor];
  }

  else
  {
    [UIColor colorWithWhite:1.0 alpha:1.0];
  }
  v3 = ;

  return v3;
}

- (id)_inactiveTickColor
{
  if ([(NTKShibaColorPalette *)self _usesOverrideTickColors])
  {
    activeTickColor = [(NTKShibaColorPalette *)self activeTickColor];
    v4 = [activeTickColor colorWithAlphaComponent:0.3];
  }

  else
  {
    v4 = [UIColor colorWithWhite:0.4 alpha:1.0];
  }

  return v4;
}

@end