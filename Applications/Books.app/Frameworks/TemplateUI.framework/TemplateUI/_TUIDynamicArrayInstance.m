@interface _TUIDynamicArrayInstance
- (BOOL)applyUpdatesForTransactionGroup:(id)a3 withBlock:(id)a4;
- (BOOL)hasUpdatesForTransactionGroup:(id)a3;
- (BOOL)optimizeUpdatesForTransactionGroup:(id)a3 block:(id)a4;
- (TUIDynamicArrayObserving)observer;
- (_TUIDynamicArrayInstance)initWithArray:(id)a3 generation:(id)a4 count:(unint64_t)a5 observer:(id)a6;
- (id)_dequeueUpdateGroup;
- (id)_dequeueUpdateGroupForTransactionGroup:(id)a3;
- (id)tui_objectAtIndex:(int64_t)a3;
- (id)tui_subarrayWithStart:(int64_t)a3 end:(int64_t)a4;
- (id)tui_valueForProperty:(id)a3;
- (unint64_t)countForGeneration:(id)a3;
- (void)enqueueUpdateGroup:(id)a3;
- (void)fetchDataForIndexes:(id)a3 generation:(id)a4 block:(id)a5;
- (void)fetchDataForRange:(_NSRange)a3 generation:(id)a4 block:(id)a5;
- (void)objectsAtIndexes:(id)a3 block:(id)a4;
- (void)objectsInRange:(_NSRange)a3 block:(id)a4;
- (void)tui_unwwrapEnumeratorWithBlock:(id)a3;
@end

@implementation _TUIDynamicArrayInstance

- (_TUIDynamicArrayInstance)initWithArray:(id)a3 generation:(id)a4 count:(unint64_t)a5 observer:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = _TUIDynamicArrayInstance;
  v14 = [(_TUIDynamicArrayInstance *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_accessLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_array, a3);
    objc_storeWeak(&v15->_observer, v13);
    v15->_count = a5;
    objc_storeStrong(&v15->_generation, a4);
    v16 = objc_opt_new();
    updateGroups = v15->_updateGroups;
    v15->_updateGroups = v16;
  }

  return v15;
}

- (BOOL)optimizeUpdatesForTransactionGroup:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_accessLock);
  v8 = [(NSMutableArray *)self->_updateGroups count];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    while (1)
    {
      if (v6)
      {
        v11 = [(NSMutableArray *)self->_updateGroups objectAtIndexedSubscript:v10];
        v12 = [v11 transaction];
        v13 = [v6 containsTransaction:v12];

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
    v14 = [(NSMutableArray *)self->_updateGroups subarrayWithRange:0, v10];
    v15 = v7[2](v7, v14);
    v16 = v15;
    if (v14 != v15)
    {
      v17 = [v15 count];
      updateGroups = self->_updateGroups;
      if (!v17)
      {
        [(NSMutableArray *)updateGroups removeObjectsInRange:0, v10];
        LOBYTE(v10) = 0;
        goto LABEL_14;
      }

      [(NSMutableArray *)updateGroups replaceObjectsInRange:0 withObjectsFromArray:v10, v16];
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

- (BOOL)hasUpdatesForTransactionGroup:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_updateGroups;
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

        if (v4)
        {
          v10 = [*(*(&v14 + 1) + 8 * i) transaction];
          v11 = [v4 containsTransaction:v10];

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

- (id)_dequeueUpdateGroup
{
  os_unfair_lock_lock(&self->_accessLock);
  if ([(NSMutableArray *)self->_updateGroups count])
  {
    v3 = [(NSMutableArray *)self->_updateGroups firstObject];
    [(NSMutableArray *)self->_updateGroups removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_accessLock);

  return v3;
}

- (id)_dequeueUpdateGroupForTransactionGroup:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  if ([(NSMutableArray *)self->_updateGroups count])
  {
    v5 = [(NSMutableArray *)self->_updateGroups firstObject];
    v6 = v5;
    if (!v4 || ([v5 transaction], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v4, "containsTransaction:", v7), v7, v8))
    {
      [(NSMutableArray *)self->_updateGroups removeObjectAtIndex:0];
      goto LABEL_7;
    }
  }

  v6 = 0;
LABEL_7:
  os_unfair_lock_unlock(&self->_accessLock);

  return v6;
}

- (BOOL)applyUpdatesForTransactionGroup:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = [(_TUIDynamicArrayInstance *)self _dequeueUpdateGroupForTransactionGroup:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 generation];
    generation = self->_generation;
    self->_generation = v9;

    self->_count = [v8 count];
    if (v6)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = [v8 updates];
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v18;
        do
        {
          v15 = 0;
          do
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v6[2](v6, [*(*(&v17 + 1) + 8 * v15) kind], objc_msgSend(*(*(&v17 + 1) + 8 * v15), "oldIndex"), objc_msgSend(*(*(&v17 + 1) + 8 * v15), "newIndex"));
            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v13);
      }
    }
  }

  return v8 != 0;
}

- (void)objectsInRange:(_NSRange)a3 block:(id)a4
{
  if (a4)
  {
    [(_TUIDynamicArrayInstance *)self fetchDataForRange:a3.location generation:a3.length block:self->_generation, a4];
  }
}

- (void)objectsAtIndexes:(id)a3 block:(id)a4
{
  if (a4)
  {
    [(_TUIDynamicArrayInstance *)self fetchDataForIndexes:a3 generation:self->_generation block:a4];
  }
}

- (void)enqueueUpdateGroup:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableArray *)self->_updateGroups addObject:v4];
  os_unfair_lock_unlock(&self->_accessLock);
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v5 = [v4 transaction];

  [WeakRetained dynamicChanged:self transaction:v5];
}

- (void)fetchDataForRange:(_NSRange)a3 generation:(id)a4 block:(id)a5
{
  length = a3.length;
  location = a3.location;
  array = self->_array;
  v9 = a5;
  v10 = a4;
  v11 = [(TUIDynamicArray *)array dataProvider];
  [v11 fetchDataForRange:location generation:length block:{v10, v9}];
}

- (void)fetchDataForIndexes:(id)a3 generation:(id)a4 block:(id)a5
{
  array = self->_array;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(TUIDynamicArray *)array dataProvider];
  [v11 fetchDataForIndexes:v10 generation:v9 block:v8];
}

- (unint64_t)countForGeneration:(id)a3
{
  array = self->_array;
  v4 = a3;
  v5 = [(TUIDynamicArray *)array dataProvider];
  v6 = [v5 countForGeneration:v4];

  return v6;
}

- (id)tui_objectAtIndex:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1392AC;
  v13 = sub_1392BC;
  v14 = 0;
  v5 = [(_TUIDynamicArrayInstance *)self count];
  v6 = (v5 & (a3 >> 63)) + a3;
  if (v6 >= 0 && v6 < v5)
  {
    [_TUIDynamicArrayInstance fetchDataForRange:"fetchDataForRange:generation:block:" generation:? block:?];
  }

  v7 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v7;
}

- (id)tui_subarrayWithStart:(int64_t)a3 end:(int64_t)a4
{
  v7 = [(_TUIDynamicArrayInstance *)self count];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1392AC;
  v17 = sub_1392BC;
  v18 = 0;
  v8 = (v7 & (a3 >> 63)) + a3;
  if (v8 < 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    if (v8 < v7)
    {
      v10 = (v7 & (a4 >> 63)) + a4;
      if ((v10 & 0x8000000000000000) == 0 && v10 < v7 && v8 <= v10)
      {
        [_TUIDynamicArrayInstance fetchDataForRange:"fetchDataForRange:generation:block:" generation:? block:?];
        v9 = v14[5];
      }
    }
  }

  v11 = v9;
  _Block_object_dispose(&v13, 8);

  return v11;
}

- (void)tui_unwwrapEnumeratorWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(_TUIDynamicArrayInstance *)self count];
  generation = self->_generation;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_139544;
  v8[3] = &unk_261398;
  v9 = v4;
  v7 = v4;
  [(_TUIDynamicArrayInstance *)self fetchDataForRange:0 generation:v5 block:generation, v8];
}

- (id)tui_valueForProperty:(id)a3
{
  if ([a3 isEqualToString:@"count"])
  {
    v4 = [NSNumber numberWithUnsignedInteger:self->_count];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (TUIDynamicArrayObserving)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end