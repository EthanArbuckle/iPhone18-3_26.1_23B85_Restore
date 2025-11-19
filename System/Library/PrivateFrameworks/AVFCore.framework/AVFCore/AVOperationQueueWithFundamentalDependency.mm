@interface AVOperationQueueWithFundamentalDependency
- (AVOperationQueueWithFundamentalDependency)initWithFundamentalOperation:(id)a3;
- (void)addOperation:(id)a3;
- (void)addOperations:(id)a3 waitUntilFinished:(BOOL)a4;
- (void)dealloc;
@end

@implementation AVOperationQueueWithFundamentalDependency

- (AVOperationQueueWithFundamentalDependency)initWithFundamentalOperation:(id)a3
{
  v7.receiver = self;
  v7.super_class = AVOperationQueueWithFundamentalDependency;
  v4 = [(AVOperationQueueWithFundamentalDependency *)&v7 init];
  if (v4)
  {
    v4->_fundamentalOperation = a3;
    if (a3)
    {
      v6.receiver = v4;
      v6.super_class = AVOperationQueueWithFundamentalDependency;
      [(AVOperationQueueWithFundamentalDependency *)&v6 addOperation:a3];
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

- (void)addOperation:(id)a3
{
  if (self->_fundamentalOperation)
  {
    [a3 addDependency:?];
  }

  v5.receiver = self;
  v5.super_class = AVOperationQueueWithFundamentalDependency;
  [(AVOperationQueueWithFundamentalDependency *)&v5 addOperation:a3];
}

- (void)addOperations:(id)a3 waitUntilFinished:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  if (self->_fundamentalOperation)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(a3);
          }

          [*(*(&v12 + 1) + 8 * i) addDependency:self->_fundamentalOperation];
        }

        v8 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11.receiver = self;
  v11.super_class = AVOperationQueueWithFundamentalDependency;
  [(AVOperationQueueWithFundamentalDependency *)&v11 addOperations:a3 waitUntilFinished:v4];
}

@end