@interface TUIDynamicValue
+ (TUIDynamicValue)valueWithValue:(id)a3;
- (TUIDynamicValue)initWithValue:(id)a3;
- (id)instanceForObserver:(id)a3;
- (id)instantiateAsBinding:(id)a3 options:(id)a4 flags:(unint64_t)a5 builderClass:(Class)a6 nodes:(id)a7 snapshot:(id)a8 context:(id)a9;
- (id)instantiateAsEnumerator:(id)a3 options:(id)a4 flags:(unint64_t)a5 builderClass:(Class)a6 nodes:(id)a7 snapshot:(id)a8 context:(id)a9;
- (id)newInstanceWithObserver:(id)a3;
- (id)newObserverWithController:(id)a3 block:(id)a4;
- (id)tui_valueForProperty:(id)a3;
- (void)_enqueueUpdate:(id)a3;
@end

@implementation TUIDynamicValue

- (TUIDynamicValue)initWithValue:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v7->_value, a3);
  }

  return v7;
}

- (id)newInstanceWithObserver:(id)a3
{
  v4 = a3;
  v5 = [[_TUIDynamicValueInstance alloc] initWithDynamicValue:self value:self->_value observer:v4];

  return v5;
}

- (id)instanceForObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(NSMapTable *)self->_instanceByObserver objectForKey:v4];
  if (!v5)
  {
    v5 = [(TUIDynamicValue *)self newInstanceWithObserver:v4];
    [(NSMapTable *)self->_instanceByObserver setObject:v5 forKey:v4];
  }

  os_unfair_lock_unlock(&self->_accessLock);

  return v5;
}

- (id)instantiateAsEnumerator:(id)a3 options:(id)a4 flags:(unint64_t)a5 builderClass:(Class)a6 nodes:(id)a7 snapshot:(id)a8 context:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = [_TUIDynamicValueItem alloc];
  v18 = [v15 transactionCoordinator];
  v19 = [v15 dynamicController];
  v20 = [(_TUIDynamicValueItem *)v17 initWithEnumerator:a3.var0 binding:TUINameNil value:self context:v15 transactionCoordinator:v18 dynamicController:v19 nodes:a7 snapshot:v16 flags:a5 builderClass:a6];

  return v20;
}

- (id)instantiateAsBinding:(id)a3 options:(id)a4 flags:(unint64_t)a5 builderClass:(Class)a6 nodes:(id)a7 snapshot:(id)a8 context:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = [_TUIDynamicValueItem alloc];
  v18 = [v15 transactionCoordinator];
  v19 = [v15 dynamicController];
  v20 = [(_TUIDynamicValueItem *)v17 initWithEnumerator:TUIEnumeratorNil binding:*&a3 value:self context:v15 transactionCoordinator:v18 dynamicController:v19 nodes:a7 snapshot:v16 flags:a5 builderClass:a6];

  return v20;
}

+ (TUIDynamicValue)valueWithValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithValue:v4];

  return v5;
}

- (void)_enqueueUpdate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [v4 value];
  value = self->_value;
  self->_value = v5;

  v7 = [(NSMapTable *)self->_instanceByObserver objectEnumerator];
  v8 = [v7 allObjects];

  os_unfair_lock_unlock(&self->_accessLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v8;
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

        [*(*(&v14 + 1) + 8 * v13) enqueueUpdate:{v4, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (id)tui_valueForProperty:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [[_TUIDynamicValueProperty alloc] initWithValue:self property:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)newObserverWithController:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [_TUIDynamicValueJSObserver alloc];
  v9 = [v7 coordinator];

  v10 = [(_TUIDynamicValueJSObserver *)v8 initWithCoordinator:v9 block:v6 value:self];
  return v10;
}

@end