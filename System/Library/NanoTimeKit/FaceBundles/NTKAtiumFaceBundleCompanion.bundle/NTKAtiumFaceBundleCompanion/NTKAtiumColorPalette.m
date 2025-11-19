@interface NTKAtiumColorPalette
- (BOOL)isRainbow;
- (BOOL)isThreeColor;
- (NTKAtiumColorPalette)init;
- (float)tritiumMaskMultiplier;
- (id)_handsColor;
- (id)_lightColor1;
- (id)_lightColor2;
- (id)_lightColor3;
- (id)swatchImageForSize:(CGSize)a3;
@end

@implementation NTKAtiumColorPalette

- (NTKAtiumColorPalette)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = NTKAtiumColorPalette;
  return [(NTKAtiumColorPalette *)&v5 initWithFaceClass:v3];
}

- (id)_lightColor1
{
  v2 = [(NTKAtiumColorPalette *)self primaryColor];
  v3 = NTKColorByModifyingHSB();

  return v3;
}

- (id)_lightColor2
{
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0;
  v9 = 0;
  v3 = [(NTKAtiumColorPalette *)self primaryColor];
  v4 = [v3 getHue:&v11 saturation:&v10 brightness:&v9 alpha:&v8];

  if (v4)
  {
    v5 = 0.3;
    if (v10 * 0.5 <= 0.3)
    {
      v5 = v10 * 0.5;
    }

    v10 = v5;
    v9 = 0x3FF0000000000000;
    v6 = [UIColor colorWithHue:"colorWithHue:saturation:brightness:alpha:" saturation:v11 brightness:? alpha:?];
  }

  else
  {
    v6 = [(NTKAtiumColorPalette *)self primaryColor];
  }

  return v6;
}

- (id)_lightColor3
{
  v2 = [(NTKAtiumColorPalette *)self primaryColor];
  v3 = NTKColorByModifyingHSB();

  return v3;
}

- (id)_handsColor
{
  if ([(NTKAtiumColorPalette *)self hasPrimaryColorRange])
  {
    v3 = [(NTKAtiumColorPalette *)self primaryColorWithFraction:0.0];
  }

  else
  {
    v4 = [(NTKAtiumColorPalette *)self lightColor1];
    v3 = NTKColorByApplyingWhiteOverlay();
  }

  return v3;
}

- (BOOL)isThreeColor
{
  v3 = [(NTKAtiumColorPalette *)self configuration];
  v4 = [v3 colorOption];
  if ([v4 containsString:@"threecolor"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKAtiumColorPalette;
    v5 = [(NTKAtiumColorPalette *)&v7 isUnityColor];
  }

  return v5;
}

- (BOOL)isRainbow
{
  v2 = [(NTKAtiumColorPalette *)self configuration];
  v3 = [v2 colorOption];
  v4 = [v3 isEqualToString:@"rainbow"];

  return v4;
}

- (float)tritiumMaskMultiplier
{
  v4.receiver = self;
  v4.super_class = NTKAtiumColorPalette;
  v2 = [(NTKAtiumColorPalette *)&v4 isUnityColor];
  result = 1.0;
  if (v2)
  {
    return 2.0;
  }

  return result;
}

- (id)swatchImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(NTKAtiumColorPalette *)self isRainbow])
  {
    v18.receiver = self;
    v18.super_class = NTKAtiumColorPalette;
    [(NTKAtiumColorPalette *)&v18 swatchImageForSize:width, height];
    v6 = LABEL_5:;
    goto LABEL_6;
  }

  v17.receiver = self;
  v17.super_class = NTKAtiumColorPalette;
  if ([(NTKAtiumColorPalette *)&v17 isUnityColor])
  {
    v16.receiver = self;
    v16.super_class = NTKAtiumColorPalette;
    [(NTKAtiumColorPalette *)&v16 swatchImageForSize:width, height];
    goto LABEL_5;
  }

  if ([(NTKAtiumColorPalette *)self isThreeColor])
  {
    if (qword_11FE8 != -1)
    {
      sub_5FE4();
    }

    v8 = [(NTKAtiumColorPalette *)self configuration];
    v9 = [v8 uniqueId];
    v21.width = width;
    v21.height = height;
    v10 = NSStringFromCGSize(v21);
    v11 = [NSString stringWithFormat:@"%@-%@", v9, v10];

    v6 = [qword_11FE0 objectForKey:v11];
    if (!v6)
    {
      v12 = [(NTKAtiumColorPalette *)self lightColor1];
      v19[0] = v12;
      v13 = [(NTKAtiumColorPalette *)self lightColor2];
      v19[1] = v13;
      v14 = [(NTKAtiumColorPalette *)self lightColor3];
      v19[2] = v14;
      v15 = [NSArray arrayWithObjects:v19 count:3];

      v6 = NTKSwatchColorSectorsImage();
      [qword_11FE0 setObject:v6 forKey:v11];
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_6:

  return v6;
}

@end