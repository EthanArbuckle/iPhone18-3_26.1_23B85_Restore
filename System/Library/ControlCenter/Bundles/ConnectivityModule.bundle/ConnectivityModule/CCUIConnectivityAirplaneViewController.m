@interface CCUIConnectivityAirplaneViewController
- (BOOL)_isStateOverridden;
- (BOOL)_stateWithEffectiveOverrides;
- (BOOL)_toggleState;
- (CCUIConnectivityAirplaneViewController)init;
- (id)_debugDescriptionForState:(BOOL)a3;
- (id)displayName;
- (id)subtitleText;
- (void)_updateState;
- (void)airplaneModeChanged;
- (void)buttonTapped:(id)a3;
- (void)dealloc;
- (void)startObservingStateChanges;
- (void)stopObservingStateChanges;
@end

@implementation CCUIConnectivityAirplaneViewController

- (void)dealloc
{
  queue = self->_queue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C96259C;
  block[3] = &unk_29F337330;
  block[4] = self;
  dispatch_sync(queue, block);
  v4.receiver = self;
  v4.super_class = CCUIConnectivityAirplaneViewController;
  [(CCUIConnectivityAirplaneViewController *)&v4 dealloc];
}

- (CCUIConnectivityAirplaneViewController)init
{
  v3 = MEMORY[0x29EDC7AC8];
  v4 = MEMORY[0x29EDB9F48];
  v5 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v4, v6, v5);
  v9 = objc_msgSend_imageNamed_inBundle_(v3, v8, @"AirplaneGlyph", v7);
  v12 = objc_msgSend_imageFlippedForRightToLeftLayoutDirection(v9, v10, v11);

  v15 = objc_msgSend_systemOrangeColor(MEMORY[0x29EDC7A00], v13, v14);
  v24.receiver = self;
  v24.super_class = CCUIConnectivityAirplaneViewController;
  v16 = [(CCUIConnectivityButtonViewController *)&v24 initWithGlyphImage:v12 highlightColor:v15];

  if (v16)
  {
    v17 = dispatch_queue_create("com.apple.ControlCenter.AirplaneViewController", 0);
    v18 = *(v16 + 142);
    *(v16 + 142) = v17;

    v19 = objc_alloc(MEMORY[0x29EDBE2A8]);
    v21 = objc_msgSend_initWithQueue_(v19, v20, *(v16 + 142));
    v22 = *(v16 + 141);
    *(v16 + 141) = v21;
  }

  return v16;
}

- (void)buttonTapped:(id)a3
{
  v4 = a3;
  objc_msgSend__toggleState(self, v5, v6);
  v7.receiver = self;
  v7.super_class = CCUIConnectivityAirplaneViewController;
  [(CCUIConnectivityButtonViewController *)&v7 buttonTapped:v4];
}

- (id)displayName
{
  v2 = MEMORY[0x29EDB9F48];
  v3 = objc_opt_class();
  v5 = objc_msgSend_bundleForClass_(v2, v4, v3);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"CONTROL_CENTER_STATUS_AIRPLANE_MODE_NAME", &stru_2A23E4910, 0);

  return v7;
}

- (id)subtitleText
{
  isEnabled = objc_msgSend_isEnabled(self, a2, v2);
  v4 = MEMORY[0x29EDB9F48];
  v5 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v4, v6, v5);
  v9 = v7;
  if (isEnabled)
  {
    objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"CONTROL_CENTER_STATUS_AIRPLANE_MODE_ON", &stru_2A23E4910, 0);
  }

  else
  {
    objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"CONTROL_CENTER_STATUS_AIRPLANE_MODE_OFF", &stru_2A23E4910, 0);
  }
  v10 = ;

  return v10;
}

- (void)startObservingStateChanges
{
  v5.receiver = self;
  v5.super_class = CCUIConnectivityAirplaneViewController;
  [(CCUIConnectivityButtonViewController *)&v5 startObservingStateChanges];
  queue = self->_queue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C962BF8;
  block[3] = &unk_29F337330;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)stopObservingStateChanges
{
  v5.receiver = self;
  v5.super_class = CCUIConnectivityAirplaneViewController;
  [(CCUIConnectivityButtonViewController *)&v5 stopObservingStateChanges];
  queue = self->_queue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C962CE4;
  block[3] = &unk_29F337330;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)airplaneModeChanged
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = *MEMORY[0x29EDC0C90];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C90], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C961000, v3, OS_LOG_TYPE_DEFAULT, "Airplane Mode state changed", buf, 2u);
  }

  v6 = objc_msgSend_airplaneMode(self->_airplaneModeController, v4, v5);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = sub_29C962DEC;
  v7[3] = &unk_29F337358;
  v7[4] = self;
  v8 = v6;
  dispatch_async(MEMORY[0x29EDCA578], v7);
}

- (void)_updateState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = sub_29C962F14;
  v5[3] = &unk_29F337380;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  objc_msgSend__updateStateWithEnabled_(self, v4, *(v7 + 24));
  _Block_object_dispose(&v6, 8);
}

- (BOOL)_toggleState
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend__isAirplaneModeEnabled(self, a2, v2) ^ 1;
  v5 = *MEMORY[0x29EDC0C90];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C90], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v8 = objc_msgSend__debugDescriptionForState_(self, v7, v4);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_29C961000, v6, OS_LOG_TYPE_DEFAULT, "Toggle AirPlane Mode state to %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = sub_29C96319C;
  v12[3] = &unk_29F337358;
  v12[4] = self;
  v13 = v4;
  dispatch_sync(queue, v12);
  v10 = *MEMORY[0x29EDCA608];
  return 1;
}

- (BOOL)_stateWithEffectiveOverrides
{
  airplaneModeEnabled = self->_airplaneModeEnabled;
  if (objc_msgSend__isStateOverridden(self, a2, v2))
  {
    airplaneModeEnabled = *(objc_msgSend_getStatusBarOverrideData(MEMORY[0x29EDC7CA0], v4, v5) + 67);
  }

  return airplaneModeEnabled & 1;
}

- (BOOL)_isStateOverridden
{
  v3 = objc_msgSend_standardDefaults(MEMORY[0x29EDC0C58], a2, v2);
  if (objc_msgSend_shouldExcludeControlCenterFromStatusBarOverrides(v3, v4, v5))
  {

LABEL_5:
    v9 = 0;
    return v9 & 1;
  }

  v6 = CCSIsInternalInstall();

  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = *(objc_msgSend_getStatusBarOverrideData(MEMORY[0x29EDC7CA0], v7, v8) + 3);
  return v9 & 1;
}

- (id)_debugDescriptionForState:(BOOL)a3
{
  if (a3)
  {
    return @"on";
  }

  else
  {
    return @"off";
  }
}

@end