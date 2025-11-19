@interface BuddyCloudConfigLoginViewController_new
- (BOOL)presentErrorIfDesired:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (BuddyCloudConfigLoginViewControllerDelegate)loginVCDelegate;
- (BuddyCloudConfigLoginViewController_new)init;
- (MDMCloudConfiguration)cloudConfiguration;
- (UITableViewCell)passwordCell;
- (UITableViewCell)usernameCell;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_sanitizedUsername:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_retryLogin;
- (void)_setupUI;
- (void)_textChanged:(id)a3;
- (void)loadView;
- (void)setCloudConfiguration:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BuddyCloudConfigLoginViewController_new

- (BuddyCloudConfigLoginViewController_new)init
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
  v18.super_class = BuddyCloudConfigLoginViewController_new;
  v9 = [(BuddyCloudConfigLoginViewController_new *)&v18 initWithTitle:v8 detailText:v19 symbolName:@"gear" adoptTableViewScrollView:1];
  location = v9;
  objc_storeStrong(&location, v9);

  if (v9)
  {
    v10 = [UIBarButtonItem alloc];
    v11 = +[NSBundle mainBundle];
    v12 = [(NSBundle *)v11 localizedStringForKey:@"NEXT" value:&stru_10032F900 table:@"Localizable"];
    v13 = [v10 initWithTitle:v12 style:2 target:location action:"_retryLogin"];
    v14 = *(location + 5);
    *(location + 5) = v13;

    [*(location + 5) setEnabled:0];
    v15 = [location navigationItem];
    [v15 setRightBarButtonItem:*(location + 5)];
  }

  v16 = location;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v20, 0);
  objc_storeStrong(&location, 0);
  return v16;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = BuddyCloudConfigLoginViewController_new;
  [(BuddyCloudConfigLoginViewController_new *)&v3 viewWillAppear:a3];
  [(BuddyCloudConfigLoginViewController_new *)v6 _setupUI];
}

- (void)loadView
{
  v11 = self;
  v10 = a2;
  v9.receiver = self;
  v9.super_class = BuddyCloudConfigLoginViewController_new;
  [(BuddyCloudConfigLoginViewController_new *)&v9 loadView];
  v2 = +[BuddyAppleIDSignInController newAppleAccountTableView];
  [(BuddyCloudConfigLoginViewController_new *)v11 setTableView:v2];

  v3 = v11;
  v4 = [(BuddyCloudConfigLoginViewController_new *)v11 tableView];
  [v4 setDelegate:v3];

  v5 = v11;
  v6 = [(BuddyCloudConfigLoginViewController_new *)v11 tableView];
  [v6 setDataSource:v5];

  [(BuddyCloudConfigLoginViewController_new *)v11 setShouldAdjustScrollViewInsetForKeyboard:1];
  v7 = objc_opt_new();
  LOBYTE(v6) = [v7 isSolariumEnabled] ^ 1;

  if (v6)
  {
    v8 = [(BuddyCloudConfigLoginViewController_new *)v11 tableView];
    [v8 setContentInsetAdjustmentBehavior:2];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyCloudConfigLoginViewController_new;
  [(BuddyCloudConfigLoginViewController_new *)&v4 viewWillDisappear:a3];
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:v7];
}

- (void)_setupUI
{
  v20 = self;
  v19[1] = a2;
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Login"];
  v2 = [(BuddyCloudConfigLoginViewController_new *)v20 loginVCDelegate];
  v19[0] = [(BuddyCloudConfigLoginViewControllerDelegate *)v2 loginViewControllerLastErrorMessage];

  if ([v19[0] length])
  {
    v3 = [(BuddyCloudConfigLoginViewController_new *)v20 headerView];
    [v3 setDetailText:v19[0]];
  }

  else
  {
    v4 = +[MDMCloudConfiguration sharedConfiguration];
    v5 = [v4 details];
    location = [v5 objectForKeyedSubscript:kMCCCOrganizationNameKey];

    v6 = [(BuddyCloudConfigLoginViewController_new *)v20 headerView];
    v7 = +[NSBundle mainBundle];
    v8 = [(NSBundle *)v7 localizedStringForKey:@"CLOUD_CONFIG_LOGIN_PROMPT_%@" value:&stru_10032F900 table:@"Localizable"];
    v9 = [NSString localizedStringWithFormat:v8, location];
    [v6 setDetailText:v9];

    objc_storeStrong(&location, 0);
  }

  v10 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v10 removeObserver:v20 name:UITextFieldTextDidChangeNotification object:0];

  v11 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v11 addObserver:v20 selector:"_textChanged:" name:UITextFieldTextDidChangeNotification object:0];

  v12 = [(BuddyCloudConfigLoginViewController_new *)v20 usernameCell];
  v13 = [(UITableViewCell *)v12 editableTextField];
  v14 = [v13 text];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [(BuddyCloudConfigLoginViewController_new *)v20 passwordCell];
  }

  else
  {
    v16 = [(BuddyCloudConfigLoginViewController_new *)v20 usernameCell];
  }

  v17 = [(UITableViewCell *)v16 editableTextField];
  [v17 becomeFirstResponder];

  objc_storeStrong(v19, 0);
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
      v7 = [(BuddyCloudConfigLoginViewController_new *)v16 passwordCell];
      v8 = v12;
      v12 = v7;
    }
  }

  else
  {
    v5 = [(BuddyCloudConfigLoginViewController_new *)v16 usernameCell];
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
  [(BuddyCloudConfigLoginViewController_new *)v4 setActiveTextField:location[0]];
  objc_storeStrong(location, 0);
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyCloudConfigLoginViewController_new *)v4 setActiveTextField:0];
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
  v4 = [(BuddyCloudConfigLoginViewController_new *)v15 usernameCell];
  v5 = [(UITableViewCell *)v4 editableTextField];

  if (v3 == v5)
  {
    v6 = [(UITableViewCell *)v15->_passwordCell editableTextField];
    [v6 becomeFirstResponder];
  }

  else
  {
    v7 = location[0];
    v8 = [(BuddyCloudConfigLoginViewController_new *)v15 passwordCell];
    v9 = [(UITableViewCell *)v8 editableTextField];

    if (v7 == v9)
    {
      v10 = [location[0] text];
      v11 = [v10 length];

      if (v11)
      {
        v13 = 1;
        [(BuddyCloudConfigLoginViewController_new *)v15 _retryLogin];
      }
    }
  }

  objc_storeStrong(location, 0);
  return v13 & 1;
}

- (void)_textChanged:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyCloudConfigLoginViewController_new *)v14 passwordCell];
  v4 = [(UITableViewCell *)v3 editableTextField];
  v5 = [v4 text];
  v11 = 0;
  v9 = 0;
  v7 = 0;
  v6 = 0;
  if ([v5 length])
  {
    v12 = [(BuddyCloudConfigLoginViewController_new *)v14 usernameCell];
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

- (BOOL)presentErrorIfDesired:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] localizedDescription];
  v11 = [UIAlertController alertControllerWithTitle:0 message:v3 preferredStyle:1];

  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
  v6 = [UIAlertAction actionWithTitle:v5 style:0 handler:&stru_10032DCD8];
  [v11 addAction:v6];

  [(BuddyCloudConfigLoginViewController_new *)v13 presentViewController:v11 animated:1 completion:0];
  v7 = [(BuddyCloudConfigLoginViewController_new *)v13 loginVCDelegate];
  v10 = [(BuddyCloudConfigLoginViewControllerDelegate *)v7 loginViewControllerLastErrorMessage];

  if ([v10 length])
  {
    v8 = [(BuddyCloudConfigLoginViewController_new *)v13 headerView];
    [v8 setDetailText:v10];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return 1;
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
  v10 = self;
  location[1] = a2;
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:self identifier:@"Login"];
  v2 = [(BuddyCloudConfigLoginViewController_new *)v10 usernameCell];
  v3 = [(UITableViewCell *)v2 editableTextField];
  v4 = [v3 text];
  location[0] = [(BuddyCloudConfigLoginViewController_new *)v10 _sanitizedUsername:v4];

  v5 = [(BuddyCloudConfigLoginViewController_new *)v10 passwordCell];
  v6 = [(UITableViewCell *)v5 editableTextField];
  v8 = [v6 text];

  v7 = [(BuddyCloudConfigLoginViewController_new *)v10 loginVCDelegate];
  [(BuddyCloudConfigLoginViewControllerDelegate *)v7 loginViewController:v10 didreceiveUsername:location[0] password:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (BuddyCloudConfigLoginViewControllerDelegate)loginVCDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_loginVCDelegate);

  return WeakRetained;
}

- (MDMCloudConfiguration)cloudConfiguration
{
  if (self->_cloudConfiguration)
  {
    v3 = self->_cloudConfiguration;
  }

  else
  {
    v3 = +[MDMCloudConfiguration sharedConfiguration];
  }

  return v3;
}

- (void)setCloudConfiguration:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_cloudConfiguration, location[0]);
  objc_storeStrong(location, 0);
}

@end