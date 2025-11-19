@interface HDHealthBluetoothPeripheralPluginDaemonExtension
- (BOOL)daemonDidReceiveNotification:(const char *)a3;
- (HDDaemon)daemon;
- (HDHealthBluetoothPeripheralPluginDaemonExtension)initWithDaemon:(id)a3;
@end

@implementation HDHealthBluetoothPeripheralPluginDaemonExtension

- (HDHealthBluetoothPeripheralPluginDaemonExtension)initWithDaemon:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDHealthBluetoothPeripheralPluginDaemonExtension;
  v5 = [(HDHealthBluetoothPeripheralPluginDaemonExtension *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, v4);
  }

  return v6;
}

- (BOOL)daemonDidReceiveNotification:(const char *)a3
{
  if (!strcasecmp("com.apple.nearfield.handoff.terminal", a3))
  {
    v6 = &HDWorkoutNotificationTerminalHandoffFieldDetected;
  }

  else
  {
    if (strcasecmp(kHKConnectedGymPreferencesChangedNotificationKey, a3))
    {
      return 0;
    }

    v6 = &HDConnectedGymPreferencesChanged;
  }

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = *v6;
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  [v7 postNotificationName:v8 object:WeakRetained];

  return 1;
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

@end