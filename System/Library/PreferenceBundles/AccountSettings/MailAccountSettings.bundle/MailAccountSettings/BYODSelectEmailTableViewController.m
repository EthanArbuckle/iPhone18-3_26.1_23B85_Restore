@interface BYODSelectEmailTableViewController
- (BYODSelectEmailTableViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6 userAccount:(id)a7 emailListResponse:(id)a8 domainName:(id)a9;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_buttonTapped:(id)a3;
- (void)_mailSettingsTapped:(id)a3;
- (void)_obDoneTapped:(id)a3;
- (void)_setDefaultEmailAddress:(id)a3;
- (void)_showDefaultEmailDoneScreen;
- (void)viewDidLoad;
@end

@implementation BYODSelectEmailTableViewController

- (BYODSelectEmailTableViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6 userAccount:(id)a7 emailListResponse:(id)a8 domainName:(id)a9
{
  v11 = a6;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v31 = a7;
  v30 = a8;
  v29 = a9;
  v18 = [v17 iconType];
  if (v18)
  {
    if (v18 != &dword_0 + 1)
    {
      goto LABEL_6;
    }

    v19 = [v17 image];
    v33.receiver = self;
    v33.super_class = BYODSelectEmailTableViewController;
    v20 = [(BYODSelectEmailTableViewController *)&v33 initWithTitle:v15 detailText:v16 icon:v19 adoptTableViewScrollView:v11];
  }

  else
  {
    v19 = [v17 symbolName];
    v32.receiver = self;
    v32.super_class = BYODSelectEmailTableViewController;
    v20 = [(BYODSelectEmailTableViewController *)&v32 initWithTitle:v15 detailText:v16 symbolName:v19 adoptTableViewScrollView:v11];
  }

  self = v20;

LABEL_6:
  if (self)
  {
    v21 = +[OBBoldTrayButton boldButton];
    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"CONTINUE_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v21 setTitle:v23 forState:0];

    [v21 addTarget:self action:"_continueButtonTapped:" forControlEvents:64];
    v24 = [(BYODSelectEmailTableViewController *)self buttonTray];
    [v24 addButton:v21];

    objc_storeStrong(&_loggedInUserAccount, a7);
    objc_storeStrong(&_defaultEmailList, a8);
    v25 = [_defaultEmailList result];
    v26 = [v25 defaultSendFromEmail];
    v27 = _selectedEmailAddress;
    _selectedEmailAddress = v26;

    objc_storeStrong(&_selectedEmailDomainName, a9);
  }

  return self;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = BYODSelectEmailTableViewController;
  [(BYODSelectEmailTableViewController *)&v13 viewDidLoad];
  v3 = [(BYODSelectEmailTableViewController *)self navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BYODSelectEmailTableViewController *)self setTableView:v4];

  v5 = [(BYODSelectEmailTableViewController *)self tableView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(BYODSelectEmailTableViewController *)self tableView];
  [v6 setRowHeight:50.0];

  v7 = +[UIColor clearColor];
  v8 = [(BYODSelectEmailTableViewController *)self tableView];
  [v8 setBackgroundColor:v7];

  v9 = [(BYODSelectEmailTableViewController *)self tableView];
  [v9 registerClass:objc_opt_class() forCellReuseIdentifier:@"BYODTableViewCellWithSelectorView"];

  v10 = [(BYODSelectEmailTableViewController *)self tableView];
  [v10 setDelegate:self];

  v11 = [(BYODSelectEmailTableViewController *)self tableView];
  [v11 setDataSource:self];

  v12 = [(BYODSelectEmailTableViewController *)self tableView];
  [v12 reloadData];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"BYODTableViewCellWithSelectorView"];
  if (!v7)
  {
    v7 = [[BYODTableViewCellWithSelectorView alloc] initWithStyle:0 reuseIdentifier:@"BYODTableViewCellWithSelectorView"];
  }

  v8 = [_defaultEmailList result];
  v9 = [v8 emails];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  v11 = +[UIColor secondarySystemBackgroundColor];
  [(BYODTableViewCellWithSelectorView *)v7 setBackgroundColor:v11];

  v12 = [(BYODTableViewCellWithSelectorView *)v7 titleLabel];
  [v12 setText:v10];

  v13 = +[UIColor labelColor];
  v14 = [(BYODTableViewCellWithSelectorView *)v7 titleLabel];
  [v14 setTextColor:v13];

  [(BYODTableViewCellWithSelectorView *)v7 setSelectionStyle:0];
  v15 = [(BYODTableViewCellWithSelectorView *)v7 selectButton];
  [v15 addTarget:self action:"_buttonTapped:" forControlEvents:64];

  v16 = [(BYODTableViewCellWithSelectorView *)v7 selectButton];
  [v16 setTag:{objc_msgSend(v6, "row")}];

  v17 = [UIImageSymbolConfiguration configurationWithPointSize:23.0];
  if ([(BYODSelectEmailTableViewController *)self _isSelectedEmailAddress:v10])
  {
    v18 = [UIImage systemImageNamed:@"checkmark.circle.fill" withConfiguration:v17];
    v19 = [(BYODTableViewCellWithSelectorView *)v7 selectButton];
    [v19 setBackgroundImage:v18 forState:0];

    v20 = [(BYODTableViewCellWithSelectorView *)v7 selectButton];
    +[UIColor systemBlueColor];
  }

  else
  {
    v18 = [UIImage systemImageNamed:@"circle" withConfiguration:v17];
    v22 = [(BYODTableViewCellWithSelectorView *)v7 selectButton];
    [v22 setBackgroundImage:v18 forState:0];

    v20 = [(BYODTableViewCellWithSelectorView *)v7 selectButton];
    +[UIColor lightGrayColor];
  }
  v21 = ;
  [v20 setTintColor:v21];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [_defaultEmailList result];
  v5 = [v4 emails];
  v6 = [v5 count];

  return v6;
}

- (void)_buttonTapped:(id)a3
{
  v11 = a3;
  v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v11 tag], 0);
  v5 = [(BYODSelectEmailTableViewController *)self tableView];
  v6 = [v5 cellForRowAtIndexPath:v4];

  v7 = [v6 titleLabel];
  v8 = [v7 text];
  v9 = _selectedEmailAddress;
  _selectedEmailAddress = v8;

  v10 = [(BYODSelectEmailTableViewController *)self tableView];
  [v10 reloadData];
}

- (void)_setDefaultEmailAddress:(id)a3
{
  v4 = a3;
  [v4 showsBusyIndicator];
  v5 = [BYODSetDefaultEmailRequest alloc];
  v6 = _loggedInUserAccount;
  v7 = [_loggedInUserAccount accountStore];
  v8 = [(BYODSetDefaultEmailRequest *)v5 initWithAccount:v6 accountStore:v7 email:_selectedEmailAddress domain:_selectedEmailDomainName];

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_60B00;
  v10[3] = &unk_B95E8;
  objc_copyWeak(&v12, &location);
  v9 = v4;
  v11 = v9;
  [(BYODSetDefaultEmailRequest *)v8 performRequestWithCallback:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_showDefaultEmailDoneScreen
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_SELECT_DEFAULT_EMAIL_DONE_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v19 = [NSString stringWithFormat:v4, _selectedEmailAddress];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_SELECT_DEFAULT_EMAIL_DONE_CONTENT" value:&stru_B9FC8 table:@"AccountPreferences"];

  if (MUISolariumFeatureEnabled())
  {
    v7 = [[OBWelcomeController alloc] initWithTitle:v19 detailText:v6 symbolName:@"envelope.badge.person.crop.fill"];
  }

  else
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [UIImage imageNamed:@"CustomDomainIcon.png" inBundle:v8];

    v7 = [[OBWelcomeController alloc] initWithTitle:v19 detailText:v6 icon:v9];
  }

  v10 = +[OBBoldTrayButton boldButton];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"DONE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v10 setTitle:v12 forState:0];

  [v10 addTarget:self action:"_obDoneTapped:" forControlEvents:64];
  v13 = [v7 buttonTray];
  [v13 addButton:v10];

  v14 = +[OBLinkTrayButton linkButton];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"BYOD_MAIL_SETTINGS_PREFS_LINK" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v14 setTitle:v16 forState:0];

  [v14 addTarget:self action:"_mailSettingsTapped:" forControlEvents:64];
  v17 = [v7 buttonTray];
  [v17 addButton:v14];

  v18 = [(BYODSelectEmailTableViewController *)self navigationController];
  [v18 pushViewController:v7 animated:1];
}

- (void)_obDoneTapped:(id)a3
{
  v4 = [(BYODSelectEmailTableViewController *)self navigationController];
  v3 = [v4 byodDelegate];
  [v3 updateDomainData];
}

- (void)_mailSettingsTapped:(id)a3
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.Mail"];
  [v4 openSensitiveURL:v3 withOptions:0];
}

@end