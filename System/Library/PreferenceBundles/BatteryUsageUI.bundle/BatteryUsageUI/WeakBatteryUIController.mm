@interface WeakBatteryUIController
- (WeakBatteryUIController)initWithController:(id)controller;
- (id)buiViewController;
@end

@implementation WeakBatteryUIController

- (WeakBatteryUIController)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = WeakBatteryUIController;
  v5 = [(WeakBatteryUIController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakController, controllerCopy);
  }

  return v6;
}

- (id)buiViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_weakController);

  return WeakRetained;
}

@end