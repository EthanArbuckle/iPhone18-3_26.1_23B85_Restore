@interface HealthBluetoothPeripheralDaemonPlugin
- (HealthBluetoothPeripheralDaemonPlugin)init;
- (id)extensionForHealthDaemon:(id)daemon;
- (id)extensionForProfile:(id)profile;
- (id)taskServerClasses;
- (id)workoutSessionControllerClassesForProfile:(id)profile;
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

- (id)extensionForHealthDaemon:(id)daemon
{
  daemonCopy = daemon;
  v4 = [[HDHealthBluetoothPeripheralPluginDaemonExtension alloc] initWithDaemon:daemonCopy];

  return v4;
}

- (id)extensionForProfile:(id)profile
{
  profileCopy = profile;
  if ([profileCopy profileType] == &dword_0 + 1)
  {
    profileExtension = self->_profileExtension;
    if (!profileExtension)
    {
      v6 = [[HealthBluetoothPeripheralProfileExtension alloc] initWithProfile:profileCopy];
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

- (id)workoutSessionControllerClassesForProfile:(id)profile
{
  if ([profile profileType] == &dword_0 + 1)
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