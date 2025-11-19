@interface BCBatteryDeviceController
+ (id)_sharedPowerSourceController;
- (BCBatteryDeviceController)init;
- (NSArray)connectedDevices;
- (void)addBatteryDeviceObserver:(id)a3 queue:(id)a4;
- (void)removeBatteryDeviceObserver:(id)a3;
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
  v2 = [objc_opt_class() _sharedPowerSourceController];
  v3 = [v2 connectedDevices];

  return v3;
}

- (void)addBatteryDeviceObserver:(id)a3 queue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _sharedPowerSourceController];
  [v7 addBatteryDeviceObserver:v6 queue:v5];
}

- (void)removeBatteryDeviceObserver:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _sharedPowerSourceController];
  [v4 removeBatteryDeviceObserver:v3];
}

@end