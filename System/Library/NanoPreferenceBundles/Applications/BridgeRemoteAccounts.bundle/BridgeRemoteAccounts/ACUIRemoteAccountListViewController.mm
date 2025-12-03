@interface ACUIRemoteAccountListViewController
- (BOOL)_accountTypeIsApple:(id)apple;
- (NRDevice)device;
- (id)_newSpecifierForAccount:(id)account;
- (id)specifiers;
- (id)title;
- (void)_displayAlertWithTitle:(id)title message:(id)message;
- (void)_refreshAccounts;
- (void)dealloc;
- (void)syncControllerAccountsChanged:(id)changed;
- (void)syncControllerAccountsInvalidated:(id)invalidated;
- (void)syncControllerStateChanged:(id)changed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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
  selfCopy = self;
  v3 = a2;
  [(ACUIRemoteAccountSyncController *)self->_syncController removeObserver:self];
  v2.receiver = selfCopy;
  v2.super_class = ACUIRemoteAccountListViewController;
  [(ACUIRemoteAccountListViewController *)&v2 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v19 = a2;
  v12 = [ACUIRemoteAccountSyncController alloc];
  device = [(ACUIRemoteAccountListViewController *)selfCopy device];
  v2 = [(ACUIRemoteAccountSyncController *)v12 initWithRemoteDevice:?];
  syncController = selfCopy->_syncController;
  selfCopy->_syncController = v2;

  v14 = [ACUIRemoteDeviceSettingsController alloc];
  device2 = [(ACUIRemoteAccountListViewController *)selfCopy device];
  v4 = [(ACUIRemoteDeviceSettingsController *)v14 initWithRemoteDevice:?];
  settingsController = selfCopy->_settingsController;
  selfCopy->_settingsController = v4;

  v16 = objc_alloc(sub_64A4());
  v17 = [[ACUICloudNotificationAccountDataSource alloc] initWithAccountDataSource:selfCopy->_syncController];
  v6 = [v16 initWithAccountDataSource:?];
  cloudNotificationDataSource = selfCopy->_cloudNotificationDataSource;
  selfCopy->_cloudNotificationDataSource = v6;

  [(NMCUICloudNotificationAccountDataSource *)selfCopy->_cloudNotificationDataSource setShowsAlerts:1];
  v8 = [objc_alloc(sub_65D4()) initWithListController:selfCopy dataSource:selfCopy->_cloudNotificationDataSource isTinker:1];
  specifierController = selfCopy->_specifierController;
  selfCopy->_specifierController = v8;

  v10 = [[ACUIRemoteAddAccountDataSource alloc] initWithSyncController:selfCopy->_syncController settingsController:selfCopy->_settingsController];
  addAccountDataSource = selfCopy->_addAccountDataSource;
  selfCopy->_addAccountDataSource = v10;

  [(ACUIRemoteAccountSyncController *)selfCopy->_syncController addObserver:selfCopy];
  v18.receiver = selfCopy;
  v18.super_class = ACUIRemoteAccountListViewController;
  [(ACUIRemoteAccountListViewController *)&v18 viewDidLoad];
  [(ACUIRemoteAccountListViewController *)selfCopy reloadSpecifiers];
  [(ACUIRemoteAccountListViewController *)selfCopy _refreshAccounts];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = ACUIRemoteAccountListViewController;
  [(ACUIRemoteAccountListViewController *)&v3 viewWillAppear:appear];
  [(ACUIRemoteAccountListViewController *)selfCopy reloadSpecifiers];
}

- (id)specifiers
{
  selfCopy = self;
  v36[1] = a2;
  if (!*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v36[0] = objc_opt_new();
    v27 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [(NSBundle *)v27 localizedStringForKey:@"ACCOUNTS" value:&stru_1C810 table:@"Localizable"];
    v35 = [PSSpecifier groupSpecifierWithName:?];

    [v36[0] addObject:v35];
    topLevelAccounts = [selfCopy[18] topLevelAccounts];
    if ([selfCopy[18] reloading])
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
      v22 = topLevelAccounts;
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
          v17 = [selfCopy _newSpecifierForAccount:v32];
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

      if (selfCopy[20])
      {
        v15 = [NSBundle bundleForClass:objc_opt_class()];
        v14 = [(NSBundle *)v15 localizedStringForKey:@"ADD_ACCOUNT_TITLE" value:&stru_1C810 table:@"Localizable"];
        v30 = [PSSpecifier preferenceSpecifierNamed:v14 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

        [v30 setTarget:selfCopy];
        [v30 setProperty:selfCopy[20] forKey:ACUIAddAccountDataSourceKey];
        [v36[0] addObject:v30];
        objc_storeStrong(&v30, 0);
      }

      v29 = [PSSpecifier groupSpecifierWithID:@"fetch-frequency"];
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [(NSBundle *)v8 localizedStringForKey:@"FETCH" value:&stru_1C810 table:@"Localizable"];
      v28 = [PSSpecifier preferenceSpecifierNamed:v7 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

      v38 = ACUIRemoteSettingsControllerKey;
      settingsController = [selfCopy settingsController];
      v39 = settingsController;
      v9 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      [v28 setUserInfo:?];

      [v36[0] addObject:v29];
      [v36[0] addObject:v28];
      v11 = v36[0];
      specifierController = [selfCopy specifierController];
      specifiers = [specifierController specifiers];
      [v11 addObjectsFromArray:?];

      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v29, 0);
    }

    v2 = [v36[0] copy];
    v3 = (selfCopy + OBJC_IVAR___PSListController__specifiers);
    v4 = *v3;
    *v3 = v2;

    objc_storeStrong(&topLevelAccounts, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(v36, 0);
  }

  v5 = *(selfCopy + OBJC_IVAR___PSListController__specifiers);

  return v5;
}

- (id)_newSpecifierForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v10 = selfCopy;
  accountType = [location[0] accountType];
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
  v19[2] = selfCopy->_syncController;
  v4 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  [v14[0] setUserInfo:?];

  v7 = v14[0];
  objc_storeStrong(v14, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (BOOL)_accountTypeIsApple:(id)apple
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, apple);
  identifier = [location[0] identifier];
  v6 = 0;
  v5 = 1;
  if (([identifier isEqualToString:ACAccountTypeIdentifierAppleAccount] & 1) == 0)
  {
    identifier2 = [location[0] identifier];
    v6 = 1;
    v5 = [identifier2 isEqualToString:ACAccountTypeIdentifierAppleIDAuthentication];
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
  selfCopy = self;
  location[1] = a2;
  objc_initWeak(location, self);
  syncController = [(ACUIRemoteAccountListViewController *)selfCopy syncController];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_74AC;
  v7 = &unk_1C438;
  objc_copyWeak(v8, location);
  [(ACUIRemoteAccountSyncController *)syncController fetchRemoteAccounts:&v3];

  objc_destroyWeak(v8);
  objc_destroyWeak(location);
}

- (void)_displayAlertWithTitle:(id)title message:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v10 = 0;
  objc_storeStrong(&v10, message);
  v9 = [UIAlertController alertControllerWithTitle:location[0] message:v10 preferredStyle:1];
  v5 = v9;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [(NSBundle *)v8 localizedStringForKey:@"OK" value:&stru_1C810 table:@"Localizable"];
  v6 = [UIAlertAction actionWithTitle:"actionWithTitle:style:handler:" style:? handler:?];
  [(UIAlertController *)v5 addAction:?];

  [(ACUIRemoteAccountListViewController *)selfCopy presentViewController:v9 animated:1 completion:0];
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
    firstObject = [v6 firstObject];
    device = self->_device;
    self->_device = firstObject;
  }

  v4 = self->_device;

  return v4;
}

- (void)syncControllerStateChanged:(id)changed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  v3 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_7B18;
  v9 = &unk_1C410;
  v10 = selfCopy;
  dispatch_async(queue, &v5);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)syncControllerAccountsChanged:(id)changed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  v3 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_7C58;
  v9 = &unk_1C410;
  v10 = selfCopy;
  dispatch_async(queue, &v5);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)syncControllerAccountsInvalidated:(id)invalidated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, invalidated);
  [(ACUIRemoteAccountListViewController *)selfCopy _refreshAccounts];
  objc_storeStrong(location, 0);
}

@end