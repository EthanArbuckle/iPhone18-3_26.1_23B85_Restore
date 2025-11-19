@interface MusicStoreFlowServiceViewController
+ (id)_cloudServiceSetupURLForAction:(id)a3 queryItems:(id)a4 bagDictionary:(id)a5;
+ (id)_rootViewControllerForViewController:(id)a3;
- (BOOL)storeFlowScriptingClientController:(id)a3 requestsPresentingViewController:(id)a4 animated:(BOOL)a5;
- (MusicStoreFlowServiceViewController)initWithCoder:(id)a3;
- (MusicStoreFlowServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NSString)description;
- (void)_loadStorePageViewControllerWithCloudServiceSetupURL:(id)a3;
- (void)_reloadWithCloudServiceSetupURL:(id)a3 forReloadContext:(id)a4;
- (void)_requestCloudServiceSetupURLFromActiveReloadContextWithCompletionHandler:(id)a3;
- (void)applyConfiguration:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleSafariScriptURL:(id)a3;
- (void)reloadWithContext:(id)a3;
- (void)storeFlowScriptingClientController:(id)a3 overrideCreditCardPresentationWithCompletion:(id)a4;
- (void)viewDidLoad;
@end

@implementation MusicStoreFlowServiceViewController

- (MusicStoreFlowServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = MusicStoreFlowServiceViewController;
  v4 = [(MusicStoreFlowServiceViewController *)&v8 initWithNibName:a3 bundle:a4];
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

- (MusicStoreFlowServiceViewController)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MusicStoreFlowServiceViewController;
  v5 = [(MusicStoreFlowServiceViewController *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_instanceIndex = [v4 decodeIntegerForKey:@"MusicStoreFlowServiceInstanceIndex"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MusicStoreFlowServiceStorePageViewController"];
    storePageViewController = v5->_storePageViewController;
    v5->_storePageViewController = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MusicStoreFlowServiceActiveCloudServiceContext"];
    activeCloudServiceSetupReloadContext = v5->_activeCloudServiceSetupReloadContext;
    v5->_activeCloudServiceSetupReloadContext = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MusicStoreFlowServiceViewController;
  v4 = a3;
  [(MusicStoreFlowServiceViewController *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_instanceIndex forKey:{@"MusicStoreFlowServiceInstanceIndex", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_storePageViewController forKey:@"MusicStoreFlowServiceStorePageViewController"];
  [v4 encodeObject:self->_activeCloudServiceSetupReloadContext forKey:@"MusicStoreFlowServiceActiveCloudServiceContext"];
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

- (void)applyConfiguration:(id)a3
{
  v4 = a3;
  v5 = +[MusicStoreFlowScriptingClientController sharedScriptingClientController];
  [v5 applyCloudServiceSetupConfiguration:v4];

  LODWORD(v5) = [v4 targetsFinanceApplication];
  if (v5)
  {

    [(MusicStoreFlowServiceViewController *)self setNavigationBarHidden:1 animated:0];
  }
}

- (void)reloadWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  objc_storeStrong(&self->_activeCloudServiceSetupReloadContext, v5);
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002EA8;
  v8[3] = &unk_10000C4D0;
  objc_copyWeak(&v11, &location);
  v6 = v5;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [(MusicStoreFlowServiceViewController *)self _requestCloudServiceSetupURLFromActiveReloadContextWithCompletionHandler:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)handleSafariScriptURL:(id)a3
{
  v3 = a3;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:SUScriptInterfaceSafariViewControllerDataUpdate object:v3];
}

- (void)storeFlowScriptingClientController:(id)a3 overrideCreditCardPresentationWithCompletion:(id)a4
{
  v5 = a4;
  v6 = [(MusicStoreFlowServiceViewController *)self _remoteViewControllerProxy];
  [v6 overrideCreditCardPresentationWithCompletion:v5];
}

- (BOOL)storeFlowScriptingClientController:(id)a3 requestsPresentingViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a4;
  v7 = self;
  v8 = [(MusicStoreFlowServiceViewController *)v7 presentedViewController];
  if (v8)
  {
    v9 = v8;
    do
    {
      v10 = v9;

      v9 = [(MusicStoreFlowServiceViewController *)v10 presentedViewController];

      v7 = v10;
    }

    while (v9);
  }

  else
  {
    v10 = v7;
  }

  [(MusicStoreFlowServiceViewController *)v10 presentViewController:v6 animated:1 completion:0];

  return 1;
}

+ (id)_cloudServiceSetupURLForAction:(id)a3 queryItems:(id)a4 bagDictionary:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 objectForKey:@"financeApp"];
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
      v18 = v8;
      v19 = v11;
      v20 = v12;
      v21 = [v7 lowercaseString];
      v22 = [v16 objectForKey:v21];

      if (!v22)
      {
        v22 = v7;
      }

      v23 = [NSString stringWithFormat:@"%@%@", @"https://finance-app.apple.com/", v22];
      v24 = [NSURL URLWithString:v23];

      v25 = v24;
      v12 = v20;
      v11 = v19;
      v8 = v18;
      v10 = v48;
    }

    else
    {
      v25 = 0;
    }

    if (v25)
    {
      if ([v8 count])
      {
        v45 = [[NSURLComponents alloc] initWithURL:v25 resolvingAgainstBaseURL:0];
        v26 = [v45 queryItems];
        v27 = [v26 mutableCopy];
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
        v31 = v8;
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

+ (id)_rootViewControllerForViewController:(id)a3
{
  v3 = a3;
  v4 = [v3 parentViewController];
  v5 = v3;
  if (v4)
  {
    v6 = v4;
    v7 = v3;
    do
    {
      v5 = v6;

      v6 = [v5 parentViewController];

      v7 = v5;
    }

    while (v6);
  }

  return v5;
}

- (void)_loadStorePageViewControllerWithCloudServiceSetupURL:(id)a3
{
  v4 = a3;
  v5 = [[SUAccountViewController alloc] initWithExternalAccountURL:v4];

  storePageViewController = self->_storePageViewController;
  self->_storePageViewController = v5;

  v7 = [(SUStorePageViewController *)self->_storePageViewController copyDefaultScriptProperties];
  v8 = +[UIColor whiteColor];
  [v7 setBackgroundColor:v8];

  v9 = +[UIColor whiteColor];
  v10 = [SUGradient gradientWithColor:v9];
  [v7 setPlaceholderBackgroundGradient:v10];

  [v7 setShouldLoadProgressively:0];
  [v7 setShouldShowFormAccessory:1];
  [(SUStorePageViewController *)self->_storePageViewController setScriptProperties:v7];
  v11 = [(SKCloudServiceSetupReloadContext *)self->_activeCloudServiceSetupReloadContext sourceApplicationBundleIdentifier];
  v12 = [(SKCloudServiceSetupReloadContext *)self->_activeCloudServiceSetupReloadContext referrerURL];
  v13 = [v12 absoluteString];

  if (v11 | v13)
  {
    v14 = [(SUStorePageViewController *)self->_storePageViewController URLRequestProperties];
    v15 = [v14 mutableCopy];

    if (v11)
    {
      [v15 setValue:v11 forHTTPHeaderField:@"ref-user-agent"];
    }

    if (v13)
    {
      [v15 setValue:v13 forHTTPHeaderField:@"referer"];
    }

    [(SUStorePageViewController *)self->_storePageViewController setURLRequestProperties:v15];
  }

  v16 = [(SKCloudServiceSetupReloadContext *)self->_activeCloudServiceSetupReloadContext serializedUserInfo];
  if (v16)
  {
    [(SUStorePageViewController *)self->_storePageViewController setScriptUserInfo:v16];
  }

  [(SUStorePageViewController *)self->_storePageViewController setCanMoveToOverlay:0];
  v17 = self->_storePageViewController;
  v18 = +[MusicStoreFlowScriptingClientController sharedScriptingClientController];
  v19 = [v18 clientInterface];
  [(SUStorePageViewController *)v17 setClientInterface:v19];

  v21 = self->_storePageViewController;
  v20 = [NSArray arrayWithObjects:&v21 count:1];
  [(MusicStoreFlowServiceViewController *)self setViewControllers:v20];
}

- (void)_reloadWithCloudServiceSetupURL:(id)a3 forReloadContext:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (self->_activeCloudServiceSetupReloadContext == v6)
  {
    if (self->_storePageViewController)
    {
      v7 = objc_alloc_init(SUWebScriptReloadContext);
      [v7 setURL:v10];
      v8 = [(SKCloudServiceSetupReloadContext *)self->_activeCloudServiceSetupReloadContext sourceApplicationBundleIdentifier];
      [v7 setReferringUserAgent:v8];

      v9 = [(SKCloudServiceSetupReloadContext *)self->_activeCloudServiceSetupReloadContext referrerURL];
      [v7 setReferrerURL:v9];

      [(SUStorePageViewController *)self->_storePageViewController requestWebScriptReloadWithContext:v7];
    }

    else
    {
      [(MusicStoreFlowServiceViewController *)self _loadStorePageViewControllerWithCloudServiceSetupURL:v10];
    }

    if (([(SUStorePageViewController *)self->_storePageViewController isSkLoaded]& 1) == 0 && ([(SUStorePageViewController *)self->_storePageViewController isSkLoading]& 1) == 0)
    {
      [(SUStorePageViewController *)self->_storePageViewController _reloadForAppearance:0];
    }
  }
}

- (void)_requestCloudServiceSetupURLFromActiveReloadContextWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = self->_activeCloudServiceSetupReloadContext;
  v6 = [(SKCloudServiceSetupReloadContext *)v5 cloudServiceSetupURL];

  if (v6)
  {
    v7 = [(SKCloudServiceSetupReloadContext *)v5 cloudServiceSetupURL];
    v4[2](v4, v7, 0);
  }

  else
  {
    v8 = [(SKCloudServiceSetupReloadContext *)v5 action];
    if (v8)
    {
      objc_initWeak(&location, self);
      v9 = +[ISURLBagLoadingController sharedBagLoadingController];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10000426C;
      v12[3] = &unk_10000C598;
      objc_copyWeak(&v16, &location);
      v13 = v8;
      v14 = v5;
      v15 = v4;
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
      (v4)[2](v4, 0, v11);
    }
  }
}

@end