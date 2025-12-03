@interface AAUIDeviceSpecifierProvider
- (AAUIDeviceSpecifierProvider)initWithAccountManager:(id)manager;
- (AAUIDeviceSpecifierProviderDelegate)delegate;
- (BOOL)_isSpecifierEnabled:(id)enabled;
- (BOOL)_shouldShowDeviceSpecifiers;
- (NSArray)specifiers;
- (id)_appleAccount;
- (id)_deviceList;
- (id)_iconURLForDevice:(id)device;
- (id)_specifierForDevice:(id)device;
- (id)_specifierForError;
- (id)_specifiersForDeviceList:(id)list;
- (void)_deviceSpecifierWasTapped:(id)tapped;
- (void)deviceListModified:(id)modified;
- (void)refreshDeviceList;
- (void)userTappedAppleCare:(id)care completion:(id)completion;
- (void)userTappedBackup;
- (void)userTappedFMIP;
@end

@implementation AAUIDeviceSpecifierProvider

- (AAUIDeviceSpecifierProvider)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = AAUIDeviceSpecifierProvider;
  v6 = [(AAUIDeviceSpecifierProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
    _deviceList = [(AAUIDeviceSpecifierProvider *)v7 _deviceList];
  }

  return v7;
}

- (void)refreshDeviceList
{
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  deviceList = self->_deviceList;

  [(AADeviceList *)deviceList refreshDeviceList];
}

- (id)_appleAccount
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

  return v3;
}

- (BOOL)_shouldShowDeviceSpecifiers
{
  _appleAccount = [(AAUIDeviceSpecifierProvider *)self _appleAccount];
  if (_appleAccount)
  {
    v3 = +[AADeviceInfo isMultiUserMode]^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = +[NSMutableArray array];
    if ([(AAUIDeviceSpecifierProvider *)self _shouldShowDeviceSpecifiers])
    {
      v5 = [PSSpecifier groupSpecifierWithID:@"GROUP_DEVICES"];
      [v4 addObject:v5];

      _deviceList = [(AAUIDeviceSpecifierProvider *)self _deviceList];
      v7 = [(AAUIDeviceSpecifierProvider *)self _specifiersForDeviceList:_deviceList];
      [v4 addObjectsFromArray:v7];
    }

    v8 = [v4 copy];
    v9 = self->_specifiers;
    self->_specifiers = v8;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (id)_specifierForError
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"APPLEID_DEVICES_NOT_AVAILABLE" value:&stru_5A5F0 table:@"Localizable"];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

  [v4 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];

  return v4;
}

- (id)_specifiersForDeviceList:(id)list
{
  listCopy = list;
  loadError = [listCopy loadError];

  if (loadError)
  {
    _specifierForError = [(AAUIDeviceSpecifierProvider *)self _specifierForError];
    v25 = _specifierForError;
    v7 = &v25;
LABEL_3:
    v8 = [NSArray arrayWithObjects:v7 count:1];
    goto LABEL_13;
  }

  devices = [listCopy devices];
  v10 = [devices count];

  if (!v10)
  {
    _specifierForError = [(AAUIDeviceSpecifierProvider *)self _specifierForSpinner];
    v24 = _specifierForError;
    v7 = &v24;
    goto LABEL_3;
  }

  _specifierForError = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  devices2 = [listCopy devices];
  v12 = [devices2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(devices2);
        }

        v16 = [(AAUIDeviceSpecifierProvider *)self _specifierForDevice:*(*(&v19 + 1) + 8 * i)];
        [_specifierForError addObject:v16];
      }

      v13 = [devices2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v8 = [_specifierForError copy];
LABEL_13:
  v17 = v8;

  return v17;
}

- (id)_specifierForDevice:(id)device
{
  deviceCopy = device;
  name = [deviceCopy name];
  v6 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:1 edit:0];

  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  name2 = [deviceCopy name];
  [v6 setProperty:name2 forKey:PSTitleKey];

  modelDisplayName = [deviceCopy modelDisplayName];
  [v6 setProperty:modelDisplayName forKey:PSTableCellSubtitleTextKey];

  [v6 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  v9 = [(AAUIDeviceSpecifierProvider *)self _iconURLForDevice:deviceCopy];
  [v6 setProperty:v9 forKey:PSLazyIconURL];

  [v6 setControllerLoadAction:"_deviceSpecifierWasTapped:"];
  [v6 setUserInfo:deviceCopy];

  v10 = [NSNumber numberWithBool:[(AAUIDeviceSpecifierProvider *)self _isSpecifierEnabled:v6]];
  [v6 setProperty:v10 forKey:PSEnabledKey];

  return v6;
}

- (BOOL)_isSpecifierEnabled:(id)enabled
{
  _appleAccount = [(AAUIDeviceSpecifierProvider *)self _appleAccount];
  if (_appleAccount)
  {
    _appleAccount2 = [(AAUIDeviceSpecifierProvider *)self _appleAccount];
    aa_isPrimaryEmailVerified = [_appleAccount2 aa_isPrimaryEmailVerified];
  }

  else
  {
    aa_isPrimaryEmailVerified = 0;
  }

  return aa_isPrimaryEmailVerified;
}

- (id)_iconURLForDevice:(id)device
{
  modelSmallPhotoURL3x = [device modelSmallPhotoURL3x];
  v4 = [NSURL URLWithString:modelSmallPhotoURL3x];

  return v4;
}

- (void)_deviceSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  userInfo = [tappedCopy userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    deviceDetailUri = [userInfo deviceDetailUri];
    v7 = [NSURL URLWithString:deviceDetailUri];

    if (v7)
    {
      objc_storeStrong(&self->_deviceRecentlyTapped, userInfo);
      v8 = [[NSMutableURLRequest alloc] initWithURL:v7];
      deviceDetailHttpMethod = [userInfo deviceDetailHttpMethod];
      [v8 setHTTPMethod:deviceDetailHttpMethod];

      delegate = [(AAUIDeviceSpecifierProvider *)self delegate];
      [delegate specifierProvider:self loadRequest:v8 withIdentifier:@"_AAUIRemotePageIdentifierTrustedDevice" specifier:tappedCopy];
    }

    else
    {
      v11 = _AAUILogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Unable to load trusted-devices remote UI. We're missing the URL from the device info!", v12, 2u);
      }
    }
  }

  else
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Unable to load trusted-devices remote UI. We're missing the device info!", buf, 2u);
    }
  }
}

- (id)_deviceList
{
  deviceList = self->_deviceList;
  if (!deviceList)
  {
    v4 = [[AADeviceList alloc] initWithAccountManager:self->_accountManager];
    v5 = self->_deviceList;
    self->_deviceList = v4;

    [(AADeviceList *)self->_deviceList setDelegate:self];
    deviceList = self->_deviceList;
  }

  return deviceList;
}

- (void)deviceListModified:(id)modified
{
  v4 = self->_specifiers;
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6D6C;
  v7[3] = &unk_594A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)userTappedBackup
{
  if (!self->_backupSettingsController)
  {
    _appleAccount = [(AAUIDeviceSpecifierProvider *)self _appleAccount];
    v4 = [ICSViewBuilder buildBackupViewControllerWithAccount:_appleAccount];
    backupSettingsController = self->_backupSettingsController;
    self->_backupSettingsController = v4;
  }

  delegate = [(AAUIDeviceSpecifierProvider *)self delegate];
  [delegate specifierProvider:self showViewController:self->_backupSettingsController];
}

- (void)userTappedFMIP
{
  v5 = objc_alloc_init(FMDUIFMIPiCloudSettingsViewController);
  _appleAccount = [(AAUIDeviceSpecifierProvider *)self _appleAccount];
  [v5 setAccount:_appleAccount];

  delegate = [(AAUIDeviceSpecifierProvider *)self delegate];
  [delegate specifierProvider:self showViewController:v5];
}

- (void)userTappedAppleCare:(id)care completion:(id)completion
{
  careCopy = care;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_7000;
  v9[3] = &unk_594C8;
  objc_copyWeak(&v11, &location);
  v9[4] = self;
  v8 = completionCopy;
  v10 = v8;
  [NDODeviceCoverageDetailsUI deviceCoverageDetailsViewControllerForSerialNumber:careCopy source:0 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (AAUIDeviceSpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end