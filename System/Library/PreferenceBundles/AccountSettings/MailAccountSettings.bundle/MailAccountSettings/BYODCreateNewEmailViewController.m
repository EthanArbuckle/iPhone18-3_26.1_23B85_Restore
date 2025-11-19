@interface BYODCreateNewEmailViewController
+ (id)log;
- (BYODCreateNewEmailViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6 acAccount:(id)a7 domainName:(id)a8;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_createEmailTapped:(id)a3;
- (void)_notNowTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation BYODCreateNewEmailViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2F164;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D64F0 != -1)
  {
    dispatch_once(&qword_D64F0, block);
  }

  v2 = qword_D64E8;

  return v2;
}

- (BYODCreateNewEmailViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6 acAccount:(id)a7 domainName:(id)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = [v16 iconType];
  if (v19)
  {
    if (v19 != &dword_0 + 1)
    {
      goto LABEL_6;
    }

    v20 = [v16 image];
    v24.receiver = self;
    v24.super_class = BYODCreateNewEmailViewController;
    v21 = [(BYODCreateNewEmailViewController *)&v24 initWithTitle:v14 detailText:v15 icon:v20 adoptTableViewScrollView:v10];
  }

  else
  {
    v20 = [v16 symbolName];
    v23.receiver = self;
    v23.super_class = BYODCreateNewEmailViewController;
    v21 = [(BYODCreateNewEmailViewController *)&v23 initWithTitle:v14 detailText:v15 symbolName:v20 adoptTableViewScrollView:v10];
  }

  self = v21;

LABEL_6:
  if (self)
  {
    objc_storeStrong(&self->_domainName, a8);
    objc_storeStrong(&self->_loggedInAppleAccount, a7);
  }

  return self;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = BYODCreateNewEmailViewController;
  [(BYODCreateNewEmailViewController *)&v19 viewDidLoad];
  v3 = [(BYODCreateNewEmailViewController *)self navigationItem];
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_notNowTapped:"];
  [v3 setLeftBarButtonItem:v4];

  v5 = [(BYODCreateNewEmailViewController *)self navigationItem];
  v6 = [UIBarButtonItem alloc];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"BYOD_CREATE_EMAIL_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v9 = [v6 initWithTitle:v8 style:0 target:self action:"_createEmailTapped:"];
  [v5 setRightBarButtonItem:v9];

  v10 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BYODCreateNewEmailViewController *)self setTableView:v10];

  v11 = [(BYODCreateNewEmailViewController *)self tableView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(BYODCreateNewEmailViewController *)self tableView];
  [v12 setRowHeight:50.0];

  v13 = +[UIColor clearColor];
  v14 = [(BYODCreateNewEmailViewController *)self tableView];
  [v14 setBackgroundColor:v13];

  v15 = [(BYODCreateNewEmailViewController *)self tableView];
  [v15 registerClass:objc_opt_class() forCellReuseIdentifier:@"BYODTableViewCellWithEmailField"];

  v16 = [(BYODCreateNewEmailViewController *)self tableView];
  [v16 setDelegate:self];

  v17 = [(BYODCreateNewEmailViewController *)self tableView];
  [v17 setDataSource:self];

  v18 = [(BYODCreateNewEmailViewController *)self tableView];
  [v18 reloadData];
}

- (void)_notNowTapped:(id)a3
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

- (void)_createEmailTapped:(id)a3
{
  v4 = +[BYODCreateNewEmailViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    loggedInAppleAccount = self->_loggedInAppleAccount;
    *buf = 138412290;
    v22 = loggedInAppleAccount;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "member %@ did create email", buf, 0xCu);
  }

  v6 = [(UITextField *)self->_emailTextField text];
  v7 = [NSString stringWithFormat:@"%@@%@", v6, self->_domainName];

  v8 = [BYODAddAliasRequest alloc];
  v9 = self->_loggedInAppleAccount;
  v10 = [(ACAccount *)v9 accountStore];
  domainName = self->_domainName;
  v20 = v7;
  v12 = [NSArray arrayWithObjects:&v20 count:1];
  v13 = [(ACAccount *)self->_loggedInAppleAccount normalizedDSID];
  v14 = [(BYODAddAliasRequest *)v8 initWithAccount:v9 accountStore:v10 domain:domainName emailArray:v12 dsid:v13];

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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a3;
  v6 = [v5 dequeueReusableCellWithIdentifier:@"BYODTableViewCellWithEmailField"];
  if (!v6)
  {
    v6 = objc_alloc_init(BYODTextFieldTableViewCell);
  }

  v7 = +[UIColor secondarySystemBackgroundColor];
  [(BYODTextFieldTableViewCell *)v6 setBackgroundColor:v7];

  v8 = [(BYODTextFieldTableViewCell *)v6 textField];
  v9 = [NSString stringWithFormat:@"@%@", self->_domainName];
  v10 = +[UIColor systemGrayColor];
  [v8 _setSuffix:v9 withColor:v10];

  v11 = [(BYODTextFieldTableViewCell *)v6 textField];
  emailTextField = self->_emailTextField;
  self->_emailTextField = v11;

  [(UITextField *)self->_emailTextField becomeFirstResponder];

  return v6;
}

@end