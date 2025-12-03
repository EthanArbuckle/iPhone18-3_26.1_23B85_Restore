@interface NTKFaceColorPalette
- (BOOL)isSiriColor;
@end

@implementation NTKFaceColorPalette

- (BOOL)isSiriColor
{
  configuration = [(NTKFaceColorPalette *)self configuration];
  colorOption = [configuration colorOption];
  v4 = [colorOption isEqualToString:@"siri"];

  return v4;
}

@end