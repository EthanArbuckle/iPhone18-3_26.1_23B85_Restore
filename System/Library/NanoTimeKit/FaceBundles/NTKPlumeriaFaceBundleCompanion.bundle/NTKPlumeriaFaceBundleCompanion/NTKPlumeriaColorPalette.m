@interface NTKPlumeriaColorPalette
- (id)swatchImageForSize:(CGSize)a3;
@end

@implementation NTKPlumeriaColorPalette

- (id)swatchImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (qword_17588 != -1)
  {
    sub_6EB8();
  }

  v6 = [(NTKPlumeriaColorPalette *)self configuration];
  v7 = [v6 uniqueId];
  v19.width = width;
  v19.height = height;
  v8 = NSStringFromCGSize(v19);
  v9 = [NSString stringWithFormat:@"%@-%@", v7, v8];

  v10 = [qword_17580 objectForKey:v9];
  if (!v10)
  {
    v11 = [(NTKPlumeriaColorPalette *)self configuration];
    v12 = [v11 colorOption];
    v13 = NTKPlumeriaSettingIndexFromColorwayName(v12);

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