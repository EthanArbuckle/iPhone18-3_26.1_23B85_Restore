@interface MFNanoAccountsSettingsViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)accountsSettingsDataSource:(id)source didReceivedAuthenticationFailureForAccount:(id)account;
- (void)accountsSettingsDataSourceDidUpdate:(id)update;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateAccounts;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MFNanoAccountsSettingsViewController

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = MFNanoAccountsSettingsViewController;
  [(MFNanoAccountsSettingsViewController *)&v30 viewDidLoad];
  specifier = [(MFNanoAccountsSettingsViewController *)self specifier];
  userInfo = [specifier userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"MFNanoSettingsAccountDataSourceKey"];

  if (v5)
  {
    specifier2 = [(MFNanoAccountsSettingsViewController *)self specifier];
    userInfo2 = [specifier2 userInfo];
    v8 = [userInfo2 objectForKeyedSubscript:@"MFNanoSettingsAccountDataSourceKey"];
    datasource = self->_datasource;
    self->_datasource = v8;
  }

  else
  {
    v10 = objc_alloc_init(MFNanoAccountsSettingsDataSource);
    specifier2 = self->_datasource;
    self->_datasource = v10;
  }

  [(MFNanoAccountsSettingsDataSource *)self->_datasource addObserver:self];
  specifier3 = [(MFNanoAccountsSettingsViewController *)self specifier];
  userInfo3 = [specifier3 userInfo];
  v13 = [userInfo3 objectForKeyedSubscript:@"MFNanoSettingsCloudNotificationDataSourceKey"];

  if (v13)
  {
    specifier4 = [(MFNanoAccountsSettingsViewController *)self specifier];
    userInfo4 = [specifier4 userInfo];
    v16 = [(MFNanoCloudNotificationAccountDataSource *)userInfo4 objectForKeyedSubscript:@"MFNanoSettingsCloudNotificationDataSourceKey"];
  }

  else
  {
    v17 = [NMCUICloudNotificationAccountDataSource alloc];
    v18 = [MFNanoCloudNotificationAccountDataSource alloc];
    specifier4 = [(MFNanoAccountsSettingsViewController *)self datasource];
    userInfo4 = [(MFNanoCloudNotificationAccountDataSource *)v18 initWithAccountDataSource:specifier4];
    v16 = [v17 initWithAccountDataSource:userInfo4];
  }

  cloudNotificationDatasource = self->_cloudNotificationDatasource;
  self->_cloudNotificationDatasource = v16;

  v20 = [UITableView alloc];
  view = [(MFNanoAccountsSettingsViewController *)self view];
  [view bounds];
  v22 = [v20 initWithFrame:2 style:?];
  tableView = self->_tableView;
  self->_tableView = v22;

  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  view2 = [(MFNanoAccountsSettingsViewController *)self view];
  [view2 addSubview:self->_tableView];

  tableView = [(MFNanoAccountsSettingsViewController *)self tableView];
  v26 = objc_opt_class();
  v27 = +[NMCUIAccountsSettingsViewCell reuseIdentifier];
  [tableView registerClass:v26 forCellReuseIdentifier:v27];

  [(MFNanoAccountsSettingsDataSource *)self->_datasource refreshAccounts];
  v28 = [NSBundle bundleForClass:objc_opt_class()];
  v29 = [v28 localizedStringForKey:@"ACCOUNTS_SCREEN_TITLE" value:&stru_34FF0 table:@"Main"];
  [(MFNanoAccountsSettingsViewController *)self setTitle:v29];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MFNanoAccountsSettingsViewController;
  [(MFNanoAccountsSettingsViewController *)&v4 viewWillAppear:appear];
  [(MFNanoAccountsSettingsViewController *)self updateAccounts];
  +[MFNanoMailBridgeSettingsNavigationDonation donateUserVisitForAccountsSettings];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MFNanoAccountsSettingsViewController;
  [(MFNanoAccountsSettingsViewController *)&v5 viewDidAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"applicationWillEnterForegroundNotification" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MFNanoAccountsSettingsViewController;
  [(MFNanoAccountsSettingsViewController *)&v5 viewDidDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)updateAccounts
{
  datasource = [(MFNanoAccountsSettingsViewController *)self datasource];
  [datasource refreshAccounts];

  tableView = [(MFNanoAccountsSettingsViewController *)self tableView];
  [tableView reloadData];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(MFNanoAccountsSettingsViewController *)self datasource:view];
  accounts = [v5 accounts];
  v7 = [accounts count];

  if (!v7)
  {
    return 1;
  }

  datasource = [(MFNanoAccountsSettingsViewController *)self datasource];
  accounts2 = [datasource accounts];
  v10 = [accounts2 count];

  return v10;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"WATCH_ACCOUNTS_SECTION_TITLE" value:&stru_34FF0 table:@"Main"];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = +[NMCUIAccountsSettingsViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  datasource = [(MFNanoAccountsSettingsViewController *)self datasource];
  accounts = [datasource accounts];
  v12 = [accounts count];

  if (v12)
  {
    datasource2 = [(MFNanoAccountsSettingsViewController *)self datasource];
    accounts2 = [datasource2 accounts];
    v15 = [accounts2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

    displayName = [v15 displayName];
    textLabel = [v9 textLabel];
    [textLabel setText:displayName];

    defaultEmailAddress = [v15 defaultEmailAddress];
    firstObject = defaultEmailAddress;
    if (!defaultEmailAddress)
    {
      textLabel = [v15 emailAddresses];
      firstObject = [textLabel firstObject];
    }

    detailTextLabel = [v9 detailTextLabel];
    [detailTextLabel setText:firstObject];

    if (!defaultEmailAddress)
    {
    }

    datasource3 = [(MFNanoAccountsSettingsViewController *)self datasource];
    v22 = [datasource3 isAccountActive:v15];

    if ((v22 & 1) != 0 || (-[MFNanoAccountsSettingsViewController datasource](self, "datasource"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 isAccountDisabled:v15], v23, v24))
    {
      [v9 setAccessoryView:0];
      v25 = 0;
    }

    else
    {
      datasource4 = [(MFNanoAccountsSettingsViewController *)self datasource];
      v31 = [datasource4 isAccountRequiringAttention:v15];

      if (v31)
      {
        warningLabel = [v9 warningLabel];
        [v9 setAccessoryView:warningLabel];
        v25 = 3;
      }

      else
      {
        if ([v15 standaloneState] != &dword_0 + 1)
        {
          goto LABEL_10;
        }

        spinner = [v9 spinner];
        [spinner startAnimating];

        warningLabel = [v9 spinner];
        [v9 setAccessoryView:warningLabel];
        v25 = 0;
      }
    }

    [v9 setSelectionStyle:v25];
LABEL_10:

    goto LABEL_12;
  }

  v26 = [NSBundle bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"NO_ACCOUNTS" value:&stru_34FF0 table:@"Main"];
  textLabel2 = [v9 textLabel];
  [textLabel2 setText:v27];

  [v9 setSelectionStyle:0];
LABEL_12:

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  datasource = [(MFNanoAccountsSettingsViewController *)self datasource];
  accounts = [datasource accounts];
  v10 = [accounts count];

  if (v10)
  {
    datasource2 = [(MFNanoAccountsSettingsViewController *)self datasource];
    accounts2 = [datasource2 accounts];
    v13 = [accounts2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

    datasource3 = [(MFNanoAccountsSettingsViewController *)self datasource];
    if ([datasource3 canMakeChanges:v13])
    {
      datasource4 = [(MFNanoAccountsSettingsViewController *)self datasource];
      v16 = [datasource4 isGmailAccount:v13];

      if (v16)
      {
        objc_initWeak(&location, self);
        v17 = [SLGoogleAuthController alloc];
        v18 = +[GmailAccount displayedAccountTypeString];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_7DA0;
        v26[3] = &unk_34A80;
        objc_copyWeak(&v27, &location);
        v19 = [v17 initWithAccountDescription:v18 presentationBlock:v26];

        v20 = _NSConcreteStackBlock;
        v21 = 3221225472;
        v22 = sub_7E1C;
        v23 = &unk_34AD0;
        objc_copyWeak(&v25, &location);
        v24 = v13;
        [v19 setCompletion:&v20];

        objc_destroyWeak(&v25);
        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
      }
    }

    else
    {
    }
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:{1, v20, v21, v22, v23}];
}

- (void)accountsSettingsDataSourceDidUpdate:(id)update
{
  tableView = [(MFNanoAccountsSettingsViewController *)self tableView];
  [tableView reloadData];
}

- (void)accountsSettingsDataSource:(id)source didReceivedAuthenticationFailureForAccount:(id)account
{
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"AUTHENTICATION_FAILURE_ALERT_TITLE" value:&stru_34FF0 table:@"Main"];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"AUTHENTICATION_FAILURE_ALERT_DETAILS" value:&stru_34FF0 table:@"Main"];
  v12 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OK_ALERT_BUTTON" value:&stru_34FF0 table:@"Main"];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];

  [v12 addAction:v11];
  [(MFNanoAccountsSettingsViewController *)self presentViewController:v12 animated:1 completion:0];
}

@end