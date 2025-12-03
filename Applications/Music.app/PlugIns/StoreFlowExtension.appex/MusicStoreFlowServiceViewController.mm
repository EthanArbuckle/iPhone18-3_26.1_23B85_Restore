@interface MusicStoreFlowServiceViewController
+ (id)_cloudServiceSetupURLForAction:(id)action queryItems:(id)items bagDictionary:(id)dictionary;
+ (id)_rootViewControllerForViewController:(id)controller;
- (BOOL)storeFlowScriptingClientController:(id)controller requestsPresentingViewController:(id)viewController animated:(BOOL)animated;
- (MusicStoreFlowServiceViewController)initWithCoder:(id)coder;
- (MusicStoreFlowServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NSString)description;
- (void)_loadStorePageViewControllerWithCloudServiceSetupURL:(id)l;
- (void)_reloadWithCloudServiceSetupURL:(id)l forReloadContext:(id)context;
- (void)_requestCloudServiceSetupURLFromActiveReloadContextWithCompletionHandler:(id)handler;
- (void)applyConfiguration:(id)configuration;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleSafariScriptURL:(id)l;
- (void)reloadWithContext:(id)context;
- (void)storeFlowScriptingClientController:(id)controller overrideCreditCardPresentationWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation MusicStoreFlowServiceViewController

- (MusicStoreFlowServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = MusicStoreFlowServiceViewController;
  v4 = [(MusicStoreFlowServiceViewController *)&v8 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_instanceIndex = atomic_fetch_add(&qword_100011778, 1uLL) + 1;
    v6 = +[MusicStoreFlowScriptingClientController sharedScriptingClientController];
    [v6 registerStoreFlowServiceViewController:v5];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[MusicStoreFlowScriptingClientController sharedScriptingClientController];
  [v3 unregisterStoreFlowServiceViewController:self];

  v4.receiver = self;
  v4.super_class = MusicStoreFlowServiceViewController;
  [(MusicStoreFlowServiceViewController *)&v4 dealloc];
}

- (MusicStoreFlowServiceViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MusicStoreFlowServiceViewController;
  v5 = [(MusicStoreFlowServiceViewController *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_instanceIndex = [coderCopy decodeIntegerForKey:@"MusicStoreFlowServiceInstanceIndex"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MusicStoreFlowServiceStorePageViewController"];
    storePageViewController = v5->_storePageViewController;
    v5->_storePageViewController = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MusicStoreFlowServiceActiveCloudServiceContext"];
    activeCloudServiceSetupReloadContext = v5->_activeCloudServiceSetupReloadContext;
    v5->_activeCloudServiceSetupReloadContext = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MusicStoreFlowServiceViewController;
  coderCopy = coder;
  [(MusicStoreFlowServiceViewController *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_instanceIndex forKey:{@"MusicStoreFlowServiceInstanceIndex", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_storePageViewController forKey:@"MusicStoreFlowServiceStorePageViewController"];
  [coderCopy encodeObject:self->_activeCloudServiceSetupReloadContext forKey:@"MusicStoreFlowServiceActiveCloudServiceContext"];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"<%@: %p [%ld]", v4, self, self->_instanceIndex];

  if (self->_activeCloudServiceSetupReloadContext)
  {
    [v5 appendFormat:@"; activeCloudServiceSetupReloadContext = %@", self->_activeCloudServiceSetupReloadContext];
  }

  [v5 appendString:@">"];

  return v5;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MusicStoreFlowServiceViewController;
  [(MusicStoreFlowServiceViewController *)&v4 viewDidLoad];
  v3 = +[MusicStoreFlowScriptingClientController sharedScriptingClientController];
  [v3 storeFlowServiceViewControllerDidLoad:self];
}

- (void)applyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = +[MusicStoreFlowScriptingClientController sharedScriptingClientController];
  [v5 applyCloudServiceSetupConfiguration:configurationCopy];

  LODWORD(v5) = [configurationCopy targetsFinanceApplication];
  if (v5)
  {

    [(MusicStoreFlowServiceViewController *)self setNavigationBarHidden:1 animated:0];
  }
}

- (void)reloadWithContext:(id)context
{
  contextCopy = context;
  v5 = [contextCopy copy];
  objc_storeStrong(&self->_activeCloudServiceSetupReloadContext, v5);
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002EA8;
  v8[3] = &unk_10000C4D0;
  objc_copyWeak(&v11, &location);
  v6 = v5;
  v9 = v6;
  v7 = contextCopy;
  v10 = v7;
  [(MusicStoreFlowServiceViewController *)self _requestCloudServiceSetupURLFromActiveReloadContextWithCompletionHandler:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)handleSafariScriptURL:(id)l
{
  lCopy = l;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:SUScriptInterfaceSafariViewControllerDataUpdate object:lCopy];
}

- (void)storeFlowScriptingClientController:(id)controller overrideCreditCardPresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  _remoteViewControllerProxy = [(MusicStoreFlowServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy overrideCreditCardPresentationWithCompletion:completionCopy];
}

- (BOOL)storeFlowScriptingClientController:(id)controller requestsPresentingViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  selfCopy = self;
  presentedViewController = [(MusicStoreFlowServiceViewController *)selfCopy presentedViewController];
  if (presentedViewController)
  {
    presentedViewController2 = presentedViewController;
    do
    {
      v10 = presentedViewController2;

      presentedViewController2 = [(MusicStoreFlowServiceViewController *)v10 presentedViewController];

      selfCopy = v10;
    }

    while (presentedViewController2);
  }

  else
  {
    v10 = selfCopy;
  }

  [(MusicStoreFlowServiceViewController *)v10 presentViewController:viewControllerCopy animated:1 completion:0];

  return 1;
}

+ (id)_cloudServiceSetupURLForAction:(id)action queryItems:(id)items bagDictionary:(id)dictionary
{
  actionCopy = action;
  itemsCopy = items;
  v9 = [dictionary objectForKey:@"financeApp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Music"];
    v12 = [v11 stringForKey:@"FinanceApplicationScriptBaseURL"];
    if (![v12 length])
    {
      v13 = v12;
      v14 = [v10 objectForKey:@"baseUrl"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;

        v13 = v15;
      }

      v12 = v13;
    }

    v16 = objc_alloc_init(NSMutableDictionary);
    v17 = [v10 objectForKey:@"urlPath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100003860;
      v54[3] = &unk_10000C520;
      v55 = v16;
      [v17 enumerateKeysAndObjectsUsingBlock:v54];
    }

    if (v12)
    {
      v48 = v10;
      v18 = itemsCopy;
      v19 = v11;
      v20 = v12;
      lowercaseString = [actionCopy lowercaseString];
      v22 = [v16 objectForKey:lowercaseString];

      if (!v22)
      {
        v22 = actionCopy;
      }

      v23 = [NSString stringWithFormat:@"%@%@", @"https://finance-app.apple.com/", v22];
      v24 = [NSURL URLWithString:v23];

      v25 = v24;
      v12 = v20;
      v11 = v19;
      itemsCopy = v18;
      v10 = v48;
    }

    else
    {
      v25 = 0;
    }

    if (v25)
    {
      if ([itemsCopy count])
      {
        v45 = [[NSURLComponents alloc] initWithURL:v25 resolvingAgainstBaseURL:0];
        queryItems = [v45 queryItems];
        v27 = [queryItems mutableCopy];
        v28 = v27;
        v46 = v25;
        v47 = v12;
        if (v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = objc_alloc_init(NSMutableArray);
        }

        v30 = v29;

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v31 = itemsCopy;
        v32 = [v31 countByEnumeratingWithState:&v50 objects:v56 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v51;
          do
          {
            for (i = 0; i != v33; i = i + 1)
            {
              if (*v51 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v50 + 1) + 8 * i);
              v49[0] = _NSConcreteStackBlock;
              v49[1] = 3221225472;
              v49[2] = sub_100003A14;
              v49[3] = &unk_10000C548;
              v49[4] = v36;
              v37 = [v30 indexOfObjectPassingTest:v49];
              if (v37 == 0x7FFFFFFFFFFFFFFFLL)
              {
                [v30 addObject:v36];
              }

              else
              {
                [v30 replaceObjectAtIndex:v37 withObject:v36];
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v50 objects:v56 count:16];
          }

          while (v33);
        }

        [v45 setQueryItems:v30];
        v38 = [v45 URL];
        v39 = v38;
        if (v38)
        {
          v25 = v38;
        }

        else
        {
          v25 = v46;
        }

        v12 = v47;
      }

      if (v12)
      {
        [v25 absoluteString];
        v41 = v40 = v25;
        v42 = [v41 mutableCopy];

        [v42 replaceCharactersInRange:0 withString:{objc_msgSend(@"https://finance-app.apple.com/", "length"), v12}];
        v25 = [NSURL URLWithString:v42];
      }
    }
  }

  else
  {
    v12 = 0;
    v25 = 0;
  }

  v43 = v25;

  return v25;
}

+ (id)_rootViewControllerForViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [controllerCopy parentViewController];
  v5 = controllerCopy;
  if (parentViewController)
  {
    parentViewController2 = parentViewController;
    v7 = controllerCopy;
    do
    {
      v5 = parentViewController2;

      parentViewController2 = [v5 parentViewController];

      v7 = v5;
    }

    while (parentViewController2);
  }

  return v5;
}

- (void)_loadStorePageViewControllerWithCloudServiceSetupURL:(id)l
{
  lCopy = l;
  v5 = [[SUAccountViewController alloc] initWithExternalAccountURL:lCopy];

  storePageViewController = self->_storePageViewController;
  self->_storePageViewController = v5;

  copyDefaultScriptProperties = [(SUStorePageViewController *)self->_storePageViewController copyDefaultScriptProperties];
  v8 = +[UIColor whiteColor];
  [copyDefaultScriptProperties setBackgroundColor:v8];

  v9 = +[UIColor whiteColor];
  v10 = [SUGradient gradientWithColor:v9];
  [copyDefaultScriptProperties setPlaceholderBackgroundGradient:v10];

  [copyDefaultScriptProperties setShouldLoadProgressively:0];
  [copyDefaultScriptProperties setShouldShowFormAccessory:1];
  [(SUStorePageViewController *)self->_storePageViewController setScriptProperties:copyDefaultScriptProperties];
  sourceApplicationBundleIdentifier = [(SKCloudServiceSetupReloadContext *)self->_activeCloudServiceSetupReloadContext sourceApplicationBundleIdentifier];
  referrerURL = [(SKCloudServiceSetupReloadContext *)self->_activeCloudServiceSetupReloadContext referrerURL];
  absoluteString = [referrerURL absoluteString];

  if (sourceApplicationBundleIdentifier | absoluteString)
  {
    uRLRequestProperties = [(SUStorePageViewController *)self->_storePageViewController URLRequestProperties];
    v15 = [uRLRequestProperties mutableCopy];

    if (sourceApplicationBundleIdentifier)
    {
      [v15 setValue:sourceApplicationBundleIdentifier forHTTPHeaderField:@"ref-user-agent"];
    }

    if (absoluteString)
    {
      [v15 setValue:absoluteString forHTTPHeaderField:@"referer"];
    }

    [(SUStorePageViewController *)self->_storePageViewController setURLRequestProperties:v15];
  }

  serializedUserInfo = [(SKCloudServiceSetupReloadContext *)self->_activeCloudServiceSetupReloadContext serializedUserInfo];
  if (serializedUserInfo)
  {
    [(SUStorePageViewController *)self->_storePageViewController setScriptUserInfo:serializedUserInfo];
  }

  [(SUStorePageViewController *)self->_storePageViewController setCanMoveToOverlay:0];
  v17 = self->_storePageViewController;
  v18 = +[MusicStoreFlowScriptingClientController sharedScriptingClientController];
  clientInterface = [v18 clientInterface];
  [(SUStorePageViewController *)v17 setClientInterface:clientInterface];

  v21 = self->_storePageViewController;
  v20 = [NSArray arrayWithObjects:&v21 count:1];
  [(MusicStoreFlowServiceViewController *)self setViewControllers:v20];
}

- (void)_reloadWithCloudServiceSetupURL:(id)l forReloadContext:(id)context
{
  lCopy = l;
  contextCopy = context;
  if (self->_activeCloudServiceSetupReloadContext == contextCopy)
  {
    if (self->_storePageViewController)
    {
      v7 = objc_alloc_init(SUWebScriptReloadContext);
      [v7 setURL:lCopy];
      sourceApplicationBundleIdentifier = [(SKCloudServiceSetupReloadContext *)self->_activeCloudServiceSetupReloadContext sourceApplicationBundleIdentifier];
      [v7 setReferringUserAgent:sourceApplicationBundleIdentifier];

      referrerURL = [(SKCloudServiceSetupReloadContext *)self->_activeCloudServiceSetupReloadContext referrerURL];
      [v7 setReferrerURL:referrerURL];

      [(SUStorePageViewController *)self->_storePageViewController requestWebScriptReloadWithContext:v7];
    }

    else
    {
      [(MusicStoreFlowServiceViewController *)self _loadStorePageViewControllerWithCloudServiceSetupURL:lCopy];
    }

    if (([(SUStorePageViewController *)self->_storePageViewController isSkLoaded]& 1) == 0 && ([(SUStorePageViewController *)self->_storePageViewController isSkLoading]& 1) == 0)
    {
      [(SUStorePageViewController *)self->_storePageViewController _reloadForAppearance:0];
    }
  }
}

- (void)_requestCloudServiceSetupURLFromActiveReloadContextWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_activeCloudServiceSetupReloadContext;
  cloudServiceSetupURL = [(SKCloudServiceSetupReloadContext *)v5 cloudServiceSetupURL];

  if (cloudServiceSetupURL)
  {
    cloudServiceSetupURL2 = [(SKCloudServiceSetupReloadContext *)v5 cloudServiceSetupURL];
    handlerCopy[2](handlerCopy, cloudServiceSetupURL2, 0);
  }

  else
  {
    action = [(SKCloudServiceSetupReloadContext *)v5 action];
    if (action)
    {
      objc_initWeak(&location, self);
      v9 = +[ISURLBagLoadingController sharedBagLoadingController];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10000426C;
      v12[3] = &unk_10000C598;
      objc_copyWeak(&v16, &location);
      v13 = action;
      v14 = v5;
      v15 = handlerCopy;
      [v9 requestAccessToBagUsingBlock:v12];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      v18 = NSLocalizedDescriptionKey;
      v19 = @"Cloud service setup reload context needs to have at least a URL or an action.";
      v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v11 = [NSError errorWithDomain:NSCocoaErrorDomain code:0 userInfo:v10];
      (handlerCopy)[2](handlerCopy, 0, v11);
    }
  }
}

@end