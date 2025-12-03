@interface WCRServicePINEntryNavigationController
- (unint64_t)supportedInterfaceOrientations;
- (void)didAcceptEnteredPIN;
- (void)getIsPINPresentWithCompletion:(id)completion;
- (void)permitURLWithCompletion:(id)completion;
- (void)setPageTitle:(id)title;
- (void)setURL:(id)l;
- (void)viewDidLoad;
@end

@implementation WCRServicePINEntryNavigationController

- (void)viewDidLoad
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  view = [(WCRServicePINEntryNavigationController *)self view];
  v8 = [[UINavigationController alloc] initWithRootViewController:self->_PINEntryViewController];
  navController = self->_navController;
  self->_navController = v8;

  view2 = [(UINavigationController *)self->_navController view];
  [(WCRServicePINEntryNavigationController *)self addChildViewController:self->_navController];
  [view addSubview:view2];
  [(UINavigationController *)self->_navController didMoveToParentViewController:self];
  v11 = +[UIDevice currentDevice];
  [v11 userInterfaceIdiom];

  _remoteViewControllerProxy = [(WCRServicePINEntryNavigationController *)self _remoteViewControllerProxy];
  remoteViewControllerProxy = self->_remoteViewControllerProxy;
  self->_remoteViewControllerProxy = _remoteViewControllerProxy;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setURL:(id)l
{
  lCopy = l;
  host = [(NSURL *)self->_URL host];
  host2 = [lCopy host];
  v6 = [host isEqual:host2];

  if ((v6 & 1) == 0)
  {
    scheme = [lCopy scheme];
    host3 = [lCopy host];
    v9 = [NSString stringWithFormat:@"%@://%@", scheme, host3];
    v10 = [NSURL URLWithString:v9];
    URL = self->_URL;
    self->_URL = v10;
  }
}

- (void)setPageTitle:(id)title
{
  titleCopy = title;
  if (([(NSString *)self->_pageTitle isEqual:?]& 1) == 0)
  {
    v4 = [titleCopy copy];
    pageTitle = self->_pageTitle;
    self->_pageTitle = v4;
  }
}

- (void)getIsPINPresentWithCompletion:(id)completion
{
  completionCopy = completion;
  completionCopy[2](completionCopy, +[WCRServicePINEntryViewController settingEnabled], 0);
}

- (void)permitURLWithCompletion:(id)completion
{
  completionCopy = completion;
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

  (completionCopy)[2](completionCopy, v11);
}

- (void)didAcceptEnteredPIN
{
  [(WCRServicePINEntryNavigationController *)self permitURLWithCompletion:&stru_100004170];
  remoteViewControllerProxy = self->_remoteViewControllerProxy;

  [(WCRPINEntryViewControllerProtocol *)remoteViewControllerProxy userEnteredCorrectPIN];
}

@end