@interface WCRServicePINEntryNavigationController
- (unint64_t)supportedInterfaceOrientations;
- (void)didAcceptEnteredPIN;
- (void)getIsPINPresentWithCompletion:(id)a3;
- (void)permitURLWithCompletion:(id)a3;
- (void)setPageTitle:(id)a3;
- (void)setURL:(id)a3;
- (void)viewDidLoad;
@end

@implementation WCRServicePINEntryNavigationController

- (void)viewDidLoad
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(WCRServicePINEntryNavigationController *)self setPreferredContentSize:320.0, 480.0];
    v5 = 16;
  }

  else
  {
    v5 = 17;
  }

  [(WCRServicePINEntryNavigationController *)self setModalPresentationStyle:v5];
  v6 = objc_alloc_init(WCRServicePINEntryViewController);
  PINEntryViewController = self->_PINEntryViewController;
  self->_PINEntryViewController = v6;

  [(WCRServicePINEntryViewController *)self->_PINEntryViewController setDelegate:self];
  v14 = [(WCRServicePINEntryNavigationController *)self view];
  v8 = [[UINavigationController alloc] initWithRootViewController:self->_PINEntryViewController];
  navController = self->_navController;
  self->_navController = v8;

  v10 = [(UINavigationController *)self->_navController view];
  [(WCRServicePINEntryNavigationController *)self addChildViewController:self->_navController];
  [v14 addSubview:v10];
  [(UINavigationController *)self->_navController didMoveToParentViewController:self];
  v11 = +[UIDevice currentDevice];
  [v11 userInterfaceIdiom];

  v12 = [(WCRServicePINEntryNavigationController *)self _remoteViewControllerProxy];
  remoteViewControllerProxy = self->_remoteViewControllerProxy;
  self->_remoteViewControllerProxy = v12;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setURL:(id)a3
{
  v12 = a3;
  v4 = [(NSURL *)self->_URL host];
  v5 = [v12 host];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [v12 scheme];
    v8 = [v12 host];
    v9 = [NSString stringWithFormat:@"%@://%@", v7, v8];
    v10 = [NSURL URLWithString:v9];
    URL = self->_URL;
    self->_URL = v10;
  }
}

- (void)setPageTitle:(id)a3
{
  v6 = a3;
  if (([(NSString *)self->_pageTitle isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    pageTitle = self->_pageTitle;
    self->_pageTitle = v4;
  }
}

- (void)getIsPINPresentWithCompletion:(id)a3
{
  v3 = a3;
  v3[2](v3, +[WCRServicePINEntryViewController settingEnabled], 0);
}

- (void)permitURLWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  URL = self->_URL;
  pageTitle = self->_pageTitle;
  v12 = 0;
  v8 = [v5 permitWebFilterURL:URL pageTitle:pageTitle error:&v12];
  v9 = v12;
  v10 = v9;
  v11 = 0;
  if ((v8 & 1) == 0)
  {
    NSLog(@"Couldn't add URL to Screen Time: %@", 0, v9);
    v11 = v10;
  }

  (v4)[2](v4, v11);
}

- (void)didAcceptEnteredPIN
{
  [(WCRServicePINEntryNavigationController *)self permitURLWithCompletion:&stru_100004170];
  remoteViewControllerProxy = self->_remoteViewControllerProxy;

  [(WCRPINEntryViewControllerProtocol *)remoteViewControllerProxy userEnteredCorrectPIN];
}

@end