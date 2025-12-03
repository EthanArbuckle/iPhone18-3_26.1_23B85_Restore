@interface COSProfileTargetDeviceListViewController
- (COSProfileTargetDeviceListViewController)initWithActiveDevice:(id)device otherDevices:(id)devices;
- (id)_lastActiveTraditionallyPairedDevices;
- (id)specifierForDevice:(id)device;
- (id)specifiers;
- (void)cancelDeviceSelection:(id)selection;
- (void)presentConnectFailedAlert:(id)alert;
- (void)removeSpinner;
- (void)switchToDevice:(id)device;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSProfileTargetDeviceListViewController

- (COSProfileTargetDeviceListViewController)initWithActiveDevice:(id)device otherDevices:(id)devices
{
  deviceCopy = device;
  devicesCopy = devices;
  v12.receiver = self;
  v12.super_class = COSProfileTargetDeviceListViewController;
  v9 = [(COSProfileTargetDeviceListViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_currentActiveDevice, device);
    objc_storeStrong(&v10->_otherDevices, devices);
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = COSProfileTargetDeviceListViewController;
  [(COSProfileTargetDeviceListViewController *)&v13 viewWillAppear:appear];
  navigationItem = [(COSProfileTargetDeviceListViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];

  if (!self->_cancelButton)
  {
    v5 = [UIBarButtonItem alloc];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_10026E598 table:@"Localizable"];
    v8 = [v5 initWithTitle:v7 style:0 target:self action:"cancelDeviceSelection:"];
    cancelButton = self->_cancelButton;
    self->_cancelButton = v8;

    navigationItem2 = [(COSProfileTargetDeviceListViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:self->_cancelButton animated:0];
  }

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"SELECT_WATCH" value:&stru_10026E598 table:@"Localizable-tinker"];
  [(COSProfileTargetDeviceListViewController *)self setTitle:v12];
}

- (void)cancelDeviceSelection:(id)selection
{
  v4 = pbb_setup_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[COSProfileTargetDeviceListViewController cancelDeviceSelection:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v7, 0xCu);
  }

  tracker = self->_tracker;
  if (tracker)
  {
    [(COSProfileInstallDeviceSwitchTracker *)tracker rollback];
  }

  completionBlock = [(COSProfileTargetDeviceListViewController *)self completionBlock];
  completionBlock[2](completionBlock, 0);
}

- (id)specifierForDevice:(id)device
{
  deviceCopy = device;
  v5 = NRDevicePropertyName;
  v6 = [deviceCopy valueForProperty:NRDevicePropertyName];
  v7 = v6;
  if (deviceCopy && [v6 length])
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Adding %@", buf, 0xCu);
    }

    v9 = [deviceCopy valueForProperty:v5];
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:objc_opt_class() cell:-1 edit:0];

    [v10 setProperty:deviceCopy forKey:@"COSAssociatedDevice"];
    [v10 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v10 setProperty:&__kCFBooleanTrue forKey:@"COSPairedDeviceListTableCellEnabled"];
    v11 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
    [v10 setProperty:v11 forKey:PSTableCellHeightKey];

    [v10 setProperty:&off_100281DF8 forKey:@"COSDeviceState"];
  }

  else
  {
    v12 = pbb_bridge_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v15 = "[COSProfileTargetDeviceListViewController specifierForDevice:]";
      v16 = 2112;
      v17 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Device is not valid. (%@)", buf, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)_lastActiveTraditionallyPairedDevices
{
  v2 = sub_100009350();
  v3 = [v2 sortedArrayUsingComparator:&stru_10026C108];

  lastObject = [v3 lastObject];

  return lastObject;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    _lastActiveTraditionallyPairedDevices = [(COSProfileTargetDeviceListViewController *)self _lastActiveTraditionallyPairedDevices];
    currentActiveDevice = self->_currentActiveDevice;
    self->_currentActiveDevice = _lastActiveTraditionallyPairedDevices;

    v8 = sub_10002E3D0();
    v9 = [(COSProfileTargetDeviceListViewController *)self specifierForDevice:self->_currentActiveDevice];
    if (v9)
    {
      v10 = pbb_bridge_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding controller for default paired device.", buf, 2u);
      }

      v11 = [PSSpecifier groupSpecifierWithID:@"DeviceListGroup"];
      [v5 addObject:v11];

      [v5 addObject:v9];
    }

    if ([(NSArray *)self->_otherDevices count])
    {
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"SATELLITE_PAIRED_GROUP_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];
      v14 = [PSSpecifier groupSpecifierWithName:v13];

      [v5 addObject:v14];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = v8;
      v15 = v8;
      v16 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v25;
        do
        {
          v19 = 0;
          v20 = v9;
          do
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v9 = [(COSProfileTargetDeviceListViewController *)self specifierForDevice:*(*(&v24 + 1) + 8 * v19)];

            if (v9)
            {
              [v5 addObject:v9];
            }

            v19 = v19 + 1;
            v20 = v9;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v17);
      }

      v8 = v23;
    }

    v21 = *&self->BPSListController_opaque[v3];
    *&self->BPSListController_opaque[v3] = v5;

    v4 = *&self->BPSListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = COSProfileTargetDeviceListViewController;
  pathCopy = path;
  [(COSProfileTargetDeviceListViewController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(COSProfileTargetDeviceListViewController *)self specifierAtIndexPath:pathCopy, v12.receiver, v12.super_class];

  v8 = [v7 propertyForKey:@"COSAssociatedDevice"];
  [(COSProfileTargetDeviceListViewController *)self switchToDevice:v8];
  v9 = objc_alloc_init(PSBarButtonSpinnerView);
  spinner = self->_spinner;
  self->_spinner = v9;

  navigationItem = [(COSProfileTargetDeviceListViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:self->_spinner animated:0];

  [(PSBarButtonSpinnerView *)self->_spinner startAnimating];
}

- (void)switchToDevice:(id)device
{
  deviceCopy = device;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[COSProfileTargetDeviceListViewController switchToDevice:]";
    v24 = 2112;
    v25 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  v6 = [deviceCopy valueForProperty:NRDevicePropertyIsActive];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      pairingID = [deviceCopy pairingID];
      *buf = 138412290;
      v23 = pairingID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User selected active watch (%@). No need to switch.", buf, 0xCu);
    }

    v10 = objc_loadWeakRetained(&location);
    completionBlock = [v10 completionBlock];
    completionBlock[2](completionBlock, 1);
  }

  else
  {
    v12 = pbb_bridge_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      pairingID2 = [deviceCopy pairingID];
      *buf = 138412290;
      v23 = pairingID2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "User selected inactive watch (%@). Starting switch.", buf, 0xCu);
    }

    v14 = objc_loadWeakRetained(&location);
    currentActiveDevice = [v14 currentActiveDevice];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10010FB5C;
    v18[3] = &unk_10026A0A8;
    objc_copyWeak(&v20, &location);
    v19 = deviceCopy;
    v16 = [COSProfileInstallDeviceSwitchTracker selectDevice:v19 currentDevice:currentActiveDevice completionBlock:v18];
    tracker = self->_tracker;
    self->_tracker = v16;

    [(COSProfileInstallDeviceSwitchTracker *)self->_tracker connectToDevice];
    objc_destroyWeak(&v20);
  }

  objc_destroyWeak(&location);
}

- (void)removeSpinner
{
  [(COSProfileTargetDeviceListViewController *)self setSpinner:0];
  navigationItem = [(COSProfileTargetDeviceListViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0 animated:0];
}

- (void)presentConnectFailedAlert:(id)alert
{
  alertCopy = alert;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v20 = "[COSProfileTargetDeviceListViewController presentConnectFailedAlert:]";
    v21 = 2112;
    v22 = alertCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", buf, 0x16u);
  }

  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = alertCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Displaying alert for connection failed to %@.", buf, 0xCu);
  }

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"TINKER_SWITCH_TIMEOUT_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"TINKER_SWITCH_TIMEOUT_MESSAGE_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
  alertCopy = [NSString stringWithFormat:v10, alertCopy];
  v12 = [UIAlertController alertControllerWithTitle:v8 message:alertCopy preferredStyle:1];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100110110;
  v17[3] = &unk_10026BF58;
  v17[4] = self;
  v18 = alertCopy;
  v15 = alertCopy;
  v16 = [UIAlertAction actionWithTitle:v14 style:0 handler:v17];
  [v12 addAction:v16];

  [(COSProfileTargetDeviceListViewController *)self presentViewController:v12 animated:1 completion:0];
}

@end