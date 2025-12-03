@interface CalendarAccountsController
+ (id)sharedInstance;
- (CalendarAccountsController)initWithController:(id)controller;
@end

@implementation CalendarAccountsController

+ (id)sharedInstance
{
  os_unfair_lock_lock(&_sharedRefreshControllerLock);
  v2 = _sharedRefreshController;
  if (!_sharedRefreshController)
  {
    v3 = [CalendarAccountsController alloc];
    mEMORY[0x1E6993370] = [MEMORY[0x1E6993370] sharedInstance];
    v5 = [(CalendarAccountsController *)v3 initWithController:mEMORY[0x1E6993370]];
    v6 = _sharedRefreshController;
    _sharedRefreshController = v5;

    v2 = _sharedRefreshController;
  }

  v7 = v2;
  os_unfair_lock_unlock(&_sharedRefreshControllerLock);

  return v7;
}

- (CalendarAccountsController)initWithController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = CalendarAccountsController;
  v6 = [(CalendarAccountsController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
  }

  return v7;
}

@end