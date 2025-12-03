@interface TrustMeRotatingViewController
- (void)_willAppearInRemoteViewController;
- (void)dismissSheetAndDismissAlert;
- (void)handleHomeButtonPressed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation TrustMeRotatingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = TrustMeRotatingViewController;
  [(TrustMeRotatingViewController *)&v5 viewDidLoad];
  _getSpringBoardOrientation = [UIApp _getSpringBoardOrientation];
  selfCopy->_mask = 1 << _getSpringBoardOrientation;
  v3 = +[UIApplication sharedApplication];
  delegate = [(UIApplication *)v3 delegate];

  [delegate setCurrentRemoteAlertController:selfCopy];
  objc_storeStrong(&delegate, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v8 = a2;
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = TrustMeRotatingViewController;
  [(TrustMeRotatingViewController *)&v6 viewDidAppear:appear];
  v3 = +[UIApplication sharedApplication];
  delegate = [(UIApplication *)v3 delegate];

  trustControllerToBePresentedByRemoteAlertViewController = [delegate trustControllerToBePresentedByRemoteAlertViewController];
  if (sub_1000023DC() == UIUserInterfaceIdiomPad)
  {
    [trustControllerToBePresentedByRemoteAlertViewController setModalPresentationStyle:2];
  }

  [(TrustMeRotatingViewController *)selfCopy presentViewController:trustControllerToBePresentedByRemoteAlertViewController animated:1 completion:?];
  objc_storeStrong(&trustControllerToBePresentedByRemoteAlertViewController, 0);
  objc_storeStrong(&delegate, 0);
}

- (void)handleHomeButtonPressed
{
  v3[2] = self;
  v3[1] = a2;
  v2 = +[UIApplication sharedApplication];
  v3[0] = [(UIApplication *)v2 delegate];

  [v3[0] homeButtonWasPressed];
  objc_storeStrong(v3, 0);
}

- (void)_willAppearInRemoteViewController
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = TrustMeRotatingViewController;
  [(TrustMeRotatingViewController *)&v3 _willAppearInRemoteViewController];
  _remoteViewControllerProxy = [(TrustMeRotatingViewController *)selfCopy _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setSwipeDismissalStyle:1];
  [_remoteViewControllerProxy setSupportedInterfaceOrientationOverride:selfCopy->_mask];
  [_remoteViewControllerProxy setShouldDisableFadeInAnimation:1];
  objc_storeStrong(&_remoteViewControllerProxy, 0);
}

- (void)dismissSheetAndDismissAlert
{
  v8[2] = self;
  v8[1] = a2;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000026CC;
  v7 = &unk_1000081A8;
  v8[0] = self;
  [(TrustMeRotatingViewController *)self dismissViewControllerAnimated:1 completion:?];
  objc_storeStrong(v8, 0);
}

@end