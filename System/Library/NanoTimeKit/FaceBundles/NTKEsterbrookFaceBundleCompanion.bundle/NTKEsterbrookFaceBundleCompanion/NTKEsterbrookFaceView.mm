@interface NTKEsterbrookFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (NTKEsterbrookFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (void)_applyBreathingAndRubberbanding;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyPalette:(id)palette;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_loadSnapshotContentViews;
- (void)_setupSceneCoordinator;
- (void)_setupTimeView;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_teardownSceneCoordinator;
- (void)_teardownTimeView;
- (void)_unloadSnapshotContentViews;
- (void)layoutSubviews;
- (void)screenDidTurnOffAnimated:(BOOL)animated;
- (void)screenWillTurnOnAnimated:(BOOL)animated;
- (void)setDataMode:(int64_t)mode;
- (void)setFrozen:(BOOL)frozen;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setTimeOffset:(double)offset;
@end

@implementation NTKEsterbrookFaceView

- (void)screenWillTurnOnAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v11.receiver = self;
  v11.super_class = NTKEsterbrookFaceView;
  [(NTKEsterbrookFaceView *)&v11 screenWillTurnOnAnimated:?];
  v8 = objc_msgSend_sceneCoordinator(self, v5, v6, v7);
  objc_msgSend_screenWillTurnOnAnimated_(v8, v9, animatedCopy, v10);
}

- (void)screenDidTurnOffAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v11.receiver = self;
  v11.super_class = NTKEsterbrookFaceView;
  [(NTKEsterbrookFaceView *)&v11 screenDidTurnOffAnimated:?];
  v8 = objc_msgSend_sceneCoordinator(self, v5, v6, v7);
  objc_msgSend_screenDidTurnOffWithAnimated_(v8, v9, animatedCopy, v10);
}

- (NTKEsterbrookFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = NTKEsterbrookFaceView;
  return [(NTKEsterbrookFaceView *)&v6 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
}

- (void)_loadSnapshotContentViews
{
  v15.receiver = self;
  v15.super_class = NTKEsterbrookFaceView;
  [(NTKEsterbrookFaceView *)&v15 _loadSnapshotContentViews];
  v6 = objc_msgSend_blackColor(MEMORY[0x277D75348], v3, v4, v5);
  objc_msgSend_setBackgroundColor_(self, v7, v6, v8);

  objc_msgSend__setupTimeView(self, v9, v10, v11);
  objc_msgSend__setupSceneCoordinator(self, v12, v13, v14);
}

- (void)_unloadSnapshotContentViews
{
  v12.receiver = self;
  v12.super_class = NTKEsterbrookFaceView;
  [(NTKEsterbrookFaceView *)&v12 _unloadSnapshotContentViews];
  objc_msgSend__stopClockUpdates(self, v3, v4, v5);
  objc_msgSend__teardownTimeView(self, v6, v7, v8);
  objc_msgSend__teardownSceneCoordinator(self, v9, v10, v11);
}

- (void)_setupTimeView
{
  handsView = self->_handsView;
  if (!handsView)
  {
    v5 = [_TtC32NTKEsterbrookFaceBundleCompanion22NTKEsterbrookHandsView alloc];
    v9 = objc_msgSend_device(self, v6, v7, v8);
    v12 = objc_msgSend_initForDevice_(v5, v10, v9, v11);
    v13 = self->_handsView;
    self->_handsView = v12;

    v14 = self->_handsView;
    v18 = objc_msgSend_blackColor(MEMORY[0x277D75348], v15, v16, v17);
    v22 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v19, v20, v21);
    objc_msgSend_applyHourMinuteHandsStrokeColor_fillColor_(v14, v23, v18, v22);

    v27 = objc_msgSend_hourHandView(self->_handsView, v24, v25, v26);
    v31 = objc_msgSend_blackColor(MEMORY[0x277D75348], v28, v29, v30);
    objc_msgSend_setHandDotColor_(v27, v32, v31, v33);

    v37 = objc_msgSend_minuteHandView(self->_handsView, v34, v35, v36);
    v41 = objc_msgSend_blackColor(MEMORY[0x277D75348], v38, v39, v40);
    objc_msgSend_setHandDotColor_(v37, v42, v41, v43);

    v47 = objc_msgSend_secondHandView(self->_handsView, v44, v45, v46);
    v51 = objc_msgSend_blackColor(MEMORY[0x277D75348], v48, v49, v50);
    objc_msgSend_setHandDotColor_(v47, v52, v51, v53);

    v57 = objc_msgSend_hourHandView(self->_handsView, v54, v55, v56);
    objc_msgSend_setShadowsHidden_(v57, v58, 1, v59);

    v63 = objc_msgSend_minuteHandView(self->_handsView, v60, v61, v62);
    objc_msgSend_setShadowsHidden_(v63, v64, 1, v65);

    v69 = objc_msgSend_secondHandView(self->_handsView, v66, v67, v68);
    objc_msgSend_setShadowsHidden_(v69, v70, 1, v71);

    handsView = self->_handsView;
  }

  MEMORY[0x2821F9670](self, sel_setTimeView_, handsView, v2);
}

- (void)_teardownTimeView
{
  objc_msgSend_removeFromSuperview(self->_handsView, a2, v2, v3);

  MEMORY[0x2821F9670](self, sel_setTimeView_, 0, v5);
}

- (void)_setupSceneCoordinator
{
  v3 = [NTKEsterbrookSceneCoordinator alloc];
  objc_msgSend_bounds(self, v4, v5, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v18 = objc_msgSend_device(self, v15, v16, v17);
  handsView = self->_handsView;
  v23 = objc_msgSend_esterbrookPalette(self, v20, v21, v22);
  v27 = objc_msgSend_currentFaceState(self, v24, v25, v26);
  v28 = objc_alloc_init(NTKEsterbrookSourceConfiguration);
  v30 = objc_msgSend_initWithFrame_device_handsView_colorPalette_faceState_sourceConfiguration_(v3, v29, v18, handsView, v23, v27, v28, v8, v10, v12, v14);
  sceneCoordinator = self->_sceneCoordinator;
  self->_sceneCoordinator = v30;

  v41 = objc_msgSend_contentView(self, v32, v33, v34);
  v38 = objc_msgSend_sceneView(self->_sceneCoordinator, v35, v36, v37);
  objc_msgSend_addSubview_(v41, v39, v38, v40);
}

- (void)_teardownSceneCoordinator
{
  v5 = objc_msgSend_sceneView(self->_sceneCoordinator, a2, v2, v3);
  objc_msgSend_removeFromSuperview(v5, v6, v7, v8);

  sceneCoordinator = self->_sceneCoordinator;
  self->_sceneCoordinator = 0;
}

- (void)_startClockUpdates
{
  if (!self->_secondTimerToken)
  {
    objc_initWeak(&location, self);
    v6 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], v3, v4, v5);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_23BDE4750;
    v10[3] = &unk_278B9A920;
    objc_copyWeak(&v11, &location);
    v8 = objc_msgSend_startUpdatesWithUpdateFrequency_withHandler_identificationLog_(v6, v7, 1, v10, &unk_284E91470);
    secondTimerToken = self->_secondTimerToken;
    self->_secondTimerToken = v8;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)_stopClockUpdates
{
  if (self->_secondTimerToken)
  {
    v5 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], a2, v2, v3);
    objc_msgSend_stopUpdatesForToken_(v5, v6, self->_secondTimerToken, v7);

    secondTimerToken = self->_secondTimerToken;
    self->_secondTimerToken = 0;
  }
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v11.receiver = self;
  v11.super_class = NTKEsterbrookFaceView;
  dateCopy = date;
  [(NTKEsterbrookFaceView *)&v11 setOverrideDate:dateCopy duration:duration];
  objc_msgSend_setOverrideDate_duration_(self->_handsView, v7, dateCopy, v8, duration, v11.receiver, v11.super_class);
  objc_msgSend_setOverrideDate_duration_(self->_sceneCoordinator, v9, dateCopy, v10, duration);
}

- (void)setTimeOffset:(double)offset
{
  v11.receiver = self;
  v11.super_class = NTKEsterbrookFaceView;
  [(NTKEsterbrookFaceView *)&v11 setTimeOffset:?];
  objc_msgSend_setTimeOffset_(self->_handsView, v5, v6, v7, offset);
  objc_msgSend_setTimeOffset_(self->_sceneCoordinator, v8, v9, v10, offset);
}

- (void)setFrozen:(BOOL)frozen
{
  frozenCopy = frozen;
  v9.receiver = self;
  v9.super_class = NTKEsterbrookFaceView;
  [(NTKEsterbrookFaceView *)&v9 setFrozen:?];
  objc_msgSend_setFrozen_(self->_handsView, v5, frozenCopy, v6);
  objc_msgSend_setFrozen_(self->_sceneCoordinator, v7, frozenCopy, v8);
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = NTKEsterbrookFaceView;
  [(NTKEsterbrookFaceView *)&v2 layoutSubviews];
}

- (void)setDataMode:(int64_t)mode
{
  v11.receiver = self;
  v11.super_class = NTKEsterbrookFaceView;
  [(NTKEsterbrookFaceView *)&v11 setDataMode:mode];
  handsView = self->_handsView;
  v8 = objc_msgSend_dataMode(self, v5, v6, v7);
  objc_msgSend_setDataMode_(handsView, v9, v8, v10);
}

- (void)_applyDataMode
{
  v21.receiver = self;
  v21.super_class = NTKEsterbrookFaceView;
  [(NTKEsterbrookFaceView *)&v21 _applyDataMode];
  previousDataMode = self->_previousDataMode;
  if (previousDataMode != objc_msgSend_dataMode(self, v4, v5, v6))
  {
    sceneCoordinator = self->_sceneCoordinator;
    v11 = objc_msgSend_currentFaceState(self, v7, v8, v9);
    objc_msgSend_applyFaceState_(sceneCoordinator, v12, v11, v13);

    v17 = objc_msgSend_dataMode(self, v14, v15, v16);
    if ((v17 - 2) >= 4 && v17)
    {
      if (v17 == 1)
      {
        objc_msgSend__startClockUpdates(self, v18, v19, v20);
      }
    }

    else
    {
      objc_msgSend__stopClockUpdates(self, v18, v19, v20);
    }

    self->_previousDataMode = objc_msgSend_dataMode(self, v18, v19, v20);
  }
}

- (void)_applyShowContentForUnadornedSnapshot
{
  v13.receiver = self;
  v13.super_class = NTKEsterbrookFaceView;
  [(NTKEsterbrookFaceView *)&v13 _applyShowContentForUnadornedSnapshot];
  v6 = objc_msgSend_timeView(self, v3, v4, v5);
  v10 = objc_msgSend_showContentForUnadornedSnapshot(self, v7, v8, v9);
  objc_msgSend_setHidden_(v6, v11, v10, v12);
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &unk_284E98B18;
  if (options != 10)
  {
    v4 = 0;
  }

  if (options == 11)
  {
    return &unk_284E98B00;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  if (mode == 11)
  {
    optionsCopy = options;
    v12 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v10, &unk_284E98AA0, v11);
    v15 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v13, &unk_284E98A88, v14);

    optionsCopy2 = optionCopy;
    if (!qword_27E1C9800)
    {
      v20 = objc_opt_new();
      v21 = qword_27E1C9800;
      qword_27E1C9800 = v20;
    }

    v22 = MEMORY[0x277CCACA8];
    v23 = objc_msgSend_identifier(v15, v17, v18, v19);
    v26 = objc_msgSend_stringWithFormat_(v22, v24, @"%@-%@", v25, optionsCopy2, v23);

    v29 = objc_msgSend_objectForKey_(qword_27E1C9800, v27, v26, v28);
    if (!v29)
    {
      v30 = [NTKEsterbrookFaceView alloc];
      v34 = objc_msgSend_device(self, v31, v32, v33);
      v36 = objc_msgSend_initWithFaceStyle_forDevice_clientIdentifier_(v30, v35, 44, v34, 0);

      objc_msgSend_frame(self, v37, v38, v39);
      objc_msgSend_setFrame_(v36, v40, v41, v42);
      objc_msgSend__loadSnapshotContentViews(v36, v43, v44, v45);
      objc_msgSend_setOption_forCustomEditMode_slot_(v36, v46, optionsCopy2, 11, 0);
      objc_msgSend_setOption_forCustomEditMode_slot_(v36, v47, v15, 10, 0);
      v48 = NTKIdealizedDate();
      objc_msgSend_setOverrideDate_duration_(v36, v49, v48, v50, 0.0);

      v54 = objc_msgSend_dataMode(self, v51, v52, v53);
      objc_msgSend_setDataMode_(v36, v55, v54, v56);
      objc_msgSend_frame(self, v57, v58, v59);
      objc_msgSend_setFrame_(v36, v60, v61, v62);
      objc_msgSend_bounds(v36, v63, v64, v65);
      v79.width = v66;
      v79.height = v67;
      UIGraphicsBeginImageContextWithOptions(v79, 0, 0.0);
      v71 = objc_msgSend_layer(v36, v68, v69, v70);
      CurrentContext = UIGraphicsGetCurrentContext();
      objc_msgSend_renderInContext_(v71, v73, CurrentContext, v74);

      v29 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      objc_msgSend_setObject_forKey_(qword_27E1C9800, v75, v29, v26);
    }
  }

  else
  {
    v77.receiver = self;
    v77.super_class = NTKEsterbrookFaceView;
    optionsCopy2 = options;
    v29 = [(NTKEsterbrookFaceView *)&v77 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy2];
  }

  return v29;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 10)
  {
    v16 = objc_msgSend_esterbrookPalette(self, v8, v9, v10);
    objc_msgSend__applyPalette_(self, v27, v16, v28);
  }

  else
  {
    if (mode != 11)
    {
      goto LABEL_6;
    }

    v12 = objc_msgSend_density(optionCopy, v8, v9, v10);
    v16 = objc_msgSend_sceneCoordinator(self, v13, v14, v15);
    v20 = objc_msgSend_sceneView(v16, v17, v18, v19);
    v24 = objc_msgSend_dialView(v20, v21, v22, v23);
    objc_msgSend_setDensity_(v24, v25, v12, v26);
  }

LABEL_6:
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 10)
  {
    v25 = objc_msgSend_interpolatedColorPalette(self, v13, v14, v15);
    objc_msgSend__applyPalette_(self, v35, v25, v36);
  }

  else
  {
    if (mode != 11)
    {
      goto LABEL_6;
    }

    v17 = objc_msgSend_density(optionCopy, v13, v14, v15);
    v21 = objc_msgSend_density(toOptionCopy, v18, v19, v20);
    v25 = objc_msgSend_sceneCoordinator(self, v22, v23, v24);
    v29 = objc_msgSend_sceneView(v25, v26, v27, v28);
    v33 = objc_msgSend_dialView(v29, v30, v31, v32);
    objc_msgSend_applyDensityTransitionWithFraction_from_to_(v33, v34, v17, v21, fraction);
  }

LABEL_6:
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v13.receiver = self;
  v13.super_class = NTKEsterbrookFaceView;
  [(NTKEsterbrookFaceView *)&v13 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  objc_msgSend_setBreathingFraction_(self, v7, v8, v9, fraction);
  objc_msgSend__applyBreathingAndRubberbanding(self, v10, v11, v12);
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v16.receiver = self;
  v16.super_class = NTKEsterbrookFaceView;
  [(NTKEsterbrookFaceView *)&v16 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  NTKAlphaForRubberBandingFraction();
  objc_msgSend_setAlpha_(self, v7, v8, v9);
  objc_msgSend_setRubberbandingFraction_(self, v10, v11, v12, fraction);
  objc_msgSend__applyBreathingAndRubberbanding(self, v13, v14, v15);
}

- (void)_applyBreathingAndRubberbanding
{
  objc_msgSend_breathingFraction(self, a2, v2, v3);
  NTKLargeElementScaleForBreathingFraction();
  v6 = v5;
  objc_msgSend_rubberbandingFraction(self, v7, v8, v9);
  NTKScaleForRubberBandingFraction();
  CGAffineTransformMakeScale(&v14, v6 * v10, v6 * v10);
  v13 = v14;
  objc_msgSend_setTransform_(self, v11, &v13, v12);
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKEsterbrookColorPalette);

  return v2;
}

- (void)_applyPalette:(id)palette
{
  paletteCopy = palette;
  v10 = objc_msgSend_sceneCoordinator(self, v5, v6, v7);
  objc_msgSend_setColorPalette_(v10, v8, paletteCopy, v9);
}

@end