@interface CARAccessibilityPanel
- (BOOL)isBoldTextEnabled;
- (CARAccessibilityPanel)initWithPanelController:(id)controller;
- (id)cellSpecifier;
- (id)specifierSections;
- (void)_updateSpecifiers;
- (void)_vehicleDidChange:(id)change;
- (void)boldTextChanged;
- (void)boldTextToggleChanged:(BOOL)changed;
- (void)systemVoiceControlStatusChanged;
- (void)voiceControlToggleChanged:(BOOL)changed;
@end

@implementation CARAccessibilityPanel

- (CARAccessibilityPanel)initWithPanelController:(id)controller
{
  controllerCopy = controller;
  v52.receiver = self;
  v52.super_class = CARAccessibilityPanel;
  v5 = [(CARSettingsPanel *)&v52 initWithPanelController:controllerCopy];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v6 = objc_alloc_init(CARColorFiltersSpecifier);
    colorFiltersSpecifier = v5->_colorFiltersSpecifier;
    v5->_colorFiltersSpecifier = v6;

    [(CARSettingsCellSpecifier *)v5->_colorFiltersSpecifier setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterCell"];
    v8 = objc_alloc_init(CARBoldTextSpecifier);
    boldTextSpecifier = v5->_boldTextSpecifier;
    v5->_boldTextSpecifier = v8;

    [(CARSettingsCellSpecifier *)v5->_boldTextSpecifier setAccessibilityIdentifier:@"CPSettingsAccessibilityBoldTextToggle"];
    v10 = v5->_boldTextSpecifier;
    v11 = [NSNumber numberWithBool:[(CARAccessibilityPanel *)v5 isBoldTextEnabled]];
    [(CARSettingsCellSpecifier *)v10 setCellValue:v11];

    v12 = objc_alloc_init(CARVoiceControlSpecifier);
    voiceControlSpecifier = v5->_voiceControlSpecifier;
    v5->_voiceControlSpecifier = v12;

    [(CARSettingsCellSpecifier *)v5->_voiceControlSpecifier setAccessibilityIdentifier:@"CPSettingsAccessibilityVoiceControlToggle"];
    v14 = v5->_voiceControlSpecifier;
    v15 = [NSNumber numberWithBool:[(CARAccessibilityPanel *)v5 systemVoiceControlEnabled]];
    [(CARSettingsCellSpecifier *)v14 setCellValue:v15];

    v16 = objc_alloc_init(CARSoundRecognitionSpecifier);
    soundRecognitionSpecifier = v5->_soundRecognitionSpecifier;
    v5->_soundRecognitionSpecifier = v16;

    [(CARSettingsCellSpecifier *)v5->_soundRecognitionSpecifier setAccessibilityIdentifier:@"CPSettingsAccessibilitySoundRecognitionCell"];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10001F9C4;
    v49[3] = &unk_1000DAE40;
    objc_copyWeak(&v50, &location);
    [(CARSettingsCellSpecifier *)v5->_colorFiltersSpecifier setActionBlock:v49];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10001FA5C;
    v47[3] = &unk_1000DAE40;
    objc_copyWeak(&v48, &location);
    [(CARSettingsCellSpecifier *)v5->_boldTextSpecifier setActionBlock:v47];
    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v5 selector:"boldTextChanged" name:kAXSCarPlayEnhanceTextLegibilityChangedNotification object:0];

    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10001FAC8;
    v45[3] = &unk_1000DAE40;
    objc_copyWeak(&v46, &location);
    [(CARSettingsCellSpecifier *)v5->_voiceControlSpecifier setActionBlock:v45];
    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v5 selector:"systemVoiceControlStatusChanged" name:kAXSCommandAndControlCarPlayEnabledNotification object:0];

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10001FB34;
    v43[3] = &unk_1000DAE40;
    objc_copyWeak(&v44, &location);
    [(CARSettingsCellSpecifier *)v5->_soundRecognitionSpecifier setActionBlock:v43];
    if (_os_feature_enabled_impl())
    {
      v20 = objc_alloc_init(CARTextSizeSpecifier);
      textSizeSpecifier = v5->_textSizeSpecifier;
      v5->_textSizeSpecifier = v20;

      [(CARSettingsCellSpecifier *)v5->_textSizeSpecifier setAccessibilityIdentifier:@"CPSettingsAccessibilityLargeTextCell"];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10001FBCC;
      v41[3] = &unk_1000DAE40;
      objc_copyWeak(&v42, &location);
      [(CARSettingsCellSpecifier *)v5->_textSizeSpecifier setActionBlock:v41];
      v22 = [CARTextSizePanel alloc];
      panelController = [(CARSettingsPanel *)v5 panelController];
      v24 = [(CARTextSizePanel *)v22 initWithPanelController:panelController textSizeSpecifier:v5->_textSizeSpecifier];
      textSizePanel = v5->_textSizePanel;
      v5->_textSizePanel = v24;

      objc_destroyWeak(&v42);
    }

    if (_os_feature_enabled_impl())
    {
      panelController2 = [(CARSettingsPanel *)v5 panelController];
      carSession = [panelController2 carSession];
      configuration = [carSession configuration];
      videoPlaybackSupported = [configuration videoPlaybackSupported];

      if (videoPlaybackSupported)
      {
        v30 = [CARSettingsCellSpecifier alloc];
        v31 = sub_10001C80C(@"SUBTITLES_AND_CAPTIONING");
        v36 = _NSConcreteStackBlock;
        v37 = 3221225472;
        v38 = sub_10001FC40;
        v39 = &unk_1000DAE40;
        objc_copyWeak(&v40, &location);
        v32 = [(CARSettingsCellSpecifier *)v30 initWithTitle:v31 image:0 icon:0 accessoryType:1 actionBlock:&v36];
        subtitlesSpecifier = v5->_subtitlesSpecifier;
        v5->_subtitlesSpecifier = v32;

        [(CARSettingsCellSpecifier *)v5->_subtitlesSpecifier setAccessibilityIdentifier:@"CPSettingsSubtitlesAndCaptions", v36, v37, v38, v39];
        objc_destroyWeak(&v40);
      }
    }

    [(CARAccessibilityPanel *)v5 _updateSpecifiers];
    v34 = +[NSNotificationCenter defaultCenter];
    [v34 addObserver:v5 selector:"_vehicleDidChange:" name:@"CARSettingsPanelControllerVehicleDidChangeNotification" object:0];

    objc_destroyWeak(&v44);
    objc_destroyWeak(&v46);
    objc_destroyWeak(&v48);
    objc_destroyWeak(&v50);
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
    v5 = sub_10001C80C(@"ACCESSIBILITY_TITLE");
    v6 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.accessibility"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10001FE44;
    v14 = &unk_1000DAE40;
    objc_copyWeak(&v15, &location);
    v7 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 actionBlock:&v11];
    v8 = self->_cellSpecifier;
    self->_cellSpecifier = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  [(CARSettingsCellSpecifier *)cellSpecifier setAccessibilityIdentifier:@"CPSettingsAccessibilityCell", v11, v12, v13, v14];
  v9 = self->_cellSpecifier;

  return v9;
}

- (id)specifierSections
{
  colorFiltersSpecifier = [(CARAccessibilityPanel *)self colorFiltersSpecifier];
  v27 = colorFiltersSpecifier;
  v4 = [NSArray arrayWithObjects:&v27 count:1];
  v5 = [NSMutableArray arrayWithArray:v4];

  if (_os_feature_enabled_impl())
  {
    textSizeSpecifier = [(CARAccessibilityPanel *)self textSizeSpecifier];
    [v5 addObject:textSizeSpecifier];
  }

  boldTextSpecifier = [(CARAccessibilityPanel *)self boldTextSpecifier];
  [v5 addObject:boldTextSpecifier];

  v8 = [CARSettingsCellSpecifierSection alloc];
  v9 = sub_10001C80C(@"ACCESSIBILITY_HEADER_VISION");
  v10 = [(CARSettingsCellSpecifierSection *)v8 initWithTitle:v9 footer:0 specifiers:v5];

  v11 = [CARSettingsCellSpecifierSection alloc];
  v12 = sub_10001C80C(@"ACCESSIBILITY_HEADER_PHYSICAL_AND_MOTOR");
  v13 = sub_10001C80C(@"ACCESSIBILITY_VOICE_CONTROL_FOOTER");
  voiceControlSpecifier = [(CARAccessibilityPanel *)self voiceControlSpecifier];
  v26 = voiceControlSpecifier;
  v15 = [NSArray arrayWithObjects:&v26 count:1];
  v16 = [(CARSettingsCellSpecifierSection *)v11 initWithTitle:v12 footer:v13 specifiers:v15];

  v17 = [NSMutableArray arrayWithObjects:v10, v16, 0];
  v18 = objc_alloc_init(NSMutableArray);
  if (CPUIDeviceSupportsSoundRecognition())
  {
    soundRecognitionSpecifier = [(CARAccessibilityPanel *)self soundRecognitionSpecifier];
    [v18 addObject:soundRecognitionSpecifier];
  }

  subtitlesSpecifier = [(CARAccessibilityPanel *)self subtitlesSpecifier];

  if (subtitlesSpecifier)
  {
    subtitlesSpecifier2 = [(CARAccessibilityPanel *)self subtitlesSpecifier];
    [v18 addObject:subtitlesSpecifier2];
  }

  if ([v18 count])
  {
    v22 = [CARSettingsCellSpecifierSection alloc];
    v23 = sub_10001C80C(@"ACCESSIBILITY_HEADER_HEARING");
    v24 = [(CARSettingsCellSpecifierSection *)v22 initWithTitle:v23 specifiers:v18];
    [v17 addObject:v24];
  }

  return v17;
}

- (BOOL)isBoldTextEnabled
{
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];
  v4 = [vehicle boldTextPreference] == 1;

  return v4;
}

- (void)boldTextToggleChanged:(BOOL)changed
{
  changedCopy = changed;
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  if (changedCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [vehicle setBoldTextPreference:v6];
  panelController2 = [(CARSettingsPanel *)self panelController];
  [panelController2 saveVehicle:vehicle];

  if (_AXSCarPlayEnhanceTextLegibilityEnabled() != changedCopy)
  {
    _AXSSetCarPlayEnhanceTextLegibilityEnabled();
    v8 = +[CARSettingsAnalytics sharedInstance];
    panelController3 = [(CARSettingsPanel *)self panelController];
    carSession = [panelController3 carSession];
    [v8 axBoldTextPrefChangedForVehicle:vehicle session:carSession];
  }
}

- (void)boldTextChanged
{
  boldTextSpecifier = [(CARAccessibilityPanel *)self boldTextSpecifier];
  v4 = [NSNumber numberWithBool:[(CARAccessibilityPanel *)self isBoldTextEnabled]];
  [boldTextSpecifier setCellValue:v4];

  [(CARSettingsTablePanel *)self reloadSpecifiers];
}

- (void)systemVoiceControlStatusChanged
{
  voiceControlSpecifier = self->_voiceControlSpecifier;
  v4 = [NSNumber numberWithBool:[(CARAccessibilityPanel *)self systemVoiceControlEnabled]];
  [(CARSettingsCellSpecifier *)voiceControlSpecifier setCellValue:v4];

  [(CARSettingsTablePanel *)self reloadSpecifiers];
}

- (void)voiceControlToggleChanged:(BOOL)changed
{
  changedCopy = changed;
  _AXSCommandAndControlCarPlaySetEnabled();
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  if (changedCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [vehicle setVoiceControlPreference:v6];
  panelController2 = [(CARSettingsPanel *)self panelController];
  [panelController2 saveVehicle:vehicle];

  v8 = +[CARSettingsAnalytics sharedInstance];
  panelController3 = [(CARSettingsPanel *)self panelController];
  vehicle2 = [panelController3 vehicle];
  panelController4 = [(CARSettingsPanel *)self panelController];
  carSession = [panelController4 carSession];
  [v8 axVoiceControlPrefChanged:changedCopy forVehicle:vehicle2 session:carSession];
}

- (void)_updateSpecifiers
{
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  if ([vehicle colorFilterPreference] >= 2)
  {
    v4 = @"ACCESSIBILITY_SETTING_ON";
  }

  else
  {
    v4 = @"ACCESSIBILITY_SETTING_OFF";
  }

  v5 = sub_10001C80C(v4);
  colorFiltersSpecifier = [(CARAccessibilityPanel *)self colorFiltersSpecifier];
  [colorFiltersSpecifier setDetail:v5];

  if ([vehicle soundRecognitionPreference])
  {
    v7 = @"ACCESSIBILITY_SETTING_ON";
  }

  else
  {
    v7 = @"ACCESSIBILITY_SETTING_OFF";
  }

  v8 = sub_10001C80C(v7);
  soundRecognitionSpecifier = [(CARAccessibilityPanel *)self soundRecognitionSpecifier];
  [soundRecognitionSpecifier setDetail:v8];
}

- (void)_vehicleDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020660;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end