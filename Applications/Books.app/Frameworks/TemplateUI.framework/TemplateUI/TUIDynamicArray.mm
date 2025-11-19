@interface TUIDynamicArray
+ (TUIDynamicArray)arrayWithDataProvider:(id)a3 generation:(id)a4 count:(unint64_t)a5;
+ (TUIDynamicArray)dynamicArrayWithFetchRequest:(id)a3 managedObjectContext:(id)a4;
- (BOOL)tui_hasProperty:(id)a3;
- (TUIDynamicArray)init;
- (TUIDynamicArray)initWithDataProvider:(id)a3 generation:(id)a4 count:(unint64_t)a5;
- (TUIDynamicValue)dynamicValueForCount;
- (TUIDynamicValue)dynamicValueForEmpty;
- (id)_newUpdateGroupWithGeneration:(id)a3 transaction:(id)a4;
- (id)dynamicValueAtIndex:(int64_t)a3;
- (id)instanceForObserver:(id)a3;
- (id)instantiateAsBinding:(id)a3 options:(id)a4 flags:(unint64_t)a5 builderClass:(Class)a6 nodes:(id)a7 snapshot:(id)a8 context:(id)a9;
- (id)instantiateAsEnumerator:(id)a3 options:(id)a4 flags:(unint64_t)a5 builderClass:(Class)a6 nodes:(id)a7 snapshot:(id)a8 context:(id)a9;
- (id)js_newObserverWithController:(id)a3 block:(id)a4;
- (id)newArrayWithDataAugmenter:(id)a3;
- (id)newArrayWithDataMapper:(id)a3;
- (id)newInstanceWithGeneration:(id)a3 count:(unint64_t)a4 observer:(id)a5;
- (id)tui_objectAtIndex:(int64_t)a3;
- (id)tui_subarrayWithStart:(int64_t)a3 end:(int64_t)a4;
- (id)tui_valueForProperty:(id)a3;
- (void)_enqueueUpdate:(id)a3;
- (void)_updateProvider:(id)a3 count:(unint64_t)a4 generation:(id)a5;
- (void)updatePredicate:(id)a3;
@end

@implementation TUIDynamicArray

+ (TUIDynamicArray)dynamicArrayWithFetchRequest:(id)a3 managedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 queryGenerationToken];
  if (v7)
  {
    v8 = [v6 queryGenerationToken];
    v9 = +[NSQueryGenerationToken currentQueryGenerationToken];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      v7 = 0;
    }

    else
    {
      v11 = [[_TUICoreDataProvider alloc] initWithFetchRequest:v5 managedObjectContext:v6];
      v7 = [(_TUICoreDataProvider *)v11 _startObserving];
    }
  }

  return v7;
}

- (void)updatePredicate:(id)a3
{
  v7 = a3;
  v4 = objc_opt_class();
  v5 = [(TUIDynamicArray *)self _rootDataProvider];
  v6 = TUIDynamicCast(v4, v5);

  if (v6)
  {
    [v6 _updatePredicate:v7];
  }
}

- (id)js_newObserverWithController:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [_TUIDynamicArrayJSObserver alloc];
  v9 = [v7 coordinator];

  v10 = [(_TUIDynamicArrayJSObserver *)v8 initWithCoordinator:v9 block:v6 array:self];

  return v10;
}

- (TUIDynamicArray)init
{
  v7.receiver = self;
  v7.super_class = TUIDynamicArray;
  v2 = [(TUIDynamicArray *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    v4 = [NSMapTable mapTableWithKeyOptions:517 valueOptions:5];
    instanceByObserver = v3->_instanceByObserver;
    v3->_instanceByObserver = v4;
  }

  return v3;
}

- (TUIDynamicArray)initWithDataProvider:(id)a3 generation:(id)a4 count:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(TUIDynamicArray *)self init];
  v11 = v10;
  if (v10)
  {
    [(TUIDynamicArray *)v10 _updateProvider:v8 count:a5 generation:v9];
  }

  return v11;
}

- (void)_updateProvider:(id)a3 count:(unint64_t)a4 generation:(id)a5
{
  v8 = a3;
  v9 = a5;
  dataProvider = self->_dataProvider;
  self->_dataProvider = v8;
  v12 = v8;

  generation = self->_generation;
  self->_count = a4;
  self->_generation = v9;
}

- (id)newArrayWithDataAugmenter:(id)a3
{
  v4 = a3;
  v5 = [[_TUIAugmentedDynamicArray alloc] initWithArray:self augmenter:v4];

  return v5;
}

- (id)newArrayWithDataMapper:(id)a3
{
  v4 = a3;
  v5 = [[_TUIMappedDynamicArray alloc] initWithArray:self mapper:v4];

  return v5;
}

- (id)newInstanceWithGeneration:(id)a3 count:(unint64_t)a4 observer:(id)a5
{
  v6 = a5;
  v7 = [[_TUIDynamicArrayInstance alloc] initWithArray:self generation:self->_generation count:self->_count observer:v6];

  return v7;
}

- (id)instanceForObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(NSMapTable *)self->_instanceByObserver objectForKey:v4];
  if (!v5)
  {
    v5 = [(TUIDynamicArray *)self newInstanceWithGeneration:self->_generation count:self->_count observer:v4];
    [(NSMapTable *)self->_instanceByObserver setObject:v5 forKey:v4];
  }

  os_unfair_lock_unlock(&self->_accessLock);

  return v5;
}

- (id)instantiateAsEnumerator:(id)a3 options:(id)a4 flags:(unint64_t)a5 builderClass:(Class)a6 nodes:(id)a7 snapshot:(id)a8 context:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a4;
  v18 = [_TUIDynamicArrayContainer alloc];
  v19 = [v15 transactionCoordinator];
  v20 = [v15 dynamicController];
  v21 = [(_TUIDynamicArrayContainer *)v18 initWithEnumerator:a3.var0 binding:TUINameNil array:self context:v15 transactionCoordinator:v19 dynamicController:v20 nodes:a7 snapshot:v16 options:v17 flags:a5 builderClass:a6];

  return v21;
}

- (id)instantiateAsBinding:(id)a3 options:(id)a4 flags:(unint64_t)a5 builderClass:(Class)a6 nodes:(id)a7 snapshot:(id)a8 context:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a4;
  v18 = [_TUIDynamicArrayContainer alloc];
  v19 = [v15 transactionCoordinator];
  v20 = [v15 dynamicController];
  v21 = [(_TUIDynamicArrayContainer *)v18 initWithEnumerator:TUIEnumeratorNil binding:*&a3 array:self context:v15 transactionCoordinator:v19 dynamicController:v20 nodes:a7 snapshot:v16 options:v17 flags:a5 builderClass:a6];

  return v21;
}

+ (TUIDynamicArray)arrayWithDataProvider:(id)a3 generation:(id)a4 count:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithDataProvider:v9 generation:v8 count:a5];

  return v10;
}

- (void)_enqueueUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 transaction];
  v6 = TUITransactionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(TUIDynamicArray *)self debugName];
    WeakRetained = objc_loadWeakRetained(&self->_lastTransactionToken);
    *buf = 134218754;
    v26 = self;
    v27 = 2114;
    v28 = v7;
    v29 = 2112;
    v30 = v5;
    v31 = 2112;
    v32 = WeakRetained;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[%p] %{public}@: DynamicArray: enqueueUpdate - tx=%@, lastToken=%@", buf, 0x2Au);
  }

  v9 = objc_loadWeakRetained(&self->_lastTransactionToken);
  [v5 dependentOn:v9];

  [v5 addCategory:self->_transactionCategory];
  v10 = [v5 dependencyToken];
  objc_storeWeak(&self->_lastTransactionToken, v10);

  os_unfair_lock_lock(&self->_accessLock);
  v11 = [(NSMapTable *)self->_instanceByObserver objectEnumerator];
  v12 = [v11 allObjects];

  v13 = [v4 count];
  v14 = [v4 generation];
  [(TUIDynamicArray *)self _updateCount:v13 generation:v14];

  os_unfair_lock_unlock(&self->_accessLock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19) enqueueUpdateGroup:{v4, v20}];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (id)tui_objectAtIndex:(int64_t)a3
{
  v3 = [[_TUIDynamicArrayIndex alloc] initWithArray:self index:a3];

  return v3;
}

- (id)tui_subarrayWithStart:(int64_t)a3 end:(int64_t)a4
{
  if (a3 || a4 != -1)
  {
    v4 = [[_TUISubDynamicArray alloc] initWithArray:self start:a3 end:a4];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (BOOL)tui_hasProperty:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"count"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"empty"];
  }

  return v4;
}

- (id)tui_valueForProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"count"])
  {
    v5 = off_25CD20;
LABEL_5:
    v6 = [objc_alloc(*v5) initWithArray:self];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"empty"])
  {
    v5 = off_25CD28;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)_newUpdateGroupWithGeneration:(id)a3 transaction:(id)a4
{
  v6 = a3;
  v7 = [a4 tx];
  v8 = [[_TUIDynamicArrayUpdateGroup alloc] initWithGeneration:v6 count:self->_count transaction:v7];

  return v8;
}

- (TUIDynamicValue)dynamicValueForCount
{
  v2 = [[_TUIDynamicArrayCount alloc] initWithArray:self];

  return v2;
}

- (TUIDynamicValue)dynamicValueForEmpty
{
  v2 = [[_TUIDynamicArrayEmpty alloc] initWithArray:self];

  return v2;
}

- (id)dynamicValueAtIndex:(int64_t)a3
{
  v3 = [[_TUIDynamicArrayIndex alloc] initWithArray:self index:a3];

  return v3;
}

@end