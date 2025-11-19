@interface CARDevicePickerPanel
- (CARDevicePickerCellSpecifier)cellSpecifier;
- (void)_refreshViewControllerIfNeeded;
- (void)carManager:(id)a3 didUpdatePairedDevices:(id)a4;
- (void)viewDidLoad;
@end

@implementation CARDevicePickerPanel

- (CARDevicePickerCellSpecifier)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARDevicePickerCellSpecifier alloc];
    v5 = sub_10001C80C(@"DEVICE_PICKER_CELL_TITLE");
    v6 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.carplay-devices"];
    v7 = [(CARSettingsPanel *)self panelController];
    v8 = [v7 carSession];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10001510C;
    v16 = &unk_1000DAE40;
    objc_copyWeak(&v17, &location);
    v9 = [(CARDevicePickerCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 carSession:v8 actionBlock:&v13];

    [(CARDevicePickerCellSpecifier *)v9 refreshSpecifierIfNeeded:v13];
    v10 = self->_cellSpecifier;
    self->_cellSpecifier = v9;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  [(CARSettingsCellSpecifier *)cellSpecifier setAccessibilityIdentifier:@"CPSettingsDevicePickerCell"];
  v11 = self->_cellSpecifier;

  return v11;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CARDevicePickerPanel;
  [(CARSettingsPanel *)&v5 viewDidLoad];
  [(CARDevicePickerPanel *)self _refreshViewControllerIfNeeded];
  v3 = +[CARSettingsAppDelegate sharedDelegate];
  v4 = [v3 carManager];
  [v4 addObserver:self];
}

- (void)_refreshViewControllerIfNeeded
{
  v3 = [(CARDevicePickerPanel *)self pairedDevices];

  if (v3)
  {
    v4 = sub_10001C784();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Settings] current view controller set to device picker", buf, 2u);
    }

    v5 = [(CARDevicePickerPanel *)self currentViewController];
    v6 = [v5 view];
    [v6 removeFromSuperview];

    v7 = [(CARDevicePickerPanel *)self currentViewController];
    [v7 removeFromParentViewController];

    v8 = [_TtC15CarPlaySettings22CARDevicePickerManager alloc];
    v9 = [(CARDevicePickerPanel *)self pairedDevices];
    v10 = [(CARSettingsPanel *)self panelController];
    v11 = [v10 carSession];
    v68 = [(CARDevicePickerManager *)v8 initWithPairedDevices:v9 carSession:v11];

    v12 = [(CARDevicePickerManager *)v68 viewController];
    [v12 willMoveToParentViewController:self];
    [(CARDevicePickerPanel *)self addChildViewController:v12];
    v13 = [(CARDevicePickerPanel *)self view];
    v14 = [v12 view];
    [v13 addSubview:v14];

    v15 = [v12 view];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v66 = [v12 view];
    v62 = [v66 leadingAnchor];
    v64 = [(CARDevicePickerPanel *)self view];
    v60 = [v64 leadingAnchor];
    v58 = [v62 constraintEqualToAnchor:v60];
    v72[0] = v58;
    v56 = [v12 view];
    v52 = [v56 trailingAnchor];
    v54 = [(CARDevicePickerPanel *)self view];
    v51 = [v54 trailingAnchor];
    v48 = [v52 constraintEqualToAnchor:v51];
    v72[1] = v48;
    v46 = [v12 view];
    v43 = [v46 topAnchor];
    v16 = [(CARDevicePickerPanel *)self view];
    v17 = [v16 topAnchor];
    v18 = [v43 constraintEqualToAnchor:v17];
    v72[2] = v18;
    v19 = [v12 view];
    v20 = [v19 bottomAnchor];
    v21 = [(CARDevicePickerPanel *)self view];
    v22 = [v21 bottomAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v72[3] = v23;
    [NSArray arrayWithObjects:v72 count:4];
    v24 = v44 = self;
    [NSLayoutConstraint activateConstraints:v24];

    v25 = [(CARSettingsPanel *)v44 navigationItem];
    [v12 _setExistingNavigationItem:v25];

    v26 = v68;
    [(CARDevicePickerPanel *)v44 setCurrentViewController:v12];
  }

  else
  {
    if ([(CARDevicePickerPanel *)self isSpinnerVisible])
    {
      return;
    }

    v27 = sub_10001C784();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[Settings] current view controller set to spinner", buf, 2u);
    }

    [(CARDevicePickerPanel *)self currentViewController];
    v29 = v28 = self;
    v30 = [v29 view];
    [v30 removeFromSuperview];

    v31 = [(CARDevicePickerPanel *)v28 currentViewController];
    [v31 removeFromParentViewController];

    v26 = +[_TtC15CarPlaySettings20CARSettingsUtilities loadingViewController];
    [v26 willMoveToParentViewController:v28];
    [(CARDevicePickerPanel *)v28 addChildViewController:v26];
    v32 = [(CARDevicePickerPanel *)v28 view];
    v33 = [v26 view];
    [v32 addSubview:v33];

    v34 = [v26 view];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

    v69 = [v26 view];
    v65 = [v69 leadingAnchor];
    v67 = [(CARDevicePickerPanel *)v28 view];
    v63 = [v67 leadingAnchor];
    v61 = [v65 constraintEqualToAnchor:v63];
    v71[0] = v61;
    v59 = [v26 view];
    v55 = [v59 trailingAnchor];
    v57 = [(CARDevicePickerPanel *)v28 view];
    v53 = [v57 trailingAnchor];
    v50 = [v55 constraintEqualToAnchor:v53];
    v71[1] = v50;
    v49 = [v26 view];
    v45 = [v49 topAnchor];
    v47 = [(CARDevicePickerPanel *)v28 view];
    v35 = [v47 topAnchor];
    v36 = [v45 constraintEqualToAnchor:v35];
    v71[2] = v36;
    v37 = [v26 view];
    v38 = [v37 bottomAnchor];
    v39 = [(CARDevicePickerPanel *)v28 view];
    v40 = [v39 bottomAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
    v71[3] = v41;
    v42 = [NSArray arrayWithObjects:v71 count:4];
    [NSLayoutConstraint activateConstraints:v42];

    [(CARDevicePickerPanel *)v28 setCurrentViewController:v26];
    [(CARDevicePickerPanel *)v28 setIsSpinnerVisible:1];
  }
}

- (void)carManager:(id)a3 didUpdatePairedDevices:(id)a4
{
  v7 = a4;
  v5 = [(CARDevicePickerPanel *)self pairedDevices];

  v6 = v7;
  if (v5 != v7)
  {
    [(CARDevicePickerPanel *)self setPairedDevices:v7];
    [(CARDevicePickerPanel *)self _refreshViewControllerIfNeeded];
    v6 = v7;
  }
}

@end