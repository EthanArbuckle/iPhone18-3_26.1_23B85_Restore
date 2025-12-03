@interface TUIDynamicArray
+ (TUIDynamicArray)arrayWithDataProvider:(id)provider generation:(id)generation count:(unint64_t)count;
+ (TUIDynamicArray)dynamicArrayWithFetchRequest:(id)request managedObjectContext:(id)context;
- (BOOL)tui_hasProperty:(id)property;
- (TUIDynamicArray)init;
- (TUIDynamicArray)initWithDataProvider:(id)provider generation:(id)generation count:(unint64_t)count;
- (TUIDynamicValue)dynamicValueForCount;
- (TUIDynamicValue)dynamicValueForEmpty;
- (id)_newUpdateGroupWithGeneration:(id)generation transaction:(id)transaction;
- (id)dynamicValueAtIndex:(int64_t)index;
- (id)instanceForObserver:(id)observer;
- (id)instantiateAsBinding:(id)binding options:(id)options flags:(unint64_t)flags builderClass:(Class)class nodes:(id)nodes snapshot:(id)snapshot context:(id)context;
- (id)instantiateAsEnumerator:(id)enumerator options:(id)options flags:(unint64_t)flags builderClass:(Class)class nodes:(id)nodes snapshot:(id)snapshot context:(id)context;
- (id)js_newObserverWithController:(id)controller block:(id)block;
- (id)newArrayWithDataAugmenter:(id)augmenter;
- (id)newArrayWithDataMapper:(id)mapper;
- (id)newInstanceWithGeneration:(id)generation count:(unint64_t)count observer:(id)observer;
- (id)tui_objectAtIndex:(int64_t)index;
- (id)tui_subarrayWithStart:(int64_t)start end:(int64_t)end;
- (id)tui_valueForProperty:(id)property;
- (void)_enqueueUpdate:(id)update;
- (void)_updateProvider:(id)provider count:(unint64_t)count generation:(id)generation;
- (void)updatePredicate:(id)predicate;
@end

@implementation TUIDynamicArray

+ (TUIDynamicArray)dynamicArrayWithFetchRequest:(id)request managedObjectContext:(id)context
{
  requestCopy = request;
  contextCopy = context;
  queryGenerationToken = [contextCopy queryGenerationToken];
  if (queryGenerationToken)
  {
    queryGenerationToken2 = [contextCopy queryGenerationToken];
    v9 = +[NSQueryGenerationToken currentQueryGenerationToken];
    v10 = [queryGenerationToken2 isEqual:v9];

    if (v10)
    {
      queryGenerationToken = 0;
    }

    else
    {
      v11 = [[_TUICoreDataProvider alloc] initWithFetchRequest:requestCopy managedObjectContext:contextCopy];
      queryGenerationToken = [(_TUICoreDataProvider *)v11 _startObserving];
    }
  }

  return queryGenerationToken;
}

- (void)updatePredicate:(id)predicate
{
  predicateCopy = predicate;
  v4 = objc_opt_class();
  _rootDataProvider = [(TUIDynamicArray *)self _rootDataProvider];
  v6 = TUIDynamicCast(v4, _rootDataProvider);

  if (v6)
  {
    [v6 _updatePredicate:predicateCopy];
  }
}

- (id)js_newObserverWithController:(id)controller block:(id)block
{
  blockCopy = block;
  controllerCopy = controller;
  v8 = [_TUIDynamicArrayJSObserver alloc];
  coordinator = [controllerCopy coordinator];

  v10 = [(_TUIDynamicArrayJSObserver *)v8 initWithCoordinator:coordinator block:blockCopy array:self];

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

- (TUIDynamicArray)initWithDataProvider:(id)provider generation:(id)generation count:(unint64_t)count
{
  providerCopy = provider;
  generationCopy = generation;
  v10 = [(TUIDynamicArray *)self init];
  v11 = v10;
  if (v10)
  {
    [(TUIDynamicArray *)v10 _updateProvider:providerCopy count:count generation:generationCopy];
  }

  return v11;
}

- (void)_updateProvider:(id)provider count:(unint64_t)count generation:(id)generation
{
  providerCopy = provider;
  generationCopy = generation;
  dataProvider = self->_dataProvider;
  self->_dataProvider = providerCopy;
  v12 = providerCopy;

  generation = self->_generation;
  self->_count = count;
  self->_generation = generationCopy;
}

- (id)newArrayWithDataAugmenter:(id)augmenter
{
  augmenterCopy = augmenter;
  v5 = [[_TUIAugmentedDynamicArray alloc] initWithArray:self augmenter:augmenterCopy];

  return v5;
}

- (id)newArrayWithDataMapper:(id)mapper
{
  mapperCopy = mapper;
  v5 = [[_TUIMappedDynamicArray alloc] initWithArray:self mapper:mapperCopy];

  return v5;
}

- (id)newInstanceWithGeneration:(id)generation count:(unint64_t)count observer:(id)observer
{
  observerCopy = observer;
  v7 = [[_TUIDynamicArrayInstance alloc] initWithArray:self generation:self->_generation count:self->_count observer:observerCopy];

  return v7;
}

- (id)instanceForObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(NSMapTable *)self->_instanceByObserver objectForKey:observerCopy];
  if (!v5)
  {
    v5 = [(TUIDynamicArray *)self newInstanceWithGeneration:self->_generation count:self->_count observer:observerCopy];
    [(NSMapTable *)self->_instanceByObserver setObject:v5 forKey:observerCopy];
  }

  os_unfair_lock_unlock(&self->_accessLock);

  return v5;
}

- (id)instantiateAsEnumerator:(id)enumerator options:(id)options flags:(unint64_t)flags builderClass:(Class)class nodes:(id)nodes snapshot:(id)snapshot context:(id)context
{
  contextCopy = context;
  snapshotCopy = snapshot;
  optionsCopy = options;
  v18 = [_TUIDynamicArrayContainer alloc];
  transactionCoordinator = [contextCopy transactionCoordinator];
  dynamicController = [contextCopy dynamicController];
  v21 = [(_TUIDynamicArrayContainer *)v18 initWithEnumerator:enumerator.var0 binding:TUINameNil array:self context:contextCopy transactionCoordinator:transactionCoordinator dynamicController:dynamicController nodes:nodes snapshot:snapshotCopy options:optionsCopy flags:flags builderClass:class];

  return v21;
}

- (id)instantiateAsBinding:(id)binding options:(id)options flags:(unint64_t)flags builderClass:(Class)class nodes:(id)nodes snapshot:(id)snapshot context:(id)context
{
  contextCopy = context;
  snapshotCopy = snapshot;
  optionsCopy = options;
  v18 = [_TUIDynamicArrayContainer alloc];
  transactionCoordinator = [contextCopy transactionCoordinator];
  dynamicController = [contextCopy dynamicController];
  v21 = [(_TUIDynamicArrayContainer *)v18 initWithEnumerator:TUIEnumeratorNil binding:*&binding array:self context:contextCopy transactionCoordinator:transactionCoordinator dynamicController:dynamicController nodes:nodes snapshot:snapshotCopy options:optionsCopy flags:flags builderClass:class];

  return v21;
}

+ (TUIDynamicArray)arrayWithDataProvider:(id)provider generation:(id)generation count:(unint64_t)count
{
  generationCopy = generation;
  providerCopy = provider;
  v10 = [[self alloc] initWithDataProvider:providerCopy generation:generationCopy count:count];

  return v10;
}

- (void)_enqueueUpdate:(id)update
{
  updateCopy = update;
  transaction = [updateCopy transaction];
  v6 = TUITransactionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    debugName = [(TUIDynamicArray *)self debugName];
    WeakRetained = objc_loadWeakRetained(&self->_lastTransactionToken);
    *buf = 134218754;
    selfCopy = self;
    v27 = 2114;
    v28 = debugName;
    v29 = 2112;
    v30 = transaction;
    v31 = 2112;
    v32 = WeakRetained;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[%p] %{public}@: DynamicArray: enqueueUpdate - tx=%@, lastToken=%@", buf, 0x2Au);
  }

  v9 = objc_loadWeakRetained(&self->_lastTransactionToken);
  [transaction dependentOn:v9];

  [transaction addCategory:self->_transactionCategory];
  dependencyToken = [transaction dependencyToken];
  objc_storeWeak(&self->_lastTransactionToken, dependencyToken);

  os_unfair_lock_lock(&self->_accessLock);
  objectEnumerator = [(NSMapTable *)self->_instanceByObserver objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  v13 = [updateCopy count];
  generation = [updateCopy generation];
  [(TUIDynamicArray *)self _updateCount:v13 generation:generation];

  os_unfair_lock_unlock(&self->_accessLock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = allObjects;
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

        [*(*(&v20 + 1) + 8 * v19) enqueueUpdateGroup:{updateCopy, v20}];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (id)tui_objectAtIndex:(int64_t)index
{
  v3 = [[_TUIDynamicArrayIndex alloc] initWithArray:self index:index];

  return v3;
}

- (id)tui_subarrayWithStart:(int64_t)start end:(int64_t)end
{
  if (start || end != -1)
  {
    selfCopy = [[_TUISubDynamicArray alloc] initWithArray:self start:start end:end];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)tui_hasProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"count"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [propertyCopy isEqualToString:@"empty"];
  }

  return v4;
}

- (id)tui_valueForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"count"])
  {
    v5 = off_25CD20;
LABEL_5:
    v6 = [objc_alloc(*v5) initWithArray:self];
    goto LABEL_7;
  }

  if ([propertyCopy isEqualToString:@"empty"])
  {
    v5 = off_25CD28;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)_newUpdateGroupWithGeneration:(id)generation transaction:(id)transaction
{
  generationCopy = generation;
  v7 = [transaction tx];
  v8 = [[_TUIDynamicArrayUpdateGroup alloc] initWithGeneration:generationCopy count:self->_count transaction:v7];

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

- (id)dynamicValueAtIndex:(int64_t)index
{
  v3 = [[_TUIDynamicArrayIndex alloc] initWithArray:self index:index];

  return v3;
}

@end