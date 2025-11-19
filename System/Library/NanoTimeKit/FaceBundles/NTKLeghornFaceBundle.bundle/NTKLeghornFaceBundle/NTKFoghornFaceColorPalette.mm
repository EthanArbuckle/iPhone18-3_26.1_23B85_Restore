@interface NTKFoghornFaceColorPalette
+ (id)_canonicalMonochromePaletteNameForBezelStyle:(int64_t)a3;
+ (id)_colorFromColor:(id)a3 alpha:(double)a4;
+ (id)_colorFromColorSetColor:(id)a3 fallbackRootColor:(id)a4 alpha:(double)a5;
- (BOOL)isEqual:(id)a3;
- (NTKFoghornFaceColorPalette)nightModeColorPalette;
- (UIColor)bezelCompassCardinalTickColor;
- (UIColor)bezelCompassLabelledTickColor;
- (UIColor)bezelCompassNorthTickColor;
- (UIColor)bezelDepthDecorationColor;
- (UIColor)bezelDepthLabelColor;
- (UIColor)bezelDepthLimitLabelColor;
- (UIColor)bezelDepthLimitMajorTickColor;
- (UIColor)bezelDepthLimitMedialTickColor;
- (UIColor)bezelDepthLimitMinorTickColor;
- (UIColor)bezelDepthMarkerColor;
- (UIColor)bezelDepthMaxLabelColor;
- (UIColor)bezelDepthMaxMajorTickColor;
- (UIColor)bezelDepthMaxMarkerColor;
- (UIColor)bezelDepthMaxMedialTickColor;
- (UIColor)bezelDepthMaxMinorTickColor;
- (UIColor)bezelHarmoniaEmphasizedTickColor;
- (UIColor)bezelHarmoniaOvernightOutOfRangeColor;
- (UIColor)bezelHarmoniaOvernightPartiallyOutOfRangeColor;
- (UIColor)bezelHarmoniaOvernightTypicalColor;
- (UIColor)bezelHarmoniaTrainingAboveColor;
- (UIColor)bezelHarmoniaTrainingBelowColor;
- (UIColor)bezelHarmoniaTrainingNearColor;
- (UIColor)bezelHarmoniaTrainingWellAboveColor;
- (UIColor)bezelHarmoniaTrainingWellBelowColor;
- (UIColor)bezelHarmoniaUnitLabelColor;
- (UIColor)bezelInactiveMajorTickColor;
- (UIColor)bezelInactiveMedialTickColor;
- (UIColor)bezelInactiveMinorTickColor;
- (UIColor)bezelMajorTickColor;
- (UIColor)bezelMedialTickColor;
- (UIColor)bezelMinorTickColor;
- (UIColor)nightModeStatusBarColor;
- (UIColor)primaryColor;
- (UIColor)primaryComplicationColor;
- (UIColor)secondaryComplicationColor;
- (UIColor)simpleTextComplicationColor;
- (UIColor)timeMinutesColor;
- (UIColor)timeSecondsColor;
- (id)_canonicalMonochromePaletteForBezelStyle:(int64_t)a3;
- (id)_proxyPalette;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifier;
- (id)isMulticolorF;
- (id)isNightModeF;
- (void)configurationDidChange:(id)a3;
- (void)setBezelStyle:(int64_t)a3;
@end

@implementation NTKFoghornFaceColorPalette

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NTKFoghornFaceColorPalette;
    if ([(NTKFaceColorPalette *)&v13 isEqual:v4])
    {
      v5 = v4;
      isMulticolor = objc_msgSend_isMulticolor(self, v6, v7);
      v11 = isMulticolor == objc_msgSend_isMulticolor(v5, v9, v10) && (!isMulticolor || v5->_bezelStyle == self->_bezelStyle) && v5->_nightMode == self->_nightMode;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = NTKFoghornFaceColorPalette;
  result = [(NTKFaceColorPalette *)&v5 copyWithZone:a3];
  *(result + 14) = self->_bezelStyle;
  *(result + 104) = self->_nightMode;
  return result;
}

- (id)identifier
{
  cachedIdentifier = self->_cachedIdentifier;
  if (!cachedIdentifier)
  {
    if (objc_msgSend_isMulticolor(self, a2, v2))
    {
      v6 = NTKFoghornFaceBezelStyleString(v5);
    }

    else
    {
      v6 = @"monochrome";
    }

    v7 = MEMORY[0x277CCACA8];
    v14.receiver = self;
    v14.super_class = NTKFoghornFaceColorPalette;
    v8 = [(NTKFaceColorPalette *)&v14 identifier];
    v11 = objc_msgSend_stringWithFormat_(v7, v9, v10, @"%@-%@-%u", v8, v6, self->_nightMode);
    v12 = self->_cachedIdentifier;
    self->_cachedIdentifier = v11;

    cachedIdentifier = self->_cachedIdentifier;
  }

  return cachedIdentifier;
}

- (void)configurationDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKFoghornFaceColorPalette;
  [(NTKFaceColorPalette *)&v5 configurationDidChange:a3];
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
}

+ (id)_colorFromColor:(id)a3 alpha:(double)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 >= 0.0 && a4 < 1.0)
  {
    v8 = NTKColorByPremultiplyingAlpha();
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

+ (id)_colorFromColorSetColor:(id)a3 fallbackRootColor:(id)a4 alpha:(double)a5
{
  v8 = a3;
  v10 = v8;
  if (!v8 || *MEMORY[0x277D2BF30] == v8)
  {
    v11 = objc_msgSend__colorFromColor_alpha_(a1, v9, a5, a4);
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  return v12;
}

+ (id)_canonicalMonochromePaletteNameForBezelStyle:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"foghorn";
  }

  else
  {
    return off_278BA0DE0[a3];
  }
}

- (id)_canonicalMonochromePaletteForBezelStyle:(int64_t)a3
{
  v5 = objc_opt_class();
  v8 = objc_msgSend__canonicalMonochromePaletteNameForBezelStyle_(v5, v6, v7, a3);
  v11 = objc_msgSend_pigmentNamed_(MEMORY[0x277D2C0B0], v9, v10, v8);
  v14 = objc_msgSend_copyWithOption_(self, v12, v13, v11);
  v14[14] = a3;

  return v14;
}

- (id)_proxyPalette
{
  if (objc_msgSend_isMulticolor(self, a2, v2))
  {
    monochromeProxyPalette = self->_monochromeProxyPalette;
    if (!monochromeProxyPalette)
    {
      v7 = objc_msgSend__canonicalMonochromePaletteForBezelStyle_(self, v4, v5, self->_bezelStyle);
      v8 = self->_monochromeProxyPalette;
      self->_monochromeProxyPalette = v7;

      monochromeProxyPalette = self->_monochromeProxyPalette;
    }

    v9 = monochromeProxyPalette;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setBezelStyle:(int64_t)a3
{
  if (self->_bezelStyle != a3)
  {
    self->_bezelStyle = a3;
    monochromeProxyPalette = self->_monochromeProxyPalette;
    self->_monochromeProxyPalette = 0;

    cachedIdentifier = self->_cachedIdentifier;
    self->_cachedIdentifier = 0;
  }
}

- (UIColor)primaryColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_primaryColor(v4, v5, v6);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = NTKFoghornFaceColorPalette;
    v8 = [(NTKFoghornFaceColorPalette *)&v11 primaryColor];
  }

  v9 = v8;

  return v9;
}

- (UIColor)bezelMajorTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelMajorTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelMajorTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelMajorTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelMedialTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelMedialTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelMedialTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelMedialTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelMinorTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelMinorTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelMinorTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelMinorTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelInactiveMajorTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelInactiveMajorTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelInactiveMajorTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelInactiveMajorTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 0.4, v10, v12);
  }

  return v8;
}

- (UIColor)bezelInactiveMedialTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelInactiveMedialTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelInactiveMedialTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelInactiveMedialTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 0.4, v10, v12);
  }

  return v8;
}

- (UIColor)bezelInactiveMinorTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelInactiveMinorTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelInactiveMinorTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelInactiveMinorTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 0.4, v10, v12);
  }

  return v8;
}

- (UIColor)bezelCompassNorthTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelCompassNorthTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelCompassNorthTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelCompassNorthTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend__whiteColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelCompassCardinalTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelCompassCardinalTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelCompassCardinalTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelCompassCardinalTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelCompassLabelledTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelCompassLabelledTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelCompassLabelledTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelCompassLabelledTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelDepthMaxMajorTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelDepthMaxMajorTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthMaxMajorTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelDepthMaxMajorTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    if (self->_nightMode)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.45;
    }

    v14 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v14, v15, v13, v10, v12);
  }

  return v8;
}

- (UIColor)bezelDepthMaxMedialTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelDepthMaxMedialTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthMaxMedialTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelDepthMaxMedialTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    if (self->_nightMode)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.45;
    }

    v14 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v14, v15, v13, v10, v12);
  }

  return v8;
}

- (UIColor)bezelDepthMaxMinorTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelDepthMaxMinorTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthMaxMinorTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelDepthMaxMinorTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    if (self->_nightMode)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.45;
    }

    v14 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v14, v15, v13, v10, v12);
  }

  return v8;
}

- (UIColor)bezelDepthLimitMajorTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelDepthLimitMajorTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthLimitMajorTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelDepthLimitMajorTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend__whiteColor(self, v9, v11);
    }
    v12 = ;
    if (self->_nightMode)
    {
      v13 = 0.4;
    }

    else
    {
      v13 = 0.45;
    }

    v14 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v14, v15, v13, v10, v12);
  }

  return v8;
}

- (UIColor)bezelDepthLimitMedialTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelDepthLimitMedialTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthLimitMedialTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelDepthLimitMedialTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend__whiteColor(self, v9, v11);
    }
    v12 = ;
    if (self->_nightMode)
    {
      v13 = 0.4;
    }

    else
    {
      v13 = 0.45;
    }

    v14 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v14, v15, v13, v10, v12);
  }

  return v8;
}

- (UIColor)bezelDepthLimitMinorTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelDepthLimitMinorTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthLimitMinorTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelDepthLimitMinorTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend__whiteColor(self, v9, v11);
    }
    v12 = ;
    if (self->_nightMode)
    {
      v13 = 0.4;
    }

    else
    {
      v13 = 0.45;
    }

    v14 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v14, v15, v13, v10, v12);
  }

  return v8;
}

- (UIColor)bezelDepthMarkerColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelDepthMarkerColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthMarker_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelDepthMarker(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelDepthMaxMarkerColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelDepthMaxMarkerColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthMaxMarker_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelDepthMaxMarker(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    if (self->_nightMode)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.45;
    }

    v14 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v14, v15, v13, v10, v12);
  }

  return v8;
}

- (UIColor)bezelDepthLabelColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelDepthLabelColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthLabel_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelDepthLabel(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelDepthMaxLabelColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelDepthMaxLabelColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthMaxLabel_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelDepthMaxLabel(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    if (self->_nightMode)
    {
      v13 = 0.4;
    }

    else
    {
      v13 = 0.45;
    }

    v14 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v14, v15, v13, v10, v12);
  }

  return v8;
}

- (UIColor)bezelDepthLimitLabelColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelDepthLimitLabelColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthLimitLabel_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelDepthLimitLabel(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend__whiteColor(self, v9, v11);
    }
    v12 = ;
    if (self->_nightMode)
    {
      v13 = 0.6;
    }

    else
    {
      v13 = 0.45;
    }

    v14 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v14, v15, v13, v10, v12);
  }

  return v8;
}

- (UIColor)bezelDepthDecorationColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelDepthDecorationColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthDecoration_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelDepthDecoration(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    if (self->_nightMode)
    {
      v13 = 0.4;
    }

    else
    {
      v13 = 0.3;
    }

    v14 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v14, v15, v13, v10, v12);
  }

  return v8;
}

- (UIColor)bezelHarmoniaUnitLabelColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelHarmoniaUnitLabelColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaUnitLabel_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelHarmoniaUnitLabel(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend__whiteColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 0.4, v10, v12);
  }

  return v8;
}

- (UIColor)bezelHarmoniaEmphasizedTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelHarmoniaEmphasizedTickColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaEmphasizedTick_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelHarmoniaEmphasizedTick(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelHarmoniaOvernightTypicalColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelHarmoniaOvernightTypicalColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaOvernightTypical_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelHarmoniaOvernightTypical(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelHarmoniaOvernightPartiallyOutOfRangeColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelHarmoniaOvernightPartiallyOutOfRangeColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaOvernightPartiallyOutOfRange_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelHarmoniaOvernightPartiallyOutOfRange(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend__whiteColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelHarmoniaOvernightOutOfRangeColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelHarmoniaOvernightOutOfRangeColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaOvernightOutOfRange_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelHarmoniaOvernightOutOfRange(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend__whiteColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelHarmoniaTrainingWellBelowColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelHarmoniaTrainingWellBelowColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaTrainingWellBelow_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelHarmoniaTrainingWellBelow(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend__whiteColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelHarmoniaTrainingBelowColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelHarmoniaTrainingBelowColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaTrainingBelow_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelHarmoniaTrainingBelow(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend__whiteColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelHarmoniaTrainingNearColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelHarmoniaTrainingNearColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaTrainingNear_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelHarmoniaTrainingNear(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelHarmoniaTrainingAboveColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelHarmoniaTrainingAboveColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaTrainingAbove_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelHarmoniaTrainingAbove(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend__whiteColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)bezelHarmoniaTrainingWellAboveColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bezelHarmoniaTrainingWellAboveColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaTrainingWellAbove_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_bezelHarmoniaTrainingWellAbove(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend__whiteColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)timeMinutesColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_timeMinutesColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_timeMinutes_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_timeMinutes(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend__whiteColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)timeSecondsColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_timeSecondsColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_timeSeconds_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_timeSeconds(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 0.6, v10, v12);
  }

  return v8;
}

- (UIColor)nightModeStatusBarColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_nightModeStatusBarColor(v4, v5, v6);
  }

  else
  {
    v9 = objc_msgSend_statusBar_night(self, v5, v6);
    v12 = objc_msgSend__redColor(self, v10, v11);
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v9, v12);
  }

  return v8;
}

- (UIColor)simpleTextComplicationColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_simpleTextComplicationColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_simpleTextComplication_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_simpleTextComplication(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend__whiteColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)primaryComplicationColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_primaryComplicationColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_primaryComplication_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_primaryComplication(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend__whiteColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (UIColor)secondaryComplicationColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_secondaryComplicationColor(v4, v5, v6);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_secondaryComplication_night(self, v5, v6);
    }

    else
    {
      objc_msgSend_secondaryComplication(self, v5, v6);
    }
    v10 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v9, v11);
    }

    else
    {
      objc_msgSend_primaryColor(self, v9, v11);
    }
    v12 = ;
    v13 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v13, v14, 1.0, v10, v12);
  }

  return v8;
}

- (id)isMulticolorF
{
  if (objc_msgSend_isMulticolor(self, a2, v2))
  {
    v3 = &unk_284EB71F0;
  }

  else
  {
    v3 = &unk_284EB7200;
  }

  return v3;
}

- (id)isNightModeF
{
  if (self->_nightMode)
  {
    return &unk_284EB71F0;
  }

  else
  {
    return &unk_284EB7200;
  }
}

- (NTKFoghornFaceColorPalette)nightModeColorPalette
{
  v3 = objc_msgSend_copy(self, a2, v2);
  v3[104] = 1;

  return v3;
}

@end