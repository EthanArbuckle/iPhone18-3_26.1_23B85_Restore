@interface HDHealthBluetoothPeripheralPluginDaemonExtension
- (BOOL)daemonDidReceiveNotification:(const char *)notification;
- (HDDaemon)daemon;
- (HDHealthBluetoothPeripheralPluginDaemonExtension)initWithDaemon:(id)daemon;
@end

@implementation HDHealthBluetoothPeripheralPluginDaemonExtension

- (HDHealthBluetoothPeripheralPluginDaemonExtension)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v8.receiver = self;
  v8.super_class = HDHealthBluetoothPeripheralPluginDaemonExtension;
  v5 = [(HDHealthBluetoothPeripheralPluginDaemonExtension *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
  }

  return v6;
}

- (BOOL)daemonDidReceiveNotification:(const char *)notification
{
  if (!strcasecmp("com.apple.nearfield.handoff.terminal", notification))
  {
    v6 = &HDWorkoutNotificationTerminalHandoffFieldDetected;
  }

  else
  {
    if (strcasecmp(kHKConnectedGymPreferencesChangedNotificationKey, notification))
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