@interface AVRoutingOperationQueueWithFundamentalDependency
- (AVRoutingOperationQueueWithFundamentalDependency)initWithFundamentalOperation:(id)operation;
- (void)addOperation:(id)operation;
- (void)dealloc;
@end

@implementation AVRoutingOperationQueueWithFundamentalDependency

- (AVRoutingOperationQueueWithFundamentalDependency)initWithFundamentalOperation:(id)operation
{
  v7.receiver = self;
  v7.super_class = AVRoutingOperationQueueWithFundamentalDependency;
  v4 = [(AVRoutingOperationQueueWithFundamentalDependency *)&v7 init];
  if (v4)
  {
    v4->_fundamentalOperation = operation;
    if (operation)
    {
      v6.receiver = v4;
      v6.super_class = AVRoutingOperationQueueWithFundamentalDependency;
      [(AVRoutingOperationQueueWithFundamentalDependency *)&v6 addOperation:operation];
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVRoutingOperationQueueWithFundamentalDependency;
  [(AVRoutingOperationQueueWithFundamentalDependency *)&v3 dealloc];
}

- (void)addOperation:(id)operation
{
  if (self->_fundamentalOperation)
  {
    [operation addDependency:?];
  }

  v5.receiver = self;
  v5.super_class = AVRoutingOperationQueueWithFundamentalDependency;
  [(AVRoutingOperationQueueWithFundamentalDependency *)&v5 addOperation:operation];
}

@end