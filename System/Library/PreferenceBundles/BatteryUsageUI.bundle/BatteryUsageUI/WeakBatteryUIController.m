@interface WeakBatteryUIController
- (WeakBatteryUIController)initWithController:(id)a3;
- (id)buiViewController;
@end

@implementation WeakBatteryUIController

- (WeakBatteryUIController)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WeakBatteryUIController;
  v5 = [(WeakBatteryUIController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakController, v4);
  }

  return v6;
}

- (id)buiViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_weakController);

  return WeakRetained;
}

@end