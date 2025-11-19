@interface BYODDoneSetupDomainViewController
- (BYODDoneSetupDomainViewController)initWithDomainName:(id)a3 acAccount:(id)a4;
- (void)_addButtonTrayButtons:(id)a3;
- (void)_loadDomainDetails;
- (void)viewDidLoad;
@end

@implementation BYODDoneSetupDomainViewController

- (BYODDoneSetupDomainViewController)initWithDomainName:(id)a3 acAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BYODDoneSetupDomainViewController;
  v8 = [(BYODBaseViewController *)&v11 initWithACAccount:v7];
  v9 = v8;
  if (v8)
  {
    [(BYODDoneSetupDomainViewController *)v8 setDomainName:v6];
    [(BYODDoneSetupDomainViewController *)v9 setLoggedInUserAccount:v7];
  }

  return v9;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = BYODDoneSetupDomainViewController;
  [(BYODBaseViewController *)&v11 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_DONE_DOMAIN_SETUP_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_DONE_DOMAIN_SETUP_BODY" value:&stru_B9FC8 table:@"AccountPreferences"];

  v7 = [(BYODDoneSetupDomainViewController *)self domainName];
  v8 = [NSString stringWithFormat:v6, v7];

  v9 = +[BYODIcon customEmailDomainIcon];
  [(BYODBaseViewController *)self createViewControllerWithTitle:v4 detail:v8 icon:v9];
  v10 = [(BYODDoneSetupDomainViewController *)self navigationItem];
  [v10 setHidesBackButton:1];
}

- (void)_addButtonTrayButtons:(id)a3
{
  v8 = a3;
  v4 = +[OBBoldTrayButton boldButton];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DONE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v4 setTitle:v6 forState:0];

  [v4 addTarget:self action:"_doneButtonTapped:" forControlEvents:64];
  v7 = [v8 buttonTray];
  [v7 addButton:v4];
}

- (void)_loadDomainDetails
{
  v3 = [BYODGetDomainRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  v5 = [(ACAccount *)loggedInUserAccount accountStore];
  v6 = [(BYODGetDomainRequest *)v3 initWithAccount:loggedInUserAccount accountStore:v5 domain:self->_domainName];

  v7 = [(BYODDoneSetupDomainViewController *)self spinner];

  if (!v7)
  {
    v8 = [[BYODSpinner alloc] initWithViewController:self];
    [(BYODDoneSetupDomainViewController *)self setSpinner:v8];
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_459C8;
  v13[3] = &unk_B8EB0;
  v13[4] = self;
  v9 = +[EFScheduler mainThreadScheduler];
  [v9 performBlock:v13];

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_45A28;
  v10[3] = &unk_B9308;
  objc_copyWeak(&v11, &location);
  [(BYODGetDomainRequest *)v6 performRequestWithCallback:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

@end