@interface NTKSeltzerColorPalette
- (id)_secondTickInactive;
@end

@implementation NTKSeltzerColorPalette

- (id)_secondTickInactive
{
  secondTickActive = [(NTKSeltzerColorPalette *)self secondTickActive];
  v3 = [secondTickActive colorWithAlphaComponent:0.3];

  return v3;
}

@end