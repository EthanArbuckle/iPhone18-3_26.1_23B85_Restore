@interface NTKSpectrumColorPalette
- (BOOL)is3ComponentsGradient;
- (NSNumber)overlayOpacity;
- (NTKSpectrumColorPalette)init;
- (id)_bandColor;
- (id)_complicationColor;
- (id)_fromColor;
- (id)_toColor;
- (id)hourHandInlayAtAngle:(id)angle;
- (id)minuteHandInlayAtAngle:(id)angle;
- (id)swatchImageForSize:(CGSize)size;
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
    primaryColor = [v3 primaryColor];
  }

  else
  {
    if ([(NTKSpectrumColorPalette *)self isRainbowColor])
    {
      v5 = CLKUIConvertToUIColorFromRGBf();
      goto LABEL_10;
    }

    hasPrimaryColorRange = [(NTKSpectrumColorPalette *)self hasPrimaryColorRange];
    primaryColor2 = [(NTKSpectrumColorPalette *)self primaryColor];
    v3 = primaryColor2;
    if (hasPrimaryColorRange)
    {
      v11 = 0;
      v8 = &v11;
      sub_1170(primaryColor2, &v11, 0);
    }

    else
    {
      v10 = 0;
      v8 = &v10;
      sub_1264(primaryColor2, &v10, 0);
    }

    primaryColor = *v8;
  }

  v5 = primaryColor;

LABEL_10:

  return v5;
}

- (id)_bandColor
{
  if ([(NTKSpectrumColorPalette *)self isCompositePalette])
  {
    fromColor = [(NTKSpectrumColorPalette *)self fromColor];
    toColor = [(NTKSpectrumColorPalette *)self toColor];
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
    primaryColor = [v3 primaryColor];
  }

  else
  {
    if ([(NTKSpectrumColorPalette *)self isRainbowColor])
    {
      v5 = CLKUIConvertToUIColorFromRGBf();
      goto LABEL_10;
    }

    hasPrimaryColorRange = [(NTKSpectrumColorPalette *)self hasPrimaryColorRange];
    primaryColor2 = [(NTKSpectrumColorPalette *)self primaryColor];
    v3 = primaryColor2;
    if (hasPrimaryColorRange)
    {
      v11 = 0;
      v8 = &v11;
      sub_1170(primaryColor2, 0, &v11);
    }

    else
    {
      v10 = 0;
      v8 = &v10;
      sub_1264(primaryColor2, 0, &v10);
    }

    primaryColor = *v8;
  }

  v5 = primaryColor;

LABEL_10:

  return v5;
}

- (id)hourHandInlayAtAngle:(id)angle
{
  angleCopy = angle;
  hourHandInlay = [(NTKSpectrumColorPalette *)self hourHandInlay];
  if ([(NTKSpectrumColorPalette *)self isNotFoundColor:hourHandInlay])
  {
    if ([(NTKSpectrumColorPalette *)self isRainbowColor])
    {
      [angleCopy floatValue];
      _NTKSpectrumGetOverlayGradientColor(v6);
    }

    else
    {
      [(NTKSpectrumColorPalette *)self bandColor];
    }
    v7 = ;

    hourHandInlay = v7;
  }

  return hourHandInlay;
}

- (id)minuteHandInlayAtAngle:(id)angle
{
  angleCopy = angle;
  minuteHandInlay = [(NTKSpectrumColorPalette *)self minuteHandInlay];
  if ([(NTKSpectrumColorPalette *)self isNotFoundColor:minuteHandInlay])
  {
    if ([(NTKSpectrumColorPalette *)self isRainbowColor])
    {
      [angleCopy floatValue];
      _NTKSpectrumGetOverlayGradientColor(v6);
    }

    else
    {
      [(NTKSpectrumColorPalette *)self bandColor];
    }
    v7 = ;

    minuteHandInlay = v7;
  }

  return minuteHandInlay;
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
  midColor = [(NTKSpectrumColorPalette *)self midColor];
  v3 = midColor != NTKFaceColorPaletteNotFoundColor;

  return v3;
}

- (id)swatchImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (!qword_165E8)
  {
    v6 = objc_opt_new();
    v7 = qword_165E8;
    qword_165E8 = v6;
  }

  configuration = [(NTKSpectrumColorPalette *)self configuration];
  uniqueId = [configuration uniqueId];
  v18.width = width;
  v18.height = height;
  v10 = NSStringFromCGSize(v18);
  v11 = [NSString stringWithFormat:@"%@-%@", uniqueId, v10];

  height = [qword_165E8 objectForKey:v11];
  if (!height)
  {
    if ([(NTKSpectrumColorPalette *)self isRainbowColor])
    {
      v16.receiver = self;
      v16.super_class = NTKSpectrumColorPalette;
      height = [(NTKSpectrumColorPalette *)&v16 swatchImageForSize:width, height];
    }

    else
    {
      toColor = [(NTKSpectrumColorPalette *)self toColor];
      fromColor = [(NTKSpectrumColorPalette *)self fromColor];
      height = NTKSwatchTwoColorGradientImage();

      [qword_165E8 setObject:height forKey:v11];
    }
  }

  return height;
}

- (id)swatchPrimaryColor
{
  if ([(NTKSpectrumColorPalette *)self isRainbowColor])
  {
    v5.receiver = self;
    v5.super_class = NTKSpectrumColorPalette;
    swatchPrimaryColor = [(NTKSpectrumColorPalette *)&v5 swatchPrimaryColor];
  }

  else
  {
    swatchPrimaryColor = 0;
  }

  return swatchPrimaryColor;
}

@end