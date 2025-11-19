@interface NTKGalleonHourDialView
+ (id)_newLabelViewWithDevice:(id)a3;
- (NTKGalleonHourDialView)initWithDevice:(id)a3;
- (void)galleon_setPalette:(id)a3;
- (void)galleon_setProgress:(double)a3;
@end

@implementation NTKGalleonHourDialView

- (NTKGalleonHourDialView)initWithDevice:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_device, a3);
  v75 = 0;
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
  memset(v64, 0, sizeof(v64));
  _NTKGalleonLayoutConstants(self->_device, v64);
  v63.receiver = self;
  v63.super_class = NTKGalleonHourDialView;
  v6 = [(NTKGalleonHourDialView *)&v63 initWithFrame:0.0, 0.0, *v64, *v64];
  v10 = v6;
  if (v6)
  {
    v11 = objc_msgSend_layer(v6, v7, v8, v9);
    v15 = objc_msgSend_currentDevice(MEMORY[0x277CBBAE8], v12, v13, v14);
    objc_msgSend_screenScale(v15, v16, v17, v18);
    objc_msgSend_setRasterizationScale_(v11, v19, v20, v21);

    v23 = objc_msgSend_galleon_newTickViewWithDevice_numberOfTicks_tickSizes_(NTKGalleonTickView, v22, v10->_device, 120, *(&v69 + 1), v70, *&v71);
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
    v51 = objc_msgSend__newLabelViewWithDevice_(NTKGalleonHourDialView, v49, v10->_device, v50);
    v52 = [NTKGalleonRasterizableProgressView alloc];
    v55 = objc_msgSend_initWithProgressView_(v52, v53, v51, v54);
    labelView = v10->_labelView;
    v10->_labelView = v55;

    objc_msgSend_addSubview_(v10, v57, v10->_labelView, v58);
    objc_msgSend_galleon_setProgress_(v10, v59, v60, v61, 0.0);
  }

  return v10;
}

- (void)galleon_setPalette:(id)a3
{
  v4 = a3;
  v28 = objc_msgSend_outerTimeLabelColor(v4, v5, v6, v7);
  objc_msgSend_setTintColor_(self->_labelView, v8, v28, v9);
  v13 = objc_msgSend_outerTimeMajorTickColor(v4, v10, v11, v12);
  objc_msgSend_setTintColor_(self->_labelTickView, v14, v13, v15);
  v19 = objc_msgSend_outerTimeMinorTickColor(v4, v16, v17, v18);
  objc_msgSend_setTintColor_(self->_minorTickView, v20, v19, v21);
  v25 = objc_msgSend_outerTimeMedialTickColor(v4, v22, v23, v24);

  objc_msgSend_setTintColor_(self->_majorTickView, v26, v25, v27);
}

- (void)galleon_setProgress:(double)a3
{
  v6 = 1.0 - a3;
  objc_msgSend_galleon_setProgress_(self->_minorTickView, a2, v3, v4, 1.0 - a3);
  objc_msgSend_galleon_setProgress_(self->_majorTickView, v7, v8, v9, v6);
  objc_msgSend_galleon_setProgress_(self->_labelTickView, v10, v11, v12, v6);
  labelView = self->_labelView;

  objc_msgSend_galleon_setProgress_(labelView, v13, v14, v15, v6);
}

+ (id)_newLabelViewWithDevice:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v48 = a3;
  v3 = objc_opt_new();
  v50 = objc_msgSend_stringFromNumber_(v3, v4, &unk_284EA7ED8, v5);
  v49 = objc_msgSend_stringFromNumber_(v3, v6, &unk_284EA7EF0, v7);
  v47 = objc_msgSend_stringFromNumber_(v3, v8, &unk_284EA7F08, v9);
  v46 = objc_msgSend_stringFromNumber_(v3, v10, &unk_284EA7F20, v11);
  v45 = objc_msgSend_stringFromNumber_(v3, v12, &unk_284EA7F38, v13);
  v16 = objc_msgSend_stringFromNumber_(v3, v14, &unk_284EA7F50, v15);
  v19 = objc_msgSend_stringFromNumber_(v3, v17, &unk_284EA7F68, v18);
  v22 = objc_msgSend_stringFromNumber_(v3, v20, &unk_284EA7F80, v21);
  v25 = objc_msgSend_stringFromNumber_(v3, v23, &unk_284EA7F98, v24);
  v28 = objc_msgSend_stringFromNumber_(v3, v26, &unk_284EA7FB0, v27);
  v31 = objc_msgSend_stringFromNumber_(v3, v29, &unk_284EA7FC8, v30);
  objc_msgSend_stringFromNumber_(v3, v32, &unk_284EA7FE0, v33);
  v57[0] = v50;
  v57[1] = v49;
  v57[2] = v47;
  v57[3] = v46;
  v57[4] = v45;
  v57[5] = v16;
  v57[6] = v19;
  v57[7] = v22;
  v57[8] = v25;
  v57[9] = v28;
  v34 = v28;
  v58 = v57[10] = v31;
  v35 = v58;
  v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v36, v57, 12);
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  memset(v51, 0, sizeof(v51));
  _NTKGalleonLayoutConstants(v48, v51);

  v38 = *v51;
  v39 = *(&v52 + 1);
  v40 = *&v53;
  v41 = [NTKGalleonRadialLabelView alloc];
  v43 = objc_msgSend_initWithDialDiameter_rightSideUp_labels_paddingRange_(v41, v42, 1, v37, v38, v39, v40);

  return v43;
}

@end