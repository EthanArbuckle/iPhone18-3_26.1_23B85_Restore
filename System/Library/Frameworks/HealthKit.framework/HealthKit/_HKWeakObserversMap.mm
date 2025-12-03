@interface _HKWeakObserversMap
- (_HKWeakObserversMap)init;
- (id)test_observersForKey:(id)key;
- (void)addObserver:(id)observer queue:(id)queue forKey:(id)key;
- (void)notifyObserversOfKey:(id)key handler:(id)handler;
- (void)removeObserver:(id)observer;
- (void)removeObserver:(id)observer forKey:(id)key;
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

- (void)addObserver:(id)observer queue:(id)queue forKey:(id)key
{
  object = observer;
  queueCopy = queue;
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v10 = objc_getAssociatedObject(object, &_HKAssociatedQueueKey);

  if (!v10)
  {
    if (!queueCopy)
    {
      queueCopy = HKCreateSerialDispatchQueue(object, @"_HKWeakObserversMap.queue");
    }

    objc_setAssociatedObject(object, &_HKAssociatedQueueKey, queueCopy, 0x301);
  }

  [(HKMultimap *)self->_map setObject:object forKey:keyCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(HKMultimap *)self->_map removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer forKey:(id)key
{
  keyCopy = key;
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(HKMultimap *)self->_map removeObject:observerCopy forKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyObserversOfKey:(id)key handler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(HKMultimap *)self->_map objectsForKey:keyCopy];
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
        v18 = keyCopy;
        v19 = v13;
        v20 = handlerCopy;
        dispatch_async(v14, block);
      }

      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)test_observersForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HKMultimap *)self->_map objectsForKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end