@interface MTCCTimerViewController
- (MTCCTimerViewController)init;
- (MTCCTimerViewControllerDelegate)delegate;
- (double)sliderValueFromRemainingTime:(double)a3;
- (id)createSliderView;
- (id)sliderView;
- (void)_updateGlyphPackageDescription;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)dealloc;
- (void)displayLinkTick:(id)a3;
- (void)setContentRenderingMode:(unint64_t)a3;
- (void)sliderDidBeginEditing:(id)a3;
- (void)sliderEditingEnded:(id)a3;
- (void)sliderValueChanged:(id)a3;
- (void)startDisplayLinkUpdates;
- (void)stopDisplayLinkUpdates;
- (void)viewDidLoad;
@end

@implementation MTCCTimerViewController

- (MTCCTimerViewController)init
{
  v9 = *MEMORY[0x29EDCA608];
  v6.receiver = self;
  v6.super_class = MTCCTimerViewController;
  v2 = [(MTCCTimerViewController *)&v6 init];
  if (v2)
  {
    v3 = MTLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = v2;
      _os_log_impl(&dword_29C9FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ initialized", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return v2;
}

- (void)dealloc
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = self;
    _os_log_impl(&dword_29C9FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocating", buf, 0xCu);
  }

  v6 = objc_msgSend_displayLink(self, v4, v5);
  objc_msgSend_invalidate(v6, v7, v8);

  v10.receiver = self;
  v10.super_class = MTCCTimerViewController;
  [(MTCCTimerViewController *)&v10 dealloc];
  v9 = *MEMORY[0x29EDCA608];
}

- (void)viewDidLoad
{
  v37[1] = *MEMORY[0x29EDCA608];
  v36.receiver = self;
  v36.super_class = MTCCTimerViewController;
  [(CCUISliderModuleViewController *)&v36 viewDidLoad];
  v3 = MEMORY[0x29EDB9F48];
  v4 = objc_opt_class();
  v6 = objc_msgSend_bundleForClass_(v3, v5, v4);
  v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"TIMER", &stru_2A23F3148, @"TimerModule");
  objc_msgSend_setTitle_(self, v9, v8);

  objc_msgSend_setValueText_(self, v10, 0);
  objc_msgSend_setSelectedValueText_(self, v11, 0);
  objc_msgSend__updateGlyphPackageDescription(self, v12, v13);
  v37[0] = objc_opt_class();
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v14, v37, 1);
  v17 = objc_msgSend_registerForTraitChanges_withAction_(self, v16, v15, sel__updateGlyphPackageDescription);

  v20 = objc_msgSend_sliderView(self, v18, v19);
  objc_msgSend_setNumberOfSteps_(v20, v21, 12);

  v24 = objc_msgSend_sliderView(self, v22, v23);
  objc_msgSend_addTarget_action_forControlEvents_(v24, v25, self, sel_sliderDidBeginEditing_, 0x10000);

  v28 = objc_msgSend_sliderView(self, v26, v27);
  objc_msgSend_addTarget_action_forControlEvents_(v28, v29, self, sel_sliderValueChanged_, 4096);

  v32 = objc_msgSend_sliderView(self, v30, v31);
  objc_msgSend_addTarget_action_forControlEvents_(v32, v33, self, sel_sliderEditingEnded_, 0x40000);

  objc_msgSend__reloadForCurrentStateAnimated_(self, v34, 0);
  v35 = *MEMORY[0x29EDCA608];
}

- (id)sliderView
{
  v4.receiver = self;
  v4.super_class = MTCCTimerViewController;
  v2 = [(CCUISliderModuleViewController *)&v4 sliderView];

  return v2;
}

- (id)createSliderView
{
  v3 = objc_alloc(MEMORY[0x29EDC0CF8]);
  v6 = objc_msgSend_view(self, v4, v5);
  objc_msgSend_bounds(v6, v7, v8);
  v11 = objc_msgSend_initWithFrame_(v3, v9, v10);

  return v11;
}

- (void)setContentRenderingMode:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = MTCCTimerViewController;
  if ([(CCUIButtonModuleViewController *)&v7 contentRenderingMode]!= a3)
  {
    v6.receiver = self;
    v6.super_class = MTCCTimerViewController;
    [(CCUIButtonModuleViewController *)&v6 setContentRenderingMode:a3];
    objc_msgSend__reloadForCurrentStateAnimated_(self, v5, 0);
  }
}

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = a4;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = self;
    _os_log_impl(&dword_29C9FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ button tapped, relaying to delegate", &v12, 0xCu);
  }

  v9 = objc_msgSend_delegate(self, v7, v8);
  objc_msgSend_timerViewControllerButtonTapped_withEvent_(v9, v10, self, v5);

  v11 = *MEMORY[0x29EDCA608];
}

- (void)sliderDidBeginEditing:(id)a3
{
  v36 = *MEMORY[0x29EDCA608];
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 138543362;
    v35 = self;
    _os_log_impl(&dword_29C9FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ slider began editing", &v34, 0xCu);
  }

  objc_msgSend_stopDisplayLinkUpdates(self, v5, v6);
  v9 = objc_msgSend_timer(self, v7, v8);
  v12 = objc_msgSend_timerID(v9, v10, v11);

  if (v12)
  {
    v13 = [MTCCTimer alloc];
    v16 = objc_msgSend_timer(self, v14, v15);
    objc_msgSend_remainingTime(v16, v17, v18);
    v20 = objc_msgSend_initWithState_duration_(v13, v19, 1);

    v23 = objc_msgSend_timer(self, v21, v22);
    v26 = objc_msgSend_timerLabel(v23, v24, v25);
    objc_msgSend_setTimerLabel_(v20, v27, v26);

    v30 = objc_msgSend_timer(self, v28, v29);
    objc_msgSend_setEditingTimer_(v20, v31, v30);

    objc_msgSend_setTimer_(self, v32, v20);
  }

  v33 = *MEMORY[0x29EDCA608];
}

- (void)sliderEditingEnded:(id)a3
{
  v4 = objc_msgSend_timer(self, a2, a3);
  v7 = objc_msgSend_editingTimer(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_timer(self, v8, v9);
    objc_msgSend_setState_(v10, v11, 3);

    v18 = objc_msgSend_delegate(self, v12, v13);
    v16 = objc_msgSend_timer(self, v14, v15);
    objc_msgSend_timerViewController_timerDidChange_(v18, v17, self, v16);
  }
}

- (void)sliderValueChanged:(id)a3
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_step(a3, a2, a3);
  v5 = v4;
  if (v4 >= 0xD)
  {
    NSLog(&cfstr_UnexpectedStep.isa, v4);
  }

  if (v5 >= 0xC)
  {
    v6 = 12;
  }

  else
  {
    v6 = v5;
  }

  v7 = MTLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v28 = self;
    v29 = 2050;
    v30 = v6;
    _os_log_impl(&dword_29C9FA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ slider value changed to step: %{public}lu", buf, 0x16u);
  }

  v8 = qword_29CA02F80[v6] * 60.0;
  v11 = objc_msgSend_timer(self, v9, v10);
  objc_msgSend_setDuration_(v11, v12, v13, v8);

  v16 = objc_msgSend_timer(self, v14, v15);
  objc_msgSend_setRemainingTime_(v16, v17, v18, v8);

  v21 = objc_msgSend_delegate(self, v19, v20);
  v24 = objc_msgSend_timer(self, v22, v23);
  objc_msgSend_timerViewController_timerDidChange_(v21, v25, self, v24);

  v26 = *MEMORY[0x29EDCA608];
}

- (void)_updateGlyphPackageDescription
{
  v4 = objc_msgSend_traitCollection(self, a2, v2);
  v7 = objc_msgSend_accessibilityContrast(v4, v5, v6);
  v8 = @"Timer";
  if (v7 == 1)
  {
    v8 = @"Timer_IC";
  }

  v9 = v8;

  v10 = MEMORY[0x29EDC0CA0];
  v11 = MEMORY[0x29EDB9F48];
  v12 = objc_opt_class();
  v17 = objc_msgSend_bundleForClass_(v11, v13, v12);
  v15 = objc_msgSend_descriptionForPackageNamed_inBundle_(v10, v14, v9, v17);

  objc_msgSend_setGlyphPackageDescription_(self, v16, v15);
}

- (void)startDisplayLinkUpdates
{
  v3 = objc_msgSend_displayLinkWithTarget_selector_(MEMORY[0x29EDBBA90], a2, self, sel_displayLinkTick_);
  objc_msgSend_setDisplayLink_(self, v4, v3);

  v7 = objc_msgSend_displayLink(self, v5, v6);
  objc_msgSend_setPreferredFramesPerSecond_(v7, v8, 4);

  v15 = objc_msgSend_displayLink(self, v9, v10);
  v13 = objc_msgSend_mainRunLoop(MEMORY[0x29EDB8E48], v11, v12);
  objc_msgSend_addToRunLoop_forMode_(v15, v14, v13, *MEMORY[0x29EDB8D18]);
}

- (void)stopDisplayLinkUpdates
{
  v4 = objc_msgSend_displayLink(self, a2, v2);
  objc_msgSend_invalidate(v4, v5, v6);

  objc_msgSend_setDisplayLink_(self, v7, 0);
}

- (void)displayLinkTick:(id)a3
{
  v4 = objc_msgSend_timer(self, a2, a3);
  v7 = objc_msgSend_fireDate(v4, v5, v6);
  objc_msgSend_timeIntervalSinceNow(v7, v8, v9);
  v11 = v10;

  v18 = objc_msgSend_sliderView(self, v12, v13);
  objc_msgSend_sliderValueFromRemainingTime_(self, v14, v15, v11);
  *&v16 = v16;
  objc_msgSend_setValue_animated_(v18, v17, 0, v16);
}

- (double)sliderValueFromRemainingTime:(double)a3
{
  v3 = 0;
  v4 = round(a3);
  while (qword_29CA02F80[v3] * 60.0 < v4)
  {
    if (++v3 == 13)
    {
      goto LABEL_6;
    }
  }

  if (!v3)
  {
    return 0.0;
  }

LABEL_6:
  if (v3 >= 0xC)
  {
    v3 = 12;
  }

  v5 = v3 - 1;
  v6 = vmulq_f64(vcvtq_f64_u64(*&qword_29CA02F80[v5]), vdupq_n_s64(0x404E000000000000uLL));
  return ((v4 - v6.f64[0]) / vsubq_f64(vdupq_laneq_s64(v6, 1), v6).f64[0] + v5) / 12.0;
}

- (MTCCTimerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end