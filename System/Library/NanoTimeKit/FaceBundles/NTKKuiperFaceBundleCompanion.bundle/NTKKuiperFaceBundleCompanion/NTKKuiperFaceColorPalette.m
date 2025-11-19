@interface NTKKuiperFaceColorPalette
- (BOOL)_isCloudBlueColor;
- (BOOL)_isGrayColor;
- (BOOL)_isLightColor;
- (BOOL)_isRainbowColor;
- (BOOL)_isWhiteColor;
- (BOOL)_useBrightnessOffsetForBackgroundColor;
- (BOOL)_usesRedContrastSecondHandColor;
- (id)_background;
- (id)_backgroundMedium;
- (id)_baseBackgroundColor;
- (id)_complicationBackground;
- (id)_complicationPrimary;
- (id)_complicationPrimaryDark;
- (id)_complicationPrimaryEditing;
- (id)_complicationPrimaryMedium;
- (id)_complicationSecondary;
- (id)_complicationSecondaryDarkBackground;
- (id)_dialBackground;
- (id)_dialBackgroundDark;
- (id)_dialBackgroundMedium;
- (id)_digit;
- (id)_hourTick;
- (id)_minuteTick;
- (id)_secondHand;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifier;
- (void)configurationDidChange:(id)a3;
- (void)setDial:(unint64_t)a3;
@end

@implementation NTKKuiperFaceColorPalette

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKKuiperFaceColorPalette;
  v4 = [(NTKKuiperFaceColorPalette *)&v6 copyWithZone:a3];
  [v4 setDial:self->_dial];
  return v4;
}

- (id)identifier
{
  cachedIdentifier = self->_cachedIdentifier;
  if (!cachedIdentifier)
  {
    v8.receiver = self;
    v8.super_class = NTKKuiperFaceColorPalette;
    v4 = [(NTKKuiperFaceColorPalette *)&v8 identifier];
    v5 = [NSString stringWithFormat:@"%@-%lu", v4, self->_dial];
    v6 = self->_cachedIdentifier;
    self->_cachedIdentifier = v5;

    cachedIdentifier = self->_cachedIdentifier;
  }

  return cachedIdentifier;
}

- (void)configurationDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKKuiperFaceColorPalette;
  [(NTKKuiperFaceColorPalette *)&v5 configurationDidChange:a3];
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
}

- (void)setDial:(unint64_t)a3
{
  self->_dial = a3;
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
  _objc_release_x1();
}

- (id)_background
{
  if (self->_dial == 4)
  {
    v3 = [(NTKKuiperFaceColorPalette *)self backgroundBlack];
LABEL_17:
    v7 = v3;
    goto LABEL_18;
  }

  if ([(NTKKuiperFaceColorPalette *)self _isWhiteColor])
  {
    dial = self->_dial;
    if (dial != 1)
    {
      if (dial)
      {
        goto LABEL_16;
      }

LABEL_11:
      v3 = [(NTKKuiperFaceColorPalette *)self backgroundLight];
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if ([(NTKKuiperFaceColorPalette *)self _isCloudBlueColor])
  {
    v5 = self->_dial;
    if (v5 == 1)
    {
      goto LABEL_11;
    }

    if (!v5)
    {
LABEL_10:
      v3 = [(NTKKuiperFaceColorPalette *)self backgroundMedium];
      goto LABEL_17;
    }

LABEL_16:
    v3 = [(NTKKuiperFaceColorPalette *)self backgroundDefault];
    goto LABEL_17;
  }

  if ([(NTKKuiperFaceColorPalette *)self _isRainbowColor])
  {
    v6 = self->_dial;
    if (v6 == 1)
    {
      v3 = [(NTKKuiperFaceColorPalette *)self dialBackgroundDark];
      goto LABEL_17;
    }

    if (!v6)
    {
      v3 = [(NTKKuiperFaceColorPalette *)self dialBackgroundMedium];
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v9 = [(NTKKuiperFaceColorPalette *)self _baseBackgroundColor];
  v10 = v9;
  if (self->_dial > 1)
  {
    v14 = v9;
  }

  else
  {
    v17 = 0.0;
    v18 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    [v9 getHue:&v18 saturation:&v17 brightness:&v16 alpha:&v15];
    v11 = v16;
    if (v16 <= 0.82)
    {
      v13 = v17;
    }

    else
    {
      v16 = 0.82;
      v12 = [(NTKKuiperFaceColorPalette *)self _isGrayColor];
      v13 = v17;
      if ((v12 & 1) == 0)
      {
        v13 = v17 + -0.05;
        v17 = v17 + -0.05;
      }
    }

    v14 = [UIColor colorWithHue:v18 saturation:v13 brightness:v16 alpha:v15];
  }

  v7 = v14;

LABEL_18:

  return v7;
}

- (id)_baseBackgroundColor
{
  if (self->_dial)
  {
    [(NTKKuiperFaceColorPalette *)self backgroundDefault];
  }

  else
  {
    [(NTKKuiperFaceColorPalette *)self backgroundMedium];
  }
  v2 = ;

  return v2;
}

- (id)_dialBackground
{
  dial = self->_dial;
  if (dial < 2)
  {
    v3 = [(NTKKuiperFaceColorPalette *)self lightDialBackground];
  }

  else if (dial - 3 >= 2)
  {
    if (dial != 2)
    {
      goto LABEL_8;
    }

    v3 = [(NTKKuiperFaceColorPalette *)self dialBackgroundMedium];
  }

  else
  {
    v3 = [(NTKKuiperFaceColorPalette *)self dialBackgroundDark];
  }

  a2 = v3;
LABEL_8:

  return a2;
}

- (id)_digit
{
  if (self->_dial > 1)
  {
    [(NTKKuiperFaceColorPalette *)self darkDialDigit];
  }

  else
  {
    [(NTKKuiperFaceColorPalette *)self lightDialDigit];
  }
  v2 = ;

  return v2;
}

- (id)_hourTick
{
  if (self->_dial > 1)
  {
    [(NTKKuiperFaceColorPalette *)self darkDialHourTick];
  }

  else
  {
    [(NTKKuiperFaceColorPalette *)self lightDialHourTick];
  }
  v2 = ;

  return v2;
}

- (id)_minuteTick
{
  if (self->_dial > 1)
  {
    v4 = [(NTKKuiperFaceColorPalette *)self hourTick];
    v5 = [(NTKKuiperFaceColorPalette *)self dialBackground];
    v3 = NTKInterpolateBetweenColors();
  }

  else
  {
    v3 = [(NTKKuiperFaceColorPalette *)self lightDialMinuteTick];
  }

  return v3;
}

- (id)_secondHand
{
  if ([(NTKKuiperFaceColorPalette *)self _usesRedContrastSecondHandColor])
  {
    v3 = [(NTKKuiperFaceColorPalette *)self redContrastSecondHand];
  }

  else
  {
    if (self->_dial > 1)
    {
      [(NTKKuiperFaceColorPalette *)self darkDialSecondHand];
    }

    else
    {
      [(NTKKuiperFaceColorPalette *)self lightDialSecondHand];
    }
    v3 = ;
  }

  return v3;
}

- (id)_complicationPrimary
{
  if (![(NTKKuiperFaceColorPalette *)self _isWhiteColor])
  {
    if ([(NTKKuiperFaceColorPalette *)self _isCloudBlueColor])
    {
      if ((self->_dial | 4) == 4)
      {
        goto LABEL_14;
      }

LABEL_8:
      v4 = [(NTKKuiperFaceColorPalette *)self complicationPrimaryDark];
      goto LABEL_15;
    }

    v5 = [(NTKKuiperFaceColorPalette *)self _isRainbowColor];
    dial = self->_dial;
    if (v5)
    {
      v7 = dial > 4;
      v8 = (1 << dial) & 0x13;
      if (v7 || v8 == 0)
      {
        goto LABEL_5;
      }

LABEL_14:
      v4 = [(NTKKuiperFaceColorPalette *)self complicationPrimaryDefault];
      goto LABEL_15;
    }

    v12 = 0;
    if (dial > 2)
    {
      if (dial == 3)
      {
        v13 = [(NTKKuiperFaceColorPalette *)self complicationPrimaryDark];
        goto LABEL_28;
      }

      if (dial != 4)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if ((dial - 1) < 2)
      {
        v13 = [(NTKKuiperFaceColorPalette *)self complicationPrimaryMedium];
LABEL_28:
        v12 = v13;
        goto LABEL_29;
      }

      if (dial)
      {
LABEL_29:
        if ([(NTKKuiperFaceColorPalette *)self _useBrightnessOffsetForBackgroundColor])
        {
          v14 = [v12 ntk_colorWithSaturationDelta:0.0 brightnessDelta:-0.05];
        }

        else
        {
          v14 = v12;
        }

        v10 = v14;

        goto LABEL_16;
      }
    }

    v13 = [(NTKKuiperFaceColorPalette *)self complicationPrimaryDefault];
    goto LABEL_28;
  }

  v3 = self->_dial;
  switch(v3)
  {
    case 4uLL:
      goto LABEL_14;
    case 1uLL:
      goto LABEL_8;
    case 0uLL:
      goto LABEL_14;
  }

LABEL_5:
  v4 = [(NTKKuiperFaceColorPalette *)self complicationPrimaryMedium];
LABEL_15:
  v10 = v4;
LABEL_16:

  return v10;
}

- (id)_complicationSecondary
{
  if (![(NTKKuiperFaceColorPalette *)self _isWhiteColor])
  {
    if (![(NTKKuiperFaceColorPalette *)self _isCloudBlueColor])
    {
      v5 = [(NTKKuiperFaceColorPalette *)self _isRainbowColor];
      dial = self->_dial;
      if (!v5)
      {
        if (dial)
        {
          [(NTKKuiperFaceColorPalette *)self complicationSecondaryDarkBackground];
        }

        else
        {
          [(NTKKuiperFaceColorPalette *)self complicationSecondaryDefault];
        }
        v12 = ;
        if ([(NTKKuiperFaceColorPalette *)self _useBrightnessOffsetForBackgroundColor])
        {
          v13 = [v12 ntk_colorWithSaturationDelta:0.0 brightnessDelta:-0.05];
        }

        else
        {
          v13 = v12;
        }

        v10 = v13;

        goto LABEL_17;
      }

      v7 = dial > 4;
      v8 = (1 << dial) & 0x13;
      if (!v7 && v8 != 0)
      {
        goto LABEL_14;
      }

LABEL_15:
      v4 = [(NTKKuiperFaceColorPalette *)self complicationPrimary];
      goto LABEL_16;
    }

    if ((self->_dial | 4) != 4)
    {
      goto LABEL_8;
    }

LABEL_14:
    v4 = [(NTKKuiperFaceColorPalette *)self complicationSecondaryDefault];
    goto LABEL_16;
  }

  v3 = self->_dial;
  switch(v3)
  {
    case 4uLL:
      goto LABEL_14;
    case 1uLL:
      goto LABEL_15;
    case 0uLL:
      goto LABEL_14;
  }

LABEL_8:
  v4 = [(NTKKuiperFaceColorPalette *)self complicationSecondaryLightBackground];
LABEL_16:
  v10 = v4;
LABEL_17:

  return v10;
}

- (BOOL)_useBrightnessOffsetForBackgroundColor
{
  v2 = [(NTKKuiperFaceColorPalette *)self _baseBackgroundColor];
  v7 = 0;
  v8 = 0;
  v5 = 0;
  v6 = 0.0;
  [v2 getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v5];
  v3 = v6 > 0.82;

  return v3;
}

- (id)_backgroundMedium
{
  v3 = [(NTKKuiperFaceColorPalette *)self primaryColor];
  if ([(NTKKuiperFaceColorPalette *)self _isLightColor])
  {
    v4 = [(NTKKuiperFaceColorPalette *)self _isGrayColor];
    v5 = 0.1;
    if (v4)
    {
      v5 = 0.0;
    }

    v6 = [v3 ntk_colorWithSaturationDelta:v5 brightnessDelta:-0.2];
  }

  else
  {
    v6 = NTKColorByApplyingWhiteOverlay();
  }

  v7 = v6;

  return v7;
}

- (id)_complicationBackground
{
  if ([(NTKKuiperFaceColorPalette *)self _isRainbowColor]&& self->_dial <= 1)
  {
    v3 = +[UIColor grayColor];
  }

  else
  {
    v3 = [(NTKKuiperFaceColorPalette *)self _background];
  }

  return v3;
}

- (id)_complicationPrimaryMedium
{
  v3 = [(NTKKuiperFaceColorPalette *)self primaryColor];
  if ([(NTKKuiperFaceColorPalette *)self _isLightColor])
  {
    v4 = [(NTKKuiperFaceColorPalette *)self _isGrayColor];
    v5 = 0.2;
    if (v4)
    {
      v5 = 0.0;
    }

    v6 = [v3 ntk_colorWithSaturationDelta:v5 brightnessDelta:-0.3];
  }

  else
  {
    v6 = NTKColorByApplyingWhiteOverlay();
  }

  v7 = v6;

  return v7;
}

- (id)_complicationPrimaryDark
{
  v3 = [(NTKKuiperFaceColorPalette *)self primaryColor];
  if ([(NTKKuiperFaceColorPalette *)self _isLightColor])
  {
    v4 = [(NTKKuiperFaceColorPalette *)self _isGrayColor];
    v5 = 0.2;
    if (v4)
    {
      v5 = 0.0;
    }

    v6 = [v3 ntk_colorWithSaturationDelta:v5 brightnessDelta:-0.3];
  }

  else
  {
    v6 = NTKColorByApplyingBlackOverlay();
  }

  v7 = v6;

  return v7;
}

- (id)_complicationPrimaryEditing
{
  v3 = [(NTKKuiperFaceColorPalette *)self primaryColor];
  if ([(NTKKuiperFaceColorPalette *)self _isLightColor])
  {
    v4 = v3;
  }

  else
  {
    v4 = NTKColorByApplyingWhiteOverlay();
  }

  v5 = v4;

  return v5;
}

- (id)_complicationSecondaryDarkBackground
{
  v3 = [(NTKKuiperFaceColorPalette *)self primaryColor];
  dial = self->_dial;
  if (![(NTKKuiperFaceColorPalette *)self _isLightColor]|| dial == 4)
  {
    v7 = [(NTKKuiperFaceColorPalette *)self darkBackgroundComplicationSecondary];
  }

  else
  {
    v5 = [(NTKKuiperFaceColorPalette *)self _isGrayColor];
    v6 = 0.2;
    if (v5)
    {
      v6 = 0.0;
    }

    v7 = [v3 ntk_colorWithSaturationDelta:v6 brightnessDelta:-0.4];
  }

  v8 = v7;

  return v8;
}

- (id)_dialBackgroundMedium
{
  v3 = [(NTKKuiperFaceColorPalette *)self primaryColor];
  if ([(NTKKuiperFaceColorPalette *)self _isLightColor])
  {
    v4 = [(NTKKuiperFaceColorPalette *)self _isGrayColor];
    v5 = 0.1;
    if (v4)
    {
      v5 = 0.0;
    }

    v6 = [v3 ntk_colorWithSaturationDelta:v5 brightnessDelta:-0.25];
  }

  else
  {
    v6 = NTKColorByApplyingWhiteOverlay();
  }

  v7 = v6;

  return v7;
}

- (id)_dialBackgroundDark
{
  v3 = [(NTKKuiperFaceColorPalette *)self primaryColor];
  if ([(NTKKuiperFaceColorPalette *)self _isLightColor])
  {
    v4 = [(NTKKuiperFaceColorPalette *)self _isGrayColor];
    v5 = 0.1;
    if (v4)
    {
      v5 = 0.0;
    }

    v6 = [v3 ntk_colorWithSaturationDelta:v5 brightnessDelta:-0.5];
  }

  else
  {
    v6 = NTKColorByApplyingBlackOverlay();
  }

  v7 = v6;

  return v7;
}

- (BOOL)_isLightColor
{
  if ([(NTKKuiperFaceColorPalette *)self _isRainbowColor])
  {
    return 0;
  }

  v4 = [(NTKKuiperFaceColorPalette *)self primaryColor];
  v5 = +[UIColor whiteColor];
  CLKContrastRatioForColors();
  v3 = v6 < 2.0;

  return v3;
}

- (BOOL)_isWhiteColor
{
  v2 = [(NTKKuiperFaceColorPalette *)self pigmentEditOption];
  v3 = [v2 fullname];
  if ([v3 isEqualToString:ntk_seasons_spring2015_white])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:ntk_evergreen_white];
  }

  return v4;
}

- (BOOL)_isGrayColor
{
  v2 = [(NTKKuiperFaceColorPalette *)self pigmentEditOption];
  v3 = [v2 fullname];
  v4 = [v3 isEqualToString:ntk_standard_gray];

  return v4;
}

- (BOOL)_isCloudBlueColor
{
  v2 = [(NTKKuiperFaceColorPalette *)self pigmentEditOption];
  v3 = [v2 fullname];
  v4 = [v3 isEqualToString:ntk_seasons_summer2021_cloudBlue];

  return v4;
}

- (BOOL)_usesRedContrastSecondHandColor
{
  if (self->_dial != 2)
  {
    return 0;
  }

  v2 = [(NTKKuiperFaceColorPalette *)self pigmentEditOption];
  v3 = [v2 fullname];
  if ([v3 isEqualToString:ntk_standard_red])
  {
    [v2 colorFraction];
    v5 = v4 >= 0.5;
  }

  else if ([v3 isEqualToString:ntk_seasons_fall2015_red] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", ntk_seasons_fall2017_roseRed) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", ntk_seasons_winter2018_hibiscus) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", ntk_seasons_winter2019_pomegranate) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", ntk_seasons_fall2021_red2sg))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqualToString:ntk_seasons_fall2022_red];
  }

  return v5;
}

- (BOOL)_isRainbowColor
{
  v2 = [(NTKKuiperFaceColorPalette *)self pigmentEditOption];
  v3 = [v2 isRainbowColor];

  return v3;
}

@end