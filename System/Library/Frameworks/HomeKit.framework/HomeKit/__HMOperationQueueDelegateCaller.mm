@interface __HMOperationQueueDelegateCaller
- (__HMOperationQueueDelegateCaller)init;
- (__HMOperationQueueDelegateCaller)initWithOperationQueue:(id)queue;
- (__HMOperationQueueDelegateCaller)initWithQueue:(id)queue;
- (void)invokeBlock:(id)block;
@end

@implementation __HMOperationQueueDelegateCaller

- (void)invokeBlock:(id)block
{
  if (block)
  {
    [(NSOperationQueue *)self->_queue addOperationWithBlock:?];
  }
}

- (__HMOperationQueueDelegateCaller)initWithOperationQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = __HMOperationQueueDelegateCaller;
  v6 = [(HMDelegateCaller *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (__HMOperationQueueDelegateCaller)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = __HMOperationQueueDelegateCaller;
  v5 = [(HMDelegateCaller *)&v9 initWithQueue:queueCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    queue = v5->_queue;
    v5->_queue = v6;

    [(NSOperationQueue *)v5->_queue setName:@"HomeKit Delegate Caller"];
    [(NSOperationQueue *)v5->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v5->_queue setUnderlyingQueue:queueCopy];
  }

  return v5;
}

- (__HMOperationQueueDelegateCaller)init
{
  v6.receiver = self;
  v6.super_class = __HMOperationQueueDelegateCaller;
  v2 = [(HMDelegateCaller *)&v6 init];
  if (v2)
  {
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    queue = v2->_queue;
    v2->_queue = mainQueue;
  }

  return v2;
}

@end