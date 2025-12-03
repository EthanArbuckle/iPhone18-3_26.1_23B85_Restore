@interface _TUIDynamicArrayInstance
- (BOOL)applyUpdatesForTransactionGroup:(id)group withBlock:(id)block;
- (BOOL)hasUpdatesForTransactionGroup:(id)group;
- (BOOL)optimizeUpdatesForTransactionGroup:(id)group block:(id)block;
- (TUIDynamicArrayObserving)observer;
- (_TUIDynamicArrayInstance)initWithArray:(id)array generation:(id)generation count:(unint64_t)count observer:(id)observer;
- (id)_dequeueUpdateGroup;
- (id)_dequeueUpdateGroupForTransactionGroup:(id)group;
- (id)tui_objectAtIndex:(int64_t)index;
- (id)tui_subarrayWithStart:(int64_t)start end:(int64_t)end;
- (id)tui_valueForProperty:(id)property;
- (unint64_t)countForGeneration:(id)generation;
- (void)enqueueUpdateGroup:(id)group;
- (void)fetchDataForIndexes:(id)indexes generation:(id)generation block:(id)block;
- (void)fetchDataForRange:(_NSRange)range generation:(id)generation block:(id)block;
- (void)objectsAtIndexes:(id)indexes block:(id)block;
- (void)objectsInRange:(_NSRange)range block:(id)block;
- (void)tui_unwwrapEnumeratorWithBlock:(id)block;
@end

@implementation _TUIDynamicArrayInstance

- (_TUIDynamicArrayInstance)initWithArray:(id)array generation:(id)generation count:(unint64_t)count observer:(id)observer
{
  arrayCopy = array;
  generationCopy = generation;
  observerCopy = observer;
  v19.receiver = self;
  v19.super_class = _TUIDynamicArrayInstance;
  v14 = [(_TUIDynamicArrayInstance *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_accessLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_array, array);
    objc_storeWeak(&v15->_observer, observerCopy);
    v15->_count = count;
    objc_storeStrong(&v15->_generation, generation);
    v16 = objc_opt_new();
    updateGroups = v15->_updateGroups;
    v15->_updateGroups = v16;
  }

  return v15;
}

- (BOOL)optimizeUpdatesForTransactionGroup:(id)group block:(id)block
{
  groupCopy = group;
  blockCopy = block;
  os_unfair_lock_lock(&self->_accessLock);
  v8 = [(NSMutableArray *)self->_updateGroups count];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    while (1)
    {
      if (groupCopy)
      {
        v11 = [(NSMutableArray *)self->_updateGroups objectAtIndexedSubscript:v10];
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
    v14 = [(NSMutableArray *)self->_updateGroups subarrayWithRange:0, v10];
    v15 = blockCopy[2](blockCopy, v14);
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

- (BOOL)hasUpdatesForTransactionGroup:(id)group
{
  groupCopy = group;
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

- (id)_dequeueUpdateGroup
{
  os_unfair_lock_lock(&self->_accessLock);
  if ([(NSMutableArray *)self->_updateGroups count])
  {
    firstObject = [(NSMutableArray *)self->_updateGroups firstObject];
    [(NSMutableArray *)self->_updateGroups removeObjectAtIndex:0];
  }

  else
  {
    firstObject = 0;
  }

  os_unfair_lock_unlock(&self->_accessLock);

  return firstObject;
}

- (id)_dequeueUpdateGroupForTransactionGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_lock(&self->_accessLock);
  if ([(NSMutableArray *)self->_updateGroups count])
  {
    firstObject = [(NSMutableArray *)self->_updateGroups firstObject];
    v6 = firstObject;
    if (!groupCopy || ([firstObject transaction], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(groupCopy, "containsTransaction:", v7), v7, v8))
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

- (BOOL)applyUpdatesForTransactionGroup:(id)group withBlock:(id)block
{
  blockCopy = block;
  v7 = [(_TUIDynamicArrayInstance *)self _dequeueUpdateGroupForTransactionGroup:group];
  v8 = v7;
  if (v7)
  {
    generation = [v7 generation];
    generation = self->_generation;
    self->_generation = generation;

    self->_count = [v8 count];
    if (blockCopy)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      updates = [v8 updates];
      v12 = [updates countByEnumeratingWithState:&v17 objects:v21 count:16];
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
              objc_enumerationMutation(updates);
            }

            blockCopy[2](blockCopy, [*(*(&v17 + 1) + 8 * v15) kind], objc_msgSend(*(*(&v17 + 1) + 8 * v15), "oldIndex"), objc_msgSend(*(*(&v17 + 1) + 8 * v15), "newIndex"));
            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [updates countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v13);
      }
    }
  }

  return v8 != 0;
}

- (void)objectsInRange:(_NSRange)range block:(id)block
{
  if (block)
  {
    [(_TUIDynamicArrayInstance *)self fetchDataForRange:range.location generation:range.length block:self->_generation, block];
  }
}

- (void)objectsAtIndexes:(id)indexes block:(id)block
{
  if (block)
  {
    [(_TUIDynamicArrayInstance *)self fetchDataForIndexes:indexes generation:self->_generation block:block];
  }
}

- (void)enqueueUpdateGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableArray *)self->_updateGroups addObject:groupCopy];
  os_unfair_lock_unlock(&self->_accessLock);
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  transaction = [groupCopy transaction];

  [WeakRetained dynamicChanged:self transaction:transaction];
}

- (void)fetchDataForRange:(_NSRange)range generation:(id)generation block:(id)block
{
  length = range.length;
  location = range.location;
  array = self->_array;
  blockCopy = block;
  generationCopy = generation;
  dataProvider = [(TUIDynamicArray *)array dataProvider];
  [dataProvider fetchDataForRange:location generation:length block:{generationCopy, blockCopy}];
}

- (void)fetchDataForIndexes:(id)indexes generation:(id)generation block:(id)block
{
  array = self->_array;
  blockCopy = block;
  generationCopy = generation;
  indexesCopy = indexes;
  dataProvider = [(TUIDynamicArray *)array dataProvider];
  [dataProvider fetchDataForIndexes:indexesCopy generation:generationCopy block:blockCopy];
}

- (unint64_t)countForGeneration:(id)generation
{
  array = self->_array;
  generationCopy = generation;
  dataProvider = [(TUIDynamicArray *)array dataProvider];
  v6 = [dataProvider countForGeneration:generationCopy];

  return v6;
}

- (id)tui_objectAtIndex:(int64_t)index
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1392AC;
  v13 = sub_1392BC;
  v14 = 0;
  v5 = [(_TUIDynamicArrayInstance *)self count];
  v6 = (v5 & (index >> 63)) + index;
  if (v6 >= 0 && v6 < v5)
  {
    [_TUIDynamicArrayInstance fetchDataForRange:"fetchDataForRange:generation:block:" generation:? block:?];
  }

  v7 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v7;
}

- (id)tui_subarrayWithStart:(int64_t)start end:(int64_t)end
{
  v7 = [(_TUIDynamicArrayInstance *)self count];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1392AC;
  v17 = sub_1392BC;
  v18 = 0;
  v8 = (v7 & (start >> 63)) + start;
  if (v8 < 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    if (v8 < v7)
    {
      v10 = (v7 & (end >> 63)) + end;
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

- (void)tui_unwwrapEnumeratorWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(_TUIDynamicArrayInstance *)self count];
  generation = self->_generation;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_139544;
  v8[3] = &unk_261398;
  v9 = blockCopy;
  v7 = blockCopy;
  [(_TUIDynamicArrayInstance *)self fetchDataForRange:0 generation:v5 block:generation, v8];
}

- (id)tui_valueForProperty:(id)property
{
  if ([property isEqualToString:@"count"])
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