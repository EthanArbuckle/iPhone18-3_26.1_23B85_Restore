@interface NTKColtanColorPalette
- (BOOL)isRedGreenGold;
- (NSNumber)tickColoration;
- (id)swatchImageForSize:(CGSize)a3;
@end

@implementation NTKColtanColorPalette

- (id)swatchImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(NTKColtanColorPalette *)self isRedGreenGold])
  {
    v6 = [(NTKColtanColorPalette *)self unityRedColor];
    v7 = +[UIColor blackColor];
    v8 = [(NTKColtanColorPalette *)self unityGreenColor];
    v9 = [(NTKColtanColorPalette *)self _unitySwatchImageForSize:v6 redColor:v7 blackColor:v8 greenColor:width, height];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSNumber)tickColoration
{
  if ([(NTKColtanColorPalette *)self isRedGreenGold])
  {
    return &off_10CB0;
  }

  else
  {
    return &off_10CC0;
  }
}

- (BOOL)isRedGreenGold
{
  v2 = [(NTKColtanColorPalette *)self pigmentEditOption];
  v3 = [v2 fullname];
  v4 = [v3 isEqualToString:@"coltan.redgreengold"];

  return v4;
}

@end