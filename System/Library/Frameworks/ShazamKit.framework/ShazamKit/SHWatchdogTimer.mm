@interface SHWatchdogTimer
- (void)startWatchdogTimerForInterval:(double)interval firedCompletion:(id)completion;
- (void)stopWatchdogTimer;
@end

@implementation SHWatchdogTimer

- (void)startWatchdogTimerForInterval:(double)interval firedCompletion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_get_global_queue(0, 0);
  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v7);
  watchdogTimerSource = self->_watchdogTimerSource;
  self->_watchdogTimerSource = v8;

  v10 = dispatch_time(0, (interval * 1000000000.0));
  dispatch_source_set_timer(self->_watchdogTimerSource, v10, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v11 = self->_watchdogTimerSource;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000032A8;
  handler[3] = &unk_10007CDC8;
  v14 = completionCopy;
  v12 = completionCopy;
  dispatch_source_set_event_handler(v11, handler);
  dispatch_resume(self->_watchdogTimerSource);
}

- (void)stopWatchdogTimer
{
  watchdogTimerSource = self->_watchdogTimerSource;
  if (watchdogTimerSource)
  {
    dispatch_source_cancel(watchdogTimerSource);
    v4 = self->_watchdogTimerSource;
    self->_watchdogTimerSource = 0;
  }
}

@end