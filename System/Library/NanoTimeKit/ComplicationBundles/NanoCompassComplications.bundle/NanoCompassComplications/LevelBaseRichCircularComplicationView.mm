@interface LevelBaseRichCircularComplicationView
- (double)_maxBubbleDeflection;
- (id)_curvedLabelViewForLocStringKey:(id)key font:(id)font textColor:(id)color centerAngle:(double)angle;
- (id)_fixedBubbleImageName;
- (id)_floatingBubbleImageName;
- (id)_newFixedBubbleView;
- (id)_newFixedOverlayView;
- (id)_newFloatingBubbleView;
- (id)_overlayImageName;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)monochromeAccentViews;
- (id)monochromeOtherViews;
- (id)ticksView;
- (int64_t)_supportedFamily;
- (void)_createDialLabels;
- (void)_hideDialLabels:(BOOL)labels;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
@end

@implementation LevelBaseRichCircularComplicationView

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v36.receiver = self;
  v36.super_class = LevelBaseRichCircularComplicationView;
  v6 = [(LevelRichComplicationView *)&v36 initFullColorImageViewWithDevice:deviceCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 59, device);
    v11 = objc_msgSend_ticksView(v7, v8, v9, v10);
    objc_msgSend_addSubview_(v7, v12, v11, v13);

    v17 = objc_msgSend_ticksView(v7, v14, v15, v16);
    objc_msgSend_sendSubviewToBack_(v7, v18, v17, v19);

    v20 = objc_alloc(MEMORY[0x277D75D18]);
    v24 = objc_msgSend_ticksView(v7, v21, v22, v23);
    objc_msgSend_frame(v24, v25, v26, v27);
    v31 = objc_msgSend_initWithFrame_(v20, v28, v29, v30);
    v32 = v7[61];
    v7[61] = v31;

    objc_msgSend_addSubview_(v7, v33, v7[61], v34);
  }

  return v7;
}

- (id)_curvedLabelViewForLocStringKey:(id)key font:(id)font textColor:(id)color centerAngle:(double)angle
{
  v45[1] = *MEMORY[0x277D85DE8];
  device = self->_device;
  colorCopy = color;
  fontCopy = font;
  keyCopy = key;
  v17 = objc_msgSend__supportedFamily(self, v14, v15, v16);
  v18 = sub_23BD47AEC(device, v17);
  v19 = objc_alloc_init(MEMORY[0x277CFA770]);
  objc_msgSend_setTextColor_(v19, v20, colorCopy, v21);

  v22 = objc_alloc(MEMORY[0x277CCA898]);
  v23 = NanoCompassLocalizedString(keyCopy);

  v44 = *MEMORY[0x277D740A8];
  v45[0] = fontCopy;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v45, &v44, 1);

  v27 = objc_msgSend_initWithString_attributes_(v22, v26, v23, v25);
  objc_msgSend_setAttributedText_(v19, v28, v27, v29);

  objc_msgSend_setAttributedTextProvidesColor_(v19, v30, 1, v31);
  objc_msgSend_setCircleRadius_(v19, v32, v33, v34, v18);
  objc_msgSend_setInterior_(v19, v35, 0, v36);
  objc_msgSend_setCenterAngle_(v19, v37, v38, v39, angle);
  objc_msgSend_sizeToFit(v19, v40, v41, v42);

  return v19;
}

- (void)_hideDialLabels:(BOOL)labels
{
  v31 = *MEMORY[0x277D85DE8];
  curvedLabelViews = self->_curvedLabelViews;
  if (labels)
  {
    if (!curvedLabelViews)
    {
      return;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = curvedLabelViews;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v25, v30, 16);
    if (v7)
    {
      v10 = v7;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v5);
          }

          objc_msgSend_setHidden_(*(*(&v25 + 1) + 8 * i), v8, 1, v9);
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v25, v30, 16);
      }

      while (v10);
    }
  }

  else
  {
    if (!curvedLabelViews)
    {
      objc_msgSend__createDialLabels(self, a2, labels, v3);
      curvedLabelViews = self->_curvedLabelViews;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = curvedLabelViews;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v14, &v21, v29, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v22;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v5);
          }

          objc_msgSend_setHidden_(*(*(&v21 + 1) + 8 * j), v16, 0, v17, v21);
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v16, &v21, v29, 16);
      }

      while (v18);
    }
  }
}

- (void)_createDialLabels
{
  v91 = *MEMORY[0x277D85DE8];
  device = self->_device;
  v6 = objc_msgSend__supportedFamily(self, a2, v2, v3);
  sub_23BD47AEC(device, v6);
  v8 = v7;
  v10 = v9;
  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v14 = objc_msgSend_initWithCapacity_(v11, v12, 8, v13);
  v15 = NanoCompassLocalizedString(@"NW");
  v19 = objc_msgSend_length(v15, v16, v17, v18);
  v20 = MEMORY[0x277D74420];
  v21 = MEMORY[0x277CBB6C0];
  v22 = 0x277D75000;
  if (v19 <= 2)
  {
    v23 = NanoCompassLocalizedString(@"NE");
    if (objc_msgSend_length(v23, v24, v25, v26) <= 2)
    {
      v27 = NanoCompassLocalizedString(@"SW");
      if (objc_msgSend_length(v27, v28, v29, v30) <= 2)
      {
        v31 = NanoCompassLocalizedString(@"SE");
        v35 = objc_msgSend_length(v31, v32, v33, v34);

        v22 = 0x277D75000uLL;
        if (v35 > 2)
        {
          goto LABEL_9;
        }

        v15 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], v36, *v21, v37, v8, *v20);
        v23 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v38, v39, v40, 1.0, 0.600000024);
        v42 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v41, @"NW", v15, v23, 0.785398163);
        objc_msgSend_addObject_(v14, v43, v42, v44);

        v46 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v45, @"NE", v15, v23, -0.785398163);
        objc_msgSend_addObject_(v14, v47, v46, v48);

        v50 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v49, @"SW", v15, v23, 2.35619449);
        objc_msgSend_addObject_(v14, v51, v50, v52);

        v27 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v53, @"SE", v15, v23, -2.35619449);
        objc_msgSend_addObject_(v14, v54, v27, v55);
      }
    }
  }

LABEL_9:
  v56 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], v36, *v21, v37, v10, *v20);
  v60 = objc_msgSend_whiteColor(*(v22 + 840), v57, v58, v59);
  v62 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v61, @"N", v56, v60, 0.0);
  objc_msgSend_addObject_(v14, v63, v62, v64);

  v66 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v65, @"S", v56, v60, 3.14159265);
  objc_msgSend_addObject_(v14, v67, v66, v68);

  v70 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v69, @"E", v56, v60, -1.57079633);
  objc_msgSend_addObject_(v14, v71, v70, v72);

  v74 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v73, @"W", v56, v60, 1.57079633);
  objc_msgSend_addObject_(v14, v75, v74, v76);

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v77 = v14;
  v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v86, v90, 16);
  if (v79)
  {
    v82 = v79;
    v83 = *v87;
    do
    {
      v84 = 0;
      do
      {
        if (*v87 != v83)
        {
          objc_enumerationMutation(v77);
        }

        objc_msgSend_addSubview_(self->_curvedLabelsContainerView, v80, *(*(&v86 + 1) + 8 * v84++), v81, v86);
      }

      while (v82 != v84);
      v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v80, &v86, v90, 16);
    }

    while (v82);
  }

  curvedLabelViews = self->_curvedLabelViews;
  self->_curvedLabelViews = v77;
}

- (id)ticksView
{
  ticksView = self->_ticksView;
  if (!ticksView)
  {
    device = self->_device;
    v7 = objc_msgSend__supportedFamily(self, a2, v2, v3);
    v9 = objc_msgSend_richCircularLevelSubdialForDevice_andComplicationFamily_(AnalogDialView, v8, device, v7);
    v10 = self->_ticksView;
    self->_ticksView = v9;

    ticksView = self->_ticksView;
  }

  return ticksView;
}

- (id)_newFixedOverlayView
{
  v5 = objc_msgSend__overlayImageName(self, a2, v2, v3);
  v6 = NanoCompassComplicationImageNamed(v5);

  v7 = objc_alloc(MEMORY[0x277D755E8]);
  v10 = objc_msgSend_initWithImage_(v7, v8, v6, v9);
  overlayCrossView = self->_overlayCrossView;
  self->_overlayCrossView = v10;

  v12 = self->_overlayCrossView;
  return v12;
}

- (id)_newFixedBubbleView
{
  v5 = objc_msgSend__fixedBubbleImageName(self, a2, v2, v3);
  v6 = NanoCompassComplicationImageNamed(v5);

  v7 = objc_alloc(MEMORY[0x277D755E8]);
  v10 = objc_msgSend_initWithImage_(v7, v8, v6, v9);
  fixedBubbleView = self->_fixedBubbleView;
  self->_fixedBubbleView = v10;

  v12 = self->_fixedBubbleView;
  return v12;
}

- (id)_newFloatingBubbleView
{
  v5 = objc_msgSend__floatingBubbleImageName(self, a2, v2, v3);
  v6 = NanoCompassComplicationImageNamed(v5);

  v7 = objc_alloc(MEMORY[0x277D755E8]);
  v10 = objc_msgSend_initWithImage_(v7, v8, v6, v9);
  floatingBubbleView = self->_floatingBubbleView;
  self->_floatingBubbleView = v10;

  v12 = self->_floatingBubbleView;
  return v12;
}

- (double)_maxBubbleDeflection
{
  device = self->_device;
  v5 = objc_msgSend__supportedFamily(self, a2, v2, v3);
  sub_23BD47AEC(device, v5);
  return v6;
}

- (id)monochromeAccentViews
{
  v5[3] = *MEMORY[0x277D85DE8];
  fixedBubbleView = self->_fixedBubbleView;
  v5[0] = self->_ticksView;
  v5[1] = fixedBubbleView;
  v5[2] = self->_floatingBubbleView;
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 3);

  return v3;
}

- (id)monochromeOtherViews
{
  v5[2] = *MEMORY[0x277D85DE8];
  overlayCrossView = self->_overlayCrossView;
  v5[0] = self->_curvedLabelsContainerView;
  v5[1] = overlayCrossView;
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 2);

  return v3;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v67.receiver = self;
  v67.super_class = LevelBaseRichCircularComplicationView;
  [(LevelRichComplicationView *)&v67 configureWithImageProvider:providerCopy reason:reason];
  v10 = objc_msgSend_metadata(providerCopy, v7, v8, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"heading", v12);

  v17 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15, v16);
  isEqual = objc_msgSend_isEqual_(v13, v18, v17, v19);

  if (isEqual)
  {

    v13 = 0;
  }

  v24 = objc_msgSend_metadata(providerCopy, v21, v22, v23);
  v27 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"nodata", v26);
  v31 = objc_msgSend_BOOLValue(v27, v28, v29, v30);

  if (v13)
  {
    isAccurate = objc_msgSend_isAccurate(v13, v32, v33, v34);
    v39 = objc_msgSend_metadata(providerCopy, v36, v37, v38);
    v42 = objc_msgSend_objectForKeyedSubscript_(v39, v40, @"alwayson", v41);
    v46 = objc_msgSend_BOOLValue(v42, v43, v44, v45);

    v47 = v31 & isAccurate | isAccurate ^ 1;
    objc_msgSend__hideDialLabels_(self, v48, (v47 | v46) & 1, v49);
    if ((v47 & 1) == 0)
    {
      objc_msgSend_heading(v13, v50, v51, v52);
      v57 = -v56;
      if (self->_cachedHeading != v57)
      {
        self->_cachedHeading = v57;
        objc_msgSend_setNeedsLayout(self, v53, v54, v55);
      }
    }
  }

  else
  {
    v58 = objc_msgSend_metadata(providerCopy, v32, v33, v34);
    v61 = objc_msgSend_objectForKeyedSubscript_(v58, v59, @"alwayson", v60);
    objc_msgSend_BOOLValue(v61, v62, v63, v64);

    objc_msgSend__hideDialLabels_(self, v65, 1, v66);
  }
}

- (void)layoutSubviews
{
  v55 = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = LevelBaseRichCircularComplicationView;
  [(LevelRichComplicationView *)&v53 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4, v5);
  v7 = v6;
  UIRectGetCenter();
  v9 = v8;
  v11 = v10;
  objc_msgSend_setCenter_(self->_ticksView, v12, v13, v14);
  objc_msgSend_setCenter_(self->_curvedLabelsContainerView, v15, v16, v17, v9, v11);
  v18 = self->_cachedHeading * 3.14159265;
  memset(&v52, 0, sizeof(v52));
  CGAffineTransformMakeRotation(&v52, v18 / 180.0);
  v51 = v52;
  objc_msgSend_setTransform_(self->_ticksView, v19, &v51, v20);
  v51 = v52;
  objc_msgSend_setTransform_(self->_curvedLabelsContainerView, v21, &v51, v22);
  if (self->_curvedLabelViews)
  {
    objc_msgSend_bounds(self->_curvedLabelsContainerView, v23, v24, v25);
    v27 = v26;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v28 = self->_curvedLabelViews;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v47, v54, 16);
    if (v30)
    {
      v34 = v30;
      v35 = (v27 - v7) * 0.5;
      v36 = *v48;
      do
      {
        v37 = 0;
        do
        {
          if (*v48 != v36)
          {
            objc_enumerationMutation(v28);
          }

          v38 = *(*(&v47 + 1) + 8 * v37);
          *&v51.a = 0uLL;
          objc_msgSend_frame(v38, v31, v32, v33, v47);
          v40 = v39;
          v42 = v41;
          objc_msgSend_getTextCenter_startAngle_endAngle_(v38, v43, &v51, 0, 0);
          objc_msgSend_setFrame_(v38, v44, v45, v46, v35 + v9 - v51.a, v35 + v11 - v51.b, v40, v42);
          ++v37;
        }

        while (v34 != v37);
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v47, v54, 16);
      }

      while (v34);
    }
  }
}

- (int64_t)_supportedFamily
{
  sub_23BD29238();
  sub_23BD2921C();
  return 10;
}

- (id)_overlayImageName
{
  sub_23BD29238();
  sub_23BD2921C();
  return 0;
}

- (id)_fixedBubbleImageName
{
  sub_23BD29238();
  sub_23BD2921C();
  return 0;
}

- (id)_floatingBubbleImageName
{
  sub_23BD29238();
  sub_23BD2921C();
  return 0;
}

@end