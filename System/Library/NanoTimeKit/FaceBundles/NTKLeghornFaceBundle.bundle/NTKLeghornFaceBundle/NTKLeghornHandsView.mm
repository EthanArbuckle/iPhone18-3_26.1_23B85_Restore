@interface NTKLeghornHandsView
- ($01BB1521EC52D44A8E7628F5261DCEC8)_handsViewLayoutConstantsForDevice:(id)a3;
- (id)hourHandConfiguration;
- (id)initForDevice:(id)a3;
- (id)minuteHandConfiguration;
- (void)_applyPalette;
- (void)setPalette:(id)a3;
@end

@implementation NTKLeghornHandsView

- (id)initForDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKLeghornHandsView;
  return [(NTKAnalogHandsView *)&v4 initForDevice:a3];
}

- (void)setPalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);

  MEMORY[0x2821F9670](v3);
}

- (void)_applyPalette
{
  v52 = objc_msgSend_palette(self, a2, v2);
  v6 = objc_msgSend_isNightModeF(v52, v4, v5);
  objc_msgSend_doubleValue(v6, v7, v8);
  v10 = v9;

  v13 = objc_msgSend_hourHandInlayColor(v52, v11, v12);
  v16 = objc_msgSend_hourHandStrokeColor(v52, v14, v15);
  v19 = objc_msgSend_minuteHandInlayColor(v52, v17, v18);
  v23 = objc_msgSend_minuteHandStrokeColor(v52, v20, v21);
  if (v10 == 0.0)
  {
    v25 = v19;
  }

  else
  {
    v25 = objc_msgSend_blackColor(MEMORY[0x277D75348], v22, v24);
  }

  v28 = v25;
  v29 = objc_msgSend_hourHandView(self, v26, v27);
  objc_msgSend_setInlayColor_(v29, v30, v31, v13);

  v34 = objc_msgSend_hourHandView(self, v32, v33);
  objc_msgSend_setColor_(v34, v35, v36, v16);

  v39 = objc_msgSend_minuteHandView(self, v37, v38);
  objc_msgSend_setInlayColor_(v39, v40, v41, v19);

  v44 = objc_msgSend_minuteHandView(self, v42, v43);
  objc_msgSend_setColor_(v44, v45, v46, v23);

  v49 = objc_msgSend_minuteHandView(self, v47, v48);
  objc_msgSend_setHandDotColor_(v49, v50, v51, v28);
}

- (id)hourHandConfiguration
{
  v4 = objc_msgSend_device(self, a2, v2);
  objc_msgSend__handsViewLayoutConstantsForDevice_(self, v5, v6, v4);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x277CFA740];
  v16 = objc_msgSend_device(self, v14, v15);
  v19 = objc_msgSend_defaultHourConfigurationForDevice_(v13, v17, v18, v16);

  objc_msgSend_setHandLength_(v19, v20, v8);
  objc_msgSend_setHandWidth_(v19, v21, v10);
  objc_msgSend_setInlayInsetRadius_(v19, v22, v12);

  return v19;
}

- (id)minuteHandConfiguration
{
  v4 = objc_msgSend_device(self, a2, v2);
  objc_msgSend__handsViewLayoutConstantsForDevice_(self, v5, v6, v4);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x277CFA740];
  v16 = objc_msgSend_device(self, v14, v15);
  v19 = objc_msgSend_defaultMinuteConfigurationForDevice_(v13, v17, v18, v16);

  objc_msgSend_setHandLength_(v19, v20, v8);
  objc_msgSend_setHandWidth_(v19, v21, v10);
  objc_msgSend_setInlayInsetRadius_(v19, v22, v12);

  return v19;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)_handsViewLayoutConstantsForDevice:(id)a3
{
  v3 = sub_23BED92A8(self, a3);
  result.var3 = v6;
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

@end