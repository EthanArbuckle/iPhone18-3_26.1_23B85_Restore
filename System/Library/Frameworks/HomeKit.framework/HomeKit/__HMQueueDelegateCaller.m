@interface __HMQueueDelegateCaller
- (__HMQueueDelegateCaller)initWithQueue:(id)a3;
- (void)invokeBlock:(id)a3;
@end

@implementation __HMQueueDelegateCaller

- (void)invokeBlock:(id)a3
{
  if (a3)
  {
    dispatch_async(self->_queue, a3);
  }
}

- (__HMQueueDelegateCaller)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = __HMQueueDelegateCaller;
  v6 = [(HMDelegateCaller *)&v9 initWithQueue:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

@end