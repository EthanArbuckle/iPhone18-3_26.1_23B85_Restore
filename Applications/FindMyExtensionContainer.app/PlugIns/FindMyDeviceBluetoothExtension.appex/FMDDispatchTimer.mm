@interface FMDDispatchTimer
- (FMDDispatchTimer)initWithQueue:(id)queue timeout:(double)timeout completion:(id)completion;
- (void)cancel;
- (void)dealloc;
- (void)start;
@end

@implementation FMDDispatchTimer

- (FMDDispatchTimer)initWithQueue:(id)queue timeout:(double)timeout completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v17.receiver = self;
  v17.super_class = FMDDispatchTimer;
  v10 = [(FMDDispatchTimer *)&v17 init];
  if (v10)
  {
    if (queueCopy)
    {
      v11 = queueCopy;
      queue = v10->_queue;
      v10->_queue = v11;
    }

    else
    {
      v13 = &_dispatch_main_q;
      queue = v10->_queue;
      v10->_queue = &_dispatch_main_q;
    }

    v10->_timeout = timeout;
    v14 = objc_retainBlock(completionCopy);
    completion = v10->_completion;
    v10->_completion = v14;

    v10->_leewayTimeInterval = 1.0;
  }

  return v10;
}

- (void)dealloc
{
  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
  }

  v4.receiver = self;
  v4.super_class = FMDDispatchTimer;
  [(FMDDispatchTimer *)&v4 dealloc];
}

- (void)start
{
  queue = [(FMDDispatchTimer *)self queue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  [(FMDDispatchTimer *)self setTimerSource:v4];

  objc_initWeak(&location, self);
  timerSource = [(FMDDispatchTimer *)self timerSource];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10000C61C;
  v16 = &unk_10001D330;
  objc_copyWeak(&v17, &location);
  dispatch_source_set_event_handler(timerSource, &v13);

  [(FMDDispatchTimer *)self timeout:v13];
  v7 = v6;
  [(FMDDispatchTimer *)self leewayTimeInterval];
  v9 = v8;
  timerSource2 = [(FMDDispatchTimer *)self timerSource];
  v11 = dispatch_time(0, (v7 * 1000000000.0));
  dispatch_source_set_timer(timerSource2, v11, 0xFFFFFFFFFFFFFFFFLL, (v9 * 1000000000.0));

  timerSource3 = [(FMDDispatchTimer *)self timerSource];
  dispatch_resume(timerSource3);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)cancel
{
  timerSource = [(FMDDispatchTimer *)self timerSource];

  if (timerSource)
  {
    timerSource2 = [(FMDDispatchTimer *)self timerSource];
    dispatch_source_cancel(timerSource2);

    [(FMDDispatchTimer *)self setTimerSource:0];
  }
}

@end