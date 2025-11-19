@interface TrustMeRotatingViewController
- (void)_willAppearInRemoteViewController;
- (void)dismissSheetAndDismissAlert;
- (void)handleHomeButtonPressed;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TrustMeRotatingViewController

- (void)viewDidLoad
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = TrustMeRotatingViewController;
  [(TrustMeRotatingViewController *)&v5 viewDidLoad];
  v2 = [UIApp _getSpringBoardOrientation];
  v7->_mask = 1 << v2;
  v3 = +[UIApplication sharedApplication];
  v4 = [(UIApplication *)v3 delegate];

  [v4 setCurrentRemoteAlertController:v7];
  objc_storeStrong(&v4, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = TrustMeRotatingViewController;
  [(TrustMeRotatingViewController *)&v6 viewDidAppear:a3];
  v3 = +[UIApplication sharedApplication];
  v5 = [(UIApplication *)v3 delegate];

  v4 = [v5 trustControllerToBePresentedByRemoteAlertViewController];
  if (sub_1000023DC() == UIUserInterfaceIdiomPad)
  {
    [v4 setModalPresentationStyle:2];
  }

  [(TrustMeRotatingViewController *)v9 presentViewController:v4 animated:1 completion:?];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
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
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = TrustMeRotatingViewController;
  [(TrustMeRotatingViewController *)&v3 _willAppearInRemoteViewController];
  v2 = [(TrustMeRotatingViewController *)v5 _remoteViewControllerProxy];
  [v2 setDesiredHardwareButtonEvents:16];
  [v2 setSwipeDismissalStyle:1];
  [v2 setSupportedInterfaceOrientationOverride:v5->_mask];
  [v2 setShouldDisableFadeInAnimation:1];
  objc_storeStrong(&v2, 0);
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