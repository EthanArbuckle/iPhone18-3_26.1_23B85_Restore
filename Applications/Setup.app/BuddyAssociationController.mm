@interface BuddyAssociationController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (void)dynamicViewController:(id)controller didResolveWithResult:(id)result error:(id)error;
- (void)performExtendedInitializationWithCompletion:(id)completion;
@end

@implementation BuddyAssociationController

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  location[1] = a2;
  if ((+[AMSDevice deviceIsBundle]& 1) != 0)
  {
    runState = [(BuddyAssociationController *)selfCopy runState];
    hasCompletedInitialRun = [(BYRunState *)runState hasCompletedInitialRun];

    if (hasCompletedInitialRun)
    {
      v11 = 0;
    }

    else
    {
      v4 = +[ACAccountStore ams_sharedAccountStore];
      location[0] = [v4 ams_activeiTunesAccount];

      if (location[0])
      {
        ams_isBundleOwner = [location[0] ams_isBundleOwner];
        v6 = 1;
        if (ams_isBundleOwner)
        {
          v7 = ams_isBundleOwner;
          v6 = [AMSAcknowledgePrivacyTask acknowledgementNeededForPrivacyIdentifier:BYPrivacySubscriptionBundleIdentifier account:location[0]];
          ams_isBundleOwner = v7;
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

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = objc_alloc_init(BuddyMediaServicesBag);
  [(BuddyAssociationController *)selfCopy setBag:v3];

  v4 = [AMSUIDynamicViewController alloc];
  v5 = [(BuddyAssociationController *)selfCopy bag];
  underlyingBag = [(BuddyMediaServicesBag *)v5 underlyingBag];
  v7 = [(BuddyAssociationController *)selfCopy bag];
  getBundleURL = [(BuddyMediaServicesBag *)v7 getBundleURL];
  v9 = [v4 initWithBag:underlyingBag bagValue:getBundleURL];
  [(BuddyAssociationController *)selfCopy setDynamicViewController:v9];

  v10 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v10 ams_activeiTunesAccount];
  dynamicViewController = [(BuddyAssociationController *)selfCopy dynamicViewController];
  [(AMSUIDynamicViewController *)dynamicViewController setAccount:ams_activeiTunesAccount];

  v13 = selfCopy;
  dynamicViewController2 = [(BuddyAssociationController *)selfCopy dynamicViewController];
  [(AMSUIDynamicViewController *)dynamicViewController2 setDelegate:v13];

  dynamicViewController3 = [(BuddyAssociationController *)selfCopy dynamicViewController];
  preload = [(AMSUIDynamicViewController *)dynamicViewController3 preload];
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_100068F90;
  v21 = &unk_10032AEC8;
  v22 = location[0];
  [preload resultWithCompletion:&v17];

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)dynamicViewController:(id)controller didResolveWithResult:(id)result error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v18 = 0;
  objc_storeStrong(&v18, result);
  v17 = 0;
  objc_storeStrong(&v17, error);
  v7 = [v18 objectForKeyedSubscript:@"action"];
  LOBYTE(result) = [v7 isEqualToString:@"erase"];

  if (result)
  {
    dynamicViewController = [(BuddyAssociationController *)selfCopy dynamicViewController];
    view = [(AMSUIDynamicViewController *)dynamicViewController view];
    window = [view window];
    navigationController = [(BuddyAssociationController *)selfCopy navigationController];
    proximitySetupController = [(BuddyAssociationController *)selfCopy proximitySetupController];
    analyticsManager = [(BuddyAssociationController *)selfCopy analyticsManager];
    v16 = [BuddyEraseAlertController alertControllerWithWindow:window navigationController:navigationController proximitySetupController:proximitySetupController analyticsManager:analyticsManager];

    navigationController2 = [(BuddyAssociationController *)selfCopy navigationController];
    [(UINavigationController *)navigationController2 presentViewController:v16 animated:1 completion:0];

    objc_storeStrong(&v16, 0);
  }

  else
  {
    delegate = [(BuddyAssociationController *)selfCopy delegate];
    [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];
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