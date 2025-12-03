@interface AXRDeviceRemoteScrollAccumulator
- (AXRDeviceRemoteScrollAccumulator)init;
- (AXRDeviceRemoteScrollAccumulatorDelegate)delegate;
- (void)_queue_accumulateScrollAmount:(int64_t)amount;
- (void)accumulateScrollAmount:(int64_t)amount;
@end

@implementation AXRDeviceRemoteScrollAccumulator

- (AXRDeviceRemoteScrollAccumulator)init
{
  v8.receiver = self;
  v8.super_class = AXRDeviceRemoteScrollAccumulator;
  v2 = [(AXRDeviceRemoteScrollAccumulator *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);

    v5 = dispatch_queue_create("com.apple.accessibility.axremoted.scroll.accumulator", v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)accumulateScrollAmount:(int64_t)amount
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002BD0;
  v4[3] = &unk_100008680;
  v4[4] = self;
  v4[5] = amount;
  dispatch_async(queue, v4);
}

- (void)_queue_accumulateScrollAmount:(int64_t)amount
{
  +[NSDate timeIntervalSinceReferenceDate];
  if (v5 - self->_lastScrollEventTime >= 0.25)
  {
    self->_scrollIsActive = 0;
    self->_lastScrollEventTime = v5;
    self->_currentAccumulatedScroll = amount;
    return;
  }

  currentAccumulatedScroll = self->_currentAccumulatedScroll;
  self->_scrollIsActive = 1;
  self->_lastScrollEventTime = v5;
  v7 = currentAccumulatedScroll + amount;
  self->_currentAccumulatedScroll = v7;
  if (v7 < 51)
  {
    if (v7 > -51)
    {
      return;
    }

    v9 = ax_remote_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100003D44(v9);
    }

    self->_currentAccumulatedScroll += 50;
  }

  else
  {
    v8 = ax_remote_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100003D88(v8);
    }

    self->_currentAccumulatedScroll -= 50;
  }

  AXPerformBlockAsynchronouslyOnMainThread();
}

- (AXRDeviceRemoteScrollAccumulatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end