@interface HKSynchronousObserverSet
- (HKSynchronousObserverSet)initWithName:(id)name loggingCategory:(id)category;
- (NSArray)allObservers;
- (unint64_t)count;
- (void)notifyObservers:(id)observers;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation HKSynchronousObserverSet

- (HKSynchronousObserverSet)initWithName:(id)name loggingCategory:(id)category
{
  nameCopy = name;
  categoryCopy = category;
  v14.receiver = self;
  v14.super_class = HKSynchronousObserverSet;
  v8 = [(HKSynchronousObserverSet *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_category, category);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observerTable = v8->_observerTable;
    v8->_observerTable = weakObjectsHashTable;

    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  if (![(NSHashTable *)self->_observerTable containsObject:observerCopy])
  {
    [(NSHashTable *)self->_observerTable addObject:observerCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSHashTable *)self->_observerTable containsObject:observerCopy])
  {
    [(NSHashTable *)self->_observerTable removeObject:observerCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyObservers:(id)observers
{
  v17 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_observerTable allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = allObjects;
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

        observersCopy[2](observersCopy, *(*(&v12 + 1) + 8 * v10++));
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
  allObjects = [(NSHashTable *)self->_observerTable allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

@end