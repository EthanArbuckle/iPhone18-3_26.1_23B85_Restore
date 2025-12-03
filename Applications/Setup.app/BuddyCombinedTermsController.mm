@interface BuddyCombinedTermsController
+ (id)_termsVersionFromObjectModel:(id)model;
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response;
- (UINavigationController)navigationController;
- (void)_addHandlersForTermsButtonsToRemoteUIController:(id)controller;
- (void)_addHeadersToRequest:(id)request;
- (void)_callPresentationCompletionWithNothing;
- (void)_cleanupRemoteUI;
- (void)_userRespondedToCombinedTCsWithAgreement:(BOOL)agreement withSLAVersion:(id)version;
- (void)controllerDone;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)presentHostedViewControllerOnNavigationController:(id)controller completion:(id)completion;
- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error forRequest:(id)request;
- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal;
- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController;
@end

@implementation BuddyCombinedTermsController

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyCombinedTermsController *)self networkProvider:a2];
  networkReachable = [(BuddyNetworkProvider *)v2 networkReachable];

  return networkReachable & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = +[BuddyAppleIDConfigurationManager sharedManager];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100210124;
  v8 = &unk_10032D510;
  v9 = selfCopy;
  v10 = location[0];
  [v3 getURLConfigurationWithHandler:&v4];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)presentHostedViewControllerOnNavigationController:(id)controller completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  [(BuddyCombinedTermsController *)selfCopy setPresentationCanceled:0];
  combinedTermsProvider = [(BuddyCombinedTermsController *)selfCopy combinedTermsProvider];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10021035C;
  v10 = &unk_10032F368;
  v11 = selfCopy;
  v12 = location[0];
  v13 = v14;
  [(BuddyCombinedTermsProvider *)combinedTermsProvider fetchTerms:&v6];

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)controllerDone
{
  presentationCompletion = [(BuddyCombinedTermsController *)self presentationCompletion];

  if (presentationCompletion)
  {
    [(BuddyCombinedTermsController *)self _callPresentationCompletionWithNothing];
    [(BuddyCombinedTermsController *)self _cleanupRemoteUI];
  }

  else
  {
    delegate = [(BuddyCombinedTermsController *)self delegate];
    [(BFFFlowItemDelegate *)delegate flowItemDone:self];
  }
}

- (void)_addHeadersToRequest:(id)request
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v3 = +[BuddyAccountTools sharedBuddyAccountTools];
  [v3 addAccountHeadersToRequest:location[0]];

  v4 = objc_opt_new();
  v13 = [v4 appleIDHeadersForRequest:location[0]];

  memset(v11, 0, sizeof(v11));
  v5 = v13;
  v6 = [v5 countByEnumeratingWithState:v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v11[2];
    do
    {
      for (i = 0; i < v6; ++i)
      {
        if (*v11[2] != v7)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(v11[1] + 8 * i);
        v9 = location[0];
        v10 = [v13 objectForKeyedSubscript:v12];
        [v9 setValue:v10 forHTTPHeaderField:v12];
      }

      v6 = [v5 countByEnumeratingWithState:v11 objects:v15 count:16];
    }

    while (v6);
  }

  if ((+[BYWarranty shouldDisplay]& 1) != 0)
  {
    [location[0] setValue:@"true" forHTTPHeaderField:@"X-MMe-Show-Warranty"];
  }

  [location[0] setValue:@"true" forHTTPHeaderField:@"X-Mme-Setup-FCE048DE-F34F-4FAF-A6DD-6C8AC9DF0C54"];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_addHandlersForTermsButtonsToRemoteUIController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = location[0];
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1002109CC;
  v15 = &unk_10032F390;
  v16 = selfCopy;
  [v3 setHandlerForElementName:@"agree" handler:&v11];
  v4 = location[0];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100210B00;
  v9 = &unk_10032F390;
  v10 = selfCopy;
  [v4 setHandlerForElementName:@"disagree" handler:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_callPresentationCompletionWithNothing
{
  selfCopy = self;
  location[1] = a2;
  presentationCompletion = [(BuddyCombinedTermsController *)self presentationCompletion];

  if (presentationCompletion)
  {
    location[0] = [(BuddyCombinedTermsController *)selfCopy presentationCompletion];
    [(BuddyCombinedTermsController *)selfCopy setPresentationCompletion:0];
    (*(location[0] + 2))(location[0], 0);
    objc_storeStrong(location, 0);
  }
}

- (void)_cleanupRemoteUI
{
  remoteUIController = [(BuddyCombinedTermsController *)self remoteUIController];
  loader = [(RemoteUIController *)remoteUIController loader];
  [loader cancel];

  [(BuddyCombinedTermsController *)self setRemoteUIController:0];
}

+ (id)_termsVersionFromObjectModel:(id)model
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  clientInfo = [location[0] clientInfo];
  v9 = [clientInfo objectForKey:@"SLAVersion"];

  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100071CBC(buf, v9);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "SLA version in combined terms: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if ([v9 hasPrefix:@"EA"])
  {
    v4 = [v9 substringFromIndex:2];
    v5 = v9;
    v9 = v4;
  }

  if ([v9 integerValue] <= 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 integerValue]);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  v6 = v11;

  return v6;
}

- (void)_userRespondedToCombinedTCsWithAgreement:(BOOL)agreement withSLAVersion:(id)version
{
  selfCopy = self;
  v10 = a2;
  agreementCopy = agreement;
  v8 = 0;
  objc_storeStrong(&v8, version);
  if (agreementCopy)
  {
    v4 = +[NSFileManager defaultManager];
    [(NSFileManager *)v4 removeItemAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowLicense" error:0];

    +[BYWarranty acknowledge];
    if (v8)
    {
      +[BYLicenseAgreement recordUserAcceptedAgreementVersion:](BYLicenseAgreement, "recordUserAcceptedAgreementVersion:", [v8 unsignedIntegerValue]);
    }

    +[BuddyTermsConditionsFlow didAgreeToServerTerms];
    [(BuddyCombinedTermsController *)selfCopy controllerDone];
    remoteUIController = [(BuddyCombinedTermsController *)selfCopy remoteUIController];
    navigationController = [(RemoteUIController *)remoteUIController navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    delegate = [(BuddyCombinedTermsController *)selfCopy delegate];
    [(BFFFlowItemDelegate *)delegate flowItemCancelled:selfCopy];
  }

  objc_storeStrong(&v8, 0);
}

- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v25 = 0;
  objc_storeStrong(&v25, model);
  signalCopy = signal;
  if (*signal == 1)
  {
    clientInfo = [v25 clientInfo];
    v8 = [clientInfo objectForKeyedSubscript:@"continue"];
    objc_opt_class();
    v22 = 0;
    v20 = 0;
    bOOLValue = 0;
    if (objc_opt_isKindOfClass())
    {
      clientInfo2 = [v25 clientInfo];
      v22 = 1;
      v21 = [clientInfo2 objectForKeyedSubscript:@"continue"];
      v20 = 1;
      bOOLValue = [v21 BOOLValue];
    }

    if (v20)
    {
    }

    if (v22)
    {
    }

    if (bOOLValue)
    {
      +[BuddyTermsConditionsFlow didAgreeToServerTerms];
    }

    [(BuddyCombinedTermsController *)selfCopy controllerDone];
    v19 = 1;
  }

  else
  {
    if (*signalCopy == 2)
    {
      defaultPages = [v25 defaultPages];
      firstObject = [defaultPages firstObject];

      presentingViewController = [firstObject presentingViewController];
      if (!presentingViewController)
      {
        *signalCopy = 5;
        toolbar = [firstObject toolbar];

        if (toolbar)
        {
          leftToolbarButtonItem = [firstObject leftToolbarButtonItem];

          if (leftToolbarButtonItem)
          {
            leftToolbarButtonItem2 = [firstObject leftToolbarButtonItem];
            [firstObject setLeftNavigationBarButtonItem:leftToolbarButtonItem2];
          }

          rightToolbarButtonItem = [firstObject rightToolbarButtonItem];

          if (rightToolbarButtonItem)
          {
            rightToolbarButtonItem2 = [firstObject rightToolbarButtonItem];
            [firstObject setRightNavigationBarButtonItem:rightToolbarButtonItem2];
          }

          toolbar2 = [firstObject toolbar];
          [toolbar2 setHidden:1];
        }
      }

      objc_storeStrong(&firstObject, 0);
    }

    v19 = 0;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v7 = 0;
  objc_storeStrong(&v7, navigationController);
  [v7 setModalPresentationStyle:2];
  +[OBBaseWelcomeController preferredContentSize];
  [v7 setPreferredContentSize:{v5, v6, *&v5, *&v6, *&v5, *&v6}];
  [v7 setModalInPresentation:1];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v12 = 0;
  objc_storeStrong(&v12, model);
  modallyCopy = modally;
  presentationCompletion = [(BuddyCombinedTermsController *)selfCopy presentationCompletion];

  if (presentationCompletion)
  {
    presentationCompletion2 = [(BuddyCombinedTermsController *)selfCopy presentationCompletion];
    [(BuddyCombinedTermsController *)selfCopy setPresentationCompletion:0];
    displayedPages = [v12 displayedPages];
    firstObject = [displayedPages firstObject];
    presentationCompletion2[2](presentationCompletion2, firstObject);

    objc_storeStrong(&presentationCompletion2, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error forRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = 0;
  objc_storeStrong(&v9, error);
  v8 = 0;
  objc_storeStrong(&v8, request);
  if (v9)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, v9);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Failed to load combined terms: %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(BuddyCombinedTermsController *)selfCopy _callPresentationCompletionWithNothing];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = 0;
  objc_storeStrong(&v9, request);
  v8 = 0;
  objc_storeStrong(&v8, response);
  [(BuddyCombinedTermsController *)selfCopy _addHeadersToRequest:v9];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

@end