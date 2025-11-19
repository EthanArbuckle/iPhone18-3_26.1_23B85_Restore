@interface NTKCrosswindColorPalette
- (BOOL)_isCustomHeroColor;
- (BOOL)_isCustomHeroOrSpecialColor;
- (BOOL)_isWhiteColor;
- (NSNumber)editingComplicationsFraction;
- (UIColor)resolvedComplicationColor;
- (double)_valueForColorIndex:(unint64_t)a3 inValues:;
- (id)_baseLayerColorForForeground:(BOOL)a3;
- (id)_colorAtIndex:(unint64_t)a3 position:(unint64_t)a4;
- (id)_complicationColor;
- (id)_handInlayColorAtIndex:(unint64_t)a3;
- (id)_identityColor:(id)a3 withLightnessFraction:(double)a4;
- (id)_identityColorForIndex:(unint64_t)a3;
- (id)_outermostColorAtIndex:(unint64_t)a3 position:(unint64_t)a4;
- (id)_rainbowColorForDigit:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifier;
- (id)swatchImageForSize:(CGSize)a3;
- (unint64_t)_lightnessLevel;
- (unint64_t)_lightnessLevelForColor:(id)a3;
- (void)configurationDidChange:(id)a3;
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
    v4 = [(NTKCrosswindColorPalette *)&v8 identifier];
    v5 = [NSString stringWithFormat:@"%@-%lu", v4, self->_isEditingComplications];
    v6 = self->_cachedIdentifier;
    self->_cachedIdentifier = v5;

    cachedIdentifier = self->_cachedIdentifier;
  }

  return cachedIdentifier;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKCrosswindColorPalette;
  v4 = [(NTKCrosswindColorPalette *)&v6 copyWithZone:a3];
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

- (void)configurationDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKCrosswindColorPalette;
  [(NTKCrosswindColorPalette *)&v4 configurationDidChange:a3];
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

- (id)swatchImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(NTKCrosswindColorPalette *)self isRainbowColor])
  {
    v23.receiver = self;
    v23.super_class = NTKCrosswindColorPalette;
    v6 = [(NTKCrosswindColorPalette *)&v23 swatchImageForSize:width, height];
  }

  else if (([(NTKCrosswindColorPalette *)self isCompositePalette]& 1) != 0 || [(NTKCrosswindColorPalette *)self _isCustomHeroColor])
  {
    if (qword_16AF8 != -1)
    {
      sub_7878();
    }

    v7 = [(NTKCrosswindColorPalette *)self configuration];
    v8 = [v7 uniqueId];
    v27.width = width;
    v27.height = height;
    v9 = NSStringFromCGSize(v27);
    v10 = [NSString stringWithFormat:@"%@-%@", v8, v9];

    v6 = [qword_16AF0 objectForKey:v10];
    if (!v6)
    {
      if ([(NTKCrosswindColorPalette *)self isCompositePalette])
      {
        v11 = [(NTKCrosswindColorPalette *)self toColor1];
        v12 = [(NTKCrosswindColorPalette *)self fromColor1];
        v6 = NTKSwatchTwoColorGradientImage();
      }

      else
      {
        v13 = [(NTKCrosswindColorPalette *)self pigmentEditOption];
        v14 = [v13 identifier];
        v15 = [v14 isEqualToString:@"crosswind.special.hero-marigold"];

        if (v15)
        {
          v16 = [(NTKCrosswindColorPalette *)self toColor1];
          v25[0] = v16;
          v17 = [(NTKCrosswindColorPalette *)self toColor2];
          v25[1] = v17;
          v18 = [(NTKCrosswindColorPalette *)self toColor4];
          v25[2] = v18;
          v19 = [(NTKCrosswindColorPalette *)self toColor3];
          v25[3] = v19;
          v20 = v25;
        }

        else
        {
          v16 = [(NTKCrosswindColorPalette *)self toColor3];
          v24[0] = v16;
          v17 = [(NTKCrosswindColorPalette *)self toColor2];
          v24[1] = v17;
          v18 = [(NTKCrosswindColorPalette *)self toColor4];
          v24[2] = v18;
          v19 = [(NTKCrosswindColorPalette *)self toColor1];
          v24[3] = v19;
          v20 = v24;
        }

        v21 = [NSArray arrayWithObjects:v20 count:4];

        v6 = NTKSwatchColorSectorsImage();
      }

      [qword_16AF0 setObject:v6 forKey:v10];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isWhiteColor
{
  v2 = [(NTKCrosswindColorPalette *)self pigmentEditOption];
  v3 = [v2 optionName];
  v4 = [v3 isEqualToString:@"white"];

  return v4;
}

- (BOOL)_isCustomHeroColor
{
  v2 = [(NTKCrosswindColorPalette *)self pigmentEditOption];
  v3 = [v2 collectionName];
  v4 = [v3 isEqualToString:@"crosswind.special"];

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

- (unint64_t)_lightnessLevelForColor:(id)a3
{
  v3 = a3;
  v4 = +[UIColor whiteColor];
  CLKContrastRatioForColors();
  v6 = v5;

  return v6 < 2.0;
}

- (id)_identityColorForIndex:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = [(NTKCrosswindColorPalette *)self toColor3];
    }

    else if (a3 == 3)
    {
      v4 = [(NTKCrosswindColorPalette *)self toColor4];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v4 = [(NTKCrosswindColorPalette *)self toColor2];
    }
  }

  else
  {
    v4 = [(NTKCrosswindColorPalette *)self toColor1];
  }

  return v4;
}

- (double)_valueForColorIndex:(unint64_t)a3 inValues:
{
  v4 = *(&v3 + 2);
  v5 = *(&v3 + 3);
  if (a3 != 3)
  {
    v5 = 0.0;
  }

  if (a3 != 2)
  {
    v4 = v5;
  }

  v6 = *&v3;
  result = *(&v3 + 1);
  if (a3 != 1)
  {
    result = 0.0;
  }

  if (!a3)
  {
    result = v6;
  }

  if (a3 > 1)
  {
    return v4;
  }

  return result;
}

- (id)_identityColor:(id)a3 withLightnessFraction:(double)a4
{
  v6 = a3;
  v7 = 1.0 - a4;
  if ([(NTKCrosswindColorPalette *)self hasPrimaryColorRange])
  {
    [(NTKCrosswindColorPalette *)self primaryColorWithFraction:v7];
  }

  else
  {
    [v6 ntk_colorWithLightness:v7 * -0.28 + 0.95];
  }
  v8 = ;

  return v8;
}

- (id)_baseLayerColorForForeground:(BOOL)a3
{
  v3 = a3;
  if ([(NTKCrosswindColorPalette *)self _isWhiteColor])
  {
    v5 = 0.886274517;
    if (!v3)
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
      v8 = [(NTKCrosswindColorPalette *)self _lightnessLevel];
      if (v8 == 1)
      {
        v9 = 0.0000000134110482;
      }

      else
      {
        v9 = 0.0;
        if (!v8)
        {
          v9 = 0.000000119209318;
        }
      }

      v11 = +[UIColor whiteColor];
      v6 = CLKUIInterpolateBetweenColors();
    }

    else
    {
      v10 = [(NTKCrosswindColorPalette *)self pigmentEditOption];
      v11 = [v10 fullname];

      if ([v11 isEqualToString:ntk_standard_yellow])
      {
        v12 = 0x3F0000003F800000;
      }

      else
      {
        if ([v11 isEqualToString:ntk_standard_cream])
        {
          v13 = -1;
        }

        else
        {
          v13 = 0;
        }

        v12 = vbsl_s8(vdup_n_s32(v13), 0x3F4000003F000000, 0x3F4000003F800000);
      }

      if (v3)
      {
        v12.i32[0] = v12.i32[1];
      }

      v6 = [(NTKCrosswindColorPalette *)self _identityColor:v7 withLightnessFraction:*v12.i32];
      if (!v3 && [v11 isEqualToString:ntk_standard_warmGray])
      {
        v14 = [v6 ntk_colorWithSaturationDelta:0.0 brightnessDelta:-0.05];

        v6 = v14;
      }
    }
  }

  return v6;
}

- (id)_colorAtIndex:(unint64_t)a3 position:(unint64_t)a4
{
  if (![(NTKCrosswindColorPalette *)self isCompositePalette])
  {
    if ([(NTKCrosswindColorPalette *)self isRainbowColor])
    {
      if (a4 < 3)
      {
        v9 = a4 + 1;
      }

      else
      {
        v9 = 0;
      }

      v10 = [(NTKCrosswindColorPalette *)self _rainbowColorForDigit:v9 + 3 * a3];
    }

    else
    {
      if (a4 == 2)
      {
        v13 = [(NTKCrosswindColorPalette *)self primaryColor];
        goto LABEL_19;
      }

      if (a4 == 1)
      {
        goto LABEL_16;
      }

      if (a4)
      {
        goto LABEL_31;
      }

      v10 = [(NTKCrosswindColorPalette *)self _identityColorForIndex:a3];
    }

    v4 = v10;
    goto LABEL_31;
  }

  switch(a4)
  {
    case 2uLL:
      v17 = [(NTKCrosswindColorPalette *)self paletteAtIndex:0];
      v13 = [v17 primaryColor];

LABEL_19:
      if ([(NTKCrosswindColorPalette *)self _isWhiteColor])
      {
        [(NTKCrosswindColorPalette *)self _valueForColorIndex:a3 inValues:0.000195791275];
        v18 = [UIColor colorWithWhite:"colorWithWhite:alpha:" alpha:?];
      }

      else
      {
        if (![(NTKCrosswindColorPalette *)self isSeasonalCollection])
        {
          [(NTKCrosswindColorPalette *)self _valueForColorIndex:a3 inValues:0.000000119209318];
          v22 = [(NTKCrosswindColorPalette *)self _identityColor:v13 withLightnessFraction:?];
          v4 = v22;
          if (a3 == 3)
          {
            v23 = [v22 ntk_colorWithSaturationDelta:0.0 brightnessDelta:-0.1];

            v4 = v23;
          }

          goto LABEL_30;
        }

        v19 = [(NTKCrosswindColorPalette *)self _lightnessLevelForColor:v13];
        if (v19 == 1)
        {
          [(NTKCrosswindColorPalette *)self _valueForColorIndex:a3 inValues:0.00000000566244382];
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

        [(NTKCrosswindColorPalette *)self _valueForColorIndex:a3 inValues:v21];
        v18 = [v13 ntk_colorWithSaturationDelta:v20 brightnessDelta:v25];
      }

      v4 = v18;
LABEL_30:

      break;
    case 1uLL:
LABEL_16:
      v11 = [NSNumber numberWithUnsignedInteger:a3 + 1];
      v12 = [NSString stringWithFormat:@"fromColor%@", v11];
      v13 = [(NTKCrosswindColorPalette *)self valueForKey:v12];

      v14 = [NSNumber numberWithUnsignedInteger:a3 + 1];
      v15 = [NSString stringWithFormat:@"toColor%@", v14];
      v16 = [(NTKCrosswindColorPalette *)self valueForKey:v15];

      v4 = CLKUIInterpolateBetweenColors();

      goto LABEL_30;
    case 0uLL:
      v8 = [(NTKCrosswindColorPalette *)self paletteAtIndex:1];
      v4 = [v8 primaryColor];

      break;
  }

LABEL_31:

  return v4;
}

- (id)_outermostColorAtIndex:(unint64_t)a3 position:(unint64_t)a4
{
  if (a4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&off_10580 + a4);
  }

  v6 = [NSNumber numberWithUnsignedInteger:a3 + 1];
  v7 = [NSString stringWithFormat:@"%@Color%@", v5, v6];
  v8 = [(NTKCrosswindColorPalette *)self valueForKey:v7];

  v9 = [v8 ntk_colorWithSaturationDelta:0.0 brightnessDelta:-0.05];

  return v9;
}

- (id)_handInlayColorAtIndex:(unint64_t)a3
{
  v3 = [(NTKCrosswindColorPalette *)self _identityColorForIndex:a3];
  v4 = [v3 ntk_colorWithSaturationDelta:0.0 brightnessDelta:-0.1];

  return v4;
}

- (id)_rainbowColorForDigit:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [NSString stringWithFormat:@"digit%@", v4];

  v6 = [(NTKCrosswindColorPalette *)self valueForKey:v5];

  return v6;
}

@end