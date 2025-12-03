@interface NTKCharacterColorPalette
- (BOOL)isVintageColor;
- (NSNumber)desaturation;
@end

@implementation NTKCharacterColorPalette

- (BOOL)isVintageColor
{
  configuration = [(NTKCharacterColorPalette *)self configuration];
  colorOption = [configuration colorOption];
  v4 = [colorOption isEqual:@"vintage"];

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