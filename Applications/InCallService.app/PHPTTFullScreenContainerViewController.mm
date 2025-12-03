@interface PHPTTFullScreenContainerViewController
- (PHPTTFullScreenContainerViewController)initWithBannerPresentationManager:(id)manager;
- (id)pttViewControllerWithBannerPresentationManager:(id)manager;
- (void)callStateChangedNotification:(id)notification;
- (void)dealloc;
- (void)setupConstraints;
- (void)viewDidLoad;
@end

@implementation PHPTTFullScreenContainerViewController

- (PHPTTFullScreenContainerViewController)initWithBannerPresentationManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = PHPTTFullScreenContainerViewController;
  v5 = [(PHPTTFullScreenContainerViewController *)&v13 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(PHPTTFullScreenContainerViewController *)v5 obtainDismissalAssertion];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"callStateChangedNotification:" name:TUBargeCallStatusChangedNotification object:0];

    v8 = [(PHPTTFullScreenContainerViewController *)v6 pttViewControllerWithBannerPresentationManager:managerCopy];
    pttFullScreenViewController = v6->_pttFullScreenViewController;
    v6->_pttFullScreenViewController = v8;

    if (v6->_pttFullScreenViewController)
    {
      [(PHPTTFullScreenContainerViewController *)v6 addChildViewController:?];
      [(UIViewController *)v6->_pttFullScreenViewController didMoveToParentViewController:v6];
      view = [(PHPTTFullScreenContainerViewController *)v6 view];
      view2 = [(UIViewController *)v6->_pttFullScreenViewController view];
      [view addSubview:view2];

      [(PHPTTFullScreenContainerViewController *)v6 setupConstraints];
    }
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHPTTFullScreenContainerViewController;
  [(PHPTTFullScreenContainerViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PHPTTFullScreenContainerViewController;
  [(PHPTTFullScreenContainerViewController *)&v2 viewDidLoad];
}

- (void)setupConstraints
{
  firstValue = [(UIViewController *)self->_pttFullScreenViewController view];
  [firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(PHPTTFullScreenContainerViewController *)self view];
  v4 = _NSDictionaryOfVariableBindings(@"pttFullScreenView", firstValue, 0);
  v5 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[pttFullScreenView]|" options:0 metrics:0 views:v4];
  [view addConstraints:v5];

  view2 = [(PHPTTFullScreenContainerViewController *)self view];
  v7 = _NSDictionaryOfVariableBindings(@"pttFullScreenView", firstValue, 0);
  v8 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[pttFullScreenView]|" options:0 metrics:0 views:v7];
  [view2 addConstraints:v8];
}

- (void)callStateChangedNotification:(id)notification
{
  object = [notification object];
  if ([object isPTT] && objc_msgSend(object, "status") - 5 <= 1)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Releasing PTT dismissal assertion.", v6, 2u);
    }

    [(PHPTTFullScreenContainerViewController *)self releaseDismissalAssertion];
  }
}

- (id)pttViewControllerWithBannerPresentationManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  v6 = PHPTTFullScreenContainerViewController.pttViewController(bannnerPresentationManager:)();

  return v6;
}

@end