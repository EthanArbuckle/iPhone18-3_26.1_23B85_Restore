@interface ADSyncRequest
- (ADSyncRequest)init;
- (void)dealloc;
- (void)invalidateTimer;
- (void)startTimerOnQueue:(id)a3 withTimeoutHandler:(id)a4;
@end

@implementation ADSyncRequest

- (void)invalidateTimer
{
  [(AFWatchdogTimer *)self->_timer cancel];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)startTimerOnQueue:(id)a3 withTimeoutHandler:(id)a4
{
  v6 = a4;
  self->_timedout = 0;
  v7 = a3;
  v8 = [AFWatchdogTimer alloc];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000AC7DC;
  v15 = &unk_10051E038;
  v16 = self;
  v17 = v6;
  v9 = v6;
  v10 = [v8 initWithTimeoutInterval:v7 onQueue:&v12 timeoutHandler:60.0];

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