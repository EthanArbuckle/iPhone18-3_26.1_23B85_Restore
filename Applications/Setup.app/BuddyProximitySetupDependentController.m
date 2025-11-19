@interface BuddyProximitySetupDependentController
- (BuddyPASUIDependentViewPresenterDelegate)delegate;
- (BuddyProximitySetupDependentController)initWithMessageSession:(id)a3 featureFlags:(id)a4;
- (void)_accountTypeSelected:(int64_t)a3;
- (void)connectionTerminated;
- (void)proximitySetupCompletedWithResult:(id)a3;
- (void)proximitySetupSelectedAccount:(int64_t)a3 completion:(id)a4;
- (void)setAccountType:(int64_t)a3;
- (void)setAccountTypeSelectedBlock:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDelegateOnClient:(id)a3;
- (void)setDependentViewPresenter:(id)a3;
- (void)setParentViewController:(id)a3;
- (void)setReadyForPresentation:(id)a3;
- (void)setViewControllerAvailableBlock:(id)a3;
- (void)setupPasscodeAndBiometricWithCompletion:(id)a3;
- (void)setupPerformAIDASignInWith:(id)a3 completion:(id)a4;
- (void)waitForSelectedAccountType:(id)a3;
- (void)waitForViewController:(id)a3;
@end

@implementation BuddyProximitySetupDependentController

- (BuddyProximitySetupDependentController)initWithMessageSession:(id)a3 featureFlags:(id)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  v5 = v23;
  v23 = 0;
  v20.receiver = v5;
  v20.super_class = BuddyProximitySetupDependentController;
  v23 = [(BuddyProximitySetupDependentController *)&v20 init];
  objc_storeStrong(&v23, v23);
  if (v23)
  {
    v6 = objc_alloc_init(BuddyProximitySetupDependentParentViewController);
    v7 = *(v23 + 4);
    *(v23 + 4) = v6;

    v8 = [BuddyOverridesFactory dependentViewPresenterWithParentViewController:*(v23 + 4)];
    v9 = *(v23 + 5);
    *(v23 + 5) = v8;

    [*(v23 + 5) setDelegate:v23];
    objc_storeStrong(v23 + 3, obj);
    v10 = *(v23 + 5);
    v11 = location[0];
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_10017C644;
    v18 = &unk_10032DE80;
    v19 = v23;
    [v10 activateWithTemplateMessageSession:v11 completion:&v14];
    objc_storeStrong(&v19, 0);
  }

  v12 = v23;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v23, 0);
  return v12;
}

- (void)setDelegate:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);

  objc_storeWeak(&v10->_delegate, location[0]);
  v3 = [(BuddyProximitySetupDependentController *)v10 result];

  if (v3)
  {
    v4 = [(BuddyProximitySetupDependentController *)v10 delegate];
    v5 = [(BuddyProximitySetupDependentController *)v10 result];
    [(BuddyPASUIDependentViewPresenterDelegate *)v4 proximitySetupCompletedWithResult:v5];

    [(BuddyProximitySetupDependentController *)v10 setResult:0];
  }

  else
  {
    v6 = [(BuddyProximitySetupDependentController *)v10 passcodeSetUpCompletionBlock];

    if (v6)
    {
      v7 = [(BuddyProximitySetupDependentController *)v10 delegate];
      v8 = [(BuddyProximitySetupDependentController *)v10 passcodeSetUpCompletionBlock];
      [(BuddyPASUIDependentViewPresenterDelegate *)v7 setupPasscodeAndBiometricWithCompletion:v8];

      [(BuddyProximitySetupDependentController *)v10 setPasscodeSetUpCompletionBlock:0];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)waitForViewController:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10017CABC;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)waitForSelectedAccountType:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10017CC68;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)setParentViewController:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  objc_storeStrong(&v5->_parentViewController, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setDependentViewPresenter:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  objc_storeStrong(&v5->_dependentViewPresenter, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setReadyForPresentation:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  objc_storeStrong(&v5->_readyForPresentation, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setViewControllerAvailableBlock:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  v4 = objc_retainBlock(location[0]);
  viewControllerAvailableBlock = v7->_viewControllerAvailableBlock;
  v7->_viewControllerAvailableBlock = v4;

  objc_storeStrong(location, 0);
}

- (void)setAccountType:(int64_t)a3
{
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  self->_accountType = a3;
}

- (void)setAccountTypeSelectedBlock:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  v4 = objc_retainBlock(location[0]);
  accountTypeSelectedBlock = v7->_accountTypeSelectedBlock;
  v7->_accountTypeSelectedBlock = v4;

  objc_storeStrong(location, 0);
}

- (void)_accountTypeSelected:(int64_t)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(buf, v7);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Source device selected account type: %ld", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyProximitySetupDependentController *)v9 setHasAccountType:1];
  [(BuddyProximitySetupDependentController *)v9 setAccountType:v7];
  v4 = [(BuddyProximitySetupDependentController *)v9 accountTypeSelectedBlock];

  if (v4)
  {
    v5 = [(BuddyProximitySetupDependentController *)v9 accountTypeSelectedBlock];
    v5[2](v5, v7);

    [(BuddyProximitySetupDependentController *)v9 setAccountTypeSelectedBlock:0];
  }
}

- (void)setupPasscodeAndBiometricWithCompletion:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyProximitySetupDependentController *)v11 setPasscodeSetUpCompletionBlock:location[0]];
  v3 = [(BuddyProximitySetupDependentController *)v11 delegate];

  if (v3)
  {
    v4 = [(BuddyProximitySetupDependentController *)v11 delegate];
    [(BuddyPASUIDependentViewPresenterDelegate *)v4 setupPasscodeAndBiometricWithCompletion:location[0]];
  }

  else
  {
    oslog = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v5, v6, "Proximity dependent setup will show biometric/passcode setup", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)proximitySetupCompletedWithResult:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyProximitySetupDependentController *)v15 setResult:location[0]];
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10017D450;
  v11 = &unk_10032B838;
  v12 = v15;
  v13 = location[0];
  dispatch_async(v3, &block);

  v4 = [(BuddyProximitySetupDependentController *)v15 delegate];
  if (v4)
  {
    v5 = [(BuddyProximitySetupDependentController *)v15 delegate];
    [(BuddyPASUIDependentViewPresenterDelegate *)v5 proximitySetupCompletedWithResult:location[0]];
  }

  else
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Proximity dependent setup completed with result: %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)proximitySetupSelectedAccount:(int64_t)a3 completion:(id)a4
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10017D608;
  v9 = &unk_10032B718;
  v10[0] = v14;
  v10[1] = v12;
  dispatch_async(v4, &v5);

  if (location)
  {
    (*(location + 2))(location, 1);
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(&location, 0);
}

- (void)setupPerformAIDASignInWith:(id)a3 completion:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(BuddyProximitySetupDependentController *)v8 delegate];
  [(BuddyPASUIDependentViewPresenterDelegate *)v5 setupPerformAIDASignInWith:location[0] completion:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)connectionTerminated
{
  v9 = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10017D79C;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)setDelegateOnClient:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximitySetupDependentController *)v9 dependentViewPresenter];
  v6 = 0;
  v4 = 0;
  if (v3)
  {
    v7 = [(BuddyProximitySetupDependentController *)v9 dependentViewPresenter];
    v6 = 1;
    v4 = [(BuddyPASUIDependentViewPresenter *)v7 conformsToProtocol:&OBJC_PROTOCOL___BuddyUsesTargetClientOverride];
  }

  if (v6)
  {
  }

  if (v4)
  {
    v5 = [(BuddyProximitySetupDependentController *)v9 dependentViewPresenter];
    [(BuddyPASUIDependentViewPresenter *)v5 setDelegateOnClient:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (BuddyPASUIDependentViewPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end