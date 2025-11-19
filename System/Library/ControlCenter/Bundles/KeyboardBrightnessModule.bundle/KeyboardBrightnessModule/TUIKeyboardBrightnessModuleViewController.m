@interface TUIKeyboardBrightnessModuleViewController
- (BOOL)isHardwareKeyboardAvailable;
- (TUIKeyboardBrightnessModuleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)createSliderView;
- (id)sliderView;
- (void)dealloc;
- (void)sliderEditingDidEnd:(id)a3;
- (void)sliderValueDidChange:(id)a3;
- (void)updateControls;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation TUIKeyboardBrightnessModuleViewController

- (TUIKeyboardBrightnessModuleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v11.receiver = self;
  v11.super_class = TUIKeyboardBrightnessModuleViewController;
  v4 = [(CCUIButtonModuleViewController *)&v11 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v6, *MEMORY[0x29EDC14D8], v7, v8);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, sub_29C9CB218, v9, 0, 0);
  }

  return v4;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v4, *MEMORY[0x29EDC14D8], v5, v6);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v7, 0);

  objc_msgSend_suspendIdleDimming_(self, v8, 0, v9, v10);
  objc_msgSend_unregisterKeyboardNotificationBlock(self->_keyboardBrightnessClient, v11, v12, v13, v14);
  v15.receiver = self;
  v15.super_class = TUIKeyboardBrightnessModuleViewController;
  [(TUIKeyboardBrightnessModuleViewController *)&v15 dealloc];
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = TUIKeyboardBrightnessModuleViewController;
  [(CCUISliderModuleViewController *)&v28 viewDidLoad];
  objc_msgSend_setSelected_(self, v3, 1, v4, v5);
  v10 = objc_msgSend_sliderView(self, v6, v7, v8, v9);
  objc_msgSend_addTarget_action_forControlEvents_(v10, v11, self, sel_sliderValueDidChange_, 4096);
  objc_msgSend_addTarget_action_forControlEvents_(v10, v12, self, sel_sliderEditingDidEnd_, 0x40000);
  v13 = objc_alloc_init(MEMORY[0x29EDC0DB0]);
  keyboardBrightnessClient = self->_keyboardBrightnessClient;
  self->_keyboardBrightnessClient = v13;

  objc_initWeak(&location, self);
  v15 = self->_keyboardBrightnessClient;
  v16 = *MEMORY[0x29EDC0DB8];
  v22 = MEMORY[0x29EDCA5F8];
  v23 = 3221225472;
  v24 = sub_29C9CB434;
  v25 = &unk_29F33CC50;
  objc_copyWeak(&v26, &location);
  objc_msgSend_registerNotificationForKeys_keyboardID_block_(v15, v17, &unk_2A23EEC00, v16, &v22);
  objc_msgSend_updateControls(self, v18, v19, v20, v21, v22, v23, v24, v25);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = TUIKeyboardBrightnessModuleViewController;
  [(CCUISliderModuleViewController *)&v7 viewWillLayoutSubviews];
  objc_msgSend_updateControls(self, v3, v4, v5, v6);
}

- (id)sliderView
{
  v4.receiver = self;
  v4.super_class = TUIKeyboardBrightnessModuleViewController;
  v2 = [(CCUISliderModuleViewController *)&v4 sliderView];

  return v2;
}

- (id)createSliderView
{
  v3 = objc_alloc(MEMORY[0x29EDC0CC0]);
  v8 = objc_msgSend_view(self, v4, v5, v6, v7);
  objc_msgSend_bounds(v8, v9, v10, v11, v12);
  v17 = objc_msgSend_initWithFrame_(v3, v13, v14, v15, v16);

  return v17;
}

- (void)sliderValueDidChange:(id)a3
{
  keyboardBrightnessClient = self->_keyboardBrightnessClient;
  objc_msgSend_value(a3, a2, a3, v3, v4);
  v6 = *MEMORY[0x29EDC0DB8];

  MEMORY[0x2A1C70FE8](keyboardBrightnessClient, sel_setBrightness_fadeSpeed_commit_forKeyboard_, 0, 0, v6);
}

- (void)sliderEditingDidEnd:(id)a3
{
  keyboardBrightnessClient = self->_keyboardBrightnessClient;
  objc_msgSend_value(a3, a2, a3, v3, v4);
  v6 = *MEMORY[0x29EDC0DB8];

  MEMORY[0x2A1C70FE8](keyboardBrightnessClient, sel_setBrightness_fadeSpeed_commit_forKeyboard_, 0, 1, v6);
}

- (void)updateControls
{
  objc_msgSend_brightnessForKeyboard_(self->_keyboardBrightnessClient, a2, *MEMORY[0x29EDC0DB8], v2, v3);

  objc_msgSend_updateControlsForValue_animated_(self, v5, 0, v6, v7);
}

- (BOOL)isHardwareKeyboardAvailable
{
  v5 = objc_msgSend_copyKeyboardBacklightIDs(self->_keyboardBrightnessClient, a2, v2, v3, v4);
  v10 = objc_msgSend_count(v5, v6, v7, v8, v9);

  return v10 >= 1 && GSEventIsHardwareKeyboardAttached() != 0;
}

@end