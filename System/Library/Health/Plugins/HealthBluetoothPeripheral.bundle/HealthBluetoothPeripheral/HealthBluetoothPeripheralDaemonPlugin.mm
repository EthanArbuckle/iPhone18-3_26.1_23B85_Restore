@interface HealthBluetoothPeripheralDaemonPlugin
- (HealthBluetoothPeripheralDaemonPlugin)init;
- (id)extensionForHealthDaemon:(id)a3;
- (id)extensionForProfile:(id)a3;
- (id)taskServerClasses;
- (id)workoutSessionControllerClassesForProfile:(id)a3;
@end

@implementation HealthBluetoothPeripheralDaemonPlugin

- (HealthBluetoothPeripheralDaemonPlugin)init
{
  _HKInitializeLogging();
  v3 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Bluetooth Peripheral plugin loaded.", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = HealthBluetoothPeripheralDaemonPlugin;
  return [(HealthBluetoothPeripheralDaemonPlugin *)&v5 init];
}

- (id)extensionForHealthDaemon:(id)a3
{
  v3 = a3;
  v4 = [[HDHealthBluetoothPeripheralPluginDaemonExtension alloc] initWithDaemon:v3];

  return v4;
}

- (id)extensionForProfile:(id)a3
{
  v4 = a3;
  if ([v4 profileType] == &dword_0 + 1)
  {
    profileExtension = self->_profileExtension;
    if (!profileExtension)
    {
      v6 = [[HealthBluetoothPeripheralProfileExtension alloc] initWithProfile:v4];
      v7 = self->_profileExtension;
      self->_profileExtension = v6;

      profileExtension = self->_profileExtension;
    }

    v8 = profileExtension;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)taskServerClasses
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

- (id)workoutSessionControllerClassesForProfile:(id)a3
{
  if ([a3 profileType] == &dword_0 + 1)
  {
    v5 = objc_opt_class();
    v3 = [NSArray arrayWithObjects:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end