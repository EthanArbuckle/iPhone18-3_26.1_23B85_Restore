@interface CARDNDPanel
- (BOOL)_isDrivingToggleOn;
- (CARDNDPanel)initWithPanelController:(id)a3;
- (id)cellSpecifier;
- (id)specifierSections;
- (void)_drivingToggleChanged:(BOOL)a3;
- (void)invalidate;
- (void)modeConfigurationService:(id)a3 didReceiveAvailableModesUpdate:(id)a4;
@end

@implementation CARDNDPanel

- (CARDNDPanel)initWithPanelController:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CARDNDPanel;
  v5 = [(CARSettingsPanel *)&v23 initWithPanelController:v4];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v6 = objc_alloc_init(CARDoNotDisturbSpecifier);
    dndSpecifier = v5->_dndSpecifier;
    v5->_dndSpecifier = v6;

    v8 = objc_alloc_init(CARAutomaticDNDStatus);
    dndStatus = v5->_dndStatus;
    v5->_dndStatus = v8;

    v10 = [DNDModeConfigurationService serviceForClientIdentifier:@"com.apple.carplay.settings"];
    dndModeService = v5->_dndModeService;
    v5->_dndModeService = v10;

    [(DNDModeConfigurationService *)v5->_dndModeService addListener:v5 withCompletionHandler:&stru_1000DB3A8];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100019940;
    v20 = &unk_1000DAE40;
    objc_copyWeak(&v21, &location);
    [(CARSettingsCellSpecifier *)v5->_dndSpecifier setActionBlock:&v17];
    v12 = [(CARDNDPanel *)v5 dndSpecifier:v17];
    v13 = [NSNumber numberWithBool:[(CARDNDPanel *)v5 _isDrivingToggleOn]];
    [v12 setCellValue:v13];

    v14 = [(CARDNDPanel *)v5 dndSpecifier];
    [v14 setAccessibilityIdentifier:@"CPSettingsDriveFocusToggle"];

    v15 = [(CARDNDPanel *)v5 view];
    [v15 setAccessibilityIdentifier:@"CPSettingsDriveFocusSetting"];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = CARDNDPanel;
  [(CARSettingsPanel *)&v4 invalidate];
  [(DNDModeConfigurationService *)self->_dndModeService removeListener:self];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v5 = sub_10001C80C(@"DRIVING_FOCUS_TITLE");
    v6 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.driving-focus"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100019C24;
    v14 = &unk_1000DAE40;
    objc_copyWeak(&v15, &location);
    v7 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 actionBlock:&v11];
    v8 = self->_cellSpecifier;
    self->_cellSpecifier = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  [(CARSettingsCellSpecifier *)cellSpecifier setAccessibilityIdentifier:@"CPSettingsDrivingFocusCell", v11, v12, v13, v14];
  v9 = self->_cellSpecifier;

  return v9;
}

- (id)specifierSections
{
  v3 = [CARSettingsCellSpecifierSection alloc];
  v4 = sub_10001C80C(@"DRIVING_FOCUS_FOOTER");
  v5 = [(CARDNDPanel *)self dndSpecifier];
  v10 = v5;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v7 = [(CARSettingsCellSpecifierSection *)v3 initWithFooter:v4 specifiers:v6];
  v11 = v7;
  v8 = [NSArray arrayWithObjects:&v11 count:1];

  return v8;
}

- (void)modeConfigurationService:(id)a3 didReceiveAvailableModesUpdate:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019E00;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)_isDrivingToggleOn
{
  dndModeService = self->_dndModeService;
  v18 = 0;
  v4 = [(DNDModeConfigurationService *)dndModeService modeConfigurationForModeIdentifier:@"com.apple.donotdisturb.mode.driving" error:&v18];
  v5 = v18;
  if (v5)
  {
    v6 = sub_10001C784();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000917E0(v5, v6, v7, v8, v9, v10, v11, v12);
    }

LABEL_4:
    v13 = 0;
    goto LABEL_9;
  }

  v6 = sub_10001C784();
  v14 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (v14)
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Settings] No available driving focus.", v16, 2u);
    }

    goto LABEL_4;
  }

  if (v14)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Settings] Driving Focus is available.", buf, 2u);
  }

  v6 = [(CARDNDPanel *)self dndStatus];
  v13 = [v6 shouldActivateWithCarPlay];
LABEL_9:

  return v13;
}

- (void)_drivingToggleChanged:(BOOL)a3
{
  v3 = a3;
  v5 = sub_10001C784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithBool:v3];
    *buf = 138543362;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Settings] Toggled Driving to %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v7 = [(CARDNDPanel *)self dndStatus];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001A1E8;
  v12[3] = &unk_1000DB3D0;
  objc_copyWeak(&v13, buf);
  v14 = v3;
  [v7 _performCARPreferencesBlock:v12 forReading:0];

  v8 = [(CARDNDPanel *)self dndStatus];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001A248;
  v9[3] = &unk_1000DB3F8;
  objc_copyWeak(&v10, buf);
  v11 = v3;
  [v8 setAutomaticDNDActive:v3 withReply:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

@end