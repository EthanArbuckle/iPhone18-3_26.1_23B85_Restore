@interface HKObserverSet
- (HKObserverSet)initWithName:(id)name loggingCategory:(id)category;
- (NSArray)allObservers;
- (unint64_t)count;
- (void)_notifyObserver:(NSObject *)observer queue:(void *)queue handler:;
- (void)_notifyObserversInGroup:(void *)group handler:;
- (void)_registerObserver:(void *)observer queue:(void *)queue runIfFirstObserver:;
- (void)_unregisterObserver:(void *)observer runIfLastObserver:;
- (void)notifyObserver:(id)observer handler:(id)handler;
- (void)unregisterAllObservers;
@end

@implementation HKObserverSet

- (HKObserverSet)initWithName:(id)name loggingCategory:(id)category
{
  nameCopy = name;
  categoryCopy = category;
  v12.receiver = self;
  v12.super_class = HKObserverSet;
  v8 = [(HKObserverSet *)&v12 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_category, category);
    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (void)unregisterAllObservers
{
  os_unfair_lock_lock(&self->_lock);
  queuesByObserver = self->_queuesByObserver;
  self->_queuesByObserver = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyObserver:(id)observer handler:(id)handler
{
  observerCopy = observer;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMapTable *)self->_queuesByObserver objectForKey:observerCopy];
  if (v7)
  {
    [(HKObserverSet *)self _notifyObserver:observerCopy queue:v7 handler:handlerCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMapTable *)self->_queuesByObserver count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSArray)allObservers
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  keyEnumerator = [(NSMapTable *)self->_queuesByObserver keyEnumerator];
  v5 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        if (*(*(&v12 + 1) + 8 * i))
        {
          [v3 addObject:?];
        }
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = [v3 copy];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_registerObserver:(void *)observer queue:(void *)queue runIfFirstObserver:
{
  v17 = a2;
  observerCopy = observer;
  queueCopy = queue;
  if (self)
  {
    os_unfair_lock_lock((self + 24));
    v9 = [*(self + 32) count];
    v10 = [*(self + 32) objectForKey:v17];

    if (!v10)
    {
      if (!observerCopy)
      {
        v11 = *(self + 40);
        if (!v11)
        {
          v12 = HKCreateSerialDispatchQueue(self, *(self + 8));
          v13 = *(self + 40);
          *(self + 40) = v12;

          v11 = *(self + 40);
        }

        observerCopy = v11;
      }

      v14 = *(self + 32);
      if (!v14)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        v16 = *(self + 32);
        *(self + 32) = weakToStrongObjectsMapTable;

        v14 = *(self + 32);
      }

      [v14 setObject:observerCopy forKey:v17];
    }

    if (queueCopy && !v9 && [*(self + 32) count] == 1)
    {
      queueCopy[2](queueCopy);
    }

    os_unfair_lock_unlock((self + 24));
  }
}

- (void)_unregisterObserver:(void *)observer runIfLastObserver:
{
  observerCopy = observer;
  if (self)
  {
    v5 = a2;
    os_unfair_lock_lock((self + 24));
    v6 = [*(self + 32) count];
    [*(self + 32) removeObjectForKey:v5];

    if (![*(self + 32) count])
    {
      v7 = *(self + 32);
      *(self + 32) = 0;

      if (observerCopy)
      {
        if (v6 >= 1)
        {
          observerCopy[2]();
        }
      }
    }

    os_unfair_lock_unlock((self + 24));
  }
}

- (void)_notifyObserversInGroup:(void *)group handler:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  groupCopy = group;
  if (self)
  {
    os_unfair_lock_lock((self + 24));
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    keyEnumerator = [*(self + 32) keyEnumerator];
    v8 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          if (v5)
          {
            dispatch_group_enter(v5);
          }

          v13 = [*(self + 32) objectForKey:v12];
          [(HKObserverSet *)self _notifyObserver:v12 queue:v13 handler:groupCopy];

          ++v11;
        }

        while (v9 != v11);
        v9 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock((self + 24));
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserver:(NSObject *)observer queue:(void *)queue handler:
{
  v7 = a2;
  queueCopy = queue;
  v9 = queueCopy;
  if (self)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__HKObserverSet__notifyObserver_queue_handler___block_invoke;
    v10[3] = &unk_1E7376AC0;
    v12 = queueCopy;
    v11 = v7;
    dispatch_async(observer, v10);
  }
}

@end