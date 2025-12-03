@interface BuddyDependentViewPresenterOverride
- (BuddyDependentViewPresenterOverride)initWithParentViewController:(id)controller;
- (BuddyPASUIDependentViewPresenterDelegate)delegate;
- (UIViewController)parentViewController;
- (void)activateWithTemplateMessageSession:(id)session completion:(id)completion;
- (void)finishAccountSetupWithIntent:(int64_t)intent;
- (void)setDelegateOnClient:(id)client;
@end

@implementation BuddyDependentViewPresenterOverride

- (BuddyDependentViewPresenterOverride)initWithParentViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  objc_storeWeak(selfCopy + 2, location[0]);
  v3 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v3;
}

- (void)activateWithTemplateMessageSession:(id)session completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(BuddyDependentViewPresenterOverride *)selfCopy setViewControllerCompletion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)setDelegateOnClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  [location[0] setIntentSelectionDelegate:selfCopy];
  objc_storeStrong(location, 0);
}

- (void)finishAccountSetupWithIntent:(int64_t)intent
{
  selfCopy = self;
  v17 = a2;
  intentCopy = intent;
  intentCopy2 = intent;
  if (intent && intentCopy != 1)
  {
    delegate = [selfCopy delegate];
    [delegate proximitySetupSelectedAccount:intentCopy2 completion:&stru_10032AF30];
  }

  else
  {
    v19[0] = AKAuthenticationUsernameKey;
    v3 = [BuddyOverrideUtilities sourceDeviceValueFor:5];
    v20[0] = v3;
    v19[1] = AKAuthenticationPasswordKey;
    v20[1] = @"123456";
    v19[2] = AKAuthenticationRawPasswordKey;
    v20[2] = @"123456";
    v19[3] = AKAuthenticationDSIDKey;
    v20[3] = @"1234-1234-1234-1234";
    v19[4] = AKAuthenticationAlternateDSIDKey;
    v20[4] = @"4321-4321-4321-4321";
    v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:5];

    location = objc_alloc_init(BuddyPASFlowResult);
    [location setAuthResults:v14];
    delegate2 = [selfCopy delegate];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_100069A88;
    v10 = &unk_10032AEF0;
    v11 = selfCopy;
    v12 = location;
    [delegate2 proximitySetupSelectedAccount:intentCopy2 completion:&v6];

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v14, 0);
  }
}

- (BuddyPASUIDependentViewPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end