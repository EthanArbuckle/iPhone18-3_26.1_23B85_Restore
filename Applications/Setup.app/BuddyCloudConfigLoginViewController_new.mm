@interface BuddyCloudConfigLoginViewController_new
- (BOOL)presentErrorIfDesired:(id)desired;
- (BOOL)textFieldShouldReturn:(id)return;
- (BuddyCloudConfigLoginViewControllerDelegate)loginVCDelegate;
- (BuddyCloudConfigLoginViewController_new)init;
- (MDMCloudConfiguration)cloudConfiguration;
- (UITableViewCell)passwordCell;
- (UITableViewCell)usernameCell;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_sanitizedUsername:(id)username;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_retryLogin;
- (void)_setupUI;
- (void)_textChanged:(id)changed;
- (void)loadView;
- (void)setCloudConfiguration:(id)configuration;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BuddyCloudConfigLoginViewController_new

- (BuddyCloudConfigLoginViewController_new)init
{
  location = self;
  v20[1] = a2;
  v2 = +[MDMCloudConfiguration sharedConfiguration];
  details = [v2 details];
  v20[0] = [details objectForKeyedSubscript:kMCCCOrganizationNameKey];

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
    navigationItem = [location navigationItem];
    [navigationItem setRightBarButtonItem:*(location + 5)];
  }

  v16 = location;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v20, 0);
  objc_storeStrong(&location, 0);
  return v16;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = BuddyCloudConfigLoginViewController_new;
  [(BuddyCloudConfigLoginViewController_new *)&v3 viewWillAppear:appear];
  [(BuddyCloudConfigLoginViewController_new *)selfCopy _setupUI];
}

- (void)loadView
{
  selfCopy = self;
  v10 = a2;
  v9.receiver = self;
  v9.super_class = BuddyCloudConfigLoginViewController_new;
  [(BuddyCloudConfigLoginViewController_new *)&v9 loadView];
  v2 = +[BuddyAppleIDSignInController newAppleAccountTableView];
  [(BuddyCloudConfigLoginViewController_new *)selfCopy setTableView:v2];

  v3 = selfCopy;
  tableView = [(BuddyCloudConfigLoginViewController_new *)selfCopy tableView];
  [tableView setDelegate:v3];

  v5 = selfCopy;
  tableView2 = [(BuddyCloudConfigLoginViewController_new *)selfCopy tableView];
  [tableView2 setDataSource:v5];

  [(BuddyCloudConfigLoginViewController_new *)selfCopy setShouldAdjustScrollViewInsetForKeyboard:1];
  v7 = objc_opt_new();
  LOBYTE(tableView2) = [v7 isSolariumEnabled] ^ 1;

  if (tableView2)
  {
    tableView3 = [(BuddyCloudConfigLoginViewController_new *)selfCopy tableView];
    [tableView3 setContentInsetAdjustmentBehavior:2];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v6 = a2;
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = BuddyCloudConfigLoginViewController_new;
  [(BuddyCloudConfigLoginViewController_new *)&v4 viewWillDisappear:disappear];
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:selfCopy];
}

- (void)_setupUI
{
  selfCopy = self;
  v19[1] = a2;
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Login"];
  loginVCDelegate = [(BuddyCloudConfigLoginViewController_new *)selfCopy loginVCDelegate];
  v19[0] = [(BuddyCloudConfigLoginViewControllerDelegate *)loginVCDelegate loginViewControllerLastErrorMessage];

  if ([v19[0] length])
  {
    headerView = [(BuddyCloudConfigLoginViewController_new *)selfCopy headerView];
    [headerView setDetailText:v19[0]];
  }

  else
  {
    v4 = +[MDMCloudConfiguration sharedConfiguration];
    details = [v4 details];
    location = [details objectForKeyedSubscript:kMCCCOrganizationNameKey];

    headerView2 = [(BuddyCloudConfigLoginViewController_new *)selfCopy headerView];
    v7 = +[NSBundle mainBundle];
    v8 = [(NSBundle *)v7 localizedStringForKey:@"CLOUD_CONFIG_LOGIN_PROMPT_%@" value:&stru_10032F900 table:@"Localizable"];
    location = [NSString localizedStringWithFormat:v8, location];
    [headerView2 setDetailText:location];

    objc_storeStrong(&location, 0);
  }

  v10 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v10 removeObserver:selfCopy name:UITextFieldTextDidChangeNotification object:0];

  v11 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v11 addObserver:selfCopy selector:"_textChanged:" name:UITextFieldTextDidChangeNotification object:0];

  usernameCell = [(BuddyCloudConfigLoginViewController_new *)selfCopy usernameCell];
  editableTextField = [(UITableViewCell *)usernameCell editableTextField];
  text = [editableTextField text];
  v15 = [text length];

  if (v15)
  {
    passwordCell = [(BuddyCloudConfigLoginViewController_new *)selfCopy passwordCell];
  }

  else
  {
    passwordCell = [(BuddyCloudConfigLoginViewController_new *)selfCopy usernameCell];
  }

  editableTextField2 = [(UITableViewCell *)passwordCell editableTextField];
  [editableTextField2 becomeFirstResponder];

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

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, path);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return UITableViewAutomaticDimension;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 2;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v14 = 0;
  objc_storeStrong(&v14, path);
  v13 = [v14 row];
  v12 = 0;
  if (v13)
  {
    if (v13 == 1)
    {
      passwordCell = [(BuddyCloudConfigLoginViewController_new *)selfCopy passwordCell];
      v8 = v12;
      v12 = passwordCell;
    }
  }

  else
  {
    usernameCell = [(BuddyCloudConfigLoginViewController_new *)selfCopy usernameCell];
    v6 = v12;
    v12 = usernameCell;
  }

  v9 = +[UIColor secondarySystemBackgroundColor];
  [v12 setBackgroundColor:v9];

  v10 = v12;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, editing);
  [(BuddyCloudConfigLoginViewController_new *)selfCopy setActiveTextField:location[0]];
  objc_storeStrong(location, 0);
}

- (void)textFieldDidEndEditing:(id)editing
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, editing);
  [(BuddyCloudConfigLoginViewController_new *)selfCopy setActiveTextField:0];
  objc_storeStrong(location, 0);
}

- (BOOL)textFieldShouldReturn:(id)return
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, return);
  v13 = 0;
  v3 = location[0];
  usernameCell = [(BuddyCloudConfigLoginViewController_new *)selfCopy usernameCell];
  editableTextField = [(UITableViewCell *)usernameCell editableTextField];

  if (v3 == editableTextField)
  {
    editableTextField2 = [(UITableViewCell *)selfCopy->_passwordCell editableTextField];
    [editableTextField2 becomeFirstResponder];
  }

  else
  {
    v7 = location[0];
    passwordCell = [(BuddyCloudConfigLoginViewController_new *)selfCopy passwordCell];
    editableTextField3 = [(UITableViewCell *)passwordCell editableTextField];

    if (v7 == editableTextField3)
    {
      text = [location[0] text];
      v11 = [text length];

      if (v11)
      {
        v13 = 1;
        [(BuddyCloudConfigLoginViewController_new *)selfCopy _retryLogin];
      }
    }
  }

  objc_storeStrong(location, 0);
  return v13 & 1;
}

- (void)_textChanged:(id)changed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  passwordCell = [(BuddyCloudConfigLoginViewController_new *)selfCopy passwordCell];
  editableTextField = [(UITableViewCell *)passwordCell editableTextField];
  text = [editableTextField text];
  v11 = 0;
  v9 = 0;
  v7 = 0;
  v6 = 0;
  if ([text length])
  {
    usernameCell = [(BuddyCloudConfigLoginViewController_new *)selfCopy usernameCell];
    v11 = 1;
    editableTextField2 = [(UITableViewCell *)usernameCell editableTextField];
    v9 = 1;
    text2 = [editableTextField2 text];
    v7 = 1;
    v6 = [text2 length] != 0;
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
    [(UIBarButtonItem *)selfCopy->_nextButton setEnabled:1];
  }

  else
  {
    [(UIBarButtonItem *)selfCopy->_nextButton setEnabled:0];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)presentErrorIfDesired:(id)desired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, desired);
  localizedDescription = [location[0] localizedDescription];
  v11 = [UIAlertController alertControllerWithTitle:0 message:localizedDescription preferredStyle:1];

  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
  v6 = [UIAlertAction actionWithTitle:v5 style:0 handler:&stru_10032DCD8];
  [v11 addAction:v6];

  [(BuddyCloudConfigLoginViewController_new *)selfCopy presentViewController:v11 animated:1 completion:0];
  loginVCDelegate = [(BuddyCloudConfigLoginViewController_new *)selfCopy loginVCDelegate];
  loginViewControllerLastErrorMessage = [(BuddyCloudConfigLoginViewControllerDelegate *)loginVCDelegate loginViewControllerLastErrorMessage];

  if ([loginViewControllerLastErrorMessage length])
  {
    headerView = [(BuddyCloudConfigLoginViewController_new *)selfCopy headerView];
    [headerView setDetailText:loginViewControllerLastErrorMessage];
  }

  objc_storeStrong(&loginViewControllerLastErrorMessage, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (id)_sanitizedUsername:(id)username
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
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
  selfCopy = self;
  location[1] = a2;
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:self identifier:@"Login"];
  usernameCell = [(BuddyCloudConfigLoginViewController_new *)selfCopy usernameCell];
  editableTextField = [(UITableViewCell *)usernameCell editableTextField];
  text = [editableTextField text];
  location[0] = [(BuddyCloudConfigLoginViewController_new *)selfCopy _sanitizedUsername:text];

  passwordCell = [(BuddyCloudConfigLoginViewController_new *)selfCopy passwordCell];
  editableTextField2 = [(UITableViewCell *)passwordCell editableTextField];
  text2 = [editableTextField2 text];

  loginVCDelegate = [(BuddyCloudConfigLoginViewController_new *)selfCopy loginVCDelegate];
  [(BuddyCloudConfigLoginViewControllerDelegate *)loginVCDelegate loginViewController:selfCopy didreceiveUsername:location[0] password:text2];

  objc_storeStrong(&text2, 0);
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

- (void)setCloudConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  objc_storeStrong(&selfCopy->_cloudConfiguration, location[0]);
  objc_storeStrong(location, 0);
}

@end