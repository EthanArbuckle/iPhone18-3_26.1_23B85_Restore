@interface NTKProteusFaceColorPalette
- (NTKProteusFaceColorPalette)initWithFaceClass:(Class)class device:(id)device;
- (double)_contrastRatio;
- (id)_background;
- (id)_simpleTextComplicationColor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)digitColor;
- (id)identifier;
- (void)configurationDidChange:(id)change;
- (void)setBackgroundStyle:(unint64_t)style;
@end

@implementation NTKProteusFaceColorPalette

- (NTKProteusFaceColorPalette)initWithFaceClass:(Class)class device:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = NTKProteusFaceColorPalette;
  v8 = [(NTKProteusFaceColorPalette *)&v11 initWithFaceClass:class];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NTKProteusFaceColorPalette;
  v4 = [(NTKProteusFaceColorPalette *)&v6 copyWithZone:zone];
  [v4 setBackgroundStyle:{-[NTKProteusFaceColorPalette backgroundStyle](self, "backgroundStyle")}];
  objc_storeStrong(v4 + 1, self->_device);
  return v4;
}

- (id)identifier
{
  cachedIdentifier = self->_cachedIdentifier;
  if (!cachedIdentifier)
  {
    v8.receiver = self;
    v8.super_class = NTKProteusFaceColorPalette;
    identifier = [(NTKProteusFaceColorPalette *)&v8 identifier];
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
  v5.super_class = NTKProteusFaceColorPalette;
  [(NTKProteusFaceColorPalette *)&v5 configurationDidChange:change];
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

- (id)_background
{
  if (self->_backgroundStyle == 1)
  {
    [(NTKProteusFaceColorPalette *)self primaryColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v2 = ;

  return v2;
}

- (id)_simpleTextComplicationColor
{
  simpleTextComplication = [(NTKProteusFaceColorPalette *)self simpleTextComplication];
  v4 = simpleTextComplication;
  if (self->_backgroundStyle != 1)
  {
    v12 = simpleTextComplication;
    v5 = v12;
    goto LABEL_6;
  }

  v5 = +[UIColor whiteColor];

  primaryColor = [(NTKProteusFaceColorPalette *)self primaryColor];
  CLKContrastRatioForColors();
  v8 = v7;

  [(NTKProteusFaceColorPalette *)self _contrastRatio];
  if (v8 >= v9 || (-[NTKProteusFaceColorPalette pigmentEditOption](self, "pigmentEditOption"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isRainbowColor], v10, (v11 & 1) != 0))
  {
LABEL_4:
    v12 = [v5 colorWithAlphaComponent:0.8];
LABEL_6:
    v13 = v12;
    goto LABEL_7;
  }

  simpleTextComplicationContrast = [(NTKProteusFaceColorPalette *)self simpleTextComplicationContrast];
  v16 = simpleTextComplicationContrast;
  if (!simpleTextComplicationContrast || simpleTextComplicationContrast == NTKFaceColorPaletteNotFoundColor)
  {
    if (([(NTKProteusFaceColorPalette *)self hasPrimaryColorRange]& 1) != 0)
    {
      v17 = [(NTKProteusFaceColorPalette *)self primaryColorWithFraction:1.0];

      v5 = v17;
      goto LABEL_4;
    }

    primaryColor2 = [(NTKProteusFaceColorPalette *)self primaryColor];
    v19 = [primaryColor2 colorWithAlphaComponent:1.0];
    v13 = [v19 ntk_colorWithSaturationDelta:0.18 brightnessDelta:-0.2];
  }

  else
  {
    v13 = simpleTextComplicationContrast;
  }

LABEL_7:

  return v13;
}

- (id)digitColor
{
  digit = [(NTKProteusFaceColorPalette *)self digit];
  v4 = digit;
  if (digit && digit != NTKFaceColorPaletteNotFoundColor)
  {
    v5 = digit;
    v6 = v5;
LABEL_4:
    primaryColor2 = v5;
    goto LABEL_14;
  }

  if ([(NTKProteusFaceColorPalette *)self isTritium])
  {
    device = self->_device;
    v9 = NTKEnableAODVibrancy();
    primaryColor = [(NTKProteusFaceColorPalette *)self primaryColor];
    primaryColor2 = primaryColor;
    if ((v9 & 1) == 0)
    {
      v11 = [primaryColor colorWithAlphaComponent:0.7];

      v6 = v4;
      primaryColor2 = v11;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (self->_backgroundStyle != 1)
  {
    primaryColor2 = [(NTKProteusFaceColorPalette *)self primaryColor];
LABEL_13:
    v6 = v4;
    goto LABEL_14;
  }

  v6 = +[UIColor whiteColor];

  primaryColor3 = [(NTKProteusFaceColorPalette *)self primaryColor];
  CLKContrastRatioForColors();
  v14 = v13;

  [(NTKProteusFaceColorPalette *)self _contrastRatio];
  if (v14 >= v15 || (-[NTKProteusFaceColorPalette pigmentEditOption](self, "pigmentEditOption"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isRainbowColor], v16, (v17 & 1) != 0))
  {
LABEL_11:
    v5 = [v6 colorWithAlphaComponent:0.7];
    goto LABEL_4;
  }

  digitContrast = [(NTKProteusFaceColorPalette *)self digitContrast];
  v20 = digitContrast;
  if (!digitContrast || digitContrast == NTKFaceColorPaletteNotFoundColor)
  {
    if (([(NTKProteusFaceColorPalette *)self hasPrimaryColorRange]& 1) != 0)
    {
      v21 = [(NTKProteusFaceColorPalette *)self primaryColorWithFraction:1.0];

      v6 = v21;
      goto LABEL_11;
    }

    primaryColor4 = [(NTKProteusFaceColorPalette *)self primaryColor];
    v23 = [primaryColor4 colorWithAlphaComponent:1.0];
    primaryColor2 = [v23 ntk_colorWithSaturationDelta:0.18 brightnessDelta:-0.2];
  }

  else
  {
    primaryColor2 = digitContrast;
  }

LABEL_14:

  return primaryColor2;
}

- (double)_contrastRatio
{
  pigmentEditOption = [(NTKProteusFaceColorPalette *)self pigmentEditOption];
  fullname = [pigmentEditOption fullname];
  v4 = [fullname isEqualToString:ntk_standard_lightYellow];

  result = 1.3;
  if (!v4)
  {
    return 2.0;
  }

  return result;
}

@end