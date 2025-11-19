@interface _NSSQLCoreConnectionObserver
- (void)dealloc;
@end

@implementation _NSSQLCoreConnectionObserver

- (void)dealloc
{
  token = self->_token;
  if (token != -1)
  {
    notify_cancel(token);
    self->_token = -1;
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  objc_storeWeak(&self->_core, 0);
  v5.receiver = self;
  v5.super_class = _NSSQLCoreConnectionObserver;
  [(_NSSQLCoreConnectionObserver *)&v5 dealloc];
}

@end