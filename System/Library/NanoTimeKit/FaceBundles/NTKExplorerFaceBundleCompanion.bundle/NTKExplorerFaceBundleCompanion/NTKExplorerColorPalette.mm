@interface NTKExplorerColorPalette
- (NTKExplorerColorPalette)init;
- (id)_hands;
- (id)_handsInlay;
- (id)tritium_hands;
- (id)tritium_handsInlay;
@end

@implementation NTKExplorerColorPalette

- (NTKExplorerColorPalette)init
{
  v3 = +[NTKExplorerColorEditOption pigmentFaceDomain];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v7.receiver = self;
  v7.super_class = NTKExplorerColorPalette;
  v5 = [(NTKExplorerColorPalette *)&v7 initWithDomainName:v3 inBundle:v4];

  return v5;
}

- (id)_hands
{
  if ([(NTKExplorerColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKExplorerColorPalette *)self paletteAtIndex:0];
    v4 = [v3 primaryColor];
  }

  else
  {
    v4 = [(NTKExplorerColorPalette *)self primaryColor];
  }

  return v4;
}

- (id)_handsInlay
{
  if ([(NTKExplorerColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKExplorerColorPalette *)self paletteAtIndex:1];
    v4 = [v3 primaryColor];
  }

  else
  {
    v4 = [(NTKExplorerColorPalette *)self primaryShiftedColor];
  }

  return v4;
}

- (id)tritium_hands
{
  v3 = [(NTKExplorerColorPalette *)self configuration];
  v4 = [v3 colorOption];
  v5 = [v4 isEqualToString:@"white | gray"];

  if (v5)
  {
    [(NTKExplorerColorPalette *)self handsInlay];
  }

  else
  {
    [(NTKExplorerColorPalette *)self hands];
  }
  v6 = ;

  return v6;
}

- (id)tritium_handsInlay
{
  v3 = [(NTKExplorerColorPalette *)self configuration];
  v4 = [v3 colorOption];
  [v4 isEqualToString:@"white | gray"];

  return [(NTKExplorerColorPalette *)self handsInlay];
}

@end