@interface BSTransactionBlockObserver
- (void)addTransactionDidBeginBlock:(id)a3;
- (void)addTransactionDidCompleteBlock:(id)a3;
- (void)addTransactionDidFinishWorkBlock:(id)a3;
- (void)addTransactionWillBeginBlock:(id)a3;
- (void)transactionDidBegin:(id)a3;
- (void)transactionDidComplete:(id)a3;
- (void)transactionDidFinishWork:(id)a3;
- (void)transactionWillBegin:(id)a3;
@end

@implementation BSTransactionBlockObserver

- (void)addTransactionWillBeginBlock:(id)a3
{
  willBeginBlocks = self->_willBeginBlocks;
  if (!willBeginBlocks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_willBeginBlocks;
    self->_willBeginBlocks = v6;

    willBeginBlocks = self->_willBeginBlocks;
  }

  v9 = [a3 copy];
  v8 = MEMORY[0x193AE5AC0]();
  [(NSMutableArray *)willBeginBlocks addObject:v8];
}

- (void)addTransactionDidBeginBlock:(id)a3
{
  didBeginBlocks = self->_didBeginBlocks;
  if (!didBeginBlocks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_didBeginBlocks;
    self->_didBeginBlocks = v6;

    didBeginBlocks = self->_didBeginBlocks;
  }

  v9 = [a3 copy];
  v8 = MEMORY[0x193AE5AC0]();
  [(NSMutableArray *)didBeginBlocks addObject:v8];
}

- (void)addTransactionDidFinishWorkBlock:(id)a3
{
  didFinishWorkBlocks = self->_didFinishWorkBlocks;
  if (!didFinishWorkBlocks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_didFinishWorkBlocks;
    self->_didFinishWorkBlocks = v6;

    didFinishWorkBlocks = self->_didFinishWorkBlocks;
  }

  v9 = [a3 copy];
  v8 = MEMORY[0x193AE5AC0]();
  [(NSMutableArray *)didFinishWorkBlocks addObject:v8];
}

- (void)addTransactionDidCompleteBlock:(id)a3
{
  didCompleteBlocks = self->_didCompleteBlocks;
  if (!didCompleteBlocks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_didCompleteBlocks;
    self->_didCompleteBlocks = v6;

    didCompleteBlocks = self->_didCompleteBlocks;
  }

  v9 = [a3 copy];
  v8 = MEMORY[0x193AE5AC0]();
  [(NSMutableArray *)didCompleteBlocks addObject:v8];
}

- (void)transactionWillBegin:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(NSMutableArray *)self->_willBeginBlocks copy];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v8 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_willBeginBlocks removeAllObjects];
}

- (void)transactionDidBegin:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(NSMutableArray *)self->_didBeginBlocks copy];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v8 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_didBeginBlocks removeAllObjects];
}

- (void)transactionDidFinishWork:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(NSMutableArray *)self->_didFinishWorkBlocks copy];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v8 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_didFinishWorkBlocks removeAllObjects];
}

- (void)transactionDidComplete:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(NSMutableArray *)self->_didCompleteBlocks copy];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v8 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_didCompleteBlocks removeAllObjects];
}

@end