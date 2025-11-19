@interface BSUIDynamicArray
- (BSUIDynamicArray)initWithArray:(id)a3 options:(id)a4;
- (NSArray)internalArray;
- (id)objectAtIndex:(int64_t)a3;
- (int64_t)length;
- (void)addObserver:(id)a3;
- (void)addWeakObserver:(id)a3;
- (void)notifyObserversWithGeneration:(id)a3;
- (void)performBatchUpdatesWithGeneration:(id)a3 block:(id)a4;
- (void)removeObserver:(id)a3;
- (void)updateArray:(id)a3;
@end

@implementation BSUIDynamicArray

- (BSUIDynamicArray)initWithArray:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[BSUIDynamicArrayProvider alloc] initWithArray:v7 options:v6 dynamicArray:self];
  v9 = [(BSUIDynamicArrayProvider *)v8 currentGeneration];
  v10 = [v7 count];

  v22.receiver = self;
  v22.super_class = BSUIDynamicArray;
  v11 = [(BSUIDynamicArray *)&v22 initWithDataProvider:v8 generation:v9 count:v10];

  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("BSUIDynamicArray.queue", v12);
    queue = v11->_queue;
    v11->_queue = v13;

    v11->_observerAccessLock._os_unfair_lock_opaque = 0;
    v15 = +[NSMutableSet set];
    strongObservers = v11->_strongObservers;
    v11->_strongObservers = v15;

    v17 = +[NSMutableSet set];
    weakObservers = v11->_weakObservers;
    v11->_weakObservers = v17;

    if ([(BSUIDynamicArrayProvider *)v8 loadsContent])
    {
      [(BSUIDynamicArray *)v11 setTransactionCategory:TUITransactionCategoryContentLoad];
    }

    objc_opt_class();
    v19 = [v6 objectForKeyedSubscript:@"debugName"];
    v20 = BUDynamicCast();
    [(BSUIDynamicArray *)v11 setDebugName:v20];
  }

  return v11;
}

- (void)updateArray:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(BSUIDynamicArray *)self dataProvider];
  v6 = BUDynamicCast();

  [v6 updateArray:v4 batchUpdatesBlock:0];
}

- (void)performBatchUpdatesWithGeneration:(id)a3 block:(id)a4
{
  v7.receiver = self;
  v7.super_class = BSUIDynamicArray;
  v6 = a3;
  [(BSUIDynamicArray *)&v7 performBatchUpdatesWithGeneration:v6 block:a4];
  [(BSUIDynamicArray *)self notifyObserversWithGeneration:v6, v7.receiver, v7.super_class];
}

- (void)notifyObserversWithGeneration:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(BSUIDynamicArray *)self dataProvider];
  v6 = BUDynamicCast();

  v7 = [v6 arrayForGeneration:v4];

  objc_initWeak(&location, self);
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_198E8;
  v10[3] = &unk_3876C8;
  objc_copyWeak(&v12, &location);
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(queue, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)objectAtIndex:(int64_t)a3
{
  objc_opt_class();
  v5 = [(BSUIDynamicArray *)self dataProvider];
  v6 = BUDynamicCast();

  v7 = [v6 currentGeneration];
  v8 = [v6 objectAtIndex:a3 generation:v7];

  return v8;
}

- (NSArray)internalArray
{
  objc_opt_class();
  v3 = [(BSUIDynamicArray *)self dataProvider];
  v4 = BUDynamicCast();

  v5 = [v4 currentGeneration];
  v6 = [v4 arrayForGeneration:v5];

  return v6;
}

- (int64_t)length
{
  objc_opt_class();
  v3 = [(BSUIDynamicArray *)self dataProvider];
  v4 = BUDynamicCast();

  v5 = [v4 currentGeneration];
  v6 = [v4 countForGeneration:v5];

  return v6;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observerAccessLock);
  v5 = [(BSUIDynamicArray *)self strongObservers];
  [v5 addObject:v4];

  os_unfair_lock_unlock(&self->_observerAccessLock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observerAccessLock);
  v5 = [(BSUIDynamicArray *)self strongObservers];
  [v5 removeObject:v4];

  os_unfair_lock_unlock(&self->_observerAccessLock);
}

- (void)addWeakObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observerAccessLock);
  v5 = [(BSUIDynamicArray *)self weakObservers];
  v6 = [JSManagedValue managedValueWithValue:v4];

  [v5 addObject:v6];

  os_unfair_lock_unlock(&self->_observerAccessLock);
}

@end