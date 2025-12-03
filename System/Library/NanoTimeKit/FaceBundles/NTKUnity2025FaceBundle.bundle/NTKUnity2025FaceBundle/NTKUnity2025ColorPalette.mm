@interface NTKUnity2025ColorPalette
- (id)swatchImageForSize:(CGSize)size;
@end

@implementation NTKUnity2025ColorPalette

- (id)swatchImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (qword_27E1EE118 != -1)
  {
    sub_23C09FAC8();
  }

  v6 = MEMORY[0x277CCACA8];
  configuration = [(NTKFaceColorPalette *)self configuration];
  uniqueId = [configuration uniqueId];
  v20.width = width;
  v20.height = height;
  v9 = NSStringFromCGSize(v20);
  v10 = [v6 stringWithFormat:@"%@-%@", uniqueId, v9];

  v11 = [qword_27E1EE110 objectForKey:v10];
  if (!v11)
  {
    configuration2 = [(NTKFaceColorPalette *)self configuration];
    colorOption = [configuration2 colorOption];
    v14 = NTKUnity2025SettingIndexFromColorwayName(colorOption);

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (!v15)
    {
      goto LABEL_8;
    }

    if ((v14 - 1) <= 4)
    {
      v16 = off_278BADF80[v14 - 1];
    }

    v11 = NTKImageNamedFromBundle();
    if (!v11)
    {
LABEL_8:
      v17 = generateColorArray(v14);
      v11 = NTKSwatchColorStripesImage();
    }

    [qword_27E1EE110 setObject:v11 forKey:v10];
  }

  return v11;
}

@end