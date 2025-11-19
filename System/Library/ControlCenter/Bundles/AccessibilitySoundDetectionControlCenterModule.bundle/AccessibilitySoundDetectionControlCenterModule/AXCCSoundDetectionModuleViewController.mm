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
- (void)_confirmedToggleSoundDetectionStatusForCustomType:(id)a3;
- (void)_confirmedToggleSoundDetectionStatusForType:(id)a3;
- (void)_showConfirmationAlertForCustomType:(id)a3;
- (void)_showConfirmationAlertForType:(id)a3;
- (void)_toggleSoundDetectionStatusForCustomType:(id)a3;
- (void)_toggleSoundDetectionStatusForType:(id)a3;
- (void)_updateSoundDetectionState;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)buttonTouchDown:(id)a3 forEvent:(id)a4;
- (void)viewDidLoad;
- (void)willTransitionToExpandedContentMode:(BOOL)a3;
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

  v7 = [MEMORY[0x29EDBDDB8] sharedInstance];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = sub_29C932A6C;
  v8[3] = &unk_29F334C98;
  objc_copyWeak(&v9, &location);
  [v7 registerUpdateBlock:v8 forRetrieveSelector:sel_soundDetectionState withListener:self];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)buttonTouchDown:(id)a3 forEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x29EDBDDB8] sharedInstance];
  if ([v8 soundDetectionState])
  {
    v11.receiver = self;
    v11.super_class = AXCCSoundDetectionModuleViewController;
    [(CCUIButtonModuleViewController *)&v11 buttonTouchDown:v6 forEvent:v7];
  }

  else
  {
    v9 = AXLogUltron();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_29C931000, v9, OS_LOG_TYPE_INFO, "SR CC Button Tapped - Sound Detection State is OFF. Directing the user to settings.", buf, 2u);
    }

    v10 = [(AXCCSoundDetectionModuleViewController *)self soundDetectionDelegate];
    [v10 openSoundDetectionSettings];
  }
}

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v24[0]) = 0;
    _os_log_impl(&dword_29C931000, v5, OS_LOG_TYPE_INFO, "SR CC Button Tapped.", v24, 2u);
  }

  v6 = [MEMORY[0x29EDBDDB8] sharedInstance];
  if (![v6 soundDetectionState])
  {
    v8 = AXLogUltron();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      v10 = [(AXCCSoundDetectionModuleViewController *)self soundDetectionDelegate];
      [v10 openSoundDetectionSettings];
      goto LABEL_10;
    }

    LOWORD(v24[0]) = 0;
    v9 = "SR CC Button Tapped - Sound Detection State is OFF. Directing the user to settings.";
LABEL_8:
    _os_log_impl(&dword_29C931000, v8, OS_LOG_TYPE_INFO, v9, v24, 2u);
    goto LABEL_9;
  }

  v7 = [v6 supportedSoundDetectionTypes];
  if ([v7 count])
  {

    goto LABEL_12;
  }

  v11 = [v6 enabledKShotDetectorIdentifiers];
  v12 = [v11 count];

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
  v13 = [v6 enabledSoundDetectionTypes];
  if (![v13 count])
  {
    v14 = [v6 enabledKShotDetectorIdentifiers];
    v15 = [v14 count];

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

    v10 = [(AXCCSoundDetectionModuleViewController *)self module];
    v23 = [v10 contentModuleContext];
    [v23 requestExpandModule];

LABEL_10:
    goto LABEL_24;
  }

LABEL_15:
  v16 = [v6 soundDetectionState];
  v17 = AXLogUltron();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [(AXCCSoundDetectionModuleViewController *)self _isHeySiriRunning];
    v19 = [(AXCCSoundDetectionModuleViewController *)self _needsHeySiriConfirmationAlert];
    v24[0] = 67109632;
    v24[1] = v16 != 2;
    v25 = 1024;
    v26 = v18;
    v27 = 1024;
    v28 = v19;
    _os_log_impl(&dword_29C931000, v17, OS_LOG_TYPE_INFO, "SR CC Button Tapped with detectors already on. shouldEnable: %d, isHSRunning: %d, needsHSAlert: %d", v24, 0x14u);
  }

  if (v16 != 2 && [(AXCCSoundDetectionModuleViewController *)self _needsHeySiriConfirmationAlert]&& [(AXCCSoundDetectionModuleViewController *)self _isHeySiriRunning])
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
    [(AXCCSoundDetectionModuleViewController *)self _confirmedEnableSoundDetection:v16 != 2];
  }

LABEL_24:

  v21 = *MEMORY[0x29EDCA608];
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  v2 = [MEMORY[0x29EDBDDB8] sharedInstance];
  v3 = [v2 supportedSoundDetectionTypes];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)_axSettingsDidChange
{
  if (![(CCUIButtonModuleViewController *)self isExpanded])
  {
    v3 = [MEMORY[0x29EDBDDB8] sharedInstance];
    -[CCUIButtonModuleViewController setSelected:](self, "setSelected:", [v3 soundDetectionState] == 2);
  }
}

- (void)willTransitionToExpandedContentMode:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = AXCCSoundDetectionModuleViewController;
  [(CCUIMenuModuleViewController *)&v6 willTransitionToExpandedContentMode:?];
  [(AXCCSoundDetectionModuleViewController *)self _configureMenuItems];
  if (v3)
  {
    [(CCUIButtonModuleViewController *)self setSelected:0];
  }

  else
  {
    v5 = [(AXCCSoundDetectionModuleViewController *)self module];
    -[CCUIButtonModuleViewController setSelected:](self, "setSelected:", [v5 isSelected]);
  }
}

- (double)_calculateAmountOfVisibleItems
{
  v2 = [MEMORY[0x29EDBDDB8] sharedInstance];
  v3 = [v2 supportedSoundDetectionTypes];
  v4 = [v3 count];

  result = 5.5;
  if (v4 <= 5)
  {
    return v4;
  }

  return result;
}

- (void)_toggleSoundDetectionStatusForType:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [MEMORY[0x29EDBDDB8] sharedInstance];
  v6 = [v5 enabledSoundDetectionTypes];
  if ([v6 count])
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v9 = [v8 enabledSoundDetectionTypes];
    v7 = [v9 containsObject:v4] ^ 1;
  }

  v10 = AXLogUltron();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138413058;
    v14 = v4;
    v15 = 1024;
    v16 = v7;
    v17 = 1024;
    v18 = [(AXCCSoundDetectionModuleViewController *)self _isHeySiriRunning];
    v19 = 1024;
    v20 = [(AXCCSoundDetectionModuleViewController *)self _needsHeySiriConfirmationAlert];
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

    [(AXCCSoundDetectionModuleViewController *)self _showConfirmationAlertForType:v4];
  }

  else
  {
    [(AXCCSoundDetectionModuleViewController *)self _confirmedToggleSoundDetectionStatusForType:v4];
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)_toggleSoundDetectionStatusForCustomType:(id)a3
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [MEMORY[0x29EDBDDB8] sharedInstance];
  v6 = [v5 enabledKShotDetectorIdentifiers];
  if ([v6 count])
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v9 = [v8 enabledKShotDetectorIdentifiers];
    v10 = [v4 identifier];
    v7 = [v9 containsObject:v10] ^ 1;
  }

  v11 = AXLogUltron();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v4 name];
    v15 = 138413058;
    v16 = v12;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = [(AXCCSoundDetectionModuleViewController *)self _isHeySiriRunning];
    v21 = 1024;
    v22 = [(AXCCSoundDetectionModuleViewController *)self _needsHeySiriConfirmationAlert];
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

    [(AXCCSoundDetectionModuleViewController *)self _showConfirmationAlertForCustomType:v4];
  }

  else
  {
    [(AXCCSoundDetectionModuleViewController *)self _confirmedToggleSoundDetectionStatusForCustomType:v4];
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (void)_confirmedToggleSoundDetectionStatusForType:(id)a3
{
  v9 = a3;
  v4 = [MEMORY[0x29EDBDDB8] sharedInstance];
  v5 = [v4 enabledSoundDetectionTypes];
  v6 = [v5 containsObject:v9];

  v7 = [MEMORY[0x29EDBDDB8] sharedInstance];
  v8 = v7;
  if (v6)
  {
    [v7 removeSoundDetectionType:v9];
  }

  else
  {
    [v7 addSoundDetectionType:v9];
  }

  [(AXCCSoundDetectionModuleViewController *)self _configureMenuItems];
  [(AXCCSoundDetectionModuleViewController *)self _updateSoundDetectionState];
}

- (void)_confirmedToggleSoundDetectionStatusForCustomType:(id)a3
{
  v4 = MEMORY[0x29EDBDDB8];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 enabledKShotDetectorIdentifiers];
  v8 = [v5 identifier];
  v9 = [v7 containsObject:v8];

  v10 = [MEMORY[0x29EDBDDB8] sharedInstance];
  [v10 setKShotDetectorIsEnabled:v5 isEnabled:v9 ^ 1u];

  [(AXCCSoundDetectionModuleViewController *)self _configureMenuItems];

  [(AXCCSoundDetectionModuleViewController *)self _updateSoundDetectionState];
}

- (void)_updateSoundDetectionState
{
  v2 = [MEMORY[0x29EDBDDB8] sharedInstance];
  v3 = [v2 enabledSoundDetectionTypes];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v6 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v7 = [v6 enabledKShotDetectorIdentifiers];
    if ([v7 count])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  v8 = [MEMORY[0x29EDBDDB8] sharedInstance];
  [v8 setSoundDetectionState:v5 source:*MEMORY[0x29EDBDD28]];
}

- (BOOL)_isHeySiriRunning
{
  v2 = AXLogUltron();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_29C931000, v2, OS_LOG_TYPE_INFO, "Checking is HS Running?", v6, 2u);
  }

  v3 = [MEMORY[0x29EDC8300] sharedPreferences];
  v4 = [v3 voiceTriggerEnabled];

  return v4;
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

- (void)_showConfirmationAlertForType:(id)a3
{
  v4 = a3;
  v5 = [(AXCCSoundDetectionModuleViewController *)self _confirmationAlertController];
  v6 = MEMORY[0x29EDC7920];
  v7 = sub_29C9325CC(@"confirmation.alert.ok");
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = sub_29C933A84;
  v12[3] = &unk_29F334CC0;
  v13 = v4;
  v14 = self;
  v8 = v4;
  v9 = [v6 actionWithTitle:v7 style:0 handler:v12];

  [v5 addAction:v9];
  v10 = AXLogUltron();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_29C931000, v10, OS_LOG_TYPE_INFO, "Presenting confirmation alert.", v11, 2u);
  }

  [(AXCCSoundDetectionModuleViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_showConfirmationAlertForCustomType:(id)a3
{
  v4 = a3;
  v5 = [(AXCCSoundDetectionModuleViewController *)self _confirmationAlertController];
  v6 = MEMORY[0x29EDC7920];
  v7 = sub_29C9325CC(@"confirmation.alert.ok");
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = sub_29C933BEC;
  v12[3] = &unk_29F334CC0;
  v13 = v4;
  v14 = self;
  v8 = v4;
  v9 = [v6 actionWithTitle:v7 style:0 handler:v12];

  [v5 addAction:v9];
  v10 = AXLogUltron();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_29C931000, v10, OS_LOG_TYPE_INFO, "Presenting confirmation alert.", v11, 2u);
  }

  [(AXCCSoundDetectionModuleViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_configureMenuItems
{
  v171 = *MEMORY[0x29EDCA608];
  objc_initWeak(&location, self);
  v125 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v2 = [MEMORY[0x29EDBDDB8] sharedInstance];
  v121 = [v2 supportedSoundDetectionTypes];

  v3 = [MEMORY[0x29EDBDDB8] sharedInstance];
  v4 = [v3 decodedKShotDetectors];
  v120 = [v4 allValues];

  v119 = [v120 axFilterObjectsUsingBlock:&unk_2A23E0360];
  v5 = [v120 axFilterObjectsUsingBlock:&unk_2A23E0380];
  v6 = MEMORY[0x29EDBDD80];
  if ([v121 containsObject:*MEMORY[0x29EDBDD80]])
  {
    v7 = sub_29C9325CC(@"fire.alarm");
    v8 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v166[0] = MEMORY[0x29EDCA5F8];
    v166[1] = 3221225472;
    v166[2] = sub_29C935394;
    v166[3] = &unk_29F334C70;
    objc_copyWeak(&v167, &location);
    v9 = [v8 initWithTitle:v7 identifier:v7 handler:v166];
    v10 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v11 = [v10 enabledSoundDetectionTypes];
    [v9 setSelected:{objc_msgSend(v11, "containsObject:", *v6)}];

    [v125 addObject:v9];
    objc_destroyWeak(&v167);
  }

  v12 = MEMORY[0x29EDBDDA0];
  if ([v121 containsObject:{*MEMORY[0x29EDBDDA0], self}])
  {
    v13 = sub_29C9325CC(@"siren");
    v14 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v164[0] = MEMORY[0x29EDCA5F8];
    v164[1] = 3221225472;
    v164[2] = sub_29C9353D4;
    v164[3] = &unk_29F334C70;
    objc_copyWeak(&v165, &location);
    v15 = [v14 initWithTitle:v13 identifier:v13 handler:v164];
    v16 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v17 = [v16 enabledSoundDetectionTypes];
    [v15 setSelected:{objc_msgSend(v17, "containsObject:", *v12)}];

    [v125 addObject:v15];
    objc_destroyWeak(&v165);
  }

  v18 = MEMORY[0x29EDBDDA8];
  if ([v121 containsObject:*MEMORY[0x29EDBDDA8]])
  {
    v19 = sub_29C9325CC(@"smoke.alarm");
    v20 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v162[0] = MEMORY[0x29EDCA5F8];
    v162[1] = 3221225472;
    v162[2] = sub_29C935414;
    v162[3] = &unk_29F334C70;
    objc_copyWeak(&v163, &location);
    v21 = [v20 initWithTitle:v19 identifier:v19 handler:v162];
    v22 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v23 = [v22 enabledSoundDetectionTypes];
    [v21 setSelected:{objc_msgSend(v23, "containsObject:", *v18)}];

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
        v27 = [v26 name];
        v28 = objc_alloc(MEMORY[0x29EDC0CE0]);
        v156[0] = MEMORY[0x29EDCA5F8];
        v156[1] = 3221225472;
        v156[2] = sub_29C935454;
        v156[3] = &unk_29F334D08;
        objc_copyWeak(&v157, &location);
        v156[4] = v26;
        v29 = [v28 initWithTitle:v27 identifier:v27 handler:v156];
        v30 = [MEMORY[0x29EDBDDB8] sharedInstance];
        v31 = [v30 enabledKShotDetectorIdentifiers];
        v32 = [v26 identifier];
        [v29 setSelected:{objc_msgSend(v31, "containsObject:", v32)}];

        [v125 addObject:v29];
        objc_destroyWeak(&v157);
      }

      v24 = [obj countByEnumeratingWithState:&v158 objects:v170 count:16];
    }

    while (v24);
  }

  v33 = MEMORY[0x29EDBDD50];
  if ([v121 containsObject:*MEMORY[0x29EDBDD50]])
  {
    v34 = sub_29C9325CC(@"cat");
    v35 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v154[0] = MEMORY[0x29EDCA5F8];
    v154[1] = 3221225472;
    v154[2] = sub_29C935490;
    v154[3] = &unk_29F334C70;
    objc_copyWeak(&v155, &location);
    v36 = [v35 initWithTitle:v34 identifier:v34 handler:v154];
    v37 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v38 = [v37 enabledSoundDetectionTypes];
    [v36 setSelected:{objc_msgSend(v38, "containsObject:", *v33)}];

    [v125 addObject:v36];
    objc_destroyWeak(&v155);
  }

  v39 = MEMORY[0x29EDBDD68];
  if ([v121 containsObject:*MEMORY[0x29EDBDD68]])
  {
    v40 = sub_29C9325CC(@"dog");
    v41 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v152[0] = MEMORY[0x29EDCA5F8];
    v152[1] = 3221225472;
    v152[2] = sub_29C9354D0;
    v152[3] = &unk_29F334C70;
    objc_copyWeak(&v153, &location);
    v42 = [v41 initWithTitle:v40 identifier:v40 handler:v152];
    v43 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v44 = [v43 enabledSoundDetectionTypes];
    [v42 setSelected:{objc_msgSend(v44, "containsObject:", *v39)}];

    [v125 addObject:v42];
    objc_destroyWeak(&v153);
  }

  v45 = MEMORY[0x29EDBDD30];
  if (([v121 containsObject:*MEMORY[0x29EDBDD30]] & 1) != 0 || (objc_msgSend(v121, "containsObject:", *MEMORY[0x29EDBDD38]) & 1) != 0 || objc_msgSend(v121, "containsObject:", *MEMORY[0x29EDBDD40]))
  {
    v46 = sub_29C9325CC(@"appliances");
    v47 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v150[0] = MEMORY[0x29EDCA5F8];
    v150[1] = 3221225472;
    v150[2] = sub_29C935510;
    v150[3] = &unk_29F334C70;
    objc_copyWeak(&v151, &location);
    v48 = [v47 initWithTitle:v46 identifier:v46 handler:v150];
    v49 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v50 = [v49 enabledSoundDetectionTypes];

    if ([v50 containsObject:*v45] && objc_msgSend(v50, "containsObject:", *MEMORY[0x29EDBDD38]))
    {
      v51 = [v50 containsObject:*MEMORY[0x29EDBDD40]];
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
  if ([v121 containsObject:*MEMORY[0x29EDBDD48]])
  {
    v53 = sub_29C9325CC(@"car.horn");
    v54 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v148[0] = MEMORY[0x29EDCA5F8];
    v148[1] = 3221225472;
    v148[2] = sub_29C935594;
    v148[3] = &unk_29F334C70;
    objc_copyWeak(&v149, &location);
    v55 = [v54 initWithTitle:v53 identifier:v53 handler:v148];
    v56 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v57 = [v56 enabledSoundDetectionTypes];
    [v55 setSelected:{objc_msgSend(v57, "containsObject:", *v52)}];

    [v125 addObject:v55];
    objc_destroyWeak(&v149);
  }

  v58 = MEMORY[0x29EDBDD78];
  if ([v121 containsObject:*MEMORY[0x29EDBDD78]])
  {
    v59 = sub_29C9325CC(@"door.bell");
    v60 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v146[0] = MEMORY[0x29EDCA5F8];
    v146[1] = 3221225472;
    v146[2] = sub_29C9355D4;
    v146[3] = &unk_29F334C70;
    objc_copyWeak(&v147, &location);
    v61 = [v60 initWithTitle:v59 identifier:v59 handler:v146];
    v62 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v63 = [v62 enabledSoundDetectionTypes];
    [v61 setSelected:{objc_msgSend(v63, "containsObject:", *v58)}];

    [v125 addObject:v61];
    objc_destroyWeak(&v147);
  }

  v64 = MEMORY[0x29EDBDD70];
  if ([v121 containsObject:*MEMORY[0x29EDBDD70]])
  {
    v65 = sub_29C9325CC(@"door.knock");
    v66 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v144[0] = MEMORY[0x29EDCA5F8];
    v144[1] = 3221225472;
    v144[2] = sub_29C935614;
    v144[3] = &unk_29F334C70;
    objc_copyWeak(&v145, &location);
    v67 = [v66 initWithTitle:v65 identifier:v65 handler:v144];
    v68 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v69 = [v68 enabledSoundDetectionTypes];
    [v67 setSelected:{objc_msgSend(v69, "containsObject:", *v64)}];

    [v125 addObject:v67];
    objc_destroyWeak(&v145);
  }

  v70 = MEMORY[0x29EDBDD88];
  if ([v121 containsObject:*MEMORY[0x29EDBDD88]])
  {
    v71 = sub_29C9325CC(@"glass.breaking");
    v72 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v142[0] = MEMORY[0x29EDCA5F8];
    v142[1] = 3221225472;
    v142[2] = sub_29C935654;
    v142[3] = &unk_29F334C70;
    objc_copyWeak(&v143, &location);
    v73 = [v72 initWithTitle:v71 identifier:v71 handler:v142];
    v74 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v75 = [v74 enabledSoundDetectionTypes];
    [v73 setSelected:{objc_msgSend(v75, "containsObject:", *v70)}];

    [v125 addObject:v73];
    objc_destroyWeak(&v143);
  }

  v76 = MEMORY[0x29EDBDD90];
  if ([v121 containsObject:*MEMORY[0x29EDBDD90]])
  {
    v77 = sub_29C9325CC(@"kettle");
    v78 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v140[0] = MEMORY[0x29EDCA5F8];
    v140[1] = 3221225472;
    v140[2] = sub_29C935694;
    v140[3] = &unk_29F334C70;
    objc_copyWeak(&v141, &location);
    v79 = [v78 initWithTitle:v77 identifier:v77 handler:v140];
    v80 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v81 = [v80 enabledSoundDetectionTypes];
    [v79 setSelected:{objc_msgSend(v81, "containsObject:", *v76)}];

    [v125 addObject:v79];
    objc_destroyWeak(&v141);
  }

  v82 = MEMORY[0x29EDBDDB0];
  if ([v121 containsObject:*MEMORY[0x29EDBDDB0]])
  {
    v83 = sub_29C9325CC(@"water.running");
    v84 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v138[0] = MEMORY[0x29EDCA5F8];
    v138[1] = 3221225472;
    v138[2] = sub_29C9356D4;
    v138[3] = &unk_29F334C70;
    objc_copyWeak(&v139, &location);
    v85 = [v84 initWithTitle:v83 identifier:v83 handler:v138];
    v86 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v87 = [v86 enabledSoundDetectionTypes];
    [v85 setSelected:{objc_msgSend(v87, "containsObject:", *v82)}];

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
        v92 = [v91 name];
        v93 = objc_alloc(MEMORY[0x29EDC0CE0]);
        v132[0] = MEMORY[0x29EDCA5F8];
        v132[1] = 3221225472;
        v132[2] = sub_29C935714;
        v132[3] = &unk_29F334D08;
        objc_copyWeak(&v133, &location);
        v132[4] = v91;
        v94 = [v93 initWithTitle:v92 identifier:v92 handler:v132];
        v95 = [MEMORY[0x29EDBDDB8] sharedInstance];
        v96 = [v95 enabledKShotDetectorIdentifiers];
        v97 = [v91 identifier];
        [v94 setSelected:{objc_msgSend(v96, "containsObject:", v97)}];

        [v125 addObject:v94];
        objc_destroyWeak(&v133);
      }

      v88 = [v124 countByEnumeratingWithState:&v134 objects:v169 count:16];
    }

    while (v88);
  }

  v98 = MEMORY[0x29EDBDD60];
  if ([v121 containsObject:*MEMORY[0x29EDBDD60]])
  {
    v99 = sub_29C9325CC(@"baby.crying");
    v100 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v130[0] = MEMORY[0x29EDCA5F8];
    v130[1] = 3221225472;
    v130[2] = sub_29C935750;
    v130[3] = &unk_29F334C70;
    objc_copyWeak(&v131, &location);
    v101 = [v100 initWithTitle:v99 identifier:v99 handler:v130];
    v102 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v103 = [v102 enabledSoundDetectionTypes];
    [v101 setSelected:{objc_msgSend(v103, "containsObject:", *v98)}];

    [v125 addObject:v101];
    objc_destroyWeak(&v131);
  }

  v104 = MEMORY[0x29EDBDD98];
  if ([v121 containsObject:*MEMORY[0x29EDBDD98]])
  {
    v105 = sub_29C9325CC(@"shouting");
    v106 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v128[0] = MEMORY[0x29EDCA5F8];
    v128[1] = 3221225472;
    v128[2] = sub_29C935790;
    v128[3] = &unk_29F334C70;
    objc_copyWeak(&v129, &location);
    v107 = [v106 initWithTitle:v105 identifier:v105 handler:v128];
    v108 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v109 = [v108 enabledSoundDetectionTypes];
    [v107 setSelected:{objc_msgSend(v109, "containsObject:", *v104)}];

    [v125 addObject:v107];
    objc_destroyWeak(&v129);
  }

  v110 = MEMORY[0x29EDBDD58];
  if ([v121 containsObject:*MEMORY[0x29EDBDD58]])
  {
    v111 = sub_29C9325CC(@"cough");
    v112 = objc_alloc(MEMORY[0x29EDC0CE0]);
    v126[0] = MEMORY[0x29EDCA5F8];
    v126[1] = 3221225472;
    v126[2] = sub_29C9357D0;
    v126[3] = &unk_29F334C70;
    objc_copyWeak(&v127, &location);
    v113 = [v112 initWithTitle:v111 identifier:v111 handler:v126];
    v114 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v115 = [v114 enabledSoundDetectionTypes];
    [v113 setSelected:{objc_msgSend(v115, "containsObject:", *v110)}];

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