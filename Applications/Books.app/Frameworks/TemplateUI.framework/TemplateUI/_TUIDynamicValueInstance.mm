@interface _TUIDynamicValueInstance
- (BOOL)applyUpdatesForTransactionGroup:(id)group;
- (BOOL)hasUpdatesForTransactionGroup:(id)group;
- (BOOL)optimizeUpdatesForTransactionGroup:(id)group;
- (BOOL)optimizeUpdatesForTransactionGroup:(id)group block:(id)block;
- (TUIDynamicValueObserving)observer;
- (_TUIDynamicValueInstance)initWithDynamicValue:(id)value value:(id)a4 observer:(id)observer;
- (id)dequeueUpdate;
- (id)tui_unwrapDynamicWithError:(unint64_t *)error;
- (void)enqueueUpdate:(id)update;
- (void)valueWithBlock:(id)block;
@end

@implementation _TUIDynamicValueInstance

- (_TUIDynamicValueInstance)initWithDynamicValue:(id)value value:(id)a4 observer:(id)observer
{
  valueCopy = value;
  v10 = a4;
  observerCopy = observer;
  v15.receiver = self;
  v15.super_class = _TUIDynamicValueInstance;
  v12 = [(_TUIDynamicValueInstance *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_accessLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_dynamicValue, value);
    objc_storeStrong(&v13->_value, a4);
    objc_storeWeak(&v13->_observer, observerCopy);
  }

  return v13;
}

- (void)enqueueUpdate:(id)update
{
  updateCopy = update;
  os_unfair_lock_lock(&self->_accessLock);
  updates = self->_updates;
  if (!updates)
  {
    v6 = objc_opt_new();
    v7 = self->_updates;
    self->_updates = v6;

    updates = self->_updates;
  }

  [(NSMutableArray *)updates addObject:updateCopy];
  os_unfair_lock_unlock(&self->_accessLock);
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  transaction = [updateCopy transaction];

  [WeakRetained dynamicChanged:self transaction:transaction];
}

- (id)dequeueUpdate
{
  os_unfair_lock_lock(&self->_accessLock);
  if ([(NSMutableArray *)self->_updates count])
  {
    v3 = [(NSMutableArray *)self->_updates objectAtIndexedSubscript:0];
    [(NSMutableArray *)self->_updates removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_accessLock);

  return v3;
}

- (BOOL)optimizeUpdatesForTransactionGroup:(id)group block:(id)block
{
  groupCopy = group;
  blockCopy = block;
  os_unfair_lock_lock(&self->_accessLock);
  v8 = [(NSMutableArray *)self->_updates count];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    while (1)
    {
      if (groupCopy)
      {
        v11 = [(NSMutableArray *)self->_updates objectAtIndexedSubscript:v10];
        transaction = [v11 transaction];
        v13 = [groupCopy containsTransaction:transaction];

        if (!v13)
        {
          break;
        }
      }

      if (v9 == ++v10)
      {
        v10 = v9;
        goto LABEL_9;
      }
    }

    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_9:
    v14 = [(NSMutableArray *)self->_updates subarrayWithRange:0, v10];
    v15 = blockCopy[2](blockCopy, v14);
    v16 = v15;
    if (v14 != v15)
    {
      v17 = [v15 count];
      updates = self->_updates;
      if (!v17)
      {
        [(NSMutableArray *)updates removeObjectsInRange:0, v10];
        LOBYTE(v10) = 0;
        goto LABEL_14;
      }

      [(NSMutableArray *)updates replaceObjectsInRange:0 withObjectsFromArray:v10, v16];
    }

    LOBYTE(v10) = 1;
LABEL_14:

    goto LABEL_15;
  }

  LOBYTE(v10) = 0;
LABEL_15:
  os_unfair_lock_unlock(&self->_accessLock);

  return v10;
}

- (BOOL)hasUpdatesForTransactionGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_lock(&self->_accessLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_updates;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (groupCopy)
        {
          transaction = [*(*(&v14 + 1) + 8 * i) transaction];
          v11 = [groupCopy containsTransaction:transaction];

          if ((v11 & 1) == 0)
          {
            continue;
          }
        }

        v12 = 1;
        goto LABEL_13;
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v12 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  os_unfair_lock_unlock(&self->_accessLock);
  return v12;
}

- (BOOL)optimizeUpdatesForTransactionGroup:(id)group
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_69EB8;
  v4[3] = &unk_25F6E8;
  v4[4] = self;
  return [(_TUIDynamicValueInstance *)self optimizeUpdatesForTransactionGroup:group block:v4];
}

- (BOOL)applyUpdatesForTransactionGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_lock(&self->_accessLock);
  if ([(NSMutableArray *)self->_updates count])
  {
    firstObject = [(NSMutableArray *)self->_updates firstObject];
    v6 = firstObject;
    if (groupCopy && ([firstObject transaction], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(groupCopy, "containsTransaction:", v7), v7, !v8))
    {
      v11 = 0;
    }

    else
    {
      [(NSMutableArray *)self->_updates removeObjectAtIndex:0];
      value = [v6 value];
      value = self->_value;
      self->_value = value;

      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_unlock(&self->_accessLock);

  return v11;
}

- (void)valueWithBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block, self->_value);
  }
}

- (id)tui_unwrapDynamicWithError:(unint64_t *)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_6A138;
  v10 = sub_6A148;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6A150;
  v5[3] = &unk_25F710;
  v5[4] = &v6;
  [(_TUIDynamicValueInstance *)self valueWithBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (TUIDynamicValueObserving)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end