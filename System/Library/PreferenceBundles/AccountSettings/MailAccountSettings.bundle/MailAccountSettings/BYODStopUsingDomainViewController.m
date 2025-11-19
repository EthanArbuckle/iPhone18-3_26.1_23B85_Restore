@interface BYODStopUsingDomainViewController
- (BYODStopUsingDomainViewController)initWithAccount:(id)a3 domain:(id)a4;
- (id)_viewInstructionSpecifier;
- (id)specifiers;
- (void)_stopUsingWastapped:(id)a3;
- (void)_viewInstructionButtonTapped:(id)a3;
- (void)safariViewControllerDidFinish:(id)a3;
- (void)viewDidLoad;
@end

@implementation BYODStopUsingDomainViewController

- (BYODStopUsingDomainViewController)initWithAccount:(id)a3 domain:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BYODStopUsingDomainViewController;
  v9 = [(BYODStopUsingDomainViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_loggedInUserAccount, a3);
    objc_storeStrong(&v10->_domain, a4);
    v10->_didViewKBPage = 0;
  }

  return v10;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = BYODStopUsingDomainViewController;
  [(BYODStopUsingDomainViewController *)&v18 viewDidLoad];
  v3 = [UIBarButtonItem alloc];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_STOP_DOMAIN_NAV_RIGHT_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v6 = [v3 initWithTitle:v5 style:2 target:self action:"_stopUsingWastapped:"];
  v7 = [(BYODStopUsingDomainViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v6];

  if (!self->_didViewKBPage)
  {
    v8 = [(BYODStopUsingDomainViewController *)self navigationItem];
    v9 = [v8 rightBarButtonItem];
    [v9 setEnabled:0];
  }

  v10 = [(BYODStopUsingDomainViewController *)self navigationItem];
  v11 = [v10 rightBarButtonItem];
  v12 = +[UIColor systemRedColor];
  [v11 setTintColor:v12];

  v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelWasTapped:"];
  v14 = [(BYODStopUsingDomainViewController *)self navigationItem];
  [v14 setLeftBarButtonItem:v13];

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"BYOD_STOP_DOMAIN_NAV_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v17 = [(BYODStopUsingDomainViewController *)self navigationItem];
  [v17 setTitle:v16];
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"STOP_USING_DOMAIN_HEADER_GROUP_ID"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_STOP_DOMAIN_HEADER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v3 addObject:v4];
  v7 = [(BYODStopUsingDomainViewController *)self _viewInstructionSpecifier];
  [v3 addObjectsFromArray:v7];

  v8 = [v3 copy];
  v9 = OBJC_IVAR___PSListController__specifiers;
  v10 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v8;

  v11 = *&self->PSListController_opaque[v9];
  v12 = v11;

  return v11;
}

- (id)_viewInstructionSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"VIEW_INSTRUCTIONS_GROUP_ID"];
  [v3 addObject:v4];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_STOP_DOMAIN_VIEW_INSTRUCTIONS" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v7 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [v7 setButtonAction:"_viewInstructionButtonTapped:"];
  [v3 addObject:v7];

  return v3;
}

- (void)_viewInstructionButtonTapped:(id)a3
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_STOP_DOMAIN_VIEW_INSTRUCTIONS_KB_URL" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [NSURL URLWithString:v5];

  if (!self->_didViewKBPage)
  {
    v6 = [[SFSafariViewController alloc] initWithURL:v7];
    [v6 setDelegate:self];
    [(BYODStopUsingDomainViewController *)self presentViewController:v6 animated:1 completion:0];
  }
}

- (void)_stopUsingWastapped:(id)a3
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_STOP_DOMAIN_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BYOD_STOP_DOMAIN_ALERT_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v8 = [(BYODDomain *)self->_domain name];
  v9 = [NSString stringWithFormat:v7, v8];

  v10 = [UIAlertController alertControllerWithTitle:v5 message:v9 preferredStyle:1];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:0];

  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"BYOD_STOP_DOMAIN_NAV_RIGHT_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_65E18;
  v17[3] = &unk_B8CD0;
  v17[4] = self;
  v16 = [UIAlertAction actionWithTitle:v15 style:2 handler:v17];

  [v10 addAction:v13];
  [v10 addAction:v16];
  [v10 setPreferredAction:v16];
  [(BYODStopUsingDomainViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)safariViewControllerDidFinish:(id)a3
{
  self->_didViewKBPage = 1;
  v4 = [(BYODStopUsingDomainViewController *)self navigationItem];
  v3 = [v4 rightBarButtonItem];
  [v3 setEnabled:1];
}

@end