@interface IOSurfaceSharedEventListener
- (IOSurfaceSharedEventListener)initWithDispatchQueue:(id)queue;
- (void)_notifyEventPort:(unsigned int)port event:(id)event atValue:(unint64_t)value block:(id)block;
- (void)dealloc;
@end

@implementation IOSurfaceSharedEventListener

- (IOSurfaceSharedEventListener)initWithDispatchQueue:(id)queue
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = IOSurfaceSharedEventListener;
  v4 = [(IOSurfaceSharedEventListener *)&v9 init];
  if (!v4)
  {
    goto LABEL_9;
  }

  if (queue)
  {
    dispatch_retain(queue);
  }

  else
  {
    queue = dispatch_queue_create("IOSurfaceEventNotification", 0);
    if (!queue)
    {
LABEL_8:

      v4 = 0;
      goto LABEL_9;
    }
  }

  *(v4 + 2) = queue;
  v5 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  *(v4 + 1) = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  IONotificationPortSetDispatchQueue(v5, *(v4 + 2));
  v6 = IOSurfaceSharedEventAddEventListener(v4, *(v4 + 1));
  if (v6)
  {
    NSLog(&cfstr_Iosurfaceshare.isa, v6);
    goto LABEL_8;
  }

LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->_notificationPort)
  {
    IOSurfaceSharedEventRemoveEventListener(self);
    IONotificationPortSetDispatchQueue(self->_notificationPort, 0);
    IONotificationPortDestroy(self->_notificationPort);
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v5.receiver = self;
  v5.super_class = IOSurfaceSharedEventListener;
  [(IOSurfaceSharedEventListener *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_notifyEventPort:(unsigned int)port event:(id)event atValue:(unint64_t)value block:(id)block
{
  v6 = IOSurfaceSharedEventNotifyEventListener(self, event, port, value, block);
  if (v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Internal error during notification request %08x", v6}];
  }
}

@end