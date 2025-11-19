@interface AVEventManager
- (AVEventManager)initWithOwner:(id)a3;
- (void)_addActionIfPossible:(id)a3;
- (void)_ensureActionStorage;
- (void)addAction:(SEL)a3 withTarget:(id)a4 forEvent:(id)a5;
- (void)addAction:(id)a3 forEvent:(id)a4;
- (void)removeAction:(SEL)a3 withTarget:(id)a4 forEvent:(id)a5;
- (void)sendActionsForEvent:(id)a3;
@end

@implementation AVEventManager

- (void)_ensureActionStorage
{
  if (!self->_actionStorage)
  {
    v4 = objc_opt_new();
    actionStorage = self->_actionStorage;
    self->_actionStorage = v4;

    MEMORY[0x1EEE66BB8](v4, actionStorage);
  }
}

- (void)_addActionIfPossible:(id)a3
{
  v4 = a3;
  [(AVEventManager *)self _ensureActionStorage];
  if (([(NSMutableArray *)self->_actionStorage containsObject:v4]& 1) == 0)
  {
    [(NSMutableArray *)self->_actionStorage addObject:v4];
  }
}

- (void)sendActionsForEvent:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  if (WeakRetained)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_actionStorage;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if ([v11 hasMatchingEvent:{v4, v12}])
          {
            [v11 sendAction:WeakRetained];
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)removeAction:(SEL)a3 withTarget:(id)a4 forEvent:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [MEMORY[0x1E695DEC8] arrayWithArray:{self->_actionStorage, 0}];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ([v15 hasMatchingTarget:v8 withSelector:a3 forEvent:v9])
        {
          [(NSMutableArray *)self->_actionStorage removeObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)addAction:(SEL)a3 withTarget:(id)a4 forEvent:(id)a5
{
  v6 = [AVEventManagerAction actionWithTarget:a4 selector:a3 event:a5];
  [(AVEventManager *)self _addActionIfPossible:v6];
}

- (void)addAction:(id)a3 forEvent:(id)a4
{
  v5 = [AVEventManagerAction actionWithBlock:a3 event:a4];
  [(AVEventManager *)self _addActionIfPossible:v5];
}

- (AVEventManager)initWithOwner:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AVEventManager;
  v5 = [(AVEventManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owner, v4);
  }

  return v6;
}

@end