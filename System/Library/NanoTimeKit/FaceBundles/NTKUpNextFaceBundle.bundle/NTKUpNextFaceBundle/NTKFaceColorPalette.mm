@interface NTKFaceColorPalette
- (BOOL)isSiriColor;
@end

@implementation NTKFaceColorPalette

- (BOOL)isSiriColor
{
  v2 = [(NTKFaceColorPalette *)self configuration];
  v3 = [v2 colorOption];
  v4 = [v3 isEqualToString:@"siri"];

  return v4;
}

@end