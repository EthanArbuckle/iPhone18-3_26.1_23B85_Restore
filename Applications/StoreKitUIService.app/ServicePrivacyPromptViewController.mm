@interface ServicePrivacyPromptViewController
- (BOOL)_shouldIncludeAcknowledgementButtonInSplashController;
- (BOOL)shouldAutorotate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applyCustomTintColorToViewController:(id)controller;
- (void)_dismiss;
- (void)_privacyViewControllerDidFinishWithResult:(unint64_t)result;
- (void)_willAppearInRemoteViewController;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)splashDoneButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation ServicePrivacyPromptViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (!+[_TtC17StoreKitUIService21objc_LockscreenStatus isDeviceUnlocked])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002C160();
    }

    exit(0);
  }

  actions = [contextCopy actions];
  allObjects = [actions allObjects];
  firstObject = [allObjects firstObject];
  [(ServicePrivacyPromptViewController *)self setDidContinueAction:firstObject];

  userInfo = [contextCopy userInfo];
  v11 = [userInfo objectForKeyedSubscript:@"privacyIdentifier"];
  [(ServicePrivacyPromptViewController *)self setPrivacyIdentifier:v11];

  completionCopy[2](completionCopy);
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v9 + 1) + 8 * v8) events] & 0x10) != 0)
        {
          [(ServicePrivacyPromptViewController *)self _dismiss];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ServicePrivacyPromptViewController;
  [(ServicePrivacyPromptViewController *)&v5 viewDidLoad];
  v3 = +[UIColor clearColor];
  view = [(ServicePrivacyPromptViewController *)self view];
  [view setBackgroundColor:v3];

  [(ServicePrivacyPromptViewController *)self _applyCustomTintColorToViewController:self];
}

- (void)_willAppearInRemoteViewController
{
  v4.receiver = self;
  v4.super_class = ServicePrivacyPromptViewController;
  [(ServicePrivacyPromptViewController *)&v4 _willAppearInRemoteViewController];
  _remoteViewControllerProxy = [(ServicePrivacyPromptViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 2;
  }

  v4 = +[UIApplication sharedApplication];
  statusBarOrientation = [v4 statusBarOrientation];

  if (MGCopyAnswer())
  {
    return 30;
  }

  else
  {
    return 1 << statusBarOrientation;
  }
}

- (BOOL)shouldAutorotate
{
  v2 = MGCopyAnswer();
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && v2 != 0;
}

- (void)splashDoneButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  objc_initWeak(&location, self);
  splashNavigationController = [(ServicePrivacyPromptViewController *)self splashNavigationController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AB88;
  v6[3] = &unk_100051060;
  objc_copyWeak(&v7, &location);
  [splashNavigationController dismissViewControllerAnimated:1 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_applyCustomTintColorToViewController:(id)controller
{
  controllerCopy = controller;
  if (qword_100069518 != -1)
  {
    sub_10002C1A8();
  }

  v4 = qword_100069510;
  privacyIdentifier = [(ServicePrivacyPromptViewController *)self privacyIdentifier];
  v6 = [v4 objectForKeyedSubscript:privacyIdentifier];

  if (v6)
  {
    view = [controllerCopy view];
    [view setTintColor:v6];
  }
}

- (void)_dismiss
{
  didContinueAction = [(ServicePrivacyPromptViewController *)self didContinueAction];
  canSendResponse = [didContinueAction canSendResponse];

  if (canSendResponse)
  {
    v5 = objc_alloc_init(BSMutableSettings);
    v6 = [NSNumber numberWithBool:[(ServicePrivacyPromptViewController *)self acknowledgementReceived]];
    [v5 setObject:v6 forSetting:1];

    didContinueAction2 = [(ServicePrivacyPromptViewController *)self didContinueAction];
    v8 = [BSActionResponse responseWithInfo:v5];
    [didContinueAction2 sendResponse:v8];
  }

  _remoteViewControllerProxy = [(ServicePrivacyPromptViewController *)self _remoteViewControllerProxy];
  presentedViewController = [(ServicePrivacyPromptViewController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(ServicePrivacyPromptViewController *)self presentedViewController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000AEAC;
    v12[3] = &unk_100051148;
    v13 = _remoteViewControllerProxy;
    [presentedViewController2 dismissViewControllerAnimated:1 completion:v12];
  }

  else
  {
    [_remoteViewControllerProxy dismiss];
  }
}

- (void)_privacyViewControllerDidFinishWithResult:(unint64_t)result
{
  if (result == 1)
  {
    privacyIdentifier = [(ServicePrivacyPromptViewController *)self privacyIdentifier];
    v5 = [OBPrivacySplashController splashPageWithBundleIdentifier:privacyIdentifier];

    if ([(ServicePrivacyPromptViewController *)self _shouldIncludeAcknowledgementButtonInSplashController])
    {
      objc_initWeak(&location, self);
      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_10000B094;
      v12 = &unk_100051060;
      objc_copyWeak(&v13, &location);
      [v5 setDismissHandlerForDefaultButton:&v9];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    [v5 setShowsLinkToUnifiedAbout:{1, v9, v10, v11, v12}];
    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"splashDoneButtonPressed:"];
    navigationItem = [v5 navigationItem];
    [navigationItem setRightBarButtonItem:v6];

    v8 = [[UINavigationController alloc] initWithRootViewController:v5];
    [v8 setModalPresentationStyle:2];
    [(ServicePrivacyPromptViewController *)self _applyCustomTintColorToViewController:v8];
    [(ServicePrivacyPromptViewController *)self setSplashNavigationController:v8];
    [(ServicePrivacyPromptViewController *)self presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    [(ServicePrivacyPromptViewController *)self setAcknowledgementReceived:1];

    [(ServicePrivacyPromptViewController *)self _dismiss];
  }
}

- (BOOL)_shouldIncludeAcknowledgementButtonInSplashController
{
  if (qword_100069528 != -1)
  {
    sub_10002C1BC();
  }

  v3 = qword_100069520;
  privacyIdentifier = [(ServicePrivacyPromptViewController *)self privacyIdentifier];
  LOBYTE(v3) = [v3 containsObject:privacyIdentifier];

  return v3;
}

@end