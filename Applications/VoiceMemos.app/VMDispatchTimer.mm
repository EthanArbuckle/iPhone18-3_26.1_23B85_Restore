@interface VMDispatchTimer
- (id)init:(double)init leeway:(double)leeway queue:(id)queue block:(id)block;
- (void)dealloc;
@end

@implementation VMDispatchTimer

- (id)init:(double)init leeway:(double)leeway queue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = VMDispatchTimer;
  v13 = [(VMDispatchTimer *)&v20 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v13->_queue, queue);
  v14->_interval = init;
  v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queueCopy);
  dispatchSource = v14->_dispatchSource;
  v14->_dispatchSource = v15;

  v17 = v14->_dispatchSource;
  if (v17)
  {
    v18 = dispatch_walltime(0, 0);
    dispatch_source_set_timer(v17, v18, (init * 1000000000.0), (leeway * 1000000000.0));
    dispatch_source_set_event_handler(v14->_dispatchSource, blockCopy);
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