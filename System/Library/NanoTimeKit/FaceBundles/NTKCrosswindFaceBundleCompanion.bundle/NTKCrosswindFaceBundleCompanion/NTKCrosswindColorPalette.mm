@interface NTKCrosswindColorPalette
- (BOOL)_isCustomHeroColor;
- (BOOL)_isCustomHeroOrSpecialColor;
- (BOOL)_isWhiteColor;
- (NSNumber)editingComplicationsFraction;
- (UIColor)resolvedComplicationColor;
- (double)_valueForColorIndex:(unint64_t)index inValues:;
- (id)_baseLayerColorForForeground:(BOOL)foreground;
- (id)_colorAtIndex:(unint64_t)index position:(unint64_t)position;
- (id)_complicationColor;
- (id)_handInlayColorAtIndex:(unint64_t)index;
- (id)_identityColor:(id)color withLightnessFraction:(double)fraction;
- (id)_identityColorForIndex:(unint64_t)index;
- (id)_outermostColorAtIndex:(unint64_t)index position:(unint64_t)position;
- (id)_rainbowColorForDigit:(unint64_t)digit;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (id)swatchImageForSize:(CGSize)size;
- (unint64_t)_lightnessLevel;
- (unint64_t)_lightnessLevelForColor:(id)color;
- (void)configurationDidChange:(id)change;
- (void)invalidateCachedValues;
@end

@implementation NTKCrosswindColorPalette

- (id)identifier
{
  cachedIdentifier = self->_cachedIdentifier;
  if (!cachedIdentifier)
  {
    v8.receiver = self;
    v8.super_class = NTKCrosswindColorPalette;
    identifier = [(NTKCrosswindColorPalette *)&v8 identifier];
    v5 = [NSString stringWithFormat:@"%@-%lu", identifier, self->_isEditingComplications];
    v6 = self->_cachedIdentifier;
    self->_cachedIdentifier = v5;

    cachedIdentifier = self->_cachedIdentifier;
  }

  return cachedIdentifier;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NTKCrosswindColorPalette;
  v4 = [(NTKCrosswindColorPalette *)&v6 copyWithZone:zone];
  [v4 setIsEditingComplications:self->_isEditingComplications];
  [v4 invalidateCachedValues];
  return v4;
}

- (void)invalidateCachedValues
{
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
  _objc_release_x1();
}

- (void)configurationDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = NTKCrosswindColorPalette;
  [(NTKCrosswindColorPalette *)&v4 configurationDidChange:change];
  [(NTKCrosswindColorPalette *)self invalidateCachedValues];
}

- (NSNumber)editingComplicationsFraction
{
  if (self->_isEditingComplications)
  {
    return &off_10AA8;
  }

  else
  {
    return &off_10AB8;
  }
}

- (UIColor)resolvedComplicationColor
{
  if (self->_isEditingComplications)
  {
    +[UIColor whiteColor];
  }

  else
  {
    [(NTKCrosswindColorPalette *)self complicationColor];
  }
  v2 = ;

  return v2;
}

- (id)_complicationColor
{
  if ([(NTKCrosswindColorPalette *)self _isWhiteColor])
  {
    v3 = [UIColor colorWithRed:0.498039216 green:0.466666669 blue:0.470588237 alpha:1.0];
  }

  else
  {
    if ([(NTKCrosswindColorPalette *)self isSeasonalCollection]&& [(NTKCrosswindColorPalette *)self _lightnessLevel]== &dword_0 + 1)
    {
      v4 = [(NTKCrosswindColorPalette *)self _identityColorForIndex:3];
      v5 = [v4 ntk_colorWithSaturationDelta:0.0 brightnessDelta:-0.18];

      goto LABEL_8;
    }

    v3 = +[UIColor whiteColor];
  }

  v5 = v3;
LABEL_8:

  return v5;
}

- (id)swatchImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(NTKCrosswindColorPalette *)self isRainbowColor])
  {
    v23.receiver = self;
    v23.super_class = NTKCrosswindColorPalette;
    height = [(NTKCrosswindColorPalette *)&v23 swatchImageForSize:width, height];
  }

  else if (([(NTKCrosswindColorPalette *)self isCompositePalette]& 1) != 0 || [(NTKCrosswindColorPalette *)self _isCustomHeroColor])
  {
    if (qword_16AF8 != -1)
    {
      sub_7878();
    }

    configuration = [(NTKCrosswindColorPalette *)self configuration];
    uniqueId = [configuration uniqueId];
    v27.width = width;
    v27.height = height;
    v9 = NSStringFromCGSize(v27);
    v10 = [NSString stringWithFormat:@"%@-%@", uniqueId, v9];

    height = [qword_16AF0 objectForKey:v10];
    if (!height)
    {
      if ([(NTKCrosswindColorPalette *)self isCompositePalette])
      {
        toColor1 = [(NTKCrosswindColorPalette *)self toColor1];
        fromColor1 = [(NTKCrosswindColorPalette *)self fromColor1];
        height = NTKSwatchTwoColorGradientImage();
      }

      else
      {
        pigmentEditOption = [(NTKCrosswindColorPalette *)self pigmentEditOption];
        identifier = [pigmentEditOption identifier];
        v15 = [identifier isEqualToString:@"crosswind.special.hero-marigold"];

        if (v15)
        {
          toColor12 = [(NTKCrosswindColorPalette *)self toColor1];
          v25[0] = toColor12;
          toColor2 = [(NTKCrosswindColorPalette *)self toColor2];
          v25[1] = toColor2;
          toColor4 = [(NTKCrosswindColorPalette *)self toColor4];
          v25[2] = toColor4;
          toColor3 = [(NTKCrosswindColorPalette *)self toColor3];
          v25[3] = toColor3;
          v20 = v25;
        }

        else
        {
          toColor12 = [(NTKCrosswindColorPalette *)self toColor3];
          v24[0] = toColor12;
          toColor2 = [(NTKCrosswindColorPalette *)self toColor2];
          v24[1] = toColor2;
          toColor4 = [(NTKCrosswindColorPalette *)self toColor4];
          v24[2] = toColor4;
          toColor3 = [(NTKCrosswindColorPalette *)self toColor1];
          v24[3] = toColor3;
          v20 = v24;
        }

        v21 = [NSArray arrayWithObjects:v20 count:4];

        height = NTKSwatchColorSectorsImage();
      }

      [qword_16AF0 setObject:height forKey:v10];
    }
  }

  else
  {
    height = 0;
  }

  return height;
}

- (BOOL)_isWhiteColor
{
  pigmentEditOption = [(NTKCrosswindColorPalette *)self pigmentEditOption];
  optionName = [pigmentEditOption optionName];
  v4 = [optionName isEqualToString:@"white"];

  return v4;
}

- (BOOL)_isCustomHeroColor
{
  pigmentEditOption = [(NTKCrosswindColorPalette *)self pigmentEditOption];
  collectionName = [pigmentEditOption collectionName];
  v4 = [collectionName isEqualToString:@"crosswind.special"];

  return v4;
}

- (BOOL)_isCustomHeroOrSpecialColor
{
  if ([(NTKCrosswindColorPalette *)self _isCustomHeroColor])
  {
    return 1;
  }

  return [(NTKCrosswindColorPalette *)self isRainbowColor];
}

- (unint64_t)_lightnessLevel
{
  if ([(NTKCrosswindColorPalette *)self _isCustomHeroOrSpecialColor])
  {
    return 0;
  }

  v4 = [(NTKCrosswindColorPalette *)self _identityColorForIndex:0];
  v5 = [(NTKCrosswindColorPalette *)self _lightnessLevelForColor:v4];

  return v5;
}

- (unint64_t)_lightnessLevelForColor:(id)color
{
  colorCopy = color;
  v4 = +[UIColor whiteColor];
  CLKContrastRatioForColors();
  v6 = v5;

  return v6 < 2.0;
}

- (id)_identityColorForIndex:(unint64_t)index
{
  toColor3 = 0;
  if (index > 1)
  {
    if (index == 2)
    {
      toColor3 = [(NTKCrosswindColorPalette *)self toColor3];
    }

    else if (index == 3)
    {
      toColor3 = [(NTKCrosswindColorPalette *)self toColor4];
    }
  }

  else if (index)
  {
    if (index == 1)
    {
      toColor3 = [(NTKCrosswindColorPalette *)self toColor2];
    }
  }

  else
  {
    toColor3 = [(NTKCrosswindColorPalette *)self toColor1];
  }

  return toColor3;
}

- (double)_valueForColorIndex:(unint64_t)index inValues:
{
  v4 = *(&v3 + 2);
  v5 = *(&v3 + 3);
  if (index != 3)
  {
    v5 = 0.0;
  }

  if (index != 2)
  {
    v4 = v5;
  }

  v6 = *&v3;
  result = *(&v3 + 1);
  if (index != 1)
  {
    result = 0.0;
  }

  if (!index)
  {
    result = v6;
  }

  if (index > 1)
  {
    return v4;
  }

  return result;
}

- (id)_identityColor:(id)color withLightnessFraction:(double)fraction
{
  colorCopy = color;
  v7 = 1.0 - fraction;
  if ([(NTKCrosswindColorPalette *)self hasPrimaryColorRange])
  {
    [(NTKCrosswindColorPalette *)self primaryColorWithFraction:v7];
  }

  else
  {
    [colorCopy ntk_colorWithLightness:v7 * -0.28 + 0.95];
  }
  v8 = ;

  return v8;
}

- (id)_baseLayerColorForForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  if ([(NTKCrosswindColorPalette *)self _isWhiteColor])
  {
    v5 = 0.886274517;
    if (!foregroundCopy)
    {
      v5 = 1.0;
    }

    v6 = [UIColor colorWithWhite:v5 alpha:?];
  }

  else
  {
    v7 = [(NTKCrosswindColorPalette *)self _identityColorForIndex:0];
    if ([(NTKCrosswindColorPalette *)self isSeasonalCollection])
    {
      _lightnessLevel = [(NTKCrosswindColorPalette *)self _lightnessLevel];
      if (_lightnessLevel == 1)
      {
        v9 = 0.0000000134110482;
      }

      else
      {
        v9 = 0.0;
        if (!_lightnessLevel)
        {
          v9 = 0.000000119209318;
        }
      }

      fullname = +[UIColor whiteColor];
      v6 = CLKUIInterpolateBetweenColors();
    }

    else
    {
      pigmentEditOption = [(NTKCrosswindColorPalette *)self pigmentEditOption];
      fullname = [pigmentEditOption fullname];

      if ([fullname isEqualToString:ntk_standard_yellow])
      {
        v12 = 0x3F0000003F800000;
      }

      else
      {
        if ([fullname isEqualToString:ntk_standard_cream])
        {
          v13 = -1;
        }

        else
        {
          v13 = 0;
        }

        v12 = vbsl_s8(vdup_n_s32(v13), 0x3F4000003F000000, 0x3F4000003F800000);
      }

      if (foregroundCopy)
      {
        v12.i32[0] = v12.i32[1];
      }

      v6 = [(NTKCrosswindColorPalette *)self _identityColor:v7 withLightnessFraction:*v12.i32];
      if (!foregroundCopy && [fullname isEqualToString:ntk_standard_warmGray])
      {
        v14 = [v6 ntk_colorWithSaturationDelta:0.0 brightnessDelta:-0.05];

        v6 = v14;
      }
    }
  }

  return v6;
}

- (id)_colorAtIndex:(unint64_t)index position:(unint64_t)position
{
  if (![(NTKCrosswindColorPalette *)self isCompositePalette])
  {
    if ([(NTKCrosswindColorPalette *)self isRainbowColor])
    {
      if (position < 3)
      {
        v9 = position + 1;
      }

      else
      {
        v9 = 0;
      }

      index = [(NTKCrosswindColorPalette *)self _rainbowColorForDigit:v9 + 3 * index];
    }

    else
    {
      if (position == 2)
      {
        primaryColor = [(NTKCrosswindColorPalette *)self primaryColor];
        goto LABEL_19;
      }

      if (position == 1)
      {
        goto LABEL_16;
      }

      if (position)
      {
        goto LABEL_31;
      }

      index = [(NTKCrosswindColorPalette *)self _identityColorForIndex:index];
    }

    primaryColor2 = index;
    goto LABEL_31;
  }

  switch(position)
  {
    case 2uLL:
      v17 = [(NTKCrosswindColorPalette *)self paletteAtIndex:0];
      primaryColor = [v17 primaryColor];

LABEL_19:
      if ([(NTKCrosswindColorPalette *)self _isWhiteColor])
      {
        [(NTKCrosswindColorPalette *)self _valueForColorIndex:index inValues:0.000195791275];
        v18 = [UIColor colorWithWhite:"colorWithWhite:alpha:" alpha:?];
      }

      else
      {
        if (![(NTKCrosswindColorPalette *)self isSeasonalCollection])
        {
          [(NTKCrosswindColorPalette *)self _valueForColorIndex:index inValues:0.000000119209318];
          v22 = [(NTKCrosswindColorPalette *)self _identityColor:primaryColor withLightnessFraction:?];
          primaryColor2 = v22;
          if (index == 3)
          {
            v23 = [v22 ntk_colorWithSaturationDelta:0.0 brightnessDelta:-0.1];

            primaryColor2 = v23;
          }

          goto LABEL_30;
        }

        v19 = [(NTKCrosswindColorPalette *)self _lightnessLevelForColor:primaryColor];
        if (v19 == 1)
        {
          [(NTKCrosswindColorPalette *)self _valueForColorIndex:index inValues:0.00000000566244382];
          v20 = v24;
          v21 = -0.000000119209374;
        }

        else
        {
          v20 = 0.0;
          v21 = 0.0;
          if (!v19)
          {
            v21 = -0.00000000149011647;
          }
        }

        [(NTKCrosswindColorPalette *)self _valueForColorIndex:index inValues:v21];
        v18 = [primaryColor ntk_colorWithSaturationDelta:v20 brightnessDelta:v25];
      }

      primaryColor2 = v18;
LABEL_30:

      break;
    case 1uLL:
LABEL_16:
      v11 = [NSNumber numberWithUnsignedInteger:index + 1];
      v12 = [NSString stringWithFormat:@"fromColor%@", v11];
      primaryColor = [(NTKCrosswindColorPalette *)self valueForKey:v12];

      v14 = [NSNumber numberWithUnsignedInteger:index + 1];
      v15 = [NSString stringWithFormat:@"toColor%@", v14];
      v16 = [(NTKCrosswindColorPalette *)self valueForKey:v15];

      primaryColor2 = CLKUIInterpolateBetweenColors();

      goto LABEL_30;
    case 0uLL:
      v8 = [(NTKCrosswindColorPalette *)self paletteAtIndex:1];
      primaryColor2 = [v8 primaryColor];

      break;
  }

LABEL_31:

  return primaryColor2;
}

- (id)_outermostColorAtIndex:(unint64_t)index position:(unint64_t)position
{
  if (position > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&off_10580 + position);
  }

  v6 = [NSNumber numberWithUnsignedInteger:index + 1];
  v7 = [NSString stringWithFormat:@"%@Color%@", v5, v6];
  v8 = [(NTKCrosswindColorPalette *)self valueForKey:v7];

  v9 = [v8 ntk_colorWithSaturationDelta:0.0 brightnessDelta:-0.05];

  return v9;
}

- (id)_handInlayColorAtIndex:(unint64_t)index
{
  v3 = [(NTKCrosswindColorPalette *)self _identityColorForIndex:index];
  v4 = [v3 ntk_colorWithSaturationDelta:0.0 brightnessDelta:-0.1];

  return v4;
}

- (id)_rainbowColorForDigit:(unint64_t)digit
{
  v4 = [NSNumber numberWithUnsignedInteger:digit];
  v5 = [NSString stringWithFormat:@"digit%@", v4];

  v6 = [(NTKCrosswindColorPalette *)self valueForKey:v5];

  return v6;
}

@end