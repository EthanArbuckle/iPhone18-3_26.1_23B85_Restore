@interface ServicePrivacyPromptViewController
- (BOOL)_shouldIncludeAcknowledgementButtonInSplashController;
- (BOOL)shouldAutorotate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applyCustomTintColorToViewController:(id)a3;
- (void)_dismiss;
- (void)_privacyViewControllerDidFinishWithResult:(unint64_t)a3;
- (void)_willAppearInRemoteViewController;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)splashDoneButtonPressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation ServicePrivacyPromptViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (!+[_TtC17StoreKitUIService21objc_LockscreenStatus isDeviceUnlocked])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002C160();
    }

    exit(0);
  }

  v7 = [v12 actions];
  v8 = [v7 allObjects];
  v9 = [v8 firstObject];
  [(ServicePrivacyPromptViewController *)self setDidContinueAction:v9];

  v10 = [v12 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"privacyIdentifier"];
  [(ServicePrivacyPromptViewController *)self setPrivacyIdentifier:v11];

  v6[2](v6);
}

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        if (([*(*(&v9 + 1) + 8 * v8) events] & 0x10) != 0)
        {
          [(ServicePrivacyPromptViewController *)self _dismiss];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v4 = [(ServicePrivacyPromptViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(ServicePrivacyPromptViewController *)self _applyCustomTintColorToViewController:self];
}

- (void)_willAppearInRemoteViewController
{
  v4.receiver = self;
  v4.super_class = ServicePrivacyPromptViewController;
  [(ServicePrivacyPromptViewController *)&v4 _willAppearInRemoteViewController];
  v3 = [(ServicePrivacyPromptViewController *)self _remoteViewControllerProxy];
  [v3 setDesiredHardwareButtonEvents:16];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 2;
  }

  v4 = +[UIApplication sharedApplication];
  v5 = [v4 statusBarOrientation];

  if (MGCopyAnswer())
  {
    return 30;
  }

  else
  {
    return 1 << v5;
  }
}

- (BOOL)shouldAutorotate
{
  v2 = MGCopyAnswer();
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  return (v4 & 0xFFFFFFFFFFFFFFFBLL) == 1 && v2 != 0;
}

- (void)splashDoneButtonPressed:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ServicePrivacyPromptViewController *)self splashNavigationController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AB88;
  v6[3] = &unk_100051060;
  objc_copyWeak(&v7, &location);
  [v5 dismissViewControllerAnimated:1 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_applyCustomTintColorToViewController:(id)a3
{
  v8 = a3;
  if (qword_100069518 != -1)
  {
    sub_10002C1A8();
  }

  v4 = qword_100069510;
  v5 = [(ServicePrivacyPromptViewController *)self privacyIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v8 view];
    [v7 setTintColor:v6];
  }
}

- (void)_dismiss
{
  v3 = [(ServicePrivacyPromptViewController *)self didContinueAction];
  v4 = [v3 canSendResponse];

  if (v4)
  {
    v5 = objc_alloc_init(BSMutableSettings);
    v6 = [NSNumber numberWithBool:[(ServicePrivacyPromptViewController *)self acknowledgementReceived]];
    [v5 setObject:v6 forSetting:1];

    v7 = [(ServicePrivacyPromptViewController *)self didContinueAction];
    v8 = [BSActionResponse responseWithInfo:v5];
    [v7 sendResponse:v8];
  }

  v9 = [(ServicePrivacyPromptViewController *)self _remoteViewControllerProxy];
  v10 = [(ServicePrivacyPromptViewController *)self presentedViewController];

  if (v10)
  {
    v11 = [(ServicePrivacyPromptViewController *)self presentedViewController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000AEAC;
    v12[3] = &unk_100051148;
    v13 = v9;
    [v11 dismissViewControllerAnimated:1 completion:v12];
  }

  else
  {
    [v9 dismiss];
  }
}

- (void)_privacyViewControllerDidFinishWithResult:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = [(ServicePrivacyPromptViewController *)self privacyIdentifier];
    v5 = [OBPrivacySplashController splashPageWithBundleIdentifier:v4];

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
    v7 = [v5 navigationItem];
    [v7 setRightBarButtonItem:v6];

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
  v4 = [(ServicePrivacyPromptViewController *)self privacyIdentifier];
  LOBYTE(v3) = [v3 containsObject:v4];

  return v3;
}

@end