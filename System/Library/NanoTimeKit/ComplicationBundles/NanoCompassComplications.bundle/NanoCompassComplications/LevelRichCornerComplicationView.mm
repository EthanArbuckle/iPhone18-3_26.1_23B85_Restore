@interface LevelRichCornerComplicationView
- (double)_maxBubbleDeflection;
- (id)_newFixedBubbleView;
- (id)_newFixedOverlayView;
- (id)_newFloatingBubbleView;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)monochromeAccentViews;
- (id)monochromeOtherViews;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
@end

@implementation LevelRichCornerComplicationView

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v25.receiver = self;
  v25.super_class = LevelRichCornerComplicationView;
  v6 = [(LevelRichComplicationView *)&v25 initFullColorImageViewWithDevice:deviceCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 59, device);
    v8 = NanoCompassComplicationImageNamed(@"levelCorner-RingBorderBright");
    v9 = objc_alloc(MEMORY[0x277D755E8]);
    v12 = objc_msgSend_initWithImage_(v9, v10, v8, v11);
    v13 = v7[61];
    v7[61] = v12;

    objc_msgSend_addSubview_(v7, v14, v7[61], v15);
    v16 = NanoCompassComplicationImageNamed(@"levelCorner-RingBorderMuted");
    v17 = objc_alloc(MEMORY[0x277D755E8]);
    v20 = objc_msgSend_initWithImage_(v17, v18, v16, v19);
    v21 = v7[62];
    v7[62] = v20;

    objc_msgSend_addSubview_(v7, v22, v7[62], v23);
  }

  return v7;
}

- (id)_newFixedOverlayView
{
  v5 = objc_msgSend__overlayImageName(self, a2, v2, v3);
  v6 = NanoCompassComplicationImageNamed(v5);

  v7 = objc_alloc(MEMORY[0x277D755E8]);
  v10 = objc_msgSend_initWithImage_(v7, v8, v6, v9);
  overlayCross = self->_overlayCross;
  self->_overlayCross = v10;

  v12 = self->_overlayCross;
  return v12;
}

- (id)_newFixedBubbleView
{
  v5 = objc_msgSend__fixedBubbleImageName(self, a2, v2, v3);
  v6 = NanoCompassComplicationImageNamed(v5);

  v7 = objc_alloc(MEMORY[0x277D755E8]);
  v10 = objc_msgSend_initWithImage_(v7, v8, v6, v9);
  centeredBubbleView = self->_centeredBubbleView;
  self->_centeredBubbleView = v10;

  v12 = self->_centeredBubbleView;
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
  sub_23BD33320(v5, device);
  if (v5 != 8)
  {
    v6 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_23BD65900(v5, v6);
    }
  }

  return *&qword_27E1C4D90;
}

- (id)monochromeAccentViews
{
  v6[4] = *MEMORY[0x277D85DE8];
  floatingBubbleView = self->_floatingBubbleView;
  v6[0] = self->_centeredBubbleView;
  v6[1] = floatingBubbleView;
  mutedRingView = self->_mutedRingView;
  v6[2] = self->_brightRingView;
  v6[3] = mutedRingView;
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v6, 4);

  return v4;
}

- (id)monochromeOtherViews
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_overlayCross;
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);

  return v2;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v37.receiver = self;
  v37.super_class = LevelRichCornerComplicationView;
  [(LevelRichComplicationView *)&v37 configureWithImageProvider:providerCopy reason:reason];
  v10 = objc_msgSend_metadata(providerCopy, v7, v8, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"incline", v12);

  v17 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15, v16);
  isEqual = objc_msgSend_isEqual_(v13, v18, v17, v19);

  if (isEqual)
  {

    v13 = 0;
  }

  v24 = objc_msgSend_metadata(providerCopy, v21, v22, v23);
  v27 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"nodata", v26);
  v31 = objc_msgSend_BOOLValue(v27, v28, v29, v30);

  v32 = NanoCompassLevelComplicationConsideredLevel(v13, v31);
  objc_msgSend_setHidden_(self->_brightRingView, v33, v32, v34);
  objc_msgSend_setHidden_(self->_mutedRingView, v35, v32 ^ 1, v36);
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = LevelRichCornerComplicationView;
  [(LevelRichComplicationView *)&v15 layoutSubviews];
  objc_msgSend_center(self, v3, v4, v5);
  objc_msgSend_setCenter_(self->_brightRingView, v6, v7, v8);
  objc_msgSend_center(self, v9, v10, v11);
  objc_msgSend_setCenter_(self->_mutedRingView, v12, v13, v14);
}

@end