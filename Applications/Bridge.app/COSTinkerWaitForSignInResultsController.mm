@interface COSTinkerWaitForSignInResultsController
- (COSBuddyControllerDelegate)waitDelegate;
- (id)localizedWaitScreenDescription;
- (void)didPushWaitScreen;
- (void)popToWaitForCDPCompletionController;
@end

@implementation COSTinkerWaitForSignInResultsController

- (void)didPushWaitScreen
{
  v3 = [UIApp setupController];
  v4 = [v3 tinkerAuthenticationController];

  self->_currentStatus = 0;
  v5 = [UIApp setupController];
  v6 = [v5 pairingReportManager];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009AFB8;
  v8[3] = &unk_10026A738;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [v4 waitForSatelliteSigninWithProgressCompletion:v8];
}

- (void)popToWaitForCDPCompletionController
{
  v2 = [UIApp setupController];
  v3 = [v2 navigationController];

  v26 = v3;
  v4 = [v3 viewControllers];
  v5 = [v4 mutableCopy];

  v6 = [UIApp setupController];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [v6 buddyControllers];
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v38 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = objc_opt_class();
        if ([v14 isEqual:objc_opt_class()])
        {
          v15 = v13;

          v10 = v15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v38 count:16];
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
  v16 = [v5 reverseObjectEnumerator];
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        v22 = objc_opt_class();
        if ([v22 isEqual:objc_opt_class()])
        {
          [v10 setDelegate:v6];
          [v10 setAppearingFromBackNavigation:1];
          goto LABEL_22;
        }

        [v5 removeObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
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
  v2 = [UIApp setupController];
  v3 = [v2 tinkerUserName];
  v4 = [v3 localizedCapitalizedString];

  v5 = +[NSBundle mainBundle];
  if (v4)
  {
    v6 = [v5 localizedStringForKey:@"APPLEID_ACCOUNT_HOLD_DESCRIPTION_TINKER_USER_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
    v7 = [NSString stringWithFormat:v6, v4];
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