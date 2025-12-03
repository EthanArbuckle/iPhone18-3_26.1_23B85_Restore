@interface AXCCSoundDetectionModuleViewController
- (AXCCSoundDetectionModuleViewControllerDelegate)soundDetectionDelegate;
- (BOOL)_isHeySiriRunning;
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (CCUIToggleModule)module;
- (double)_calculateAmountOfVisibleItems;
- (id)_confirmationAlertController;
- (id)contentModuleContext;
- (void)_axSettingsDidChange;
- (void)_configureMenuItems;
- (void)_confirmedToggleSoundDetectionStatusForCustomType:(id)type;
- (void)_confirmedToggleSoundDetectionStatusForType:(id)type;
- (void)_showConfirmationAlertForCustomType:(id)type;
- (void)_showConfirmationAlertForType:(id)type;
- (void)_toggleSoundDetectionStatusForCustomType:(id)type;
- (void)_toggleSoundDetectionStatusForType:(id)type;
- (void)_updateSoundDetectionState;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)buttonTouchDown:(id)down forEvent:(id)event;
- (void)viewDidLoad;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
@end

@implementation AXCCSoundDetectionModuleViewController

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = AXCCSoundDetectionModuleViewController;
  [(CCUIMenuModuleViewController *)&v13 viewDidLoad];
  v3 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x29EDC7AC8] imageNamed:@"SoundDetectionIcon" inBundle:v3];
  [(CCUIMenuModuleViewController *)self setGlyphImage:v4];
  [(AXCCSoundDetectionModuleViewController *)self _calculateAmountOfVisibleItems];
  [(CCUIMenuModuleViewController *)self setVisibleMenuItems:?];
  [(CCUIMenuModuleViewController *)self setUseTrailingCheckmarkLayout:1];
  v5 = sub_29C9325CC(@"sound.recognition.title");
  [(CCUIMenuModuleViewController *)self setTitle:v5];

  [(CCUIMenuModuleViewController *)self setIndentation:1];
  objc_initWeak(&location, self);
  v6 = sub_29C9325CC(@"settings.button");
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29C932A28;
  v10[3] = &unk_29F334C70;
  objc_copyWeak(&v11, &location);
  [(CCUIMenuModuleViewController *)self setFooterButtonTitle:v6 handler:v10];

  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = sub_29C932A6C;
  v8[3] = &unk_29F334C98;
  objc_copyWeak(&v9, &location);
  [mEMORY[0x29EDBDDB8] registerUpdateBlock:v8 forRetrieveSelector:sel_soundDetectionState withListener:self];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)buttonTouchDown:(id)down forEvent:(id)event
{
  downCopy = down;
  eventCopy = event;
  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  if ([mEMORY[0x29EDBDDB8] soundDetectionState])
  {
    v11.receiver = self;
    v11.super_class = AXCCSoundDetectionModuleViewController;
    [(CCUIButtonModuleViewController *)&v11 buttonTouchDown:downCopy forEvent:eventCopy];
  }

  else
  {
    v9 = AXLogUltron();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_29C931000, v9, OS_LOG_TYPE_INFO, "SR CC Button Tapped - Sound Detection State is OFF. Directing the user to settings.", buf, 2u);
    }

    soundDetectionDelegate = [(AXCCSoundDetectionModuleViewController *)self soundDetectionDelegate];
    [soundDetectionDelegate openSoundDetectionSettings];
  }
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v24[0]) = 0;
    _os_log_impl(&dword_29C931000, v5, OS_LOG_TYPE_INFO, "SR CC Button Tapped.", v24, 2u);
  }

  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  if (![mEMORY[0x29EDBDDB8] soundDetectionState])
  {
    v8 = AXLogUltron();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      soundDetectionDelegate = [(AXCCSoundDetectionModuleViewController *)self soundDetectionDelegate];
      [soundDetectionDelegate openSoundDetectionSettings];
      goto LABEL_10;
    }

    LOWORD(v24[0]) = 0;
    v9 = "SR CC Button Tapped - Sound Detection State is OFF. Directing the user to settings.";
LABEL_8:
    _os_log_impl(&dword_29C931000, v8, OS_LOG_TYPE_INFO, v9, v24, 2u);
    goto LABEL_9;
  }

  supportedSoundDetectionTypes = [mEMORY[0x29EDBDDB8] supportedSoundDetectionTypes];
  if ([supportedSoundDetectionTypes count])
  {

    goto LABEL_12;
  }

  enabledKShotDetectorIdentifiers = [mEMORY[0x29EDBDDB8] enabledKShotDetectorIdentifiers];
  v12 = [enabledKShotDetectorIdentifiers count];

  if (!v12)
  {
    v8 = AXLogUltron();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    LOWORD(v24[0]) = 0;
    v9 = "SR CC Button Tapped - no detectors supported. Directing the user to settings";
    goto LABEL_8;
  }

LABEL_12:
  enabledSoundDetectionTypes = [mEMORY[0x29EDBDDB8] enabledSoundDetectionTypes];
  if (![enabledSoundDetectionTypes count])
  {
    enabledKShotDetectorIdentifiers2 = [mEMORY[0x29EDBDDB8] enabledKShotDetectorIdentifiers];
    v15 = [enabledKShotDetectorIdentifiers2 count];

    if (v15)
    {
      goto LABEL_15;
    }

    v22 = AXLogUltron();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24[0]) = 0;
      _os_log_impl(&dword_29C931000, v22, OS_LOG_TYPE_INFO, "SR CC Button Tapped - no detectors on. Expanding module", v24, 2u);
    }

    soundDetectionDelegate = [(AXCCSoundDetectionModuleViewController *)self module];
    contentModuleContext = [soundDetectionDelegate contentModuleContext];
    [contentModuleContext requestExpandModule];

LABEL_10:
    goto LABEL_24;
  }

LABEL_15:
  soundDetectionState = [mEMORY[0x29EDBDDB8] soundDetectionState];
  v17 = AXLogUltron();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    _isHeySiriRunning = [(AXCCSoundDetectionModuleViewController *)self _isHeySiriRunning];
    _needsHeySiriConfirmationAlert = [(AXCCSoundDetectionModuleViewController *)self _needsHeySiriConfirmationAlert];
    v24[0] = 67109632;
    v24[1] = soundDetectionState != 2;
    v25 = 1024;
    v26 = _isHeySiriRunning;
    v27 = 1024;
    v28 = _needsHeySiriConfirmationAlert;
    _os_log_impl(&dword_29C931000, v17, OS_LOG_TYPE_INFO, "SR CC Button Tapped with detectors already on. shouldEnable: %d, isHSRunning: %d, needsHSAlert: %d", v24, 0x14u);
  }

  if (soundDetectionState != 2 && [(AXCCSoundDetectionModuleViewController *)self _needsHeySiriConfirmationAlert]&& [(AXCCSoundDetectionModuleViewController *)self _isHeySiriRunning])
  {
    v20 = AXLogUltron();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24[0]) = 0;
      _os_log_impl(&dword_29C931000, v20, OS_LOG_TYPE_INFO, "Requesting show confirmation alert.", v24, 2u);
    }

    [(AXCCSoundDetectionModuleViewController *)self _showConfirmationAlertForType:0];
  }

  else
  {
    [(AXCCSoundDetectionModuleViewController *)self _confirmedEnableSoundDetection:soundDetectionState != 2];
  }

LABEL_24:

  v21 = *MEMORY[0x29EDCA608];
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  supportedSoundDetectionTypes = [mEMORY[0x29EDBDDB8] supportedSoundDetectionTypes];
  v4 = [supportedSoundDetectionTypes count] != 0;

  return v4;
}

- (void)_axSettingsDidChange
{
  if (![(CCUIButtonModuleViewController *)self isExpanded])
  {
    mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
    -[CCUIButtonModuleViewController setSelected:](self, "setSelected:", [mEMORY[0x29EDBDDB8] soundDetectionState] == 2);
  }
}

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  modeCopy = mode;
  v6.receiver = self;
  v6.super_class = AXCCSoundDetectionModuleViewController;
  [(CCUIMenuModuleViewController *)&v6 willTransitionToExpandedContentMode:?];
  [(AXCCSoundDetectionModuleViewController *)self _configureMenuItems];
  if (modeCopy)
  {
    [(CCUIButtonModuleViewController *)self setSelected:0];
  }

  else
  {
    module = [(AXCCSoundDetectionModuleViewController *)self module];
    -[CCUIButtonModuleViewController setSelected:](self, "setSelected:", [module isSelected]);
  }
}

- (double)_calculateAmountOfVisibleItems
{
  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  supportedSoundDetectionTypes = [mEMORY[0x29EDBDDB8] supportedSoundDetectionTypes];
  v4 = [supportedSoundDetectionTypes count];

  result = 5.5;
  if (v4 <= 5)
  {
    return v4;
  }

  return result;
}

- (void)_toggleSoundDetectionStatusForType:(id)type
{
  v21 = *MEMORY[0x29EDCA608];
  typeCopy = type;
  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  enabledSoundDetectionTypes = [mEMORY[0x29EDBDDB8] enabledSoundDetectionTypes];
  if ([enabledSoundDetectionTypes count])
  {
    v7 = 0;
  }

  else
  {
    mEMORY[0x29EDBDDB8]2 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes2 = [mEMORY[0x29EDBDDB8]2 enabledSoundDetectionTypes];
    v7 = [enabledSoundDetectionTypes2 containsObject:typeCopy] ^ 1;
  }

  v10 = AXLogUltron();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138413058;
    v14 = typeCopy;
    v15 = 1024;
    v16 = v7;
    v17 = 1024;
    _isHeySiriRunning = [(AXCCSoundDetectionModuleViewController *)self _isHeySiriRunning];
    v19 = 1024;
    _needsHeySiriConfirmationAlert = [(AXCCSoundDetectionModuleViewController *)self _needsHeySiriConfirmationAlert];
    _os_log_impl(&dword_29C931000, v10, OS_LOG_TYPE_INFO, "Toggle Detector: %@. isTransitioningToRunning = %d. isHSRunning = %d, needsHSAlert = %d", &v13, 0x1Eu);
  }

  if (v7 && [(AXCCSoundDetectionModuleViewController *)self _needsHeySiriConfirmationAlert]&& [(AXCCSoundDetectionModuleViewController *)self _isHeySiriRunning])
  {
    v11 = AXLogUltron();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_29C931000, v11, OS_LOG_TYPE_INFO, "Requesting show confirmation alert.", &v13, 2u);
    }

    [(AXCCSoundDetectionModuleViewController *)self _showConfirmationAlertForType:typeCopy];
  }

  else
  {
    [(AXCCSoundDetectionModuleViewController *)self _confirmedToggleSoundDetectionStatusForType:typeCopy];
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)_toggleSoundDetectionStatusForCustomType:(id)type
{
  v23 = *MEMORY[0x29EDCA608];
  typeCopy = type;
  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  enabledKShotDetectorIdentifiers = [mEMORY[0x29EDBDDB8] enabledKShotDetectorIdentifiers];
  if ([enabledKShotDetectorIdentifiers count])
  {
    v7 = 0;
  }

  else
  {
    mEMORY[0x29EDBDDB8]2 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledKShotDetectorIdentifiers2 = [mEMORY[0x29EDBDDB8]2 enabledKShotDetectorIdentifiers];
    identifier = [typeCopy identifier];
    v7 = [enabledKShotDetectorIdentifiers2 containsObject:identifier] ^ 1;
  }

  v11 = AXLogUltron();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    name = [typeCopy name];
    v15 = 138413058;
    v16 = name;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    _isHeySiriRunning = [(AXCCSoundDetectionModuleViewController *)self _isHeySiriRunning];
    v21 = 1024;
    _needsHeySiriConfirmationAlert = [(AXCCSoundDetectionModuleViewController *)self _needsHeySiriConfirmationAlert];
    _os_log_impl(&dword_29C931000, v11, OS_LOG_TYPE_INFO, "Toggle Custom Detector: %@. isTransitioningToRunning = %d. isHSRunning = %d, needsHSAlert = %d", &v15, 0x1Eu);
  }

  if (v7 && [(AXCCSoundDetectionModuleViewController *)self _needsHeySiriConfirmationAlert]&& [(AXCCSoundDetectionModuleViewController *)self _isHeySiriRunning])
  {
    v13 = AXLogUltron();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_29C931000, v13, OS_LOG_TYPE_INFO, "Requesting show confirmation alert.", &v15, 2u);
    }

    [(AXCCSoundDetectionModuleViewController *)self _showConfirmationAlertForCustomType:typeCopy];
  }

  else
  {
    [(AXCCSoundDetectionModuleViewController *)self _confirmedToggleSoundDetectionStatusForCustomType:typeCopy];
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (void)_confirmedToggleSoundDetectionStatusForType:(id)type
{
  typeCopy = type;
  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  enabledSoundDetectionTypes = [mEMORY[0x29EDBDDB8] enabledSoundDetectionTypes];
  v6 = [enabledSoundDetectionTypes containsObject:typeCopy];

  mEMORY[0x29EDBDDB8]2 = [MEMORY[0x29EDBDDB8] sharedInstance];
  v8 = mEMORY[0x29EDBDDB8]2;
  if (v6)
  {
    [mEMORY[0x29EDBDDB8]2 removeSoundDetectionType:typeCopy];
  }

  else
  {
    [mEMORY[0x29EDBDDB8]2 addSoundDetectionType:typeCopy];
  }

  [(AXCCSoundDetectionModuleViewController *)self _configureMenuItems];
  [(AXCCSoundDetectionModuleViewController *)self _updateSoundDetectionState];
}

- (void)_confirmedToggleSoundDetectionStatusForCustomType:(id)type
{
  v4 = MEMORY[0x29EDBDDB8];
  typeCopy = type;
  sharedInstance = [v4 sharedInstance];
  enabledKShotDetectorIdentifiers = [sharedInstance enabledKShotDetectorIdentifiers];
  identifier = [typeCopy identifier];
  v9 = [enabledKShotDetectorIdentifiers containsObject:identifier];

  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  [mEMORY[0x29EDBDDB8] setKShotDetectorIsEnabled:typeCopy isEnabled:v9 ^ 1u];

  [(AXCCSoundDetectionModuleViewController *)self _configureMenuItems];

  [(AXCCSoundDetectionModuleViewController *)self _updateSoundDetectionState];
}

- (void)_updateSoundDetectionState
{
  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  enabledSoundDetectionTypes = [mEMORY[0x29EDBDDB8] enabledSoundDetectionTypes];
  v4 = [enabledSoundDetectionTypes count];

  if (v4)
  {
    v5 = 2;
  }

  else
  {
    mEMORY[0x29EDBDDB8]2 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledKShotDetectorIdentifiers = [mEMORY[0x29EDBDDB8]2 enabledKShotDetectorIdentifiers];
    if ([enabledKShotDetectorIdentifiers count])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  mEMORY[0x29EDBDDB8]3 = [MEMORY[0x29EDBDDB8] sharedInstance];
  [mEMORY[0x29EDBDDB8]3 setSoundDetectionState:v5 source:*MEMORY[0x29EDBDD28]];
}

- (BOOL)_isHeySiriRunning
{
  v2 = AXLogUltron();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_29C931000, v2, OS_LOG_TYPE_INFO, "Checking is HS Running?", v6, 2u);
  }

  mEMORY[0x29EDC8300] = [MEMORY[0x29EDC8300] sharedPreferences];
  voiceTriggerEnabled = [mEMORY[0x29EDC8300] voiceTriggerEnabled];

  return voiceTriggerEnabled;
}

- (id)_confirmationAlertController
{
  v2 = MEMORY[0x29EDC7928];
  v3 = sub_29C9325CC(@"confirmation.alert.title");
  v4 = sub_29C9325CC(@"confirmation.alert.body");
  v5 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = MEMORY[0x29EDC7920];
  v7 = sub_29C9325CC(@"confirmation.alert.cancel");
  v8 = [v6 actionWithTitle:v7 style:1 handler:0];

  [v5 addAction:v8];

  return v5;
}

- (void)_showConfirmationAlertForType:(id)type
{
  typeCopy = type;
  _confirmationAlertController = [(AXCCSoundDetectionModuleViewController *)self _confirmationAlertController];
  v6 = MEMORY[0x29EDC7920];
  v7 = sub_29C9325CC(@"confirmation.alert.ok");
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = sub_29C933A84;
  v12[3] = &unk_29F334CC0;
  v13 = typeCopy;
  selfCopy = self;
  v8 = typeCopy;
  v9 = [v6 actionWithTitle:v7 style:0 handler:v12];

  [_confirmationAlertController addAction:v9];
  v10 = AXLogUltron();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_29C931000, v10, OS_LOG_TYPE_INFO, "Presenting confirmation alert.", v11, 2u);
  }

  [(AXCCSoundDetectionModuleViewController *)self presentViewController:_confirmationAlertController animated:1 completion:0];
}

- (void)_showConfirmationAlertForCustomType:(id)type
{
  typeCopy = type;
  _confirmationAlertController = [(AXCCSoundDetectionModuleViewController *)self _confirmationAlertController];
  v6 = MEMORY[0x29EDC7920];
  v7 = sub_29C9325CC(@"confirmation.alert.ok");
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = sub_29C933BEC;
  v12[3] = &unk_29F334CC0;
  v13 = typeCopy;
  selfCopy = self;
  v8 = typeCopy;
  v9 = [v6 actionWithTitle:v7 style:0 handler:v12];

  [_confirmationAlertController addAction:v9];
  v10 = AXLogUltron();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_29C931000, v10, OS_LOG_TYPE_INFO, "Presenting confirmation alert.", v11, 2u);
  }

  [(AXCCSoundDetectionModuleViewController *)self presentViewController:_confirmationAlertController animated:1 completion:0];
}

- (void)_configureMenuItems
{
  v171 = *MEMORY[0x29EDCA608];
  objc_initWeak(&location, self);
  v125 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  supportedSoundDetectionTypes = [mEMORY[0x29EDBDDB8] supportedSoundDetectionTypes];

  mEMORY[0x29EDBDDB8]2 = [MEMORY[0x29EDBDDB8] sharedInstance];
  decodedKShotDetectors = [mEMORY[0x29EDBDDB8]2 decodedKShotDetectors];
  allValues = [decodedKShotDetectors allValues];

  v119 = [allValues axFilterObjectsUsingBlock:&unk_2A23E0360];
  v5 = [allValues axFilterObjectsUsingBlock:&unk_2A23E0380];
  v6 = MEMORY[0x29EDBDD80];
  if ([supportedSoundDetectionTypes containsObject:*MEMORY[0x29EDBDD80]])
  {
    v7 = sub_29C9325CC(@"fire.alarm");
    v8 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v166[0] = MEMORY[0x29EDCA5F8];
    v166[1] = 3221225472;
    v166[2] = sub_29C935394;
    v166[3] = &unk_29F334C70;
    objc_copyWeak(&v167, &location);
    v9 = [v8 initWithTitle:v7 identifier:v7 handler:v166];
    mEMORY[0x29EDBDDB8]3 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes = [mEMORY[0x29EDBDDB8]3 enabledSoundDetectionTypes];
    [v9 setSelected:{objc_msgSend(enabledSoundDetectionTypes, "containsObject:", *v6)}];

    [v125 addObject:v9];
    objc_destroyWeak(&v167);
  }

  v12 = MEMORY[0x29EDBDDA0];
  if ([supportedSoundDetectionTypes containsObject:{*MEMORY[0x29EDBDDA0], self}])
  {
    v13 = sub_29C9325CC(@"siren");
    v14 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v164[0] = MEMORY[0x29EDCA5F8];
    v164[1] = 3221225472;
    v164[2] = sub_29C9353D4;
    v164[3] = &unk_29F334C70;
    objc_copyWeak(&v165, &location);
    v15 = [v14 initWithTitle:v13 identifier:v13 handler:v164];
    mEMORY[0x29EDBDDB8]4 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes2 = [mEMORY[0x29EDBDDB8]4 enabledSoundDetectionTypes];
    [v15 setSelected:{objc_msgSend(enabledSoundDetectionTypes2, "containsObject:", *v12)}];

    [v125 addObject:v15];
    objc_destroyWeak(&v165);
  }

  v18 = MEMORY[0x29EDBDDA8];
  if ([supportedSoundDetectionTypes containsObject:*MEMORY[0x29EDBDDA8]])
  {
    v19 = sub_29C9325CC(@"smoke.alarm");
    v20 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v162[0] = MEMORY[0x29EDCA5F8];
    v162[1] = 3221225472;
    v162[2] = sub_29C935414;
    v162[3] = &unk_29F334C70;
    objc_copyWeak(&v163, &location);
    v21 = [v20 initWithTitle:v19 identifier:v19 handler:v162];
    mEMORY[0x29EDBDDB8]5 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes3 = [mEMORY[0x29EDBDDB8]5 enabledSoundDetectionTypes];
    [v21 setSelected:{objc_msgSend(enabledSoundDetectionTypes3, "containsObject:", *v18)}];

    [v125 addObject:v21];
    objc_destroyWeak(&v163);
  }

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  obj = v5;
  v24 = [obj countByEnumeratingWithState:&v158 objects:v170 count:16];
  if (v24)
  {
    v123 = *v159;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v159 != v123)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v158 + 1) + 8 * i);
        name = [v26 name];
        v28 = objc_alloc(MEMORY[0x29EDC0CE0]);
        v156[0] = MEMORY[0x29EDCA5F8];
        v156[1] = 3221225472;
        v156[2] = sub_29C935454;
        v156[3] = &unk_29F334D08;
        objc_copyWeak(&v157, &location);
        v156[4] = v26;
        v29 = [v28 initWithTitle:name identifier:name handler:v156];
        mEMORY[0x29EDBDDB8]6 = [MEMORY[0x29EDBDDB8] sharedInstance];
        enabledKShotDetectorIdentifiers = [mEMORY[0x29EDBDDB8]6 enabledKShotDetectorIdentifiers];
        identifier = [v26 identifier];
        [v29 setSelected:{objc_msgSend(enabledKShotDetectorIdentifiers, "containsObject:", identifier)}];

        [v125 addObject:v29];
        objc_destroyWeak(&v157);
      }

      v24 = [obj countByEnumeratingWithState:&v158 objects:v170 count:16];
    }

    while (v24);
  }

  v33 = MEMORY[0x29EDBDD50];
  if ([supportedSoundDetectionTypes containsObject:*MEMORY[0x29EDBDD50]])
  {
    v34 = sub_29C9325CC(@"cat");
    v35 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v154[0] = MEMORY[0x29EDCA5F8];
    v154[1] = 3221225472;
    v154[2] = sub_29C935490;
    v154[3] = &unk_29F334C70;
    objc_copyWeak(&v155, &location);
    v36 = [v35 initWithTitle:v34 identifier:v34 handler:v154];
    mEMORY[0x29EDBDDB8]7 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes4 = [mEMORY[0x29EDBDDB8]7 enabledSoundDetectionTypes];
    [v36 setSelected:{objc_msgSend(enabledSoundDetectionTypes4, "containsObject:", *v33)}];

    [v125 addObject:v36];
    objc_destroyWeak(&v155);
  }

  v39 = MEMORY[0x29EDBDD68];
  if ([supportedSoundDetectionTypes containsObject:*MEMORY[0x29EDBDD68]])
  {
    v40 = sub_29C9325CC(@"dog");
    v41 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v152[0] = MEMORY[0x29EDCA5F8];
    v152[1] = 3221225472;
    v152[2] = sub_29C9354D0;
    v152[3] = &unk_29F334C70;
    objc_copyWeak(&v153, &location);
    v42 = [v41 initWithTitle:v40 identifier:v40 handler:v152];
    mEMORY[0x29EDBDDB8]8 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes5 = [mEMORY[0x29EDBDDB8]8 enabledSoundDetectionTypes];
    [v42 setSelected:{objc_msgSend(enabledSoundDetectionTypes5, "containsObject:", *v39)}];

    [v125 addObject:v42];
    objc_destroyWeak(&v153);
  }

  v45 = MEMORY[0x29EDBDD30];
  if (([supportedSoundDetectionTypes containsObject:*MEMORY[0x29EDBDD30]] & 1) != 0 || (objc_msgSend(supportedSoundDetectionTypes, "containsObject:", *MEMORY[0x29EDBDD38]) & 1) != 0 || objc_msgSend(supportedSoundDetectionTypes, "containsObject:", *MEMORY[0x29EDBDD40]))
  {
    v46 = sub_29C9325CC(@"appliances");
    v47 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v150[0] = MEMORY[0x29EDCA5F8];
    v150[1] = 3221225472;
    v150[2] = sub_29C935510;
    v150[3] = &unk_29F334C70;
    objc_copyWeak(&v151, &location);
    v48 = [v47 initWithTitle:v46 identifier:v46 handler:v150];
    mEMORY[0x29EDBDDB8]9 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes6 = [mEMORY[0x29EDBDDB8]9 enabledSoundDetectionTypes];

    if ([enabledSoundDetectionTypes6 containsObject:*v45] && objc_msgSend(enabledSoundDetectionTypes6, "containsObject:", *MEMORY[0x29EDBDD38]))
    {
      v51 = [enabledSoundDetectionTypes6 containsObject:*MEMORY[0x29EDBDD40]];
    }

    else
    {
      v51 = 0;
    }

    [v48 setSelected:v51];
    [v125 addObject:v48];

    objc_destroyWeak(&v151);
  }

  v52 = MEMORY[0x29EDBDD48];
  if ([supportedSoundDetectionTypes containsObject:*MEMORY[0x29EDBDD48]])
  {
    v53 = sub_29C9325CC(@"car.horn");
    v54 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v148[0] = MEMORY[0x29EDCA5F8];
    v148[1] = 3221225472;
    v148[2] = sub_29C935594;
    v148[3] = &unk_29F334C70;
    objc_copyWeak(&v149, &location);
    v55 = [v54 initWithTitle:v53 identifier:v53 handler:v148];
    mEMORY[0x29EDBDDB8]10 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes7 = [mEMORY[0x29EDBDDB8]10 enabledSoundDetectionTypes];
    [v55 setSelected:{objc_msgSend(enabledSoundDetectionTypes7, "containsObject:", *v52)}];

    [v125 addObject:v55];
    objc_destroyWeak(&v149);
  }

  v58 = MEMORY[0x29EDBDD78];
  if ([supportedSoundDetectionTypes containsObject:*MEMORY[0x29EDBDD78]])
  {
    v59 = sub_29C9325CC(@"door.bell");
    v60 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v146[0] = MEMORY[0x29EDCA5F8];
    v146[1] = 3221225472;
    v146[2] = sub_29C9355D4;
    v146[3] = &unk_29F334C70;
    objc_copyWeak(&v147, &location);
    v61 = [v60 initWithTitle:v59 identifier:v59 handler:v146];
    mEMORY[0x29EDBDDB8]11 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes8 = [mEMORY[0x29EDBDDB8]11 enabledSoundDetectionTypes];
    [v61 setSelected:{objc_msgSend(enabledSoundDetectionTypes8, "containsObject:", *v58)}];

    [v125 addObject:v61];
    objc_destroyWeak(&v147);
  }

  v64 = MEMORY[0x29EDBDD70];
  if ([supportedSoundDetectionTypes containsObject:*MEMORY[0x29EDBDD70]])
  {
    v65 = sub_29C9325CC(@"door.knock");
    v66 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v144[0] = MEMORY[0x29EDCA5F8];
    v144[1] = 3221225472;
    v144[2] = sub_29C935614;
    v144[3] = &unk_29F334C70;
    objc_copyWeak(&v145, &location);
    v67 = [v66 initWithTitle:v65 identifier:v65 handler:v144];
    mEMORY[0x29EDBDDB8]12 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes9 = [mEMORY[0x29EDBDDB8]12 enabledSoundDetectionTypes];
    [v67 setSelected:{objc_msgSend(enabledSoundDetectionTypes9, "containsObject:", *v64)}];

    [v125 addObject:v67];
    objc_destroyWeak(&v145);
  }

  v70 = MEMORY[0x29EDBDD88];
  if ([supportedSoundDetectionTypes containsObject:*MEMORY[0x29EDBDD88]])
  {
    v71 = sub_29C9325CC(@"glass.breaking");
    v72 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v142[0] = MEMORY[0x29EDCA5F8];
    v142[1] = 3221225472;
    v142[2] = sub_29C935654;
    v142[3] = &unk_29F334C70;
    objc_copyWeak(&v143, &location);
    v73 = [v72 initWithTitle:v71 identifier:v71 handler:v142];
    mEMORY[0x29EDBDDB8]13 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes10 = [mEMORY[0x29EDBDDB8]13 enabledSoundDetectionTypes];
    [v73 setSelected:{objc_msgSend(enabledSoundDetectionTypes10, "containsObject:", *v70)}];

    [v125 addObject:v73];
    objc_destroyWeak(&v143);
  }

  v76 = MEMORY[0x29EDBDD90];
  if ([supportedSoundDetectionTypes containsObject:*MEMORY[0x29EDBDD90]])
  {
    v77 = sub_29C9325CC(@"kettle");
    v78 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v140[0] = MEMORY[0x29EDCA5F8];
    v140[1] = 3221225472;
    v140[2] = sub_29C935694;
    v140[3] = &unk_29F334C70;
    objc_copyWeak(&v141, &location);
    v79 = [v78 initWithTitle:v77 identifier:v77 handler:v140];
    mEMORY[0x29EDBDDB8]14 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes11 = [mEMORY[0x29EDBDDB8]14 enabledSoundDetectionTypes];
    [v79 setSelected:{objc_msgSend(enabledSoundDetectionTypes11, "containsObject:", *v76)}];

    [v125 addObject:v79];
    objc_destroyWeak(&v141);
  }

  v82 = MEMORY[0x29EDBDDB0];
  if ([supportedSoundDetectionTypes containsObject:*MEMORY[0x29EDBDDB0]])
  {
    v83 = sub_29C9325CC(@"water.running");
    v84 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v138[0] = MEMORY[0x29EDCA5F8];
    v138[1] = 3221225472;
    v138[2] = sub_29C9356D4;
    v138[3] = &unk_29F334C70;
    objc_copyWeak(&v139, &location);
    v85 = [v84 initWithTitle:v83 identifier:v83 handler:v138];
    mEMORY[0x29EDBDDB8]15 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes12 = [mEMORY[0x29EDBDDB8]15 enabledSoundDetectionTypes];
    [v85 setSelected:{objc_msgSend(enabledSoundDetectionTypes12, "containsObject:", *v82)}];

    [v125 addObject:v85];
    objc_destroyWeak(&v139);
  }

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v124 = v119;
  v88 = [v124 countByEnumeratingWithState:&v134 objects:v169 count:16];
  if (v88)
  {
    v89 = *v135;
    do
    {
      for (j = 0; j != v88; ++j)
      {
        if (*v135 != v89)
        {
          objc_enumerationMutation(v124);
        }

        v91 = *(*(&v134 + 1) + 8 * j);
        name2 = [v91 name];
        v93 = objc_alloc(MEMORY[0x29EDC0CE0]);
        v132[0] = MEMORY[0x29EDCA5F8];
        v132[1] = 3221225472;
        v132[2] = sub_29C935714;
        v132[3] = &unk_29F334D08;
        objc_copyWeak(&v133, &location);
        v132[4] = v91;
        v94 = [v93 initWithTitle:name2 identifier:name2 handler:v132];
        mEMORY[0x29EDBDDB8]16 = [MEMORY[0x29EDBDDB8] sharedInstance];
        enabledKShotDetectorIdentifiers2 = [mEMORY[0x29EDBDDB8]16 enabledKShotDetectorIdentifiers];
        identifier2 = [v91 identifier];
        [v94 setSelected:{objc_msgSend(enabledKShotDetectorIdentifiers2, "containsObject:", identifier2)}];

        [v125 addObject:v94];
        objc_destroyWeak(&v133);
      }

      v88 = [v124 countByEnumeratingWithState:&v134 objects:v169 count:16];
    }

    while (v88);
  }

  v98 = MEMORY[0x29EDBDD60];
  if ([supportedSoundDetectionTypes containsObject:*MEMORY[0x29EDBDD60]])
  {
    v99 = sub_29C9325CC(@"baby.crying");
    v100 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v130[0] = MEMORY[0x29EDCA5F8];
    v130[1] = 3221225472;
    v130[2] = sub_29C935750;
    v130[3] = &unk_29F334C70;
    objc_copyWeak(&v131, &location);
    v101 = [v100 initWithTitle:v99 identifier:v99 handler:v130];
    mEMORY[0x29EDBDDB8]17 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes13 = [mEMORY[0x29EDBDDB8]17 enabledSoundDetectionTypes];
    [v101 setSelected:{objc_msgSend(enabledSoundDetectionTypes13, "containsObject:", *v98)}];

    [v125 addObject:v101];
    objc_destroyWeak(&v131);
  }

  v104 = MEMORY[0x29EDBDD98];
  if ([supportedSoundDetectionTypes containsObject:*MEMORY[0x29EDBDD98]])
  {
    v105 = sub_29C9325CC(@"shouting");
    v106 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v128[0] = MEMORY[0x29EDCA5F8];
    v128[1] = 3221225472;
    v128[2] = sub_29C935790;
    v128[3] = &unk_29F334C70;
    objc_copyWeak(&v129, &location);
    v107 = [v106 initWithTitle:v105 identifier:v105 handler:v128];
    mEMORY[0x29EDBDDB8]18 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes14 = [mEMORY[0x29EDBDDB8]18 enabledSoundDetectionTypes];
    [v107 setSelected:{objc_msgSend(enabledSoundDetectionTypes14, "containsObject:", *v104)}];

    [v125 addObject:v107];
    objc_destroyWeak(&v129);
  }

  v110 = MEMORY[0x29EDBDD58];
  if ([supportedSoundDetectionTypes containsObject:*MEMORY[0x29EDBDD58]])
  {
    v111 = sub_29C9325CC(@"cough");
    v112 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v126[0] = MEMORY[0x29EDCA5F8];
    v126[1] = 3221225472;
    v126[2] = sub_29C9357D0;
    v126[3] = &unk_29F334C70;
    objc_copyWeak(&v127, &location);
    v113 = [v112 initWithTitle:v111 identifier:v111 handler:v126];
    mEMORY[0x29EDBDDB8]19 = [MEMORY[0x29EDBDDB8] sharedInstance];
    enabledSoundDetectionTypes15 = [mEMORY[0x29EDBDDB8]19 enabledSoundDetectionTypes];
    [v113 setSelected:{objc_msgSend(enabledSoundDetectionTypes15, "containsObject:", *v110)}];

    [v125 addObject:v113];
    objc_destroyWeak(&v127);
  }

  [v118 setMenuItems:v125];

  objc_destroyWeak(&location);
  v116 = *MEMORY[0x29EDCA608];
}

- (id)contentModuleContext
{
  WeakRetained = objc_loadWeakRetained(&self->_contentModuleContext);

  return WeakRetained;
}

- (CCUIToggleModule)module
{
  WeakRetained = objc_loadWeakRetained(&self->_module);

  return WeakRetained;
}

- (AXCCSoundDetectionModuleViewControllerDelegate)soundDetectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_soundDetectionDelegate);

  return WeakRetained;
}

@end