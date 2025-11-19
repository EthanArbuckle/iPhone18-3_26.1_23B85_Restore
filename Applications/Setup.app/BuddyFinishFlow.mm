@interface BuddyFinishFlow
+ (id)allowedFlowItems;
- (BOOL)presentFindMyDisabledAlertIfNeededOnViewController:(id)a3;
- (BuddyFinishFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6;
- (void)_updateClassList;
- (void)configureFlowItem:(id)a3;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)startFlowAnimated:(BOOL)a3;
@end

@implementation BuddyFinishFlow

- (BuddyFinishFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  v9 = v17;
  v17 = 0;
  v12.receiver = v9;
  v12.super_class = BuddyFinishFlow;
  v17 = [(BuddyFinishFlow *)&v12 initWithNavigationController:location[0] flowDelegate:v15 flowStarter:v14 dependencyInjector:v13];
  objc_storeStrong(&v17, v17);
  if (v17)
  {
    [v17 _updateClassList];
  }

  v10 = v17;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v10;
}

+ (id)allowedFlowItems
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  return [NSArray arrayWithObjects:v3 count:2];
}

- (void)startFlowAnimated:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  [(BuddyFinishFlow *)self _updateClassList];
  v3 = [BuddyFindMyDisabledAlertDebugPresenter alloc];
  v4 = [(BuddyFinishFlow *)v9 buddyPreferencesExcludedFromBackup];
  location = [(BuddyFindMyDisabledAlertDebugPresenter *)v3 initWithPreferences:v4];

  if (location)
  {
    [(BuddyFinishFlow *)v9 setPresenter:location];
  }

  else
  {
    [(BuddyFinishFlow *)v9 setPresenter:v9];
  }

  v5.receiver = v9;
  v5.super_class = BuddyFinishFlow;
  [(BuddyFinishFlow *)&v5 startFlowAnimated:v7];
  objc_storeStrong(&location, 0);
}

- (void)configureFlowItem:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = BuddyFinishFlow;
  [(BuddyFinishFlow *)&v5 configureFlowItem:location[0]];
  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyFindMyDisabledAlertSource])
  {
    v3 = location[0];
    v4 = [(BuddyFinishFlow *)v7 presenter];
    [v3 setFindMyDisabledAlertPresenter:v4];
  }

  objc_storeStrong(location, 0);
}

- (void)_updateClassList
{
  v12 = 0;
  v2 = 0;
  if (os_variant_has_internal_ui())
  {
    v13 = [(BuddyFinishFlow *)self buddyPreferencesExcludedFromBackup];
    v12 = 1;
    v2 = [(BYPreferencesController *)v13 BOOLForKey:@"ForceAppStorePaneToShow"];
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
    v3 = [(BuddyFinishFlow *)self suspendTask];
    v4 = [(BuddySuspendTask *)v3 launchURL];
    v10 = 0;
    v5 = 0;
    if (v4)
    {
      v11 = [(BuddyFinishFlow *)self buddyPreferencesExcludedFromBackup];
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

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
        v31 = [v35 domain];
        v30 = 1;
        v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v31, [v35 code]);
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
    v7 = [(BuddyFinishFlow *)v37 lockdownModeProvider];
    v8 = [(LockdownModeProvider *)v7 hasStagedEnablement];

    if (v8)
    {
      (*(location[0] + 2))(location[0], 0);
      v24 = 1;
    }

    else
    {
      v9 = [(BuddyFinishFlow *)v37 runState];
      v10 = [(BYRunState *)v9 hasCompletedInitialRun];

      if (v10)
      {
        (*(location[0] + 2))(location[0], 1);
        v24 = 1;
      }

      else
      {
        v23 = +[BYDevice currentDevice];
        v11 = [(BuddyFinishFlow *)v37 userDispositionProvider];
        v12 = [(BuddyFinishFlow *)v37 setupMethod];
        v13 = [(BuddySetupMethod *)v12 dataTransferMethod];
        v14 = [v23 deviceClass];
        v15 = [v23 serialNumber];
        v16 = _NSConcreteStackBlock;
        v17 = -1073741824;
        v18 = 0;
        v19 = sub_100180404;
        v20 = &unk_10032DEC8;
        v21 = v37;
        v22 = location[0];
        [(SetupUserDispositionProvider *)v11 isNewUserWithDataTransferMethod:v13 deviceClass:v14 serialNumber:v15 completionHandler:&v16];

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

- (BOOL)presentFindMyDisabledAlertIfNeededOnViewController:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[ACAccountStore defaultStore];
  v28 = [v3 aa_primaryAppleAccount];

  v27 = 0;
  if (v28)
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
            v12 = [v25 aa_primaryEmail];
            v23 = [NSString localizedStringWithFormat:v11, v12];

            v13 = +[NSBundle mainBundle];
            v14 = [(NSBundle *)v13 localizedStringForKey:@"FMIP_ACCOUNT_DISABLE_MESSAGE" value:&stru_10032F900 table:@"Localizable"];
            v15 = [v28 aa_primaryEmail];
            v22 = [NSString localizedStringWithFormat:v14, v15];

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
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  return v19 & 1;
}

@end