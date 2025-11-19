@interface NTKGalleonTimeRingView
+ (id)_imageWithDevice:(id)a3 renderer:(id)a4 diameter:(double)a5 tickCount:(unint64_t)a6 tickSize:(CGSize)a7;
- (NTKGalleonTimeRingView)initWithDevice:(id)a3 diameter:(double)a4;
- (double)ringThickness;
- (void)setPalette:(id)a3;
@end

@implementation NTKGalleonTimeRingView

+ (id)_imageWithDevice:(id)a3 renderer:(id)a4 diameter:(double)a5 tickCount:(unint64_t)a6 tickSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v12 = a4;
  v13 = a3;
  v14 = [NTKGalleonTickView alloc];
  v16 = objc_msgSend_initWithDevice_dialDiameter_numberOfTicks_tickSizes_(v14, v15, v13, a6, a5, width, width, height, height);

  v20 = objc_msgSend_blackColor(MEMORY[0x277D75348], v17, v18, v19);
  objc_msgSend_setTintColor_(v16, v21, v20, v22);

  objc_msgSend_setNeedsLayout(v16, v23, v24, v25);
  objc_msgSend_layoutIfNeeded(v16, v26, v27, v28);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_23BE96DF0;
  v37[3] = &unk_278B9EDE0;
  v38 = v16;
  v29 = v16;
  v32 = objc_msgSend_imageWithActions_(v12, v30, v37, v31);

  v35 = objc_msgSend_imageWithRenderingMode_(v32, v33, 2, v34);

  return v35;
}

- (NTKGalleonTimeRingView)initWithDevice:(id)a3 diameter:(double)a4
{
  v6 = a3;
  v129.receiver = self;
  v129.super_class = NTKGalleonTimeRingView;
  v10 = [(NTKGalleonTimeRingView *)&v129 initWithFrame:0.0, 0.0, a4, a4];
  if (v10)
  {
    if (qword_27E1DD8A8 != -1)
    {
      sub_23BEA422C();
    }

    v11 = *&qword_27E1DD880;
    v12 = *&qword_27E1DD888;
    v13 = *&qword_27E1DD890;
    v14 = *&qword_27E1DD898;
    v15 = a4 + *&qword_27E1DD8A0 * -2.0;
    v16 = objc_msgSend_layer(MEMORY[0x277CD9F90], v7, v8, v9);
    v20 = objc_msgSend_bezierPathWithOvalInRect_(MEMORY[0x277D75208], v17, v18, v19, 0.0, 0.0, a4, a4);
    v21 = v20;
    v25 = objc_msgSend_CGPath(v21, v22, v23, v24);
    objc_msgSend_setPath_(v16, v26, v25, v27);

    v31 = objc_msgSend_blackColor(MEMORY[0x277D75348], v28, v29, v30);
    v32 = v31;
    v36 = objc_msgSend_CGColor(v32, v33, v34, v35);
    objc_msgSend_setFillColor_(v16, v37, v36, v38);

    objc_msgSend_setContentsFormat_(v16, v39, *MEMORY[0x277CDA0C8], v40);
    v44 = objc_msgSend_blackColor(MEMORY[0x277D75348], v41, v42, v43);
    v45 = v44;
    v49 = objc_msgSend_CGColor(v45, v46, v47, v48);
    objc_msgSend_setContentsMultiplyColor_(v16, v50, v49, v51);

    objc_msgSend_setBounds_(v16, v52, v53, v54, 0.0, 0.0, a4, a4);
    v55 = objc_alloc(MEMORY[0x277D75560]);
    v59 = objc_msgSend_initWithSize_(v55, v56, v57, v58, a4, a4);
    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v127[2] = sub_23BE9727C;
    v127[3] = &unk_278B9EDE0;
    v128 = v16;
    v60 = v16;
    v63 = objc_msgSend_imageWithActions_(v59, v61, v127, v62);
    v66 = objc_msgSend_imageWithRenderingMode_(v63, v64, 2, v65);
    v67 = objc_alloc(MEMORY[0x277D755E8]);
    v70 = objc_msgSend_initWithImage_(v67, v68, v66, v69);
    objc_msgSend_setCenter_(v70, v71, v72, v73, a4 * 0.5, a4 * 0.5);
    v74 = *(v10 + 51);
    *(v10 + 51) = v70;
    v75 = v70;

    objc_msgSend_addSubview_(v10, v76, v75, v77);
    v81 = objc_msgSend_preferredFormat(MEMORY[0x277D75568], v78, v79, v80);
    objc_msgSend_scale(v81, v82, v83, v84);
    objc_msgSend_setScale_(v81, v86, v87, v88, v85 * 4.0);
    v89 = objc_alloc(MEMORY[0x277D75560]);
    v92 = objc_msgSend_initWithSize_format_(v89, v90, v81, v91, v15, v15);
    v94 = objc_msgSend__imageWithDevice_renderer_diameter_tickCount_tickSize_(NTKGalleonTimeRingView, v93, v6, v92, 120, v15, v14, v13);
    v95 = objc_alloc(MEMORY[0x277D755E8]);
    v98 = objc_msgSend_initWithImage_(v95, v96, v94, v97);
    v99 = *(v10 + 52);
    *(v10 + 52) = v98;

    objc_msgSend_setFrame_(*(v10 + 52), v100, v101, v102, 0.0, 0.0, v15, v15);
    objc_msgSend_addSubview_(v10, v103, *(v10 + 52), v104);
    objc_msgSend_setCenter_(*(v10 + 52), v105, v106, v107, a4 * 0.5, a4 * 0.5);

    v108 = objc_alloc(MEMORY[0x277D75560]);
    v112 = objc_msgSend_initWithSize_(v108, v109, v110, v111, v15, v15);
    v114 = objc_msgSend__imageWithDevice_renderer_diameter_tickCount_tickSize_(NTKGalleonTimeRingView, v113, v6, v112, 12, v15, v12, v11);
    v115 = objc_alloc(MEMORY[0x277D755E8]);
    v118 = objc_msgSend_initWithImage_(v115, v116, v114, v117);
    v119 = *(v10 + 53);
    *(v10 + 53) = v118;

    objc_msgSend_addSubview_(v10, v120, *(v10 + 53), v121);
    objc_msgSend_setCenter_(*(v10 + 53), v122, v123, v124, a4 * 0.5, a4 * 0.5);

    v125 = v10;
  }

  return v10;
}

- (double)ringThickness
{
  if (qword_27E1DD8A8 != -1)
  {
    sub_23BEA4254();
  }

  return *&qword_27E1DD878;
}

- (void)setPalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);
  v5 = a3;
  v23 = objc_msgSend_innerRingBackgroundColor(v5, v6, v7, v8);
  objc_msgSend_setTintColor_(self->_ringImageView, v9, v23, v10);
  v14 = objc_msgSend_innerMajorTickColor(v5, v11, v12, v13);
  objc_msgSend_setTintColor_(self->_majorTicksImageView, v15, v14, v16);
  v20 = objc_msgSend_innerMinorTickColor(v5, v17, v18, v19);
  objc_msgSend_setTintColor_(self->_minorTicksImageView, v21, v20, v22);
}

@end