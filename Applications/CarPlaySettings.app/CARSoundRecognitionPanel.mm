@interface CARSoundRecognitionPanel
+ (id)sounds;
- (BOOL)getBabyCryingPreferenceIsOn;
- (BOOL)getCarHornPreferenceIsOn;
- (BOOL)getSirenPreferenceIsOn;
- (BOOL)getSoundRecognitionPreferenceIsOn;
- (BOOL)isAnyCarPlaySoundDetectionOn;
- (BOOL)soundRecognitionSwitchIsOn;
- (CARSoundRecognitionPanel)initWithPanelController:(id)controller;
- (id)cellSpecifier;
- (id)specifierSections;
- (void)_updateSpecifiers;
- (void)setBabyCryingPreference:(BOOL)preference;
- (void)setCarHornPreference:(BOOL)preference;
- (void)setSirenPreference:(BOOL)preference;
- (void)setSoundRecognitionPreference:(BOOL)preference;
- (void)startSoundDetectionEngineIfNeeded;
- (void)stopSoundDetectionEngineIfNeeded;
@end

@implementation CARSoundRecognitionPanel

- (CARSoundRecognitionPanel)initWithPanelController:(id)controller
{
  controllerCopy = controller;
  v39.receiver = self;
  v39.super_class = CARSoundRecognitionPanel;
  v5 = [(CARSettingsPanel *)&v39 initWithPanelController:controllerCopy];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v6 = [CARSettingsSwitchCellSpecifier alloc];
    v7 = sub_10001C80C(@"ACCESSIBILITY_SOUND_RECOGNITION");
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000170EC;
    v36[3] = &unk_1000DAE68;
    objc_copyWeak(&v37, &location);
    v8 = [(CARSettingsSwitchCellSpecifier *)v6 initWithTitle:v7 image:0 icon:0 actionBlock:v36];
    soundRecognitionSwitchSpecifier = v5->_soundRecognitionSwitchSpecifier;
    v5->_soundRecognitionSwitchSpecifier = v8;

    [(CARSettingsCellSpecifier *)v5->_soundRecognitionSwitchSpecifier setAccessibilityIdentifier:@"CPSettingsAccessibilitySoundRecognitionToggle"];
    getSoundRecognitionPreferenceIsOn = [(CARSoundRecognitionPanel *)v5 getSoundRecognitionPreferenceIsOn];
    v11 = v5->_soundRecognitionSwitchSpecifier;
    v12 = [NSNumber numberWithBool:getSoundRecognitionPreferenceIsOn];
    [(CARSettingsCellSpecifier *)v11 setCellValue:v12];

    v13 = sub_10001C784();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      v41 = getSoundRecognitionPreferenceIsOn;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Settings] Saved Sound Recognition preference is on: %{public}d", buf, 8u);
    }

    getCarHornPreferenceIsOn = [(CARSoundRecognitionPanel *)v5 getCarHornPreferenceIsOn];
    v15 = objc_alloc_init(CARHornSpecifier);
    carHornSpecifier = v5->_carHornSpecifier;
    v5->_carHornSpecifier = v15;

    [(CARSettingsCellSpecifier *)v5->_carHornSpecifier setAccessibilityIdentifier:@"CPSettingsAccessibilitySoundRecognitionCarHornToggle"];
    v17 = v5->_carHornSpecifier;
    v18 = [NSNumber numberWithBool:getCarHornPreferenceIsOn];
    [(CARSettingsCellSpecifier *)v17 setCellValue:v18];

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000171D8;
    v34[3] = &unk_1000DAE68;
    objc_copyWeak(&v35, &location);
    [(CARSettingsCellSpecifier *)v5->_carHornSpecifier setActionBlock:v34];
    getSirenPreferenceIsOn = [(CARSoundRecognitionPanel *)v5 getSirenPreferenceIsOn];
    v20 = objc_alloc_init(CARSirenSpecifier);
    sirenSpecifier = v5->_sirenSpecifier;
    v5->_sirenSpecifier = v20;

    [(CARSettingsCellSpecifier *)v5->_sirenSpecifier setAccessibilityIdentifier:@"CPSettingsAccessibilitySoundRecognitionSirenToggle"];
    v22 = v5->_sirenSpecifier;
    v23 = [NSNumber numberWithBool:getSirenPreferenceIsOn];
    [(CARSettingsCellSpecifier *)v22 setCellValue:v23];

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000172BC;
    v32[3] = &unk_1000DAE68;
    objc_copyWeak(&v33, &location);
    [(CARSettingsCellSpecifier *)v5->_sirenSpecifier setActionBlock:v32];
    getBabyCryingPreferenceIsOn = [(CARSoundRecognitionPanel *)v5 getBabyCryingPreferenceIsOn];
    v25 = objc_alloc_init(CARBabyCryingSpecifier);
    babyCryingSpecifier = v5->_babyCryingSpecifier;
    v5->_babyCryingSpecifier = v25;

    [(CARSettingsCellSpecifier *)v5->_babyCryingSpecifier setAccessibilityIdentifier:@"CPSettingsAccessibilitySoundRecognitionBabyCryingToggle"];
    v27 = v5->_babyCryingSpecifier;
    v28 = [NSNumber numberWithBool:getBabyCryingPreferenceIsOn];
    [(CARSettingsCellSpecifier *)v27 setCellValue:v28];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000173A0;
    v30[3] = &unk_1000DAE68;
    objc_copyWeak(&v31, &location);
    [(CARSettingsCellSpecifier *)v5->_babyCryingSpecifier setActionBlock:v30];
    [(CARSoundRecognitionPanel *)v5 _updateSpecifiers];
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v5 = sub_10001C80C(@"ACCESSIBILITY_SOUND_RECOGNITION");
    v6 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.dark-mode"];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000175E0;
    v10[3] = &unk_1000DAE40;
    objc_copyWeak(&v11, &location);
    v7 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 actionBlock:v10];
    v8 = self->_cellSpecifier;
    self->_cellSpecifier = v7;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  return cellSpecifier;
}

- (id)specifierSections
{
  soundRecognitionSwitchSpecifier = [(CARSoundRecognitionPanel *)self soundRecognitionSwitchSpecifier];
  v19 = soundRecognitionSwitchSpecifier;
  v4 = [NSArray arrayWithObjects:&v19 count:1];

  v5 = [CARSettingsCellSpecifierSection alloc];
  v6 = sub_10001C80C(@"ACCESSIBILITY_FOOTER_HEARING");
  v7 = [(CARSettingsCellSpecifierSection *)v5 initWithTitle:0 footer:v6 specifiers:v4];

  sirenSpecifier = self->_sirenSpecifier;
  v18[0] = self->_carHornSpecifier;
  v18[1] = sirenSpecifier;
  v18[2] = self->_babyCryingSpecifier;
  v9 = [NSArray arrayWithObjects:v18 count:3];
  v10 = [[CARSettingsCellSpecifierSection alloc] initWithTitle:0 specifiers:v9];
  if ([(CARSoundRecognitionPanel *)self soundRecognitionSwitchIsOn])
  {
    v16 = v7;
    v17 = v10;
    v11 = &v16;
    v12 = 2;
  }

  else
  {
    v15 = v7;
    v11 = &v15;
    v12 = 1;
  }

  v13 = [NSArray arrayWithObjects:v11 count:v12, v15, v16, v17];

  return v13;
}

- (BOOL)soundRecognitionSwitchIsOn
{
  soundRecognitionSwitchSpecifier = [(CARSoundRecognitionPanel *)self soundRecognitionSwitchSpecifier];
  cellValue = [soundRecognitionSwitchSpecifier cellValue];
  bOOLValue = [cellValue BOOLValue];

  return bOOLValue;
}

- (BOOL)getSoundRecognitionPreferenceIsOn
{
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  LOBYTE(panelController) = [vehicle soundRecognitionPreference];
  return panelController & 1;
}

- (BOOL)getCarHornPreferenceIsOn
{
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  v4 = ([vehicle soundRecognitionPreference] >> 1) & 1;
  return v4;
}

- (BOOL)getSirenPreferenceIsOn
{
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  v4 = ([vehicle soundRecognitionPreference] >> 2) & 1;
  return v4;
}

- (BOOL)getBabyCryingPreferenceIsOn
{
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  v4 = ([vehicle soundRecognitionPreference] >> 3) & 1;
  return v4;
}

- (void)setSoundRecognitionPreference:(BOOL)preference
{
  preferenceCopy = preference;
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  soundRecognitionPreference = [vehicle soundRecognitionPreference];
  v7 = soundRecognitionPreference;
  if (preferenceCopy)
  {
    v8 = (soundRecognitionPreference | 1);
    [(CARSoundRecognitionPanel *)self startSoundDetectionEngineIfNeeded];
  }

  else
  {
    v9 = +[AXSDSettings sharedInstance];
    [v9 setSoundDetectionState:0];

    v8 = (v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  if ([vehicle soundRecognitionPreference] != v8)
  {
    [vehicle setSoundRecognitionPreference:v8];
    panelController2 = [(CARSettingsPanel *)self panelController];
    [panelController2 saveVehicle:vehicle];

    v11 = +[CARSettingsAnalytics sharedInstance];
    panelController3 = [(CARSettingsPanel *)self panelController];
    carSession = [panelController3 carSession];
    [v11 axSoundRecognitionChangedForVehicle:vehicle session:carSession];
  }
}

- (void)setCarHornPreference:(BOOL)preference
{
  preferenceCopy = preference;
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  soundRecognitionPreference = [vehicle soundRecognitionPreference];
  v7 = +[AXSDSettings sharedInstance];
  v8 = v7;
  if (preferenceCopy)
  {
    [v7 addSoundDetectionType:AXSDSoundDetectionTypeCarHorns];

    v9 = (soundRecognitionPreference | 2);
    [(CARSoundRecognitionPanel *)self startSoundDetectionEngineIfNeeded];
  }

  else
  {
    [v7 removeSoundDetectionType:AXSDSoundDetectionTypeCarHorns];

    v9 = (soundRecognitionPreference & 0xFFFFFFFFFFFFFFFDLL);
    [(CARSoundRecognitionPanel *)self stopSoundDetectionEngineIfNeeded];
  }

  if ([vehicle soundRecognitionPreference] != v9)
  {
    [vehicle setSoundRecognitionPreference:v9];
    panelController2 = [(CARSettingsPanel *)self panelController];
    [panelController2 saveVehicle:vehicle];

    v11 = +[CARSettingsAnalytics sharedInstance];
    panelController3 = [(CARSettingsPanel *)self panelController];
    carSession = [panelController3 carSession];
    [v11 axSoundRecognitionChangedForVehicle:vehicle session:carSession];
  }
}

- (void)setSirenPreference:(BOOL)preference
{
  preferenceCopy = preference;
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  soundRecognitionPreference = [vehicle soundRecognitionPreference];
  v7 = +[AXSDSettings sharedInstance];
  v8 = v7;
  if (preferenceCopy)
  {
    [v7 addSoundDetectionType:AXSDSoundDetectionTypeSirenAlarms];

    v9 = (soundRecognitionPreference | 4);
    [(CARSoundRecognitionPanel *)self startSoundDetectionEngineIfNeeded];
  }

  else
  {
    [v7 removeSoundDetectionType:AXSDSoundDetectionTypeSirenAlarms];

    v9 = (soundRecognitionPreference & 0xFFFFFFFFFFFFFFFBLL);
    [(CARSoundRecognitionPanel *)self stopSoundDetectionEngineIfNeeded];
  }

  if ([vehicle soundRecognitionPreference] != v9)
  {
    [vehicle setSoundRecognitionPreference:v9];
    panelController2 = [(CARSettingsPanel *)self panelController];
    [panelController2 saveVehicle:vehicle];

    v11 = +[CARSettingsAnalytics sharedInstance];
    panelController3 = [(CARSettingsPanel *)self panelController];
    carSession = [panelController3 carSession];
    [v11 axSoundRecognitionChangedForVehicle:vehicle session:carSession];
  }
}

- (void)setBabyCryingPreference:(BOOL)preference
{
  preferenceCopy = preference;
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  soundRecognitionPreference = [vehicle soundRecognitionPreference];
  v7 = +[AXSDSettings sharedInstance];
  v8 = v7;
  if (preferenceCopy)
  {
    [v7 addSoundDetectionType:AXSDSoundDetectionTypeDistressedBaby];

    v9 = (soundRecognitionPreference | 8);
    [(CARSoundRecognitionPanel *)self startSoundDetectionEngineIfNeeded];
  }

  else
  {
    [v7 removeSoundDetectionType:AXSDSoundDetectionTypeDistressedBaby];

    v9 = (soundRecognitionPreference & 0xFFFFFFFFFFFFFFF7);
    [(CARSoundRecognitionPanel *)self stopSoundDetectionEngineIfNeeded];
  }

  if ([vehicle soundRecognitionPreference] != v9)
  {
    [vehicle setSoundRecognitionPreference:v9];
    panelController2 = [(CARSettingsPanel *)self panelController];
    [panelController2 saveVehicle:vehicle];

    v11 = +[CARSettingsAnalytics sharedInstance];
    panelController3 = [(CARSettingsPanel *)self panelController];
    carSession = [panelController3 carSession];
    [v11 axSoundRecognitionChangedForVehicle:vehicle session:carSession];
  }
}

- (void)startSoundDetectionEngineIfNeeded
{
  v4 = +[AXSDSettings sharedInstance];
  if ([v4 soundDetectionState] != 2)
  {
    isAnyCarPlaySoundDetectionOn = [(CARSoundRecognitionPanel *)self isAnyCarPlaySoundDetectionOn];

    if (!isAnyCarPlaySoundDetectionOn)
    {
      return;
    }

    v4 = +[AXSDSettings sharedInstance];
    [v4 setSoundDetectionState:2];
  }
}

- (void)stopSoundDetectionEngineIfNeeded
{
  v4 = +[AXSDSettings sharedInstance];
  if ([v4 soundDetectionState])
  {
    isAnyCarPlaySoundDetectionOn = [(CARSoundRecognitionPanel *)self isAnyCarPlaySoundDetectionOn];

    if (isAnyCarPlaySoundDetectionOn)
    {
      return;
    }

    v4 = +[AXSDSettings sharedInstance];
    [v4 setSoundDetectionState:0];
  }
}

- (BOOL)isAnyCarPlaySoundDetectionOn
{
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  LOBYTE(panelController) = ([vehicle soundRecognitionPreference] & 0xE) != 0;
  return panelController;
}

+ (id)sounds
{
  if (qword_100101E90 != -1)
  {
    sub_100091708();
  }

  v3 = qword_100101E98;

  return v3;
}

- (void)_updateSpecifiers
{
  v3 = [NSNumber numberWithBool:[(CARSoundRecognitionPanel *)self getSoundRecognitionPreferenceIsOn]];
  soundRecognitionSwitchSpecifier = [(CARSoundRecognitionPanel *)self soundRecognitionSwitchSpecifier];
  [soundRecognitionSwitchSpecifier setCellValue:v3];

  v5 = [NSNumber numberWithBool:[(CARSoundRecognitionPanel *)self getCarHornPreferenceIsOn]];
  carHornSpecifier = [(CARSoundRecognitionPanel *)self carHornSpecifier];
  [carHornSpecifier setCellValue:v5];

  v7 = [NSNumber numberWithBool:[(CARSoundRecognitionPanel *)self getSirenPreferenceIsOn]];
  sirenSpecifier = [(CARSoundRecognitionPanel *)self sirenSpecifier];
  [sirenSpecifier setCellValue:v7];

  v9 = [NSNumber numberWithBool:[(CARSoundRecognitionPanel *)self getBabyCryingPreferenceIsOn]];
  babyCryingSpecifier = [(CARSoundRecognitionPanel *)self babyCryingSpecifier];
  [babyCryingSpecifier setCellValue:v9];

  [(CARSettingsTablePanel *)self reloadSpecifiers];
}

@end