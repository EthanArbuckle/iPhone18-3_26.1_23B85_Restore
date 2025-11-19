@interface HACCModuleViewController
- (BOOL)canDismissPresentedContent;
- (HACCModuleViewController)init;
- (id)_symbolForState:(id)a3 withExposure:(float)a4;
- (id)containerViewsForPlatterTreatment;
- (void)_updateAlphas;
- (void)_updateSelectedStatus;
- (void)haccIconButtonTapped;
- (void)pauseSoundRecognitionIfNecessary;
- (void)restartSoundRecognitionIfNecessary;
- (void)setPlatterContentAlpha:(double)a3;
- (void)shortcutDidChangeSize:(id)a3;
- (void)startListening;
- (void)stopListening;
- (void)updateViewWithAudioSample:(id)a3;
- (void)updateViewWithExposure:(float)a3;
- (void)updateViewWithState:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willTransitionToExpandedContentMode:(BOOL)a3;
@end

@implementation HACCModuleViewController

- (HACCModuleViewController)init
{
  v19.receiver = self;
  v19.super_class = HACCModuleViewController;
  v2 = [(HACCModuleViewController *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x29EDC50A8]);
    v6 = objc_msgSend_initWithDelegate_(v3, v4, v2, v5);
    v7 = *(v2 + 130);
    *(v2 + 130) = v6;

    objc_msgSend_addChildViewController_(v2, v8, *(v2 + 130), v9);
    *(v2 + 132) = 0x3FF0000000000000;
    *(v2 + 1064) = 0;
    *(v2 + 267) = 0;
    objc_msgSend_updateViewWithState_(v2, v10, HACCIconAssetStateOff, v11);
    v15 = objc_msgSend_systemBlueColor(MEMORY[0x29EDC7A00], v12, v13, v14);
    objc_msgSend_setSelectedGlyphColor_(v2, v16, v15, v17);
  }

  return v2;
}

- (void)viewDidLoad
{
  v57.receiver = self;
  v57.super_class = HACCModuleViewController;
  [(CCUIButtonModuleViewController *)&v57 viewDidLoad];
  v6 = objc_msgSend_view(self, v3, v4, v5);
  v10 = objc_msgSend_view(self->_shortcutController, v7, v8, v9);
  objc_msgSend_addSubview_(v6, v11, v10, v12);

  objc_initWeak(&location, self);
  v16 = objc_msgSend_view(self, v13, v14, v15);
  v54[0] = MEMORY[0x29EDCA5F8];
  v54[1] = 3221225472;
  v54[2] = sub_29C981688;
  v54[3] = &unk_29F339208;
  objc_copyWeak(&v55, &location);
  objc_msgSend__setAccessibilityTraitsBlock_(v16, v17, v54, v18);

  v22 = objc_msgSend_view(self, v19, v20, v21);
  v52[0] = MEMORY[0x29EDCA5F8];
  v52[1] = 3221225472;
  v52[2] = sub_29C98170C;
  v52[3] = &unk_29F339230;
  objc_copyWeak(&v53, &location);
  objc_msgSend__setAccessibilityValueBlock_(v22, v23, v52, v24);

  v28 = objc_msgSend_buttonView(self, v25, v26, v27);
  v29 = hearingLocString();
  objc_msgSend_setAccessibilityLabel_(v28, v30, v29, v31);

  v35 = objc_msgSend_buttonView(self, v32, v33, v34);
  objc_msgSend_setAccessibilityIdentifier_(v35, v36, @"AX_HEARING_DEVICES", v37);

  v41 = objc_msgSend_buttonView(self, v38, v39, v40);
  v42 = UIAccessibilityControlCenterModuleExpandPlatterHint();
  objc_msgSend_setAccessibilityHint_(v41, v43, v42, v44);

  v45 = hearingLocString();
  objc_msgSend_setTitle_(self, v46, v45, v47);

  objc_msgSend_setValueText_(self, v48, 0, v49);
  objc_msgSend_setSelectedValueText_(self, v50, 0, v51);
  objc_destroyWeak(&v53);
  objc_destroyWeak(&v55);
  objc_destroyWeak(&location);
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = HACCModuleViewController;
  [(CCUIButtonModuleViewController *)&v6 viewWillLayoutSubviews];
  objc_msgSend__updateAlphas(self, v3, v4, v5);
}

- (void)willTransitionToExpandedContentMode:(BOOL)a3
{
  v3 = a3;
  v15.receiver = self;
  v15.super_class = HACCModuleViewController;
  [(CCUIButtonModuleViewController *)&v15 willTransitionToExpandedContentMode:?];
  if (v3)
  {
    objc_msgSend_pauseSoundRecognitionIfNecessary(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_restartSoundRecognitionIfNecessary(self, v5, v6, v7);
  }

  if (_UISolariumEnabled())
  {
    v11 = objc_msgSend_contentModuleContext(self->_shortcutController, v8, v9, v10);
    objc_msgSend_invalidateContainerViewsForPlatterTreatment(v11, v12, v13, v14);
  }
}

- (BOOL)canDismissPresentedContent
{
  v4 = objc_msgSend_expandedController(self->_shortcutController, a2, v2, v3);
  v5 = v4 != 0;

  return v5;
}

- (void)shortcutDidChangeSize:(id)a3
{
  v5 = objc_msgSend_view(self, a2, a3, v3);
  objc_msgSend_bounds(v5, v6, v7, v8);
  v10 = v9;
  objc_msgSend_preferredExpandedContentHeight(self, v11, v12, v13);
  v15 = v14;

  if (objc_msgSend_isExpanded(self, v16, v17, v18))
  {
    objc_msgSend_setPreferredContentSize_(self, v19, v20, v21, v10, v15);
  }

  if (_UISolariumEnabled())
  {
    v28 = objc_msgSend_contentModuleContext(self->_shortcutController, v22, v23, v24);
    objc_msgSend_invalidateContainerViewsForPlatterTreatment(v28, v25, v26, v27);
  }
}

- (void)haccIconButtonTapped
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_contentModuleContext(self->_shortcutController, a2, v2, v3);
  objc_msgSend_requestExpandModule(v5, v6, v7, v8);

  v12 = objc_msgSend_assetState(self, v9, v10, v11);
  LOBYTE(v5) = objc_msgSend_isEqualToString_(v12, v13, HACCIconAssetStateOff, v14);

  if ((v5 & 1) == 0)
  {
    v15 = AXLogAggregate();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = &unk_2A23E8900;
      _os_log_impl(&dword_29C980000, v15, OS_LOG_TYPE_INFO, "Live headphone level opened: %@", buf, 0xCu);
    }

    AnalyticsSendEventLazy();
  }

  v16 = *MEMORY[0x29EDCA608];
}

- (void)pauseSoundRecognitionIfNecessary
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x29EDBDDB8], a2, v2, v3);
  v9 = objc_msgSend_soundDetectionState(v5, v6, v7, v8);

  if (v9 == 2)
  {
    v10 = AXLogUltron();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_29C980000, v10, OS_LOG_TYPE_DEFAULT, "Pausing Sound Recognition for Live Listen UI", v16, 2u);
    }

    v14 = objc_msgSend_sharedInstance(MEMORY[0x29EDBDDB8], v11, v12, v13);
    objc_msgSend_setSoundDetectionState_source_(v14, v15, 1, *MEMORY[0x29EDBDD20]);

    self->_pausedSoundRecognition = 1;
  }
}

- (void)restartSoundRecognitionIfNecessary
{
  if (self->_pausedSoundRecognition)
  {
    v5 = objc_msgSend_sharedInstance(MEMORY[0x29EDBDDB8], a2, v2, v3);
    v9 = objc_msgSend_soundDetectionState(v5, v6, v7, v8);

    if (v9 == 1)
    {
      v10 = AXLogUltron();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_29C980000, v10, OS_LOG_TYPE_DEFAULT, "Resuming Sound Recognition for Live Listen UI", v16, 2u);
      }

      v14 = objc_msgSend_sharedInstance(MEMORY[0x29EDBDDB8], v11, v12, v13);
      objc_msgSend_setSoundDetectionState_source_(v14, v15, 2, *MEMORY[0x29EDBDD20]);

      self->_pausedSoundRecognition = 0;
    }
  }
}

- (void)startListening
{
  objc_initWeak(&location, self);
  v6 = objc_msgSend_sharedInstance(MEMORY[0x29EDC50D0], v3, v4, v5);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = sub_29C9821B4;
  v8[3] = &unk_29F339320;
  objc_copyWeak(&v9, &location);
  objc_msgSend_registerListener_forLiveHeadphoneLevelHandler_(v6, v7, self, v8);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)stopListening
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x29EDC50D0], a2, v2, v3);
  objc_msgSend_unregisterLiveHeadphoneLevelHandler_(v5, v6, self, v7);

  v10 = HACCIconAssetStateOff;

  objc_msgSend_updateViewWithState_(self, v8, v10, v9);
}

- (void)updateViewWithAudioSample:(id)a3
{
  v4 = *MEMORY[0x29EDC50C0];
  v5 = a3;
  v8 = objc_msgSend_objectForKey_(v5, v6, v4, v7);
  objc_msgSend_floatValue(v8, v9, v10, v11);

  v14 = objc_msgSend_objectForKey_(v5, v12, *MEMORY[0x29EDC50C8], v13);
  v18 = objc_msgSend_unsignedIntegerValue(v14, v15, v16, v17);

  v21 = objc_msgSend_objectForKey_(v5, v19, *MEMORY[0x29EDC50B8], v20);

  LODWORD(v5) = objc_msgSend_BOOLValue(v21, v22, v23, v24);
  if (v5)
  {
    if (v18)
    {
      if (v18 != 100 && v18 != 80)
      {
LABEL_11:

        MEMORY[0x2A1C70FE8](self, sel_updateViewWithExposure_, v26, v27);
        return;
      }

      v28 = &HACCIconAssetStateWarning;
    }

    else
    {
      v28 = &HACCIconAssetStateSafe;
    }

    objc_msgSend_updateViewWithState_(self, v25, *v28, v27);
    goto LABEL_11;
  }

  v29 = HACCIconAssetStateOff;

  objc_msgSend_updateViewWithState_(self, v25, v29, v27);
}

- (void)updateViewWithState:(id)a3
{
  v25 = a3;
  v8 = objc_msgSend_assetState(self, v5, v6, v7);
  if (!v8 || (v12 = v8, objc_msgSend_assetState(self, v9, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v13, v14, v25, v15), v13, v12, (isEqualToString & 1) == 0))
  {
    objc_storeStrong(&self->_assetState, a3);
    objc_msgSend_exposure(self, v17, v18, v19);
    v22 = objc_msgSend__symbolForState_withExposure_(self, v20, v25, v21);
    objc_msgSend_setGlyphImage_(self, v23, v22, v24);
  }
}

- (void)updateViewWithExposure:(float)a3
{
  objc_msgSend_exposure(self, a2, v3, v4);
  if (v10 != a3)
  {
    self->_exposure = a3;
    v17 = objc_msgSend_assetState(self, v7, v8, v9);
    *&v11 = a3;
    v14 = objc_msgSend__symbolForState_withExposure_(self, v12, v17, v13, v11);
    objc_msgSend_setGlyphImage_(self, v15, v14, v16);
  }
}

- (id)_symbolForState:(id)a3 withExposure:(float)a4
{
  v5 = a3;
  v11 = objc_msgSend_configurationPreferringMulticolor(MEMORY[0x29EDC7AD0], v6, v7, v8);
  if (((a4 + -20.0) / 90.0) >= 0.0)
  {
    v12 = (a4 + -20.0) / 90.0;
  }

  else
  {
    v12 = 0.0;
  }

  if (objc_msgSend_isEqualToString_(v5, v9, HACCIconAssetStateOff, v10))
  {
    v15 = objc_msgSend_systemImageNamed_(MEMORY[0x29EDC7AC8], v13, @"ear", v14);
    v19 = objc_msgSend_whiteColor(MEMORY[0x29EDC7A00], v16, v17, v18);
    v22 = objc_msgSend_imageWithTintColor_(v15, v20, v19, v21);

LABEL_11:
    goto LABEL_12;
  }

  v23 = fminf(v12, 1.0);
  if (objc_msgSend_isEqualToString_(v5, v13, HACCIconAssetStateSafe, v14))
  {
    v26 = MEMORY[0x29EDC7AC8];
    v27 = MEMORY[0x29EDB9F48];
    v28 = objc_opt_class();
    v15 = objc_msgSend_bundleForClass_(v27, v29, v28, v30);
    objc_msgSend_imageNamed_inBundle_variableValue_withConfiguration_(v26, v31, @"ear.badge.checkmark.dots", v15, v11, v23);
    v22 = LABEL_10:;
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(v5, v24, HACCIconAssetStateWarning, v25))
  {
    v32 = MEMORY[0x29EDC7AC8];
    v33 = MEMORY[0x29EDB9F48];
    v34 = objc_opt_class();
    v15 = objc_msgSend_bundleForClass_(v33, v35, v34, v36);
    objc_msgSend_imageNamed_inBundle_variableValue_withConfiguration_(v32, v37, @"ear.trianglebadge.exclamationmark.dots", v15, v11, v23);
    goto LABEL_10;
  }

  v22 = 0;
LABEL_12:

  return v22;
}

- (void)_updateSelectedStatus
{
  v14 = objc_msgSend_sharedInstance(MEMORY[0x29EDC50D8], a2, v2, v3);
  if (objc_msgSend_comfortSoundsEnabled(v14, v5, v6, v7))
  {
    objc_msgSend_setSelected_(self, v8, 1, v10);
  }

  else
  {
    isLiveListenEnabled = objc_msgSend_isLiveListenEnabled(self, v8, v9, v10);
    objc_msgSend_setSelected_(self, v12, isLiveListenEnabled, v13);
  }
}

- (id)containerViewsForPlatterTreatment
{
  v14[1] = *MEMORY[0x29EDCA608];
  if (_UISolariumEnabled())
  {
    if (objc_msgSend_isExpanded(self, v3, v4, v5))
    {
      v9 = objc_msgSend_containerViewsForPlatterTreatment(self->_shortcutController, v6, v7, v8);
    }

    else
    {
      v10 = objc_msgSend_buttonView(self, v6, v7, v8);
      v14[0] = v10;
      v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v11, v14, 1);
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x29EDCA608];

  return v9;
}

- (void)setPlatterContentAlpha:(double)a3
{
  if (self->_platterContentAlpha != a3)
  {
    self->_platterContentAlpha = a3;
    objc_msgSend__updateAlphas(self, a2, v3, v4);
  }
}

- (void)_updateAlphas
{
  isExpanded = objc_msgSend_isExpanded(self, a2, v2, v3);
  v9 = objc_msgSend_view(self->_shortcutController, v6, v7, v8);
  v13 = v9;
  if (isExpanded)
  {
    objc_msgSend_platterContentAlpha(self, v10, v11, v12);
    objc_msgSend_setAlpha_(v13, v14, v15, v16);

    v33 = objc_msgSend_buttonView(self, v17, v18, v19);
    objc_msgSend_setAlpha_(v33, v20, v21, v22, 0.0);
  }

  else
  {
    objc_msgSend_setAlpha_(v9, v10, v11, v12, 0.0);

    v33 = objc_msgSend_buttonView(self, v23, v24, v25);
    objc_msgSend_platterContentAlpha(self, v26, v27, v28);
    objc_msgSend_setAlpha_(v33, v29, v30, v31, v32);
  }
}

@end