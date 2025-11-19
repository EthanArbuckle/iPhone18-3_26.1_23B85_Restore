@interface CalendarAccountsController
+ (id)sharedInstance;
- (CalendarAccountsController)initWithController:(id)a3;
@end

@implementation CalendarAccountsController

+ (id)sharedInstance
{
  os_unfair_lock_lock(&_sharedRefreshControllerLock);
  v2 = _sharedRefreshController;
  if (!_sharedRefreshController)
  {
    v3 = [CalendarAccountsController alloc];
    v4 = [MEMORY[0x1E6993370] sharedInstance];
    v5 = [(CalendarAccountsController *)v3 initWithController:v4];
    v6 = _sharedRefreshController;
    _sharedRefreshController = v5;

    v2 = _sharedRefreshController;
  }

  v7 = v2;
  os_unfair_lock_unlock(&_sharedRefreshControllerLock);

  return v7;
}

- (CalendarAccountsController)initWithController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CalendarAccountsController;
  v6 = [(CalendarAccountsController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
  }

  return v7;
}

@end