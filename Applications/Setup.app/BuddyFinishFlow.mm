@interface BuddyFinishFlow
+ (id)allowedFlowItems;
- (BOOL)presentFindMyDisabledAlertIfNeededOnViewController:(id)controller;
- (BuddyFinishFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
- (void)_updateClassList;
- (void)configureFlowItem:(id)item;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)startFlowAnimated:(BOOL)animated;
@end

@implementation BuddyFinishFlow

- (BuddyFinishFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v15 = 0;
  objc_storeStrong(&v15, delegate);
  v14 = 0;
  objc_storeStrong(&v14, starter);
  v13 = 0;
  objc_storeStrong(&v13, injector);
  v9 = selfCopy;
  selfCopy = 0;
  v12.receiver = v9;
  v12.super_class = BuddyFinishFlow;
  selfCopy = [(BuddyFinishFlow *)&v12 initWithNavigationController:location[0] flowDelegate:v15 flowStarter:v14 dependencyInjector:v13];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [selfCopy _updateClassList];
  }

  v10 = selfCopy;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

+ (id)allowedFlowItems
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  return [NSArray arrayWithObjects:v3 count:2];
}

- (void)startFlowAnimated:(BOOL)animated
{
  selfCopy = self;
  v8 = a2;
  animatedCopy = animated;
  [(BuddyFinishFlow *)self _updateClassList];
  v3 = [BuddyFindMyDisabledAlertDebugPresenter alloc];
  buddyPreferencesExcludedFromBackup = [(BuddyFinishFlow *)selfCopy buddyPreferencesExcludedFromBackup];
  location = [(BuddyFindMyDisabledAlertDebugPresenter *)v3 initWithPreferences:buddyPreferencesExcludedFromBackup];

  if (location)
  {
    [(BuddyFinishFlow *)selfCopy setPresenter:location];
  }

  else
  {
    [(BuddyFinishFlow *)selfCopy setPresenter:selfCopy];
  }

  v5.receiver = selfCopy;
  v5.super_class = BuddyFinishFlow;
  [(BuddyFinishFlow *)&v5 startFlowAnimated:animatedCopy];
  objc_storeStrong(&location, 0);
}

- (void)configureFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v5.receiver = selfCopy;
  v5.super_class = BuddyFinishFlow;
  [(BuddyFinishFlow *)&v5 configureFlowItem:location[0]];
  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyFindMyDisabledAlertSource])
  {
    v3 = location[0];
    presenter = [(BuddyFinishFlow *)selfCopy presenter];
    [v3 setFindMyDisabledAlertPresenter:presenter];
  }

  objc_storeStrong(location, 0);
}

- (void)_updateClassList
{
  v12 = 0;
  v2 = 0;
  if (os_variant_has_internal_ui())
  {
    buddyPreferencesExcludedFromBackup = [(BuddyFinishFlow *)self buddyPreferencesExcludedFromBackup];
    v12 = 1;
    v2 = [(BYPreferencesController *)buddyPreferencesExcludedFromBackup BOOLForKey:@"ForceAppStorePaneToShow"];
  }

  if (v12)
  {
  }

  if (v2)
  {
    v14 = 1;
  }

  else
  {
    suspendTask = [(BuddyFinishFlow *)self suspendTask];
    launchURL = [(BuddySuspendTask *)suspendTask launchURL];
    v10 = 0;
    v5 = 0;
    if (launchURL)
    {
      buddyPreferencesExcludedFromBackup2 = [(BuddyFinishFlow *)self buddyPreferencesExcludedFromBackup];
      v10 = 1;
      v5 = [BuddySuspendTask hasSuspendTaskWithBuddyPreferencesExcludedFromBackup:?];
    }

    v14 = v5 & 1;
    if (v10)
    {
    }
  }

  v8 = 0;
  v6 = 0;
  if (v14)
  {
    v17 = objc_opt_class();
    v9 = [NSArray arrayWithObjects:&v17 count:1];
    v8 = 1;
  }

  else
  {
    v16 = objc_opt_class();
    v7 = [NSArray arrayWithObjects:&v16 count:1];
    v6 = 1;
  }

  [(BuddyFinishFlow *)self setClassList:?];
  if (v6)
  {
  }

  if (v8)
  {
  }
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v35 = 0;
  oslog[1] = 0;
  v3 = SADSUninstallIneligibleAppsWithError();
  objc_storeStrong(&v35, 0);
  v34 = v3 & 1;
  if ((v3 & 1) != 0 || !v35)
  {
    if ((v34 & 1) == 0)
    {
      v27 = _BYLoggingFacility();
      v26 = 16;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v5 = v27;
        v6 = v26;
        sub_10006AA68(v25);
        _os_log_error_impl(&_mh_execute_header, v5, v6, "Error deleting ineligible apps but no error provided.", v25, 2u);
      }

      objc_storeStrong(&v27, 0);
    }
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v32 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v30 = 0;
      v28 = 0;
      if (_BYIsInternalInstall())
      {
        v4 = v35;
      }

      else if (v35)
      {
        domain = [v35 domain];
        v30 = 1;
        v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v35 code]);
        v29 = v4;
        v28 = 1;
      }

      else
      {
        v4 = 0;
      }

      sub_100071CBC(buf, v4);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v32, "Error deleting ineligible apps: %{public}@", buf, 0xCu);
      if (v28)
      {
      }

      if (v30)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  if (location[0])
  {
    lockdownModeProvider = [(BuddyFinishFlow *)selfCopy lockdownModeProvider];
    hasStagedEnablement = [(LockdownModeProvider *)lockdownModeProvider hasStagedEnablement];

    if (hasStagedEnablement)
    {
      (*(location[0] + 2))(location[0], 0);
      v24 = 1;
    }

    else
    {
      runState = [(BuddyFinishFlow *)selfCopy runState];
      hasCompletedInitialRun = [(BYRunState *)runState hasCompletedInitialRun];

      if (hasCompletedInitialRun)
      {
        (*(location[0] + 2))(location[0], 1);
        v24 = 1;
      }

      else
      {
        v23 = +[BYDevice currentDevice];
        userDispositionProvider = [(BuddyFinishFlow *)selfCopy userDispositionProvider];
        setupMethod = [(BuddyFinishFlow *)selfCopy setupMethod];
        dataTransferMethod = [(BuddySetupMethod *)setupMethod dataTransferMethod];
        deviceClass = [v23 deviceClass];
        serialNumber = [v23 serialNumber];
        v16 = _NSConcreteStackBlock;
        v17 = -1073741824;
        v18 = 0;
        v19 = sub_100180404;
        v20 = &unk_10032DEC8;
        v21 = selfCopy;
        v22 = location[0];
        [(SetupUserDispositionProvider *)userDispositionProvider isNewUserWithDataTransferMethod:dataTransferMethod deviceClass:deviceClass serialNumber:serialNumber completionHandler:&v16];

        objc_storeStrong(&v22, 0);
        objc_storeStrong(&v21, 0);
        objc_storeStrong(&v23, 0);
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)presentFindMyDisabledAlertIfNeededOnViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v3 aa_primaryAppleAccount];

  v27 = 0;
  if (aa_primaryAppleAccount)
  {
    v4 = +[ACAccountStore defaultStore];
    v26 = [v4 aa_accountsEnabledForDataclass:kAccountDataclassDeviceLocator];

    memset(__b, 0, sizeof(__b));
    v5 = v26;
    v6 = [v5 countByEnumeratingWithState:__b objects:v30 count:16];
    if (v6)
    {
      v7 = *__b[2];
      do
      {
        for (i = 0; i < v6; ++i)
        {
          if (*__b[2] != v7)
          {
            objc_enumerationMutation(v5);
          }

          v25 = *(__b[1] + 8 * i);
          if (([v25 aa_isAccountClass:AAAccountClassPrimary] & 1) == 0)
          {
            [v25 setEnabled:0 forDataclass:kAccountDataclassDeviceLocator];
            v9 = +[ACAccountStore defaultStore];
            [v9 saveAccount:v25 withCompletionHandler:0];

            v10 = +[NSBundle mainBundle];
            v11 = [(NSBundle *)v10 localizedStringForKey:@"FMIP_ACCOUNT_DISABLE_TITLE" value:&stru_10032F900 table:@"Localizable"];
            aa_primaryEmail = [v25 aa_primaryEmail];
            v23 = [NSString localizedStringWithFormat:v11, aa_primaryEmail];

            v13 = +[NSBundle mainBundle];
            v14 = [(NSBundle *)v13 localizedStringForKey:@"FMIP_ACCOUNT_DISABLE_MESSAGE" value:&stru_10032F900 table:@"Localizable"];
            aa_primaryEmail2 = [aa_primaryAppleAccount aa_primaryEmail];
            v22 = [NSString localizedStringWithFormat:v14, aa_primaryEmail2];

            v21 = [UIAlertController alertControllerWithTitle:v23 message:v22 preferredStyle:1];
            v16 = +[NSBundle mainBundle];
            v17 = [(NSBundle *)v16 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
            v18 = [UIAlertAction actionWithTitle:v17 style:0 handler:0];
            [v21 addAction:v18];

            v27 = 1;
            [location[0] presentViewController:v21 animated:1 completion:0];
            objc_storeStrong(&v21, 0);
            objc_storeStrong(&v22, 0);
            objc_storeStrong(&v23, 0);
            goto LABEL_11;
          }
        }

        v6 = [v5 countByEnumeratingWithState:__b objects:v30 count:16];
      }

      while (v6);
    }

LABEL_11:

    objc_storeStrong(&v26, 0);
  }

  v19 = v27;
  objc_storeStrong(&aa_primaryAppleAccount, 0);
  objc_storeStrong(location, 0);
  return v19 & 1;
}

@end