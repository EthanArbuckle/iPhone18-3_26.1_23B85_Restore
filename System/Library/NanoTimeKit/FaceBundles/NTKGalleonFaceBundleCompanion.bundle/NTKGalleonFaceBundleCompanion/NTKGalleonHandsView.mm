@interface NTKGalleonHandsView
- (id)hourHandConfiguration;
- (id)initForDevice:(id)a3;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
- (void)_applyPalette;
- (void)applyTransitionFractionToCompassMode:(unint64_t)a3 fraction:(double)a4;
- (void)setCompassMode:(unint64_t)a3;
- (void)setPalette:(id)a3;
@end

@implementation NTKGalleonHandsView

- (id)initForDevice:(id)a3
{
  self->_compassModeFraction = 0.0;
  v22.receiver = self;
  v22.super_class = NTKGalleonHandsView;
  v3 = [(NTKAnalogHandsView *)&v22 initForDevice:a3];
  v7 = v3;
  if (v3)
  {
    v3[78] = 0x3FF0000000000000;
    v8 = objc_msgSend_createHourHandView(v3, v4, v5, v6);
    v12 = objc_msgSend_createMinuteHandView(v7, v9, v10, v11);
    v16 = objc_msgSend_createSecondHandView(v7, v13, v14, v15);
    v21.receiver = v7;
    v21.super_class = NTKGalleonHandsView;
    [(NTKAnalogHandsView *)&v21 _installAltViewsHour:v8 minute:v12 second:v16];
    objc_msgSend__setAltHandsAlpha_(v7, v17, v18, v19, 0.0);
    v7[78] = 0;
  }

  return v7;
}

- (void)setPalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);

  MEMORY[0x2821F9670](self, sel__applyPalette, v4, v5);
}

- (void)_applyPalette
{
  v5 = objc_msgSend_palette(self, a2, v2, v3);
  v9 = objc_msgSend_timeHourHandInlayColor(v5, v6, v7, v8);
  v13 = objc_msgSend_hourHandView(self, v10, v11, v12);
  objc_msgSend_setInlayColor_(v13, v14, v9, v15);

  v19 = objc_msgSend_palette(self, v16, v17, v18);
  v23 = objc_msgSend_timeHourHandInlayColor(v19, v20, v21, v22);
  v27 = objc_msgSend_minuteHandView(self, v24, v25, v26);
  objc_msgSend_setInlayColor_(v27, v28, v23, v29);

  v33 = objc_msgSend_palette(self, v30, v31, v32);
  v37 = objc_msgSend_timeHourHandStrokeColor(v33, v34, v35, v36);
  v41 = objc_msgSend_hourHandView(self, v38, v39, v40);
  objc_msgSend_setColor_(v41, v42, v37, v43);

  v47 = objc_msgSend_palette(self, v44, v45, v46);
  v51 = objc_msgSend_timeHourHandStrokeColor(v47, v48, v49, v50);
  v55 = objc_msgSend_minuteHandView(self, v52, v53, v54);
  objc_msgSend_setColor_(v55, v56, v51, v57);

  v61 = objc_msgSend_palette(self, v58, v59, v60);
  v65 = objc_msgSend_secondHandColor(v61, v62, v63, v64);
  v69 = objc_msgSend_secondHandView(self, v66, v67, v68);
  objc_msgSend_setColor_(v69, v70, v65, v71);

  v75 = objc_msgSend_palette(self, v72, v73, v74);
  v79 = objc_msgSend_compassHourHandInlayColor(v75, v76, v77, v78);
  v83 = objc_msgSend_hourHandViewAlt(self, v80, v81, v82);
  objc_msgSend_setInlayColor_(v83, v84, v79, v85);

  v89 = objc_msgSend_palette(self, v86, v87, v88);
  v93 = objc_msgSend_compassHourHandInlayColor(v89, v90, v91, v92);
  v97 = objc_msgSend_minuteHandViewAlt(self, v94, v95, v96);
  objc_msgSend_setInlayColor_(v97, v98, v93, v99);

  v103 = objc_msgSend_palette(self, v100, v101, v102);
  v107 = objc_msgSend_compassHourHandStrokeColor(v103, v104, v105, v106);
  v111 = objc_msgSend_hourHandViewAlt(self, v108, v109, v110);
  objc_msgSend_setColor_(v111, v112, v107, v113);

  v117 = objc_msgSend_palette(self, v114, v115, v116);
  v121 = objc_msgSend_compassHourHandStrokeColor(v117, v118, v119, v120);
  v125 = objc_msgSend_minuteHandViewAlt(self, v122, v123, v124);
  objc_msgSend_setColor_(v125, v126, v121, v127);

  v141 = objc_msgSend_palette(self, v128, v129, v130);
  v134 = objc_msgSend_secondHandColor(v141, v131, v132, v133);
  v138 = objc_msgSend_secondHandViewAlt(self, v135, v136, v137);
  objc_msgSend_setColor_(v138, v139, v134, v140);
}

- (id)hourHandConfiguration
{
  v5 = objc_msgSend_device(self, a2, v2, v3, 0, 0, 0, 0, 0, 0);
  sub_23BE93EA8(v5, &v18);

  v6 = MEMORY[0x277CFA740];
  v10 = objc_msgSend_device(self, v7, v8, v9);
  v13 = objc_msgSend_defaultHourConfigurationForDevice_(v6, v11, v10, v12);

  CLKInterpolateBetweenFloatsClipped();
  objc_msgSend_setHandLength_(v13, v14, v15, v16);

  return v13;
}

- (id)minuteHandConfiguration
{
  v5 = objc_msgSend_device(self, a2, v2, v3, 0, 0, 0, 0, 0, 0);
  sub_23BE93EA8(v5, &v18);

  v6 = MEMORY[0x277CFA740];
  v10 = objc_msgSend_device(self, v7, v8, v9);
  v13 = objc_msgSend_defaultMinuteConfigurationForDevice_(v6, v11, v10, v12);

  CLKInterpolateBetweenFloatsClipped();
  objc_msgSend_setHandLength_(v13, v14, v15, v16);

  return v13;
}

- (id)secondHandConfiguration
{
  v5 = objc_msgSend_device(self, a2, v2, v3, 0, 0, 0, 0, 0, 0);
  sub_23BE93EA8(v5, &v18);

  v6 = MEMORY[0x277CFA740];
  v10 = objc_msgSend_device(self, v7, v8, v9);
  v13 = objc_msgSend_defaultSecondConfigurationForDevice_(v6, v11, v10, v12);

  CLKInterpolateBetweenFloatsClipped();
  objc_msgSend_setHandLength_(v13, v14, v15, v16);

  return v13;
}

- (void)applyTransitionFractionToCompassMode:(unint64_t)a3 fraction:(double)a4
{
  CLKInterpolateBetweenFloatsClipped();
  CLKInterpolateBetweenFloatsClipped();
  v6 = v5;
  CLKInterpolateBetweenFloatsClipped();
  v8 = v7;
  objc_msgSend__setHandsAlpha_(self, v9, v10, v11, v6);

  objc_msgSend__setAltHandsAlpha_(self, v12, v13, v14, v8);
}

- (void)setCompassMode:(unint64_t)a3
{
  if (a3 == 1)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  if (a3 == 1)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  objc_msgSend__setHandsAlpha_(self, a2, a3, v3, v5);

  objc_msgSend__setAltHandsAlpha_(self, v7, v8, v9, v6);
}

@end