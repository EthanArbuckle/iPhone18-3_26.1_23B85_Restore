@interface BYODSelectEmailTableViewController
- (BYODSelectEmailTableViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view userAccount:(id)account emailListResponse:(id)response domainName:(id)name;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_buttonTapped:(id)tapped;
- (void)_mailSettingsTapped:(id)tapped;
- (void)_obDoneTapped:(id)tapped;
- (void)_setDefaultEmailAddress:(id)address;
- (void)_showDefaultEmailDoneScreen;
- (void)viewDidLoad;
@end

@implementation BYODSelectEmailTableViewController

- (BYODSelectEmailTableViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view userAccount:(id)account emailListResponse:(id)response domainName:(id)name
{
  viewCopy = view;
  titleCopy = title;
  textCopy = text;
  iconCopy = icon;
  accountCopy = account;
  responseCopy = response;
  nameCopy = name;
  iconType = [iconCopy iconType];
  if (iconType)
  {
    if (iconType != &dword_0 + 1)
    {
      goto LABEL_6;
    }

    image = [iconCopy image];
    v33.receiver = self;
    v33.super_class = BYODSelectEmailTableViewController;
    v20 = [(BYODSelectEmailTableViewController *)&v33 initWithTitle:titleCopy detailText:textCopy icon:image adoptTableViewScrollView:viewCopy];
  }

  else
  {
    image = [iconCopy symbolName];
    v32.receiver = self;
    v32.super_class = BYODSelectEmailTableViewController;
    v20 = [(BYODSelectEmailTableViewController *)&v32 initWithTitle:titleCopy detailText:textCopy symbolName:image adoptTableViewScrollView:viewCopy];
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
    buttonTray = [(BYODSelectEmailTableViewController *)self buttonTray];
    [buttonTray addButton:v21];

    objc_storeStrong(&_loggedInUserAccount, account);
    objc_storeStrong(&_defaultEmailList, response);
    result = [_defaultEmailList result];
    defaultSendFromEmail = [result defaultSendFromEmail];
    v27 = _selectedEmailAddress;
    _selectedEmailAddress = defaultSendFromEmail;

    objc_storeStrong(&_selectedEmailDomainName, name);
  }

  return self;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = BYODSelectEmailTableViewController;
  [(BYODSelectEmailTableViewController *)&v13 viewDidLoad];
  navigationItem = [(BYODSelectEmailTableViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  v4 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BYODSelectEmailTableViewController *)self setTableView:v4];

  tableView = [(BYODSelectEmailTableViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(BYODSelectEmailTableViewController *)self tableView];
  [tableView2 setRowHeight:50.0];

  v7 = +[UIColor clearColor];
  tableView3 = [(BYODSelectEmailTableViewController *)self tableView];
  [tableView3 setBackgroundColor:v7];

  tableView4 = [(BYODSelectEmailTableViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"BYODTableViewCellWithSelectorView"];

  tableView5 = [(BYODSelectEmailTableViewController *)self tableView];
  [tableView5 setDelegate:self];

  tableView6 = [(BYODSelectEmailTableViewController *)self tableView];
  [tableView6 setDataSource:self];

  tableView7 = [(BYODSelectEmailTableViewController *)self tableView];
  [tableView7 reloadData];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"BYODTableViewCellWithSelectorView"];
  if (!v7)
  {
    v7 = [[BYODTableViewCellWithSelectorView alloc] initWithStyle:0 reuseIdentifier:@"BYODTableViewCellWithSelectorView"];
  }

  result = [_defaultEmailList result];
  emails = [result emails];
  v10 = [emails objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v11 = +[UIColor secondarySystemBackgroundColor];
  [(BYODTableViewCellWithSelectorView *)v7 setBackgroundColor:v11];

  titleLabel = [(BYODTableViewCellWithSelectorView *)v7 titleLabel];
  [titleLabel setText:v10];

  v13 = +[UIColor labelColor];
  titleLabel2 = [(BYODTableViewCellWithSelectorView *)v7 titleLabel];
  [titleLabel2 setTextColor:v13];

  [(BYODTableViewCellWithSelectorView *)v7 setSelectionStyle:0];
  selectButton = [(BYODTableViewCellWithSelectorView *)v7 selectButton];
  [selectButton addTarget:self action:"_buttonTapped:" forControlEvents:64];

  selectButton2 = [(BYODTableViewCellWithSelectorView *)v7 selectButton];
  [selectButton2 setTag:{objc_msgSend(pathCopy, "row")}];

  v17 = [UIImageSymbolConfiguration configurationWithPointSize:23.0];
  if ([(BYODSelectEmailTableViewController *)self _isSelectedEmailAddress:v10])
  {
    v18 = [UIImage systemImageNamed:@"checkmark.circle.fill" withConfiguration:v17];
    selectButton3 = [(BYODTableViewCellWithSelectorView *)v7 selectButton];
    [selectButton3 setBackgroundImage:v18 forState:0];

    selectButton4 = [(BYODTableViewCellWithSelectorView *)v7 selectButton];
    +[UIColor systemBlueColor];
  }

  else
  {
    v18 = [UIImage systemImageNamed:@"circle" withConfiguration:v17];
    selectButton5 = [(BYODTableViewCellWithSelectorView *)v7 selectButton];
    [selectButton5 setBackgroundImage:v18 forState:0];

    selectButton4 = [(BYODTableViewCellWithSelectorView *)v7 selectButton];
    +[UIColor lightGrayColor];
  }
  v21 = ;
  [selectButton4 setTintColor:v21];

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  result = [_defaultEmailList result];
  emails = [result emails];
  v6 = [emails count];

  return v6;
}

- (void)_buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [tappedCopy tag], 0);
  tableView = [(BYODSelectEmailTableViewController *)self tableView];
  v6 = [tableView cellForRowAtIndexPath:v4];

  titleLabel = [v6 titleLabel];
  text = [titleLabel text];
  v9 = _selectedEmailAddress;
  _selectedEmailAddress = text;

  tableView2 = [(BYODSelectEmailTableViewController *)self tableView];
  [tableView2 reloadData];
}

- (void)_setDefaultEmailAddress:(id)address
{
  addressCopy = address;
  [addressCopy showsBusyIndicator];
  v5 = [BYODSetDefaultEmailRequest alloc];
  v6 = _loggedInUserAccount;
  accountStore = [_loggedInUserAccount accountStore];
  v8 = [(BYODSetDefaultEmailRequest *)v5 initWithAccount:v6 accountStore:accountStore email:_selectedEmailAddress domain:_selectedEmailDomainName];

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_60B00;
  v10[3] = &unk_B95E8;
  objc_copyWeak(&v12, &location);
  v9 = addressCopy;
  v11 = v9;
  [(BYODSetDefaultEmailRequest *)v8 performRequestWithCallback:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_showDefaultEmailDoneScreen
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_SELECT_DEFAULT_EMAIL_DONE_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  _selectedEmailAddress = [NSString stringWithFormat:v4, _selectedEmailAddress];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_SELECT_DEFAULT_EMAIL_DONE_CONTENT" value:&stru_B9FC8 table:@"AccountPreferences"];

  if (MUISolariumFeatureEnabled())
  {
    v7 = [[OBWelcomeController alloc] initWithTitle:_selectedEmailAddress detailText:v6 symbolName:@"envelope.badge.person.crop.fill"];
  }

  else
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [UIImage imageNamed:@"CustomDomainIcon.png" inBundle:v8];

    v7 = [[OBWelcomeController alloc] initWithTitle:_selectedEmailAddress detailText:v6 icon:v9];
  }

  v10 = +[OBBoldTrayButton boldButton];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"DONE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v10 setTitle:v12 forState:0];

  [v10 addTarget:self action:"_obDoneTapped:" forControlEvents:64];
  buttonTray = [v7 buttonTray];
  [buttonTray addButton:v10];

  v14 = +[OBLinkTrayButton linkButton];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"BYOD_MAIL_SETTINGS_PREFS_LINK" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v14 setTitle:v16 forState:0];

  [v14 addTarget:self action:"_mailSettingsTapped:" forControlEvents:64];
  buttonTray2 = [v7 buttonTray];
  [buttonTray2 addButton:v14];

  navigationController = [(BYODSelectEmailTableViewController *)self navigationController];
  [navigationController pushViewController:v7 animated:1];
}

- (void)_obDoneTapped:(id)tapped
{
  navigationController = [(BYODSelectEmailTableViewController *)self navigationController];
  byodDelegate = [navigationController byodDelegate];
  [byodDelegate updateDomainData];
}

- (void)_mailSettingsTapped:(id)tapped
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.Mail"];
  [v4 openSensitiveURL:v3 withOptions:0];
}

@end