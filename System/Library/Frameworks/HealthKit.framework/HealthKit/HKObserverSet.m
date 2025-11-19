@interface HKObserverSet
- (HKObserverSet)initWithName:(id)a3 loggingCategory:(id)a4;
- (NSArray)allObservers;
- (unint64_t)count;
- (void)_notifyObserver:(NSObject *)a3 queue:(void *)a4 handler:;
- (void)_notifyObserversInGroup:(void *)a3 handler:;
- (void)_registerObserver:(void *)a3 queue:(void *)a4 runIfFirstObserver:;
- (void)_unregisterObserver:(void *)a3 runIfLastObserver:;
- (void)notifyObserver:(id)a3 handler:(id)a4;
- (void)unregisterAllObservers;
@end

@implementation HKObserverSet

- (HKObserverSet)initWithName:(id)a3 loggingCategory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HKObserverSet;
  v8 = [(HKObserverSet *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_category, a4);
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

- (void)notifyObserver:(id)a3 handler:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMapTable *)self->_queuesByObserver objectForKey:v8];
  if (v7)
  {
    [(HKObserverSet *)self _notifyObserver:v8 queue:v7 handler:v6];
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
  v4 = [(NSMapTable *)self->_queuesByObserver keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        if (*(*(&v12 + 1) + 8 * i))
        {
          [v3 addObject:?];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = [v3 copy];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_registerObserver:(void *)a3 queue:(void *)a4 runIfFirstObserver:
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 24));
    v9 = [*(a1 + 32) count];
    v10 = [*(a1 + 32) objectForKey:v17];

    if (!v10)
    {
      if (!v7)
      {
        v11 = *(a1 + 40);
        if (!v11)
        {
          v12 = HKCreateSerialDispatchQueue(a1, *(a1 + 8));
          v13 = *(a1 + 40);
          *(a1 + 40) = v12;

          v11 = *(a1 + 40);
        }

        v7 = v11;
      }

      v14 = *(a1 + 32);
      if (!v14)
      {
        v15 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        v16 = *(a1 + 32);
        *(a1 + 32) = v15;

        v14 = *(a1 + 32);
      }

      [v14 setObject:v7 forKey:v17];
    }

    if (v8 && !v9 && [*(a1 + 32) count] == 1)
    {
      v8[2](v8);
    }

    os_unfair_lock_unlock((a1 + 24));
  }
}

- (void)_unregisterObserver:(void *)a3 runIfLastObserver:
{
  v8 = a3;
  if (a1)
  {
    v5 = a2;
    os_unfair_lock_lock((a1 + 24));
    v6 = [*(a1 + 32) count];
    [*(a1 + 32) removeObjectForKey:v5];

    if (![*(a1 + 32) count])
    {
      v7 = *(a1 + 32);
      *(a1 + 32) = 0;

      if (v8)
      {
        if (v6 >= 1)
        {
          v8[2]();
        }
      }
    }

    os_unfair_lock_unlock((a1 + 24));
  }
}

- (void)_notifyObserversInGroup:(void *)a3 handler:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 24));
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [*(a1 + 32) keyEnumerator];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          if (v5)
          {
            dispatch_group_enter(v5);
          }

          v13 = [*(a1 + 32) objectForKey:v12];
          [(HKObserverSet *)a1 _notifyObserver:v12 queue:v13 handler:v6];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock((a1 + 24));
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserver:(NSObject *)a3 queue:(void *)a4 handler:
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__HKObserverSet__notifyObserver_queue_handler___block_invoke;
    v10[3] = &unk_1E7376AC0;
    v12 = v8;
    v11 = v7;
    dispatch_async(a3, v10);
  }
}

@end