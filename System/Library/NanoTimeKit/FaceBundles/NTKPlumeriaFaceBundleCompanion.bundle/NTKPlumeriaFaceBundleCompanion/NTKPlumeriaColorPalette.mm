@interface NTKPlumeriaColorPalette
- (id)swatchImageForSize:(CGSize)size;
@end

@implementation NTKPlumeriaColorPalette

- (id)swatchImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (qword_17588 != -1)
  {
    sub_6EB8();
  }

  configuration = [(NTKPlumeriaColorPalette *)self configuration];
  uniqueId = [configuration uniqueId];
  v19.width = width;
  v19.height = height;
  v8 = NSStringFromCGSize(v19);
  v9 = [NSString stringWithFormat:@"%@-%@", uniqueId, v8];

  v10 = [qword_17580 objectForKey:v9];
  if (!v10)
  {
    configuration2 = [(NTKPlumeriaColorPalette *)self configuration];
    colorOption = [configuration2 colorOption];
    v13 = NTKPlumeriaSettingIndexFromColorwayName(colorOption);

    v14 = [NSBundle bundleForClass:objc_opt_class()];
    if (!v14)
    {
      goto LABEL_8;
    }

    if ((v13 - 1) <= 3)
    {
      v15 = *(&off_10410 + (v13 - 1));
    }

    v10 = NTKImageNamedFromBundle();
    if (!v10)
    {
LABEL_8:
      v16 = generateColorArray(v13);
      v10 = NTKSwatchColorSectorsImage();
    }

    [qword_17580 setObject:v10 forKey:v9];
  }

  return v10;
}

@end