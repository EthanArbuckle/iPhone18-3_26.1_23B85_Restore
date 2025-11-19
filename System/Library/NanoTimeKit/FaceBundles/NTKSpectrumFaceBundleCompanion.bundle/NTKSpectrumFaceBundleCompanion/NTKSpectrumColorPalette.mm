@interface NTKSpectrumColorPalette
- (BOOL)is3ComponentsGradient;
- (NSNumber)overlayOpacity;
- (NTKSpectrumColorPalette)init;
- (id)_bandColor;
- (id)_complicationColor;
- (id)_fromColor;
- (id)_toColor;
- (id)hourHandInlayAtAngle:(id)a3;
- (id)minuteHandInlayAtAngle:(id)a3;
- (id)swatchImageForSize:(CGSize)a3;
- (id)swatchPrimaryColor;
@end

@implementation NTKSpectrumColorPalette

- (NTKSpectrumColorPalette)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = NTKSpectrumColorPalette;
  return [(NTKSpectrumColorPalette *)&v5 initWithFaceClass:v3];
}

- (id)_fromColor
{
  if ([(NTKSpectrumColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKSpectrumColorPalette *)self paletteAtIndex:1];
    v4 = [v3 primaryColor];
  }

  else
  {
    if ([(NTKSpectrumColorPalette *)self isRainbowColor])
    {
      v5 = CLKUIConvertToUIColorFromRGBf();
      goto LABEL_10;
    }

    v6 = [(NTKSpectrumColorPalette *)self hasPrimaryColorRange];
    v7 = [(NTKSpectrumColorPalette *)self primaryColor];
    v3 = v7;
    if (v6)
    {
      v11 = 0;
      v8 = &v11;
      sub_1170(v7, &v11, 0);
    }

    else
    {
      v10 = 0;
      v8 = &v10;
      sub_1264(v7, &v10, 0);
    }

    v4 = *v8;
  }

  v5 = v4;

LABEL_10:

  return v5;
}

- (id)_bandColor
{
  if ([(NTKSpectrumColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKSpectrumColorPalette *)self fromColor];
    v4 = [(NTKSpectrumColorPalette *)self toColor];
    v5 = NTKInterpolateBetweenColors();
  }

  else
  {
    if ([(NTKSpectrumColorPalette *)self isRainbowColor])
    {
      CLKUIConvertToUIColorFromRGBf();
    }

    else
    {
      [(NTKSpectrumColorPalette *)self primaryColor];
    }
    v5 = ;
  }

  return v5;
}

- (id)_complicationColor
{
  if ([(NTKSpectrumColorPalette *)self isUnityColor])
  {
    [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
  }

  else
  {
    [(NTKSpectrumColorPalette *)self bandColor];
  }
  v3 = ;

  return v3;
}

- (id)_toColor
{
  if ([(NTKSpectrumColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKSpectrumColorPalette *)self paletteAtIndex:0];
    v4 = [v3 primaryColor];
  }

  else
  {
    if ([(NTKSpectrumColorPalette *)self isRainbowColor])
    {
      v5 = CLKUIConvertToUIColorFromRGBf();
      goto LABEL_10;
    }

    v6 = [(NTKSpectrumColorPalette *)self hasPrimaryColorRange];
    v7 = [(NTKSpectrumColorPalette *)self primaryColor];
    v3 = v7;
    if (v6)
    {
      v11 = 0;
      v8 = &v11;
      sub_1170(v7, 0, &v11);
    }

    else
    {
      v10 = 0;
      v8 = &v10;
      sub_1264(v7, 0, &v10);
    }

    v4 = *v8;
  }

  v5 = v4;

LABEL_10:

  return v5;
}

- (id)hourHandInlayAtAngle:(id)a3
{
  v4 = a3;
  v5 = [(NTKSpectrumColorPalette *)self hourHandInlay];
  if ([(NTKSpectrumColorPalette *)self isNotFoundColor:v5])
  {
    if ([(NTKSpectrumColorPalette *)self isRainbowColor])
    {
      [v4 floatValue];
      _NTKSpectrumGetOverlayGradientColor(v6);
    }

    else
    {
      [(NTKSpectrumColorPalette *)self bandColor];
    }
    v7 = ;

    v5 = v7;
  }

  return v5;
}

- (id)minuteHandInlayAtAngle:(id)a3
{
  v4 = a3;
  v5 = [(NTKSpectrumColorPalette *)self minuteHandInlay];
  if ([(NTKSpectrumColorPalette *)self isNotFoundColor:v5])
  {
    if ([(NTKSpectrumColorPalette *)self isRainbowColor])
    {
      [v4 floatValue];
      _NTKSpectrumGetOverlayGradientColor(v6);
    }

    else
    {
      [(NTKSpectrumColorPalette *)self bandColor];
    }
    v7 = ;

    v5 = v7;
  }

  return v5;
}

- (NSNumber)overlayOpacity
{
  if ([(NTKSpectrumColorPalette *)self isRainbowColor])
  {
    return &off_10B98;
  }

  else
  {
    return &off_10BA8;
  }
}

- (BOOL)is3ComponentsGradient
{
  v2 = [(NTKSpectrumColorPalette *)self midColor];
  v3 = v2 != NTKFaceColorPaletteNotFoundColor;

  return v3;
}

- (id)swatchImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (!qword_165E8)
  {
    v6 = objc_opt_new();
    v7 = qword_165E8;
    qword_165E8 = v6;
  }

  v8 = [(NTKSpectrumColorPalette *)self configuration];
  v9 = [v8 uniqueId];
  v18.width = width;
  v18.height = height;
  v10 = NSStringFromCGSize(v18);
  v11 = [NSString stringWithFormat:@"%@-%@", v9, v10];

  v12 = [qword_165E8 objectForKey:v11];
  if (!v12)
  {
    if ([(NTKSpectrumColorPalette *)self isRainbowColor])
    {
      v16.receiver = self;
      v16.super_class = NTKSpectrumColorPalette;
      v12 = [(NTKSpectrumColorPalette *)&v16 swatchImageForSize:width, height];
    }

    else
    {
      v13 = [(NTKSpectrumColorPalette *)self toColor];
      v14 = [(NTKSpectrumColorPalette *)self fromColor];
      v12 = NTKSwatchTwoColorGradientImage();

      [qword_165E8 setObject:v12 forKey:v11];
    }
  }

  return v12;
}

- (id)swatchPrimaryColor
{
  if ([(NTKSpectrumColorPalette *)self isRainbowColor])
  {
    v5.receiver = self;
    v5.super_class = NTKSpectrumColorPalette;
    v3 = [(NTKSpectrumColorPalette *)&v5 swatchPrimaryColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end