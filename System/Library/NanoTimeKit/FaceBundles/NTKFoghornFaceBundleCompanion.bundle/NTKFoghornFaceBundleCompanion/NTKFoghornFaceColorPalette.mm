@interface NTKFoghornFaceColorPalette
+ (id)_canonicalMonochromePaletteNameForBezelStyle:(int64_t)style;
+ (id)_colorFromColor:(id)color alpha:(double)alpha;
+ (id)_colorFromColorSetColor:(id)color fallbackRootColor:(id)rootColor alpha:(double)alpha;
- (BOOL)isEqual:(id)equal;
- (NTKFoghornFaceColorPalette)nightModeColorPalette;
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
- (id)_canonicalMonochromePaletteForBezelStyle:(int64_t)style;
- (id)_proxyPalette;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (id)isMulticolorF;
- (id)isNightModeF;
- (void)configurationDidChange:(id)change;
- (void)setBezelStyle:(int64_t)style;
@end

@implementation NTKFoghornFaceColorPalette

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NTKFoghornFaceColorPalette;
    if ([(NTKFaceColorPalette *)&v15 isEqual:equalCopy])
    {
      v5 = equalCopy;
      isMulticolor = objc_msgSend_isMulticolor(self, v6, v7, v8);
      v13 = isMulticolor == objc_msgSend_isMulticolor(v5, v10, v11, v12) && (!isMulticolor || v5->_bezelStyle == self->_bezelStyle) && v5->_nightMode == self->_nightMode;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = NTKFoghornFaceColorPalette;
  result = [(NTKFaceColorPalette *)&v5 copyWithZone:zone];
  *(result + 14) = self->_bezelStyle;
  *(result + 104) = self->_nightMode;
  return result;
}

- (id)identifier
{
  cachedIdentifier = self->_cachedIdentifier;
  if (!cachedIdentifier)
  {
    if (objc_msgSend_isMulticolor(self, a2, v2, v3))
    {
      v6 = NTKFoghornFaceBezelStyleString(self->_bezelStyle);
    }

    else
    {
      v6 = @"monochrome";
    }

    v7 = MEMORY[0x277CCACA8];
    v14.receiver = self;
    v14.super_class = NTKFoghornFaceColorPalette;
    identifier = [(NTKFaceColorPalette *)&v14 identifier];
    v11 = objc_msgSend_stringWithFormat_(v7, v9, @"%@-%@-%u", v10, identifier, v6, self->_nightMode);
    v12 = self->_cachedIdentifier;
    self->_cachedIdentifier = v11;

    cachedIdentifier = self->_cachedIdentifier;
  }

  return cachedIdentifier;
}

- (void)configurationDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = NTKFoghornFaceColorPalette;
  [(NTKFaceColorPalette *)&v5 configurationDidChange:change];
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
}

+ (id)_colorFromColor:(id)color alpha:(double)alpha
{
  colorCopy = color;
  v6 = colorCopy;
  if (alpha >= 0.0 && alpha < 1.0)
  {
    v8 = NTKColorByPremultiplyingAlpha();
  }

  else
  {
    v8 = colorCopy;
  }

  v9 = v8;

  return v9;
}

+ (id)_colorFromColorSetColor:(id)color fallbackRootColor:(id)rootColor alpha:(double)alpha
{
  colorCopy = color;
  v11 = colorCopy;
  if (!colorCopy || *MEMORY[0x277D2BF30] == colorCopy)
  {
    v12 = objc_msgSend__colorFromColor_alpha_(self, v9, rootColor, v10, alpha);
  }

  else
  {
    v12 = colorCopy;
  }

  v13 = v12;

  return v13;
}

+ (id)_canonicalMonochromePaletteNameForBezelStyle:(int64_t)style
{
  if (style > 4)
  {
    return @"foghorn";
  }

  else
  {
    return off_278B9C820[style];
  }
}

- (id)_canonicalMonochromePaletteForBezelStyle:(int64_t)style
{
  v5 = objc_opt_class();
  v8 = objc_msgSend__canonicalMonochromePaletteNameForBezelStyle_(v5, v6, style, v7);
  v11 = objc_msgSend_pigmentNamed_(MEMORY[0x277D2C0B0], v9, v8, v10);
  v14 = objc_msgSend_copyWithOption_(self, v12, v11, v13);
  v14[14] = style;

  return v14;
}

- (id)_proxyPalette
{
  if (objc_msgSend_isMulticolor(self, a2, v2, v3))
  {
    monochromeProxyPalette = self->_monochromeProxyPalette;
    if (!monochromeProxyPalette)
    {
      v8 = objc_msgSend__canonicalMonochromePaletteForBezelStyle_(self, v5, self->_bezelStyle, v6);
      v9 = self->_monochromeProxyPalette;
      self->_monochromeProxyPalette = v8;

      monochromeProxyPalette = self->_monochromeProxyPalette;
    }

    v10 = monochromeProxyPalette;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setBezelStyle:(int64_t)style
{
  if (self->_bezelStyle != style)
  {
    self->_bezelStyle = style;
    monochromeProxyPalette = self->_monochromeProxyPalette;
    self->_monochromeProxyPalette = 0;

    cachedIdentifier = self->_cachedIdentifier;
    self->_cachedIdentifier = 0;
  }
}

- (UIColor)primaryColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    primaryColor = objc_msgSend_primaryColor(v5, v6, v7, v8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NTKFoghornFaceColorPalette;
    primaryColor = [(NTKFoghornFaceColorPalette *)&v13 primaryColor];
  }

  v11 = primaryColor;

  return v11;
}

- (UIColor)bezelMajorTickColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelMajorTickColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelMajorTick_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelMajorTick(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)bezelMedialTickColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelMedialTickColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelMedialTick_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelMedialTick(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)bezelMinorTickColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelMinorTickColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelMinorTick_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelMinorTick(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)bezelInactiveMajorTickColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelInactiveMajorTickColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelInactiveMajorTick_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelInactiveMajorTick(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 0.4);
  }

  return v10;
}

- (UIColor)bezelInactiveMedialTickColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelInactiveMedialTickColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelInactiveMedialTick_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelInactiveMedialTick(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 0.4);
  }

  return v10;
}

- (UIColor)bezelInactiveMinorTickColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelInactiveMinorTickColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelInactiveMinorTick_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelInactiveMinorTick(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 0.4);
  }

  return v10;
}

- (UIColor)bezelDepthMaxMajorTickColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelDepthMaxMajorTickColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthMaxMajorTick_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelDepthMaxMajorTick(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    if (self->_nightMode)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = 0.45;
    }

    v17 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, v14, v15, v16);
  }

  return v10;
}

- (UIColor)bezelDepthMaxMedialTickColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelDepthMaxMedialTickColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthMaxMedialTick_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelDepthMaxMedialTick(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    if (self->_nightMode)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = 0.45;
    }

    v17 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, v14, v15, v16);
  }

  return v10;
}

- (UIColor)bezelDepthMaxMinorTickColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelDepthMaxMinorTickColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthMaxMinorTick_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelDepthMaxMinorTick(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    if (self->_nightMode)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = 0.45;
    }

    v17 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, v14, v15, v16);
  }

  return v10;
}

- (UIColor)bezelDepthLimitMajorTickColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelDepthLimitMajorTickColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthLimitMajorTick_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelDepthLimitMajorTick(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend__whiteColor(self, v11, v12, v13);
    }
    v15 = ;
    if (self->_nightMode)
    {
      v16 = 0.4;
    }

    else
    {
      v16 = 0.45;
    }

    v17 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, v14, v15, v16);
  }

  return v10;
}

- (UIColor)bezelDepthLimitMedialTickColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelDepthLimitMedialTickColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthLimitMedialTick_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelDepthLimitMedialTick(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend__whiteColor(self, v11, v12, v13);
    }
    v15 = ;
    if (self->_nightMode)
    {
      v16 = 0.4;
    }

    else
    {
      v16 = 0.45;
    }

    v17 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, v14, v15, v16);
  }

  return v10;
}

- (UIColor)bezelDepthLimitMinorTickColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelDepthLimitMinorTickColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthLimitMinorTick_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelDepthLimitMinorTick(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend__whiteColor(self, v11, v12, v13);
    }
    v15 = ;
    if (self->_nightMode)
    {
      v16 = 0.4;
    }

    else
    {
      v16 = 0.45;
    }

    v17 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, v14, v15, v16);
  }

  return v10;
}

- (UIColor)bezelDepthMarkerColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelDepthMarkerColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthMarker_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelDepthMarker(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)bezelDepthMaxMarkerColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelDepthMaxMarkerColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthMaxMarker_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelDepthMaxMarker(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    if (self->_nightMode)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = 0.45;
    }

    v17 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, v14, v15, v16);
  }

  return v10;
}

- (UIColor)bezelDepthLabelColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelDepthLabelColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthLabel_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelDepthLabel(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)bezelDepthMaxLabelColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelDepthMaxLabelColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthMaxLabel_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelDepthMaxLabel(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    if (self->_nightMode)
    {
      v16 = 0.4;
    }

    else
    {
      v16 = 0.45;
    }

    v17 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, v14, v15, v16);
  }

  return v10;
}

- (UIColor)bezelDepthLimitLabelColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelDepthLimitLabelColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthLimitLabel_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelDepthLimitLabel(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend__whiteColor(self, v11, v12, v13);
    }
    v15 = ;
    if (self->_nightMode)
    {
      v16 = 0.6;
    }

    else
    {
      v16 = 0.45;
    }

    v17 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, v14, v15, v16);
  }

  return v10;
}

- (UIColor)bezelDepthDecorationColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelDepthDecorationColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelDepthDecoration_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelDepthDecoration(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    if (self->_nightMode)
    {
      v16 = 0.4;
    }

    else
    {
      v16 = 0.3;
    }

    v17 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, v14, v15, v16);
  }

  return v10;
}

- (UIColor)bezelHarmoniaUnitLabelColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelHarmoniaUnitLabelColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaUnitLabel_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelHarmoniaUnitLabel(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend__whiteColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 0.4);
  }

  return v10;
}

- (UIColor)bezelHarmoniaEmphasizedTickColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelHarmoniaEmphasizedTickColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaEmphasizedTick_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelHarmoniaEmphasizedTick(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)bezelHarmoniaOvernightTypicalColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelHarmoniaOvernightTypicalColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaOvernightTypical_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelHarmoniaOvernightTypical(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)bezelHarmoniaOvernightPartiallyOutOfRangeColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelHarmoniaOvernightPartiallyOutOfRangeColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaOvernightPartiallyOutOfRange_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelHarmoniaOvernightPartiallyOutOfRange(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend__whiteColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)bezelHarmoniaOvernightOutOfRangeColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelHarmoniaOvernightOutOfRangeColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaOvernightOutOfRange_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelHarmoniaOvernightOutOfRange(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend__whiteColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)bezelHarmoniaTrainingWellBelowColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelHarmoniaTrainingWellBelowColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaTrainingWellBelow_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelHarmoniaTrainingWellBelow(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend__whiteColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)bezelHarmoniaTrainingBelowColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelHarmoniaTrainingBelowColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaTrainingBelow_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelHarmoniaTrainingBelow(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend__whiteColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)bezelHarmoniaTrainingNearColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelHarmoniaTrainingNearColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaTrainingNear_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelHarmoniaTrainingNear(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)bezelHarmoniaTrainingAboveColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelHarmoniaTrainingAboveColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaTrainingAbove_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelHarmoniaTrainingAbove(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend__whiteColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)bezelHarmoniaTrainingWellAboveColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_bezelHarmoniaTrainingWellAboveColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_bezelHarmoniaTrainingWellAbove_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_bezelHarmoniaTrainingWellAbove(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend__whiteColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)timeMinutesColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_timeMinutesColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_timeMinutes_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_timeMinutes(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend__whiteColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)timeSecondsColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_timeSecondsColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_timeSeconds_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_timeSeconds(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 0.6);
  }

  return v10;
}

- (UIColor)nightModeStatusBarColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_nightModeStatusBarColor(v5, v6, v7, v8);
  }

  else
  {
    v11 = objc_msgSend_statusBar_night(self, v6, v7, v8);
    v15 = objc_msgSend__redColor(self, v12, v13, v14);
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v11, v15, 1.0);
  }

  return v10;
}

- (UIColor)simpleTextComplicationColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_simpleTextComplicationColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_simpleTextComplication_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_simpleTextComplication(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend__whiteColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)primaryComplicationColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_primaryComplicationColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_primaryComplication_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_primaryComplication(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend__whiteColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (UIColor)secondaryComplicationColor
{
  v5 = objc_msgSend__proxyPalette(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_secondaryComplicationColor(v5, v6, v7, v8);
  }

  else
  {
    if (self->_nightMode)
    {
      objc_msgSend_secondaryComplication_night(self, v6, v7, v8);
    }

    else
    {
      objc_msgSend_secondaryComplication(self, v6, v7, v8);
    }
    v14 = ;
    if (self->_nightMode)
    {
      objc_msgSend__redColor(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend_primaryColor(self, v11, v12, v13);
    }
    v15 = ;
    v16 = objc_opt_class();
    v10 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v16, v17, v14, v15, 1.0);
  }

  return v10;
}

- (id)isMulticolorF
{
  if (objc_msgSend_isMulticolor(self, a2, v2, v3))
  {
    v4 = &unk_284EA1680;
  }

  else
  {
    v4 = &unk_284EA1690;
  }

  return v4;
}

- (id)isNightModeF
{
  if (self->_nightMode)
  {
    return &unk_284EA1680;
  }

  else
  {
    return &unk_284EA1690;
  }
}

- (NTKFoghornFaceColorPalette)nightModeColorPalette
{
  v4 = objc_msgSend_copy(self, a2, v2, v3);
  v4[104] = 1;

  return v4;
}

@end