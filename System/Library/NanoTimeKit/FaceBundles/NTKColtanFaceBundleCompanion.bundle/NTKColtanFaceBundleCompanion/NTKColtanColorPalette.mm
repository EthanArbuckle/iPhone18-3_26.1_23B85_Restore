@interface NTKColtanColorPalette
- (BOOL)isRedGreenGold;
- (NSNumber)tickColoration;
- (id)swatchImageForSize:(CGSize)size;
@end

@implementation NTKColtanColorPalette

- (id)swatchImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(NTKColtanColorPalette *)self isRedGreenGold])
  {
    unityRedColor = [(NTKColtanColorPalette *)self unityRedColor];
    v7 = +[UIColor blackColor];
    unityGreenColor = [(NTKColtanColorPalette *)self unityGreenColor];
    height = [(NTKColtanColorPalette *)self _unitySwatchImageForSize:unityRedColor redColor:v7 blackColor:unityGreenColor greenColor:width, height];
  }

  else
  {
    height = 0;
  }

  return height;
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
  pigmentEditOption = [(NTKColtanColorPalette *)self pigmentEditOption];
  fullname = [pigmentEditOption fullname];
  v4 = [fullname isEqualToString:@"coltan.redgreengold"];

  return v4;
}

@end