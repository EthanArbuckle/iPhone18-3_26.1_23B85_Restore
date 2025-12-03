@interface ServiceWebViewPromptViewController
+ (id)_generateClientInterface;
- (BOOL)shouldAutorotate;
- (ServiceWebViewPromptViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_bag;
- (id)_sanitizedURL;
- (id)_viewControllerForType:(int64_t)type;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_determineTypeForURL:(id)l completion:(id)completion;
- (void)_dismiss;
- (void)_presentViewController;
- (void)_willAppearInRemoteViewController;
- (void)attemptDismissHostViewController;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)handleButtonActions:(id)actions;
- (void)viewDidLoad;
@end

@implementation ServiceWebViewPromptViewController

- (ServiceWebViewPromptViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = ServiceWebViewPromptViewController;
  v4 = [(ServiceWebViewPromptViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    _generateClientInterface = [objc_opt_class() _generateClientInterface];
    clientInterface = v4->_clientInterface;
    v4->_clientInterface = _generateClientInterface;

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

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  userInfo = [context userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"URLString"];
  v8 = [userInfo objectForKeyedSubscript:@"referrer"];
  if (v7)
  {
    v9 = [NSURL URLWithString:v7];
    scheme = [v9 scheme];
    v11 = [scheme isEqualToString:@"ams-ui"];

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
    clientInterface = [(ServiceWebViewPromptViewController *)self clientInterface];
    [clientInterface setHostApplicationIdentifier:v8];
  }

  completionCopy[2]();
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
          [(ServiceWebViewPromptViewController *)self _dismiss];
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
  v5.super_class = ServiceWebViewPromptViewController;
  [(ServiceWebViewPromptViewController *)&v5 viewDidLoad];
  view = [(ServiceWebViewPromptViewController *)self view];
  v4 = +[UIColor clearColor];
  [view setBackgroundColor:v4];
}

- (void)_willAppearInRemoteViewController
{
  v4.receiver = self;
  v4.super_class = ServiceWebViewPromptViewController;
  [(ServiceWebViewPromptViewController *)&v4 _willAppearInRemoteViewController];
  _remoteViewControllerProxy = [(ServiceWebViewPromptViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setAllowsAlertItems:1];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
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

- (BOOL)shouldAutorotate
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (void)attemptDismissHostViewController
{
  presentedViewController = [(ServiceWebViewPromptViewController *)self presentedViewController];

  if (!presentedViewController)
  {

    [(ServiceWebViewPromptViewController *)self _dismiss];
  }
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v9 = [[UIPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  [v9 setDelegate:self];

  return v9;
}

- (id)_bag
{
  bagSubProfile = [sub_1000172F4() bagSubProfile];
  bagSubProfileVersion = [sub_1000172F4() bagSubProfileVersion];
  bagKeySet = [sub_1000172F4() bagKeySet];
  [AMSBagKeySet registerBagKeySet:bagKeySet forProfile:bagSubProfile profileVersion:bagSubProfileVersion];

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
  v7 = [v5 bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v7;
}

- (void)_determineTypeForURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
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
    _bag = [(ServiceWebViewPromptViewController *)self _bag];
    v12 = [v10 initWithBag:_bag];

    _sanitizedURL = [(ServiceWebViewPromptViewController *)self _sanitizedURL];
    v14 = [v12 typeForURL:_sanitizedURL];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001761C;
    v16[3] = &unk_100051910;
    v17 = completionCopy;
    v15 = completionCopy;
    [v14 addFinishBlock:v16];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017608;
    block[3] = &unk_100051088;
    v19 = completionCopy;
    v12 = completionCopy;
    dispatch_async(&_dispatch_main_q, block);
    v14 = v19;
  }
}

- (void)_dismiss
{
  _remoteViewControllerProxy = [(ServiceWebViewPromptViewController *)self _remoteViewControllerProxy];
  presentedViewController = [(ServiceWebViewPromptViewController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(ServiceWebViewPromptViewController *)self presentedViewController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000177B8;
    v6[3] = &unk_100051148;
    v7 = _remoteViewControllerProxy;
    [presentedViewController2 dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    [_remoteViewControllerProxy dismiss];
  }
}

+ (id)_generateClientInterface
{
  v2 = objc_alloc_init(SUClientInterface);
  v3 = +[NSBundle mainBundle];
  bundleIdentifier = [v3 bundleIdentifier];
  [v2 setClientIdentifier:bundleIdentifier];

  v5 = +[SUWebViewManager defaultLocalStoragePath];
  [v2 setLocalStoragePath:v5];

  v6 = objc_alloc_init(SKUIViewControllerFactory);
  [v2 setViewControllerFactory:v6];

  return v2;
}

- (void)_presentViewController
{
  _sanitizedURL = [(ServiceWebViewPromptViewController *)self _sanitizedURL];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017910;
  v4[3] = &unk_100051938;
  v4[4] = self;
  [(ServiceWebViewPromptViewController *)self _determineTypeForURL:_sanitizedURL completion:v4];
}

- (id)_sanitizedURL
{
  v3 = [(ServiceWebViewPromptViewController *)self URL];
  absoluteString = [v3 absoluteString];

  v5 = [NSURLComponents alloc];
  v6 = [(ServiceWebViewPromptViewController *)self URL];
  v7 = [v5 initWithURL:v6 resolvingAgainstBaseURL:0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  queryItems = [v7 queryItems];
  v9 = [queryItems countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(queryItems);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        name = [v13 name];
        v15 = [name isEqualToString:@"url"];

        if (v15)
        {
          value = [v13 value];

          absoluteString = value;
          goto LABEL_11;
        }
      }

      v10 = [queryItems countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v17 = [NSURL URLWithString:absoluteString];

  return v17;
}

- (id)_viewControllerForType:(int64_t)type
{
  if (type)
  {
    if (type == 1)
    {
      v10 = +[SSAccountStore defaultStore];
      activeAccount = [v10 activeAccount];

      v11 = [(ServiceWebViewPromptViewController *)self URL];

      if (v11)
      {
        v12 = [ServiceSUAccountViewController alloc];
        v13 = [(ServiceWebViewPromptViewController *)self URL];
        ams_activeiTunesAccount = [(ServiceSUAccountViewController *)v12 initWithExternalAccountURL:v13];
      }

      else
      {
        v18 = objc_alloc_init(ServiceSUAccountViewController);
        ams_activeiTunesAccount = v18;
        if (activeAccount)
        {
          v19 = 2;
        }

        else
        {
          v19 = 1;
        }

        [(ServiceSUAccountViewController *)v18 setStyle:v19];
      }

      clientInterface = [(ServiceWebViewPromptViewController *)self clientInterface];
      [(ServiceSUAccountViewController *)ams_activeiTunesAccount setClientInterface:clientInterface];

      [(ServiceSUAccountViewController *)ams_activeiTunesAccount setEmbeddedParent:self];
      authenticationContext = [(ServiceSUAccountViewController *)ams_activeiTunesAccount authenticationContext];
      v22 = [authenticationContext mutableCopy];

      if (!v22)
      {
        v22 = [[SSMutableAuthenticationContext alloc] initWithAccount:activeAccount];
      }

      [v22 setDisplaysOnLockScreen:1];
      [(ServiceSUAccountViewController *)ams_activeiTunesAccount setAuthenticationContext:v22];
      v7 = [[SUNavigationContainerViewController alloc] initWithChildViewController:ams_activeiTunesAccount];
    }

    else
    {
      if (type != 2)
      {
        v7 = 0;
        goto LABEL_17;
      }

      v4 = [AMSUIDynamicViewController alloc];
      _bag = [(ServiceWebViewPromptViewController *)self _bag];
      _sanitizedURL = [(ServiceWebViewPromptViewController *)self _sanitizedURL];
      v7 = [v4 initWithBag:_bag URL:_sanitizedURL];

      ams_activeiTunesAccount = +[ACAccountStore ams_sharedAccountStore];
      activeAccount = [(ServiceSUAccountViewController *)ams_activeiTunesAccount ams_activeiTunesAccount];
      [(ServiceAMSUIWebViewController *)v7 setAccount:activeAccount];
    }
  }

  else
  {
    v14 = +[ACAccountStore ams_sharedAccountStore];
    ams_activeiTunesAccount = [v14 ams_activeiTunesAccount];

    v15 = [ServiceAMSUIWebViewController alloc];
    _bag2 = [(ServiceWebViewPromptViewController *)self _bag];
    v7 = [(ServiceAMSUIWebViewController *)v15 initWithBag:_bag2 account:ams_activeiTunesAccount clientInfo:0];

    [(ServiceAMSUIWebViewController *)v7 setEmbeddedParent:self];
    activeAccount = [(ServiceWebViewPromptViewController *)self URL];
    v17 = [(ServiceAMSUIWebViewController *)v7 loadURL:activeAccount];
  }

LABEL_17:

  return v7;
}

@end