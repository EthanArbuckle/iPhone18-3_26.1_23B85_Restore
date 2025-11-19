@interface NTKGalleonFaceColorPalette
- (BOOL)_isBlack;
- (BOOL)_isFullColor;
- (BOOL)_isFullScreen;
- (id)_brightnessCappedPrimary;
- (id)_colorWithBrightnessCappedPrimaryFallback:(id)a3;
- (id)_colorWithPrimaryFallback:(id)a3;
- (id)_tritiatedBrightnessCappedPrimary;
- (id)_tritiatedPrimary;
- (id)backgroundColor;
- (id)compassChevronColor;
- (id)compassHourHandInlayColor;
- (id)compassHourHandStrokeColor;
- (id)compassMarkerColor;
- (id)copyWithZone:(_NSZone *)a3;
- (id)editingPaletteForEditMode:(int64_t)a3;
- (id)gpsRingBackgroundColor;
- (id)gpsRingDotColor;
- (id)gpsRingTextColor;
- (id)hasDropShadow;
- (id)headingLabelColor;
- (id)hourHandInlayColor;
- (id)hourHandStrokeColor;
- (id)identifier;
- (id)innerMajorTickColor;
- (id)innerMinorTickColor;
- (id)innerRingBackgroundColor;
- (id)isBlack;
- (id)isFullColor;
- (id)isFullScreen;
- (id)isLowPowerMode;
- (id)isNightMode;
- (id)outerCompassMajorTickColor;
- (id)outerCompassMedialTickColor;
- (id)outerCompassMinorTickColor;
- (id)outerDegreeLabelColor;
- (id)outerRingBackgroundColor;
- (id)outerTimeLabelColor;
- (id)outerTimeMajorTickColor;
- (id)outerTimeMedialTickColor;
- (id)outerTimeMinorTickColor;
- (id)primaryComplicationColor;
- (id)primaryCornerComplicationColor;
- (id)secondHandColor;
- (id)secondaryComplicationColor;
- (id)secondaryCornerComplicationColor;
- (id)signalStrengthColor;
- (id)simpleTextComplicationColor;
- (id)swatchImageForSize:(CGSize)a3;
- (id)timeHourHandInlayColor;
- (id)timeHourHandStrokeColor;
- (void)configurationDidChange:(id)a3;
- (void)setCompassMode:(unint64_t)a3;
- (void)setEditMode:(int64_t)a3;
- (void)setLowPowerMode:(BOOL)a3;
- (void)setNightMode:(BOOL)a3;
@end

@implementation NTKGalleonFaceColorPalette

- (id)copyWithZone:(_NSZone *)a3
{
  v30.receiver = self;
  v30.super_class = NTKGalleonFaceColorPalette;
  v4 = [(NTKFaceColorPalette *)&v30 copyWithZone:a3];
  v8 = objc_msgSend_compassMode(self, v5, v6, v7);
  objc_msgSend_setCompassMode_(v4, v9, v8, v10);
  v14 = objc_msgSend_nightMode(self, v11, v12, v13);
  objc_msgSend_setNightMode_(v4, v15, v14, v16);
  v20 = objc_msgSend_editMode(self, v17, v18, v19);
  objc_msgSend_setEditMode_(v4, v21, v20, v22);
  v26 = objc_msgSend_lowPowerMode(self, v23, v24, v25);
  objc_msgSend_setLowPowerMode_(v4, v27, v26, v28);
  return v4;
}

- (id)identifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    v4 = MEMORY[0x277CCACA8];
    v18.receiver = self;
    v18.super_class = NTKGalleonFaceColorPalette;
    v5 = [(NTKFaceColorPalette *)&v18 identifier];
    compassMode = self->_compassMode;
    nightMode = self->_nightMode;
    lowPowerMode = self->_lowPowerMode;
    v12 = objc_msgSend_editMode(self, v9, v10, v11);
    v15 = objc_msgSend_stringWithFormat_(v4, v13, @"%@-%lu-%lu-%lu-%lu", v14, v5, compassMode, nightMode, lowPowerMode, v12);
    v16 = self->_identifier;
    self->_identifier = v15;

    identifier = self->_identifier;
  }

  return identifier;
}

- (void)configurationDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKGalleonFaceColorPalette;
  [(NTKFaceColorPalette *)&v5 configurationDidChange:a3];
  identifier = self->_identifier;
  self->_identifier = 0;
}

- (void)setCompassMode:(unint64_t)a3
{
  if (self->_compassMode != a3)
  {
    self->_compassMode = a3;
    self->_identifier = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (void)setNightMode:(BOOL)a3
{
  if (self->_nightMode != a3)
  {
    self->_nightMode = a3;
    self->_identifier = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (void)setEditMode:(int64_t)a3
{
  if (self->_editMode != a3)
  {
    self->_editMode = a3;
    self->_identifier = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (void)setLowPowerMode:(BOOL)a3
{
  if (self->_lowPowerMode != a3)
  {
    self->_lowPowerMode = a3;
    self->_identifier = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (id)_tritiatedPrimary
{
  if (objc_msgSend_lowPowerMode(self, a2, v2, v3))
  {
    v8 = objc_msgSend_primaryColor(self, v5, v6, v7);
  }

  else
  {
    isTritium = objc_msgSend_isTritium(self, v5, v6, v7);
    v13 = objc_msgSend_primaryColor(self, v10, v11, v12);
    v8 = v13;
    if (isTritium)
    {
      v17 = objc_msgSend_colorWithAlphaComponent_(v13, v14, v15, v16, 0.7);

      v8 = v17;
    }
  }

  return v8;
}

- (id)_tritiatedBrightnessCappedPrimary
{
  if (objc_msgSend_lowPowerMode(self, a2, v2, v3) || (objc_msgSend_isTritium(self, v5, v6, v7) & 1) == 0)
  {
    v12 = objc_msgSend__brightnessCappedPrimary(self, v5, v6, v7);
  }

  else
  {
    v8 = objc_msgSend_primaryColor(self, v5, v6, v7);
    v12 = objc_msgSend_colorWithAlphaComponent_(v8, v9, v10, v11, 0.7);
  }

  return v12;
}

- (id)_colorWithPrimaryFallback:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4 || *MEMORY[0x277D2BF30] == v4)
  {
    v9 = objc_msgSend__tritiatedPrimary(self, v5, v6, v7);
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;

  return v10;
}

- (id)_colorWithBrightnessCappedPrimaryFallback:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4 || *MEMORY[0x277D2BF30] == v4)
  {
    v9 = objc_msgSend__tritiatedBrightnessCappedPrimary(self, v5, v6, v7);
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;

  return v10;
}

- (id)backgroundColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    objc_msgSend_background_night(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_background(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)innerRingBackgroundColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    objc_msgSend_innerRingBackground_night(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_innerRingBackground(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)innerMajorTickColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    objc_msgSend_innerMajorTick_night(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_innerMajorTick(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)innerMinorTickColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    objc_msgSend_innerMinorTick_night(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_innerMinorTick(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)gpsRingBackgroundColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    objc_msgSend_gpsRingBackground_night(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend__tritiatedPrimary(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)gpsRingTextColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    objc_msgSend_gpsRingText_night(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_gpsRingText(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)gpsRingDotColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    objc_msgSend_gpsRingDot_night(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_gpsRingDot(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)outerRingBackgroundColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    objc_msgSend_outerRingBackground_night(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_outerRingBackground(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)outerCompassMajorTickColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    v8 = objc_msgSend_outerCompassMajorTick_night(self, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_outerCompassMajorTick(self, v5, v6, v7);
    v8 = objc_msgSend__colorWithBrightnessCappedPrimaryFallback_(self, v10, v9, v11);
  }

  return v8;
}

- (id)outerCompassMedialTickColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    v8 = objc_msgSend_outerCompassMedialTick_night(self, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_outerCompassMedialTick(self, v5, v6, v7);
    v8 = objc_msgSend__colorWithBrightnessCappedPrimaryFallback_(self, v10, v9, v11);
  }

  return v8;
}

- (id)outerCompassMinorTickColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    v8 = objc_msgSend_outerCompassMinorTick_night(self, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_outerCompassMinorTick(self, v5, v6, v7);
    v8 = objc_msgSend__colorWithBrightnessCappedPrimaryFallback_(self, v10, v9, v11);
  }

  return v8;
}

- (id)outerTimeMajorTickColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    v8 = objc_msgSend_outerTimeMajorTick_night(self, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_outerTimeMajorTick(self, v5, v6, v7);
    v8 = objc_msgSend__colorWithBrightnessCappedPrimaryFallback_(self, v10, v9, v11);
  }

  return v8;
}

- (id)outerTimeMedialTickColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    v8 = objc_msgSend_outerTimeMedialTick_night(self, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_outerTimeMedialTick(self, v5, v6, v7);
    v8 = objc_msgSend__colorWithBrightnessCappedPrimaryFallback_(self, v10, v9, v11);
  }

  return v8;
}

- (id)outerTimeMinorTickColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    v8 = objc_msgSend_outerTimeMinorTick_night(self, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_outerTimeMinorTick(self, v5, v6, v7);
    v8 = objc_msgSend__colorWithBrightnessCappedPrimaryFallback_(self, v10, v9, v11);
  }

  return v8;
}

- (id)outerTimeLabelColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    objc_msgSend_outerTimeLabel_night(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_outerTimeLabel(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)outerDegreeLabelColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    objc_msgSend_outerDegreeLabel_night(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_outerDegreeLabel(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)compassChevronColor
{
  if (objc_msgSend_lowPowerMode(self, a2, v2, v3) && !self->_nightMode)
  {
    v11 = objc_msgSend_gpsRingBackgroundColor(self, v5, v6, v7);
  }

  else
  {
    if ((objc_msgSend_nightMode(self, v5, v6, v7) & 1) == 0)
    {
      v12 = objc_msgSend_compassChevron(self, v8, v9, v10);
      v15 = objc_msgSend__colorWithBrightnessCappedPrimaryFallback_(self, v13, v12, v14);

      goto LABEL_8;
    }

    v11 = objc_msgSend_compassChevron_night(self, v8, v9, v10);
  }

  v15 = v11;
LABEL_8:

  return v15;
}

- (id)compassMarkerColor
{
  if (objc_msgSend_compassMode(self, a2, v2, v3))
  {
    if (objc_msgSend_lowPowerMode(self, v5, v6, v7) && !self->_nightMode)
    {
      v14 = objc_msgSend_gpsRingBackgroundColor(self, v8, v9, v10);
    }

    else
    {
      if ((objc_msgSend_nightMode(self, v8, v9, v10) & 1) == 0)
      {
        v15 = objc_msgSend_compassMarker(self, v11, v12, v13);
        v18 = objc_msgSend__colorWithBrightnessCappedPrimaryFallback_(self, v16, v15, v17);

        goto LABEL_10;
      }

      v14 = objc_msgSend_compassMarker_night(self, v11, v12, v13);
    }
  }

  else
  {
    v14 = objc_msgSend_clearColor(MEMORY[0x277D75348], v5, v6, v7);
  }

  v18 = v14;
LABEL_10:

  return v18;
}

- (id)hourHandStrokeColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    objc_msgSend_hourHandStroke_night(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_hourHandStroke(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)hourHandInlayColor
{
  if (objc_msgSend_compassMode(self, a2, v2, v3))
  {
    objc_msgSend_compassHourHandInlayColor(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_timeHourHandInlayColor(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)compassHourHandStrokeColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    objc_msgSend_hourHandStroke_night(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_hourHandStroke(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)timeHourHandStrokeColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    objc_msgSend_hourHandStroke_night(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_hourHandStroke(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)compassHourHandInlayColor
{
  v5 = objc_msgSend_hourHandInlay_compass(self, a2, v2, v3);
  if (objc_msgSend_nightMode(self, v6, v7, v8))
  {
    v12 = objc_msgSend_hourHandInlay_night(self, v9, v10, v11);
  }

  else
  {
    v12 = v5;
  }

  v13 = v12;

  return v13;
}

- (id)timeHourHandInlayColor
{
  v5 = objc_msgSend__tritiatedBrightnessCappedPrimary(self, a2, v2, v3);
  if (objc_msgSend_nightMode(self, v6, v7, v8))
  {
    v12 = objc_msgSend_hourHandInlay_night(self, v9, v10, v11);
  }

  else
  {
    v12 = v5;
  }

  v13 = v12;

  return v13;
}

- (id)secondHandColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    objc_msgSend_secondHand_night(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_secondHand(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)simpleTextComplicationColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    objc_msgSend_simpleTextComplication_night(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_simpleTextComplication(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)primaryComplicationColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    v8 = objc_msgSend_primaryComplication_night(self, v5, v6, v7);
    goto LABEL_10;
  }

  v9 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v5, v6, v7);
  if (objc_msgSend_lowPowerMode(self, v10, v11, v12))
  {
    v16 = v9;
  }

  else
  {
    if ((objc_msgSend_isTritium(self, v13, v14, v15) & 1) == 0)
    {
      v20 = objc_msgSend_primaryComplication(self, v17, v18, v19);
      v8 = objc_msgSend__colorWithPrimaryFallback_(self, v21, v20, v22);

      goto LABEL_9;
    }

    v16 = objc_msgSend_colorWithAlphaComponent_(v9, v17, v18, v19, 0.7);
  }

  v8 = v16;
LABEL_9:

LABEL_10:

  return v8;
}

- (id)secondaryComplicationColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    v8 = objc_msgSend_secondaryComplication_night(self, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_secondaryComplication(self, v5, v6, v7);
    v8 = objc_msgSend__colorWithPrimaryFallback_(self, v10, v9, v11);
  }

  return v8;
}

- (id)primaryCornerComplicationColor
{
  if (objc_msgSend__isFullColor(self, a2, v2, v3))
  {
    v11 = objc_msgSend_primaryComplication_corner(self, v5, v6, v7);
  }

  else
  {
    v12 = objc_msgSend_secondaryComplication_corner(self, v5, v6, v7);
    v11 = objc_msgSend__colorWithPrimaryFallback_(self, v13, v12, v14);
  }

  if (objc_msgSend_nightMode(self, v8, v9, v10))
  {
    v18 = objc_msgSend_primaryComplication_night(self, v15, v16, v17);
  }

  else
  {
    v18 = v11;
  }

  v19 = v18;

  return v19;
}

- (id)secondaryCornerComplicationColor
{
  if (self->_editMode == 1 && objc_msgSend__isFullScreen(self, a2, v2, v3))
  {
    v5 = objc_msgSend_primaryComplicationColor(self, a2, v2, v3);
  }

  else if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    v5 = objc_msgSend_secondaryComplication_night(self, v6, v7, v8);
  }

  else
  {
    if (objc_msgSend__isFullColor(self, v6, v7, v8))
    {
      v12 = objc_msgSend_secondaryComplication_corner(self, v9, v10, v11);
      v15 = objc_msgSend__colorWithPrimaryFallback_(self, v13, v12, v14);

      goto LABEL_10;
    }

    v5 = objc_msgSend_primaryComplication_corner(self, v9, v10, v11);
  }

  v15 = v5;
LABEL_10:

  return v15;
}

- (id)signalStrengthColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    v8 = objc_msgSend_signalStrength_night(self, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_signalStrength(self, v5, v6, v7);
    v8 = objc_msgSend__colorWithPrimaryFallback_(self, v10, v9, v11);
  }

  return v8;
}

- (id)headingLabelColor
{
  if (objc_msgSend_nightMode(self, a2, v2, v3))
  {
    v8 = objc_msgSend_headingLabel_night(self, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_headingLabel(self, v5, v6, v7);
    v8 = objc_msgSend__colorWithPrimaryFallback_(self, v10, v9, v11);
  }

  return v8;
}

- (id)_brightnessCappedPrimary
{
  v4 = objc_msgSend_primaryColor(self, a2, v2, v3);
  v11 = 0.0;
  objc_msgSend_getHue_saturation_brightness_alpha_(v4, v5, 0, 0, &v11, 0);
  if (v11 > 0.8)
  {
    v9 = objc_msgSend_ntk_colorWithSaturationDelta_brightnessDelta_(v4, v6, v7, v8, 0.0, -0.2);

    v4 = v9;
  }

  return v4;
}

- (BOOL)_isFullColor
{
  if (self->_nightMode)
  {
    return 0;
  }

  v5 = objc_msgSend_pigmentEditOption(self, a2, v2, v3);
  v9 = objc_msgSend_identifier(v5, v6, v7, v8);

  if (objc_msgSend_isEqualToString_(v9, v10, @"galleon.adventurer", v11) & 1) != 0 || (objc_msgSend_isEqualToString_(v9, v12, @"galleon.ocean", v13) & 1) != 0 || (objc_msgSend_isEqualToString_(v9, v14, @"galleon.performance", v15) & 1) != 0 || (objc_msgSend_isEqualToString_(v9, v16, @"galleon.adventurer-black", v17) & 1) != 0 || (objc_msgSend_isEqualToString_(v9, v18, @"galleon.ocean-black", v19))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v9, v20, @"galleon.performance-black", v21);
  }

  return isEqualToString;
}

- (id)editingPaletteForEditMode:(int64_t)a3
{
  v5 = objc_msgSend_copy(self, a2, a3, v3);
  v5[14] = a3;

  return v5;
}

- (id)isFullColor
{
  if (objc_msgSend__isFullColor(self, a2, v2, v3))
  {
    v4 = &unk_284EA8278;
  }

  else
  {
    v4 = &unk_284EA8288;
  }

  return v4;
}

- (BOOL)_isFullScreen
{
  v4 = objc_msgSend_pigmentEditOption(self, a2, v2, v3);
  v8 = objc_msgSend_identifier(v4, v5, v6, v7);

  LOBYTE(v4) = NTKGalleonFaceColorIsFullscreenColor(v8);
  return v4;
}

- (id)isFullScreen
{
  if (objc_msgSend__isFullScreen(self, a2, v2, v3))
  {
    v4 = &unk_284EA8278;
  }

  else
  {
    v4 = &unk_284EA8288;
  }

  return v4;
}

- (id)isNightMode
{
  if (self->_nightMode)
  {
    return &unk_284EA8278;
  }

  else
  {
    return &unk_284EA8288;
  }
}

- (id)isLowPowerMode
{
  if (self->_lowPowerMode)
  {
    return &unk_284EA8278;
  }

  else
  {
    return &unk_284EA8288;
  }
}

- (id)isBlack
{
  if (objc_msgSend__isBlack(self, a2, v2, v3))
  {
    v4 = &unk_284EA8278;
  }

  else
  {
    v4 = &unk_284EA8288;
  }

  return v4;
}

- (BOOL)_isBlack
{
  v4 = objc_msgSend_pigmentEditOption(self, a2, v2, v3);
  v8 = objc_msgSend_identifier(v4, v5, v6, v7);

  if (objc_msgSend_isEqualToString_(v8, v9, @"galleon.adventurer-black", v10) & 1) != 0 || (objc_msgSend_isEqualToString_(v8, v11, @"galleon.ocean-black", v12))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v8, v13, @"galleon.performance-black", v14);
  }

  return isEqualToString;
}

- (id)swatchImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  isFullScreen = objc_msgSend__isFullScreen(self, a2, v3, v4);
  isBlack = objc_msgSend__isBlack(self, v9, v10, v11);
  if ((isFullScreen & 1) != 0 || isBlack)
  {
    if (qword_27E1DD8C8 != -1)
    {
      sub_23BEA4268();
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = objc_msgSend_configuration(self, v13, v14, v15);
    v22 = objc_msgSend_uniqueId(v18, v19, v20, v21);
    v41.width = width;
    v41.height = height;
    v23 = NSStringFromCGSize(v41);
    v26 = objc_msgSend_stringWithFormat_(v17, v24, @"%@-%@", v25, v22, v23);

    v16 = objc_msgSend_objectForKey_(qword_27E1DD8C0, v27, v26, v28);
    if (!v16)
    {
      v35 = objc_msgSend_primaryColor(self, v29, v30, v31);
      if (isFullScreen)
      {
        objc_msgSend_whiteColor(MEMORY[0x277D75348], v32, v33, v34);
      }

      else
      {
        objc_msgSend_softBlack(self, v32, v33, v34);
      }
      v36 = ;
      v16 = NTKSwatchTwoColorImage();
      objc_msgSend_setObject_forKey_(qword_27E1DD8C0, v37, v16, v26);
    }
  }

  else
  {
    v39.receiver = self;
    v39.super_class = NTKGalleonFaceColorPalette;
    v16 = [(NTKFaceColorPalette *)&v39 swatchImageForSize:width, height];
  }

  return v16;
}

- (id)hasDropShadow
{
  v5 = objc_msgSend_pigmentEditOption(self, a2, v2, v3);
  v9 = objc_msgSend_identifier(v5, v6, v7, v8);

  if ((objc_msgSend_isEqualToString_(v9, v10, @"galleon.adventurer-fs", v11) & 1) != 0 || objc_msgSend_isEqualToString_(v9, v12, @"galleon.ocean-fs", v13))
  {
    v14 = MEMORY[0x277CCABB0];
LABEL_4:
    LOBYTE(isEqualToString) = !self->_nightMode;
    goto LABEL_5;
  }

  isEqualToString = objc_msgSend_isEqualToString_(v9, v12, @"galleon.performance-fs", v13);
  v14 = MEMORY[0x277CCABB0];
  if (isEqualToString)
  {
    goto LABEL_4;
  }

LABEL_5:
  v16 = objc_msgSend_numberWithBool_(v14, v12, isEqualToString & 1, v13);

  return v16;
}

@end