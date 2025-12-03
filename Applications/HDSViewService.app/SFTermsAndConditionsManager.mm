@interface SFTermsAndConditionsManager
- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response;
- (SFTermsAndConditionsManager)initWithPresenter:(id)presenter showWarranty:(BOOL)warranty;
- (void)_handleAgreeFromObjectModel:(id)model;
- (void)activate;
- (void)loadOfflineTerms;
- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error forRequest:(id)request;
- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController;
@end

@implementation SFTermsAndConditionsManager

- (SFTermsAndConditionsManager)initWithPresenter:(id)presenter showWarranty:(BOOL)warranty
{
  presenterCopy = presenter;
  v11.receiver = self;
  v11.super_class = SFTermsAndConditionsManager;
  v8 = [(SFTermsAndConditionsManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_showWarranty = warranty;
    objc_storeStrong(&v8->_presenter, presenter);
  }

  return v9;
}

- (void)activate
{
  v3 = objc_alloc_init(RemoteUIController);
  termsController = self->_termsController;
  self->_termsController = v3;

  [(RemoteUIController *)self->_termsController setHostViewController:self->_presenter];
  loader = [(RemoteUIController *)self->_termsController loader];
  [loader setAllowNonSecureHTTP:IsAppleInternalBuild() != 0];

  v6 = self->_termsController;
  v7 = +[RUIStyle setupAssistantStyle];
  [(RemoteUIController *)v6 setStyle:v7];

  [(RemoteUIController *)self->_termsController setDelegate:self];
  v8 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v8 aa_primaryAppleAccount];

  v10 = [[NSMutableArray alloc] initWithObjects:{&off_1000F3B48, &off_1000F3B98, 0}];
  v11 = v10;
  if (self->_showWarranty)
  {
    [v10 insertObject:&off_1000F3B70 atIndex:1];
  }

  if ([aa_primaryAppleAccount aa_needsToVerifyTerms])
  {
    [v11 addObject:&off_1000F3BC0];
  }

  v23[0] = @"terms";
  v23[1] = @"format";
  v24[0] = v11;
  v24[1] = kAAProtocolGenericTermsUIBuddyMLKey;
  v12 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  v13 = [[AAGenericTermsUIRequest alloc] initWithAccount:aa_primaryAppleAccount parameters:v12 preferPassword:0];
  if (v13)
  {
    objc_initWeak(&location, self);
    v14 = self->_termsController;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100005B38;
    v20[3] = &unk_1000EDB98;
    objc_copyWeak(&v21, &location);
    [(RemoteUIController *)v14 setHandlerForElementName:@"agree" handler:v20];
    v15 = self->_termsController;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100005B94;
    v18[3] = &unk_1000EDB98;
    objc_copyWeak(&v19, &location);
    [(RemoteUIController *)v15 setHandlerForElementName:@"disagree" handler:v18];
    v16 = self->_termsController;
    urlRequest = [v13 urlRequest];
    [(RemoteUIController *)v16 loadRequest:urlRequest completion:&stru_1000EDC00];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SFTermsAndConditionsManager *)self loadOfflineTerms];
  }
}

- (void)_handleAgreeFromObjectModel:(id)model
{
  clientInfo = [model clientInfo];
  v5 = [clientInfo objectForKey:@"agreeUrl"];
  v6 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v6 aa_primaryAppleAccount];

  v8 = [[AAiCloudTermsAgreeRequest alloc] initWithURLString:v5 account:aa_primaryAppleAccount];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005DA4;
  v9[3] = &unk_1000EDC28;
  v9[4] = self;
  [v8 performRequestWithHandler:v9];
}

- (void)loadOfflineTerms
{
  v3 = +[NSBundle mainBundle];
  localizations = [v3 localizations];

  v4 = +[NSLocale preferredLanguages];
  v5 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [v5 objectAtIndex:0];
  v8 = [v6 pathForResource:@"HomePod_Offline_Terms_Warranty" ofType:@"xml" inDirectory:0 forLocalization:v7];

  v9 = [NSData dataWithContentsOfFile:v8];
  self->_showingOfflineTerms = 1;
  termsController = self->_termsController;
  v11 = +[NSBundle mainBundle];
  resourceURL = [v11 resourceURL];
  [(RemoteUIController *)termsController loadData:v9 baseURL:resourceURL];
}

- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error forRequest:(id)request
{
  if (error)
  {
    [(SFTermsAndConditionsManager *)self loadOfflineTerms:controller];
  }
}

- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response
{
  requestCopy = request;
  v6 = objc_opt_new();
  v7 = [v6 appleIDHeadersForRequest:requestCopy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:{v13, v21}];
        [requestCopy setValue:v14 forHTTPHeaderField:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v15 = +[AADeviceInfo userAgentHeader];
  [requestCopy setValue:v15 forHTTPHeaderField:@"User-Agent"];

  v16 = +[AADeviceInfo clientInfoHeader];
  [requestCopy setValue:v16 forHTTPHeaderField:@"X-MMe-Client-Info"];

  v17 = +[NSLocale currentLocale];
  v18 = [v17 objectForKey:NSLocaleCountryCode];
  uppercaseString = [v18 uppercaseString];
  [requestCopy setValue:uppercaseString forHTTPHeaderField:@"X-MMe-Country"];

  return 1;
}

- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController
{
  navigationControllerCopy = navigationController;
  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [navigationControllerCopy setModalPresentationStyle:2];
  }

  if (self->_showingOfflineTerms)
  {
    v8 = [UIBarButtonItem alloc];
    v9 = sub_100006538(@"TERMS_DISAGREE_BUTTON_TITLE");
    v10 = [v8 initWithTitle:v9 style:0 target:self action:"handleDisagreeButton"];

    v11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    v12 = [UIBarButtonItem alloc];
    v13 = sub_100006538(@"TERMS_AGREE_BUTTON_TITLE");
    v14 = [v12 initWithTitle:v13 style:2 target:self action:"handleAgreeButton"];

    [navigationControllerCopy setToolbarHidden:0];
    topViewController = [navigationControllerCopy topViewController];
    v18[0] = v10;
    v18[1] = v11;
    v18[2] = v14;
    v16 = [NSArray arrayWithObjects:v18 count:3];
    [topViewController setToolbarItems:v16 animated:0];
  }

  loadedHandler = [(SFTermsAndConditionsManager *)self loadedHandler];
  loadedHandler[2]();
}

@end