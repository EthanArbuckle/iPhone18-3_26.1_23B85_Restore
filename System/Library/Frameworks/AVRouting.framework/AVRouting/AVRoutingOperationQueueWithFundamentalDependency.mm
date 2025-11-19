@interface AVRoutingOperationQueueWithFundamentalDependency
- (AVRoutingOperationQueueWithFundamentalDependency)initWithFundamentalOperation:(id)a3;
- (void)addOperation:(id)a3;
- (void)dealloc;
@end

@implementation AVRoutingOperationQueueWithFundamentalDependency

- (AVRoutingOperationQueueWithFundamentalDependency)initWithFundamentalOperation:(id)a3
{
  v7.receiver = self;
  v7.super_class = AVRoutingOperationQueueWithFundamentalDependency;
  v4 = [(AVRoutingOperationQueueWithFundamentalDependency *)&v7 init];
  if (v4)
  {
    v4->_fundamentalOperation = a3;
    if (a3)
    {
      v6.receiver = v4;
      v6.super_class = AVRoutingOperationQueueWithFundamentalDependency;
      [(AVRoutingOperationQueueWithFundamentalDependency *)&v6 addOperation:a3];
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

- (void)addOperation:(id)a3
{
  if (self->_fundamentalOperation)
  {
    [a3 addDependency:?];
  }

  v5.receiver = self;
  v5.super_class = AVRoutingOperationQueueWithFundamentalDependency;
  [(AVRoutingOperationQueueWithFundamentalDependency *)&v5 addOperation:a3];
}

@end