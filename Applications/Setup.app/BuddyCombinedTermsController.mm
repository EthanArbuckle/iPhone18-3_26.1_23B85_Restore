@interface BuddyCombinedTermsController
+ (id)_termsVersionFromObjectModel:(id)a3;
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5;
- (UINavigationController)navigationController;
- (void)_addHandlersForTermsButtonsToRemoteUIController:(id)a3;
- (void)_addHeadersToRequest:(id)a3;
- (void)_callPresentationCompletionWithNothing;
- (void)_cleanupRemoteUI;
- (void)_userRespondedToCombinedTCsWithAgreement:(BOOL)a3 withSLAVersion:(id)a4;
- (void)controllerDone;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)presentHostedViewControllerOnNavigationController:(id)a3 completion:(id)a4;
- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5;
- (void)remoteUIController:(id)a3 didPresentObjectModel:(id)a4 modally:(BOOL)a5;
- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5;
- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4;
@end

@implementation BuddyCombinedTermsController

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyCombinedTermsController *)self networkProvider:a2];
  v3 = [(BuddyNetworkProvider *)v2 networkReachable];

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[BuddyAppleIDConfigurationManager sharedManager];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100210124;
  v8 = &unk_10032D510;
  v9 = v12;
  v10 = location[0];
  [v3 getURLConfigurationWithHandler:&v4];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)presentHostedViewControllerOnNavigationController:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  [(BuddyCombinedTermsController *)v16 setPresentationCanceled:0];
  v5 = [(BuddyCombinedTermsController *)v16 combinedTermsProvider];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10021035C;
  v10 = &unk_10032F368;
  v11 = v16;
  v12 = location[0];
  v13 = v14;
  [(BuddyCombinedTermsProvider *)v5 fetchTerms:&v6];

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)controllerDone
{
  v2 = [(BuddyCombinedTermsController *)self presentationCompletion];

  if (v2)
  {
    [(BuddyCombinedTermsController *)self _callPresentationCompletionWithNothing];
    [(BuddyCombinedTermsController *)self _cleanupRemoteUI];
  }

  else
  {
    v3 = [(BuddyCombinedTermsController *)self delegate];
    [(BFFFlowItemDelegate *)v3 flowItemDone:self];
  }
}

- (void)_addHeadersToRequest:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

- (void)_addHandlersForTermsButtonsToRemoteUIController:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1002109CC;
  v15 = &unk_10032F390;
  v16 = v18;
  [v3 setHandlerForElementName:@"agree" handler:&v11];
  v4 = location[0];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100210B00;
  v9 = &unk_10032F390;
  v10 = v18;
  [v4 setHandlerForElementName:@"disagree" handler:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_callPresentationCompletionWithNothing
{
  v4 = self;
  location[1] = a2;
  v2 = [(BuddyCombinedTermsController *)self presentationCompletion];

  if (v2)
  {
    location[0] = [(BuddyCombinedTermsController *)v4 presentationCompletion];
    [(BuddyCombinedTermsController *)v4 setPresentationCompletion:0];
    (*(location[0] + 2))(location[0], 0);
    objc_storeStrong(location, 0);
  }
}

- (void)_cleanupRemoteUI
{
  v2 = [(BuddyCombinedTermsController *)self remoteUIController];
  v3 = [(RemoteUIController *)v2 loader];
  [v3 cancel];

  [(BuddyCombinedTermsController *)self setRemoteUIController:0];
}

+ (id)_termsVersionFromObjectModel:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] clientInfo];
  v9 = [v3 objectForKey:@"SLAVersion"];

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

- (void)_userRespondedToCombinedTCsWithAgreement:(BOOL)a3 withSLAVersion:(id)a4
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  objc_storeStrong(&v8, a4);
  if (v9)
  {
    v4 = +[NSFileManager defaultManager];
    [(NSFileManager *)v4 removeItemAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowLicense" error:0];

    +[BYWarranty acknowledge];
    if (v8)
    {
      +[BYLicenseAgreement recordUserAcceptedAgreementVersion:](BYLicenseAgreement, "recordUserAcceptedAgreementVersion:", [v8 unsignedIntegerValue]);
    }

    +[BuddyTermsConditionsFlow didAgreeToServerTerms];
    [(BuddyCombinedTermsController *)v11 controllerDone];
    v5 = [(BuddyCombinedTermsController *)v11 remoteUIController];
    v6 = [(RemoteUIController *)v5 navigationController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v7 = [(BuddyCombinedTermsController *)v11 delegate];
    [(BFFFlowItemDelegate *)v7 flowItemCancelled:v11];
  }

  objc_storeStrong(&v8, 0);
}

- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = a5;
  if (*a5 == 1)
  {
    v7 = [v25 clientInfo];
    v8 = [v7 objectForKeyedSubscript:@"continue"];
    objc_opt_class();
    v22 = 0;
    v20 = 0;
    v9 = 0;
    if (objc_opt_isKindOfClass())
    {
      v23 = [v25 clientInfo];
      v22 = 1;
      v21 = [v23 objectForKeyedSubscript:@"continue"];
      v20 = 1;
      v9 = [v21 BOOLValue];
    }

    if (v20)
    {
    }

    if (v22)
    {
    }

    if (v9)
    {
      +[BuddyTermsConditionsFlow didAgreeToServerTerms];
    }

    [(BuddyCombinedTermsController *)v27 controllerDone];
    v19 = 1;
  }

  else
  {
    if (*v24 == 2)
    {
      v10 = [v25 defaultPages];
      v18 = [v10 firstObject];

      v11 = [v18 presentingViewController];
      if (!v11)
      {
        *v24 = 5;
        v12 = [v18 toolbar];

        if (v12)
        {
          v13 = [v18 leftToolbarButtonItem];

          if (v13)
          {
            v14 = [v18 leftToolbarButtonItem];
            [v18 setLeftNavigationBarButtonItem:v14];
          }

          v15 = [v18 rightToolbarButtonItem];

          if (v15)
          {
            v16 = [v18 rightToolbarButtonItem];
            [v18 setRightNavigationBarButtonItem:v16];
          }

          v17 = [v18 toolbar];
          [v17 setHidden:1];
        }
      }

      objc_storeStrong(&v18, 0);
    }

    v19 = 0;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  [v7 setModalPresentationStyle:2];
  +[OBBaseWelcomeController preferredContentSize];
  [v7 setPreferredContentSize:{v5, v6, *&v5, *&v6, *&v5, *&v6}];
  [v7 setModalInPresentation:1];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 didPresentObjectModel:(id)a4 modally:(BOOL)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = a5;
  v7 = [(BuddyCombinedTermsController *)v14 presentationCompletion];

  if (v7)
  {
    v10 = [(BuddyCombinedTermsController *)v14 presentationCompletion];
    [(BuddyCombinedTermsController *)v14 setPresentationCompletion:0];
    v8 = [v12 displayedPages];
    v9 = [v8 firstObject];
    v10[2](v10, v9);

    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  if (v9)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, v9);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Failed to load combined terms: %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(BuddyCombinedTermsController *)v11 _callPresentationCompletionWithNothing];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  [(BuddyCombinedTermsController *)v11 _addHeadersToRequest:v9];
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