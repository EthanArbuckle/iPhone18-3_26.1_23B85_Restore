@interface CompassBaseRichCircularDialView
- (id)_gossamer_newNeedleView;
- (id)_needleNorthImageName;
- (id)_needleShadowImageName;
- (id)_needleSouthImageName;
- (id)_newNeedleAODView;
- (id)_newNeedleView;
- (id)_newTicksView;
- (id)_pregossamer_newNeedleView;
- (id)_ticksImageName;
- (id)directionRedactionLabel;
- (id)headingRedactionLabel;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)monochromeAccentViews;
- (id)monochromeOtherViews;
- (int64_t)_supportedFamily;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
@end

@implementation CompassBaseRichCircularDialView

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v46.receiver = self;
  v46.super_class = CompassBaseRichCircularDialView;
  v6 = [(CompassRichDialView *)&v46 initFullColorImageViewWithDevice:deviceCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 57, device);
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v8 = v7[57];
    v12 = objc_msgSend__supportedFamily(v7, v9, v10, v11);
    sub_23BD3D108(v8, v12, &v43);
    v13 = v44;
    v16 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], v14, v44, v15, v43);
    v17 = objc_opt_new();
    v18 = v7[58];
    v7[58] = v17;

    v19 = NanoCompassAppTintColor();
    objc_msgSend_setTextColor_(v7[58], v20, v19, v21);

    objc_msgSend_setFont_(v7[58], v22, v16, v23);
    objc_msgSend_setTextAlignment_(v7[58], v24, 1, v25);
    objc_msgSend_addSubview_(v7, v26, v7[58], v27);
    v28 = objc_opt_new();
    v29 = v7[59];
    v7[59] = v28;

    v33 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v30, v31, v32);
    objc_msgSend_setTextColor_(v7[59], v34, v33, v35);

    objc_msgSend_setFont_(v7[59], v36, v16, v37);
    objc_msgSend_setTextAlignment_(v7[59], v38, 1, v39);
    objc_msgSend_addSubview_(v7, v40, v7[59], v41);
  }

  return v7;
}

- (id)_newTicksView
{
  v5 = objc_msgSend__ticksImageName(self, a2, v2, v3);
  v6 = NanoCompassComplicationImageNamed(v5);

  v7 = objc_alloc(MEMORY[0x277D755E8]);
  v10 = objc_msgSend_initWithImage_(v7, v8, v6, v9);
  ticks = self->_ticks;
  self->_ticks = v10;

  v12 = self->_ticks;
  return v12;
}

- (id)_newNeedleView
{
  if (objc_msgSend_supportsGossamer(self, a2, v2, v3))
  {
    objc_msgSend__gossamer_newNeedleView(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend__pregossamer_newNeedleView(self, v5, v6, v7);
  }

  return objc_claimAutoreleasedReturnValue();
}

- (id)_newNeedleAODView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  objc_msgSend_bounds(self, v4, v5, v6);

  return objc_msgSend_initWithFrame_(v3, v7, v8, v9);
}

- (id)_gossamer_newNeedleView
{
  v5 = objc_msgSend__needleNorthImageName(self, a2, v2, v3);
  v6 = NanoCompassComplicationImageNamed(v5);

  v7 = NanoCompassAppTintColor();
  v10 = objc_msgSend_imageWithTintColor_(v6, v8, v7, v9);

  v11 = objc_alloc(MEMORY[0x277D755E8]);
  v14 = objc_msgSend_initWithImage_(v11, v12, v10, v13);
  north = self->_north;
  self->_north = v14;

  v19 = objc_msgSend__ticksImageName(self, v16, v17, v18);
  v20 = NanoCompassComplicationImageNamed(v19);

  objc_msgSend_size(v20, v21, v22, v23);
  v25 = v24;
  v27 = v26;
  v28 = *MEMORY[0x277CBF348];
  v29 = *(MEMORY[0x277CBF348] + 8);
  v30 = objc_alloc(MEMORY[0x277D75D18]);
  v34 = objc_msgSend_initWithFrame_(v30, v31, v32, v33, v28, v29, v25, v27);
  objc_msgSend_addSubview_(v34, v35, self->_north, v36);

  return v34;
}

- (id)_pregossamer_newNeedleView
{
  v5 = objc_msgSend__needleNorthImageName(self, a2, v2, v3);
  v6 = NanoCompassComplicationImageNamed(v5);

  v7 = objc_alloc(MEMORY[0x277D755E8]);
  v10 = objc_msgSend_initWithImage_(v7, v8, v6, v9);
  north = self->_north;
  self->_north = v10;

  v15 = objc_msgSend__needleSouthImageName(self, v12, v13, v14);
  v16 = NanoCompassComplicationImageNamed(v15);

  v17 = objc_alloc(MEMORY[0x277D755E8]);
  v20 = objc_msgSend_initWithImage_(v17, v18, v16, v19);
  south = self->_south;
  self->_south = v20;

  v25 = objc_msgSend__needleShadowImageName(self, v22, v23, v24);
  v26 = NanoCompassComplicationImageNamed(v25);

  v27 = objc_alloc(MEMORY[0x277D755E8]);
  v30 = objc_msgSend_initWithImage_(v27, v28, v26, v29);
  objc_msgSend_bounds(v30, v31, v32, v33);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = objc_alloc(MEMORY[0x277D75D18]);
  v46 = objc_msgSend_initWithFrame_(v42, v43, v44, v45, v35, v37, v39, v41);
  objc_msgSend_addSubview_(v46, v47, v30, v48);
  objc_msgSend_addSubview_(v46, v49, self->_south, v50);
  objc_msgSend_addSubview_(v46, v51, self->_north, v52);

  return v46;
}

- (id)monochromeAccentViews
{
  v5[2] = *MEMORY[0x277D85DE8];
  headingLabel = self->_headingLabel;
  v5[0] = self->_north;
  v5[1] = headingLabel;
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 2);

  return v3;
}

- (id)monochromeOtherViews
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_supportsGossamer(self, a2, v2, v3))
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v9, 2, v8, self->_ticks, self->_directionLabel);
  }

  else
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, &v8, 1, self->_south, v9[0], v9[1]);
  }
  v6 = ;

  return v6;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v57.receiver = self;
  v57.super_class = CompassBaseRichCircularDialView;
  [(CompassRichDialView *)&v57 configureWithImageProvider:providerCopy reason:reason];
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
    v35 = v31 == 0;
  }

  else
  {
    v35 = 0;
  }

  if (v35)
  {
    v42 = NanoCompassFormattedHeading(v13, 0, 0);
    objc_msgSend_setText_(self->_headingLabel, v43, v42, v44);

    NanoCompassFormattedHeadingDirection(v13);
  }

  else
  {
    v36 = objc_msgSend_headingRedactionLabel(self, v32, v33, v34);
    objc_msgSend_setText_(self->_headingLabel, v37, v36, v38);

    objc_msgSend_directionRedactionLabel(self, v39, v40, v41);
  }
  v45 = ;
  objc_msgSend_setText_(self->_directionLabel, v46, v45, v47);

  objc_msgSend_sizeToFit(self->_headingLabel, v48, v49, v50);
  objc_msgSend_sizeToFit(self->_directionLabel, v51, v52, v53);
  objc_msgSend_setNeedsLayout(self, v54, v55, v56);
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = CompassBaseRichCircularDialView;
  [(CompassRichDialView *)&v32 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4, v5);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  device = self->_device;
  v10 = objc_msgSend__supportedFamily(self, v7, v8, v9, 0, 0);
  sub_23BD3D108(device, v10, &v29);
  objc_msgSend_frame(self->_headingLabel, v11, v12, v13);
  objc_msgSend__lastLineBaseline(self->_headingLabel, v14, v15, v16);
  CLKRectCenteredXInRectForDevice();
  objc_msgSend_setFrame_(self->_headingLabel, v17, v18, v19);
  objc_msgSend_frame(self->_directionLabel, v20, v21, v22);
  objc_msgSend__lastLineBaseline(self->_directionLabel, v23, v24, v25);
  CLKRectCenteredXInRectForDevice();
  objc_msgSend_setFrame_(self->_directionLabel, v26, v27, v28);
}

- (id)headingRedactionLabel
{
  if (qword_27E1C50C0 != -1)
  {
    sub_23BD660CC();
  }

  v3 = qword_27E1C50B8;

  return v3;
}

- (id)directionRedactionLabel
{
  if (qword_27E1C50D0 != -1)
  {
    sub_23BD660E0();
  }

  v3 = qword_27E1C50C8;

  return v3;
}

- (int64_t)_supportedFamily
{
  sub_23BD29238();
  sub_23BD2921C();
  return 10;
}

- (id)_ticksImageName
{
  sub_23BD29238();
  sub_23BD2921C();
  return 0;
}

- (id)_needleNorthImageName
{
  sub_23BD29238();
  sub_23BD2921C();
  return 0;
}

- (id)_needleSouthImageName
{
  sub_23BD29238();
  sub_23BD2921C();
  return 0;
}

- (id)_needleShadowImageName
{
  sub_23BD29238();
  sub_23BD2921C();
  return 0;
}

@end