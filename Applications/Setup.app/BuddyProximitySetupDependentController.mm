@interface BuddyProximitySetupDependentController
- (BuddyPASUIDependentViewPresenterDelegate)delegate;
- (BuddyProximitySetupDependentController)initWithMessageSession:(id)session featureFlags:(id)flags;
- (void)_accountTypeSelected:(int64_t)selected;
- (void)connectionTerminated;
- (void)proximitySetupCompletedWithResult:(id)result;
- (void)proximitySetupSelectedAccount:(int64_t)account completion:(id)completion;
- (void)setAccountType:(int64_t)type;
- (void)setAccountTypeSelectedBlock:(id)block;
- (void)setDelegate:(id)delegate;
- (void)setDelegateOnClient:(id)client;
- (void)setDependentViewPresenter:(id)presenter;
- (void)setParentViewController:(id)controller;
- (void)setReadyForPresentation:(id)presentation;
- (void)setViewControllerAvailableBlock:(id)block;
- (void)setupPasscodeAndBiometricWithCompletion:(id)completion;
- (void)setupPerformAIDASignInWith:(id)with completion:(id)completion;
- (void)waitForSelectedAccountType:(id)type;
- (void)waitForViewController:(id)controller;
@end

@implementation BuddyProximitySetupDependentController

- (BuddyProximitySetupDependentController)initWithMessageSession:(id)session featureFlags:(id)flags
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  obj = 0;
  objc_storeStrong(&obj, flags);
  v5 = selfCopy;
  selfCopy = 0;
  v20.receiver = v5;
  v20.super_class = BuddyProximitySetupDependentController;
  selfCopy = [(BuddyProximitySetupDependentController *)&v20 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v6 = objc_alloc_init(BuddyProximitySetupDependentParentViewController);
    v7 = *(selfCopy + 4);
    *(selfCopy + 4) = v6;

    v8 = [BuddyOverridesFactory dependentViewPresenterWithParentViewController:*(selfCopy + 4)];
    v9 = *(selfCopy + 5);
    *(selfCopy + 5) = v8;

    [*(selfCopy + 5) setDelegate:selfCopy];
    objc_storeStrong(selfCopy + 3, obj);
    v10 = *(selfCopy + 5);
    v11 = location[0];
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_10017C644;
    v18 = &unk_10032DE80;
    v19 = selfCopy;
    [v10 activateWithTemplateMessageSession:v11 completion:&v14];
    objc_storeStrong(&v19, 0);
  }

  v12 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

- (void)setDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);

  objc_storeWeak(&selfCopy->_delegate, location[0]);
  result = [(BuddyProximitySetupDependentController *)selfCopy result];

  if (result)
  {
    delegate = [(BuddyProximitySetupDependentController *)selfCopy delegate];
    result2 = [(BuddyProximitySetupDependentController *)selfCopy result];
    [(BuddyPASUIDependentViewPresenterDelegate *)delegate proximitySetupCompletedWithResult:result2];

    [(BuddyProximitySetupDependentController *)selfCopy setResult:0];
  }

  else
  {
    passcodeSetUpCompletionBlock = [(BuddyProximitySetupDependentController *)selfCopy passcodeSetUpCompletionBlock];

    if (passcodeSetUpCompletionBlock)
    {
      delegate2 = [(BuddyProximitySetupDependentController *)selfCopy delegate];
      passcodeSetUpCompletionBlock2 = [(BuddyProximitySetupDependentController *)selfCopy passcodeSetUpCompletionBlock];
      [(BuddyPASUIDependentViewPresenterDelegate *)delegate2 setupPasscodeAndBiometricWithCompletion:passcodeSetUpCompletionBlock2];

      [(BuddyProximitySetupDependentController *)selfCopy setPasscodeSetUpCompletionBlock:0];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)waitForViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10017CABC;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)waitForSelectedAccountType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10017CC68;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)setParentViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  objc_storeStrong(&selfCopy->_parentViewController, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setDependentViewPresenter:(id)presenter
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, presenter);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  objc_storeStrong(&selfCopy->_dependentViewPresenter, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setReadyForPresentation:(id)presentation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, presentation);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  objc_storeStrong(&selfCopy->_readyForPresentation, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setViewControllerAvailableBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  v4 = objc_retainBlock(location[0]);
  viewControllerAvailableBlock = selfCopy->_viewControllerAvailableBlock;
  selfCopy->_viewControllerAvailableBlock = v4;

  objc_storeStrong(location, 0);
}

- (void)setAccountType:(int64_t)type
{
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  self->_accountType = type;
}

- (void)setAccountTypeSelectedBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  v4 = objc_retainBlock(location[0]);
  accountTypeSelectedBlock = selfCopy->_accountTypeSelectedBlock;
  selfCopy->_accountTypeSelectedBlock = v4;

  objc_storeStrong(location, 0);
}

- (void)_accountTypeSelected:(int64_t)selected
{
  selfCopy = self;
  v8 = a2;
  selectedCopy = selected;
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(buf, selectedCopy);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Source device selected account type: %ld", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyProximitySetupDependentController *)selfCopy setHasAccountType:1];
  [(BuddyProximitySetupDependentController *)selfCopy setAccountType:selectedCopy];
  accountTypeSelectedBlock = [(BuddyProximitySetupDependentController *)selfCopy accountTypeSelectedBlock];

  if (accountTypeSelectedBlock)
  {
    accountTypeSelectedBlock2 = [(BuddyProximitySetupDependentController *)selfCopy accountTypeSelectedBlock];
    accountTypeSelectedBlock2[2](accountTypeSelectedBlock2, selectedCopy);

    [(BuddyProximitySetupDependentController *)selfCopy setAccountTypeSelectedBlock:0];
  }
}

- (void)setupPasscodeAndBiometricWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [(BuddyProximitySetupDependentController *)selfCopy setPasscodeSetUpCompletionBlock:location[0]];
  delegate = [(BuddyProximitySetupDependentController *)selfCopy delegate];

  if (delegate)
  {
    delegate2 = [(BuddyProximitySetupDependentController *)selfCopy delegate];
    [(BuddyPASUIDependentViewPresenterDelegate *)delegate2 setupPasscodeAndBiometricWithCompletion:location[0]];
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

- (void)proximitySetupCompletedWithResult:(id)result
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  [(BuddyProximitySetupDependentController *)selfCopy setResult:location[0]];
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10017D450;
  v11 = &unk_10032B838;
  v12 = selfCopy;
  v13 = location[0];
  dispatch_async(v3, &block);

  delegate = [(BuddyProximitySetupDependentController *)selfCopy delegate];
  if (delegate)
  {
    delegate2 = [(BuddyProximitySetupDependentController *)selfCopy delegate];
    [(BuddyPASUIDependentViewPresenterDelegate *)delegate2 proximitySetupCompletedWithResult:location[0]];
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

- (void)proximitySetupSelectedAccount:(int64_t)account completion:(id)completion
{
  selfCopy = self;
  v13 = a2;
  accountCopy = account;
  location = 0;
  objc_storeStrong(&location, completion);
  v4 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10017D608;
  v9 = &unk_10032B718;
  v10[0] = selfCopy;
  v10[1] = accountCopy;
  dispatch_async(v4, &v5);

  if (location)
  {
    (*(location + 2))(location, 1);
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(&location, 0);
}

- (void)setupPerformAIDASignInWith:(id)with completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, with);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  delegate = [(BuddyProximitySetupDependentController *)selfCopy delegate];
  [(BuddyPASUIDependentViewPresenterDelegate *)delegate setupPerformAIDASignInWith:location[0] completion:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)connectionTerminated
{
  selfCopy = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10017D79C;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)setDelegateOnClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  dependentViewPresenter = [(BuddyProximitySetupDependentController *)selfCopy dependentViewPresenter];
  v6 = 0;
  v4 = 0;
  if (dependentViewPresenter)
  {
    dependentViewPresenter2 = [(BuddyProximitySetupDependentController *)selfCopy dependentViewPresenter];
    v6 = 1;
    v4 = [(BuddyPASUIDependentViewPresenter *)dependentViewPresenter2 conformsToProtocol:&OBJC_PROTOCOL___BuddyUsesTargetClientOverride];
  }

  if (v6)
  {
  }

  if (v4)
  {
    dependentViewPresenter3 = [(BuddyProximitySetupDependentController *)selfCopy dependentViewPresenter];
    [(BuddyPASUIDependentViewPresenter *)dependentViewPresenter3 setDelegateOnClient:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (BuddyPASUIDependentViewPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end