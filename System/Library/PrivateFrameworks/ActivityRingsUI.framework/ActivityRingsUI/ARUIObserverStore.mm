@interface ARUIObserverStore
- (ARUIObserverStore)init;
- (unint64_t)count;
- (void)enumerateObserversWithBlock:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation ARUIObserverStore

- (unint64_t)count
{
  [(NSPointerArray *)self->_observers compact];
  observers = self->_observers;

  return [(NSPointerArray *)observers count];
}

- (ARUIObserverStore)init
{
  v6.receiver = self;
  v6.super_class = ARUIObserverStore;
  v2 = [(ARUIObserverStore *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

- (void)removeObserver:(id)a3
{
  v6 = a3;
  if ([(NSPointerArray *)self->_observers count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [(NSPointerArray *)self->_observers pointerAtIndex:v4];
      if (v5 == v6)
      {
        break;
      }

      if (++v4 >= [(NSPointerArray *)self->_observers count])
      {
        goto LABEL_7;
      }
    }

    [(NSPointerArray *)self->_observers replacePointerAtIndex:v4 withPointer:0];
  }

LABEL_7:
  [(NSPointerArray *)self->_observers compact];
}

- (void)enumerateObserversWithBlock:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSPointerArray *)self->_observers compact];
  v5 = [(NSPointerArray *)self->_observers allObjects];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v10 + 1) + 8 * v9))
        {
          v4[2](v4);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end