@interface CARAppearancePanel
+ (NSArray)styles;
- (CARAppearancePanel)initWithPanelController:(id)controller;
- (id)cellSpecifier;
- (id)specifierSections;
- (int64_t)_currentUserInterfaceStylePreference;
- (void)_updateSpecifiers;
- (void)_vehicleDidChange:(id)change;
- (void)setDarkModeOnly:(BOOL)only;
- (void)viewDidLoad;
@end

@implementation CARAppearancePanel

- (CARAppearancePanel)initWithPanelController:(id)controller
{
  controllerCopy = controller;
  v40.receiver = self;
  v40.super_class = CARAppearancePanel;
  v5 = [(CARSettingsPanel *)&v40 initWithPanelController:controllerCopy];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v6 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    styles = [objc_opt_class() styles];
    v8 = [styles countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v8)
    {
      v9 = *v36;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(styles);
          }

          v11 = *(*(&v35 + 1) + 8 * i);
          if ([v11 enabled])
          {
            [v6 addObject:v11];
          }
        }

        v8 = [styles countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&v5->_currentStyles, v6);
    loadWallpaperPreferences = [controllerCopy loadWallpaperPreferences];
    wallpaperPreferences = v5->_wallpaperPreferences;
    v5->_wallpaperPreferences = loadWallpaperPreferences;

    v14 = [CARSettingsGroupCellSpecifier alloc];
    v15 = [(NSArray *)v5->_currentStyles valueForKey:@"name"];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100018988;
    v33[3] = &unk_1000DB000;
    objc_copyWeak(&v34, &location);
    v16 = [(CARSettingsGroupCellSpecifier *)v14 initWithTitles:v15 actionBlock:v33];
    appearanceGroupSpecifier = v5->_appearanceGroupSpecifier;
    v5->_appearanceGroupSpecifier = v16;

    groupSpecifiers = [(CARSettingsGroupCellSpecifier *)v5->_appearanceGroupSpecifier groupSpecifiers];
    v19 = [groupSpecifiers objectAtIndexedSubscript:0];
    [v19 setAccessibilityIdentifier:@"CPSettingsAppearanceAutomatic"];

    groupSpecifiers2 = [(CARSettingsGroupCellSpecifier *)v5->_appearanceGroupSpecifier groupSpecifiers];
    v21 = [groupSpecifiers2 objectAtIndexedSubscript:1];
    [v21 setAccessibilityIdentifier:@"CPSettingsAppearanceAlwaysDark"];

    v22 = [CARSettingsSwitchCellSpecifier alloc];
    v23 = sub_10001C80C(@"DISPLAY_MODE_ALWAYS_DARK_MAPS");
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_100018BC8;
    v31 = &unk_1000DAE68;
    objc_copyWeak(&v32, &location);
    v24 = [(CARSettingsSwitchCellSpecifier *)v22 initWithTitle:v23 image:0 icon:0 actionBlock:&v28];
    darkMapsSwitchSpecifier = v5->_darkMapsSwitchSpecifier;
    v5->_darkMapsSwitchSpecifier = v24;

    [(CARSettingsCellSpecifier *)v5->_darkMapsSwitchSpecifier setAccessibilityIdentifier:@"CPSettingsAppearanceDarkMapsToggle", v28, v29, v30, v31];
    [(CARAppearancePanel *)v5 _updateSpecifiers];
    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v5 selector:"_vehicleDidChange:" name:@"CARSettingsPanelControllerVehicleDidChangeNotification" object:0];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);

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
    v5 = sub_10001C80C(@"DISPLAY_MODE_TITLE");
    v6 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.dark-mode"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100018E68;
    v14 = &unk_1000DAE40;
    objc_copyWeak(&v15, &location);
    v7 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 actionBlock:&v11];
    v8 = self->_cellSpecifier;
    self->_cellSpecifier = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  [(CARSettingsCellSpecifier *)cellSpecifier setAccessibilityIdentifier:@"CPSettingsAppearanceCell", v11, v12, v13, v14];
  v9 = self->_cellSpecifier;

  return v9;
}

- (id)specifierSections
{
  v3 = +[NSMutableArray array];
  if (![(CARAppearancePanel *)self darkModeOnly])
  {
    v4 = [CARSettingsCellSpecifierSection alloc];
    appearanceGroupSpecifier = [(CARAppearancePanel *)self appearanceGroupSpecifier];
    groupSpecifiers = [appearanceGroupSpecifier groupSpecifiers];
    v7 = [(CARSettingsCellSpecifierSection *)v4 initWithTitle:0 specifiers:groupSpecifiers];
    [v3 addObject:v7];
  }

  if ([(CARAppearancePanel *)self _currentUserInterfaceStylePreference]== 2)
  {
    darkMapsSwitchSpecifier = [(CARAppearancePanel *)self darkMapsSwitchSpecifier];
    v12 = darkMapsSwitchSpecifier;
    v9 = [NSArray arrayWithObjects:&v12 count:1];

    v10 = [[CARSettingsCellSpecifierSection alloc] initWithTitle:0 specifiers:v9];
    [v3 addObject:v10];
  }

  return v3;
}

- (void)setDarkModeOnly:(BOOL)only
{
  if (self->_darkModeOnly != only)
  {
    self->_darkModeOnly = only;
    [(CARSettingsTablePanel *)self reloadSpecifiers];

    [(CARAppearancePanel *)self _updateSpecifiers];
  }
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CARAppearancePanel;
  [(CARSettingsTablePanel *)&v2 viewDidLoad];
}

- (int64_t)_currentUserInterfaceStylePreference
{
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];
  appearanceModePreference = [vehicle appearanceModePreference];

  if (appearanceModePreference != -1)
  {
    return appearanceModePreference;
  }

  panelController2 = [(CARSettingsPanel *)self panelController];
  carSession = [panelController2 carSession];
  configuration = [carSession configuration];
  userInterfaceStyle = [configuration userInterfaceStyle];

  return userInterfaceStyle;
}

- (void)_updateSpecifiers
{
  _currentUserInterfaceStylePreference = [(CARAppearancePanel *)self _currentUserInterfaceStylePreference];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  currentStyles = [(CARAppearancePanel *)self currentStyles];
  v5 = [currentStyles countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    v10 = v7;
    v7 += v6;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(currentStyles);
      }

      if ([*(*(&v16 + 1) + 8 * v9) style] == _currentUserInterfaceStylePreference)
      {
        break;
      }

      ++v10;
      if (v6 == ++v9)
      {
        v6 = [currentStyles countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  appearanceGroupSpecifier = [(CARAppearancePanel *)self appearanceGroupSpecifier];
  [appearanceGroupSpecifier setSelectedIndex:v10];

  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];
  v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [vehicle mapsAppearancePreference] == 2);
  darkMapsSwitchSpecifier = [(CARAppearancePanel *)self darkMapsSwitchSpecifier];
  [darkMapsSwitchSpecifier setCellValue:v14];
}

+ (NSArray)styles
{
  if (qword_100101EA0 != -1)
  {
    sub_100091760();
  }

  v3 = qword_100101EA8;

  return v3;
}

- (void)_vehicleDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001952C;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end