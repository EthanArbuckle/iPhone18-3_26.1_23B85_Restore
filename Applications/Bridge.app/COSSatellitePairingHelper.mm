@interface COSSatellitePairingHelper
+ (void)popToLoginControllerFromController:(id)controller;
- (UIViewController)alertPresentationViewController;
- (id)_accountManager;
- (id)_familyEligibilityRequester;
- (id)accountsForAccountManager:(id)manager;
- (void)_checkFamilyEligibilityWithCompletion:(id)completion;
- (void)_finishedWithResult:(unint64_t)result completion:(id)completion;
- (void)checkPairingPreconditionsWithCompletion:(id)completion;
@end

@implementation COSSatellitePairingHelper

- (void)checkPairingPreconditionsWithCompletion:(id)completion
{
  completionCopy = completion;
  alertPresentationViewController = [(COSSatellitePairingHelper *)self alertPresentationViewController];

  if (!alertPresentationViewController)
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
    primaryAccountUsername = [v15 primaryAccountUsername];
    v17 = +[CDPAccount sharedInstance];
    primaryAccountDSID = [v17 primaryAccountDSID];
    v19 = +[CDPAccount sharedInstance];
    primaryAccountAltDSID = [v19 primaryAccountAltDSID];
    *buf = 138412802;
    v34 = primaryAccountUsername;
    v35 = 2112;
    v36 = primaryAccountDSID;
    v37 = 2112;
    v38 = primaryAccountAltDSID;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "########## %@ -- %@ -- %@", buf, 0x20u);
  }

  v21 = +[CDPAccount sharedInstance];
  primaryAccountAltDSID2 = [v21 primaryAccountAltDSID];
  v23 = primaryAccountAltDSID2 == 0;

  if (v23)
  {
    [(COSSatellitePairingHelper *)self _finishedWithResult:1 completion:completionCopy];
  }

  else
  {
    objc_initWeak(buf, self);
    v24 = objc_alloc_init(FAFetchFamilyCircleRequest);
    [v24 setCachePolicy:2];
    setupController = [UIApp setupController];
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
    v27 = setupController;
    v29 = v27;
    objc_copyWeak(&v31, buf);
    v30 = completionCopy;
    [v24 startRequestWithCompletionHandler:v28];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }
}

- (void)_checkFamilyEligibilityWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  _familyEligibilityRequester = [(COSSatellitePairingHelper *)self _familyEligibilityRequester];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CD824;
  v7[3] = &unk_10026B3C8;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [_familyEligibilityRequester requestFamilyEligibilityWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_finishedWithResult:(unint64_t)result completion:(id)completion
{
  completionCopy = completion;
  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    resultCopy = result;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished checking pairing preconditions with result: %lu", buf, 0xCu);
  }

  v8 = 0;
  if (result > 3)
  {
    if (result <= 5)
    {
      if (result == 4)
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

    if (result == 6)
    {
      v11 = +[NSBundle mainBundle];
      v12 = v11;
      v13 = @"NO_SERVER_CONNECTIVITY";
      goto LABEL_20;
    }

    v9 = 0;
    v10 = 0;
    if (result == 7)
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
    v24 = completionCopy;
    resultCopy2 = result;
    v22 = v10;
    selfCopy = self;
    v18 = completionCopy;
    v16 = v9;
    v15 = v8;
    dispatch_async(&_dispatch_main_q, v19);

    goto LABEL_24;
  }

  if (result > 1)
  {
    v11 = +[NSBundle mainBundle];
    v12 = v11;
    if (result == 2)
    {
      v13 = @"GUARDIAN_DEVICE_IS_FAMILY_INELIGIBLE";
    }

    else
    {
      v13 = @"GUARDIAN_DEVICE_IS_UNDERAGE";
    }

    goto LABEL_20;
  }

  if (result)
  {
    v9 = 0;
    v10 = 0;
    if (result == 1)
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
  v27 = completionCopy;
  v15 = completionCopy;
  dispatch_async(&_dispatch_main_q, block);
  v16 = v27;
LABEL_24:
}

- (id)_familyEligibilityRequester
{
  v3 = [FAFamilyEligibilityRequester alloc];
  _accountManager = [(COSSatellitePairingHelper *)self _accountManager];
  v5 = [v3 initWithAccountManager:_accountManager];

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

- (id)accountsForAccountManager:(id)manager
{
  managerCopy = manager;
  v4 = objc_alloc_init(NSMutableDictionary);
  accountStore = [managerCopy accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
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

    [v4 setObject:aa_primaryAppleAccount forKeyedSubscript:*v7];
  }

  v9 = [v4 copy];

  return v9;
}

+ (void)popToLoginControllerFromController:(id)controller
{
  controllerCopy = controller;
  setupController = [UIApp setupController];
  navigationController = [setupController navigationController];

  v29 = navigationController;
  viewControllers = [navigationController viewControllers];
  v6 = [viewControllers mutableCopy];

  setupController2 = [UIApp setupController];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  buddyControllers = [setupController2 buddyControllers];
  v9 = [buddyControllers countByEnumeratingWithState:&v35 objects:v42 count:16];
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
          objc_enumerationMutation(buddyControllers);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = objc_opt_class();
        if ([v15 isEqual:objc_opt_class()])
        {
          v16 = v14;

          v11 = v16;
        }
      }

      v10 = [buddyControllers countByEnumeratingWithState:&v35 objects:v42 count:16];
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
  reverseObjectEnumerator = [v6 reverseObjectEnumerator];
  v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    v28 = setupController2;
    while (2)
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v22 = *(*(&v31 + 1) + 8 * j);
        v23 = objc_opt_class();
        if ([v23 isEqual:objc_opt_class()])
        {
          setupController2 = v28;
          [v11 setDelegate:v28];
          [v6 removeObject:v22];
          goto LABEL_22;
        }

        [v6 removeObject:v22];
      }

      v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v31 objects:v41 count:16];
      setupController2 = v28;
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
    viewController = [v11 viewController];
    v25 = pbb_accountsignin_log();
    v26 = controllerCopy;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = viewController;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "sign in vc: %@", buf, 0xCu);
    }

    [v6 addObject:viewController];
    [v29 setViewControllers:v6 animated:1];
  }

  else
  {
    v27 = pbb_accountsignin_log();
    v26 = controllerCopy;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "COSTinkeriCloudLoginViewController not in navstack.  Pushing to it", buf, 2u);
    }

    viewController = [controllerCopy delegate];
    [viewController buddyControllerDone:controllerCopy nextControllerClass:objc_opt_class()];
  }
}

- (UIViewController)alertPresentationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertPresentationViewController);

  return WeakRetained;
}

@end