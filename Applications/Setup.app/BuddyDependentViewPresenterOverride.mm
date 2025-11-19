@interface BuddyDependentViewPresenterOverride
- (BuddyDependentViewPresenterOverride)initWithParentViewController:(id)a3;
- (BuddyPASUIDependentViewPresenterDelegate)delegate;
- (UIViewController)parentViewController;
- (void)activateWithTemplateMessageSession:(id)a3 completion:(id)a4;
- (void)finishAccountSetupWithIntent:(int64_t)a3;
- (void)setDelegateOnClient:(id)a3;
@end

@implementation BuddyDependentViewPresenterOverride

- (BuddyDependentViewPresenterOverride)initWithParentViewController:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(v6 + 2, location[0]);
  v3 = v6;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)activateWithTemplateMessageSession:(id)a3 completion:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(BuddyDependentViewPresenterOverride *)v7 setViewControllerCompletion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)setDelegateOnClient:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] setIntentSelectionDelegate:v4];
  objc_storeStrong(location, 0);
}

- (void)finishAccountSetupWithIntent:(int64_t)a3
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15 = a3;
  if (a3 && v16 != 1)
  {
    v5 = [v18 delegate];
    [v5 proximitySetupSelectedAccount:v15 completion:&stru_10032AF30];
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
    v4 = [v18 delegate];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_100069A88;
    v10 = &unk_10032AEF0;
    v11 = v18;
    v12 = location;
    [v4 proximitySetupSelectedAccount:v15 completion:&v6];

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