@interface _HKWeakObserversMap
- (_HKWeakObserversMap)init;
- (id)test_observersForKey:(id)a3;
- (void)addObserver:(id)a3 queue:(id)a4 forKey:(id)a5;
- (void)notifyObserversOfKey:(id)a3 handler:(id)a4;
- (void)removeObserver:(id)a3;
- (void)removeObserver:(id)a3 forKey:(id)a4;
@end

@implementation _HKWeakObserversMap

- (_HKWeakObserversMap)init
{
  v7.receiver = self;
  v7.super_class = _HKWeakObserversMap;
  v2 = [(_HKWeakObserversMap *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[HKMultimap multimapWithWeakObjects];
    map = v3->_map;
    v3->_map = v4;
  }

  return v3;
}

- (void)addObserver:(id)a3 queue:(id)a4 forKey:(id)a5
{
  object = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_lock);
  v10 = objc_getAssociatedObject(object, &_HKAssociatedQueueKey);

  if (!v10)
  {
    if (!v8)
    {
      v8 = HKCreateSerialDispatchQueue(object, @"_HKWeakObserversMap.queue");
    }

    objc_setAssociatedObject(object, &_HKAssociatedQueueKey, v8, 0x301);
  }

  [(HKMultimap *)self->_map setObject:object forKey:v9];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKMultimap *)self->_map removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKMultimap *)self->_map removeObject:v7 forKey:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyObserversOfKey:(id)a3 handler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(HKMultimap *)self->_map objectsForKey:v6];
  os_unfair_lock_unlock(&self->_lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = objc_getAssociatedObject(v13, &_HKAssociatedQueueKey);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __52___HKWeakObserversMap_notifyObserversOfKey_handler___block_invoke;
        block[3] = &unk_1E7376710;
        block[4] = self;
        v18 = v6;
        v19 = v13;
        v20 = v7;
        dispatch_async(v14, block);
      }

      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)test_observersForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HKMultimap *)self->_map objectsForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end