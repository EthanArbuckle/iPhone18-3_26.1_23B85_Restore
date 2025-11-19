@interface ThermalPressureMonitor
- (ThermalPressureMonitor)init;
- (void)dealloc;
@end

@implementation ThermalPressureMonitor

- (ThermalPressureMonitor)init
{
  v11.receiver = self;
  v11.super_class = ThermalPressureMonitor;
  v2 = [(ThermalPressureMonitor *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_get_global_queue(17, 0);
    v5 = dispatch_queue_create_with_target_V2("com.apple.appstored.ThermalPressureMonitor", v3, v4);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v7 = v2->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003E299C;
    block[3] = &unk_10051AF98;
    v10 = v2;
    dispatch_async(v7, block);
  }

  return v2;
}

- (void)dealloc
{
  token = self->_token;
  if (token != -1)
  {
    notify_cancel(token);
    self->_token = -1;
  }

  v4.receiver = self;
  v4.super_class = ThermalPressureMonitor;
  [(ThermalPressureMonitor *)&v4 dealloc];
}

@end