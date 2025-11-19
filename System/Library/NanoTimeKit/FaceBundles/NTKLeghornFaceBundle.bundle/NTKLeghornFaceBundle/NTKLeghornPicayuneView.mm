@interface NTKLeghornPicayuneView
+ (CGRect)_bezelViewRectForDevice:(id)a3;
+ (CGSize)_bezelViewSizeForDevice:(id)a3;
+ (double)_bezelViewScaleForDevice:(id)a3;
+ (double)_miniClockScaleForDevice:(id)a3;
- (NTKLeghornPicayuneView)initWithDevice:(id)a3 clockTimer:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setConfiguration:(id)a3;
- (void)setOverrideDate:(id)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation NTKLeghornPicayuneView

+ (double)_miniClockScaleForDevice:(id)a3
{
  v4 = objc_msgSend_sizeClass(a3, a2, v3);
  result = 0.6325;
  if (v4 != 9)
  {
    return 0.625;
  }

  return result;
}

+ (double)_bezelViewScaleForDevice:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  objc_msgSend__miniClockScaleForDevice_(v4, v5, v6, v3);
  v8 = v7;

  return v8 * 1.12049113;
}

+ (CGSize)_bezelViewSizeForDevice:(id)a3
{
  v4 = a3;
  objc_msgSend_screenBounds(v4, v5, v6);
  objc_msgSend_screenScale(v4, v7, v8);
  objc_msgSend__bezelViewScaleForDevice_(a1, v9, v10, v4);

  UICeilToScale();
  v12 = v11;
  UICeilToScale();
  v14 = v13;
  v15 = v12;
  result.height = v14;
  result.width = v15;
  return result;
}

+ (CGRect)_bezelViewRectForDevice:(id)a3
{
  objc_msgSend__bezelViewSizeForDevice_(a1, a2, v3, a3);
  v5 = v4;
  v7 = v6;
  v8 = 0.0;
  v9 = 0.0;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (NTKLeghornPicayuneView)initWithDevice:(id)a3 clockTimer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = NTKLeghornPicayuneView;
  v9 = [(CLKUITimeView *)&v29 initWithDevice:v7 clockTimer:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_clockTimer, a4);
    v11 = objc_opt_class();
    objc_msgSend__bezelViewRectForDevice_(v11, v12, v13, v7);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [NTKCircularBezelView alloc];
    v24 = objc_msgSend_initForDevice_frame_displayMode_(v22, v23, v15, v10->_device, 5, v17, v19, v21);
    bezelView = v10->_bezelView;
    v10->_bezelView = v24;

    objc_msgSend_addSubview_(v10, v26, v27, v10->_bezelView);
  }

  return v10;
}

- (void)dealloc
{
  objc_msgSend_stop(self->_dataSource, a2, v2);
  v4.receiver = self;
  v4.super_class = NTKLeghornPicayuneView;
  [(CLKUITimeView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v55.receiver = self;
  v55.super_class = NTKLeghornPicayuneView;
  [(NTKLeghornPicayuneView *)&v55 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4);
  objc_msgSend_setFrame_(self->_analogTimeView, v5, v6);
  objc_msgSend_layoutSubviews(self->_analogTimeView, v7, v8);
  objc_msgSend_bounds(self, v9, v10);
  objc_msgSend_setFrame_(self->_digitalTimeView, v11, v12);
  objc_msgSend_layoutSubviews(self->_digitalTimeView, v13, v14);
  objc_msgSend_screenBounds(self->_device, v15, v16);
  v18 = v17;
  v20 = v19;
  v21 = objc_opt_class();
  v24 = objc_msgSend_device(self, v22, v23);
  objc_msgSend__bezelViewRectForDevice_(v21, v25, v26, v24);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  objc_msgSend_setFrame_(self->_bezelView, v35, v28, v30, v32, v34);
  objc_msgSend_center(self, v36, v37);
  objc_msgSend_setCenter_(self->_bezelView, v38, v39);
  objc_msgSend_layoutSubviews(self->_bezelView, v40, v41);
  v42 = objc_opt_class();
  v45 = objc_msgSend_device(self, v43, v44);
  objc_msgSend__digitalTimeViewScaleForDevice_(v42, v46, v47, v45);
  v49 = v48;

  objc_msgSend_setFrame_(self->_digitalTimeView, v50, 0.0, 0.0, v18 * v49, v20 * v49);
  objc_msgSend_center(self, v51, v52);
  objc_msgSend_setCenter_(self->_digitalTimeView, v53, v54);
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  v107.receiver = self;
  v107.super_class = NTKLeghornPicayuneView;
  [(CLKUITimeView *)&v107 setConfiguration:v4];
  v7 = objc_msgSend_timeStyle(v4, v5, v6);
  if (v7)
  {
    v10 = v7;
    if (v7 == 1)
    {
      if (!self->_analogTimeView)
      {
        v11 = [NTKLeghornPicayuneHandsView alloc];
        v14 = objc_msgSend_initForDevice_(v11, v12, v13, self->_device);
        analogTimeView = self->_analogTimeView;
        self->_analogTimeView = v14;

        objc_msgSend_bounds(self, v16, v17);
        objc_msgSend_setFrame_(self->_analogTimeView, v18, v19);
        objc_msgSend_addSubview_(self, v20, v21, self->_analogTimeView);
      }

      digitalTimeView = self->_digitalTimeView;
      if (digitalTimeView)
      {
        objc_msgSend_removeFromSuperview(digitalTimeView, v8, v9);
        v23 = self->_digitalTimeView;
        self->_digitalTimeView = 0;
      }

      v24 = objc_msgSend_palette(v4, v8, v9);
      objc_msgSend_setPalette_(self->_analogTimeView, v25, v26, v24);
    }

    else
    {
      v24 = NTKFoghornFaceBundleLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_23BEE6B88(v10, v24);
      }
    }
  }

  else
  {
    v27 = self->_analogTimeView;
    if (v27)
    {
      objc_msgSend_removeFromSuperview(v27, v8, v9);
      v28 = self->_analogTimeView;
      self->_analogTimeView = 0;
    }

    if (!self->_digitalTimeView)
    {
      v29 = [NTKFoghornTimeView alloc];
      objc_msgSend_screenBounds(self->_device, v30, v31);
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      device = self->_device;
      clockTimer = self->_clockTimer;
      v43 = objc_msgSend_digitalLayoutStyle(v4, v42, v32);
      v45 = objc_msgSend_initWithFrame_forDevice_clockTimer_layout_(v29, v44, v33, device, clockTimer, v43, v35, v37, v39);
      v46 = self->_digitalTimeView;
      self->_digitalTimeView = v45;

      objc_msgSend_setInset_(self->_digitalTimeView, v47, v48, 0);
      v51 = objc_msgSend_bounds(self, v49, v50);
      MEMORY[0x23EEC0EA0](v51);
      objc_msgSend_setCenter_(self->_digitalTimeView, v52, v53);
      objc_msgSend_addSubview_(self, v54, v55, self->_digitalTimeView);
    }

    v56 = objc_msgSend_digitalLayoutStyle(v4, v8, v9);
    objc_msgSend_setLayoutStyle_(self->_digitalTimeView, v57, v58, v56);
    v61 = objc_msgSend_palette(v4, v59, v60);
    v64 = objc_msgSend_timeMinutesColor(v61, v62, v63);
    objc_msgSend_setMinutesColor_(self->_digitalTimeView, v65, v66, v64);

    v24 = objc_msgSend_palette(v4, v67, v68);
    v71 = objc_msgSend_timeSecondsColor(v24, v69, v70);
    objc_msgSend_setSecondsColor_(self->_digitalTimeView, v72, v73, v71);
  }

  v76 = objc_msgSend_palette(v4, v74, v75);
  objc_msgSend_setColorPalette_(self->_bezelView, v77, v78, v76);

  v79 = objc_opt_class();
  v82 = objc_msgSend_device(self, v80, v81);
  objc_msgSend__digitalTimeViewScaleForDevice_(v79, v83, v84, v82);
  v86 = v85;

  CGAffineTransformMakeScale(&v106, v86, v86);
  v87 = self->_digitalTimeView;
  v105 = v106;
  objc_msgSend_setTransform_(v87, v88, v106.tx, &v105);
  v89 = objc_opt_class();
  v92 = objc_msgSend_device(self, v90, v91);
  objc_msgSend__analogTimeViewScaleForDevice_(v89, v93, v94, v92);
  v96 = v95;

  CGAffineTransformMakeScale(&v104, v96, v96);
  v97 = self->_analogTimeView;
  v105 = v104;
  objc_msgSend_setTransform_(v97, v98, v104.tx, &v105);
  v101 = objc_msgSend_aodVibrancyEnabled(v4, v99, v100);
  objc_msgSend_setLiveSecondsInTritium_(self->_bezelView, v102, v103, v101);
}

- (void)setState:(unint64_t)a3
{
  v15.receiver = self;
  v15.super_class = NTKLeghornPicayuneView;
  [(CLKUITimeView *)&v15 setState:?];
  if (a3 == 1)
  {
    objc_msgSend__ensureDataSourceActive_(self, v5, v6, 0);
    objc_msgSend_setFrozen_(self->_analogTimeView, v11, v12, 1);
    objc_msgSend_setFrozen_(self->_digitalTimeView, v13, v14, 1);
  }

  else if (a3)
  {
    objc_msgSend__ensureDataSourceActive_(self, v5, v6, 0);
  }

  else
  {
    objc_msgSend__ensureDataSourceActive_(self, v5, v6, 1);
    objc_msgSend_setFrozen_(self->_analogTimeView, v7, v8, 0);
    objc_msgSend_setFrozen_(self->_digitalTimeView, v9, v10, 0);
  }
}

- (void)setOverrideDate:(id)a3
{
  v7.receiver = self;
  v7.super_class = NTKLeghornPicayuneView;
  v4 = a3;
  [(CLKUITimeView *)&v7 setOverrideDate:v4];
  objc_msgSend_setOverrideDate_duration_(self->_digitalTimeView, v5, 0.0, v4, v7.receiver, v7.super_class);
  objc_msgSend_setOverrideDate_duration_(self->_analogTimeView, v6, 0.0, v4);
}

@end