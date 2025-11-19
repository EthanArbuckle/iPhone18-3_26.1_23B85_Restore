@interface C3DEngineNotificationQueueTransientWrapper
- (void)dealloc;
@end

@implementation C3DEngineNotificationQueueTransientWrapper

- (void)dealloc
{
  objc_storeWeak(&self->_queue, 0);
  v3.receiver = self;
  v3.super_class = C3DEngineNotificationQueueTransientWrapper;
  [(C3DEngineNotificationQueueTransientWrapper *)&v3 dealloc];
}

@end