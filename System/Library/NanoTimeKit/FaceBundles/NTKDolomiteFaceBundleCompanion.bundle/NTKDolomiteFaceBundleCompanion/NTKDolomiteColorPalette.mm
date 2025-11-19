@interface NTKDolomiteColorPalette
+ (id)defaultColorPalette;
- (BOOL)isDynamic;
- (NSNumber)dynamicPercent;
- (NSNumber)isHardwareColor;
- (NSNumber)isJetBlack;
- (id)swatchImageForSize:(CGSize)a3;
@end

@implementation NTKDolomiteColorPalette

+ (id)defaultColorPalette
{
  v2 = objc_opt_new();

  return v2;
}

- (NSNumber)dynamicPercent
{
  *&v2 = [(NTKDolomiteColorPalette *)self isDynamic];

  return [NSNumber numberWithFloat:v2];
}

- (id)swatchImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(NTKDolomiteColorPalette *)self isDynamic])
  {
    v30.receiver = self;
    v30.super_class = NTKDolomiteColorPalette;
    v6 = [(NTKDolomiteColorPalette *)&v30 swatchImageForSize:width, height];
    goto LABEL_23;
  }

  if (width == CGSizeZero.width && height == CGSizeZero.height)
  {
    [NTKEditOption sizeForSwatchStyle:0];
    width = v8;
    height = v9;
  }

  v10 = [(NTKDolomiteColorPalette *)self northColor];
  v11 = [(NTKDolomiteColorPalette *)self southColor];
  v29 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  v26 = 0;
  [v10 getRed:&v29 green:&v28 blue:&v27 alpha:&v26];
  if (v29 < 2.22044605e-16 && v28 < 2.22044605e-16 && v27 < 2.22044605e-16)
  {
    v16 = [UIColor colorWithRed:0.101960786 green:0.101960786 blue:0.101960786 alpha:1.0];
    v15 = v10;
    v10 = v16;
  }

  else
  {
    [v11 getRed:&v29 green:&v28 blue:&v27 alpha:{&v26, 2.22044605e-16, v28, v27}];
    if (v29 >= 2.22044605e-16 || v28 >= 2.22044605e-16 || v27 >= 2.22044605e-16)
    {
      goto LABEL_22;
    }

    v14 = [UIColor colorWithRed:0.101960786 green:0.101960786 blue:0.101960786 alpha:1.0];
    v15 = v11;
    v11 = v14;
  }

LABEL_22:
  v17 = [[UIGraphicsImageRenderer alloc] initWithSize:{width, height}];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1230;
  v21[3] = &unk_D5C408;
  v24 = width;
  v25 = height;
  v22 = v10;
  v23 = v11;
  v18 = v11;
  v19 = v10;
  v6 = [v17 imageWithActions:v21];

LABEL_23:

  return v6;
}

- (BOOL)isDynamic
{
  v2 = [(NTKDolomiteColorPalette *)self configuration];
  v3 = [v2 colorOption];
  v4 = [v3 isEqualToString:@"dynamic"];

  return v4;
}

- (NSNumber)isHardwareColor
{
  v3 = [(NTKDolomiteColorPalette *)self configuration];
  v4 = [v3 colorOption];
  if ([v4 containsString:@"silver"])
  {
    goto LABEL_4;
  }

  v5 = [(NTKDolomiteColorPalette *)self configuration];
  v6 = [v5 colorOption];
  if ([v6 containsString:@"rosegold"])
  {

LABEL_4:
    LODWORD(v7) = 1.0;
    goto LABEL_7;
  }

  v8 = [(NTKDolomiteColorPalette *)self configuration];
  v9 = [v8 colorOption];
  v10 = [v9 containsString:@"jetblack"];

  v7 = 0.0;
  if (v10)
  {
    *&v7 = 1.0;
  }

LABEL_7:
  v11 = [NSNumber numberWithFloat:v7];

  return v11;
}

- (NSNumber)isJetBlack
{
  v2 = [(NTKDolomiteColorPalette *)self configuration];
  v3 = [v2 colorOption];
  v4 = [v3 containsString:@"jetblack"];

  v5 = 0.0;
  if (v4)
  {
    *&v5 = 1.0;
  }

  v6 = [NSNumber numberWithFloat:v5];

  return v6;
}

@end