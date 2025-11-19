@interface NTKShibaColorPalette
- (BOOL)_usesOverrideTickColors;
- (id)_activeTickColor;
- (id)_inactiveTickColor;
@end

@implementation NTKShibaColorPalette

- (BOOL)_usesOverrideTickColors
{
  v3 = [(NTKShibaColorPalette *)self pigmentEditOption];
  v4 = [v3 fullname];
  v5 = [v4 isEqualToString:ntk_victory_fall2025_voltSplash];

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
  v8 = [v7 isBlackColor];

  if ((v8 & 1) == 0)
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
    v3 = [(NTKShibaColorPalette *)self activeTickColor];
    v4 = [v3 colorWithAlphaComponent:0.3];
  }

  else
  {
    v4 = [UIColor colorWithWhite:0.4 alpha:1.0];
  }

  return v4;
}

@end