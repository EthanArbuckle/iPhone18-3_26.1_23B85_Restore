@interface NTKDolomiteColorPalette
+ (id)defaultColorPalette;
- (BOOL)isDynamic;
- (NSNumber)dynamicPercent;
- (NSNumber)isHardwareColor;
- (NSNumber)isJetBlack;
- (id)swatchImageForSize:(CGSize)size;
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

- (id)swatchImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(NTKDolomiteColorPalette *)self isDynamic])
  {
    v30.receiver = self;
    v30.super_class = NTKDolomiteColorPalette;
    height = [(NTKDolomiteColorPalette *)&v30 swatchImageForSize:width, height];
    goto LABEL_23;
  }

  if (width == CGSizeZero.width && height == CGSizeZero.height)
  {
    [NTKEditOption sizeForSwatchStyle:0];
    width = v8;
    height = v9;
  }

  northColor = [(NTKDolomiteColorPalette *)self northColor];
  southColor = [(NTKDolomiteColorPalette *)self southColor];
  v29 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  v26 = 0;
  [northColor getRed:&v29 green:&v28 blue:&v27 alpha:&v26];
  if (v29 < 2.22044605e-16 && v28 < 2.22044605e-16 && v27 < 2.22044605e-16)
  {
    v16 = [UIColor colorWithRed:0.101960786 green:0.101960786 blue:0.101960786 alpha:1.0];
    v15 = northColor;
    northColor = v16;
  }

  else
  {
    [southColor getRed:&v29 green:&v28 blue:&v27 alpha:{&v26, 2.22044605e-16, v28, v27}];
    if (v29 >= 2.22044605e-16 || v28 >= 2.22044605e-16 || v27 >= 2.22044605e-16)
    {
      goto LABEL_22;
    }

    v14 = [UIColor colorWithRed:0.101960786 green:0.101960786 blue:0.101960786 alpha:1.0];
    v15 = southColor;
    southColor = v14;
  }

LABEL_22:
  v17 = [[UIGraphicsImageRenderer alloc] initWithSize:{width, height}];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1230;
  v21[3] = &unk_D5C408;
  v24 = width;
  v25 = height;
  v22 = northColor;
  v23 = southColor;
  v18 = southColor;
  v19 = northColor;
  height = [v17 imageWithActions:v21];

LABEL_23:

  return height;
}

- (BOOL)isDynamic
{
  configuration = [(NTKDolomiteColorPalette *)self configuration];
  colorOption = [configuration colorOption];
  v4 = [colorOption isEqualToString:@"dynamic"];

  return v4;
}

- (NSNumber)isHardwareColor
{
  configuration = [(NTKDolomiteColorPalette *)self configuration];
  colorOption = [configuration colorOption];
  if ([colorOption containsString:@"silver"])
  {
    goto LABEL_4;
  }

  configuration2 = [(NTKDolomiteColorPalette *)self configuration];
  colorOption2 = [configuration2 colorOption];
  if ([colorOption2 containsString:@"rosegold"])
  {

LABEL_4:
    LODWORD(v7) = 1.0;
    goto LABEL_7;
  }

  configuration3 = [(NTKDolomiteColorPalette *)self configuration];
  colorOption3 = [configuration3 colorOption];
  v10 = [colorOption3 containsString:@"jetblack"];

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
  configuration = [(NTKDolomiteColorPalette *)self configuration];
  colorOption = [configuration colorOption];
  v4 = [colorOption containsString:@"jetblack"];

  v5 = 0.0;
  if (v4)
  {
    *&v5 = 1.0;
  }

  v6 = [NSNumber numberWithFloat:v5];

  return v6;
}

@end