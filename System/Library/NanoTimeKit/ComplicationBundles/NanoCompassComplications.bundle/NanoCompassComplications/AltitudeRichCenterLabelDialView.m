@interface AltitudeRichCenterLabelDialView
- (id)_newBottomView;
- (id)_newTopView;
- (id)initFullColorImageViewWithDevice:(id)a3 withLayoutConstants:(LayoutConstants *)a4;
- (id)monochromeOtherViews;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)layoutLabelInCenterWithTopAndBottomAssets;
@end

@implementation AltitudeRichCenterLabelDialView

- (id)initFullColorImageViewWithDevice:(id)a3 withLayoutConstants:(LayoutConstants *)a4
{
  v7 = a3;
  v32.receiver = self;
  v32.super_class = AltitudeRichCenterLabelDialView;
  v8 = [(AltitudeRichDialView *)&v32 initFullColorImageViewWithDevice:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 56, a3);
    v12 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], v10, a4->var2, v11, a4->var0, a4->var1);
    v16 = objc_msgSend_CLKFontWithLocalizedLowerCaseSmallCaps(v12, v13, v14, v15);

    v17 = objc_opt_new();
    v18 = v9[57];
    v9[57] = v17;

    v22 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v19, v20, v21);
    objc_msgSend_setTextColor_(v9[57], v23, v22, v24);

    objc_msgSend_setFont_(v9[57], v25, v16, v26);
    objc_msgSend_setTextAlignment_(v9[57], v27, 1, v28);
    v9[58] = *&a4->var4;
    objc_msgSend_addSubview_(v9, v29, v9[57], v30);
  }

  return v9;
}

- (id)monochromeOtherViews
{
  v8.receiver = self;
  v8.super_class = AltitudeRichCenterLabelDialView;
  v3 = [(AltitudeRichDialView *)&v8 monochromeOtherViews];
  v6 = objc_msgSend_arrayByAddingObject_(v3, v4, self->_altitudeLabel, v5);

  return v6;
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v53.receiver = self;
  v53.super_class = AltitudeRichCenterLabelDialView;
  [(NanoCompassBaseRichView *)&v53 configureWithImageProvider:v6 reason:a4];
  v10 = objc_msgSend_metadata(v6, v7, v8, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"altitude", v12);

  v17 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15, v16);
  isEqual = objc_msgSend_isEqual_(v13, v18, v17, v19);

  if (isEqual)
  {

    v13 = 0;
  }

  v24 = objc_msgSend_metadata(v6, v21, v22, v23);
  v27 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"nodata", v26);
  v31 = objc_msgSend_BOOLValue(v27, v28, v29, v30);

  altitudeLabel = self->_altitudeLabel;
  if (v31)
  {
    objc_msgSend_setHidden_(altitudeLabel, v32, 1, v33);
  }

  else
  {
    objc_msgSend_setHidden_(altitudeLabel, v32, 0, v33);
    if (v13)
    {
      v38 = MEMORY[0x277CCABB0];
      objc_msgSend_altitude(v13, v35, v36, v37);
      v42 = objc_msgSend_numberWithDouble_(v38, v39, v40, v41);
    }

    else
    {
      v42 = 0;
    }

    v43 = objc_msgSend_displayTilde(v13, v35, v36, v37);
    v46 = NanoCompassValueAndUnit(v42, 0, v43, 0);
    if (v13)
    {
    }

    objc_msgSend_setText_(self->_altitudeLabel, v44, v46, v45);
    objc_msgSend_sizeToFit(self->_altitudeLabel, v47, v48, v49);
    objc_msgSend_setNeedsLayout(self, v50, v51, v52);
  }
}

- (void)layoutLabelInCenterWithTopAndBottomAssets
{
  objc_msgSend_bounds(self, a2, v2, v3);
  objc_msgSend_frame(self->_altitudeLabel, v5, v6, v7);
  CLKRectCenteredIntegralRectForDevice();
  objc_msgSend_setFrame_(self->_altitudeLabel, v8, v9, v10);
  altitudeLabelHeight = self->_altitudeLabelHeight;
  objc_msgSend_screenScale(self->_device, v12, v13, v14);
  v66 = altitudeLabelHeight / v15;
  v19 = objc_msgSend_topView(self, v16, v17, v18);
  objc_msgSend_frame(v19, v20, v21, v22);
  v24 = v23;
  v26 = v25;
  v63 = v27;
  v29 = v28;

  v33 = objc_msgSend_bottomView(self, v30, v31, v32);
  objc_msgSend_frame(v33, v34, v35, v36);
  v38 = v37;
  rect = v39;
  v41 = v40;
  v64 = v40;
  v65 = v42;
  v43 = v42;

  v69.origin.x = v24;
  v69.origin.y = v26;
  v69.size.width = v63;
  v69.size.height = v29;
  CGRectGetHeight(v69);
  v70.origin.x = v38;
  v70.origin.y = rect;
  v70.size.width = v41;
  v70.size.height = v43;
  CGRectGetHeight(v70);
  v71.origin.x = v24;
  v71.origin.y = v26;
  v71.size.width = v63;
  v71.size.height = v29;
  CGRectGetWidth(v71);
  CLKRectCenteredIntegralRectForDevice();
  v45 = v44;
  v47 = v46;
  v51 = objc_msgSend_topView(self, v48, v49, v50);
  objc_msgSend_setFrame_(v51, v52, v53, v54, v45, v47, v63, v29);

  v72.origin.x = v45;
  v72.origin.y = v47;
  v72.size.width = v63;
  v72.size.height = v29;
  v55 = v66 + CGRectGetMaxY(v72);
  v67 = objc_msgSend_bottomView(self, v56, v57, v58);
  objc_msgSend_setFrame_(v67, v59, v60, v61, v45, v55, v64, v65);
}

- (id)_newTopView
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)_newBottomView
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end