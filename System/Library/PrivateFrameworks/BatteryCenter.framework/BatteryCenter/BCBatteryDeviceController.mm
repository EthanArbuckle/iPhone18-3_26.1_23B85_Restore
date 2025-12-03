@interface BCBatteryDeviceController
+ (id)_sharedPowerSourceController;
- (BCBatteryDeviceController)init;
- (NSArray)connectedDevices;
- (void)addBatteryDeviceObserver:(id)observer queue:(id)queue;
- (void)removeBatteryDeviceObserver:(id)observer;
@end

@implementation BCBatteryDeviceController

- (BCBatteryDeviceController)init
{
  v4.receiver = self;
  v4.super_class = BCBatteryDeviceController;
  v2 = [(BCBatteryDeviceController *)&v4 init];
  if (v2)
  {
    BCRegisterUserNotificationsLogging();
  }

  return v2;
}

+ (id)_sharedPowerSourceController
{
  if (_sharedPowerSourceController_onceToken != -1)
  {
    +[BCBatteryDeviceController _sharedPowerSourceController];
  }

  v3 = _sharedPowerSourceController___sharedPowerSourceController;

  return v3;
}

uint64_t __57__BCBatteryDeviceController__sharedPowerSourceController__block_invoke()
{
  _sharedPowerSourceController___sharedPowerSourceController = objc_alloc_init(_BCPowerSourceController);

  return MEMORY[0x2821F96F8]();
}

- (NSArray)connectedDevices
{
  _sharedPowerSourceController = [objc_opt_class() _sharedPowerSourceController];
  connectedDevices = [_sharedPowerSourceController connectedDevices];

  return connectedDevices;
}

- (void)addBatteryDeviceObserver:(id)observer queue:(id)queue
{
  queueCopy = queue;
  observerCopy = observer;
  _sharedPowerSourceController = [objc_opt_class() _sharedPowerSourceController];
  [_sharedPowerSourceController addBatteryDeviceObserver:observerCopy queue:queueCopy];
}

- (void)removeBatteryDeviceObserver:(id)observer
{
  observerCopy = observer;
  _sharedPowerSourceController = [objc_opt_class() _sharedPowerSourceController];
  [_sharedPowerSourceController removeBatteryDeviceObserver:observerCopy];
}

@end