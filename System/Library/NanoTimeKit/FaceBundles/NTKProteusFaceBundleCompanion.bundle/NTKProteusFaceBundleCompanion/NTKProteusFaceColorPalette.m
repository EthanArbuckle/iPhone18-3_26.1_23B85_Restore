@interface NTKProteusFaceColorPalette
- (NTKProteusFaceColorPalette)initWithFaceClass:(Class)a3 device:(id)a4;
- (double)_contrastRatio;
- (id)_background;
- (id)_simpleTextComplicationColor;
- (id)copyWithZone:(_NSZone *)a3;
- (id)digitColor;
- (id)identifier;
- (void)configurationDidChange:(id)a3;
- (void)setBackgroundStyle:(unint64_t)a3;
@end

@implementation NTKProteusFaceColorPalette

- (NTKProteusFaceColorPalette)initWithFaceClass:(Class)a3 device:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NTKProteusFaceColorPalette;
  v8 = [(NTKProteusFaceColorPalette *)&v11 initWithFaceClass:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a4);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKProteusFaceColorPalette;
  v4 = [(NTKProteusFaceColorPalette *)&v6 copyWithZone:a3];
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
    v4 = [(NTKProteusFaceColorPalette *)&v8 identifier];
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
  v5.super_class = NTKProteusFaceColorPalette;
  [(NTKProteusFaceColorPalette *)&v5 configurationDidChange:a3];
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
  v3 = [(NTKProteusFaceColorPalette *)self simpleTextComplication];
  v4 = v3;
  if (self->_backgroundStyle != 1)
  {
    v12 = v3;
    v5 = v12;
    goto LABEL_6;
  }

  v5 = +[UIColor whiteColor];

  v6 = [(NTKProteusFaceColorPalette *)self primaryColor];
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

  v15 = [(NTKProteusFaceColorPalette *)self simpleTextComplicationContrast];
  v16 = v15;
  if (!v15 || v15 == NTKFaceColorPaletteNotFoundColor)
  {
    if (([(NTKProteusFaceColorPalette *)self hasPrimaryColorRange]& 1) != 0)
    {
      v17 = [(NTKProteusFaceColorPalette *)self primaryColorWithFraction:1.0];

      v5 = v17;
      goto LABEL_4;
    }

    v18 = [(NTKProteusFaceColorPalette *)self primaryColor];
    v19 = [v18 colorWithAlphaComponent:1.0];
    v13 = [v19 ntk_colorWithSaturationDelta:0.18 brightnessDelta:-0.2];
  }

  else
  {
    v13 = v15;
  }

LABEL_7:

  return v13;
}

- (id)digitColor
{
  v3 = [(NTKProteusFaceColorPalette *)self digit];
  v4 = v3;
  if (v3 && v3 != NTKFaceColorPaletteNotFoundColor)
  {
    v5 = v3;
    v6 = v5;
LABEL_4:
    v7 = v5;
    goto LABEL_14;
  }

  if ([(NTKProteusFaceColorPalette *)self isTritium])
  {
    device = self->_device;
    v9 = NTKEnableAODVibrancy();
    v10 = [(NTKProteusFaceColorPalette *)self primaryColor];
    v7 = v10;
    if ((v9 & 1) == 0)
    {
      v11 = [v10 colorWithAlphaComponent:0.7];

      v6 = v4;
      v7 = v11;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (self->_backgroundStyle != 1)
  {
    v7 = [(NTKProteusFaceColorPalette *)self primaryColor];
LABEL_13:
    v6 = v4;
    goto LABEL_14;
  }

  v6 = +[UIColor whiteColor];

  v12 = [(NTKProteusFaceColorPalette *)self primaryColor];
  CLKContrastRatioForColors();
  v14 = v13;

  [(NTKProteusFaceColorPalette *)self _contrastRatio];
  if (v14 >= v15 || (-[NTKProteusFaceColorPalette pigmentEditOption](self, "pigmentEditOption"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isRainbowColor], v16, (v17 & 1) != 0))
  {
LABEL_11:
    v5 = [v6 colorWithAlphaComponent:0.7];
    goto LABEL_4;
  }

  v19 = [(NTKProteusFaceColorPalette *)self digitContrast];
  v20 = v19;
  if (!v19 || v19 == NTKFaceColorPaletteNotFoundColor)
  {
    if (([(NTKProteusFaceColorPalette *)self hasPrimaryColorRange]& 1) != 0)
    {
      v21 = [(NTKProteusFaceColorPalette *)self primaryColorWithFraction:1.0];

      v6 = v21;
      goto LABEL_11;
    }

    v22 = [(NTKProteusFaceColorPalette *)self primaryColor];
    v23 = [v22 colorWithAlphaComponent:1.0];
    v7 = [v23 ntk_colorWithSaturationDelta:0.18 brightnessDelta:-0.2];
  }

  else
  {
    v7 = v19;
  }

LABEL_14:

  return v7;
}

- (double)_contrastRatio
{
  v2 = [(NTKProteusFaceColorPalette *)self pigmentEditOption];
  v3 = [v2 fullname];
  v4 = [v3 isEqualToString:ntk_standard_lightYellow];

  result = 1.3;
  if (!v4)
  {
    return 2.0;
  }

  return result;
}

@end