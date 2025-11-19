@interface ServiceWebViewPromptViewController
+ (id)_generateClientInterface;
- (BOOL)shouldAutorotate;
- (ServiceWebViewPromptViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_bag;
- (id)_sanitizedURL;
- (id)_viewControllerForType:(int64_t)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (unint64_t)supportedInterfaceOrientations;
- (void)_determineTypeForURL:(id)a3 completion:(id)a4;
- (void)_dismiss;
- (void)_presentViewController;
- (void)_willAppearInRemoteViewController;
- (void)attemptDismissHostViewController;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)handleButtonActions:(id)a3;
- (void)viewDidLoad;
@end

@implementation ServiceWebViewPromptViewController

- (ServiceWebViewPromptViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = ServiceWebViewPromptViewController;
  v4 = [(ServiceWebViewPromptViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [objc_opt_class() _generateClientInterface];
    clientInterface = v4->_clientInterface;
    v4->_clientInterface = v5;

    [(SUClientInterface *)v4->_clientInterface setDelegate:v4];
  }

  return v4;
}

- (void)dealloc
{
  [(SUClientInterface *)self->_clientInterface setDelegate:0];
  v3.receiver = self;
  v3.super_class = ServiceWebViewPromptViewController;
  [(ServiceWebViewPromptViewController *)&v3 dealloc];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v17 = a4;
  v6 = [a3 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"URLString"];
  v8 = [v6 objectForKeyedSubscript:@"referrer"];
  if (v7)
  {
    v9 = [NSURL URLWithString:v7];
    v10 = [v9 scheme];
    v11 = [v10 isEqualToString:@"ams-ui"];

    if (v11)
    {
      [(ServiceWebViewPromptViewController *)self setShouldUseAMS:1];
    }

    if ([v8 isEqualToString:@"com.apple.appstored"] && (objc_msgSend(v9, "host"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"localhost"), v12, (v13 & 1) != 0))
    {
      v14 = @"http";
    }

    else
    {
      v14 = @"https";
    }

    v15 = [v9 urlByReplacingSchemeWithScheme:v14];

    [(ServiceWebViewPromptViewController *)self setURL:v15];
  }

  if ([v8 length])
  {
    v16 = [(ServiceWebViewPromptViewController *)self clientInterface];
    [v16 setHostApplicationIdentifier:v8];
  }

  v17[2]();
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
          [(ServiceWebViewPromptViewController *)self _dismiss];
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
  v5.super_class = ServiceWebViewPromptViewController;
  [(ServiceWebViewPromptViewController *)&v5 viewDidLoad];
  v3 = [(ServiceWebViewPromptViewController *)self view];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];
}

- (void)_willAppearInRemoteViewController
{
  v4.receiver = self;
  v4.super_class = ServiceWebViewPromptViewController;
  [(ServiceWebViewPromptViewController *)&v4 _willAppearInRemoteViewController];
  v3 = [(ServiceWebViewPromptViewController *)self _remoteViewControllerProxy];
  [v3 setDesiredHardwareButtonEvents:16];
  [v3 setAllowsAlertItems:1];
  [v3 setAllowsAlertStacking:1];
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

- (BOOL)shouldAutorotate
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return (v3 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (void)attemptDismissHostViewController
{
  v3 = [(ServiceWebViewPromptViewController *)self presentedViewController];

  if (!v3)
  {

    [(ServiceWebViewPromptViewController *)self _dismiss];
  }
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[UIPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v7];

  [v9 setDelegate:self];

  return v9;
}

- (id)_bag
{
  v2 = [sub_1000172F4() bagSubProfile];
  v3 = [sub_1000172F4() bagSubProfileVersion];
  v4 = [sub_1000172F4() bagKeySet];
  [AMSBagKeySet registerBagKeySet:v4 forProfile:v2 profileVersion:v3];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = qword_100069560;
  v13 = qword_100069560;
  if (!qword_100069560)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000180EC;
    v9[3] = &unk_1000517C0;
    v9[4] = &v10;
    sub_1000180EC(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7 = [v5 bagForProfile:v2 profileVersion:v3];

  return v7;
}

- (void)_determineTypeForURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ServiceWebViewPromptViewController *)self shouldUseAMS])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v8 = qword_100069570;
    v24 = qword_100069570;
    if (!qword_100069570)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000182B4;
      v20[3] = &unk_1000517C0;
      v20[4] = &v21;
      sub_1000182B4(v20);
      v8 = v22[3];
    }

    v9 = v8;
    _Block_object_dispose(&v21, 8);
    v10 = [v8 alloc];
    v11 = [(ServiceWebViewPromptViewController *)self _bag];
    v12 = [v10 initWithBag:v11];

    v13 = [(ServiceWebViewPromptViewController *)self _sanitizedURL];
    v14 = [v12 typeForURL:v13];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001761C;
    v16[3] = &unk_100051910;
    v17 = v7;
    v15 = v7;
    [v14 addFinishBlock:v16];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017608;
    block[3] = &unk_100051088;
    v19 = v7;
    v12 = v7;
    dispatch_async(&_dispatch_main_q, block);
    v14 = v19;
  }
}

- (void)_dismiss
{
  v3 = [(ServiceWebViewPromptViewController *)self _remoteViewControllerProxy];
  v4 = [(ServiceWebViewPromptViewController *)self presentedViewController];

  if (v4)
  {
    v5 = [(ServiceWebViewPromptViewController *)self presentedViewController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000177B8;
    v6[3] = &unk_100051148;
    v7 = v3;
    [v5 dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    [v3 dismiss];
  }
}

+ (id)_generateClientInterface
{
  v2 = objc_alloc_init(SUClientInterface);
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  [v2 setClientIdentifier:v4];

  v5 = +[SUWebViewManager defaultLocalStoragePath];
  [v2 setLocalStoragePath:v5];

  v6 = objc_alloc_init(SKUIViewControllerFactory);
  [v2 setViewControllerFactory:v6];

  return v2;
}

- (void)_presentViewController
{
  v3 = [(ServiceWebViewPromptViewController *)self _sanitizedURL];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017910;
  v4[3] = &unk_100051938;
  v4[4] = self;
  [(ServiceWebViewPromptViewController *)self _determineTypeForURL:v3 completion:v4];
}

- (id)_sanitizedURL
{
  v3 = [(ServiceWebViewPromptViewController *)self URL];
  v4 = [v3 absoluteString];

  v5 = [NSURLComponents alloc];
  v6 = [(ServiceWebViewPromptViewController *)self URL];
  v7 = [v5 initWithURL:v6 resolvingAgainstBaseURL:0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 queryItems];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 name];
        v15 = [v14 isEqualToString:@"url"];

        if (v15)
        {
          v16 = [v13 value];

          v4 = v16;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v17 = [NSURL URLWithString:v4];

  return v17;
}

- (id)_viewControllerForType:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v10 = +[SSAccountStore defaultStore];
      v9 = [v10 activeAccount];

      v11 = [(ServiceWebViewPromptViewController *)self URL];

      if (v11)
      {
        v12 = [ServiceSUAccountViewController alloc];
        v13 = [(ServiceWebViewPromptViewController *)self URL];
        v8 = [(ServiceSUAccountViewController *)v12 initWithExternalAccountURL:v13];
      }

      else
      {
        v18 = objc_alloc_init(ServiceSUAccountViewController);
        v8 = v18;
        if (v9)
        {
          v19 = 2;
        }

        else
        {
          v19 = 1;
        }

        [(ServiceSUAccountViewController *)v18 setStyle:v19];
      }

      v20 = [(ServiceWebViewPromptViewController *)self clientInterface];
      [(ServiceSUAccountViewController *)v8 setClientInterface:v20];

      [(ServiceSUAccountViewController *)v8 setEmbeddedParent:self];
      v21 = [(ServiceSUAccountViewController *)v8 authenticationContext];
      v22 = [v21 mutableCopy];

      if (!v22)
      {
        v22 = [[SSMutableAuthenticationContext alloc] initWithAccount:v9];
      }

      [v22 setDisplaysOnLockScreen:1];
      [(ServiceSUAccountViewController *)v8 setAuthenticationContext:v22];
      v7 = [[SUNavigationContainerViewController alloc] initWithChildViewController:v8];
    }

    else
    {
      if (a3 != 2)
      {
        v7 = 0;
        goto LABEL_17;
      }

      v4 = [AMSUIDynamicViewController alloc];
      v5 = [(ServiceWebViewPromptViewController *)self _bag];
      v6 = [(ServiceWebViewPromptViewController *)self _sanitizedURL];
      v7 = [v4 initWithBag:v5 URL:v6];

      v8 = +[ACAccountStore ams_sharedAccountStore];
      v9 = [(ServiceSUAccountViewController *)v8 ams_activeiTunesAccount];
      [(ServiceAMSUIWebViewController *)v7 setAccount:v9];
    }
  }

  else
  {
    v14 = +[ACAccountStore ams_sharedAccountStore];
    v8 = [v14 ams_activeiTunesAccount];

    v15 = [ServiceAMSUIWebViewController alloc];
    v16 = [(ServiceWebViewPromptViewController *)self _bag];
    v7 = [(ServiceAMSUIWebViewController *)v15 initWithBag:v16 account:v8 clientInfo:0];

    [(ServiceAMSUIWebViewController *)v7 setEmbeddedParent:self];
    v9 = [(ServiceWebViewPromptViewController *)self URL];
    v17 = [(ServiceAMSUIWebViewController *)v7 loadURL:v9];
  }

LABEL_17:

  return v7;
}

@end