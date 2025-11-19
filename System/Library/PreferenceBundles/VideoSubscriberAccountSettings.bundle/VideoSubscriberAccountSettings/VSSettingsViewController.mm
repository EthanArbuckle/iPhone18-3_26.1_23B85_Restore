@interface VSSettingsViewController
- (VSSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_appWillForeground;
- (void)_confirmDeletionOfAccount:(id)a3 withAccountInfoViewController:(id)a4;
- (void)_forciblySignOutOfAccount:(id)a3;
- (void)_handleDestination:(id)a3 completion:(id)a4;
- (void)_loadAppropriateChildViewController;
- (void)_presentAlertForError:(id)a3 offeringToDeleteAccount:(id)a4;
- (void)_presentError:(id)a3;
- (void)_presentError:(id)a3 withAccount:(id)a4;
- (void)_removeCurrentChildViewControllerIfNecessary;
- (void)_setupAppropriateChildViewController;
- (void)_startSigningOutOfAccount:(id)a3 withAccountInfoViewController:(id)a4;
- (void)_updateChildViewController:(id)a3 searchController:(id)a4 rightBarButtonItem:(id)a5;
- (void)accountInfoViewController:(id)a3 didSelectEditAccountForAccount:(id)a4 identityProvider:(id)a5;
- (void)accountInfoViewControllerWantsMoreApps:(id)a3;
- (void)dealloc;
- (void)dismissIdentityProviderViewController:(id)a3;
- (void)enqueueOperation:(id)a3;
- (void)handleDestination:(id)a3 completion:(id)a4;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)identityProviderPickerViewController:(id)a3 didPickIdentityProvider:(id)a4;
- (void)identityProviderRequestManager:(id)a3 finishedRequest:(id)a4 withResult:(id)a5;
- (void)identityProviderViewController:(id)a3 didFinishRequest:(id)a4 withResult:(id)a5;
- (void)identityProviderViewControllerDidCancel:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentAccountsViewController:(id)a3;
- (void)presentIdentityProvidersViewController;
- (void)remoteNotifier:(id)a3 didReceiveRemoteNotificationWithUserInfo:(id)a4;
- (void)setCurrentChildViewController:(id)a3;
- (void)setCurrentOperation:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation VSSettingsViewController

- (VSSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v18.receiver = self;
  v18.super_class = VSSettingsViewController;
  v4 = [(VSSettingsViewController *)&v18 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(VSPersistentStorage);
    storage = v4->_storage;
    v4->_storage = v5;

    v7 = +[VSRestrictionsCenter defaultRestrictionsCenter];
    restrictionsCenter = v4->_restrictionsCenter;
    v4->_restrictionsCenter = v7;

    v9 = [VSRemoteNotifier alloc];
    v10 = [v9 initWithNotificationName:VSAccountStoreDidChangeNotification];
    remoteNotifier = v4->_remoteNotifier;
    v4->_remoteNotifier = v10;

    [(VSRemoteNotifier *)v4->_remoteNotifier setDelegate:v4];
    v12 = objc_alloc_init(NSOperationQueue);
    privateQueue = v4->_privateQueue;
    v4->_privateQueue = v12;

    [(NSOperationQueue *)v4->_privateQueue setName:@"VSSettingsViewController"];
    [(NSOperationQueue *)v4->_privateQueue setMaxConcurrentOperationCount:1];
    v4->_shouldShowMVPDAppInstallPrompt = 0;
    v14 = objc_alloc_init(VSASDDialogObserver);
    [(VSASDDialogObserver *)v14 setPresenterViewController:v4];
    [(VSSettingsViewController *)v4 setDialogObserver:v14];
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v4 selector:"_didEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v4 selector:"_appWillForeground" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v4;
}

- (void)willMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = VSSettingsViewController;
  [(VSSettingsViewController *)&v4 willMoveToParentViewController:?];
  if (a3)
  {
    [VSMetricsManagerObjC recordEnterEventWithPage:VSMetricPageSettingsHome pageType:VSMetricPageTypeSettings];
  }

  else
  {
    [VSMetricsManagerObjC recordExitEventWithPage:VSMetricPageSettingsHome pageType:VSMetricPageTypeSettings];
  }
}

- (void)dealloc
{
  VSRequireMainThread();
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [(VSSettingsViewController *)self dialogObserver];
  [v4 stopListening];

  v5.receiver = self;
  v5.super_class = VSSettingsViewController;
  [(VSSettingsViewController *)&v5 dealloc];
}

- (void)_appWillForeground
{
  v3 = [(VSSettingsViewController *)self navigationController];
  v4 = [v3 visibleViewController];

  if (v4 == self)
  {
    v5 = VSMetricPageSettingsHome;
    v6 = VSMetricPageTypeSettings;

    [VSMetricsManagerObjC recordEnterEventWithPage:v5 pageType:v6];
  }
}

- (void)identityProviderPickerViewController:(id)a3 didPickIdentityProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  VSRequireMainThread();
  [VSMetricsManagerObjC recordClickEventWithPage:VSMetricPageSettingsPicker pageType:VSMetricPageTypeSettings target:VSMetricClickTargetIdentityProvider];
  if ([v7 isFullySupportedForRequestsExpectingAuthenticationSchemes:0])
  {
    v8 = [(VSSettingsViewController *)self storage];
    v9 = [VSIdentityProviderRequest makeAccountRequestWithStorage:v8];

    v10 = [[VSIdentityProviderViewController alloc] initWithIdentityProvider:v7];
    [v10 setDelegate:self];
    [v10 setCanIssuePrivacyVouchers:1];
    [v10 enqueueRequest:v9];
    [(VSSettingsViewController *)self showController:v10 animate:1];
  }

  else
  {
    v11 = +[VSViewControllerFactory sharedFactory];
    v12 = [(VSSettingsViewController *)self storage];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_4D70;
    v18 = &unk_18828;
    v19 = self;
    v20 = v6;
    v13 = [v11 viewControllerForUnsupportedProvider:v7 withRequestingAppDisplayName:0 storage:v12 acknowledgementHandler:&v15];

    v14 = [v13 forceUnwrapObject];
    [(VSSettingsViewController *)self presentViewController:v14 animated:1 completion:0];
  }
}

- (void)remoteNotifier:(id)a3 didReceiveRemoteNotificationWithUserInfo:(id)a4
{
  [(VSSettingsViewController *)self _setupAppropriateChildViewController:a3];
  v6 = [(VSSettingsViewController *)self navigationController];
  v5 = [v6 popToViewController:self animated:1];
}

- (void)accountInfoViewControllerWantsMoreApps:(id)a3
{
  v3 = [a3 identityProvider];
  v5 = [v3 appStoreRoomURL];

  v4 = v5;
  if (v5)
  {
    VSOpenURL();
    v4 = v5;
  }
}

- (void)accountInfoViewController:(id)a3 didSelectEditAccountForAccount:(id)a4 identityProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isFullySupportedForRequestsExpectingAuthenticationSchemes:0])
  {
    [(VSSettingsViewController *)self _confirmDeletionOfAccount:v9 withAccountInfoViewController:v8];
  }

  else
  {
    v11 = objc_initWeak(&location, v8);
    [(VSSettingsViewController *)self _startSigningOutOfAccount:v9 withAccountInfoViewController:v8];

    objc_destroyWeak(&location);
  }
}

- (void)identityProviderRequestManager:(id)a3 finishedRequest:(id)a4 withResult:(id)a5
{
  v7 = a4;
  v8 = a5;
  VSRequireMainThread();
  [(VSSettingsViewController *)self setRequestManager:0];
  v9 = [v7 account];

  if (!v9)
  {
    [NSException raise:NSInvalidArgumentException format:@"The [request account] parameter must not be nil."];
  }

  [v7 account];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5324;
  v13[3] = &unk_18850;
  v13[4] = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_5398;
  v11[3] = &unk_18878;
  v12 = v11[4] = self;
  v10 = v12;
  [v8 unwrapObject:v13 error:v11];
}

- (void)dismissIdentityProviderViewController:(id)a3
{
  v7 = [a3 navigationController];
  v3 = [v7 viewControllers];
  v4 = [v3 count];

  if (v4 < 2)
  {
    v6 = [v7 presentingViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v5 = [v7 popViewControllerAnimated:1];
  }
}

- (void)identityProviderViewControllerDidCancel:(id)a3
{
  v7 = [a3 navigationController];
  v3 = [v7 viewControllers];
  v4 = [v3 count];

  if (v4 < 2)
  {
    v6 = [v7 presentingViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v5 = [v7 popViewControllerAnimated:1];
  }
}

- (void)identityProviderViewController:(id)a3 didFinishRequest:(id)a4 withResult:(id)a5
{
  v6 = a5;
  v7 = [v6 object];

  if (v7)
  {
    [(VSSettingsViewController *)self _setupAppropriateChildViewController];
    [(VSSettingsViewController *)self setShouldShowMVPDAppInstallPrompt:1];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_56C4;
  v15[3] = &unk_188E0;
  v8 = v6;
  v16 = v8;
  v17 = self;
  v9 = objc_retainBlock(v15);
  v10 = [(VSSettingsViewController *)self presentedViewController];

  if (v10)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_57A4;
    v13[3] = &unk_18788;
    v14 = v9;
    [(VSSettingsViewController *)self dismissViewControllerAnimated:1 completion:v13];
  }

  else
  {
    v11 = [(VSSettingsViewController *)self navigationController];
    v12 = [v11 popToViewController:self animated:1];

    (v9[2])(v9);
  }
}

- (void)setSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = VSSettingsViewController;
  v4 = a3;
  [(VSSettingsViewController *)&v6 setSpecifier:v4];
  v5 = [v4 objectForKeyedSubscript:{@"VSSettingsViewModelKVOString", v6.receiver, v6.super_class}];

  [(VSSettingsViewController *)self setSettingsVM:v5];
}

- (void)_forciblySignOutOfAccount:(id)a3
{
  v4 = a3;
  VSRequireMainThread();
  v5 = [(VSSettingsViewController *)self storage];
  v6 = [v5 channelsCenter];
  [v6 _removeSavedAccountChannelsWithCompletionHandler:0];

  v7 = [v5 privacyFacade];
  [v7 reset];

  v8 = [v5 accountStore];
  v11 = v4;
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_5988;
  v10[3] = &unk_18908;
  v10[4] = self;
  [v8 removeAccounts:v9 withCompletionHandler:v10];
}

- (void)_startSigningOutOfAccount:(id)a3 withAccountInfoViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VSSettingsViewController *)self privateQueue];
  v9 = [VSIdentityProviderFetchOperation alloc];
  v10 = [v6 identityProviderID];
  v11 = [v10 forceUnwrapObject];
  v12 = [v9 initWithIdentityProviderID:v11];

  [v8 addOperation:v12];
  v18 = v12;
  v19 = v6;
  v13 = v6;
  v14 = v12;
  v15 = VSMainThreadOperationWithBlock();
  [v15 addDependency:v14];
  VSEnqueueCompletionOperation();
  v16 = +[NSBundle vs_frameworkBundle];
  v17 = [v16 localizedStringForKey:@"SIGNING_OUT_TITLE" value:0 table:0];
  [(VSSettingsViewController *)self _showLoadingViewControllerWithTitle:v17];

  [v7 disableAccountSignOutButton];
}

- (void)_confirmDeletionOfAccount:(id)a3 withAccountInfoViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, v7);
  v8 = +[VSViewControllerFactory sharedFactory];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_5FC8;
  v14 = &unk_18980;
  v15 = self;
  v9 = v6;
  v16 = v9;
  objc_copyWeak(&v17, &location);
  v10 = [v8 viewControllerToConfirmAccountDeletionForAccount:v9 preferredStyle:1 confirmationHandler:&v11];

  [(VSSettingsViewController *)self presentViewController:v10 animated:1 completion:0, v11, v12, v13, v14, v15];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

- (void)_presentAlertForError:(id)a3 offeringToDeleteAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v10 = [v6 userInfo];
    v11 = [v10 mutableCopy];

    v12 = objc_alloc_init(VSErrorRecoveryOption);
    v13 = +[NSBundle vs_frameworkBundle];
    v14 = [v13 localizedStringForKey:@"ERROR_DISMISS_BUTTON_TITLE" value:0 table:0];
    [v12 setLocalizedAlertButtonTitle:v14];

    v15 = objc_alloc_init(VSErrorRecoveryOption);
    v16 = +[NSBundle vs_frameworkBundle];
    v17 = [v16 localizedStringForKey:@"SIGN_OUT_BUTTON_TITLE" value:0 table:0];
    [v15 setLocalizedAlertButtonTitle:v17];

    [v15 setDestructive:1];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_62D8;
    v25[3] = &unk_189A8;
    v25[4] = self;
    v26 = v9;
    v18 = v9;
    [v15 setAttemptHandler:v25];
    v27[0] = v12;
    v27[1] = v15;
    v19 = [NSArray arrayWithObjects:v27 count:2];
    v20 = VSUserInfoForErrorRecoveryOptions();
    [v11 addEntriesFromDictionary:v20];

    v21 = [v6 domain];
    v22 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v21, [v6 code], v11);

    v6 = v22;
  }

  v23 = VSErrorLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_B604();
  }

  v24 = VSAlertForError();
  [(VSSettingsViewController *)self presentViewController:v24 animated:1 completion:0];
}

- (void)_presentError:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(VSOptional);
  [(VSSettingsViewController *)self _presentError:v4 withAccount:v5];
}

- (void)_presentError:(id)a3 withAccount:(id)a4
{
  v6 = a4;
  v7 = a3;
  IsPrivateError = VSErrorIsPrivateError();
  v9 = objc_alloc_init(VSErrorViewController);
  [v9 setRecoveryDestructive:IsPrivateError];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_658C;
  v17[3] = &unk_189D0;
  v20 = IsPrivateError;
  v10 = v6;
  v18 = v10;
  v19 = self;
  v11 = objc_retainBlock(v17);
  v12 = VSPrivateAccountLoadingErrorWithRecoveryHandler();

  [v9 setError:v12];
  [(VSSettingsViewController *)self _updateChildViewController:v9 searchController:0 rightBarButtonItem:0];
  v13 = [(VSSettingsViewController *)self settingsVM];
  v14 = [v13 specifierID];

  if (v14)
  {
    v15 = [(VSSettingsViewController *)self accountInfoViewController];

    if (v15)
    {
      if (([v14 isEqualToString:@"signIn"] & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", @"signOut") & 1) == 0)
      {
        v16 = VSDefaultLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v14;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Unhandled Deeplink SpecifierID: %@", buf, 0xCu);
        }
      }

      [(VSSettingsViewModel *)self->_settingsVM setSpecifierID:0];
    }
  }
}

- (void)presentAccountsViewController:(id)a3
{
  v4 = a3;
  v5 = [(VSSettingsViewController *)self storage];
  v6 = [(VSSettingsViewController *)self privateQueue];
  v7 = [(VSSettingsViewController *)self restrictionsCenter];
  v8 = [[VSAccountInfoViewController alloc] initWithAccount:v4 storage:v5 restrictionsCenter:v7];
  accountInfoViewController = self->_accountInfoViewController;
  self->_accountInfoViewController = v8;

  [(VSAccountInfoViewController *)self->_accountInfoViewController setDelegate:self];
  [(VSSettingsViewController *)self _updateChildViewController:self->_accountInfoViewController searchController:0 rightBarButtonItem:0];
  v10 = [VSIdentityProviderFetchOperation alloc];
  v11 = [v4 identityProviderID];
  v12 = [v11 forceUnwrapObject];
  v13 = [v10 initWithIdentityProviderID:v12];

  v17 = v13;
  v18 = v4;
  v14 = v4;
  v15 = v13;
  v16 = VSMainThreadOperationWithBlock();
  [v6 addOperation:v15];
  [v16 addDependency:v15];
  VSEnqueueCompletionOperation();
}

- (void)presentIdentityProvidersViewController
{
  v3 = objc_alloc_init(VSIdentityProviderFetchAllOperation);
  v4 = objc_alloc_init(VSStorefrontCodeLoadOperation);
  v5 = objc_alloc_init(VSAMSStorefrontFetchAllOperation);
  objc_initWeak(&location, v3);
  objc_initWeak(&from, v4);
  objc_initWeak(&v15, v5);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_6D88;
  v13[4] = sub_6D98;
  v14 = 0;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  objc_copyWeak(&v12, &v15);
  v9 = v3;
  v6 = VSMainThreadOperationWithBlock();
  v7 = [[VSTimeoutOperation alloc] initWithOperation:v9 timeout:30.0];
  [v5 addDependency:v4];
  [v9 addDependency:v5];
  [v7 addDependency:v5];
  [v6 addDependency:v7];
  v8 = [(VSSettingsViewController *)self privateQueue];
  [v8 addOperation:v4];
  [v8 addOperation:v5];
  [v8 addOperation:v7];
  VSEnqueueCompletionOperation();

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  _Block_object_dispose(v13, 8);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)_loadAppropriateChildViewController
{
  v3 = [(VSSettingsViewController *)self storage];
  v4 = [v3 accountStore];
  v5 = [v4 firstAccountIfLoaded];

  if (v5)
  {
    [(VSSettingsViewController *)self presentAccountsViewController:v5];
  }

  else
  {
    v6 = [v3 accountStore];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_7560;
    v7[3] = &unk_18800;
    v7[4] = self;
    [v6 fetchAccountsWithCompletionHandler:v7];
  }
}

- (void)_setupAppropriateChildViewController
{
  VSRequireMainThread();
  v3 = [(VSSettingsViewController *)self storage];
  v4 = [v3 accountStore];
  v5 = [v4 firstAccountIfLoaded];

  [(VSSettingsViewController *)self _showLoadingViewControllerWithTitle:0 andSpinner:v5 == 0];
  [(VSSettingsViewController *)self _loadAppropriateChildViewController];
}

- (void)_updateChildViewController:(id)a3 searchController:(id)a4 rightBarButtonItem:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if (!v15)
  {
    [NSException raise:NSInvalidArgumentException format:@"The newChildViewController parameter must not be nil."];
  }

  VSRequireMainThread();
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([(VSSettingsViewController *)self currentChildViewController], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass))
  {
    v12 = v15;
    v13 = [(VSSettingsViewController *)self currentChildViewController];
    v14 = [v12 loadingTitle];

    [v13 setLoadingTitle:v14];
  }

  else
  {
    [(VSSettingsViewController *)self _removeCurrentChildViewControllerIfNecessary];
    [(VSSettingsViewController *)self addChildViewController:v15];
    v13 = [v15 view];
    v14 = [(VSSettingsViewController *)self view];
    [v14 bounds];
    [v13 setFrame:?];
    [v13 setAutoresizingMask:18];
    [v14 addSubview:v13];
    [v15 didMoveToParentViewController:self];
    [(VSSettingsViewController *)self setCurrentChildViewController:v15];
    [(VSSettingsViewController *)self vs_updateNavigationItemAndForceViewReloadWithSearchController:v8 rightBarButtonItem:v9];
  }
}

- (void)setCurrentChildViewController:(id)a3
{
  v4 = a3;
  if ([(UIViewController *)v4 conformsToProtocol:&OBJC_PROTOCOL___VSDestinationHandler])
  {
    v5 = [(VSSettingsViewController *)self currentChildViewController];
    [v5 removeObserver:self forKeyPath:@"readyToHandleDeepLinks" context:0];
  }

  [(VSSettingsViewController *)self setReadyToHandleDeepLinks:0];
  currentChildViewController = self->_currentChildViewController;
  self->_currentChildViewController = v4;
  v7 = v4;

  LODWORD(currentChildViewController) = [(UIViewController *)v7 conformsToProtocol:&OBJC_PROTOCOL___VSDestinationHandler];
  if (currentChildViewController)
  {
    v8 = [(VSSettingsViewController *)self currentChildViewController];
    [v8 addObserver:self forKeyPath:@"readyToHandleDeepLinks" options:5 context:0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"readyToHandleDeepLinks"])
  {
    v13 = [(VSSettingsViewController *)self currentChildViewController];

    if (v13 == v11)
    {
      v14 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
      v15 = [v14 BOOLValue];

      [(VSSettingsViewController *)self setReadyToHandleDeepLinks:v15];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = VSSettingsViewController;
    [(VSSettingsViewController *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)enqueueOperation:(id)a3
{
  v3 = a3;
  v4 = +[NSOperationQueue mainQueue];
  if (v3)
  {
    if (([v3 isFinished] & 1) == 0 && (objc_msgSend(v3, "isExecuting") & 1) == 0)
    {
      v5 = [v4 operations];
      v6 = [v5 containsObject:v3];

      if ((v6 & 1) == 0)
      {
        v7 = VSDefaultLogObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v3 debugDescription];
          v9 = 138412290;
          v10 = v8;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Enqueing operation %@", &v9, 0xCu);
        }

        [v4 addOperation:v3];
      }
    }
  }
}

- (void)_removeCurrentChildViewControllerIfNecessary
{
  v3 = [(VSSettingsViewController *)self currentChildViewController];
  if (v3)
  {
    v5 = v3;
    [v3 willMoveToParentViewController:0];
    v4 = [v5 view];
    [v4 removeFromSuperview];

    [v5 removeFromParentViewController];
    [(VSSettingsViewController *)self setCurrentChildViewController:0];
    v3 = v5;
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = VSSettingsViewController;
  [(VSSettingsViewController *)&v7 viewDidLoad];
  v3 = +[NSBundle vs_frameworkBundle];
  v4 = [v3 localizedStringForKey:@"TV_PROVIDER_TITLE" value:0 table:0];
  [(VSSettingsViewController *)self setTitle:v4];

  [(VSSettingsViewController *)self _setupAppropriateChildViewController];
  v5 = [(VSSettingsViewController *)self navigationItem];
  [v5 setLargeTitleDisplayMode:2];
  v6 = [(VSSettingsViewController *)self dialogObserver];
  [v6 startListening];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = VSSettingsViewController;
  [(VSSettingsViewController *)&v3 viewDidLayoutSubviews];
  [(VSSettingsViewController *)self vs_adjustContentScrollViewInsets];
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 description];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Received URL resource dictionary: %@", &v11, 0xCu);
  }

  v10 = VSDestinationFromResourceDictionary();
  if (v10)
  {
    [(VSSettingsViewController *)self _handleDestination:v10 completion:v7];
  }
}

- (void)setCurrentOperation:(id)a3
{
  v4 = a3;
  if (![(VSSettingsViewController *)self isReadyToHandleDeepLinks])
  {
    v8 = VSDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VSDestinationOperation *)v4 debugDescription];
      v10 = v9;
      if (!v9)
      {
        v10 = +[NSNull null];
      }

      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Not ready, set current operation to %@", &v11, 0xCu);
      if (!v9)
      {
      }
    }

    currentOperation = self->_currentOperation;
    self->_currentOperation = v4;
    goto LABEL_15;
  }

  if (self->_currentOperation)
  {
    [(VSDestinationOperation *)v4 addDependency:?];
  }

  v5 = self->_currentOperation;
  self->_currentOperation = v4;

  if (v4)
  {
    v6 = VSDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Already ready...", &v11, 2u);
    }

    currentOperation = [(VSSettingsViewController *)self currentOperation];
    [(VSSettingsViewController *)self enqueueOperation:currentOperation];
LABEL_15:
  }
}

- (void)_handleDestination:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = [[VSDestinationOperation alloc] initWithDestination:v5 viewController:self];

  [(VSSettingsViewController *)self setCurrentOperation:v6];
}

- (void)handleDestination:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VSSettingsViewController *)self currentChildViewController];
  v9 = [v8 conformsToProtocol:&OBJC_PROTOCOL___VSDestinationHandler];

  if (v9)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_8800;
    v15[3] = &unk_18B50;
    v15[4] = self;
    v16 = v6;
    v17 = v7;
    [(VSSettingsViewController *)self vs_makeFrontmostAnimated:1 completion:v15];
  }

  else
  {
    v10 = [(VSSettingsViewController *)self currentChildViewController];
    v11 = [v10 debugDescription];
    v12 = v11;
    if (!v11)
    {
      v12 = +[NSNull null];
    }

    v13 = [NSString stringWithFormat:@"Invalid childViewController %@", v12];
    v14 = VSDestinationError();
    (*(v7 + 2))(v7, 0, v14);

    if (!v11)
    {
    }
  }
}

@end