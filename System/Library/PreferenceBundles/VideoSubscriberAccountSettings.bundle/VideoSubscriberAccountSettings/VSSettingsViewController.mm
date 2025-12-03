@interface VSSettingsViewController
- (VSSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_appWillForeground;
- (void)_confirmDeletionOfAccount:(id)account withAccountInfoViewController:(id)controller;
- (void)_forciblySignOutOfAccount:(id)account;
- (void)_handleDestination:(id)destination completion:(id)completion;
- (void)_loadAppropriateChildViewController;
- (void)_presentAlertForError:(id)error offeringToDeleteAccount:(id)account;
- (void)_presentError:(id)error;
- (void)_presentError:(id)error withAccount:(id)account;
- (void)_removeCurrentChildViewControllerIfNecessary;
- (void)_setupAppropriateChildViewController;
- (void)_startSigningOutOfAccount:(id)account withAccountInfoViewController:(id)controller;
- (void)_updateChildViewController:(id)controller searchController:(id)searchController rightBarButtonItem:(id)item;
- (void)accountInfoViewController:(id)controller didSelectEditAccountForAccount:(id)account identityProvider:(id)provider;
- (void)accountInfoViewControllerWantsMoreApps:(id)apps;
- (void)dealloc;
- (void)dismissIdentityProviderViewController:(id)controller;
- (void)enqueueOperation:(id)operation;
- (void)handleDestination:(id)destination completion:(id)completion;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)identityProviderPickerViewController:(id)controller didPickIdentityProvider:(id)provider;
- (void)identityProviderRequestManager:(id)manager finishedRequest:(id)request withResult:(id)result;
- (void)identityProviderViewController:(id)controller didFinishRequest:(id)request withResult:(id)result;
- (void)identityProviderViewControllerDidCancel:(id)cancel;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentAccountsViewController:(id)controller;
- (void)presentIdentityProvidersViewController;
- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info;
- (void)setCurrentChildViewController:(id)controller;
- (void)setCurrentOperation:(id)operation;
- (void)setSpecifier:(id)specifier;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation VSSettingsViewController

- (VSSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v18.receiver = self;
  v18.super_class = VSSettingsViewController;
  v4 = [(VSSettingsViewController *)&v18 initWithNibName:name bundle:bundle];
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

- (void)willMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = VSSettingsViewController;
  [(VSSettingsViewController *)&v4 willMoveToParentViewController:?];
  if (controller)
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

  dialogObserver = [(VSSettingsViewController *)self dialogObserver];
  [dialogObserver stopListening];

  v5.receiver = self;
  v5.super_class = VSSettingsViewController;
  [(VSSettingsViewController *)&v5 dealloc];
}

- (void)_appWillForeground
{
  navigationController = [(VSSettingsViewController *)self navigationController];
  visibleViewController = [navigationController visibleViewController];

  if (visibleViewController == self)
  {
    v5 = VSMetricPageSettingsHome;
    v6 = VSMetricPageTypeSettings;

    [VSMetricsManagerObjC recordEnterEventWithPage:v5 pageType:v6];
  }
}

- (void)identityProviderPickerViewController:(id)controller didPickIdentityProvider:(id)provider
{
  controllerCopy = controller;
  providerCopy = provider;
  VSRequireMainThread();
  [VSMetricsManagerObjC recordClickEventWithPage:VSMetricPageSettingsPicker pageType:VSMetricPageTypeSettings target:VSMetricClickTargetIdentityProvider];
  if ([providerCopy isFullySupportedForRequestsExpectingAuthenticationSchemes:0])
  {
    storage = [(VSSettingsViewController *)self storage];
    v9 = [VSIdentityProviderRequest makeAccountRequestWithStorage:storage];

    v10 = [[VSIdentityProviderViewController alloc] initWithIdentityProvider:providerCopy];
    [v10 setDelegate:self];
    [v10 setCanIssuePrivacyVouchers:1];
    [v10 enqueueRequest:v9];
    [(VSSettingsViewController *)self showController:v10 animate:1];
  }

  else
  {
    v11 = +[VSViewControllerFactory sharedFactory];
    storage2 = [(VSSettingsViewController *)self storage];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_4D70;
    v18 = &unk_18828;
    selfCopy = self;
    v20 = controllerCopy;
    v13 = [v11 viewControllerForUnsupportedProvider:providerCopy withRequestingAppDisplayName:0 storage:storage2 acknowledgementHandler:&v15];

    forceUnwrapObject = [v13 forceUnwrapObject];
    [(VSSettingsViewController *)self presentViewController:forceUnwrapObject animated:1 completion:0];
  }
}

- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info
{
  [(VSSettingsViewController *)self _setupAppropriateChildViewController:notifier];
  navigationController = [(VSSettingsViewController *)self navigationController];
  v5 = [navigationController popToViewController:self animated:1];
}

- (void)accountInfoViewControllerWantsMoreApps:(id)apps
{
  identityProvider = [apps identityProvider];
  appStoreRoomURL = [identityProvider appStoreRoomURL];

  v4 = appStoreRoomURL;
  if (appStoreRoomURL)
  {
    VSOpenURL();
    v4 = appStoreRoomURL;
  }
}

- (void)accountInfoViewController:(id)controller didSelectEditAccountForAccount:(id)account identityProvider:(id)provider
{
  controllerCopy = controller;
  accountCopy = account;
  providerCopy = provider;
  if ([providerCopy isFullySupportedForRequestsExpectingAuthenticationSchemes:0])
  {
    [(VSSettingsViewController *)self _confirmDeletionOfAccount:accountCopy withAccountInfoViewController:controllerCopy];
  }

  else
  {
    v11 = objc_initWeak(&location, controllerCopy);
    [(VSSettingsViewController *)self _startSigningOutOfAccount:accountCopy withAccountInfoViewController:controllerCopy];

    objc_destroyWeak(&location);
  }
}

- (void)identityProviderRequestManager:(id)manager finishedRequest:(id)request withResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  VSRequireMainThread();
  [(VSSettingsViewController *)self setRequestManager:0];
  account = [requestCopy account];

  if (!account)
  {
    [NSException raise:NSInvalidArgumentException format:@"The [request account] parameter must not be nil."];
  }

  [requestCopy account];
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
  [resultCopy unwrapObject:v13 error:v11];
}

- (void)dismissIdentityProviderViewController:(id)controller
{
  navigationController = [controller navigationController];
  viewControllers = [navigationController viewControllers];
  v4 = [viewControllers count];

  if (v4 < 2)
  {
    presentingViewController = [navigationController presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v5 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)identityProviderViewControllerDidCancel:(id)cancel
{
  navigationController = [cancel navigationController];
  viewControllers = [navigationController viewControllers];
  v4 = [viewControllers count];

  if (v4 < 2)
  {
    presentingViewController = [navigationController presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v5 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)identityProviderViewController:(id)controller didFinishRequest:(id)request withResult:(id)result
{
  resultCopy = result;
  object = [resultCopy object];

  if (object)
  {
    [(VSSettingsViewController *)self _setupAppropriateChildViewController];
    [(VSSettingsViewController *)self setShouldShowMVPDAppInstallPrompt:1];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_56C4;
  v15[3] = &unk_188E0;
  v8 = resultCopy;
  v16 = v8;
  selfCopy = self;
  v9 = objc_retainBlock(v15);
  presentedViewController = [(VSSettingsViewController *)self presentedViewController];

  if (presentedViewController)
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
    navigationController = [(VSSettingsViewController *)self navigationController];
    v12 = [navigationController popToViewController:self animated:1];

    (v9[2])(v9);
  }
}

- (void)setSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = VSSettingsViewController;
  specifierCopy = specifier;
  [(VSSettingsViewController *)&v6 setSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:{@"VSSettingsViewModelKVOString", v6.receiver, v6.super_class}];

  [(VSSettingsViewController *)self setSettingsVM:v5];
}

- (void)_forciblySignOutOfAccount:(id)account
{
  accountCopy = account;
  VSRequireMainThread();
  storage = [(VSSettingsViewController *)self storage];
  channelsCenter = [storage channelsCenter];
  [channelsCenter _removeSavedAccountChannelsWithCompletionHandler:0];

  privacyFacade = [storage privacyFacade];
  [privacyFacade reset];

  accountStore = [storage accountStore];
  v11 = accountCopy;
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_5988;
  v10[3] = &unk_18908;
  v10[4] = self;
  [accountStore removeAccounts:v9 withCompletionHandler:v10];
}

- (void)_startSigningOutOfAccount:(id)account withAccountInfoViewController:(id)controller
{
  accountCopy = account;
  controllerCopy = controller;
  privateQueue = [(VSSettingsViewController *)self privateQueue];
  v9 = [VSIdentityProviderFetchOperation alloc];
  identityProviderID = [accountCopy identityProviderID];
  forceUnwrapObject = [identityProviderID forceUnwrapObject];
  v12 = [v9 initWithIdentityProviderID:forceUnwrapObject];

  [privateQueue addOperation:v12];
  v18 = v12;
  v19 = accountCopy;
  v13 = accountCopy;
  v14 = v12;
  v15 = VSMainThreadOperationWithBlock();
  [v15 addDependency:v14];
  VSEnqueueCompletionOperation();
  v16 = +[NSBundle vs_frameworkBundle];
  v17 = [v16 localizedStringForKey:@"SIGNING_OUT_TITLE" value:0 table:0];
  [(VSSettingsViewController *)self _showLoadingViewControllerWithTitle:v17];

  [controllerCopy disableAccountSignOutButton];
}

- (void)_confirmDeletionOfAccount:(id)account withAccountInfoViewController:(id)controller
{
  accountCopy = account;
  controllerCopy = controller;
  objc_initWeak(&location, controllerCopy);
  v8 = +[VSViewControllerFactory sharedFactory];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_5FC8;
  v14 = &unk_18980;
  selfCopy = self;
  v9 = accountCopy;
  v16 = v9;
  objc_copyWeak(&v17, &location);
  v10 = [v8 viewControllerToConfirmAccountDeletionForAccount:v9 preferredStyle:1 confirmationHandler:&v11];

  [(VSSettingsViewController *)self presentViewController:v10 animated:1 completion:0, v11, v12, v13, v14, selfCopy];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

- (void)_presentAlertForError:(id)error offeringToDeleteAccount:(id)account
{
  errorCopy = error;
  accountCopy = account;
  v8 = accountCopy;
  if (accountCopy)
  {
    v9 = accountCopy;
    userInfo = [errorCopy userInfo];
    v11 = [userInfo mutableCopy];

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

    domain = [errorCopy domain];
    v22 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [errorCopy code], v11);

    errorCopy = v22;
  }

  v23 = VSErrorLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_B604();
  }

  v24 = VSAlertForError();
  [(VSSettingsViewController *)self presentViewController:v24 animated:1 completion:0];
}

- (void)_presentError:(id)error
{
  errorCopy = error;
  v5 = objc_alloc_init(VSOptional);
  [(VSSettingsViewController *)self _presentError:errorCopy withAccount:v5];
}

- (void)_presentError:(id)error withAccount:(id)account
{
  accountCopy = account;
  errorCopy = error;
  IsPrivateError = VSErrorIsPrivateError();
  v9 = objc_alloc_init(VSErrorViewController);
  [v9 setRecoveryDestructive:IsPrivateError];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_658C;
  v17[3] = &unk_189D0;
  v20 = IsPrivateError;
  v10 = accountCopy;
  v18 = v10;
  selfCopy = self;
  v11 = objc_retainBlock(v17);
  v12 = VSPrivateAccountLoadingErrorWithRecoveryHandler();

  [v9 setError:v12];
  [(VSSettingsViewController *)self _updateChildViewController:v9 searchController:0 rightBarButtonItem:0];
  settingsVM = [(VSSettingsViewController *)self settingsVM];
  specifierID = [settingsVM specifierID];

  if (specifierID)
  {
    accountInfoViewController = [(VSSettingsViewController *)self accountInfoViewController];

    if (accountInfoViewController)
    {
      if (([specifierID isEqualToString:@"signIn"] & 1) == 0 && (objc_msgSend(specifierID, "isEqualToString:", @"signOut") & 1) == 0)
      {
        v16 = VSDefaultLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = specifierID;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Unhandled Deeplink SpecifierID: %@", buf, 0xCu);
        }
      }

      [(VSSettingsViewModel *)self->_settingsVM setSpecifierID:0];
    }
  }
}

- (void)presentAccountsViewController:(id)controller
{
  controllerCopy = controller;
  storage = [(VSSettingsViewController *)self storage];
  privateQueue = [(VSSettingsViewController *)self privateQueue];
  restrictionsCenter = [(VSSettingsViewController *)self restrictionsCenter];
  v8 = [[VSAccountInfoViewController alloc] initWithAccount:controllerCopy storage:storage restrictionsCenter:restrictionsCenter];
  accountInfoViewController = self->_accountInfoViewController;
  self->_accountInfoViewController = v8;

  [(VSAccountInfoViewController *)self->_accountInfoViewController setDelegate:self];
  [(VSSettingsViewController *)self _updateChildViewController:self->_accountInfoViewController searchController:0 rightBarButtonItem:0];
  v10 = [VSIdentityProviderFetchOperation alloc];
  identityProviderID = [controllerCopy identityProviderID];
  forceUnwrapObject = [identityProviderID forceUnwrapObject];
  v13 = [v10 initWithIdentityProviderID:forceUnwrapObject];

  v17 = v13;
  v18 = controllerCopy;
  v14 = controllerCopy;
  v15 = v13;
  v16 = VSMainThreadOperationWithBlock();
  [privateQueue addOperation:v15];
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
  privateQueue = [(VSSettingsViewController *)self privateQueue];
  [privateQueue addOperation:v4];
  [privateQueue addOperation:v5];
  [privateQueue addOperation:v7];
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
  storage = [(VSSettingsViewController *)self storage];
  accountStore = [storage accountStore];
  firstAccountIfLoaded = [accountStore firstAccountIfLoaded];

  if (firstAccountIfLoaded)
  {
    [(VSSettingsViewController *)self presentAccountsViewController:firstAccountIfLoaded];
  }

  else
  {
    accountStore2 = [storage accountStore];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_7560;
    v7[3] = &unk_18800;
    v7[4] = self;
    [accountStore2 fetchAccountsWithCompletionHandler:v7];
  }
}

- (void)_setupAppropriateChildViewController
{
  VSRequireMainThread();
  storage = [(VSSettingsViewController *)self storage];
  accountStore = [storage accountStore];
  firstAccountIfLoaded = [accountStore firstAccountIfLoaded];

  [(VSSettingsViewController *)self _showLoadingViewControllerWithTitle:0 andSpinner:firstAccountIfLoaded == 0];
  [(VSSettingsViewController *)self _loadAppropriateChildViewController];
}

- (void)_updateChildViewController:(id)controller searchController:(id)searchController rightBarButtonItem:(id)item
{
  controllerCopy = controller;
  searchControllerCopy = searchController;
  itemCopy = item;
  if (!controllerCopy)
  {
    [NSException raise:NSInvalidArgumentException format:@"The newChildViewController parameter must not be nil."];
  }

  VSRequireMainThread();
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([(VSSettingsViewController *)self currentChildViewController], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass))
  {
    v12 = controllerCopy;
    currentChildViewController = [(VSSettingsViewController *)self currentChildViewController];
    loadingTitle = [v12 loadingTitle];

    [currentChildViewController setLoadingTitle:loadingTitle];
  }

  else
  {
    [(VSSettingsViewController *)self _removeCurrentChildViewControllerIfNecessary];
    [(VSSettingsViewController *)self addChildViewController:controllerCopy];
    currentChildViewController = [controllerCopy view];
    loadingTitle = [(VSSettingsViewController *)self view];
    [loadingTitle bounds];
    [currentChildViewController setFrame:?];
    [currentChildViewController setAutoresizingMask:18];
    [loadingTitle addSubview:currentChildViewController];
    [controllerCopy didMoveToParentViewController:self];
    [(VSSettingsViewController *)self setCurrentChildViewController:controllerCopy];
    [(VSSettingsViewController *)self vs_updateNavigationItemAndForceViewReloadWithSearchController:searchControllerCopy rightBarButtonItem:itemCopy];
  }
}

- (void)setCurrentChildViewController:(id)controller
{
  controllerCopy = controller;
  if ([(UIViewController *)controllerCopy conformsToProtocol:&OBJC_PROTOCOL___VSDestinationHandler])
  {
    currentChildViewController = [(VSSettingsViewController *)self currentChildViewController];
    [currentChildViewController removeObserver:self forKeyPath:@"readyToHandleDeepLinks" context:0];
  }

  [(VSSettingsViewController *)self setReadyToHandleDeepLinks:0];
  currentChildViewController = self->_currentChildViewController;
  self->_currentChildViewController = controllerCopy;
  v7 = controllerCopy;

  LODWORD(currentChildViewController) = [(UIViewController *)v7 conformsToProtocol:&OBJC_PROTOCOL___VSDestinationHandler];
  if (currentChildViewController)
  {
    currentChildViewController2 = [(VSSettingsViewController *)self currentChildViewController];
    [currentChildViewController2 addObserver:self forKeyPath:@"readyToHandleDeepLinks" options:5 context:0];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"readyToHandleDeepLinks"])
  {
    currentChildViewController = [(VSSettingsViewController *)self currentChildViewController];

    if (currentChildViewController == objectCopy)
    {
      v14 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
      bOOLValue = [v14 BOOLValue];

      [(VSSettingsViewController *)self setReadyToHandleDeepLinks:bOOLValue];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = VSSettingsViewController;
    [(VSSettingsViewController *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)enqueueOperation:(id)operation
{
  operationCopy = operation;
  v4 = +[NSOperationQueue mainQueue];
  if (operationCopy)
  {
    if (([operationCopy isFinished] & 1) == 0 && (objc_msgSend(operationCopy, "isExecuting") & 1) == 0)
    {
      operations = [v4 operations];
      v6 = [operations containsObject:operationCopy];

      if ((v6 & 1) == 0)
      {
        v7 = VSDefaultLogObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [operationCopy debugDescription];
          v9 = 138412290;
          v10 = v8;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Enqueing operation %@", &v9, 0xCu);
        }

        [v4 addOperation:operationCopy];
      }
    }
  }
}

- (void)_removeCurrentChildViewControllerIfNecessary
{
  currentChildViewController = [(VSSettingsViewController *)self currentChildViewController];
  if (currentChildViewController)
  {
    v5 = currentChildViewController;
    [currentChildViewController willMoveToParentViewController:0];
    view = [v5 view];
    [view removeFromSuperview];

    [v5 removeFromParentViewController];
    [(VSSettingsViewController *)self setCurrentChildViewController:0];
    currentChildViewController = v5;
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
  navigationItem = [(VSSettingsViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];
  dialogObserver = [(VSSettingsViewController *)self dialogObserver];
  [dialogObserver startListening];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = VSSettingsViewController;
  [(VSSettingsViewController *)&v3 viewDidLayoutSubviews];
  [(VSSettingsViewController *)self vs_adjustContentScrollViewInsets];
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [lCopy description];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Received URL resource dictionary: %@", &v11, 0xCu);
  }

  v10 = VSDestinationFromResourceDictionary();
  if (v10)
  {
    [(VSSettingsViewController *)self _handleDestination:v10 completion:completionCopy];
  }
}

- (void)setCurrentOperation:(id)operation
{
  operationCopy = operation;
  if (![(VSSettingsViewController *)self isReadyToHandleDeepLinks])
  {
    v8 = VSDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VSDestinationOperation *)operationCopy debugDescription];
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
    self->_currentOperation = operationCopy;
    goto LABEL_15;
  }

  if (self->_currentOperation)
  {
    [(VSDestinationOperation *)operationCopy addDependency:?];
  }

  v5 = self->_currentOperation;
  self->_currentOperation = operationCopy;

  if (operationCopy)
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

- (void)_handleDestination:(id)destination completion:(id)completion
{
  destinationCopy = destination;
  v6 = [[VSDestinationOperation alloc] initWithDestination:destinationCopy viewController:self];

  [(VSSettingsViewController *)self setCurrentOperation:v6];
}

- (void)handleDestination:(id)destination completion:(id)completion
{
  destinationCopy = destination;
  completionCopy = completion;
  currentChildViewController = [(VSSettingsViewController *)self currentChildViewController];
  v9 = [currentChildViewController conformsToProtocol:&OBJC_PROTOCOL___VSDestinationHandler];

  if (v9)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_8800;
    v15[3] = &unk_18B50;
    v15[4] = self;
    v16 = destinationCopy;
    v17 = completionCopy;
    [(VSSettingsViewController *)self vs_makeFrontmostAnimated:1 completion:v15];
  }

  else
  {
    currentChildViewController2 = [(VSSettingsViewController *)self currentChildViewController];
    v11 = [currentChildViewController2 debugDescription];
    v12 = v11;
    if (!v11)
    {
      v12 = +[NSNull null];
    }

    v13 = [NSString stringWithFormat:@"Invalid childViewController %@", v12];
    v14 = VSDestinationError();
    (*(completionCopy + 2))(completionCopy, 0, v14);

    if (!v11)
    {
    }
  }
}

@end