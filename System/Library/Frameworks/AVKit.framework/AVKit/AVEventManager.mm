@interface AVEventManager
- (AVEventManager)initWithOwner:(id)owner;
- (void)_addActionIfPossible:(id)possible;
- (void)_ensureActionStorage;
- (void)addAction:(SEL)action withTarget:(id)target forEvent:(id)event;
- (void)addAction:(id)action forEvent:(id)event;
- (void)removeAction:(SEL)action withTarget:(id)target forEvent:(id)event;
- (void)sendActionsForEvent:(id)event;
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

- (void)_addActionIfPossible:(id)possible
{
  possibleCopy = possible;
  [(AVEventManager *)self _ensureActionStorage];
  if (([(NSMutableArray *)self->_actionStorage containsObject:possibleCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_actionStorage addObject:possibleCopy];
  }
}

- (void)sendActionsForEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
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
          if ([v11 hasMatchingEvent:{eventCopy, v12}])
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

- (void)removeAction:(SEL)action withTarget:(id)target forEvent:(id)event
{
  v21 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  eventCopy = event;
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
        if ([v15 hasMatchingTarget:targetCopy withSelector:action forEvent:eventCopy])
        {
          [(NSMutableArray *)self->_actionStorage removeObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)addAction:(SEL)action withTarget:(id)target forEvent:(id)event
{
  v6 = [AVEventManagerAction actionWithTarget:target selector:action event:event];
  [(AVEventManager *)self _addActionIfPossible:v6];
}

- (void)addAction:(id)action forEvent:(id)event
{
  v5 = [AVEventManagerAction actionWithBlock:action event:event];
  [(AVEventManager *)self _addActionIfPossible:v5];
}

- (AVEventManager)initWithOwner:(id)owner
{
  ownerCopy = owner;
  v8.receiver = self;
  v8.super_class = AVEventManager;
  v5 = [(AVEventManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owner, ownerCopy);
  }

  return v6;
}

@end