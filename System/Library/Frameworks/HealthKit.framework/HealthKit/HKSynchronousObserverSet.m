@interface HKSynchronousObserverSet
- (HKSynchronousObserverSet)initWithName:(id)a3 loggingCategory:(id)a4;
- (NSArray)allObservers;
- (unint64_t)count;
- (void)notifyObservers:(id)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation HKSynchronousObserverSet

- (HKSynchronousObserverSet)initWithName:(id)a3 loggingCategory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKSynchronousObserverSet;
  v8 = [(HKSynchronousObserverSet *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_category, a4);
    v11 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observerTable = v8->_observerTable;
    v8->_observerTable = v11;

    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (![(NSHashTable *)self->_observerTable containsObject:v4])
  {
    [(NSHashTable *)self->_observerTable addObject:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSHashTable *)self->_observerTable containsObject:v4])
  {
    [(NSHashTable *)self->_observerTable removeObject:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyObservers:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_observerTable allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_observerTable count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSArray)allObservers
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_observerTable allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end