@interface NTKCharacterColorPalette
- (BOOL)isVintageColor;
- (NSNumber)desaturation;
@end

@implementation NTKCharacterColorPalette

- (BOOL)isVintageColor
{
  v2 = [(NTKCharacterColorPalette *)self configuration];
  v3 = [v2 colorOption];
  v4 = [v3 isEqual:@"vintage"];

  return v4;
}

- (NSNumber)desaturation
{
  if ([(NTKCharacterColorPalette *)self isVintageColor])
  {
    return &off_1EB88;
  }

  else
  {
    return &off_1EB98;
  }
}

@end