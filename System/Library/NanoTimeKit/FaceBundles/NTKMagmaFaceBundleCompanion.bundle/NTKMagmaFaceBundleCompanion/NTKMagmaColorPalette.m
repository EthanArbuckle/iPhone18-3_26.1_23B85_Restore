@interface NTKMagmaColorPalette
- (BOOL)isSpecialColor;
- (id)_backgroundEnd;
- (id)_backgroundMask;
- (id)_backgroundStart;
- (id)_backgroundTextureAlpha;
- (id)_digits;
- (id)_digitsOutline;
- (id)_logoBackgroundOff;
- (id)_maskedBackgroundEnd;
- (id)_maskedBackgroundStart;
- (id)_primaryBackgroundEnd;
- (id)_primaryBackgroundStart;
- (id)_swoosh;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifier;
- (id)swatchImageForSize:(CGSize)a3;
- (void)configurationDidChange:(id)a3;
- (void)setBackgroundStyle:(unint64_t)a3;
@end

@implementation NTKMagmaColorPalette

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKMagmaColorPalette;
  v4 = [(NTKMagmaColorPalette *)&v6 copyWithZone:a3];
  [v4 setBackgroundStyle:{-[NTKMagmaColorPalette backgroundStyle](self, "backgroundStyle")}];
  return v4;
}

- (id)identifier
{
  cachedIdentifier = self->_cachedIdentifier;
  if (!cachedIdentifier)
  {
    v8.receiver = self;
    v8.super_class = NTKMagmaColorPalette;
    v4 = [(NTKMagmaColorPalette *)&v8 identifier];
    v5 = [NSString stringWithFormat:@"%@-%lu", v4, self->_backgroundStyle];
    v6 = self->_cachedIdentifier;
    self->_cachedIdentifier = v5;

    cachedIdentifier = self->_cachedIdentifier;
  }

  return cachedIdentifier;
}

- (void)configurationDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKMagmaColorPalette;
  [(NTKMagmaColorPalette *)&v5 configurationDidChange:a3];
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
}

- (void)setBackgroundStyle:(unint64_t)a3
{
  self->_backgroundStyle = a3;
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
  _objc_release_x1();
}

- (BOOL)isSpecialColor
{
  if (([(NTKMagmaColorPalette *)self isRainbowColor]& 1) != 0)
  {
    return 1;
  }

  v4 = [(NTKMagmaColorPalette *)self pigmentEditOption];
  v5 = [v4 collectionName];
  v6 = [v5 isEqualToString:@"magma.special"];

  return v6;
}

- (id)_digits
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle)
  {
    if (backgroundStyle != 1)
    {
      goto LABEL_6;
    }

    v3 = [(NTKMagmaColorPalette *)self digitsBackgroundOn];
  }

  else
  {
    v3 = [(NTKMagmaColorPalette *)self digitsBackgroundOff];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (id)_digitsOutline
{
  v2 = [(NTKMagmaColorPalette *)self digits];
  v3 = [v2 colorWithAlphaComponent:0.0];

  return v3;
}

- (id)_swoosh
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle)
  {
    if (backgroundStyle != 1)
    {
      goto LABEL_6;
    }

    v3 = [(NTKMagmaColorPalette *)self logo];
  }

  else
  {
    v3 = [(NTKMagmaColorPalette *)self logoBackgroundOff];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (id)_logoBackgroundOff
{
  if (-[NTKMagmaColorPalette isSpecialColor](self, "isSpecialColor") || (-[NTKMagmaColorPalette pigmentEditOption](self, "pigmentEditOption"), v3 = objc_claimAutoreleasedReturnValue(), [v3 fullname], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", ntk_victory_fall2025_voltSplash), v4, v3, v5))
  {
    v6 = [(NTKMagmaColorPalette *)self primaryBackgroundEnd];
  }

  else
  {
    v6 = [(NTKMagmaColorPalette *)self logo];
  }

  return v6;
}

- (id)_primaryBackgroundStart
{
  if ([(NTKMagmaColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKMagmaColorPalette *)self paletteAtIndex:0];
    v4 = [v3 primaryColor];
  }

  else
  {
    v4 = [(NTKMagmaColorPalette *)self primaryColor];
  }

  return v4;
}

- (id)_primaryBackgroundEnd
{
  if ([(NTKMagmaColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKMagmaColorPalette *)self paletteAtIndex:1];
    v4 = [v3 primaryColor];
  }

  else
  {
    v4 = [(NTKMagmaColorPalette *)self primaryBackgroundStart];
  }

  return v4;
}

- (id)_backgroundStart
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle)
  {
    if (backgroundStyle != 1)
    {
      goto LABEL_6;
    }

    v3 = [(NTKMagmaColorPalette *)self primaryBackgroundStart];
  }

  else
  {
    v3 = +[UIColor blackColor];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (id)_backgroundEnd
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle)
  {
    if (backgroundStyle != 1)
    {
      goto LABEL_6;
    }

    v3 = [(NTKMagmaColorPalette *)self primaryBackgroundEnd];
  }

  else
  {
    v3 = +[UIColor blackColor];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (id)_maskedBackgroundStart
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle)
  {
    if (backgroundStyle != 1)
    {
      goto LABEL_6;
    }

    v3 = [(NTKMagmaColorPalette *)self maskedBackgroundOnStart];
  }

  else
  {
    v3 = [(NTKMagmaColorPalette *)self maskedBackgroundOffStart];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (id)_maskedBackgroundEnd
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle)
  {
    if (backgroundStyle != 1)
    {
      goto LABEL_6;
    }

    v3 = [(NTKMagmaColorPalette *)self maskedBackgroundOnEnd];
  }

  else
  {
    v3 = [(NTKMagmaColorPalette *)self maskedBackgroundOffEnd];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (id)_backgroundMask
{
  v3 = [(NTKMagmaColorPalette *)self isSpecialColor];
  v4 = &off_15150;
  if (v3 && !self->_backgroundStyle)
  {
    v4 = &off_15140;
  }

  return v4;
}

- (id)_backgroundTextureAlpha
{
  v3 = [(NTKMagmaColorPalette *)self isRainbowColor];
  v4 = &off_15150;
  if (v3 && self->_backgroundStyle == 1)
  {
    v4 = &off_15140;
  }

  return v4;
}

- (id)swatchImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(NTKMagmaColorPalette *)self isRainbowColor])
  {
    v14.receiver = self;
    v14.super_class = NTKMagmaColorPalette;
    v6 = [(NTKMagmaColorPalette *)&v14 swatchImageForSize:width, height];
  }

  else if ([(NTKMagmaColorPalette *)self isSpecialColor])
  {
    if (qword_1C160 != -1)
    {
      sub_A518();
    }

    v7 = [(NTKMagmaColorPalette *)self configuration];
    v8 = [v7 uniqueId];
    v16.width = width;
    v16.height = height;
    v9 = NSStringFromCGSize(v16);
    v10 = [NSString stringWithFormat:@"%@-%@", v8, v9];

    v6 = [qword_1C158 objectForKey:v10];
    if (!v6)
    {
      v11 = [(NTKMagmaColorPalette *)self maskedBackgroundOffStart];
      v12 = [(NTKMagmaColorPalette *)self maskedBackgroundOffEnd];
      v6 = NTKSwatchTwoColorGradientImage();
      [qword_1C158 setObject:v6 forKey:v10];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end