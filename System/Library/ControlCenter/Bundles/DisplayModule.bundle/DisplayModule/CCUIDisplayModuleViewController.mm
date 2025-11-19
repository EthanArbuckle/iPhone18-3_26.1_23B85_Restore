@interface CCUIDisplayModuleViewController
- (CCUIDisplayModuleViewControllerDelegate)delegate;
- (NSArray)containerViewsForPlatterTreatment;
- (float)_backlightLevel;
- (id)viewForTouchContinuation;
- (void)_sliderEditingDidBegin:(id)a3;
- (void)_sliderEditingDidEnd:(id)a3;
- (void)_sliderPresentationValueDidChange:(id)a3;
- (void)_updateBrightnessControlAvailability;
- (void)_updateBrightnessControlInteractionEnabled;
- (void)dealloc;
- (void)loadView;
- (void)setCompactContinuousCornerRadius:(double)a3;
- (void)setContentMetrics:(id)a3;
- (void)setContentRenderingMode:(unint64_t)a3;
- (void)setGlyphPackageDescription:(id)a3;
- (void)setGlyphState:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CCUIDisplayModuleViewController

- (void)dealloc
{
  brightnessTransaction = self->_brightnessTransaction;
  if (brightnessTransaction)
  {
    CFRelease(brightnessTransaction);
    self->_brightnessTransaction = 0;
  }

  v4.receiver = self;
  v4.super_class = CCUIDisplayModuleViewController;
  [(CCUIDisplayModuleViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x29EDC0CC0]);
  v6 = objc_msgSend_initWithFrame_(v3, v4, v5, *MEMORY[0x29EDB90E0], *(MEMORY[0x29EDB90E0] + 8), *(MEMORY[0x29EDB90E0] + 16), *(MEMORY[0x29EDB90E0] + 24));
  sliderView = self->_sliderView;
  self->_sliderView = v6;

  v8 = self->_sliderView;
  v11 = objc_msgSend_systemYellowColor(MEMORY[0x29EDC7A00], v9, v10);
  objc_msgSend_setGlyphTintColor_(v8, v12, v11);

  v13 = self->_sliderView;
  objc_msgSend__backlightLevel(self, v14, v15);
  objc_msgSend_setValue_animated_(v13, v16, 0);
  objc_msgSend_setInteractiveWhenUnexpanded_(self->_sliderView, v17, 1);
  objc_msgSend_addTarget_action_forControlEvents_(self->_sliderView, v18, self, sel__sliderEditingDidBegin_, 0x10000);
  objc_msgSend_addTarget_action_forControlEvents_(self->_sliderView, v19, self, sel__sliderPresentationValueDidChange_, *MEMORY[0x29EDC0C80]);
  objc_msgSend_addTarget_action_forControlEvents_(self->_sliderView, v20, self, sel__sliderEditingDidEnd_, 0x40000);
  objc_msgSend_setAccessibilityIdentifier_(self->_sliderView, v21, @"cc-brightness-slider");
  objc_msgSend_setView_(self, v22, self->_sliderView);

  objc_msgSend__updateBrightnessControlInteractionEnabled(self, v23, v24);
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = CCUIDisplayModuleViewController;
  [(CCUIDisplayModuleViewController *)&v17 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x29EDC0DA0]);
  brightnessSystemClient = self->_brightnessSystemClient;
  self->_brightnessSystemClient = v3;

  objc_initWeak(&location, self);
  v5 = self->_brightnessSystemClient;
  v11 = MEMORY[0x29EDCA5F8];
  v12 = 3221225472;
  v13 = sub_29C973468;
  v14 = &unk_29F338368;
  objc_copyWeak(&v15, &location);
  objc_msgSend_registerNotificationBlock_forProperties_(v5, v6, &v11, &unk_2A23E73C8);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_msgSend_currentBrightness(self, v8, v9, v11, v12, v13, v14);
  objc_msgSend_displayModuleViewController_brightnessDidChange_(WeakRetained, v10, self);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = CCUIDisplayModuleViewController;
  v7 = a4;
  [(CCUIDisplayModuleViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = sub_29C973718;
  v9[3] = &unk_29F338390;
  v9[4] = self;
  objc_msgSend_animateAlongsideTransition_completion_(v7, v8, v9, 0);
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = CCUIDisplayModuleViewController;
  [(CCUIDisplayModuleViewController *)&v7 viewWillLayoutSubviews];
  if (self->_expanded)
  {
    objc_msgSend_preferredExpandedContinuousCornerRadius(self, v3, v4);
  }

  else
  {
    objc_msgSend_compactContinuousCornerRadius(self, v3, v4);
  }

  objc_msgSend_setContinuousSliderCornerRadius_(self->_sliderView, v5, v6);
}

- (void)setGlyphPackageDescription:(id)a3
{
  v7 = a3;
  objc_msgSend_loadViewIfNeeded(self, v4, v5);
  objc_msgSend_setGlyphPackageDescription_(self->_sliderView, v6, v7);
}

- (void)setGlyphState:(id)a3
{
  v7 = a3;
  objc_msgSend_loadViewIfNeeded(self, v4, v5);
  objc_msgSend_setGlyphState_(self->_sliderView, v6, v7);
}

- (void)setCompactContinuousCornerRadius:(double)a3
{
  if (self->_compactContinuousCornerRadius != a3)
  {
    self->_compactContinuousCornerRadius = a3;
    v7 = objc_msgSend_viewIfLoaded(self, a2, v3);
    objc_msgSend_setNeedsLayout(v7, v5, v6);
  }
}

- (void)setContentRenderingMode:(unint64_t)a3
{
  if (self->_contentRenderingMode != a3)
  {
    self->_contentRenderingMode = a3;
    objc_msgSend__updateWithCurrentBrightnessAnimated_(self, a2, 0);
  }
}

- (void)setContentMetrics:(id)a3
{
  v7 = a3;
  objc_msgSend_loadViewIfNeeded(self, v4, v5);
  objc_msgSend_setContentMetrics_(self->_sliderView, v6, v7);
}

- (NSArray)containerViewsForPlatterTreatment
{
  v11[1] = *MEMORY[0x29EDCA608];
  objc_msgSend_loadViewIfNeeded(self, a2, v2);
  v6 = objc_msgSend_elasticContentView(self->_sliderView, v4, v5);
  v11[0] = v6;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v7, v11, 1);

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

- (id)viewForTouchContinuation
{
  if (objc_msgSend_isUserInteractionEnabled(self->_sliderView, a2, v2))
  {
    sliderView = self->_sliderView;
  }

  else
  {
    sliderView = 0;
  }

  return sliderView;
}

- (float)_backlightLevel
{
  contentRenderingMode = self->_contentRenderingMode;
  if (contentRenderingMode == 1)
  {
    CCUISliderPreviewRenderingModeValue();
    return v4;
  }

  else if (!contentRenderingMode)
  {

    MEMORY[0x2A1C5F678]();
  }

  return result;
}

- (void)_updateBrightnessControlAvailability
{
  sliderView = self->_sliderView;
  v5 = objc_msgSend__canAdjustBrightness(self, a2, v2) ^ 1;

  objc_msgSend_setInoperative_(sliderView, v4, v5);
}

- (void)_updateBrightnessControlInteractionEnabled
{
  sliderView = self->_sliderView;
  isAppearingOrAppeared = objc_msgSend_bs_isAppearingOrAppeared(self, a2, v2);

  MEMORY[0x2A1C70FE8](sliderView, sel_setUserInteractionEnabled_, isAppearingOrAppeared);
}

- (void)_sliderEditingDidBegin:(id)a3
{
  if (!self->_brightnessTransaction)
  {
    self->_brightnessTransaction = BKSDisplayBrightnessTransactionCreate();
  }
}

- (void)_sliderPresentationValueDidChange:(id)a3
{
  if (self->_brightnessTransaction)
  {
    objc_msgSend_presentationValue(a3, a2, a3);
    objc_msgSend__setBacklightLevel_(self, v4, v5);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_msgSend_currentBrightness(self, v6, v7);
  objc_msgSend_displayModuleViewController_brightnessDidChange_(WeakRetained, v8, self);
}

- (void)_sliderEditingDidEnd:(id)a3
{
  brightnessTransaction = self->_brightnessTransaction;
  if (brightnessTransaction)
  {
    CFRelease(brightnessTransaction);
    self->_brightnessTransaction = 0;
  }
}

- (CCUIDisplayModuleViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end