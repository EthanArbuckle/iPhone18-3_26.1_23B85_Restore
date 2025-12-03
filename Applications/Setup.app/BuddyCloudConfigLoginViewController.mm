@interface BuddyCloudConfigLoginViewController
- (BOOL)textFieldShouldReturn:(id)return;
- (BuddyCloudConfigController)configController;
- (BuddyCloudConfigLoginViewController)init;
- (UITableViewCell)passwordCell;
- (UITableViewCell)usernameCell;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_sanitizedUsername:(id)username;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_retryLogin;
- (void)_setupForCloudConfigurationState;
- (void)_textChanged:(id)changed;
- (void)clearInput;
- (void)setLastError:(id)error;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BuddyCloudConfigLoginViewController

- (BuddyCloudConfigLoginViewController)init
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
    navigationItem = [location navigationItem];
    [navigationItem setRightBarButtonItem:*(location + 6)];
  }

  v16 = location;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v20, 0);
  objc_storeStrong(&location, 0);
  return v16;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = BuddyCloudConfigLoginViewController;
  [(BuddyCloudConfigLoginViewController *)&v8 viewDidLoad];
  v2 = +[BuddyAppleIDSignInController newAppleAccountTableView];
  [(BuddyCloudConfigLoginViewController *)selfCopy setTableView:v2];

  v3 = selfCopy;
  tableView = [(BuddyCloudConfigLoginViewController *)selfCopy tableView];
  [tableView setDelegate:v3];

  v5 = selfCopy;
  tableView2 = [(BuddyCloudConfigLoginViewController *)selfCopy tableView];
  [tableView2 setDataSource:v5];

  tableView3 = [(BuddyCloudConfigLoginViewController *)selfCopy tableView];
  [tableView3 setScrollEnabled:1];

  [(BuddyCloudConfigLoginViewController *)selfCopy setShouldAdjustScrollViewInsetForKeyboard:1];
}

- (void)clearInput
{
  editableTextField = [(UITableViewCell *)self->_usernameCell editableTextField];
  [editableTextField setText:0];

  editableTextField2 = [(UITableViewCell *)self->_passwordCell editableTextField];
  [editableTextField2 setText:0];

  [(BuddyCloudConfigLoginViewController *)self _textChanged:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = BuddyCloudConfigLoginViewController;
  [(BuddyCloudConfigLoginViewController *)&v3 viewWillAppear:appear];
  [(BuddyCloudConfigLoginViewController *)selfCopy _setupForCloudConfigurationState];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v6 = a2;
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = BuddyCloudConfigLoginViewController;
  [(BuddyCloudConfigLoginViewController *)&v4 viewWillDisappear:disappear];
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:selfCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = BuddyCloudConfigLoginViewController;
  [(BuddyCloudConfigLoginViewController *)&v4 viewDidAppear:appear];
  configController = [(BuddyCloudConfigLoginViewController *)selfCopy configController];
  [(BuddyCloudConfigController *)configController removeControllersToRemove];
}

- (void)setLastError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  objc_storeStrong(&selfCopy->_lastError, location[0]);
  [(BuddyCloudConfigLoginViewController *)selfCopy _setupForCloudConfigurationState];
  objc_storeStrong(location, 0);
}

- (void)_setupForCloudConfigurationState
{
  selfCopy = self;
  v22[1] = a2;
  configController = [(BuddyCloudConfigLoginViewController *)self configController];
  cloudConfigState = [(BuddyCloudConfigController *)configController cloudConfigState];

  if (cloudConfigState >= 6)
  {
    if (cloudConfigState == 6)
    {
      [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Login"];
      lastError = [(BuddyCloudConfigLoginViewController *)selfCopy lastError];
      userInfo = [(NSError *)lastError userInfo];
      v22[0] = [(NSDictionary *)userInfo objectForKeyedSubscript:kMCErrorLoginPromptKey];

      if ([v22[0] length])
      {
        headerView = [(BuddyCloudConfigLoginViewController *)selfCopy headerView];
        [headerView setDetailText:v22[0]];
      }

      else
      {
        managedConfiguration = [(BuddyCloudConfigLoginViewController *)selfCopy managedConfiguration];
        cloudConfigurationDetails = [(MCProfileConnection *)managedConfiguration cloudConfigurationDetails];
        location = [cloudConfigurationDetails objectForKeyedSubscript:kMCCCOrganizationNameKey];

        headerView2 = [(BuddyCloudConfigLoginViewController *)selfCopy headerView];
        v10 = +[NSBundle mainBundle];
        v11 = [(NSBundle *)v10 localizedStringForKey:@"CLOUD_CONFIG_LOGIN_PROMPT_%@" value:&stru_10032F900 table:@"Localizable"];
        location = [NSString localizedStringWithFormat:v11, location];
        [headerView2 setDetailText:location];

        objc_storeStrong(&location, 0);
      }

      v13 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v13 removeObserver:selfCopy name:UITextFieldTextDidChangeNotification object:0];

      v14 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v14 addObserver:selfCopy selector:"_textChanged:" name:UITextFieldTextDidChangeNotification object:0];

      usernameCell = [(BuddyCloudConfigLoginViewController *)selfCopy usernameCell];
      editableTextField = [(UITableViewCell *)usernameCell editableTextField];
      text = [editableTextField text];
      v18 = [text length];

      if (v18)
      {
        passwordCell = [(BuddyCloudConfigLoginViewController *)selfCopy passwordCell];
      }

      else
      {
        passwordCell = [(BuddyCloudConfigLoginViewController *)selfCopy usernameCell];
      }

      editableTextField2 = [(UITableViewCell *)passwordCell editableTextField];
      [editableTextField2 becomeFirstResponder];

      objc_storeStrong(v22, 0);
    }

    else if (cloudConfigState == 7)
    {
      [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:selfCopy identifier:@"Login"];
    }
  }
}

- (void)_textChanged:(id)changed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  passwordCell = [(BuddyCloudConfigLoginViewController *)selfCopy passwordCell];
  editableTextField = [(UITableViewCell *)passwordCell editableTextField];
  text = [editableTextField text];
  v11 = 0;
  v9 = 0;
  v7 = 0;
  v6 = 0;
  if ([text length])
  {
    usernameCell = [(BuddyCloudConfigLoginViewController *)selfCopy usernameCell];
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
  v13 = a2;
  configController = [(BuddyCloudConfigLoginViewController *)self configController];
  [(BuddyCloudConfigController *)configController setCloudConfigState:7];

  [(BuddyCloudConfigLoginViewController *)selfCopy _setupForCloudConfigurationState];
  view = [(BuddyCloudConfigLoginViewController *)selfCopy view];
  [view setUserInteractionEnabled:0];

  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:selfCopy identifier:@"Login"];
  v12 = 2.0;
  v11 = dispatch_time(0, (2.0 * 1000000000.0));
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100224230;
  v9 = &unk_10032B0D0;
  v10 = selfCopy;
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
      passwordCell = [(BuddyCloudConfigLoginViewController *)selfCopy passwordCell];
      v8 = v12;
      v12 = passwordCell;
    }
  }

  else
  {
    usernameCell = [(BuddyCloudConfigLoginViewController *)selfCopy usernameCell];
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
  [(BuddyCloudConfigLoginViewController *)selfCopy setActiveTextField:location[0]];
  objc_storeStrong(location, 0);
}

- (void)textFieldDidEndEditing:(id)editing
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, editing);
  [(BuddyCloudConfigLoginViewController *)selfCopy setActiveTextField:0];
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
  usernameCell = [(BuddyCloudConfigLoginViewController *)selfCopy usernameCell];
  editableTextField = [(UITableViewCell *)usernameCell editableTextField];

  if (v3 == editableTextField)
  {
    editableTextField2 = [(UITableViewCell *)selfCopy->_passwordCell editableTextField];
    [editableTextField2 becomeFirstResponder];
  }

  else
  {
    v7 = location[0];
    passwordCell = [(BuddyCloudConfigLoginViewController *)selfCopy passwordCell];
    editableTextField3 = [(UITableViewCell *)passwordCell editableTextField];

    if (v7 == editableTextField3)
    {
      text = [location[0] text];
      v11 = [text length];

      if (v11)
      {
        v13 = 1;
        [(BuddyCloudConfigLoginViewController *)selfCopy _retryLogin];
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