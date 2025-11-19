@interface BuddyCloudConfigLoginViewController
- (BOOL)textFieldShouldReturn:(id)a3;
- (BuddyCloudConfigController)configController;
- (BuddyCloudConfigLoginViewController)init;
- (UITableViewCell)passwordCell;
- (UITableViewCell)usernameCell;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_sanitizedUsername:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_retryLogin;
- (void)_setupForCloudConfigurationState;
- (void)_textChanged:(id)a3;
- (void)clearInput;
- (void)setLastError:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BuddyCloudConfigLoginViewController

- (BuddyCloudConfigLoginViewController)init
{
  location = self;
  v20[1] = a2;
  v2 = +[MDMCloudConfiguration sharedConfiguration];
  v3 = [v2 details];
  v20[0] = [v3 objectForKeyedSubscript:kMCCCOrganizationNameKey];

  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"CLOUD_CONFIG_LOGIN_PROMPT_%@" value:&stru_10032F900 table:@"Localizable"];
  v19 = [NSString localizedStringWithFormat:v5, v20[0]];

  v6 = location;
  v7 = +[NSBundle mainBundle];
  v8 = [(NSBundle *)v7 localizedStringForKey:@"REMOTE_MANAGEMENT_TITLE" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v18.receiver = v6;
  v18.super_class = BuddyCloudConfigLoginViewController;
  v9 = [(BuddyCloudConfigLoginViewController *)&v18 initWithTitle:v8 detailText:v19 symbolName:@"gear" adoptTableViewScrollView:1];
  location = v9;
  objc_storeStrong(&location, v9);

  if (v9)
  {
    v10 = [UIBarButtonItem alloc];
    v11 = +[NSBundle mainBundle];
    v12 = [(NSBundle *)v11 localizedStringForKey:@"NEXT" value:&stru_10032F900 table:@"Localizable"];
    v13 = [v10 initWithTitle:v12 style:2 target:location action:"_retryLogin"];
    v14 = *(location + 6);
    *(location + 6) = v13;

    [*(location + 6) setEnabled:0];
    v15 = [location navigationItem];
    [v15 setRightBarButtonItem:*(location + 6)];
  }

  v16 = location;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v20, 0);
  objc_storeStrong(&location, 0);
  return v16;
}

- (void)viewDidLoad
{
  v10 = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = BuddyCloudConfigLoginViewController;
  [(BuddyCloudConfigLoginViewController *)&v8 viewDidLoad];
  v2 = +[BuddyAppleIDSignInController newAppleAccountTableView];
  [(BuddyCloudConfigLoginViewController *)v10 setTableView:v2];

  v3 = v10;
  v4 = [(BuddyCloudConfigLoginViewController *)v10 tableView];
  [v4 setDelegate:v3];

  v5 = v10;
  v6 = [(BuddyCloudConfigLoginViewController *)v10 tableView];
  [v6 setDataSource:v5];

  v7 = [(BuddyCloudConfigLoginViewController *)v10 tableView];
  [v7 setScrollEnabled:1];

  [(BuddyCloudConfigLoginViewController *)v10 setShouldAdjustScrollViewInsetForKeyboard:1];
}

- (void)clearInput
{
  v2 = [(UITableViewCell *)self->_usernameCell editableTextField];
  [v2 setText:0];

  v3 = [(UITableViewCell *)self->_passwordCell editableTextField];
  [v3 setText:0];

  [(BuddyCloudConfigLoginViewController *)self _textChanged:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = BuddyCloudConfigLoginViewController;
  [(BuddyCloudConfigLoginViewController *)&v3 viewWillAppear:a3];
  [(BuddyCloudConfigLoginViewController *)v6 _setupForCloudConfigurationState];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyCloudConfigLoginViewController;
  [(BuddyCloudConfigLoginViewController *)&v4 viewWillDisappear:a3];
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:v7];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyCloudConfigLoginViewController;
  [(BuddyCloudConfigLoginViewController *)&v4 viewDidAppear:a3];
  v3 = [(BuddyCloudConfigLoginViewController *)v7 configController];
  [(BuddyCloudConfigController *)v3 removeControllersToRemove];
}

- (void)setLastError:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_lastError, location[0]);
  [(BuddyCloudConfigLoginViewController *)v4 _setupForCloudConfigurationState];
  objc_storeStrong(location, 0);
}

- (void)_setupForCloudConfigurationState
{
  v23 = self;
  v22[1] = a2;
  v2 = [(BuddyCloudConfigLoginViewController *)self configController];
  v3 = [(BuddyCloudConfigController *)v2 cloudConfigState];

  if (v3 >= 6)
  {
    if (v3 == 6)
    {
      [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Login"];
      v4 = [(BuddyCloudConfigLoginViewController *)v23 lastError];
      v5 = [(NSError *)v4 userInfo];
      v22[0] = [(NSDictionary *)v5 objectForKeyedSubscript:kMCErrorLoginPromptKey];

      if ([v22[0] length])
      {
        v6 = [(BuddyCloudConfigLoginViewController *)v23 headerView];
        [v6 setDetailText:v22[0]];
      }

      else
      {
        v7 = [(BuddyCloudConfigLoginViewController *)v23 managedConfiguration];
        v8 = [(MCProfileConnection *)v7 cloudConfigurationDetails];
        location = [v8 objectForKeyedSubscript:kMCCCOrganizationNameKey];

        v9 = [(BuddyCloudConfigLoginViewController *)v23 headerView];
        v10 = +[NSBundle mainBundle];
        v11 = [(NSBundle *)v10 localizedStringForKey:@"CLOUD_CONFIG_LOGIN_PROMPT_%@" value:&stru_10032F900 table:@"Localizable"];
        v12 = [NSString localizedStringWithFormat:v11, location];
        [v9 setDetailText:v12];

        objc_storeStrong(&location, 0);
      }

      v13 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v13 removeObserver:v23 name:UITextFieldTextDidChangeNotification object:0];

      v14 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v14 addObserver:v23 selector:"_textChanged:" name:UITextFieldTextDidChangeNotification object:0];

      v15 = [(BuddyCloudConfigLoginViewController *)v23 usernameCell];
      v16 = [(UITableViewCell *)v15 editableTextField];
      v17 = [v16 text];
      v18 = [v17 length];

      if (v18)
      {
        v19 = [(BuddyCloudConfigLoginViewController *)v23 passwordCell];
      }

      else
      {
        v19 = [(BuddyCloudConfigLoginViewController *)v23 usernameCell];
      }

      v20 = [(UITableViewCell *)v19 editableTextField];
      [v20 becomeFirstResponder];

      objc_storeStrong(v22, 0);
    }

    else if (v3 == 7)
    {
      [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v23 identifier:@"Login"];
    }
  }
}

- (void)_textChanged:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyCloudConfigLoginViewController *)v14 passwordCell];
  v4 = [(UITableViewCell *)v3 editableTextField];
  v5 = [v4 text];
  v11 = 0;
  v9 = 0;
  v7 = 0;
  v6 = 0;
  if ([v5 length])
  {
    v12 = [(BuddyCloudConfigLoginViewController *)v14 usernameCell];
    v11 = 1;
    v10 = [(UITableViewCell *)v12 editableTextField];
    v9 = 1;
    v8 = [v10 text];
    v7 = 1;
    v6 = [v8 length] != 0;
  }

  if (v7)
  {
  }

  if (v9)
  {
  }

  if (v11)
  {
  }

  if (v6)
  {
    [(UIBarButtonItem *)v14->_nextButton setEnabled:1];
  }

  else
  {
    [(UIBarButtonItem *)v14->_nextButton setEnabled:0];
  }

  objc_storeStrong(location, 0);
}

- (id)_sanitizedUsername:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  if (location[0])
  {
    v3 = [location[0] stringByApplyingTransform:NSStringTransformToLatin reverse:0];
    v4 = v10;
    v10 = v3;

    if ([v10 length] > 0xFF)
    {
      v5 = [v10 substringToIndex:255];
      v6 = v10;
      v10 = v5;
    }
  }

  v7 = v10;
  if (!v10)
  {
    v7 = &stru_10032F900;
  }

  v8 = v7;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (void)_retryLogin
{
  v14 = self;
  v13 = a2;
  v2 = [(BuddyCloudConfigLoginViewController *)self configController];
  [(BuddyCloudConfigController *)v2 setCloudConfigState:7];

  [(BuddyCloudConfigLoginViewController *)v14 _setupForCloudConfigurationState];
  v3 = [(BuddyCloudConfigLoginViewController *)v14 view];
  [v3 setUserInteractionEnabled:0];

  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v14 identifier:@"Login"];
  v12 = 2.0;
  v11 = dispatch_time(0, (2.0 * 1000000000.0));
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100224230;
  v9 = &unk_10032B0D0;
  v10 = v14;
  dispatch_after(v11, v4, &block);

  objc_storeStrong(&v10, 0);
}

- (UITableViewCell)usernameCell
{
  if (!self->_usernameCell)
  {
    v2 = +[NSBundle mainBundle];
    v3 = [(NSBundle *)v2 localizedStringForKey:@"CLOUD_CONFIG_GENERIC_USERNAME" value:&stru_10032F900 table:@"Localizable"];
    v4 = [BuddyAppleIDSignInController newAppleAccountUsernameCellWithPlaceholder:v3 delegate:self];
    usernameCell = self->_usernameCell;
    self->_usernameCell = v4;
  }

  v6 = self->_usernameCell;

  return v6;
}

- (UITableViewCell)passwordCell
{
  if (!self->_passwordCell)
  {
    v2 = +[NSBundle mainBundle];
    v3 = [(NSBundle *)v2 localizedStringForKey:@"CLOUD_CONFIG_PASSWORD" value:&stru_10032F900 table:@"Localizable"];
    v4 = [BuddyAppleIDSignInController newAppleAccountPasswordCellWithPlaceholder:v3 delegate:self];
    passwordCell = self->_passwordCell;
    self->_passwordCell = v4;
  }

  v6 = self->_passwordCell;

  return v6;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return UITableViewAutomaticDimension;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 1;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 2;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = [v14 row];
  v12 = 0;
  if (v13)
  {
    if (v13 == 1)
    {
      v7 = [(BuddyCloudConfigLoginViewController *)v16 passwordCell];
      v8 = v12;
      v12 = v7;
    }
  }

  else
  {
    v5 = [(BuddyCloudConfigLoginViewController *)v16 usernameCell];
    v6 = v12;
    v12 = v5;
  }

  v9 = +[UIColor secondarySystemBackgroundColor];
  [v12 setBackgroundColor:v9];

  v10 = v12;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyCloudConfigLoginViewController *)v4 setActiveTextField:location[0]];
  objc_storeStrong(location, 0);
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyCloudConfigLoginViewController *)v4 setActiveTextField:0];
  objc_storeStrong(location, 0);
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  v3 = location[0];
  v4 = [(BuddyCloudConfigLoginViewController *)v15 usernameCell];
  v5 = [(UITableViewCell *)v4 editableTextField];

  if (v3 == v5)
  {
    v6 = [(UITableViewCell *)v15->_passwordCell editableTextField];
    [v6 becomeFirstResponder];
  }

  else
  {
    v7 = location[0];
    v8 = [(BuddyCloudConfigLoginViewController *)v15 passwordCell];
    v9 = [(UITableViewCell *)v8 editableTextField];

    if (v7 == v9)
    {
      v10 = [location[0] text];
      v11 = [v10 length];

      if (v11)
      {
        v13 = 1;
        [(BuddyCloudConfigLoginViewController *)v15 _retryLogin];
      }
    }
  }

  objc_storeStrong(location, 0);
  return v13 & 1;
}

- (BuddyCloudConfigController)configController
{
  WeakRetained = objc_loadWeakRetained(&self->_configController);

  return WeakRetained;
}

@end