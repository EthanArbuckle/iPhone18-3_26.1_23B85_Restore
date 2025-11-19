@interface COSSatellitePairingHelper
+ (void)popToLoginControllerFromController:(id)a3;
- (UIViewController)alertPresentationViewController;
- (id)_accountManager;
- (id)_familyEligibilityRequester;
- (id)accountsForAccountManager:(id)a3;
- (void)_checkFamilyEligibilityWithCompletion:(id)a3;
- (void)_finishedWithResult:(unint64_t)a3 completion:(id)a4;
- (void)checkPairingPreconditionsWithCompletion:(id)a3;
@end

@implementation COSSatellitePairingHelper

- (void)checkPairingPreconditionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(COSSatellitePairingHelper *)self alertPresentationViewController];

  if (!v5)
  {
    v6 = pbb_setupflow_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100189AB8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = pbb_setupflow_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = +[CDPAccount sharedInstance];
    v16 = [v15 primaryAccountUsername];
    v17 = +[CDPAccount sharedInstance];
    v18 = [v17 primaryAccountDSID];
    v19 = +[CDPAccount sharedInstance];
    v20 = [v19 primaryAccountAltDSID];
    *buf = 138412802;
    v34 = v16;
    v35 = 2112;
    v36 = v18;
    v37 = 2112;
    v38 = v20;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "########## %@ -- %@ -- %@", buf, 0x20u);
  }

  v21 = +[CDPAccount sharedInstance];
  v22 = [v21 primaryAccountAltDSID];
  v23 = v22 == 0;

  if (v23)
  {
    [(COSSatellitePairingHelper *)self _finishedWithResult:1 completion:v4];
  }

  else
  {
    objc_initWeak(buf, self);
    v24 = objc_alloc_init(FAFetchFamilyCircleRequest);
    [v24 setCachePolicy:2];
    v25 = [UIApp setupController];
    v26 = pbb_accountsignin_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Satellite pairing helper FAFetchFamilyCircleRequest start", v32, 2u);
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000CD064;
    v28[3] = &unk_10026B3A0;
    v27 = v25;
    v29 = v27;
    objc_copyWeak(&v31, buf);
    v30 = v4;
    [v24 startRequestWithCompletionHandler:v28];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }
}

- (void)_checkFamilyEligibilityWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(COSSatellitePairingHelper *)self _familyEligibilityRequester];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CD824;
  v7[3] = &unk_10026B3C8;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 requestFamilyEligibilityWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_finishedWithResult:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished checking pairing preconditions with result: %lu", buf, 0xCu);
  }

  v8 = 0;
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v17 = +[NSBundle mainBundle];
        v8 = [v17 localizedStringForKey:@"DEVICE_IS_NOT_PARENT_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];

        v12 = +[NSBundle mainBundle];
        v9 = [v12 localizedStringForKey:@"DEVICE_IS_NOT_PARENT" value:&stru_10026E598 table:@"Localizable-tinker"];
        v10 = @"https://support.apple.com/HT201060";
LABEL_22:

        goto LABEL_23;
      }

      v14 = +[NSBundle mainBundle];
      v8 = [v14 localizedStringForKey:@"TINKER_OVER_LIMIT_ERROR_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];

      v12 = +[NSBundle mainBundle];
      v9 = [v12 localizedStringForKey:@"TINKER_OVER_LIMIT_ERROR_MESSAGE" value:&stru_10026E598 table:@"Localizable-tinker"];
LABEL_21:
      v10 = 0;
      goto LABEL_22;
    }

    if (a3 == 6)
    {
      v11 = +[NSBundle mainBundle];
      v12 = v11;
      v13 = @"NO_SERVER_CONNECTIVITY";
      goto LABEL_20;
    }

    v9 = 0;
    v10 = 0;
    if (a3 == 7)
    {
      v11 = +[NSBundle mainBundle];
      v12 = v11;
      v13 = @"FAILED_PRECONDITION_REQUEST";
      goto LABEL_20;
    }

LABEL_23:
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000CDE50;
    v19[3] = &unk_10026B418;
    v20 = v8;
    v21 = v9;
    v24 = v6;
    v25 = a3;
    v22 = v10;
    v23 = self;
    v18 = v6;
    v16 = v9;
    v15 = v8;
    dispatch_async(&_dispatch_main_q, v19);

    goto LABEL_24;
  }

  if (a3 > 1)
  {
    v11 = +[NSBundle mainBundle];
    v12 = v11;
    if (a3 == 2)
    {
      v13 = @"GUARDIAN_DEVICE_IS_FAMILY_INELIGIBLE";
    }

    else
    {
      v13 = @"GUARDIAN_DEVICE_IS_UNDERAGE";
    }

    goto LABEL_20;
  }

  if (a3)
  {
    v9 = 0;
    v10 = 0;
    if (a3 == 1)
    {
      v11 = +[NSBundle mainBundle];
      v12 = v11;
      v13 = @"GUARDIAN_DEVICE_HAS_NO_APPLE_ID_ACCOUNT";
LABEL_20:
      v8 = [v11 localizedStringForKey:v13 value:&stru_10026E598 table:@"Localizable-tinker"];
      v9 = 0;
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CDE34;
  block[3] = &unk_100269120;
  v27 = v6;
  v15 = v6;
  dispatch_async(&_dispatch_main_q, block);
  v16 = v27;
LABEL_24:
}

- (id)_familyEligibilityRequester
{
  v3 = [FAFamilyEligibilityRequester alloc];
  v4 = [(COSSatellitePairingHelper *)self _accountManager];
  v5 = [v3 initWithAccountManager:v4];

  return v5;
}

- (id)_accountManager
{
  accountManager = self->_accountManager;
  if (!accountManager)
  {
    v4 = objc_alloc_init(ACAccountStore);
    store = self->_store;
    self->_store = v4;

    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v6 = qword_1002BD5A8;
    v15 = qword_1002BD5A8;
    if (!qword_1002BD5A8)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000CEA3C;
      v11[3] = &unk_1002680D0;
      v11[4] = &v12;
      sub_1000CEA3C(v11);
      v6 = v13[3];
    }

    v7 = v6;
    _Block_object_dispose(&v12, 8);
    v8 = [[v6 alloc] initWithAccountStore:self->_store];
    v9 = self->_accountManager;
    self->_accountManager = v8;

    [(AIDAAccountManager *)self->_accountManager setDelegate:self];
    accountManager = self->_accountManager;
  }

  return accountManager;
}

- (id)accountsForAccountManager:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 accountStore];
  v6 = [v5 aa_primaryAppleAccount];

  if (v6)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v7 = qword_1002BD5B8;
    v15 = qword_1002BD5B8;
    if (!qword_1002BD5B8)
    {
      v8 = sub_1000CEA94();
      v13[3] = dlsym(v8, "AIDAServiceTypeCloud");
      qword_1002BD5B8 = v13[3];
      v7 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v7)
    {
      v11 = sub_100186904();
      _Block_object_dispose(&v12, 8);
      _Unwind_Resume(v11);
    }

    [v4 setObject:v6 forKeyedSubscript:*v7];
  }

  v9 = [v4 copy];

  return v9;
}

+ (void)popToLoginControllerFromController:(id)a3
{
  v30 = a3;
  v3 = [UIApp setupController];
  v4 = [v3 navigationController];

  v29 = v4;
  v5 = [v4 viewControllers];
  v6 = [v5 mutableCopy];

  v7 = [UIApp setupController];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = [v7 buddyControllers];
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v36;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = objc_opt_class();
        if ([v15 isEqual:objc_opt_class()])
        {
          v16 = v14;

          v11 = v16;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = [v6 reverseObjectEnumerator];
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    v28 = v7;
    while (2)
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v31 + 1) + 8 * j);
        v23 = objc_opt_class();
        if ([v23 isEqual:objc_opt_class()])
        {
          v7 = v28;
          [v11 setDelegate:v28];
          [v6 removeObject:v22];
          goto LABEL_22;
        }

        [v6 removeObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v41 count:16];
      v7 = v28;
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  if (v11)
  {
    v24 = [v11 viewController];
    v25 = pbb_accountsignin_log();
    v26 = v30;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "sign in vc: %@", buf, 0xCu);
    }

    [v6 addObject:v24];
    [v29 setViewControllers:v6 animated:1];
  }

  else
  {
    v27 = pbb_accountsignin_log();
    v26 = v30;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "COSTinkeriCloudLoginViewController not in navstack.  Pushing to it", buf, 2u);
    }

    v24 = [v30 delegate];
    [v24 buddyControllerDone:v30 nextControllerClass:objc_opt_class()];
  }
}

- (UIViewController)alertPresentationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertPresentationViewController);

  return WeakRetained;
}

@end