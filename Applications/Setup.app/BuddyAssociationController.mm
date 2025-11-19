@interface BuddyAssociationController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (void)dynamicViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5;
- (void)performExtendedInitializationWithCompletion:(id)a3;
@end

@implementation BuddyAssociationController

- (BOOL)controllerNeedsToRun
{
  v10 = self;
  location[1] = a2;
  if ((+[AMSDevice deviceIsBundle]& 1) != 0)
  {
    v2 = [(BuddyAssociationController *)v10 runState];
    v3 = [(BYRunState *)v2 hasCompletedInitialRun];

    if (v3)
    {
      v11 = 0;
    }

    else
    {
      v4 = +[ACAccountStore ams_sharedAccountStore];
      location[0] = [v4 ams_activeiTunesAccount];

      if (location[0])
      {
        v5 = [location[0] ams_isBundleOwner];
        v6 = 1;
        if (v5)
        {
          v7 = v5;
          v6 = [AMSAcknowledgePrivacyTask acknowledgementNeededForPrivacyIdentifier:BYPrivacySubscriptionBundleIdentifier account:location[0]];
          v5 = v7;
        }

        v11 = v6 & 1;
      }

      else
      {
        v11 = 1;
      }

      objc_storeStrong(location, 0);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = objc_alloc_init(BuddyMediaServicesBag);
  [(BuddyAssociationController *)v24 setBag:v3];

  v4 = [AMSUIDynamicViewController alloc];
  v5 = [(BuddyAssociationController *)v24 bag];
  v6 = [(BuddyMediaServicesBag *)v5 underlyingBag];
  v7 = [(BuddyAssociationController *)v24 bag];
  v8 = [(BuddyMediaServicesBag *)v7 getBundleURL];
  v9 = [v4 initWithBag:v6 bagValue:v8];
  [(BuddyAssociationController *)v24 setDynamicViewController:v9];

  v10 = +[ACAccountStore ams_sharedAccountStore];
  v11 = [v10 ams_activeiTunesAccount];
  v12 = [(BuddyAssociationController *)v24 dynamicViewController];
  [(AMSUIDynamicViewController *)v12 setAccount:v11];

  v13 = v24;
  v14 = [(BuddyAssociationController *)v24 dynamicViewController];
  [(AMSUIDynamicViewController *)v14 setDelegate:v13];

  v15 = [(BuddyAssociationController *)v24 dynamicViewController];
  v16 = [(AMSUIDynamicViewController *)v15 preload];
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_100068F90;
  v21 = &unk_10032AEC8;
  v22 = location[0];
  [v16 resultWithCompletion:&v17];

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)dynamicViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v7 = [v18 objectForKeyedSubscript:@"action"];
  LOBYTE(a4) = [v7 isEqualToString:@"erase"];

  if (a4)
  {
    v8 = [(BuddyAssociationController *)v20 dynamicViewController];
    v9 = [(AMSUIDynamicViewController *)v8 view];
    v10 = [v9 window];
    v11 = [(BuddyAssociationController *)v20 navigationController];
    v12 = [(BuddyAssociationController *)v20 proximitySetupController];
    v13 = [(BuddyAssociationController *)v20 analyticsManager];
    v16 = [BuddyEraseAlertController alertControllerWithWindow:v10 navigationController:v11 proximitySetupController:v12 analyticsManager:v13];

    v14 = [(BuddyAssociationController *)v20 navigationController];
    [(UINavigationController *)v14 presentViewController:v16 animated:1 completion:0];

    objc_storeStrong(&v16, 0);
  }

  else
  {
    v15 = [(BuddyAssociationController *)v20 delegate];
    [(BFFFlowItemDelegate *)v15 flowItemDone:v20];
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end