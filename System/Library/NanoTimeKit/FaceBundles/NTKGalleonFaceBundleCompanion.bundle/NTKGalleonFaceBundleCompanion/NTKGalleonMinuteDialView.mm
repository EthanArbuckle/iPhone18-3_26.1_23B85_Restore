@interface NTKGalleonMinuteDialView
+ (id)_newLabelViewWithDevice:(id)device;
- (NTKGalleonMinuteDialView)initWithDevice:(id)device;
- (void)galleon_setPalette:(id)palette;
- (void)galleon_setProgress:(double)progress;
@end

@implementation NTKGalleonMinuteDialView

- (NTKGalleonMinuteDialView)initWithDevice:(id)device
{
  deviceCopy = device;
  objc_storeStrong(&self->_device, device);
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  _NTKGalleonLayoutConstants(self->_device, &v64);
  v63.receiver = self;
  v63.super_class = NTKGalleonMinuteDialView;
  v6 = [(NTKGalleonMinuteDialView *)&v63 initWithFrame:0.0, 0.0, *&v64, *&v64];
  v10 = v6;
  if (v6)
  {
    v11 = objc_msgSend_layer(v6, v7, v8, v9);
    v15 = objc_msgSend_currentDevice(MEMORY[0x277CBBAE8], v12, v13, v14);
    objc_msgSend_screenScale(v15, v16, v17, v18);
    objc_msgSend_setRasterizationScale_(v11, v19, v20, v21);

    v23 = objc_msgSend_galleon_newTickViewWithDevice_numberOfTicks_tickSizes_(NTKGalleonTickView, v22, v10->_device, 240, *(&v69 + 1), v70, *&v71);
    v24 = [NTKGalleonRasterizableProgressView alloc];
    v27 = objc_msgSend_initWithProgressView_(v24, v25, v23, v26);
    minorTickView = v10->_minorTickView;
    v10->_minorTickView = v27;

    objc_msgSend_addSubview_(v10, v29, v10->_minorTickView, v30);
    v32 = objc_msgSend_galleon_newTickViewWithDevice_numberOfTicks_tickSizes_(NTKGalleonTickView, v31, v10->_device, 60, *(&v67 + 1), v68, *&v69);
    v33 = [NTKGalleonRasterizableProgressView alloc];
    v36 = objc_msgSend_initWithProgressView_(v33, v34, v32, v35);
    majorTickView = v10->_majorTickView;
    v10->_majorTickView = v36;

    objc_msgSend_addSubview_(v10, v38, v10->_majorTickView, v39);
    v41 = objc_msgSend_galleon_newTickViewWithDevice_numberOfTicks_tickSizes_(NTKGalleonTickView, v40, v10->_device, 12, *(&v65 + 1), v66, *&v67);
    v42 = [NTKGalleonRasterizableProgressView alloc];
    v45 = objc_msgSend_initWithProgressView_(v42, v43, v41, v44);
    labelTickView = v10->_labelTickView;
    v10->_labelTickView = v45;

    objc_msgSend_addSubview_(v10, v47, v10->_labelTickView, v48);
    v51 = objc_msgSend__newLabelViewWithDevice_(NTKGalleonMinuteDialView, v49, v10->_device, v50);
    v52 = [NTKGalleonRasterizableProgressView alloc];
    v55 = objc_msgSend_initWithProgressView_(v52, v53, v51, v54);
    labelView = v10->_labelView;
    v10->_labelView = v55;

    objc_msgSend_addSubview_(v10, v57, v10->_labelView, v58);
    objc_msgSend_galleon_setProgress_(v10, v59, v60, v61, 0.0);
  }

  return v10;
}

- (void)galleon_setPalette:(id)palette
{
  paletteCopy = palette;
  v28 = objc_msgSend_outerTimeLabelColor(paletteCopy, v5, v6, v7);
  objc_msgSend_setTintColor_(self->_labelView, v8, v28, v9);
  v13 = objc_msgSend_outerTimeMajorTickColor(paletteCopy, v10, v11, v12);
  objc_msgSend_setTintColor_(self->_labelTickView, v14, v13, v15);
  v19 = objc_msgSend_outerTimeMinorTickColor(paletteCopy, v16, v17, v18);
  objc_msgSend_setTintColor_(self->_minorTickView, v20, v19, v21);
  v25 = objc_msgSend_outerTimeMedialTickColor(paletteCopy, v22, v23, v24);

  objc_msgSend_setTintColor_(self->_majorTickView, v26, v25, v27);
}

- (void)galleon_setProgress:(double)progress
{
  v6 = 1.0 - progress;
  objc_msgSend_galleon_setProgress_(self->_minorTickView, a2, v3, v4, 1.0 - progress);
  objc_msgSend_galleon_setProgress_(self->_majorTickView, v7, v8, v9, v6);
  objc_msgSend_galleon_setProgress_(self->_labelTickView, v10, v11, v12, v6);
  labelView = self->_labelView;

  objc_msgSend_galleon_setProgress_(labelView, v13, v14, v15, v6);
}

+ (id)_newLabelViewWithDevice:(id)device
{
  v62 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v3 = objc_opt_new();
  objc_msgSend_setMinimumIntegerDigits_(v3, v4, 2, v5);
  v53 = objc_msgSend_stringFromNumber_(v3, v6, &unk_284EA7A88, v7);
  v52 = objc_msgSend_stringFromNumber_(v3, v8, &unk_284EA7AA0, v9);
  v50 = objc_msgSend_stringFromNumber_(v3, v10, &unk_284EA7AB8, v11);
  v49 = objc_msgSend_stringFromNumber_(v3, v12, &unk_284EA7AD0, v13);
  v48 = objc_msgSend_stringFromNumber_(v3, v14, &unk_284EA7AE8, v15);
  v18 = objc_msgSend_stringFromNumber_(v3, v16, &unk_284EA7B00, v17);
  v21 = objc_msgSend_stringFromNumber_(v3, v19, &unk_284EA7B18, v20);
  v24 = objc_msgSend_stringFromNumber_(v3, v22, &unk_284EA7B30, v23);
  v27 = objc_msgSend_stringFromNumber_(v3, v25, &unk_284EA7B48, v26);
  v30 = objc_msgSend_stringFromNumber_(v3, v28, &unk_284EA7B60, v29);
  v33 = objc_msgSend_stringFromNumber_(v3, v31, &unk_284EA7B78, v32);
  objc_msgSend_stringFromNumber_(v3, v34, &unk_284EA7B90, v35);
  v60[0] = v53;
  v60[1] = v52;
  v60[2] = v50;
  v60[3] = v49;
  v60[4] = v48;
  v60[5] = v18;
  v60[6] = v21;
  v60[7] = v24;
  v60[8] = v27;
  v60[9] = v30;
  v36 = v30;
  v61 = v60[10] = v33;
  v37 = v33;
  v38 = v61;
  v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, v60, 12);
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  memset(v54, 0, sizeof(v54));
  _NTKGalleonLayoutConstants(deviceCopy, v54);

  v41 = *v54;
  v42 = *(&v55 + 1);
  v43 = *&v56;
  v44 = [NTKGalleonRadialLabelView alloc];
  v46 = objc_msgSend_initWithDialDiameter_rightSideUp_labels_paddingRange_(v44, v45, 1, v40, v41, v42, v43);

  return v46;
}

@end