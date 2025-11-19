@interface NTKGalleonCompassLayeredRingView
- (NTKGalleonCompassLayeredRingView)initWithDevice:(id)a3;
- (double)_incomingAlphaForFraction:(double)result withAnimationStyle:(unint64_t)a4;
- (double)_outgoingAlphaForFraction:(double)a3 withAnimationStyle:(unint64_t)a4;
- (double)_ringScaleFactorForBounceFraction:(double)a3;
- (id)_generatePrerenderedDial;
- (id)_modeViewForMode:(unint64_t)a3;
- (void)_applyPalette:(id)a3 toDial:(unint64_t)a4;
- (void)_applyPaletteToDegreeDial:(id)a3;
- (void)_applyPaletteToHourDial:(id)a3;
- (void)_applyPaletteToMinuteDial:(id)a3;
- (void)_setDegreePrerenderedMode:(BOOL)a3;
- (void)_setDropShadowActive:(BOOL)a3;
- (void)_updateDropShadowForPalette:(id)a3;
- (void)_updateRingRotation;
- (void)applyGPSRingEnableFraction:(double)a3;
- (void)applyGPSRingEnableFraction:(double)a3 forMode:(unint64_t)a4;
- (void)applyRingModeTransitionFraction:(double)a3 fromMode:(unint64_t)a4 toMode:(unint64_t)a5 withAnimationStyle:(unint64_t)a6;
- (void)galleon_setProgress:(double)a3;
- (void)setGPSRingDiameter:(double)a3;
- (void)setGPSRingEnabled:(BOOL)a3;
- (void)setHeading:(double)a3;
- (void)setPalette:(id)a3;
- (void)setRingMode:(unint64_t)a3;
- (void)transitionToTritiumWithProgress:(float)a3;
@end

@implementation NTKGalleonCompassLayeredRingView

- (NTKGalleonCompassLayeredRingView)initWithDevice:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_device, a3);
  v108 = 0.0;
  v106 = 0u;
  v107 = 0u;
  memset(v105, 0, sizeof(v105));
  _NTKGalleonLayoutConstants(self->_device, v105);
  v6 = *v105;
  v104.receiver = self;
  v104.super_class = NTKGalleonCompassLayeredRingView;
  v7 = [(NTKGalleonCompassLayeredRingView *)&v104 initWithFrame:0.0, 0.0, *v105, *v105];
  v11 = v7;
  if (v7)
  {
    v12 = objc_msgSend_layer(v7, v8, v9, v10);
    objc_msgSend_setShadowRadius_(v12, v13, v14, v15, *(&v106 + 1));
    objc_msgSend_setShadowOffset_(v12, v16, v17, v18, *(&v107 + 1), v108);
    v19 = MEMORY[0x277D75208];
    objc_msgSend_bounds(v11, v20, v21, v22);
    v26 = objc_msgSend_bezierPathWithOvalInRect_(v19, v23, v24, v25);
    v27 = v26;
    v31 = objc_msgSend_CGPath(v27, v28, v29, v30);
    objc_msgSend_setShadowPath_(v12, v32, v31, v33);

    v37 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v34, v35, v36);
    ringLayer = v11->_ringLayer;
    v11->_ringLayer = v37;

    v39 = v11->_ringLayer;
    objc_msgSend_ringThickness(v11, v40, v41, v42);
    objc_msgSend_setBorderWidth_(v39, v43, v44, v45);
    objc_msgSend_setCornerCurve_(v11->_ringLayer, v46, *MEMORY[0x277CDA130], v47);
    v48 = v11->_ringLayer;
    v52 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v49, v50, v51);
    v53 = v52;
    v57 = objc_msgSend_CGColor(v53, v54, v55, v56);
    objc_msgSend_setBorderColor_(v48, v58, v57, v59);

    v60 = v11->_ringLayer;
    v64 = objc_msgSend_borderColor(v60, v61, v62, v63);
    objc_msgSend_setBackgroundColor_(v60, v65, v64, v66);
    objc_msgSend_galleon_disableLayerActions(v11->_ringLayer, v67, v68, v69);
    objc_msgSend_setFrame_(v11->_ringLayer, v70, v71, v72, 0.0, 0.0, v6, v6);
    objc_msgSend_setCornerRadius_(v11->_ringLayer, v73, v74, v75, v6 * 0.5);
    objc_msgSend_addSublayer_(v12, v76, v11->_ringLayer, v77);
    v78 = objc_alloc_init(MEMORY[0x277D755E8]);
    degreeRotateImageView = v11->_degreeRotateImageView;
    v11->_degreeRotateImageView = v78;

    v80 = [NTKGalleonDegreeDialView alloc];
    v83 = objc_msgSend_initWithDevice_(v80, v81, v11->_device, v82);
    degreeView = v11->_degreeView;
    v11->_degreeView = v83;

    objc_msgSend_addSubview_(v11, v85, v11->_degreeView, v86);
    v87 = [NTKGalleonMinuteDialView alloc];
    v90 = objc_msgSend_initWithDevice_(v87, v88, v11->_device, v89);
    minuteView = v11->_minuteView;
    v11->_minuteView = v90;

    objc_msgSend_addSubview_(v11, v92, v11->_minuteView, v93);
    v94 = [NTKGalleonHourDialView alloc];
    v97 = objc_msgSend_initWithDevice_(v94, v95, v11->_device, v96);
    hourView = v11->_hourView;
    v11->_hourView = v97;

    objc_msgSend_addSubview_(v11, v99, v11->_hourView, v100);
    objc_msgSend_setRingMode_(v11, v101, 2, v102);
  }

  return v11;
}

- (void)setGPSRingDiameter:(double)a3
{
  objc_msgSend__setDegreePrerenderedMode_(self, a2, 0, v3);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  _NTKGalleonLayoutConstants(self->_device, v9);
  objc_msgSend_setBorderWidth_(self->_ringLayer, v6, v7, v8, *v9 - a3);
}

- (void)setPalette:(id)a3
{
  v37 = a3;
  objc_msgSend__setDegreePrerenderedMode_(self, v5, 0, v6);
  objc_storeStrong(&self->_palette, a3);
  ringLayer = self->_ringLayer;
  v11 = objc_msgSend_outerRingBackgroundColor(v37, v8, v9, v10);
  v12 = v11;
  v16 = objc_msgSend_CGColor(v12, v13, v14, v15);
  objc_msgSend_setBorderColor_(ringLayer, v17, v16, v18);

  v19 = self->_ringLayer;
  v23 = objc_msgSend_borderColor(v19, v20, v21, v22);
  objc_msgSend_setBackgroundColor_(v19, v24, v23, v25);
  if (objc_msgSend__compassDialVisible(self, v26, v27, v28))
  {
    objc_msgSend__applyPaletteToDegreeDial_(self, v29, v37, v31);
  }

  if (objc_msgSend__hourDialVisible(self, v29, v30, v31))
  {
    objc_msgSend__applyPaletteToHourDial_(self, v32, v37, v34);
  }

  if (objc_msgSend__minuteDialVisible(self, v32, v33, v34))
  {
    objc_msgSend__applyPaletteToMinuteDial_(self, v35, v37, v36);
  }
}

- (void)_applyPalette:(id)a3 toDial:(unint64_t)a4
{
  v6 = a3;
  v8 = v6;
  if (a4 == 2)
  {
    v9 = v6;
    v6 = objc_msgSend__applyPaletteToDegreeDial_(self, v6, v6, v7);
  }

  else if (a4 == 1)
  {
    v9 = v6;
    v6 = objc_msgSend__applyPaletteToMinuteDial_(self, v6, v6, v7);
  }

  else
  {
    if (a4)
    {
      goto LABEL_8;
    }

    v9 = v6;
    v6 = objc_msgSend__applyPaletteToHourDial_(self, v6, v6, v7);
  }

  v8 = v9;
LABEL_8:

  MEMORY[0x2821F96F8](v6, v8);
}

- (void)_applyPaletteToDegreeDial:(id)a3
{
  degreeView = self->_degreeView;
  v9 = a3;
  objc_msgSend_galleon_setPalette_(degreeView, v5, v9, v6);
  objc_msgSend__updateDropShadowForPalette_(self, v7, v9, v8);
}

- (void)_applyPaletteToHourDial:(id)a3
{
  hourView = self->_hourView;
  v9 = a3;
  objc_msgSend_galleon_setPalette_(hourView, v5, v9, v6);
  objc_msgSend__updateDropShadowForPalette_(self, v7, v9, v8);
}

- (void)_applyPaletteToMinuteDial:(id)a3
{
  minuteView = self->_minuteView;
  v9 = a3;
  objc_msgSend_galleon_setPalette_(minuteView, v5, v9, v6);
  objc_msgSend__updateDropShadowForPalette_(self, v7, v9, v8);
}

- (void)_updateDropShadowForPalette:(id)a3
{
  v11 = objc_msgSend_hasDropShadow(a3, a2, a3, v3);
  v8 = objc_msgSend_BOOLValue(v11, v5, v6, v7);
  objc_msgSend__setDropShadowActive_(self, v9, v8, v10);
}

- (void)_setDropShadowActive:(BOOL)a3
{
  if (self->_dropShadowActive != a3)
  {
    if (a3)
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      memset(v31, 0, sizeof(v31));
      _NTKGalleonLayoutConstants(self->_device, v31);
      v9 = objc_msgSend_layer(self, v6, v7, v8);
      HIDWORD(v10) = DWORD1(v33);
      *&v10 = *&v33;
      objc_msgSend_setShadowOpacity_(v9, v11, v12, v13, v10);

      v17 = objc_msgSend_layer(self, v14, v15, v16);
      objc_msgSend_setShadowRadius_(v17, v18, v19, v20, *(&v32 + 1));
    }

    else
    {
      v21 = objc_msgSend_layer(self, a2, a3, v3);
      objc_msgSend_setShadowOpacity_(v21, v22, v23, v24, 0.0);

      v17 = objc_msgSend_layer(self, v25, v26, v27);
      objc_msgSend_setShadowRadius_(v17, v28, v29, v30, 0.0);
    }

    self->_dropShadowActive = a3;
  }
}

- (void)setRingMode:(unint64_t)a3
{
  objc_msgSend__setDegreePrerenderedMode_(self, a2, 0, v3);
  self->_ringMode = a3;
  switch(a3)
  {
    case 2uLL:
      objc_msgSend_setAlpha_(self->_hourView, v6, v7, v8, 0.0);
      objc_msgSend_setHidden_(self->_hourView, v45, 1, v46);
      objc_msgSend_setAlpha_(self->_minuteView, v47, v48, v49, 0.0);
      objc_msgSend_setHidden_(self->_minuteView, v50, 1, v51);
      objc_msgSend_setAlpha_(self->_degreeView, v52, v53, v54, 1.0);
      objc_msgSend_setHidden_(self->_degreeView, v55, 0, v56);
      degreeView = self->_degreeView;
      v58 = *(MEMORY[0x277CBF2C0] + 16);
      v66 = *MEMORY[0x277CBF2C0];
      v67 = v58;
      v68 = *(MEMORY[0x277CBF2C0] + 32);
      objc_msgSend_setTransform_(degreeView, v59, &v66, v60);
      objc_msgSend__applyPaletteToDegreeDial_(self, v61, self->_palette, v62);
      objc_msgSend__updateRingRotation(self, v63, v64, v65);
      break;
    case 1uLL:
      objc_msgSend_setAlpha_(self->_hourView, v6, v7, v8, 0.0);
      objc_msgSend_setHidden_(self->_hourView, v27, 1, v28);
      objc_msgSend_setAlpha_(self->_minuteView, v29, v30, v31, 1.0);
      objc_msgSend_setHidden_(self->_minuteView, v32, 0, v33);
      objc_msgSend_setAlpha_(self->_degreeView, v34, v35, v36, 0.0);
      objc_msgSend_setHidden_(self->_degreeView, v37, 1, v38);
      minuteView = self->_minuteView;
      v40 = *(MEMORY[0x277CBF2C0] + 16);
      v66 = *MEMORY[0x277CBF2C0];
      v67 = v40;
      v68 = *(MEMORY[0x277CBF2C0] + 32);
      objc_msgSend_setTransform_(minuteView, v41, &v66, v42);
      objc_msgSend__applyPaletteToMinuteDial_(self, v43, self->_palette, v44);
      break;
    case 0uLL:
      objc_msgSend_setAlpha_(self->_hourView, v6, v7, v8, 1.0);
      objc_msgSend_setHidden_(self->_hourView, v9, 0, v10);
      objc_msgSend_setAlpha_(self->_minuteView, v11, v12, v13, 0.0);
      objc_msgSend_setHidden_(self->_minuteView, v14, 1, v15);
      objc_msgSend_setAlpha_(self->_degreeView, v16, v17, v18, 0.0);
      objc_msgSend_setHidden_(self->_degreeView, v19, 1, v20);
      hourView = self->_hourView;
      v22 = *(MEMORY[0x277CBF2C0] + 16);
      v66 = *MEMORY[0x277CBF2C0];
      v67 = v22;
      v68 = *(MEMORY[0x277CBF2C0] + 32);
      objc_msgSend_setTransform_(hourView, v23, &v66, v24);
      objc_msgSend__applyPaletteToHourDial_(self, v25, self->_palette, v26);
      break;
  }
}

- (void)setGPSRingEnabled:(BOOL)a3
{
  v4 = a3;
  objc_msgSend__setDegreePrerenderedMode_(self, a2, 0, v3);
  if (v4)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  v11 = objc_msgSend_ringMode(self, v6, v7, v8);

  objc_msgSend_applyGPSRingEnableFraction_forMode_(self, v10, v11, v12, v9);
}

- (id)_modeViewForMode:(unint64_t)a3
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.isa + *off_278B9EE38[a3]);
  }

  return v4;
}

- (void)applyRingModeTransitionFraction:(double)a3 fromMode:(unint64_t)a4 toMode:(unint64_t)a5 withAnimationStyle:(unint64_t)a6
{
  v11 = objc_msgSend__modeViewForMode_(self, a2, a4, a5);
  v14 = objc_msgSend__modeViewForMode_(self, v12, a5, v13);
  objc_msgSend_alpha(v11, v15, v16, v17);
  v19 = v18;
  objc_msgSend__outgoingAlphaForFraction_withAnimationStyle_(self, v20, a6, v21, a3);
  v23 = v22;
  objc_msgSend_setAlpha_(v11, v24, v25, v26);
  if (v19 == 0.0 && v23 > 0.0)
  {
    objc_msgSend_setHidden_(v11, v27, 0, v29);
    objc_msgSend__applyPalette_toDial_(self, v30, self->_palette, a4);
  }

  objc_msgSend_alpha(v14, v27, v28, v29);
  v32 = v31;
  objc_msgSend__incomingAlphaForFraction_withAnimationStyle_(self, v33, a6, v34, a3);
  v36 = v35;
  objc_msgSend_setAlpha_(v14, v37, v38, v39);
  if (v32 == 0.0 && v36 > 0.0)
  {
    objc_msgSend_setHidden_(v14, v40, 0, v42);
    objc_msgSend__applyPalette_toDial_(self, v43, self->_palette, a5);
  }

  if (a6 == 3)
  {
    v52 = 1.0 - a3;
    if (a5 == 2)
    {
      v52 = a3;
    }

    objc_msgSend__ringScaleFactorForBounceFraction_(self, v40, v41, v42, v52);
    if (v55 == 1.0)
    {
      v56 = *(MEMORY[0x277CBF2C0] + 16);
      *&v61.a = *MEMORY[0x277CBF2C0];
      *&v61.c = v56;
      *&v61.tx = *(MEMORY[0x277CBF2C0] + 32);
    }

    else
    {
      v60 = *(MEMORY[0x277CBF2C0] + 16);
      *&v64.a = *MEMORY[0x277CBF2C0];
      *&v64.c = v60;
      *&v64.tx = *(MEMORY[0x277CBF2C0] + 32);
      CGAffineTransformScale(&v61, &v64, v55, v55);
    }

    v64 = v61;
    objc_msgSend_setTransform_(self, v53, &v64, v54, *&v61.a, *&v61.c, *&v61.tx, *&v62.a, *&v62.b, *&v62.c, *&v62.d, *&v62.tx, *&v62.ty);
  }

  else if (a6 == 2)
  {
    CLKInterpolateBetweenFloatsClipped();
    v45 = v44;
    CLKInterpolateBetweenFloatsClipped();
    v49 = v48;
    memset(&v64, 0, sizeof(v64));
    v50 = MEMORY[0x277CBF2C0];
    v51 = *(MEMORY[0x277CBF2C0] + 16);
    if (v45 == 1.0)
    {
      *&v64.a = *MEMORY[0x277CBF2C0];
      *&v64.c = v51;
      *&v64.tx = *(MEMORY[0x277CBF2C0] + 32);
    }

    else
    {
      *&v63.a = *MEMORY[0x277CBF2C0];
      *&v63.c = v51;
      *&v63.tx = *(MEMORY[0x277CBF2C0] + 32);
      CGAffineTransformScale(&v64, &v63, v45, v45);
    }

    memset(&v63, 0, sizeof(v63));
    v57 = v50[1];
    if (v49 == 1.0)
    {
      *&v63.a = *v50;
      *&v63.c = v57;
      *&v63.tx = v50[2];
    }

    else
    {
      *&v62.a = *v50;
      *&v62.c = v57;
      *&v62.tx = v50[2];
      CGAffineTransformScale(&v63, &v62, v49, v49);
    }

    v62 = v64;
    objc_msgSend_setTransform_(v14, v46, &v62, v47);
    objc_msgSend_setTransform_(v11, v58, &v62, v59, *&v61.a, *&v61.c, *&v61.tx, *&v63.a, *&v63.b, *&v63.c, *&v63.d, *&v63.tx, *&v63.ty);
  }
}

- (void)applyGPSRingEnableFraction:(double)a3
{
  objc_msgSend__setDegreePrerenderedMode_(self, a2, 0, v3);
  if (objc_msgSend__compassDialVisible(self, v6, v7, v8))
  {
    objc_msgSend_applyGPSRingEnableFraction_forMode_(self, v9, 2, v11, a3);
  }

  if (objc_msgSend__hourDialVisible(self, v9, v10, v11))
  {
    objc_msgSend_applyGPSRingEnableFraction_forMode_(self, v12, 0, v14, a3);
  }

  if (objc_msgSend__minuteDialVisible(self, v12, v13, v14))
  {

    objc_msgSend_applyGPSRingEnableFraction_forMode_(self, v15, 1, v16, a3);
  }
}

- (void)applyGPSRingEnableFraction:(double)a3 forMode:(unint64_t)a4
{
  objc_msgSend__setDegreePrerenderedMode_(self, a2, 0, v4);
  if (a4 <= 2)
  {
    v11 = *(&self->super.super.super.isa + *off_278B9EE38[a4]);

    objc_msgSend_galleon_setProgress_(v11, v8, v9, v10, a3);
  }
}

- (double)_ringScaleFactorForBounceFraction:(double)a3
{
  if (a3 <= 0.85)
  {
    if (a3 <= 0.6)
    {
      if (a3 <= 0.0)
      {
        return 1.0;
      }

      objc_msgSend__easeInCurveWithFraction_(self, a2, v3, v4, a3 / 0.6);
    }

    else
    {
      objc_msgSend__easeInCurveWithFraction_(self, a2, v3, v4, (a3 + -0.6) * 4.0);
    }
  }

  else
  {
    objc_msgSend__easeInCurveWithFraction_(self, a2, v3, v4, (a3 + -0.85) / 0.15);
  }

  CLKInterpolateBetweenFloatsClipped();
  return result;
}

- (double)_outgoingAlphaForFraction:(double)a3 withAnimationStyle:(unint64_t)a4
{
  if (a4 != 3)
  {
    return 1.0 - a3;
  }

  CLKInterpolateBetweenFloatsClipped();
  return result;
}

- (double)_incomingAlphaForFraction:(double)result withAnimationStyle:(unint64_t)a4
{
  if (a4 == 3)
  {
    CLKInterpolateBetweenFloatsClipped();
  }

  return result;
}

- (void)transitionToTritiumWithProgress:(float)a3
{
  objc_msgSend__setDegreePrerenderedMode_(self, a2, 0, v3);
  degreeView = self->_degreeView;

  MEMORY[0x2821F9670](degreeView, sel_setChevronAndLabelOpacity_, v5, v6);
}

- (void)_setDegreePrerenderedMode:(BOOL)a3
{
  v4 = a3;
  p_degreeRotateImageView = &self->_degreeRotateImageView;
  v7 = objc_msgSend_superview(self->_degreeRotateImageView, a2, a3, v3);

  if ((((v7 == 0) ^ v4) & 1) == 0)
  {
    if (v4)
    {
      if (CFAbsoluteTimeGetCurrent() < self->_dontPrerenderBefore)
      {
        return;
      }

      v8 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BE91000, v8, OS_LOG_TYPE_DEFAULT, "Galleon compass switching to pre-rendered image", buf, 2u);
      }

      v12 = objc_msgSend__generatePrerenderedDial(self, v9, v10, v11);
      objc_msgSend_setImage_(*p_degreeRotateImageView, v13, v12, v14);

      objc_msgSend_sizeToFit(*p_degreeRotateImageView, v15, v16, v17);
      v18 = *p_degreeRotateImageView;
      objc_msgSend_center(self->_degreeView, v19, v20, v21);
      objc_msgSend_setCenter_(v18, v22, v23, v24);
      p_degreeView = p_degreeRotateImageView;
      p_degreeRotateImageView = &self->_degreeView;
    }

    else
    {
      v27 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v36 = 0;
        _os_log_impl(&dword_23BE91000, v27, OS_LOG_TYPE_DEFAULT, "Galleon compass switching to layer-based view", v36, 2u);
      }

      objc_msgSend_setImage_(*p_degreeRotateImageView, v28, 0, v29);
      p_degreeView = &self->_degreeView;
    }

    objc_msgSend_insertSubview_aboveSubview_(self, v25, *p_degreeView, *p_degreeRotateImageView);
    objc_msgSend_removeFromSuperview(*p_degreeRotateImageView, v30, v31, v32);
    objc_msgSend__updateRingRotation(self, v33, v34, v35);
  }

  if (!v4)
  {
    self->_dontPrerenderBefore = CFAbsoluteTimeGetCurrent() + 0.3;
  }
}

- (id)_generatePrerenderedDial
{
  v3 = objc_alloc(MEMORY[0x277D75560]);
  objc_msgSend_bounds(self->_degreeView, v4, v5, v6);
  v10 = objc_msgSend_initWithBounds_(v3, v7, v8, v9);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23BE96300;
  v15[3] = &unk_278B9EDE0;
  v15[4] = self;
  v13 = objc_msgSend_imageWithActions_(v10, v11, v15, v12);

  return v13;
}

- (void)setHeading:(double)a3
{
  objc_msgSend__setDegreePrerenderedMode_(self, a2, 1, v3);
  self->_heading = a3;

  objc_msgSend__updateRingRotation(self, v6, v7, v8);
}

- (void)_updateRingRotation
{
  heading = self->_heading;
  v6 = objc_msgSend_superview(self->_degreeView, a2, v2, v3);

  if (v6)
  {
    degreeView = self->_degreeView;

    objc_msgSend_galleon_setHeading_(degreeView, v7, v8, v9, heading);
  }

  else
  {
    v11 = objc_msgSend_superview(self->_degreeRotateImageView, v7, v8, v9);

    if (v11)
    {
      memset(&v17, 0, sizeof(v17));
      CLKDegreesToRadians();
      CGAffineTransformMakeRotation(&v17, 6.28318531 - v12);
      degreeRotateImageView = self->_degreeRotateImageView;
      v16 = v17;
      objc_msgSend_setTransform_(degreeRotateImageView, v14, &v16, v15);
    }
  }
}

- (void)galleon_setProgress:(double)a3
{
  v8 = objc_msgSend_ringMode(self, a2, v3, v4);

  objc_msgSend_applyGPSRingEnableFraction_forMode_(self, v7, v8, v9, a3);
}

@end