@interface MTLSharedEventListenerInternal
- (MTLSharedEventListenerInternal)init;
- (MTLSharedEventListenerInternal)initWithDispatchQueue:(id)queue;
- (void)_notifyEventPort:(unsigned int)port event:(id)event atValue:(unint64_t)value block:(id)block;
- (void)dealloc;
@end

@implementation MTLSharedEventListenerInternal

- (MTLSharedEventListenerInternal)init
{
  v8.receiver = self;
  v8.super_class = MTLSharedEventListenerInternal;
  v2 = [(MTLSharedEventListener *)&v8 init];
  if (v2)
  {
    v2->_notificationPort = IONotificationPortCreate(*MEMORY[0x1E696CD68]);
    v3 = dispatch_queue_create("MTLSharedEventListener", 0);
    v2->_dispatchQueue = v3;
    if (!v3 || (v4 = v3, (notificationPort = v2->_notificationPort) == 0) || (IONotificationPortSetDispatchQueue(notificationPort, v4), v6 = v2->_notificationPort, IOSurfaceSharedEventAddEventListener()))
    {

      return 0;
    }
  }

  return v2;
}

- (MTLSharedEventListenerInternal)initWithDispatchQueue:(id)queue
{
  v8.receiver = self;
  v8.super_class = MTLSharedEventListenerInternal;
  v4 = [(MTLSharedEventListener *)&v8 init];
  if (v4)
  {
    v5 = IONotificationPortCreate(*MEMORY[0x1E696CD68]);
    *(v4 + 1) = v5;
    if (!queue || !v5 || (*(v4 + 2) = queue, dispatch_retain(queue), IONotificationPortSetDispatchQueue(*(v4 + 1), *(v4 + 2)), v6 = *(v4 + 1), IOSurfaceSharedEventAddEventListener()))
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  if (self->_dispatchQueue)
  {
    IONotificationPortSetDispatchQueue(self->_notificationPort, 0);
    dispatch_release(self->_dispatchQueue);
  }

  IOSurfaceSharedEventRemoveEventListener();
  notificationPort = self->_notificationPort;
  if (notificationPort)
  {
    IONotificationPortDestroy(notificationPort);
  }

  v4.receiver = self;
  v4.super_class = MTLSharedEventListenerInternal;
  [(MTLSharedEventListenerInternal *)&v4 dealloc];
}

- (void)_notifyEventPort:(unsigned int)port event:(id)event atValue:(unint64_t)value block:(id)block
{
  v6 = IOSurfaceSharedEventNotifyEventListener();
  if (v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Internal error during notification request %08x", v6}];
  }
}

@end