@interface PowerMonitor
- (PowerMonitor)init;
- (void)dealloc;
@end

@implementation PowerMonitor

- (PowerMonitor)init
{
  v11.receiver = self;
  v11.super_class = PowerMonitor;
  v2 = [(PowerMonitor *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_get_global_queue(17, 0);
    v5 = dispatch_queue_create_with_target_V2("com.apple.appstored.PowerMonitor", v3, v4);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v7 = v2->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100293A18;
    block[3] = &unk_10051AF98;
    v10 = v2;
    dispatch_async(v7, block);
  }

  return v2;
}

- (void)dealloc
{
  adapterChangeToken = self->_adapterChangeToken;
  if (adapterChangeToken != -1)
  {
    notify_cancel(adapterChangeToken);
    self->_adapterChangeToken = -1;
  }

  lowPowerModeToken = self->_lowPowerModeToken;
  if (lowPowerModeToken != -1)
  {
    notify_cancel(lowPowerModeToken);
    self->_lowPowerModeToken = -1;
  }

  v5.receiver = self;
  v5.super_class = PowerMonitor;
  [(PowerMonitor *)&v5 dealloc];
}

@end