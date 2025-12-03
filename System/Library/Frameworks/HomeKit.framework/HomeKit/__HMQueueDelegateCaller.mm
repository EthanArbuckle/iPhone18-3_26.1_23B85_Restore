@interface __HMQueueDelegateCaller
- (__HMQueueDelegateCaller)initWithQueue:(id)queue;
- (void)invokeBlock:(id)block;
@end

@implementation __HMQueueDelegateCaller

- (void)invokeBlock:(id)block
{
  if (block)
  {
    dispatch_async(self->_queue, block);
  }
}

- (__HMQueueDelegateCaller)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = __HMQueueDelegateCaller;
  v6 = [(HMDelegateCaller *)&v9 initWithQueue:queueCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end