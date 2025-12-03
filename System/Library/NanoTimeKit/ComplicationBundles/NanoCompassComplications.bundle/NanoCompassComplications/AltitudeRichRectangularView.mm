@interface AltitudeRichRectangularView
- (RectLayoutConstants)_layoutConstantsForDevice:(id)device;
- (id)_altitudeLabel;
- (id)_constraints;
- (id)_createVerticalStackViewWithLabels:(id)labels;
- (id)_headlineLabel;
- (id)contentFont;
- (id)headlineFont;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)monochromeAccentViews;
- (id)monochromeOtherViews;
- (id)redactionLabel;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
@end

@implementation AltitudeRichRectangularView

- (id)initFullColorImageViewWithDevice:(id)device
{
  v52[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v51.receiver = self;
  v51.super_class = AltitudeRichRectangularView;
  v5 = [(NanoCompassBaseRichView *)&v51 initFullColorImageViewWithDevice:deviceCopy];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_setClipsToBounds_(v5, v6, 1, v7);
    objc_msgSend__layoutConstantsForDevice_(v8, v9, deviceCopy, v10);
    *(v8 + 58) = v11;
    *(v8 + 59) = v12;
    *(v8 + 60) = v13;
    v14 = objc_alloc_init(MEMORY[0x277D756D0]);
    v15 = *(v8 + 61);
    *(v8 + 61) = v14;

    objc_msgSend_addLayoutGuide_(v8, v16, *(v8 + 61), v17);
    objc_msgSend_screenBounds(deviceCopy, v18, v19, v20);
    v22 = v21 * 0.042;
    *(v8 + 57) = ceilf(v22);
    v26 = objc_msgSend__headlineLabel(v8, v23, v24, v25);
    v27 = *(v8 + 55);
    *(v8 + 55) = v26;

    v31 = objc_msgSend__altitudeLabel(v8, v28, v29, v30);
    v32 = *(v8 + 54);
    *(v8 + 54) = v31;

    v52[0] = *(v8 + 55);
    v52[1] = *(v8 + 54);
    v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v33, v52, 2);
    v37 = objc_msgSend__createVerticalStackViewWithLabels_(v8, v35, v34, v36);
    v38 = *(v8 + 56);
    *(v8 + 56) = v37;

    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(*(v8 + 56), v39, 0, v40);
    objc_msgSend_addSubview_(v8, v41, *(v8 + 56), v42);
    v43 = MEMORY[0x277CCAAD0];
    v47 = objc_msgSend__constraints(v8, v44, v45, v46);
    objc_msgSend_activateConstraints_(v43, v48, v47, v49);
  }

  return v8;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v49.receiver = self;
  v49.super_class = AltitudeRichRectangularView;
  [(NanoCompassBaseRichView *)&v49 configureWithImageProvider:providerCopy reason:reason];
  v10 = objc_msgSend_metadata(providerCopy, v7, v8, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"altitude", v12);

  v17 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15, v16);
  isEqual = objc_msgSend_isEqual_(v13, v18, v17, v19);

  if (isEqual)
  {

    v13 = 0;
  }

  v24 = objc_msgSend_metadata(providerCopy, v21, v22, v23);
  v27 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"nodata", v26);
  v31 = objc_msgSend_BOOLValue(v27, v28, v29, v30);

  if (v31)
  {
    v35 = objc_msgSend_redactionLabel(self, v32, v33, v34);
    objc_msgSend_setText_(self->_altitudeLabel, v36, v35, v37);
  }

  else
  {
    if (v13)
    {
      v38 = MEMORY[0x277CCABB0];
      objc_msgSend_altitude(v13, v32, v33, v34);
      v35 = objc_msgSend_numberWithDouble_(v38, v39, v40, v41);
      v45 = objc_msgSend_displayTilde(v13, v42, v43, v44);
    }

    else
    {
      v35 = 0;
      v45 = 0;
    }

    v46 = NanoCompassValueAndUnit(v35, 0, v45, 0);
    objc_msgSend_setText_(self->_altitudeLabel, v47, v46, v48);
  }
}

- (id)monochromeAccentViews
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_headline;
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);

  return v2;
}

- (id)monochromeOtherViews
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_altitudeLabel;
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);

  return v2;
}

- (RectLayoutConstants)_layoutConstantsForDevice:(id)device
{
  sub_23BD465C0(self, device);
  v3 = *&qword_27E1C51E0;
  v4 = *&qword_27E1C51E8;
  v5 = *&qword_27E1C51F0;
  result.valueFontSize = v5;
  result.symbolSize = v4;
  result.headlineSize = v3;
  return result;
}

- (id)_altitudeLabel
{
  v3 = objc_opt_new();
  v7 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v4, v5, v6);
  objc_msgSend_setTextColor_(v3, v8, v7, v9);

  v13 = objc_msgSend_contentFont(self, v10, v11, v12);
  objc_msgSend_setFont_(v3, v14, v13, v15);

  return v3;
}

- (id)_headlineLabel
{
  v3 = objc_opt_new();
  v7 = objc_msgSend_headlineFont(self, v4, v5, v6);
  objc_msgSend_setFont_(v3, v8, v7, v9);

  v10 = NanoCompassAppTintColor();
  objc_msgSend_setTextColor_(v3, v11, v10, v12);

  v13 = objc_alloc_init(MEMORY[0x277D74270]);
  v17 = objc_msgSend_configurationWithPointSize_(MEMORY[0x277D755D0], v14, v15, v16, self->_layoutConstants.symbolSize);
  v19 = objc_msgSend_systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v18, @"mountain.2.fill", v17);
  v20 = NanoCompassAppTintColor();
  v22 = objc_msgSend_imageWithTintColor_renderingMode_(v19, v21, v20, 1);
  objc_msgSend_setImage_(v13, v23, v22, v24);

  v27 = objc_msgSend_attributedStringWithAttachment_(MEMORY[0x277CCA898], v25, v13, v26);
  v28 = objc_alloc(MEMORY[0x277CCAB48]);
  v31 = objc_msgSend_initWithAttributedString_(v28, v29, v27, v30);
  v32 = NanoCompassLocalizedString(@"ALTITUDE_ELEVATION_TEXT");
  v33 = objc_alloc(MEMORY[0x277CCA898]);
  v36 = objc_msgSend_initWithString_(v33, v34, v32, v35);
  objc_msgSend_appendAttributedString_(v31, v37, v36, v38);
  objc_msgSend_setAttributedText_(v3, v39, v31, v40);

  return v3;
}

- (id)_createVerticalStackViewWithLabels:(id)labels
{
  v3 = MEMORY[0x277D75A68];
  labelsCopy = labels;
  v5 = [v3 alloc];
  v8 = objc_msgSend_initWithArrangedSubviews_(v5, v6, labelsCopy, v7);

  objc_msgSend_setAlignment_(v8, v9, 1, v10);
  objc_msgSend_setAxis_(v8, v11, 1, v12);
  objc_msgSend_systemLayoutSizeFittingSize_(v8, v13, v14, v15, *MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8));
  objc_msgSend_setFrame_(v8, v16, v17, v18, 0.0, 0.0, v19, v20);

  return v8;
}

- (id)_constraints
{
  v71[6] = *MEMORY[0x277D85DE8];
  v70 = objc_msgSend_leadingAnchor(self->_layoutGuide, a2, v2, v3);
  v69 = objc_msgSend_leadingAnchor(self, v5, v6, v7);
  v68 = objc_msgSend_constraintEqualToAnchor_constant_(v70, v8, v69, v9, self->_leadingMargin);
  v71[0] = v68;
  v67 = objc_msgSend_trailingAnchor(self->_layoutGuide, v10, v11, v12);
  v66 = objc_msgSend_trailingAnchor(self, v13, v14, v15);
  v65 = objc_msgSend_constraintEqualToAnchor_(v67, v16, v66, v17);
  v71[1] = v65;
  v64 = objc_msgSend_topAnchor(self->_layoutGuide, v18, v19, v20);
  v63 = objc_msgSend_topAnchor(self, v21, v22, v23);
  v26 = objc_msgSend_constraintEqualToAnchor_(v64, v24, v63, v25);
  v71[2] = v26;
  v30 = objc_msgSend_bottomAnchor(self->_layoutGuide, v27, v28, v29);
  v34 = objc_msgSend_bottomAnchor(self, v31, v32, v33);
  v37 = objc_msgSend_constraintEqualToAnchor_(v30, v35, v34, v36);
  v71[3] = v37;
  v41 = objc_msgSend_centerYAnchor(self->_content, v38, v39, v40);
  v45 = objc_msgSend_centerYAnchor(self->_layoutGuide, v42, v43, v44);
  v48 = objc_msgSend_constraintEqualToAnchor_(v41, v46, v45, v47);
  v71[4] = v48;
  v52 = objc_msgSend_leadingAnchor(self->_content, v49, v50, v51);
  v56 = objc_msgSend_leadingAnchor(self->_layoutGuide, v53, v54, v55);
  v59 = objc_msgSend_constraintEqualToAnchor_(v52, v57, v56, v58);
  v71[5] = v59;
  v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v60, v71, 6);

  return v62;
}

- (id)headlineFont
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD4629C;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  if (qword_27E1C51B0 != -1)
  {
    dispatch_once(&qword_27E1C51B0, block);
  }

  return qword_27E1C51A0;
}

- (id)contentFont
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD463C0;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  if (qword_27E1C51C8 != -1)
  {
    dispatch_once(&qword_27E1C51C8, block);
  }

  return qword_27E1C51B8;
}

- (id)redactionLabel
{
  if (qword_27E1C51D8 != -1)
  {
    sub_23BD66C80();
  }

  v3 = qword_27E1C51D0;

  return v3;
}

@end