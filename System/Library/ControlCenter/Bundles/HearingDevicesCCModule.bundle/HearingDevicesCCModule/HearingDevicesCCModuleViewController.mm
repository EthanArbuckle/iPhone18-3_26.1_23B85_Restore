@interface HearingDevicesCCModuleViewController
- (HearingDevicesCCModuleViewController)init;
- (id)containerViewsForPlatterTreatment;
- (void)_updateAlphas;
- (void)expandModule;
- (void)setPlatterContentAlpha:(double)alpha;
- (void)shortcutDidChangeSize:(id)size;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HearingDevicesCCModuleViewController

- (HearingDevicesCCModuleViewController)init
{
  v21.receiver = self;
  v21.super_class = HearingDevicesCCModuleViewController;
  v2 = [(HearingDevicesCCModuleViewController *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x29EDC50A8]);
    v5 = objc_msgSend_initWithDelegate_andAvailableModules_(v3, v4, v2, &unk_2A23E8EA8);
    shortcutController = v2->_shortcutController;
    v2->_shortcutController = v5;

    objc_msgSend_setPrefersContentToAlwaysExpand_(v2->_shortcutController, v7, 1, v8);
    objc_msgSend_addChildViewController_(v2, v9, v2->_shortcutController, v10);
    objc_msgSend_didMoveToParentViewController_(v2->_shortcutController, v11, v2, v12);
    v2->_platterContentAlpha = 1.0;
    v15 = objc_msgSend_configurationWithPointSize_weight_(MEMORY[0x29EDC7AD0], v13, 3, v14, 30.0);
    v17 = objc_msgSend__systemImageNamed_withConfiguration_(MEMORY[0x29EDC7AC8], v16, @"hearingdevice.and.signal.meter", v15);
    objc_msgSend_setGlyphImage_(v2, v18, v17, v19);
  }

  return v2;
}

- (void)viewDidLoad
{
  v40.receiver = self;
  v40.super_class = HearingDevicesCCModuleViewController;
  [(CCUIButtonModuleViewController *)&v40 viewDidLoad];
  v6 = objc_msgSend_view(self, v3, v4, v5);
  v10 = objc_msgSend_view(self->_shortcutController, v7, v8, v9);
  objc_msgSend_addSubview_(v6, v11, v10, v12);

  v16 = objc_msgSend_buttonView(self, v13, v14, v15);
  v17 = hearingLocString();
  objc_msgSend_setAccessibilityLabel_(v16, v18, v17, v19);

  v23 = objc_msgSend_buttonView(self, v20, v21, v22);
  objc_msgSend_setAccessibilityIdentifier_(v23, v24, @"AX_HEARING_DEVICES", v25);

  v29 = objc_msgSend_buttonView(self, v26, v27, v28);
  v30 = UIAccessibilityControlCenterModuleExpandPlatterHint();
  objc_msgSend_setAccessibilityHint_(v29, v31, v30, v32);

  v33 = hearingLocString();
  objc_msgSend_setTitle_(self, v34, v33, v35);

  objc_msgSend_setValueText_(self, v36, 0, v37);
  objc_msgSend_setSelectedValueText_(self, v38, 0, v39);
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = HearingDevicesCCModuleViewController;
  [(CCUIButtonModuleViewController *)&v6 viewWillLayoutSubviews];
  objc_msgSend__updateAlphas(self, v3, v4, v5);
}

- (void)shortcutDidChangeSize:(id)size
{
  v5 = objc_msgSend_view(self, a2, size, v3);
  objc_msgSend_bounds(v5, v6, v7, v8);
  v10 = v9;
  objc_msgSend_preferredExpandedContentHeight(self, v11, v12, v13);
  v15 = v14;

  if (objc_msgSend_isExpanded(self, v16, v17, v18))
  {
    objc_msgSend_setPreferredContentSize_(self, v19, v20, v21, v10, v15);
  }

  v25 = objc_msgSend_contentModuleContext(self->_shortcutController, v19, v20, v21);
  objc_msgSend_invalidateContainerViewsForPlatterTreatment(v25, v22, v23, v24);
}

- (void)expandModule
{
  v7 = objc_msgSend_contentModuleContext(self->_shortcutController, a2, v2, v3);
  objc_msgSend_requestExpandModule(v7, v4, v5, v6);
}

- (id)containerViewsForPlatterTreatment
{
  v13[1] = *MEMORY[0x29EDCA608];
  if (objc_msgSend_isExpanded(self, a2, v2, v3))
  {
    v8 = objc_msgSend_containerViewsForPlatterTreatment(self->_shortcutController, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_buttonView(self, v5, v6, v7);
    v13[0] = v9;
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v10, v13, 1);
  }

  v11 = *MEMORY[0x29EDCA608];

  return v8;
}

- (void)setPlatterContentAlpha:(double)alpha
{
  if (self->_platterContentAlpha != alpha)
  {
    self->_platterContentAlpha = alpha;
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