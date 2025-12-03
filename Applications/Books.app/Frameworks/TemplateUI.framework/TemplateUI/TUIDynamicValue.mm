@interface TUIDynamicValue
+ (TUIDynamicValue)valueWithValue:(id)value;
- (TUIDynamicValue)initWithValue:(id)value;
- (id)instanceForObserver:(id)observer;
- (id)instantiateAsBinding:(id)binding options:(id)options flags:(unint64_t)flags builderClass:(Class)class nodes:(id)nodes snapshot:(id)snapshot context:(id)context;
- (id)instantiateAsEnumerator:(id)enumerator options:(id)options flags:(unint64_t)flags builderClass:(Class)class nodes:(id)nodes snapshot:(id)snapshot context:(id)context;
- (id)newInstanceWithObserver:(id)observer;
- (id)newObserverWithController:(id)controller block:(id)block;
- (id)tui_valueForProperty:(id)property;
- (void)_enqueueUpdate:(id)update;
@end

@implementation TUIDynamicValue

- (TUIDynamicValue)initWithValue:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = TUIDynamicValue;
  v6 = [(TUIDynamicValue *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessLock._os_unfair_lock_opaque = 0;
    v8 = [NSMapTable mapTableWithKeyOptions:517 valueOptions:5];
    instanceByObserver = v7->_instanceByObserver;
    v7->_instanceByObserver = v8;

    objc_storeStrong(&v7->_value, value);
  }

  return v7;
}

- (id)newInstanceWithObserver:(id)observer
{
  observerCopy = observer;
  v5 = [[_TUIDynamicValueInstance alloc] initWithDynamicValue:self value:self->_value observer:observerCopy];

  return v5;
}

- (id)instanceForObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(NSMapTable *)self->_instanceByObserver objectForKey:observerCopy];
  if (!v5)
  {
    v5 = [(TUIDynamicValue *)self newInstanceWithObserver:observerCopy];
    [(NSMapTable *)self->_instanceByObserver setObject:v5 forKey:observerCopy];
  }

  os_unfair_lock_unlock(&self->_accessLock);

  return v5;
}

- (id)instantiateAsEnumerator:(id)enumerator options:(id)options flags:(unint64_t)flags builderClass:(Class)class nodes:(id)nodes snapshot:(id)snapshot context:(id)context
{
  contextCopy = context;
  snapshotCopy = snapshot;
  v17 = [_TUIDynamicValueItem alloc];
  transactionCoordinator = [contextCopy transactionCoordinator];
  dynamicController = [contextCopy dynamicController];
  v20 = [(_TUIDynamicValueItem *)v17 initWithEnumerator:enumerator.var0 binding:TUINameNil value:self context:contextCopy transactionCoordinator:transactionCoordinator dynamicController:dynamicController nodes:nodes snapshot:snapshotCopy flags:flags builderClass:class];

  return v20;
}

- (id)instantiateAsBinding:(id)binding options:(id)options flags:(unint64_t)flags builderClass:(Class)class nodes:(id)nodes snapshot:(id)snapshot context:(id)context
{
  contextCopy = context;
  snapshotCopy = snapshot;
  v17 = [_TUIDynamicValueItem alloc];
  transactionCoordinator = [contextCopy transactionCoordinator];
  dynamicController = [contextCopy dynamicController];
  v20 = [(_TUIDynamicValueItem *)v17 initWithEnumerator:TUIEnumeratorNil binding:*&binding value:self context:contextCopy transactionCoordinator:transactionCoordinator dynamicController:dynamicController nodes:nodes snapshot:snapshotCopy flags:flags builderClass:class];

  return v20;
}

+ (TUIDynamicValue)valueWithValue:(id)value
{
  valueCopy = value;
  v5 = [[self alloc] initWithValue:valueCopy];

  return v5;
}

- (void)_enqueueUpdate:(id)update
{
  updateCopy = update;
  os_unfair_lock_lock(&self->_accessLock);
  value = [updateCopy value];
  value = self->_value;
  self->_value = value;

  objectEnumerator = [(NSMapTable *)self->_instanceByObserver objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  os_unfair_lock_unlock(&self->_accessLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = allObjects;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) enqueueUpdate:{updateCopy, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (id)tui_valueForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy length])
  {
    v5 = [[_TUIDynamicValueProperty alloc] initWithValue:self property:propertyCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)newObserverWithController:(id)controller block:(id)block
{
  blockCopy = block;
  controllerCopy = controller;
  v8 = [_TUIDynamicValueJSObserver alloc];
  coordinator = [controllerCopy coordinator];

  v10 = [(_TUIDynamicValueJSObserver *)v8 initWithCoordinator:coordinator block:blockCopy value:self];
  return v10;
}

@end