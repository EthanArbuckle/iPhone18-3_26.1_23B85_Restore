@interface ActivateUsingComputerController
- (ActivateUsingComputerController)init;
- (void)activationConfigurationChanged:(BOOL)changed isActivated:(BOOL)activated;
- (void)performExtendedInitializationWithCompletion:(id)completion;
@end

@implementation ActivateUsingComputerController

- (ActivateUsingComputerController)init
{
  v7 = a2;
  location = 0;
  v6.receiver = self;
  v6.super_class = ActivateUsingComputerController;
  location = [(RestoreFromComputerController *)&v6 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = dispatch_queue_create("Computer Activation Queue", 0);
    v3 = *(location + 10);
    *(location + 10) = v2;
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = +[BuddyActivationConfiguration currentConfiguration];
  [v3 addDelegate:selfCopy];

  v4 = dispatch_get_global_queue(0, 0);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001A6BA4;
  v9 = &unk_10032B120;
  v10 = location[0];
  dispatch_async(v4, &v5);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)activationConfigurationChanged:(BOOL)changed isActivated:(BOOL)activated
{
  selfCopy = self;
  v15 = a2;
  changedCopy = changed;
  activatedCopy = activated;
  if (changed)
  {
    v4 = &_dispatch_main_q;
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_1001A6D3C;
    v9 = &unk_10032C7B8;
    v11 = changedCopy;
    v10 = selfCopy;
    v12 = activatedCopy;
    dispatch_async(v4, &v5);

    objc_storeStrong(&v10, 0);
  }
}

@end