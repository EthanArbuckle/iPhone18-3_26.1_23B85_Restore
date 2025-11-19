@interface VMDispatchTimer
- (id)init:(double)a3 leeway:(double)a4 queue:(id)a5 block:(id)a6;
- (void)dealloc;
@end

@implementation VMDispatchTimer

- (id)init:(double)a3 leeway:(double)a4 queue:(id)a5 block:(id)a6
{
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = VMDispatchTimer;
  v13 = [(VMDispatchTimer *)&v20 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v13->_queue, a5);
  v14->_interval = a3;
  v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v11);
  dispatchSource = v14->_dispatchSource;
  v14->_dispatchSource = v15;

  v17 = v14->_dispatchSource;
  if (v17)
  {
    v18 = dispatch_walltime(0, 0);
    dispatch_source_set_timer(v17, v18, (a3 * 1000000000.0), (a4 * 1000000000.0));
    dispatch_source_set_event_handler(v14->_dispatchSource, v12);
    dispatch_resume(v14->_dispatchSource);
LABEL_4:
    v17 = v14;
  }

  return v17;
}

- (void)dealloc
{
  dispatch_source_cancel(self->_dispatchSource);
  v3.receiver = self;
  v3.super_class = VMDispatchTimer;
  [(VMDispatchTimer *)&v3 dealloc];
}

@end