@interface ACUIRemoteAccountListViewController
- (BOOL)_accountTypeIsApple:(id)a3;
- (NRDevice)device;
- (id)_newSpecifierForAccount:(id)a3;
- (id)specifiers;
- (id)title;
- (void)_displayAlertWithTitle:(id)a3 message:(id)a4;
- (void)_refreshAccounts;
- (void)dealloc;
- (void)syncControllerAccountsChanged:(id)a3;
- (void)syncControllerAccountsInvalidated:(id)a3;
- (void)syncControllerStateChanged:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ACUIRemoteAccountListViewController

- (id)title
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"MAIL_AND_CALENDAR" value:&stru_1C810 table:@"Localizable"];

  return v4;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(ACUIRemoteAccountSyncController *)self->_syncController removeObserver:self];
  v2.receiver = v4;
  v2.super_class = ACUIRemoteAccountListViewController;
  [(ACUIRemoteAccountListViewController *)&v2 dealloc];
}

- (void)viewDidLoad
{
  v20 = self;
  v19 = a2;
  v12 = [ACUIRemoteAccountSyncController alloc];
  v13 = [(ACUIRemoteAccountListViewController *)v20 device];
  v2 = [(ACUIRemoteAccountSyncController *)v12 initWithRemoteDevice:?];
  syncController = v20->_syncController;
  v20->_syncController = v2;

  v14 = [ACUIRemoteDeviceSettingsController alloc];
  v15 = [(ACUIRemoteAccountListViewController *)v20 device];
  v4 = [(ACUIRemoteDeviceSettingsController *)v14 initWithRemoteDevice:?];
  settingsController = v20->_settingsController;
  v20->_settingsController = v4;

  v16 = objc_alloc(sub_64A4());
  v17 = [[ACUICloudNotificationAccountDataSource alloc] initWithAccountDataSource:v20->_syncController];
  v6 = [v16 initWithAccountDataSource:?];
  cloudNotificationDataSource = v20->_cloudNotificationDataSource;
  v20->_cloudNotificationDataSource = v6;

  [(NMCUICloudNotificationAccountDataSource *)v20->_cloudNotificationDataSource setShowsAlerts:1];
  v8 = [objc_alloc(sub_65D4()) initWithListController:v20 dataSource:v20->_cloudNotificationDataSource isTinker:1];
  specifierController = v20->_specifierController;
  v20->_specifierController = v8;

  v10 = [[ACUIRemoteAddAccountDataSource alloc] initWithSyncController:v20->_syncController settingsController:v20->_settingsController];
  addAccountDataSource = v20->_addAccountDataSource;
  v20->_addAccountDataSource = v10;

  [(ACUIRemoteAccountSyncController *)v20->_syncController addObserver:v20];
  v18.receiver = v20;
  v18.super_class = ACUIRemoteAccountListViewController;
  [(ACUIRemoteAccountListViewController *)&v18 viewDidLoad];
  [(ACUIRemoteAccountListViewController *)v20 reloadSpecifiers];
  [(ACUIRemoteAccountListViewController *)v20 _refreshAccounts];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = ACUIRemoteAccountListViewController;
  [(ACUIRemoteAccountListViewController *)&v3 viewWillAppear:a3];
  [(ACUIRemoteAccountListViewController *)v6 reloadSpecifiers];
}

- (id)specifiers
{
  v37 = self;
  v36[1] = a2;
  if (!*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v36[0] = objc_opt_new();
    v27 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [(NSBundle *)v27 localizedStringForKey:@"ACCOUNTS" value:&stru_1C810 table:@"Localizable"];
    v35 = [PSSpecifier groupSpecifierWithName:?];

    [v36[0] addObject:v35];
    v34 = [v37[18] topLevelAccounts];
    if ([v37[18] reloading])
    {
      v25 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [(NSBundle *)v25 localizedStringForKey:@"LOADING" value:&stru_1C810 table:@"Localizable"];
      v33 = [PSSpecifier preferenceSpecifierNamed:"preferenceSpecifierNamed:target:set:get:detail:cell:edit:" target:0 set:? get:? detail:? cell:? edit:?];

      [v33 setProperty:objc_opt_class() forKey:PSCellClassKey];
      [v36[0] addObject:v33];
      objc_storeStrong(&v33, 0);
    }

    else
    {
      memset(__b, 0, sizeof(__b));
      v22 = v34;
      v23 = [v22 countByEnumeratingWithState:__b objects:v40 count:16];
      if (v23)
      {
        v19 = *__b[2];
        v20 = 0;
        v21 = v23;
        while (1)
        {
          v18 = v20;
          if (*__b[2] != v19)
          {
            objc_enumerationMutation(v22);
          }

          v32 = *(__b[1] + 8 * v20);
          v16 = v36[0];
          v17 = [v37 _newSpecifierForAccount:v32];
          [v16 addObject:?];

          ++v20;
          if (v18 + 1 >= v21)
          {
            v20 = 0;
            v21 = [v22 countByEnumeratingWithState:__b objects:v40 count:16];
            if (!v21)
            {
              break;
            }
          }
        }
      }

      if (v37[20])
      {
        v15 = [NSBundle bundleForClass:objc_opt_class()];
        v14 = [(NSBundle *)v15 localizedStringForKey:@"ADD_ACCOUNT_TITLE" value:&stru_1C810 table:@"Localizable"];
        v30 = [PSSpecifier preferenceSpecifierNamed:v14 target:v37 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

        [v30 setTarget:v37];
        [v30 setProperty:v37[20] forKey:ACUIAddAccountDataSourceKey];
        [v36[0] addObject:v30];
        objc_storeStrong(&v30, 0);
      }

      v29 = [PSSpecifier groupSpecifierWithID:@"fetch-frequency"];
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [(NSBundle *)v8 localizedStringForKey:@"FETCH" value:&stru_1C810 table:@"Localizable"];
      v28 = [PSSpecifier preferenceSpecifierNamed:v7 target:v37 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

      v38 = ACUIRemoteSettingsControllerKey;
      v10 = [v37 settingsController];
      v39 = v10;
      v9 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      [v28 setUserInfo:?];

      [v36[0] addObject:v29];
      [v36[0] addObject:v28];
      v11 = v36[0];
      v13 = [v37 specifierController];
      v12 = [v13 specifiers];
      [v11 addObjectsFromArray:?];

      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v29, 0);
    }

    v2 = [v36[0] copy];
    v3 = (v37 + OBJC_IVAR___PSListController__specifiers);
    v4 = *v3;
    *v3 = v2;

    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(v36, 0);
  }

  v5 = *(v37 + OBJC_IVAR___PSListController__specifiers);

  return v5;
}

- (id)_newSpecifierForAccount:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = v17;
  v11 = [location[0] accountType];
  v12 = [(ACUIRemoteAccountListViewController *)v10 _accountTypeIsApple:?];

  v15 = v12;
  if (v12)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_opt_class();
  }

  v14[1] = v9;
  v8 = [location[0] copy];
  v14[0] = [ACUIAccountSummaryCell specifierWithStyle:"specifierWithStyle:account:detailControllerClass:presentationStyle:" account:3 detailControllerClass:? presentationStyle:?];

  v13 = 1;
  if (v15)
  {
    [v14[0] setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    v13 = 0;
  }

  v18[0] = ACUIAccountKey;
  v6 = [location[0] copy];
  v19[0] = v6;
  v18[1] = ACUIShowDeleteButtonKey;
  v5 = [NSNumber numberWithBool:v13 & 1];
  v19[1] = v5;
  v18[2] = ACUIRemoteSyncControllerKey;
  v19[2] = v17->_syncController;
  v4 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  [v14[0] setUserInfo:?];

  v7 = v14[0];
  objc_storeStrong(v14, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (BOOL)_accountTypeIsApple:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] identifier];
  v6 = 0;
  v5 = 1;
  if (([v4 isEqualToString:ACAccountTypeIdentifierAppleAccount] & 1) == 0)
  {
    v7 = [location[0] identifier];
    v6 = 1;
    v5 = [v7 isEqualToString:ACAccountTypeIdentifierAppleIDAuthentication];
  }

  v9 = v5 & 1;
  if (v6)
  {
  }

  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (void)_refreshAccounts
{
  v10 = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v2 = [(ACUIRemoteAccountListViewController *)v10 syncController];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_74AC;
  v7 = &unk_1C438;
  objc_copyWeak(v8, location);
  [(ACUIRemoteAccountSyncController *)v2 fetchRemoteAccounts:&v3];

  objc_destroyWeak(v8);
  objc_destroyWeak(location);
}

- (void)_displayAlertWithTitle:(id)a3 message:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = [UIAlertController alertControllerWithTitle:location[0] message:v10 preferredStyle:1];
  v5 = v9;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [(NSBundle *)v8 localizedStringForKey:@"OK" value:&stru_1C810 table:@"Localizable"];
  v6 = [UIAlertAction actionWithTitle:"actionWithTitle:style:handler:" style:? handler:?];
  [(UIAlertController *)v5 addAction:?];

  [(ACUIRemoteAccountListViewController *)v12 presentViewController:v9 animated:1 completion:0];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (NRDevice)device
{
  if (!self->_device)
  {
    v8 = +[NRPairedDeviceRegistry sharedInstance];
    v7 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v6 = [(NRPairedDeviceRegistry *)v8 getAllDevicesWithArchivedAltAccountDevicesMatching:?];
    v2 = [v6 firstObject];
    device = self->_device;
    self->_device = v2;
  }

  v4 = self->_device;

  return v4;
}

- (void)syncControllerStateChanged:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_7B18;
  v9 = &unk_1C410;
  v10 = v12;
  dispatch_async(queue, &v5);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)syncControllerAccountsChanged:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_7C58;
  v9 = &unk_1C410;
  v10 = v12;
  dispatch_async(queue, &v5);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)syncControllerAccountsInvalidated:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(ACUIRemoteAccountListViewController *)v4 _refreshAccounts];
  objc_storeStrong(location, 0);
}

@end