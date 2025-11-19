@interface _BatteryMonitorConcreteToken
- (BatteryMonitorTokenDelegate)delegate;
- (_BatteryMonitorConcreteToken)init;
- (_BatteryMonitorConcreteTokenDelegate)concreteTokenDelegate;
- (float)currentBatteryLevel;
- (int64_t)currentBatteryState;
- (void)_batteryLevelDidChange:(id)a3;
- (void)_batteryStateDidChange:(id)a3;
- (void)dealloc;
@end

@implementation _BatteryMonitorConcreteToken

- (_BatteryMonitorConcreteTokenDelegate)concreteTokenDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_concreteTokenDelegate);

  return WeakRetained;
}

- (BatteryMonitorTokenDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_batteryLevelDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DD5900;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_batteryStateDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DD59C8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (float)currentBatteryLevel
{
  v2 = +[UIDevice currentDevice];
  [v2 batteryLevel];
  v4 = v3;

  return v4;
}

- (int64_t)currentBatteryState
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 batteryState];

  return v3;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_concreteTokenDelegate);
  [WeakRetained batteryMonitorConcreteTokenWillInvalidate:self];

  v4.receiver = self;
  v4.super_class = _BatteryMonitorConcreteToken;
  [(_BatteryMonitorConcreteToken *)&v4 dealloc];
}

- (_BatteryMonitorConcreteToken)init
{
  v6.receiver = self;
  v6.super_class = _BatteryMonitorConcreteToken;
  v2 = [(_BatteryMonitorConcreteToken *)&v6 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_batteryStateDidChange:" name:UIDeviceBatteryStateDidChangeNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_batteryLevelDidChange:" name:UIDeviceBatteryLevelDidChangeNotification object:0];
  }

  return v2;
}

@end