@interface BYODCreateNewEmailViewController
+ (id)log;
- (BYODCreateNewEmailViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view acAccount:(id)account domainName:(id)name;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_createEmailTapped:(id)tapped;
- (void)_notNowTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation BYODCreateNewEmailViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2F164;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D64F0 != -1)
  {
    dispatch_once(&qword_D64F0, block);
  }

  v2 = qword_D64E8;

  return v2;
}

- (BYODCreateNewEmailViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view acAccount:(id)account domainName:(id)name
{
  viewCopy = view;
  titleCopy = title;
  textCopy = text;
  iconCopy = icon;
  accountCopy = account;
  nameCopy = name;
  iconType = [iconCopy iconType];
  if (iconType)
  {
    if (iconType != &dword_0 + 1)
    {
      goto LABEL_6;
    }

    image = [iconCopy image];
    v24.receiver = self;
    v24.super_class = BYODCreateNewEmailViewController;
    v21 = [(BYODCreateNewEmailViewController *)&v24 initWithTitle:titleCopy detailText:textCopy icon:image adoptTableViewScrollView:viewCopy];
  }

  else
  {
    image = [iconCopy symbolName];
    v23.receiver = self;
    v23.super_class = BYODCreateNewEmailViewController;
    v21 = [(BYODCreateNewEmailViewController *)&v23 initWithTitle:titleCopy detailText:textCopy symbolName:image adoptTableViewScrollView:viewCopy];
  }

  self = v21;

LABEL_6:
  if (self)
  {
    objc_storeStrong(&self->_domainName, name);
    objc_storeStrong(&self->_loggedInAppleAccount, account);
  }

  return self;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = BYODCreateNewEmailViewController;
  [(BYODCreateNewEmailViewController *)&v19 viewDidLoad];
  navigationItem = [(BYODCreateNewEmailViewController *)self navigationItem];
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_notNowTapped:"];
  [navigationItem setLeftBarButtonItem:v4];

  navigationItem2 = [(BYODCreateNewEmailViewController *)self navigationItem];
  v6 = [UIBarButtonItem alloc];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"BYOD_CREATE_EMAIL_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v9 = [v6 initWithTitle:v8 style:0 target:self action:"_createEmailTapped:"];
  [navigationItem2 setRightBarButtonItem:v9];

  v10 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BYODCreateNewEmailViewController *)self setTableView:v10];

  tableView = [(BYODCreateNewEmailViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(BYODCreateNewEmailViewController *)self tableView];
  [tableView2 setRowHeight:50.0];

  v13 = +[UIColor clearColor];
  tableView3 = [(BYODCreateNewEmailViewController *)self tableView];
  [tableView3 setBackgroundColor:v13];

  tableView4 = [(BYODCreateNewEmailViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"BYODTableViewCellWithEmailField"];

  tableView5 = [(BYODCreateNewEmailViewController *)self tableView];
  [tableView5 setDelegate:self];

  tableView6 = [(BYODCreateNewEmailViewController *)self tableView];
  [tableView6 setDataSource:self];

  tableView7 = [(BYODCreateNewEmailViewController *)self tableView];
  [tableView7 reloadData];
}

- (void)_notNowTapped:(id)tapped
{
  v4 = +[BYODCreateNewEmailViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    loggedInAppleAccount = self->_loggedInAppleAccount;
    v6 = 138412290;
    v7 = loggedInAppleAccount;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "member %@ didn't create email", &v6, 0xCu);
  }

  [(BYODCreateNewEmailViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_createEmailTapped:(id)tapped
{
  v4 = +[BYODCreateNewEmailViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    loggedInAppleAccount = self->_loggedInAppleAccount;
    *buf = 138412290;
    v22 = loggedInAppleAccount;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "member %@ did create email", buf, 0xCu);
  }

  text = [(UITextField *)self->_emailTextField text];
  v7 = [NSString stringWithFormat:@"%@@%@", text, self->_domainName];

  v8 = [BYODAddAliasRequest alloc];
  v9 = self->_loggedInAppleAccount;
  accountStore = [(ACAccount *)v9 accountStore];
  domainName = self->_domainName;
  v20 = v7;
  v12 = [NSArray arrayWithObjects:&v20 count:1];
  normalizedDSID = [(ACAccount *)self->_loggedInAppleAccount normalizedDSID];
  v14 = [(BYODAddAliasRequest *)v8 initWithAccount:v9 accountStore:accountStore domain:domainName emailArray:v12 dsid:normalizedDSID];

  spinner = self->_spinner;
  if (!spinner)
  {
    v16 = [[BYODSpinner alloc] initWithViewController:self];
    v17 = self->_spinner;
    self->_spinner = v16;

    spinner = self->_spinner;
  }

  [(BYODSpinner *)spinner startSpinner];
  objc_initWeak(buf, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_2F9DC;
  v18[3] = &unk_B9308;
  objc_copyWeak(&v19, buf);
  [(BYODAddAliasRequest *)v14 performRequestWithCallback:v18];
  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [viewCopy dequeueReusableCellWithIdentifier:@"BYODTableViewCellWithEmailField"];
  if (!v6)
  {
    v6 = objc_alloc_init(BYODTextFieldTableViewCell);
  }

  v7 = +[UIColor secondarySystemBackgroundColor];
  [(BYODTextFieldTableViewCell *)v6 setBackgroundColor:v7];

  textField = [(BYODTextFieldTableViewCell *)v6 textField];
  v9 = [NSString stringWithFormat:@"@%@", self->_domainName];
  v10 = +[UIColor systemGrayColor];
  [textField _setSuffix:v9 withColor:v10];

  textField2 = [(BYODTextFieldTableViewCell *)v6 textField];
  emailTextField = self->_emailTextField;
  self->_emailTextField = textField2;

  [(UITextField *)self->_emailTextField becomeFirstResponder];

  return v6;
}

@end