@interface NTKLeghornFaceColorPalette
+ (id)_colorFromColorSetColor:(id)a3 fallbackBackgroundColor:(id)a4 backgroundMultiple:(double)a5 fallbackRootColor:(id)a6 rootMultiplier:(double)a7;
- (BOOL)_isDuo;
- (BOOL)_isFullScreen;
- (UIColor)buttonBackgroundColor;
- (UIColor)buttonSymbolColor;
- (UIColor)compassCardinalColor;
- (UIColor)compassMajorTickColor;
- (UIColor)compassMedialTickColor;
- (UIColor)compassMinorTickColor;
- (UIColor)compassNorthColor;
- (UIColor)compassOrientingArrowColor;
- (UIColor)hourHandInlayColor;
- (UIColor)hourHandStrokeColor;
- (UIColor)minuteHandInlayColor;
- (UIColor)minuteHandStrokeColor;
- (UIColor)pickerItemColor;
- (UIColor)pickerTitleColor;
- (UIColor)primaryBackgroundColor;
- (UIColor)quaternaryBackgroundColor;
- (UIColor)radiusLabelColor;
- (UIColor)secondaryBackgroundColor;
- (UIColor)secondaryColor;
- (UIColor)secondsCompassRingColor;
- (UIColor)secondsInactiveMajorTickColor;
- (UIColor)secondsInactiveMinorTickColor;
- (UIColor)secondsMajorTickColor;
- (UIColor)secondsMinorTickColor;
- (UIColor)tertiaryBackgroundColor;
- (UIColor)waypointActiveConeColor;
- (UIColor)waypointAheadColor;
- (UIColor)waypointColor;
- (UIColor)waypointInactiveConeColor;
- (UIColor)waypointLabelPrimaryColor;
- (UIColor)waypointLabelSecondaryColor;
- (UIColor)waypointLabelTertiaryColor;
- (UIColor)waypointOutOfRangeColor;
- (UIColor)waypointRingColor;
- (UIColor)waypointTargetRingColor;
- (id)_canonicalMultiColorPalette;
- (id)_proxyPalette;
- (id)isFullScreen;
- (id)swatchImageForSize:(CGSize)a3;
@end

@implementation NTKLeghornFaceColorPalette

+ (id)_colorFromColorSetColor:(id)a3 fallbackBackgroundColor:(id)a4 backgroundMultiple:(double)a5 fallbackRootColor:(id)a6 rootMultiplier:(double)a7
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (!v9 || *MEMORY[0x277D2BF30] == v9)
  {
    v12 = NTKColorByPremultiplyingAlpha();
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;

  return v13;
}

- (id)_canonicalMultiColorPalette
{
  v4 = objc_msgSend_pigmentNamed_(MEMORY[0x277D2C0B0], a2, v2, @"leghorn.multicolor-default");
  v7 = objc_msgSend_copyWithOption_(self, v5, v6, v4);

  return v7;
}

- (id)_proxyPalette
{
  if (objc_msgSend_isMulticolor(self, a2, v2))
  {
    monochromeProxyPalette = self->_monochromeProxyPalette;
    if (!monochromeProxyPalette)
    {
      v7 = objc_msgSend__canonicalMultiColorPalette(self, v4, v5);
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

- (UIColor)secondaryColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_secondaryColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_secondary_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_secondary(self, v9, v10);
    }
    v11 = ;
    v14 = objc_msgSend_primaryColor(self, v12, v13);
    v15 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v15, v16, 1.0, v11, v14);
  }

  return v8;
}

- (UIColor)primaryBackgroundColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_primaryBackgroundColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_primaryBackground_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_primaryBackground(self, v9, v10);
    }
    v11 = ;
    if (objc_msgSend_isNightMode(self, v12, v13))
    {
      objc_msgSend_clearColor(MEMORY[0x277D75348], v14, v15);
    }

    else
    {
      objc_msgSend_primaryColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 0.2, v11, v16);
  }

  return v8;
}

- (UIColor)secondaryBackgroundColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_secondaryBackgroundColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_secondaryBackground_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_secondaryBackground(self, v9, v10);
    }
    v11 = ;
    if (objc_msgSend_isNightMode(self, v12, v13))
    {
      objc_msgSend_primaryBackground_night(self, v14, v15);
    }

    else
    {
      objc_msgSend_primaryBackground(self, v14, v15);
    }
    v16 = ;
    if (objc_msgSend_isNightMode(self, v17, v18))
    {
      objc_msgSend_clearColor(MEMORY[0x277D75348], v19, v20);
    }

    else
    {
      objc_msgSend_primaryColor(self, v19, v20);
    }
    v21 = ;
    v22 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackBackgroundColor_backgroundMultiple_fallbackRootColor_rootMultiplier_(v22, v23, 1.5, v11, v16, v21, 0.3);
  }

  return v8;
}

- (UIColor)tertiaryBackgroundColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_tertiaryBackgroundColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_tertiaryBackground_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_tertiaryBackground(self, v9, v10);
    }
    v11 = ;
    if (objc_msgSend_isNightMode(self, v12, v13))
    {
      objc_msgSend_primaryBackground_night(self, v14, v15);
    }

    else
    {
      objc_msgSend_primaryBackground(self, v14, v15);
    }
    v16 = ;
    if (objc_msgSend_isNightMode(self, v17, v18))
    {
      objc_msgSend_clearColor(MEMORY[0x277D75348], v19, v20);
    }

    else
    {
      objc_msgSend_primaryColor(self, v19, v20);
    }
    v21 = ;
    v22 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackBackgroundColor_backgroundMultiple_fallbackRootColor_rootMultiplier_(v22, v23, 0.6, v11, v16, v21, 0.12);
  }

  return v8;
}

- (UIColor)quaternaryBackgroundColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_quaternaryBackgroundColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_quaternaryBackground_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_quaternaryBackground(self, v9, v10);
    }
    v11 = ;
    if (objc_msgSend_isNightMode(self, v12, v13))
    {
      objc_msgSend_primaryBackground_night(self, v14, v15);
    }

    else
    {
      objc_msgSend_primaryBackground(self, v14, v15);
    }
    v16 = ;
    v19 = objc_msgSend_clearColor(MEMORY[0x277D75348], v17, v18);
    v20 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackBackgroundColor_backgroundMultiple_fallbackRootColor_rootMultiplier_(v20, v21, 0.0, v11, v16, v19, 0.0);
  }

  return v8;
}

- (UIColor)compassMajorTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_compassMajorTickColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_compassMajorTick_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_compassMajorTick(self, v9, v10);
    }
    v11 = ;
    if (objc_msgSend_isNightMode(self, v12, v13))
    {
      objc_msgSend__redColor(self, v14, v15);
    }

    else
    {
      objc_msgSend_secondaryColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 1.0, v11, v16);
  }

  return v8;
}

- (UIColor)compassMedialTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_compassMedialTickColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_compassMedialTick_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_compassMedialTick(self, v9, v10);
    }
    v11 = ;
    v14 = objc_msgSend_compassMajorTickColor(self, v12, v13);
    v15 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v15, v16, 1.0, v11, v14);
  }

  return v8;
}

- (UIColor)compassMinorTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_compassMinorTickColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_compassMinorTick_night(self, v9, v10);
      objc_msgSend__redColor(self, v12, v13);
    }

    else
    {
      v11 = objc_msgSend_compassMinorTick(self, v9, v10);
      objc_msgSend__whiteColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 0.5, v11, v16);
  }

  return v8;
}

- (UIColor)compassOrientingArrowColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_compassOrientingArrowColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_compassOrientingArrow_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_compassOrientingArrow(self, v9, v10);
    }
    v11 = ;
    v14 = objc_msgSend_compassMajorTickColor(self, v12, v13);
    v15 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v15, v16, 1.0, v11, v14);
  }

  return v8;
}

- (UIColor)compassNorthColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_compassNorthColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_compassNorth_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_compassNorth(self, v9, v10);
    }
    v11 = ;
    v14 = objc_msgSend_compassMajorTickColor(self, v12, v13);
    v15 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v15, v16, 1.0, v11, v14);
  }

  return v8;
}

- (UIColor)compassCardinalColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_compassCardinalColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_compassCardinal_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_compassCardinal(self, v9, v10);
    }
    v11 = ;
    v14 = objc_msgSend_compassMajorTickColor(self, v12, v13);
    v15 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v15, v16, 1.0, v11, v14);
  }

  return v8;
}

- (UIColor)waypointColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_waypointColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_waypoint_night(self, v9, v10);
      objc_msgSend__redColor(self, v12, v13);
    }

    else
    {
      v11 = objc_msgSend_waypoint(self, v9, v10);
      objc_msgSend_primaryColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 1.0, v11, v16);
  }

  return v8;
}

- (UIColor)waypointAheadColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_waypointAheadColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_waypointAhead_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_waypointAhead(self, v9, v10);
    }
    v11 = ;
    v14 = objc_msgSend_waypointActiveConeColor(self, v12, v13);
    v15 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v15, v16, 1.0, v11, v14);
  }

  return v8;
}

- (UIColor)waypointRingColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_waypointRingColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_waypointRing_night(self, v9, v10);
      objc_msgSend__redColor(self, v12, v13);
    }

    else
    {
      v11 = objc_msgSend_waypointRing(self, v9, v10);
      objc_msgSend_primaryColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 0.6, v11, v16);
  }

  return v8;
}

- (UIColor)waypointTargetRingColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_waypointTargetRingColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_waypointTargetRing_night(self, v9, v10);
      objc_msgSend__redColor(self, v12, v13);
    }

    else
    {
      v11 = objc_msgSend_waypointTargetRing(self, v9, v10);
      objc_msgSend_secondaryColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 0.8, v11, v16);
  }

  return v8;
}

- (UIColor)secondsCompassRingColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_secondsCompassRingColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_secondsCompassRing_night(self, v9, v10);
      objc_msgSend__redColor(self, v12, v13);
    }

    else
    {
      v11 = objc_msgSend_secondsCompassRing(self, v9, v10);
      objc_msgSend_secondaryColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 0.4, v11, v16);
  }

  return v8;
}

- (UIColor)waypointActiveConeColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_waypointActiveConeColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_waypointActiveCone_night(self, v9, v10);
      objc_msgSend__redColor(self, v12, v13);
    }

    else
    {
      v11 = objc_msgSend_waypointActiveCone(self, v9, v10);
      objc_msgSend_secondaryColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 1.0, v11, v16);
  }

  return v8;
}

- (UIColor)waypointInactiveConeColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_waypointInactiveConeColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_waypointInactiveCone_night(self, v9, v10);
      objc_msgSend__redColor(self, v12, v13);
    }

    else
    {
      v11 = objc_msgSend_waypointInactiveCone(self, v9, v10);
      objc_msgSend_secondaryColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 0.6, v11, v16);
  }

  return v8;
}

- (UIColor)waypointOutOfRangeColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_waypointOutOfRangeColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_waypointOutOfRange_night(self, v9, v10);
      objc_msgSend__redColor(self, v12, v13);
    }

    else
    {
      v11 = objc_msgSend_waypointOutOfRange(self, v9, v10);
      objc_msgSend__whiteColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 0.2, v11, v16);
  }

  return v8;
}

- (UIColor)secondsMajorTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_secondsMajorTickColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_secondsMajorTick_night(self, v9, v10);
      objc_msgSend__redColor(self, v12, v13);
    }

    else
    {
      v11 = objc_msgSend_secondsMajorTick(self, v9, v10);
      objc_msgSend_primaryColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 1.0, v11, v16);
  }

  return v8;
}

- (UIColor)secondsMinorTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_secondsMinorTickColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_secondsMinorTick_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_secondsMinorTick(self, v9, v10);
    }
    v11 = ;
    v14 = objc_msgSend_secondsMajorTickColor(self, v12, v13);
    v15 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v15, v16, 1.0, v11, v14);
  }

  return v8;
}

- (UIColor)secondsInactiveMajorTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_secondsInactiveMajorTickColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_secondsInactiveMajorTick_night(self, v9, v10);
      objc_msgSend__redColor(self, v12, v13);
    }

    else
    {
      v11 = objc_msgSend_secondsInactiveMajorTick(self, v9, v10);
      objc_msgSend_primaryColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 0.5, v11, v16);
  }

  return v8;
}

- (UIColor)secondsInactiveMinorTickColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_secondsInactiveMinorTickColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_secondsInactiveMinorTick_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_secondsInactiveMinorTick(self, v9, v10);
    }
    v11 = ;
    v14 = objc_msgSend_secondsInactiveMajorTickColor(self, v12, v13);
    v15 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v15, v16, 1.0, v11, v14);
  }

  return v8;
}

- (UIColor)radiusLabelColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_radiusLabelColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_radiusLabel_night(self, v9, v10);
      objc_msgSend__redColor(self, v12, v13);
    }

    else
    {
      v11 = objc_msgSend_radiusLabel(self, v9, v10);
      objc_msgSend_primaryColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 0.7, v11, v16);
  }

  return v8;
}

- (UIColor)waypointLabelPrimaryColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_waypointLabelPrimaryColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_waypointLabelPrimary_night(self, v9, v10);
      objc_msgSend__redColor(self, v12, v13);
    }

    else
    {
      v11 = objc_msgSend_waypointLabelPrimary(self, v9, v10);
      objc_msgSend_primaryColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 1.0, v11, v16);
  }

  return v8;
}

- (UIColor)waypointLabelSecondaryColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_waypointLabelSecondaryColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_waypointLabelSecondary_night(self, v9, v10);
      objc_msgSend__redColor(self, v12, v13);
    }

    else
    {
      v11 = objc_msgSend_waypointLabelSecondary(self, v9, v10);
      objc_msgSend_secondaryColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 1.0, v11, v16);
  }

  return v8;
}

- (UIColor)waypointLabelTertiaryColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_waypointLabelTertiaryColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_waypointLabelTertiary_night(self, v9, v10);
      objc_msgSend__redColor(self, v12, v13);
    }

    else
    {
      v11 = objc_msgSend_waypointLabelTertiary(self, v9, v10);
      objc_msgSend__whiteColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 1.0, v11, v16);
  }

  return v8;
}

- (UIColor)hourHandInlayColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_hourHandInlayColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_hourHandInlay_night(self, v9, v10);
      v14 = objc_msgSend__redColor(self, v12, v13);
      v15 = 1.0;
    }

    else
    {
      v11 = objc_msgSend_hourHandInlay(self, v9, v10);
      v14 = objc_msgSend_primaryColor(self, v16, v17);
      v15 = 0.8;
    }

    v18 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v18, v19, v15, v11, v14);
  }

  return v8;
}

- (UIColor)hourHandStrokeColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_hourHandStrokeColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_hourHandStroke_night(self, v9, v10);
      v14 = objc_msgSend__redColor(self, v12, v13);
      v15 = 0.5;
    }

    else
    {
      v11 = objc_msgSend_hourHandStroke(self, v9, v10);
      v14 = objc_msgSend__whiteColor(self, v16, v17);
      v15 = 1.0;
    }

    v18 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v18, v19, v15, v11, v14);
  }

  return v8;
}

- (UIColor)minuteHandInlayColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_minuteHandInlayColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_minuteHandInlay_night(self, v9, v10);
      v14 = objc_msgSend__redColor(self, v12, v13);
      v15 = 1.0;
    }

    else
    {
      v11 = objc_msgSend_minuteHandInlay(self, v9, v10);
      v14 = objc_msgSend_primaryColor(self, v16, v17);
      v15 = 0.8;
    }

    v18 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v18, v19, v15, v11, v14);
  }

  return v8;
}

- (UIColor)minuteHandStrokeColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_minuteHandStrokeColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      v11 = objc_msgSend_minuteHandStroke_night(self, v9, v10);
      v14 = objc_msgSend__redColor(self, v12, v13);
      v15 = 0.5;
    }

    else
    {
      v11 = objc_msgSend_minuteHandStroke(self, v9, v10);
      v14 = objc_msgSend__whiteColor(self, v16, v17);
      v15 = 1.0;
    }

    v18 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v18, v19, v15, v11, v14);
  }

  return v8;
}

- (UIColor)buttonBackgroundColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_buttonBackgroundColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_buttonBackground_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_buttonBackground(self, v9, v10);
    }
    v11 = ;
    if (objc_msgSend_isNightMode(self, v12, v13))
    {
      objc_msgSend__redColor(self, v14, v15);
    }

    else
    {
      objc_msgSend__whiteColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 1.0, v11, v16);
  }

  return v8;
}

- (UIColor)buttonSymbolColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_buttonSymbolColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_buttonSymbol_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_buttonSymbol(self, v9, v10);
    }
    v11 = ;
    if (objc_msgSend_isNightMode(self, v12, v13))
    {
      objc_msgSend__redColor(self, v14, v15);
    }

    else
    {
      objc_msgSend__whiteColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 1.0, v11, v16);
  }

  return v8;
}

- (UIColor)pickerTitleColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_pickerTitleColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_pickerTitle_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_pickerTitle(self, v9, v10);
    }
    v11 = ;
    if (objc_msgSend_isNightMode(self, v12, v13))
    {
      objc_msgSend__redColor(self, v14, v15);
    }

    else
    {
      objc_msgSend__whiteColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 1.0, v11, v16);
  }

  return v8;
}

- (UIColor)pickerItemColor
{
  v4 = objc_msgSend__proxyPalette(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_pickerItemColor(v4, v5, v6);
  }

  else
  {
    if (objc_msgSend_isNightMode(self, v5, v6))
    {
      objc_msgSend_pickerItem_night(self, v9, v10);
    }

    else
    {
      objc_msgSend_pickerItem(self, v9, v10);
    }
    v11 = ;
    if (objc_msgSend_isNightMode(self, v12, v13))
    {
      objc_msgSend__redColor(self, v14, v15);
    }

    else
    {
      objc_msgSend__whiteColor(self, v14, v15);
    }
    v16 = ;
    v17 = objc_opt_class();
    v8 = objc_msgSend__colorFromColorSetColor_fallbackRootColor_alpha_(v17, v18, 1.0, v11, v16);
  }

  return v8;
}

- (BOOL)_isFullScreen
{
  v3 = objc_msgSend_pigmentEditOption(self, a2, v2);
  v6 = objc_msgSend_identifier(v3, v4, v5);

  if (objc_msgSend_hasPrefix_(v6, v7, v8, @"leghorn."))
  {
    hasSuffix = objc_msgSend_hasSuffix_(v6, v9, v10, @"-fs");
  }

  else
  {
    hasSuffix = 0;
  }

  return hasSuffix;
}

- (BOOL)_isDuo
{
  v3 = objc_msgSend_pigmentEditOption(self, a2, v2);
  v6 = objc_msgSend_identifier(v3, v4, v5);

  if (objc_msgSend_hasPrefix_(v6, v7, v8, @"leghorn."))
  {
    hasSuffix = objc_msgSend_hasSuffix_(v6, v9, v10, @"-duo");
  }

  else
  {
    hasSuffix = 0;
  }

  return hasSuffix;
}

- (id)isFullScreen
{
  if (objc_msgSend__isFullScreen(self, a2, v2))
  {
    v3 = &unk_284EB7210;
  }

  else
  {
    v3 = &unk_284EB7220;
  }

  return v3;
}

- (id)swatchImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  isFullScreen = objc_msgSend__isFullScreen(self, a2, a3.width);
  isDuo = objc_msgSend__isDuo(self, v7, v8);
  v12 = isDuo;
  if ((isFullScreen & 1) != 0 || isDuo)
  {
    if (qword_27E1DF048 != -1)
    {
      sub_23BEE6C84();
    }

    v14 = MEMORY[0x277CCACA8];
    v15 = objc_msgSend_configuration(self, v10, v11);
    v18 = objc_msgSend_uniqueId(v15, v16, v17);
    v38.width = width;
    v38.height = height;
    v19 = NSStringFromCGSize(v38);
    v22 = objc_msgSend_stringWithFormat_(v14, v20, v21, @"%@-%@", v18, v19);

    v13 = objc_msgSend_objectForKey_(qword_27E1DF040, v23, v24, v22);
    if (!v13)
    {
      if (v12)
      {
        v27 = objc_msgSend_secondaryColor(self, v25, v26);
        objc_msgSend_primaryColor(self, v28, v29);
      }

      else
      {
        v27 = objc_msgSend_primaryColor(self, v25, v26);
        objc_msgSend_primaryBackgroundColor(self, v30, v31);
      }
      v32 = ;
      v13 = NTKSwatchTwoColorImage();
      objc_msgSend_setObject_forKey_(qword_27E1DF040, v33, v34, v13, v22);
    }
  }

  else
  {
    v36.receiver = self;
    v36.super_class = NTKLeghornFaceColorPalette;
    v13 = [(NTKFaceColorPalette *)&v36 swatchImageForSize:width, height];
  }

  return v13;
}

@end