@interface BuddyOverridesFactory
+ (id)dependentViewPresenterWithParentViewController:(id)controller;
+ (id)proximitySessionWithOverrideClient:(id)client;
+ (id)proximityTargetClientWithDelegate:(id)delegate;
@end

@implementation BuddyOverridesFactory

+ (id)proximitySessionWithOverrideClient:(id)client
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  if (([BuddyOverrideUtilities useOverridesFor:2]& 1) != 0)
  {
    v5 = objc_alloc_init(BuddyProximitySessionOverride);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_exception_throw([NSException exceptionWithName:@"Override client is not BuddyDaemonProximityTargetClientOverride" reason:0 userInfo:0]);
    }

    [v5 setDelegateOnClient:location[0]];
    v7 = v5;
    objc_storeStrong(&v5, 0);
  }

  else
  {
    v7 = objc_alloc_init(SASProximitySession);
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

+ (id)proximityTargetClientWithDelegate:(id)delegate
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  if (([BuddyOverrideUtilities useOverridesFor:2]& 1) != 0)
  {
    v7 = objc_alloc_init(BuddyDaemonProximityTargetClientOverride);
    [v7 setDelegate:location[0]];
    v9 = v7;
    v6 = 1;
    objc_storeStrong(&v7, 0);
  }

  else
  {
    v5 = objc_alloc_init(BYBuddyDaemonProximityTargetClient);
    [v5 setDelegate:location[0]];
    v9 = v5;
    v6 = 1;
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

+ (id)dependentViewPresenterWithParentViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  if (([BuddyOverrideUtilities useOverridesFor:2]& 1) != 0)
  {
    v3 = [BuddyDependentViewPresenterOverride alloc];
  }

  else
  {
    v3 = objc_alloc(sub_1001CBCCC());
  }

  v7 = [(BuddyDependentViewPresenterOverride *)v3 initWithParentViewController:location[0]];
  objc_storeStrong(location, 0);
  v4 = v7;

  return v4;
}

@end