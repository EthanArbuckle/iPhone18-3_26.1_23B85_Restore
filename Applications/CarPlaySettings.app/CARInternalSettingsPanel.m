@interface CARInternalSettingsPanel
- (BOOL)_isPreflightThemeAssetEnabled;
- (BOOL)_sessionSupportsVehicleData;
- (CARInternalSettingsPanel)initWithPanelController:(id)a3;
- (id)cellSpecifier;
- (void)viewDidLoad;
@end

@implementation CARInternalSettingsPanel

- (CARInternalSettingsPanel)initWithPanelController:(id)a3
{
  v4 = a3;
  v104.receiver = self;
  v104.super_class = CARInternalSettingsPanel;
  v5 = [(CARSettingsPanel *)&v104 initWithPanelController:v4];
  if (v5)
  {
    v6 = [[CARDebugPanel alloc] initWithPanelController:v4];
    debugPanel = v5->_debugPanel;
    v5->_debugPanel = v6;

    v91 = v4;
    v8 = [[CARNavigationOverridesPanel alloc] initWithPanelController:v4];
    navigationOverridesPanel = v5->_navigationOverridesPanel;
    v5->_navigationOverridesPanel = v8;

    v10 = [[CARSettingsCellSpecifier alloc] initWithTitle:@"Plug-in Version" image:0 icon:0 accessoryType:0 actionBlock:&stru_1000DB248];
    v11 = [(CARSettingsPanel *)v5 panelController];
    v12 = [v11 carSession];
    v13 = [v12 sourceVersion];

    if (v13)
    {
      v14 = qword_100101E88;
      v15 = v13;
      if (v14 != -1)
      {
        sub_1000916E0();
      }

      v16 = qword_100101E80;
      v17 = [v15 stringByReplacingOccurrencesOfString:@"." withString:&stru_1000DE3D8];
      v18 = [v16 objectForKeyedSubscript:v17];
      v19 = v18;
      v20 = @"Unknown";
      if (v18)
      {
        v20 = v18;
      }

      v21 = v20;

      v22 = [NSString stringWithFormat:@"%@ (%@)", v21, v15];

      [(CARSettingsCellSpecifier *)v10 setDetail:v22 sizeToFit:1 withNumberOfLines:1 lineBreakMode:3];
      v102[0] = _NSConcreteStackBlock;
      v102[1] = 3221225472;
      v102[2] = sub_1000164D4;
      v102[3] = &unk_1000DAE90;
      v103 = v22;
      v23 = v22;
      [(CARSettingsCellSpecifier *)v10 setActionBlock:v102];
    }

    else
    {
      [(CARSettingsCellSpecifier *)v10 setDetail:@"Unknown"];
    }

    if ([(CARInternalSettingsPanel *)v5 _sessionSupportsVehicleData])
    {
      v24 = [[CARSettingsCellSpecifier alloc] initWithTitle:@"Asset ID" image:0 icon:0 accessoryType:0 actionBlock:&stru_1000DB268];
      v25 = [(CARSettingsPanel *)v5 panelController];
      v26 = [v25 vehicle];
      v27 = [v26 clusterAssetIdentifier];

      v89 = v27;
      if ([v27 length])
      {
        [(CARSettingsCellSpecifier *)v24 setDetail:v27 sizeToFit:1 withNumberOfLines:1 lineBreakMode:5];
        v100[0] = _NSConcreteStackBlock;
        v100[1] = 3221225472;
        v100[2] = sub_100016530;
        v100[3] = &unk_1000DAE90;
        v101 = v27;
        [(CARSettingsCellSpecifier *)v24 setActionBlock:v100];
      }

      else
      {
        [(CARSettingsCellSpecifier *)v24 setDetail:@"Unknown"];
      }

      v29 = [[CARSettingsCellSpecifier alloc] initWithTitle:@"Asset Version" image:0 icon:0 accessoryType:0 actionBlock:&stru_1000DB288];
      v30 = [(CARSettingsPanel *)v5 panelController];
      v31 = [v30 vehicle];
      v32 = [v31 clusterAssetVersion];

      v94 = v29;
      if (v32)
      {
        v33 = [v32 stringValue];
        [(CARSettingsCellSpecifier *)v29 setDetail:v33 sizeToFit:1 withNumberOfLines:1 lineBreakMode:3];

        v98[0] = _NSConcreteStackBlock;
        v98[1] = 3221225472;
        v98[2] = sub_10001658C;
        v98[3] = &unk_1000DAE90;
        v99 = v32;
        [(CARSettingsCellSpecifier *)v29 setActionBlock:v98];
      }

      else
      {
        [(CARSettingsCellSpecifier *)v29 setDetail:@"Unknown"];
      }

      v34 = [(CARInternalSettingsPanel *)v5 _isPreflightThemeAssetEnabled];
      v35 = [[CARSettingsCellSpecifier alloc] initWithTitle:@"Asset Type" image:0 icon:0 accessoryType:0 actionBlock:&stru_1000DB2A8];
      if (v34)
      {
        v36 = @"Preflight";
      }

      else
      {
        v36 = @"Production";
      }

      v93 = v35;
      [(CARSettingsCellSpecifier *)v35 setDetail:v36];
      v37 = [[CARSettingsCellSpecifier alloc] initWithTitle:@"SDK Version" image:0 icon:0 accessoryType:0 actionBlock:&stru_1000DB2C8];
      v38 = [(CARSettingsPanel *)v5 panelController];
      v39 = [v38 vehicle];
      v40 = [v39 SDKVersion];

      if ([v40 length])
      {
        [(CARSettingsCellSpecifier *)v37 setDetail:v40 sizeToFit:1 withNumberOfLines:1 lineBreakMode:3];
        [(CARSettingsCellSpecifier *)v37 setDetail:v40];
        v96[0] = _NSConcreteStackBlock;
        v96[1] = 3221225472;
        v96[2] = sub_100016604;
        v96[3] = &unk_1000DAE90;
        v97 = v40;
        [(CARSettingsCellSpecifier *)v37 setActionBlock:v96];
      }

      else
      {
        [(CARSettingsCellSpecifier *)v37 setDetail:@"Unknown"];
      }

      v92 = v37;

      v28 = v94;
    }

    else
    {
      v92 = 0;
      v93 = 0;
      v28 = 0;
      v24 = 0;
    }

    v88 = v13;
    v41 = [[CARSettingsCellSpecifier alloc] initWithTitle:@"Toggle USB" image:0 icon:0 accessoryType:0 actionBlock:&stru_1000DB2E8];
    v109[0] = v41;
    v109[1] = v10;
    v90 = v10;
    v42 = [NSArray arrayWithObjects:v109 count:2];
    switches = v5->_switches;
    v5->_switches = v42;

    if ([(CARInternalSettingsPanel *)v5 _sessionSupportsVehicleData])
    {
      v44 = v5->_switches;
      v108[0] = v24;
      v108[1] = v28;
      v108[2] = v92;
      v108[3] = v93;
      v45 = [NSArray arrayWithObjects:v108 count:4];
      v46 = [(NSArray *)v44 arrayByAddingObjectsFromArray:v45];
      v47 = v5->_switches;
      v5->_switches = v46;
    }

    v95 = v28;
    v87 = v24;
    v83 = v5->_switches;
    v48 = [CARInternalSettingPrototypeSpecifier alloc];
    v86 = +[CARPrototypePref showInternalApps];
    v85 = [(CARInternalSettingPrototypeSpecifier *)v48 initWithInternalSettingPrototype:v86];
    v107[0] = v85;
    v49 = [CARInternalSettingPrototypeSpecifier alloc];
    v84 = +[CARPrototypePref nowPlayingAlbumArt];
    v50 = [(CARInternalSettingPrototypeSpecifier *)v49 initWithInternalSettingPrototype:v84];
    v107[1] = v50;
    v51 = [CARInternalSettingPrototypeSpecifier alloc];
    +[CARPrototypePref smartWidgetDebugShowScore];
    v53 = v52 = v5;
    v54 = [(CARInternalSettingPrototypeSpecifier *)v51 initWithInternalSettingPrototype:v53];
    v107[2] = v54;
    v55 = [CARInternalSettingPrototypeSpecifier alloc];
    v56 = +[CARPrototypePref smartWidgetDebugGestures];
    v57 = [(CARInternalSettingPrototypeSpecifier *)v55 initWithInternalSettingPrototype:v56];
    v107[3] = v57;
    v58 = [CARInternalSettingPrototypeSpecifier alloc];
    v59 = +[CARPrototypePref fakeNeatlineDashboardSupport];
    v60 = [(CARInternalSettingPrototypeSpecifier *)v58 initWithInternalSettingPrototype:v59];
    v107[4] = v60;
    v61 = [NSArray arrayWithObjects:v107 count:5];
    v62 = [(NSArray *)v83 arrayByAddingObjectsFromArray:v61];
    v63 = v52->_switches;
    v52->_switches = v62;

    v5 = v52;
    if ([(CARInternalSettingsPanel *)v52 _sessionSupportsVehicleData])
    {
      v64 = v52->_switches;
      v65 = [CARInternalSettingPrototypeSpecifier alloc];
      v66 = +[CARPrototypePref showDisclaimerLabel];
      v67 = [(CARInternalSettingPrototypeSpecifier *)v65 initWithInternalSettingPrototype:v66];
      v106[0] = v67;
      v68 = [CARInternalSettingPrototypeSpecifier alloc];
      v69 = +[CARPrototypePref showSerialNumber];
      v70 = [(CARInternalSettingPrototypeSpecifier *)v68 initWithInternalSettingPrototype:v69];
      v106[1] = v70;
      v71 = [[CARSettingsCellSpecifier alloc] initWithTitle:@"Change Dynamic Content" image:0 icon:0 accessoryType:0 actionBlock:&stru_1000DB308];
      v106[2] = v71;
      v72 = [[CARSettingsCellSpecifier alloc] initWithTitle:@"Change Layout" image:0 icon:0 accessoryType:0 actionBlock:&stru_1000DB328];
      v106[3] = v72;
      v73 = [NSArray arrayWithObjects:v106 count:4];
      v74 = [(NSArray *)v64 arrayByAddingObjectsFromArray:v73];
      v75 = v52->_switches;
      v52->_switches = v74;

      v5 = v52;
    }

    v76 = v5->_switches;
    v77 = [(CARDebugPanel *)v5->_debugPanel cellSpecifier];
    v105[0] = v77;
    v78 = [(CARNavigationOverridesPanel *)v5->_navigationOverridesPanel cellSpecifier];
    v105[1] = v78;
    v79 = [NSArray arrayWithObjects:v105 count:2];
    v80 = [(NSArray *)v76 arrayByAddingObjectsFromArray:v79];
    v81 = v5->_switches;
    v5->_switches = v80;

    v4 = v91;
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
    v5 = sub_10001C80C(@"INTERNAL_SETTINGS");
    v6 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.internal-settings"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10001687C;
    v14 = &unk_1000DAE40;
    objc_copyWeak(&v15, &location);
    v7 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 actionBlock:&v11];
    v8 = self->_cellSpecifier;
    self->_cellSpecifier = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  [(CARSettingsCellSpecifier *)cellSpecifier setAccessibilityIdentifier:@"CPSettingsInternalSettingsCell", v11, v12, v13, v14];
  v9 = self->_cellSpecifier;

  return v9;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CARInternalSettingsPanel;
  [(CARSettingsTablePanel *)&v2 viewDidLoad];
}

- (BOOL)_sessionSupportsVehicleData
{
  v2 = [(CARSettingsPanel *)self panelController];
  v3 = [v2 carSession];
  v4 = [v3 configuration];
  v5 = [v4 supportsVehicleData];

  return v5;
}

- (BOOL)_isPreflightThemeAssetEnabled
{
  v2 = +[CRCarPlayPreferences isPreflightThemeAssetEnabled];
  v3 = [v2 BOOLValue];

  return v3;
}

@end