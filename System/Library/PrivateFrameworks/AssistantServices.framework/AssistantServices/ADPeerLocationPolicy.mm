@interface ADPeerLocationPolicy
- (ADPeerLocationPolicy)init;
- (ADPeerLocationPolicyDelegate)delegate;
- (void)_cancelTimer;
- (void)_resetTimer;
- (void)locationDataWasRecievedFromPeer;
- (void)locationPeerDidChange;
@end

@implementation ADPeerLocationPolicy

- (ADPeerLocationPolicyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_resetTimer
{
  [(ADPeerLocationPolicy *)self _cancelTimer];
  allowedTimelimit = self->_allowedTimelimit;
  queue = self->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10023C0E4;
  handler[3] = &unk_10051DFE8;
  handler[4] = self;
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  v6 = 4.32e13;
  if (allowedTimelimit > 0.0)
  {
    v6 = allowedTimelimit * 1000000000.0;
  }

  v7 = v6;
  v8 = dispatch_time(0, v6);
  dispatch_source_set_timer(v5, v8, v7, 0);
  dispatch_source_set_event_handler(v5, handler);
  timerSource = self->_timerSource;
  self->_timerSource = v5;

  dispatch_resume(self->_timerSource);
}

- (void)_cancelTimer
{
  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
    v4 = self->_timerSource;
    self->_timerSource = 0;
  }
}

- (void)locationPeerDidChange
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023C1F8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)locationDataWasRecievedFromPeer
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023C2C8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (ADPeerLocationPolicy)init
{
  v7.receiver = self;
  v7.super_class = ADPeerLocationPolicy;
  v2 = [(ADPeerLocationPolicy *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADPeerLocationPolicy", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v2->_allowedTimelimit = 43200.0;
  }

  return v2;
}

@end