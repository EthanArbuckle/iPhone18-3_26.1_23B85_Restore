@interface BSUIDynamicValue
- (BSUIDynamicValue)initWithValue:(id)value options:(id)options;
- (id)getValue;
- (void)addObserver:(id)observer;
- (void)addWeakObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)removeWeakObserver:(id)observer;
- (void)updateValue:(id)value;
@end

@implementation BSUIDynamicValue

- (BSUIDynamicValue)initWithValue:(id)value options:(id)options
{
  optionsCopy = options;
  v19.receiver = self;
  v19.super_class = BSUIDynamicValue;
  v7 = [(BSUIDynamicValue *)&v19 initWithValue:value];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("BSUIDynamicValue.queue", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v7->_observerAccessLock._os_unfair_lock_opaque = 0;
    v11 = +[NSMutableSet set];
    strongObservers = v7->_strongObservers;
    v7->_strongObservers = v11;

    v13 = +[NSMutableSet set];
    weakObservers = v7->_weakObservers;
    v7->_weakObservers = v13;

    v15 = [optionsCopy objectForKeyedSubscript:@"loadsContent"];

    if (v15)
    {
      [(BSUIDynamicValue *)v7 setTransactionCategory:TUITransactionCategoryContentLoad];
    }

    objc_opt_class();
    v16 = [optionsCopy objectForKeyedSubscript:@"debugName"];
    v17 = BUDynamicCast();
    [(BSUIDynamicValue *)v7 setDebugName:v17];
  }

  return v7;
}

- (void)updateValue:(id)value
{
  valueCopy = value;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_77A4;
  v7[3] = &unk_386D98;
  v7[4] = self;
  v8 = valueCopy;
  v6 = valueCopy;
  dispatch_sync(queue, v7);
}

- (id)getValue
{
  v2 = [(BSUIDynamicValue *)self instanceForObserver:self];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_7C88;
  v10 = sub_7C98;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_7CA0;
  v5[3] = &unk_386DC0;
  v5[4] = &v6;
  [v2 valueWithBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerAccessLock);
  strongObservers = [(BSUIDynamicValue *)self strongObservers];
  [strongObservers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_observerAccessLock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerAccessLock);
  strongObservers = [(BSUIDynamicValue *)self strongObservers];
  [strongObservers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_observerAccessLock);
}

- (void)addWeakObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerAccessLock);
  weakObservers = [(BSUIDynamicValue *)self weakObservers];
  v6 = [JSManagedValue managedValueWithValue:observerCopy];

  [weakObservers addObject:v6];

  os_unfair_lock_unlock(&self->_observerAccessLock);
}

- (void)removeWeakObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerAccessLock);
  weakObservers = [(BSUIDynamicValue *)self weakObservers];
  v6 = [weakObservers copy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        value = [v12 value];
        v14 = value;
        if (!value || [value isEqual:observerCopy])
        {
          weakObservers2 = [(BSUIDynamicValue *)self weakObservers];
          [weakObservers2 removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_observerAccessLock);
}

@end