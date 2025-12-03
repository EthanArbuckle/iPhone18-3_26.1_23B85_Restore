@interface CARSilentModePanel
- (BOOL)_shouldShowThreeWaySwitch;
- (CARSilentModePanel)initWithPanelController:(id)controller;
- (id)_modeForSilentModeType:(unint64_t)type;
- (id)_silentModeDebugDescription;
- (id)cellSpecifier;
- (id)specifierSections;
- (void)_externalProcessChangedSilentMode;
- (void)_updateCarPlaySilentModePreference:(BOOL)preference;
- (void)_updateCurrentMode;
- (void)dealloc;
- (void)setupObservers;
@end

@implementation CARSilentModePanel

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v5 = sub_10001C80C(@"SILENT_MODE");
    v6 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.carplay-silent-mode"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10000D7A0;
    v14 = &unk_1000DAE40;
    objc_copyWeak(&v15, &location);
    v7 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 actionBlock:&v11];
    v8 = self->_cellSpecifier;
    self->_cellSpecifier = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  [(CARSettingsCellSpecifier *)cellSpecifier setAccessibilityIdentifier:@"CPSettingsSilentModeCell", v11, v12, v13, v14];
  v9 = self->_cellSpecifier;

  return v9;
}

- (CARSilentModePanel)initWithPanelController:(id)controller
{
  controllerCopy = controller;
  v34.receiver = self;
  v34.super_class = CARSilentModePanel;
  v5 = [(CARSettingsPanel *)&v34 initWithPanelController:controllerCopy];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v5->_showThreeWaySwitch = [(CARSilentModePanel *)v5 _shouldShowThreeWaySwitch];
    v6 = objc_alloc_init(CRSessionSilentModeStatus);
    silentModeStatus = v5->_silentModeStatus;
    v5->_silentModeStatus = v6;

    v8 = +[CARSilentModeInCarPlayOption allOptions];
    silentModeOptions = v5->_silentModeOptions;
    v5->_silentModeOptions = v8;

    v10 = [CARSettingsGroupCellSpecifier alloc];
    v11 = v5->_silentModeOptions;
    v12 = NSStringFromSelector("fullTitle");
    v13 = [(NSArray *)v11 valueForKey:v12];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10000DB44;
    v31[3] = &unk_1000DB000;
    objc_copyWeak(&v32, &location);
    v14 = [(CARSettingsGroupCellSpecifier *)v10 initWithTitles:v13 actionBlock:v31];
    groupSpecifier = v5->_groupSpecifier;
    v5->_groupSpecifier = v14;

    for (i = 0; ; ++i)
    {
      groupSpecifiers = [(CARSettingsGroupCellSpecifier *)v5->_groupSpecifier groupSpecifiers];
      v18 = [groupSpecifiers count];

      if (i >= v18)
      {
        break;
      }

      groupSpecifiers2 = [(CARSettingsGroupCellSpecifier *)v5->_groupSpecifier groupSpecifiers];
      v20 = [groupSpecifiers2 objectAtIndexedSubscript:i];

      silentModeOptions = [(CARSilentModePanel *)v5 silentModeOptions];
      v22 = [silentModeOptions objectAtIndexedSubscript:i];
      accessibilityIdentifier = [v22 accessibilityIdentifier];
      [v20 setAccessibilityIdentifier:accessibilityIdentifier];
    }

    v24 = [CARSettingsButtonCellSpecifier alloc];
    v25 = sub_10001C80C(@"RESTORE_SILENT_MODE");
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000DC30;
    v29[3] = &unk_1000DAE68;
    objc_copyWeak(&v30, &location);
    v26 = [(CARSettingsButtonCellSpecifier *)v24 initWithTitle:v25 image:0 icon:0 actionBlock:v29];
    switchBackButtonSpecifier = v5->_switchBackButtonSpecifier;
    v5->_switchBackButtonSpecifier = v26;

    [(CARSilentModePanel *)v5 _updateCurrentMode];
    [(CARSilentModePanel *)v5 setupObservers];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (id)specifierSections
{
  silentModeOptions = [(CARSilentModePanel *)self silentModeOptions];
  groupSpecifier = [(CARSilentModePanel *)self groupSpecifier];
  v5 = [silentModeOptions objectAtIndexedSubscript:{objc_msgSend(groupSpecifier, "selectedIndex")}];

  LODWORD(silentModeOptions) = [(CARSilentModePanel *)self showThreeWaySwitch];
  v6 = [CARSettingsCellSpecifierSection alloc];
  if (silentModeOptions)
  {
    v7 = sub_10001C80C(@"CARPLAY_SILENT_MODE_HEADER");
    footer = [v5 footer];
    groupSpecifier2 = [(CARSilentModePanel *)self groupSpecifier];
    groupSpecifiers = [groupSpecifier2 groupSpecifiers];
    v11 = [(CARSettingsCellSpecifierSection *)v6 initWithTitle:v7 footer:footer specifiers:groupSpecifiers];
    v16 = v11;
    v12 = [NSArray arrayWithObjects:&v16 count:1];
  }

  else
  {
    v7 = sub_10001C80C(@"RESTORE_SILENT_MODE_FOOTER");
    footer = [(CARSilentModePanel *)self switchBackButtonSpecifier];
    v14 = footer;
    groupSpecifier2 = [NSArray arrayWithObjects:&v14 count:1];
    groupSpecifiers = [(CARSettingsCellSpecifierSection *)v6 initWithFooter:v7 specifiers:groupSpecifier2];
    v15 = groupSpecifiers;
    v12 = [NSArray arrayWithObjects:&v15 count:1];
  }

  return v12;
}

- (void)_updateCurrentMode
{
  v3 = sub_10001C784();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _silentModeDebugDescription = [(CARSilentModePanel *)self _silentModeDebugDescription];
    v9 = 138543362;
    v10 = _silentModeDebugDescription;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Settings] Silent mode panel: updating specifier to: %{public}@", &v9, 0xCu);
  }

  v5 = [(CARSilentModePanel *)self _modeForSilentModeType:[(CRSessionSilentModeStatus *)self->_silentModeStatus getCarPlaySilentModePreference]];
  if (v5)
  {
    silentModeOptions = [(CARSilentModePanel *)self silentModeOptions];
    v7 = [silentModeOptions indexOfObject:v5];
    groupSpecifier = [(CARSilentModePanel *)self groupSpecifier];
    [groupSpecifier setSelectedIndex:v7];
  }
}

- (id)_modeForSilentModeType:(unint64_t)type
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  silentModeOptions = [(CARSilentModePanel *)self silentModeOptions];
  v5 = [silentModeOptions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(silentModeOptions);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 silentModeType] == type)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [silentModeOptions countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)_updateCarPlaySilentModePreference:(BOOL)preference
{
  preferenceCopy = preference;
  v5 = sub_10001C784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _silentModeDebugDescription = [(CARSilentModePanel *)self _silentModeDebugDescription];
    v10 = 138543362;
    v11 = _silentModeDebugDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Settings] Silent mode panel: updating preference to: %{public}@", &v10, 0xCu);
  }

  silentModeStatus = [(CARSilentModePanel *)self silentModeStatus];
  v8 = silentModeStatus;
  if (preferenceCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [silentModeStatus setCarPlaySilentModePreference:v9];
}

- (id)_silentModeDebugDescription
{
  silentModeStatus = [(CARSilentModePanel *)self silentModeStatus];
  getCarPlaySilentModePreference = [silentModeStatus getCarPlaySilentModePreference];

  if (getCarPlaySilentModePreference > 2)
  {
    return &stru_1000DE3D8;
  }

  else
  {
    return *(&off_1000DB078 + getCarPlaySilentModePreference);
  }
}

- (void)_externalProcessChangedSilentMode
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000E31C;
  v2[3] = &unk_1000DB000;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)setupObservers
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_externalProcessChangedSilentMode" name:CRExternalProcessChangedSilentMode object:0 suspensionBehavior:4];
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CARSilentModePanel;
  [(CARSilentModePanel *)&v4 dealloc];
}

- (BOOL)_shouldShowThreeWaySwitch
{
  isDeviceSilentModeOn = [(CRSessionSilentModeStatus *)self->_silentModeStatus isDeviceSilentModeOn];
  silentModeStatus = [(CARSilentModePanel *)self silentModeStatus];
  getCarPlaySilentModePreference = [silentModeStatus getCarPlaySilentModePreference];

  if (getCarPlaySilentModePreference == 2)
  {
    isDeviceSilentModeOn ^= 1u;
  }

  else if (getCarPlaySilentModePreference != 1)
  {
    return 1;
  }

  return isDeviceSilentModeOn;
}

@end