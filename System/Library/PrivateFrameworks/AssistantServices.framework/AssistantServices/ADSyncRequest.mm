@interface ADSyncRequest
- (ADSyncRequest)init;
- (void)dealloc;
- (void)invalidateTimer;
- (void)startTimerOnQueue:(id)queue withTimeoutHandler:(id)handler;
@end

@implementation ADSyncRequest

- (void)invalidateTimer
{
  [(AFWatchdogTimer *)self->_timer cancel];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)startTimerOnQueue:(id)queue withTimeoutHandler:(id)handler
{
  handlerCopy = handler;
  self->_timedout = 0;
  queueCopy = queue;
  v8 = [AFWatchdogTimer alloc];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000AC7DC;
  v15 = &unk_10051E038;
  selfCopy = self;
  v17 = handlerCopy;
  v9 = handlerCopy;
  v10 = [v8 initWithTimeoutInterval:queueCopy onQueue:&v12 timeoutHandler:60.0];

  timer = self->_timer;
  self->_timer = v10;

  [(AFWatchdogTimer *)self->_timer start:v12];
}

- (void)dealloc
{
  [(ADSyncRequest *)self invalidateTimer];
  v3.receiver = self;
  v3.super_class = ADSyncRequest;
  [(ADSyncRequest *)&v3 dealloc];
}

- (ADSyncRequest)init
{
  v6.receiver = self;
  v6.super_class = ADSyncRequest;
  v2 = [(ADSyncRequest *)&v6 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    uuid = v2->_uuid;
    v2->_uuid = v3;

    v2->_timedout = 0;
  }

  return v2;
}

@end