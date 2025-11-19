@interface BYODConfirmFinishSetupViewController
+ (id)log;
- (BYODConfirmFinishSetupViewController)initWithDomainName:(id)a3 acAccount:(id)a4;
- (void)_addButtonTrayButtons:(id)a3;
- (void)_learnMoreButtonTapped:(id)a3;
- (void)_listDefaultEmail;
- (void)_verifyButtonTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation BYODConfirmFinishSetupViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2BB94;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D64B0 != -1)
  {
    dispatch_once(&qword_D64B0, block);
  }

  v2 = qword_D64A8;

  return v2;
}

- (BYODConfirmFinishSetupViewController)initWithDomainName:(id)a3 acAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BYODConfirmFinishSetupViewController;
  v8 = [(BYODBaseViewController *)&v11 initWithACAccount:v7];
  v9 = v8;
  if (v8)
  {
    [(BYODConfirmFinishSetupViewController *)v8 setDomainName:v6];
    [(BYODConfirmFinishSetupViewController *)v9 setLoggedInUserAccount:v7];
  }

  return v9;
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = BYODConfirmFinishSetupViewController;
  [(BYODBaseViewController *)&v21 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_CONFIRM_RECORDS_UPDATED_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v5 = +[BYODIcon customEmailDomainIcon];
  if (MUISolariumFeatureEnabled())
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"BYOD_CONFIRM_RECORDS_UPDATED_DETAIL" value:&stru_B9FC8 table:@"AccountPreferences"];

    [(BYODBaseViewController *)self createViewControllerWithTitle:v4 detail:v7 icon:v5];
  }

  else
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:@"BYOD_CONFIRM_RECORDS_UPDATED_BODY" value:&stru_B9FC8 table:@"AccountPreferences"];

    v9 = [[NSMutableAttributedString alloc] initWithMarkdownString:v7 options:0 baseURL:0 error:0];
    v10 = [v9 length];
    v22 = NSLinkAttributeName;
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"DOMAIN_SETUP_VIEW_INSTRUCTION_ON_WEB_URL" value:&stru_B9FC8 table:@"AccountPreferences"];
    v23 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

    v14 = +[UIColor labelColor];
    [v9 addAttribute:NSForegroundColorAttributeName value:v14 range:{0, v10}];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_2C104;
    v18[3] = &unk_B9218;
    v15 = v9;
    v19 = v15;
    v16 = v13;
    v20 = v16;
    [v15 enumerateAttributesInRange:0 options:v10 usingBlock:{0, v18}];
    [(BYODBaseViewController *)self createViewControllerWithTitle:v4 attributedDetail:v15 detailTextAlignment:1 detailTextFontSize:v5 icon:18.0];
  }

  v17 = [(BYODConfirmFinishSetupViewController *)self navigationItem];
  [v17 setHidesBackButton:1];
}

- (void)_addButtonTrayButtons:(id)a3
{
  v16 = a3;
  v4 = +[OBBoldTrayButton boldButton];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_VERIFY_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v4 setTitle:v6 forState:0];

  [v4 addTarget:self action:"_verifyButtonTapped:" forControlEvents:64];
  v7 = [v16 buttonTray];
  [v7 addButton:v4];

  if (MUISolariumFeatureEnabled())
  {
    v8 = +[OBHeaderAccessoryButton accessoryButton];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"LEARN_MORE_ELLIPSIS" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v8 setTitle:v10 forState:0];

    [v8 addTarget:self action:"_learnMoreButtonTapped:" forControlEvents:64];
    v11 = [v16 headerView];
    [v11 addAccessoryButton:v8];

    v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped:"];
    v13 = [(BYODConfirmFinishSetupViewController *)self navigationItem];
    [v13 setLeftBarButtonItem:v12];
  }

  else
  {
    v8 = +[OBLinkTrayButton linkButton];
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"BYOD_GO_BACK_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v8 setTitle:v15 forState:0];

    [v8 addTarget:self action:"_cancelButtonTapped:" forControlEvents:64];
    v12 = [v16 buttonTray];
    [v12 addButton:v8];
  }
}

- (void)_verifyButtonTapped:(id)a3
{
  v4 = a3;
  [v4 setEnabled:0];
  v5 = [[BYODSpinner alloc] initWithViewController:self];
  [(BYODConfirmFinishSetupViewController *)self setSpinner:v5];

  v6 = [(BYODConfirmFinishSetupViewController *)self spinner];
  [v6 startSpinner];

  v7 = [BYODDomainVerifyTransferRequest alloc];
  v8 = [(BYODConfirmFinishSetupViewController *)self loggedInUserAccount];
  v9 = [(BYODConfirmFinishSetupViewController *)self loggedInUserAccount];
  v10 = [v9 accountStore];
  v11 = [(BYODConfirmFinishSetupViewController *)self domainName];
  v12 = [(BYODDomainVerifyTransferRequest *)v7 initWithAccount:v8 accountStore:v10 domain:v11];

  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_2C6BC;
  v13[3] = &unk_B9240;
  objc_copyWeak(&v14, &location);
  [(BYODDomainVerifyTransferRequest *)v12 performRequestWithCallback:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_listDefaultEmail
{
  v3 = [BYODListEmailRequest alloc];
  v4 = [(BYODConfirmFinishSetupViewController *)self loggedInUserAccount];
  v5 = [(BYODConfirmFinishSetupViewController *)self loggedInUserAccount];
  v6 = [v5 accountStore];
  v7 = [(BYODListEmailRequest *)v3 initWithAccount:v4 accountStore:v6];

  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2CB3C;
  v8[3] = &unk_B9268;
  objc_copyWeak(&v9, &location);
  [(BYODListEmailRequest *)v7 performRequestWithCallback:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_learnMoreButtonTapped:(id)a3
{
  v6 = +[UIApplication sharedApplication];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_CONFIRM_RECORDS_URL" value:&stru_B9FC8 table:@"AccountPreferences"];
  v5 = [NSURL URLWithString:v4];
  [v6 openURL:v5 options:&__NSDictionary0__struct completionHandler:0];
}

@end