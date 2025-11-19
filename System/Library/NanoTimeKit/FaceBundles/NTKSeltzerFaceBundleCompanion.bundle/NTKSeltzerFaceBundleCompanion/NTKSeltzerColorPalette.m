@interface NTKSeltzerColorPalette
- (id)_secondTickInactive;
@end

@implementation NTKSeltzerColorPalette

- (id)_secondTickInactive
{
  v2 = [(NTKSeltzerColorPalette *)self secondTickActive];
  v3 = [v2 colorWithAlphaComponent:0.3];

  return v3;
}

@end