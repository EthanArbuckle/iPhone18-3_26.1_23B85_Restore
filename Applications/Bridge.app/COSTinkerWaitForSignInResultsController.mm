@interface COSTinkerWaitForSignInResultsController
- (COSBuddyControllerDelegate)waitDelegate;
- (id)localizedWaitScreenDescription;
- (void)didPushWaitScreen;
- (void)popToWaitForCDPCompletionController;
@end

@implementation COSTinkerWaitForSignInResultsController

- (void)didPushWaitScreen
{
  setupController = [UIApp setupController];
  tinkerAuthenticationController = [setupController tinkerAuthenticationController];

  self->_currentStatus = 0;
  setupController2 = [UIApp setupController];
  pairingReportManager = [setupController2 pairingReportManager];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009AFB8;
  v8[3] = &unk_10026A738;
  v8[4] = self;
  v9 = pairingReportManager;
  v7 = pairingReportManager;
  [tinkerAuthenticationController waitForSatelliteSigninWithProgressCompletion:v8];
}

- (void)popToWaitForCDPCompletionController
{
  setupController = [UIApp setupController];
  navigationController = [setupController navigationController];

  v26 = navigationController;
  viewControllers = [navigationController viewControllers];
  v5 = [viewControllers mutableCopy];

  setupController2 = [UIApp setupController];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  buddyControllers = [setupController2 buddyControllers];
  v8 = [buddyControllers countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v32;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(buddyControllers);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = objc_opt_class();
        if ([v14 isEqual:objc_opt_class()])
        {
          v15 = v13;

          v10 = v15;
        }
      }

      v9 = [buddyControllers countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  reverseObjectEnumerator = [v5 reverseObjectEnumerator];
  v17 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    while (2)
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        v22 = objc_opt_class();
        if ([v22 isEqual:objc_opt_class()])
        {
          [v10 setDelegate:setupController2];
          [v10 setAppearingFromBackNavigation:1];
          goto LABEL_22;
        }

        [v5 removeObject:v21];
      }

      v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  v23 = pbb_accountsignin_log();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    v25 = v26;
    if (v24)
    {
      *buf = 138412290;
      v36 = v10;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "cdp ui view controller %@", buf, 0xCu);
    }

    [v26 setViewControllers:v5 animated:1];
  }

  else
  {
    v25 = v26;
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "COSTinkerWaitForWatchCDPEnrollment not in navstack.  Skipping", buf, 2u);
    }
  }
}

- (id)localizedWaitScreenDescription
{
  setupController = [UIApp setupController];
  tinkerUserName = [setupController tinkerUserName];
  localizedCapitalizedString = [tinkerUserName localizedCapitalizedString];

  v5 = +[NSBundle mainBundle];
  if (localizedCapitalizedString)
  {
    v6 = [v5 localizedStringForKey:@"APPLEID_ACCOUNT_HOLD_DESCRIPTION_TINKER_USER_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
    v7 = [NSString stringWithFormat:v6, localizedCapitalizedString];
  }

  else
  {
    v7 = [v5 localizedStringForKey:@"APPLEID_ACCOUNT_HOLD_DESCRIPTION" value:&stru_10026E598 table:@"Localizable"];
  }

  return v7;
}

- (COSBuddyControllerDelegate)waitDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_waitDelegate);

  return WeakRetained;
}

@end