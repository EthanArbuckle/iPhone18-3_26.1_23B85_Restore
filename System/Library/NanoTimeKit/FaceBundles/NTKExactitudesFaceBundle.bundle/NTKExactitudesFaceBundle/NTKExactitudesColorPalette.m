@interface NTKExactitudesColorPalette
- (BOOL)_hasDarkLightVariants;
- (BOOL)isHardwareColor;
- (BOOL)isHeroColor;
- (NTKExactitudesColorPalette)init;
- (UIColor)backgroundColor;
- (UIColor)handDotColor;
- (UIColor)hourColor;
- (UIColor)hourHandInlayColor;
- (UIColor)hourHandOutlineColor;
- (UIColor)miniClockDateLabelColor;
- (UIColor)minuteColor;
- (UIColor)minuteHandInlayColor;
- (UIColor)minuteHandOutlineColor;
- (UIColor)primaryComplicationColor;
- (UIColor)secondColor;
- (UIColor)secondHandColor;
- (UIColor)secondaryComplicationColor;
- (UIColor)swatch;
- (float)_seasonalDarkColorLuminance;
- (float)_seasonalLightColorLuminance;
- (float)_seasonalPrimaryColorLuminance;
- (id)_brightenUIColor:(id)a3 withLuminance:(float)a4;
- (id)_exactitudesSeasonalDarkColor;
- (id)_exactitudesSeasonalLightColor;
- (id)_seasonalPrimaryColor;
- (id)_standardColorLightest;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifier;
- (id)swatchImageForSize:(CGSize)a3;
- (void)configurationDidChange:(id)a3;
- (void)setBackgroundStyle:(unint64_t)a3;
@end

@implementation NTKExactitudesColorPalette

- (NTKExactitudesColorPalette)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = NTKExactitudesColorPalette;
  return [(NTKExactitudesColorPalette *)&v5 initWithFaceClass:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKExactitudesColorPalette;
  v4 = [(NTKExactitudesColorPalette *)&v6 copyWithZone:a3];
  [v4 setBackgroundStyle:{-[NTKExactitudesColorPalette backgroundStyle](self, "backgroundStyle")}];
  return v4;
}

- (id)identifier
{
  cachedIdentifier = self->_cachedIdentifier;
  if (!cachedIdentifier)
  {
    v8.receiver = self;
    v8.super_class = NTKExactitudesColorPalette;
    v4 = [(NTKExactitudesColorPalette *)&v8 identifier];
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
  v5.super_class = NTKExactitudesColorPalette;
  [(NTKExactitudesColorPalette *)&v5 configurationDidChange:a3];
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

- (BOOL)_hasDarkLightVariants
{
  if (([(NTKExactitudesColorPalette *)self isSeasonalCollection]& 1) != 0)
  {
    return 1;
  }

  v4 = [(NTKExactitudesColorPalette *)self pigmentEditOption];
  v5 = [v4 fullname];
  v6 = [v5 isEqualToString:ntk_zeus_orange];

  return v6;
}

- (UIColor)backgroundColor
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle == 1)
  {
    goto LABEL_7;
  }

  v3 = self;
  if (backgroundStyle)
  {
    goto LABEL_8;
  }

  if ([(NTKExactitudesColorPalette *)self isHeroColor])
  {
    self = +[UIColor whiteColor];
    goto LABEL_8;
  }

  if (![(NTKExactitudesColorPalette *)v3 _hasDarkLightVariants])
  {
LABEL_7:
    self = +[UIColor blackColor];
  }

  else
  {
    self = [(NTKExactitudesColorPalette *)v3 _exactitudesSeasonalDarkColor];
  }

LABEL_8:

  return self;
}

- (UIColor)miniClockDateLabelColor
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle == 1)
  {
    goto LABEL_5;
  }

  if (backgroundStyle)
  {
    goto LABEL_6;
  }

  if (![(NTKExactitudesColorPalette *)self isHeroColor])
  {
LABEL_5:
    self = +[UIColor whiteColor];
  }

  else
  {
    self = +[UIColor blackColor];
  }

LABEL_6:

  return self;
}

- (UIColor)hourColor
{
  if ([(NTKExactitudesColorPalette *)self isHeroColor]|| [(NTKExactitudesColorPalette *)self isHardwareColor])
  {
    v3 = [(NTKExactitudesColorPalette *)self colorA];
  }

  else if ([(NTKExactitudesColorPalette *)self isStandardColor])
  {
    v3 = [(NTKExactitudesColorPalette *)self _standardColorLightest];
  }

  else
  {
    if ([(NTKExactitudesColorPalette *)self _hasDarkLightVariants])
    {
      [(NTKExactitudesColorPalette *)self _exactitudesSeasonalLightColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v3 = ;
  }

  return v3;
}

- (UIColor)minuteColor
{
  if ([(NTKExactitudesColorPalette *)self isHeroColor]|| [(NTKExactitudesColorPalette *)self isHardwareColor])
  {
    v3 = [(NTKExactitudesColorPalette *)self colorB];
  }

  else if ([(NTKExactitudesColorPalette *)self isStandardColor])
  {
    v3 = [(NTKExactitudesColorPalette *)self primaryColor];
  }

  else
  {
    if ([(NTKExactitudesColorPalette *)self _hasDarkLightVariants])
    {
      [(NTKExactitudesColorPalette *)self _seasonalPrimaryColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v3 = ;
  }

  return v3;
}

- (UIColor)secondColor
{
  if ([(NTKExactitudesColorPalette *)self isHeroColor])
  {
    [(NTKExactitudesColorPalette *)self colorC];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v3 = ;

  return v3;
}

- (UIColor)primaryComplicationColor
{
  if ([(NTKExactitudesColorPalette *)self isHeroColor]|| [(NTKExactitudesColorPalette *)self isHardwareColor])
  {
    v3 = [(NTKExactitudesColorPalette *)self colorB];
    goto LABEL_4;
  }

  if ([(NTKExactitudesColorPalette *)self isStandardColor])
  {
    v3 = [(NTKExactitudesColorPalette *)self primaryColor];
    goto LABEL_4;
  }

  if (![(NTKExactitudesColorPalette *)self _hasDarkLightVariants])
  {
LABEL_13:
    v3 = +[UIColor whiteColor];
    goto LABEL_4;
  }

  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle != 1)
  {
    if (!backgroundStyle)
    {
      v3 = [(NTKExactitudesColorPalette *)self _exactitudesSeasonalLightColor];
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v3 = [(NTKExactitudesColorPalette *)self _seasonalPrimaryColor];
LABEL_4:

  return v3;
}

- (UIColor)secondaryComplicationColor
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle == 1)
  {
    goto LABEL_5;
  }

  if (backgroundStyle)
  {
    goto LABEL_6;
  }

  if (![(NTKExactitudesColorPalette *)self isHeroColor])
  {
LABEL_5:
    self = +[UIColor whiteColor];
  }

  else
  {
    self = +[UIColor blackColor];
  }

LABEL_6:

  return self;
}

- (UIColor)hourHandInlayColor
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle == 1)
  {
    self = [(NTKExactitudesColorPalette *)self hourColor];
  }

  else if (!backgroundStyle)
  {
    self = +[UIColor whiteColor];
  }

  return self;
}

- (UIColor)minuteHandInlayColor
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle == 1)
  {
    self = [(NTKExactitudesColorPalette *)self minuteColor];
  }

  else if (!backgroundStyle)
  {
    self = +[UIColor whiteColor];
  }

  return self;
}

- (UIColor)hourHandOutlineColor
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle == 1)
  {
    v3 = [(NTKExactitudesColorPalette *)self hourColor];
  }

  else
  {
    if (backgroundStyle)
    {
      goto LABEL_6;
    }

    v3 = [(NTKExactitudesColorPalette *)self hourMinute];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (UIColor)minuteHandOutlineColor
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle == 1)
  {
    v3 = [(NTKExactitudesColorPalette *)self minuteColor];
  }

  else
  {
    if (backgroundStyle)
    {
      goto LABEL_6;
    }

    v3 = [(NTKExactitudesColorPalette *)self hourMinute];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (UIColor)secondHandColor
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle == 1)
  {
    self = +[UIColor whiteColor];
  }

  else
  {
    v3 = self;
    if (!backgroundStyle)
    {
      if ([(NTKExactitudesColorPalette *)self isHardwareColor])
      {
        [(NTKExactitudesColorPalette *)v3 hardwareSecond];
      }

      else
      {
        [(NTKExactitudesColorPalette *)v3 second];
      }
      self = ;
    }
  }

  return self;
}

- (UIColor)handDotColor
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle == 1)
  {
    goto LABEL_5;
  }

  if (backgroundStyle)
  {
    goto LABEL_6;
  }

  if ([(NTKExactitudesColorPalette *)self isHardwareColor])
  {
LABEL_5:
    self = +[UIColor blackColor];
  }

  else
  {
    self = +[UIColor whiteColor];
  }

LABEL_6:

  return self;
}

- (BOOL)isHeroColor
{
  v3 = [(NTKExactitudesColorPalette *)self configuration];
  v4 = [v3 collectionName];
  v5 = [(NTKExactitudesColorPalette *)self exactitudesCollectionName];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (BOOL)isHardwareColor
{
  v3 = [(NTKExactitudesColorPalette *)self configuration];
  v4 = [v3 collectionName];
  v5 = [(NTKExactitudesColorPalette *)self exactitudesHardwareCollectionName];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (id)_standardColorLightest
{
  if ([(NTKExactitudesColorPalette *)self hasPrimaryColorRange])
  {
    [(NTKExactitudesColorPalette *)self primaryColorWithFraction:0.0];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v3 = ;

  return v3;
}

- (id)_seasonalPrimaryColor
{
  if ([(NTKExactitudesColorPalette *)self _hasDarkLightVariants])
  {
    v3 = [(NTKExactitudesColorPalette *)self primaryColor];
    [(NTKExactitudesColorPalette *)self _seasonalPrimaryColorLuminance];
    v4 = [(NTKExactitudesColorPalette *)self _brightenUIColor:v3 withLuminance:?];
  }

  else
  {
    v4 = +[UIColor magentaColor];
  }

  return v4;
}

- (id)_exactitudesSeasonalLightColor
{
  if ([(NTKExactitudesColorPalette *)self _hasDarkLightVariants])
  {
    v3 = [(NTKExactitudesColorPalette *)self seasonalLightColor];
    [(NTKExactitudesColorPalette *)self _seasonalLightColorLuminance];
    v4 = [(NTKExactitudesColorPalette *)self _brightenUIColor:v3 withLuminance:?];
  }

  else
  {
    v4 = +[UIColor magentaColor];
  }

  return v4;
}

- (id)_exactitudesSeasonalDarkColor
{
  if ([(NTKExactitudesColorPalette *)self _hasDarkLightVariants])
  {
    v3 = [(NTKExactitudesColorPalette *)self seasonalDarkColor];
    [(NTKExactitudesColorPalette *)self _seasonalDarkColorLuminance];
    v4 = [(NTKExactitudesColorPalette *)self _brightenUIColor:v3 withLuminance:?];
  }

  else
  {
    v4 = +[UIColor magentaColor];
  }

  return v4;
}

- (float)_seasonalDarkColorLuminance
{
  v3 = [(NTKExactitudesColorPalette *)self _hasDarkLightVariants];
  result = 0.0;
  if (v3)
  {
    v5 = [(NTKExactitudesColorPalette *)self seasonalDarkColor];
    Components = CGColorGetComponents([v5 CGColor]);
    v7 = *(Components + 1);
    v8 = vcvt_f32_f64(*Components);
    CLKUIConvertRGBtoLAB();
    v10 = v9;

    result = 50.0;
    if (v10 >= 50.0)
    {
      return v10;
    }
  }

  return result;
}

- (float)_seasonalPrimaryColorLuminance
{
  v3 = [(NTKExactitudesColorPalette *)self _hasDarkLightVariants];
  result = 0.0;
  if (!v3)
  {
    return result;
  }

  v5 = [(NTKExactitudesColorPalette *)self primaryColor];
  Components = CGColorGetComponents([v5 CGColor]);
  v7 = *(Components + 1);
  v8 = vcvt_f32_f64(*Components);
  CLKUIConvertRGBtoLAB();
  v17 = v9;

  LODWORD(v10) = 1114636288;
  v11.i64[0] = v17.i64[0];
  if (*v17.i32 < 60.0)
  {
    backgroundStyle = self->_backgroundStyle;
    if (backgroundStyle == 1)
    {
      v13 = 1117782016;
      goto LABEL_7;
    }

    if (!backgroundStyle)
    {
      v13 = 1116471296;
LABEL_7:
      LODWORD(v10) = v13;
      v11 = v17;
      v11.i32[0] = v13;
      v17 = v11;
    }
  }

  [(NTKExactitudesColorPalette *)self _seasonalDarkColorLuminance:v10];
  *v14.i32 = *v14.i32 + 15.0;
  if (*v14.i32 > *v17.i32 && *v17.i32 < 90.0)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  LODWORD(result) = vbslq_s8(vdupq_n_s32(v16), v14, v17).u32[0];
  return result;
}

- (float)_seasonalLightColorLuminance
{
  v3 = [(NTKExactitudesColorPalette *)self _hasDarkLightVariants];
  result = 0.0;
  if (v3)
  {
    v5 = [(NTKExactitudesColorPalette *)self seasonalLightColor];
    Components = CGColorGetComponents([v5 CGColor]);
    v7 = *(Components + 1);
    v8 = vcvt_f32_f64(*Components);
    CLKUIConvertRGBtoLAB();
    v13 = v9;

    [(NTKExactitudesColorPalette *)self _seasonalPrimaryColorLuminance];
    *v10.i32 = *v10.i32 + 15.0;
    if (*v10.i32 > *v13.i32 && *v13.i32 < 90.0)
    {
      v12 = -1;
    }

    else
    {
      v12 = 0;
    }

    LODWORD(result) = vbslq_s8(vdupq_n_s32(v12), v10, v13).u32[0];
  }

  return result;
}

- (id)_brightenUIColor:(id)a3 withLuminance:(float)a4
{
  Components = CGColorGetComponents([a3 CGColor]);
  v5 = *(Components + 1);
  v6 = vcvt_f32_f64(*Components);
  CLKUIConvertRGBtoLAB();
  CLKUIConvertLABtoRGB();
  v11 = [UIColor colorWithRed:v10 green:v7 blue:v8 alpha:v9];
  v12 = [v11 CGColor];

  return [UIColor colorWithCGColor:v12];
}

- (UIColor)swatch
{
  if ([(NTKExactitudesColorPalette *)self isHardwareColor])
  {
    v3 = [(NTKExactitudesColorPalette *)self colorB];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NTKExactitudesColorPalette;
    v3 = [(NTKExactitudesColorPalette *)&v5 swatch];
  }

  return v3;
}

- (id)swatchImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(NTKExactitudesColorPalette *)self isHeroColor])
  {
    if (width == CGSizeZero.width && height == CGSizeZero.height)
    {
      [NTKEditOption sizeForSwatchStyle:0];
      width = v7;
      height = v8;
    }

    v9 = [[UIGraphicsImageRenderer alloc] initWithSize:{width, height}];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_4034;
    v12[3] = &unk_309B8;
    *&v12[5] = width;
    *&v12[6] = height;
    v12[4] = self;
    v10 = [v9 imageWithActions:v12];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NTKExactitudesColorPalette;
    v10 = [(NTKExactitudesColorPalette *)&v13 swatchImageForSize:width, height];
  }

  return v10;
}

@end