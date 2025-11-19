@interface CARAirPlaySettingsPanel
- (BOOL)isAirPlayLoggingEnabled;
- (id)cellSpecifier;
- (id)specifierSections;
- (void)_updateDetailForLoggingSpecifer;
- (void)setAirPlayLoggingEnabled:(BOOL)a3;
@end

@implementation CARAirPlaySettingsPanel

- (id)specifierSections
{
  v3 = [NSMutableArray arrayWithCapacity:4];
  objc_initWeak(&location, self);
  v4 = [CARSettingsCellSpecifier alloc];
  v5 = sub_10001C80C(@"VIDEO_VERSION");
  v6 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:0 icon:0 accessoryType:0 actionBlock:0];

  v7 = [(CARSettingsPanel *)self panelController];
  v8 = [v7 carSession];
  v9 = [v8 sourceVersion];

  [(CARSettingsCellSpecifier *)v6 setDetail:v9];
  v10 = [CARSettingsCellSpecifier alloc];
  v11 = sub_10001C80C(@"VIDEO_LOGGING");
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001A894;
  v30[3] = &unk_1000DAE40;
  objc_copyWeak(&v31, &location);
  v12 = [(CARSettingsCellSpecifier *)v10 initWithTitle:v11 image:0 icon:0 accessoryType:1 actionBlock:v30];

  [(CARSettingsCellSpecifier *)v12 setAccessibilityIdentifier:@"CPSettingsAirPlaySettingsLogging"];
  objc_storeStrong(&self->_loggingSpecifier, v12);
  [(CARAirPlaySettingsPanel *)self _updateDetailForLoggingSpecifer];
  v13 = [CARSettingsCellSpecifier alloc];
  v14 = sub_10001C80C(@"VIDEO_ANALYTICS");
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10001A938;
  v28[3] = &unk_1000DAE40;
  objc_copyWeak(&v29, &location);
  v15 = [(CARSettingsCellSpecifier *)v13 initWithTitle:v14 image:0 icon:0 accessoryType:1 actionBlock:v28];

  [(CARSettingsCellSpecifier *)v15 setAccessibilityIdentifier:@"CPSettingsAirPlaySettingsAnalytics"];
  v16 = [CARSettingsCellSpecifier alloc];
  v17 = sub_10001C80C(@"VIDEO_ACKNOWLEDGEMENTS");
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10001A9D0;
  v26 = &unk_1000DAE40;
  objc_copyWeak(&v27, &location);
  v18 = [(CARSettingsCellSpecifier *)v16 initWithTitle:v17 image:0 icon:0 accessoryType:1 actionBlock:&v23];

  [(CARSettingsCellSpecifier *)v18 setAccessibilityIdentifier:@"CPSettingsAirPlaySettingsAcknowledgements", v23, v24, v25, v26];
  v19 = [CARSettingsCellSpecifierSection alloc];
  v33[0] = v6;
  v33[1] = v12;
  v33[2] = v15;
  v33[3] = v18;
  v20 = [NSArray arrayWithObjects:v33 count:4];
  v21 = [(CARSettingsCellSpecifierSection *)v19 initWithSpecifiers:v20];
  [v3 addObject:v21];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

  return v3;
}

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v5 = sub_10001C80C(@"VIDEO");
    v6 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.carplay-video"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10001ABD4;
    v14 = &unk_1000DAE40;
    objc_copyWeak(&v15, &location);
    v7 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 actionBlock:&v11];
    v8 = self->_cellSpecifier;
    self->_cellSpecifier = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  [(CARSettingsCellSpecifier *)cellSpecifier setAccessibilityIdentifier:@"CPSettingsAirPlaySettings", v11, v12, v13, v14];
  v9 = self->_cellSpecifier;

  return v9;
}

- (BOOL)isAirPlayLoggingEnabled
{
  v2 = [(CARSettingsPanel *)self panelController];
  v3 = [v2 vehicleVideoSettings];

  LOBYTE(v2) = [v3 diagnosticsEnabled];
  return v2;
}

- (void)setAirPlayLoggingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CARSettingsPanel *)self panelController];
  v6 = [v5 vehicleVideoSettings];

  [v6 setDiagnosticsEnabled:v3];
  [(CARAirPlaySettingsPanel *)self _updateDetailForLoggingSpecifer];
}

- (void)_updateDetailForLoggingSpecifer
{
  if ([(CARAirPlaySettingsPanel *)self isAirPlayLoggingEnabled])
  {
    v3 = @"VIDEO_LOGGING_ON";
  }

  else
  {
    v3 = @"VIDEO_LOGGING_OFF";
  }

  v5 = sub_10001C80C(v3);
  v4 = [(CARAirPlaySettingsPanel *)self loggingSpecifier];
  [v4 setDetail:v5];
}

@end