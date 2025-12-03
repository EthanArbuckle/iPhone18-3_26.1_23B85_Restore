@interface CARDisplayPanel
- (CARDisplayPanel)initWithPanelController:(id)controller;
- (id)cellSpecifier;
- (id)specifierSections;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CARDisplayPanel

- (CARDisplayPanel)initWithPanelController:(id)controller
{
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = CARDisplayPanel;
  v5 = [(CARSettingsPanel *)&v17 initWithPanelController:controllerCopy];
  if (v5)
  {
    if (+[CARNowPlayingAlbumArtSpecifier userSettingControlAvailable])
    {
      v6 = [CARNowPlayingAlbumArtSpecifier alloc];
      panelController = [(CARSettingsPanel *)v5 panelController];
      v8 = [(CARNowPlayingAlbumArtSpecifier *)v6 initWithPanelController:panelController];
      albumArtSpecifier = v5->_albumArtSpecifier;
      v5->_albumArtSpecifier = v8;
    }

    v10 = [CARSettingsSwitchCellSpecifier alloc];
    v11 = sub_10001C80C(@"SMART_DISPLAY_ZOOM_CELL_TITLE");
    v12 = [(CARSettingsSwitchCellSpecifier *)v10 initWithTitle:v11 image:0 icon:0];
    smartZoomCellSpecifier = v5->_smartZoomCellSpecifier;
    v5->_smartZoomCellSpecifier = v12;

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100006C5C;
    v15[3] = &unk_1000DAE90;
    v16 = controllerCopy;
    [(CARSettingsCellSpecifier *)v5->_smartZoomCellSpecifier setActionBlock:v15];
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  panelController = [(CARSettingsPanel *)self panelController];
  v5 = [NSNumber numberWithBool:[CARDisplayScalePanel switchValue:panelController]];
  [(CARSettingsCellSpecifier *)self->_smartZoomCellSpecifier setCellValue:v5];

  smartZoomCellSpecifier = self->_smartZoomCellSpecifier;

  [(CARSettingsCellSpecifier *)smartZoomCellSpecifier setAccessibilityIdentifier:@"CPSettingsSmartDisplayZoomToggle"];
}

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v5 = sub_10001C80C(@"DISPLAY_TITLE");
    v6 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.carplay-display"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100006E7C;
    v14 = &unk_1000DAE40;
    objc_copyWeak(&v15, &location);
    v7 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 actionBlock:&v11];
    v8 = self->_cellSpecifier;
    self->_cellSpecifier = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  [(CARSettingsCellSpecifier *)cellSpecifier setAccessibilityIdentifier:@"CPSettingsDisplayCell", v11, v12, v13, v14];
  v9 = self->_cellSpecifier;

  return v9;
}

- (id)specifierSections
{
  v3 = +[NSMutableArray array];
  if (_os_feature_enabled_impl())
  {
    panelController = [(CARSettingsPanel *)self panelController];
    carSession = [panelController carSession];
    configuration = [carSession configuration];
    screens = [configuration screens];
    v8 = [screens bs_containsObjectPassingTest:&stru_1000DAEB0];

    v9 = sub_10001C784();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        sub_100091504(v9);
      }

      v11 = [CARSettingsCellSpecifierSection alloc];
      v9 = sub_10001C80C(@"SMART_DISPLAY_ZOOM_FOOTER");
      smartZoomCellSpecifier = [(CARDisplayPanel *)self smartZoomCellSpecifier];
      v20 = smartZoomCellSpecifier;
      v13 = [NSArray arrayWithObjects:&v20 count:1];
      v14 = [(CARSettingsCellSpecifierSection *)v11 initWithFooter:v9 specifiers:v13];
      [v3 addObject:v14];
    }

    else if (v10)
    {
      sub_1000914C0(v9);
    }
  }

  if (+[CARNowPlayingAlbumArtSpecifier userSettingControlAvailable])
  {
    v15 = [CARSettingsCellSpecifierSection alloc];
    albumArtSpecifier = self->_albumArtSpecifier;
    v16 = [NSArray arrayWithObjects:&albumArtSpecifier count:1];
    v17 = [(CARSettingsCellSpecifierSection *)v15 initWithSpecifiers:v16];
    [v3 addObject:v17];
  }

  return v3;
}

@end