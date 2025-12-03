@interface AVOperationQueueWithFundamentalDependency
- (AVOperationQueueWithFundamentalDependency)initWithFundamentalOperation:(id)operation;
- (void)addOperation:(id)operation;
- (void)addOperations:(id)operations waitUntilFinished:(BOOL)finished;
- (void)dealloc;
@end

@implementation AVOperationQueueWithFundamentalDependency

- (AVOperationQueueWithFundamentalDependency)initWithFundamentalOperation:(id)operation
{
  v7.receiver = self;
  v7.super_class = AVOperationQueueWithFundamentalDependency;
  v4 = [(AVOperationQueueWithFundamentalDependency *)&v7 init];
  if (v4)
  {
    v4->_fundamentalOperation = operation;
    if (operation)
    {
      v6.receiver = v4;
      v6.super_class = AVOperationQueueWithFundamentalDependency;
      [(AVOperationQueueWithFundamentalDependency *)&v6 addOperation:operation];
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVOperationQueueWithFundamentalDependency;
  [(AVOperationQueueWithFundamentalDependency *)&v3 dealloc];
}

- (void)addOperation:(id)operation
{
  if (self->_fundamentalOperation)
  {
    [operation addDependency:?];
  }

  v5.receiver = self;
  v5.super_class = AVOperationQueueWithFundamentalDependency;
  [(AVOperationQueueWithFundamentalDependency *)&v5 addOperation:operation];
}

- (void)addOperations:(id)operations waitUntilFinished:(BOOL)finished
{
  finishedCopy = finished;
  v17 = *MEMORY[0x1E69E9840];
  if (self->_fundamentalOperation)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [operations countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(operations);
          }

          [*(*(&v12 + 1) + 8 * i) addDependency:self->_fundamentalOperation];
        }

        v8 = [operations countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11.receiver = self;
  v11.super_class = AVOperationQueueWithFundamentalDependency;
  [(AVOperationQueueWithFundamentalDependency *)&v11 addOperations:operations waitUntilFinished:finishedCopy];
}

@end