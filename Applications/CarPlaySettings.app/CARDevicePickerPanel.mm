@interface CARDevicePickerPanel
- (CARDevicePickerCellSpecifier)cellSpecifier;
- (void)_refreshViewControllerIfNeeded;
- (void)carManager:(id)manager didUpdatePairedDevices:(id)devices;
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
    panelController = [(CARSettingsPanel *)self panelController];
    carSession = [panelController carSession];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10001510C;
    v16 = &unk_1000DAE40;
    objc_copyWeak(&v17, &location);
    v9 = [(CARDevicePickerCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 carSession:carSession actionBlock:&v13];

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
  carManager = [v3 carManager];
  [carManager addObserver:self];
}

- (void)_refreshViewControllerIfNeeded
{
  pairedDevices = [(CARDevicePickerPanel *)self pairedDevices];

  if (pairedDevices)
  {
    v4 = sub_10001C784();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Settings] current view controller set to device picker", buf, 2u);
    }

    currentViewController = [(CARDevicePickerPanel *)self currentViewController];
    view = [currentViewController view];
    [view removeFromSuperview];

    currentViewController2 = [(CARDevicePickerPanel *)self currentViewController];
    [currentViewController2 removeFromParentViewController];

    v8 = [_TtC15CarPlaySettings22CARDevicePickerManager alloc];
    pairedDevices2 = [(CARDevicePickerPanel *)self pairedDevices];
    panelController = [(CARSettingsPanel *)self panelController];
    carSession = [panelController carSession];
    v68 = [(CARDevicePickerManager *)v8 initWithPairedDevices:pairedDevices2 carSession:carSession];

    viewController = [(CARDevicePickerManager *)v68 viewController];
    [viewController willMoveToParentViewController:self];
    [(CARDevicePickerPanel *)self addChildViewController:viewController];
    view2 = [(CARDevicePickerPanel *)self view];
    view3 = [viewController view];
    [view2 addSubview:view3];

    view4 = [viewController view];
    [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

    view5 = [viewController view];
    leadingAnchor = [view5 leadingAnchor];
    view6 = [(CARDevicePickerPanel *)self view];
    leadingAnchor2 = [view6 leadingAnchor];
    v58 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v72[0] = v58;
    view7 = [viewController view];
    trailingAnchor = [view7 trailingAnchor];
    view8 = [(CARDevicePickerPanel *)self view];
    trailingAnchor2 = [view8 trailingAnchor];
    v48 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v72[1] = v48;
    view9 = [viewController view];
    topAnchor = [view9 topAnchor];
    view10 = [(CARDevicePickerPanel *)self view];
    topAnchor2 = [view10 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v72[2] = v18;
    view11 = [viewController view];
    bottomAnchor = [view11 bottomAnchor];
    view12 = [(CARDevicePickerPanel *)self view];
    bottomAnchor2 = [view12 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v72[3] = v23;
    [NSArray arrayWithObjects:v72 count:4];
    v24 = v44 = self;
    [NSLayoutConstraint activateConstraints:v24];

    navigationItem = [(CARSettingsPanel *)v44 navigationItem];
    [viewController _setExistingNavigationItem:navigationItem];

    v26 = v68;
    [(CARDevicePickerPanel *)v44 setCurrentViewController:viewController];
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
    view13 = [v29 view];
    [view13 removeFromSuperview];

    currentViewController3 = [(CARDevicePickerPanel *)v28 currentViewController];
    [currentViewController3 removeFromParentViewController];

    v26 = +[_TtC15CarPlaySettings20CARSettingsUtilities loadingViewController];
    [v26 willMoveToParentViewController:v28];
    [(CARDevicePickerPanel *)v28 addChildViewController:v26];
    view14 = [(CARDevicePickerPanel *)v28 view];
    view15 = [v26 view];
    [view14 addSubview:view15];

    view16 = [v26 view];
    [view16 setTranslatesAutoresizingMaskIntoConstraints:0];

    view17 = [v26 view];
    leadingAnchor3 = [view17 leadingAnchor];
    view18 = [(CARDevicePickerPanel *)v28 view];
    leadingAnchor4 = [view18 leadingAnchor];
    v61 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v71[0] = v61;
    view19 = [v26 view];
    trailingAnchor3 = [view19 trailingAnchor];
    view20 = [(CARDevicePickerPanel *)v28 view];
    trailingAnchor4 = [view20 trailingAnchor];
    v50 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v71[1] = v50;
    view21 = [v26 view];
    topAnchor3 = [view21 topAnchor];
    view22 = [(CARDevicePickerPanel *)v28 view];
    topAnchor4 = [view22 topAnchor];
    v36 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v71[2] = v36;
    view23 = [v26 view];
    bottomAnchor3 = [view23 bottomAnchor];
    view24 = [(CARDevicePickerPanel *)v28 view];
    bottomAnchor4 = [view24 bottomAnchor];
    v41 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v71[3] = v41;
    v42 = [NSArray arrayWithObjects:v71 count:4];
    [NSLayoutConstraint activateConstraints:v42];

    [(CARDevicePickerPanel *)v28 setCurrentViewController:v26];
    [(CARDevicePickerPanel *)v28 setIsSpinnerVisible:1];
  }
}

- (void)carManager:(id)manager didUpdatePairedDevices:(id)devices
{
  devicesCopy = devices;
  pairedDevices = [(CARDevicePickerPanel *)self pairedDevices];

  v6 = devicesCopy;
  if (pairedDevices != devicesCopy)
  {
    [(CARDevicePickerPanel *)self setPairedDevices:devicesCopy];
    [(CARDevicePickerPanel *)self _refreshViewControllerIfNeeded];
    v6 = devicesCopy;
  }
}

@end