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
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (id)swatchImageForSize:(CGSize)size;
- (void)configurationDidChange:(id)change;
- (void)setBackgroundStyle:(unint64_t)style;
@end

@implementation NTKMagmaColorPalette

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NTKMagmaColorPalette;
  v4 = [(NTKMagmaColorPalette *)&v6 copyWithZone:zone];
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
    identifier = [(NTKMagmaColorPalette *)&v8 identifier];
    v5 = [NSString stringWithFormat:@"%@-%lu", identifier, self->_backgroundStyle];
    v6 = self->_cachedIdentifier;
    self->_cachedIdentifier = v5;

    cachedIdentifier = self->_cachedIdentifier;
  }

  return cachedIdentifier;
}

- (void)configurationDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = NTKMagmaColorPalette;
  [(NTKMagmaColorPalette *)&v5 configurationDidChange:change];
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
}

- (void)setBackgroundStyle:(unint64_t)style
{
  self->_backgroundStyle = style;
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

  pigmentEditOption = [(NTKMagmaColorPalette *)self pigmentEditOption];
  collectionName = [pigmentEditOption collectionName];
  v6 = [collectionName isEqualToString:@"magma.special"];

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

    digitsBackgroundOn = [(NTKMagmaColorPalette *)self digitsBackgroundOn];
  }

  else
  {
    digitsBackgroundOn = [(NTKMagmaColorPalette *)self digitsBackgroundOff];
  }

  a2 = digitsBackgroundOn;
LABEL_6:

  return a2;
}

- (id)_digitsOutline
{
  digits = [(NTKMagmaColorPalette *)self digits];
  v3 = [digits colorWithAlphaComponent:0.0];

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

    logo = [(NTKMagmaColorPalette *)self logo];
  }

  else
  {
    logo = [(NTKMagmaColorPalette *)self logoBackgroundOff];
  }

  a2 = logo;
LABEL_6:

  return a2;
}

- (id)_logoBackgroundOff
{
  if (-[NTKMagmaColorPalette isSpecialColor](self, "isSpecialColor") || (-[NTKMagmaColorPalette pigmentEditOption](self, "pigmentEditOption"), v3 = objc_claimAutoreleasedReturnValue(), [v3 fullname], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", ntk_victory_fall2025_voltSplash), v4, v3, v5))
  {
    primaryBackgroundEnd = [(NTKMagmaColorPalette *)self primaryBackgroundEnd];
  }

  else
  {
    primaryBackgroundEnd = [(NTKMagmaColorPalette *)self logo];
  }

  return primaryBackgroundEnd;
}

- (id)_primaryBackgroundStart
{
  if ([(NTKMagmaColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKMagmaColorPalette *)self paletteAtIndex:0];
    primaryColor = [v3 primaryColor];
  }

  else
  {
    primaryColor = [(NTKMagmaColorPalette *)self primaryColor];
  }

  return primaryColor;
}

- (id)_primaryBackgroundEnd
{
  if ([(NTKMagmaColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKMagmaColorPalette *)self paletteAtIndex:1];
    primaryColor = [v3 primaryColor];
  }

  else
  {
    primaryColor = [(NTKMagmaColorPalette *)self primaryBackgroundStart];
  }

  return primaryColor;
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

    primaryBackgroundStart = [(NTKMagmaColorPalette *)self primaryBackgroundStart];
  }

  else
  {
    primaryBackgroundStart = +[UIColor blackColor];
  }

  a2 = primaryBackgroundStart;
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

    primaryBackgroundEnd = [(NTKMagmaColorPalette *)self primaryBackgroundEnd];
  }

  else
  {
    primaryBackgroundEnd = +[UIColor blackColor];
  }

  a2 = primaryBackgroundEnd;
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

    maskedBackgroundOnStart = [(NTKMagmaColorPalette *)self maskedBackgroundOnStart];
  }

  else
  {
    maskedBackgroundOnStart = [(NTKMagmaColorPalette *)self maskedBackgroundOffStart];
  }

  a2 = maskedBackgroundOnStart;
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

    maskedBackgroundOnEnd = [(NTKMagmaColorPalette *)self maskedBackgroundOnEnd];
  }

  else
  {
    maskedBackgroundOnEnd = [(NTKMagmaColorPalette *)self maskedBackgroundOffEnd];
  }

  a2 = maskedBackgroundOnEnd;
LABEL_6:

  return a2;
}

- (id)_backgroundMask
{
  isSpecialColor = [(NTKMagmaColorPalette *)self isSpecialColor];
  v4 = &off_15150;
  if (isSpecialColor && !self->_backgroundStyle)
  {
    v4 = &off_15140;
  }

  return v4;
}

- (id)_backgroundTextureAlpha
{
  isRainbowColor = [(NTKMagmaColorPalette *)self isRainbowColor];
  v4 = &off_15150;
  if (isRainbowColor && self->_backgroundStyle == 1)
  {
    v4 = &off_15140;
  }

  return v4;
}

- (id)swatchImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(NTKMagmaColorPalette *)self isRainbowColor])
  {
    v14.receiver = self;
    v14.super_class = NTKMagmaColorPalette;
    height = [(NTKMagmaColorPalette *)&v14 swatchImageForSize:width, height];
  }

  else if ([(NTKMagmaColorPalette *)self isSpecialColor])
  {
    if (qword_1C160 != -1)
    {
      sub_A518();
    }

    configuration = [(NTKMagmaColorPalette *)self configuration];
    uniqueId = [configuration uniqueId];
    v16.width = width;
    v16.height = height;
    v9 = NSStringFromCGSize(v16);
    v10 = [NSString stringWithFormat:@"%@-%@", uniqueId, v9];

    height = [qword_1C158 objectForKey:v10];
    if (!height)
    {
      maskedBackgroundOffStart = [(NTKMagmaColorPalette *)self maskedBackgroundOffStart];
      maskedBackgroundOffEnd = [(NTKMagmaColorPalette *)self maskedBackgroundOffEnd];
      height = NTKSwatchTwoColorGradientImage();
      [qword_1C158 setObject:height forKey:v10];
    }
  }

  else
  {
    height = 0;
  }

  return height;
}

@end