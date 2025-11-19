@interface NTKGalleonDegreeDialView
+ (id)_newLabelViewWithDevice:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NTKGalleonDegreeDialView)initWithDevice:(id)a3;
- (void)galleon_setHeading:(double)a3;
- (void)galleon_setPalette:(id)a3;
- (void)galleon_setProgress:(double)a3;
- (void)setChevronAndLabelOpacity:(double)a3;
@end

@implementation NTKGalleonDegreeDialView

- (NTKGalleonDegreeDialView)initWithDevice:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_device, a3);
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  _NTKGalleonLayoutConstants(self->_device, &v59);
  v58.receiver = self;
  v58.super_class = NTKGalleonDegreeDialView;
  v7 = [(NTKGalleonDegreeDialView *)&v58 initWithFrame:0.0, 0.0, *&v59, *&v59];
  if (v7)
  {
    v8 = objc_msgSend_galleon_newTickViewWithDevice_numberOfTicks_tickSizes_(NTKGalleonTickView, v6, *(v7 + 51), 360, *(&v64 + 1), v65, *&v66);
    v9 = [NTKGalleonRasterizableProgressView alloc];
    v12 = objc_msgSend_initWithProgressView_(v9, v10, v8, v11);
    v13 = *(v7 + 55);
    *(v7 + 55) = v12;

    objc_msgSend_addSubview_(v7, v14, *(v7 + 55), v15);
    v17 = objc_msgSend_galleon_newTickViewWithDevice_numberOfTicks_tickSizes_(NTKGalleonTickView, v16, *(v7 + 51), 72, *(&v62 + 1), v63, *&v64);
    v18 = [NTKGalleonRasterizableProgressView alloc];
    v21 = objc_msgSend_initWithProgressView_(v18, v19, v17, v20);
    v22 = *(v7 + 54);
    *(v7 + 54) = v21;

    objc_msgSend_addSubview_(v7, v23, *(v7 + 54), v24);
    v26 = objc_msgSend_galleon_newTickViewWithDevice_numberOfTicks_tickSizes_(NTKGalleonTickView, v25, *(v7 + 51), 12, *(&v60 + 1), v61, *&v62);
    v27 = [NTKGalleonRasterizableProgressView alloc];
    v30 = objc_msgSend_initWithProgressView_(v27, v28, v26, v29);
    v31 = *(v7 + 53);
    *(v7 + 53) = v30;

    objc_msgSend_addSubview_(v7, v32, *(v7 + 53), v33);
    v36 = objc_msgSend__newLabelViewWithDevice_(NTKGalleonDegreeDialView, v34, *(v7 + 51), v35);
    v37 = [NTKGalleonRasterizableProgressView alloc];
    v40 = objc_msgSend_initWithProgressView_(v37, v38, v36, v39);
    v41 = *(v7 + 52);
    *(v7 + 52) = v40;

    objc_msgSend_addSubview_(v7, v42, *(v7 + 52), v43);
    v47 = objc_msgSend__newChevronImageView(NTKGalleonDegreeDialView, v44, v45, v46);
    v48 = *(v7 + 56);
    *(v7 + 56) = v47;

    objc_msgSend_addSubview_(v7, v49, *(v7 + 56), v50);
    objc_msgSend_galleon_setProgress_(v7, v51, v52, v53, 1.0);
    objc_msgSend_galleon_setHeading_(v7, v54, v55, v56, 0.0);
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  _NTKGalleonLayoutConstants(self->_device, v5);
  v3 = v5[0];
  v4 = v5[0];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setChevronAndLabelOpacity:(double)a3
{
  objc_msgSend_setAlpha_(self->_chevronView, a2, v3, v4);
  labelView = self->_labelView;

  objc_msgSend_setAlpha_(labelView, v7, v8, v9, a3);
}

- (void)galleon_setHeading:(double)a3
{
  v5 = a3 / -180.0 * 3.14159265;
  v6 = objc_msgSend_layer(self, a2, v3, v4);
  CATransform3DMakeRotation(&v9, v5, 0.0, 0.0, 1.0);
  objc_msgSend_setTransform_(v6, v7, &v9, v8);
}

- (void)galleon_setPalette:(id)a3
{
  v4 = a3;
  v34 = objc_msgSend_outerDegreeLabelColor(v4, v5, v6, v7);
  objc_msgSend_setTintColor_(self->_labelTickView, v8, v34, v9);
  v13 = objc_msgSend_outerCompassMajorTickColor(v4, v10, v11, v12);
  objc_msgSend_setTintColor_(self->_labelView, v14, v13, v15);
  v19 = objc_msgSend_outerCompassMinorTickColor(v4, v16, v17, v18);
  objc_msgSend_setTintColor_(self->_minorTickView, v20, v19, v21);
  v25 = objc_msgSend_outerCompassMedialTickColor(v4, v22, v23, v24);
  objc_msgSend_setTintColor_(self->_majorTickView, v26, v25, v27);
  v31 = objc_msgSend_compassChevronColor(v4, v28, v29, v30);

  objc_msgSend_setTintColor_(self->_chevronView, v32, v31, v33);
}

- (void)galleon_setProgress:(double)a3
{
  v6 = 1.0 - a3;
  objc_msgSend_galleon_setProgress_(self->_minorTickView, a2, v3, v4, 1.0 - a3);
  objc_msgSend_galleon_setProgress_(self->_majorTickView, v7, v8, v9, v6);
  objc_msgSend_galleon_setProgress_(self->_labelTickView, v10, v11, v12, v6);
  objc_msgSend_galleon_setProgress_(self->_labelView, v13, v14, v15, v6);
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  _NTKGalleonLayoutConstants(self->_device, v25);
  v16 = NTKGalleonFloatRangePercentageValue(*(&v26 + 1), *&v27, v6);
  v17 = *v25 * 0.5;
  objc_msgSend_bounds(self->_chevronView, v18, v19, v20);
  Height = CGRectGetHeight(v30);
  objc_msgSend_setCenter_(self->_chevronView, v22, v23, v24, v17, v16 + Height * 0.5);
}

+ (id)_newLabelViewWithDevice:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v44 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v3, @"GALLEON_LABEL_EAST", @"E");
  v42 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v4, @"GALLEON_LABEL_SOUTH", @"S");
  v41 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v5, @"GALLEON_LABEL_WEST", @"W");
  v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v40 = objc_msgSend_stringFromNumber_(v6, v7, &unk_284EA7E18, v8);
  v11 = objc_msgSend_stringFromNumber_(v6, v9, &unk_284EA7E30, v10);
  v14 = objc_msgSend_stringFromNumber_(v6, v12, &unk_284EA7E48, v13);
  v17 = objc_msgSend_stringFromNumber_(v6, v15, &unk_284EA7E60, v16);
  v20 = objc_msgSend_stringFromNumber_(v6, v18, &unk_284EA7E78, v19);
  v23 = objc_msgSend_stringFromNumber_(v6, v21, &unk_284EA7E90, v22);
  v26 = objc_msgSend_stringFromNumber_(v6, v24, &unk_284EA7EA8, v25);
  objc_msgSend_stringFromNumber_(v6, v27, &unk_284EA7EC0, v28);
  v51[0] = &stru_284EA1D18;
  v51[1] = v40;
  v51[2] = v11;
  v51[3] = v44;
  v51[4] = v14;
  v51[5] = v17;
  v51[6] = v42;
  v51[7] = v20;
  v51[8] = v23;
  v51[9] = v41;
  v29 = v23;
  v52 = v51[10] = v26;
  v30 = v52;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v31, v51, 12);
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  memset(v45, 0, sizeof(v45));
  _NTKGalleonLayoutConstants(v43, v45);

  v33 = *v45;
  v34 = *(&v46 + 1);
  v35 = *&v47;
  v36 = [NTKGalleonRadialLabelView alloc];
  v38 = objc_msgSend_initWithDialDiameter_rightSideUp_labels_paddingRange_(v36, v37, 0, v32, v33, v34, v35);

  return v38;
}

@end