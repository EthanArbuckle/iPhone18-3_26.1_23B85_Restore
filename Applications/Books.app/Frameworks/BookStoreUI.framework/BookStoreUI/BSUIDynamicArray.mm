@interface BSUIDynamicArray
- (BSUIDynamicArray)initWithArray:(id)array options:(id)options;
- (NSArray)internalArray;
- (id)objectAtIndex:(int64_t)index;
- (int64_t)length;
- (void)addObserver:(id)observer;
- (void)addWeakObserver:(id)observer;
- (void)notifyObserversWithGeneration:(id)generation;
- (void)performBatchUpdatesWithGeneration:(id)generation block:(id)block;
- (void)removeObserver:(id)observer;
- (void)updateArray:(id)array;
@end

@implementation BSUIDynamicArray

- (BSUIDynamicArray)initWithArray:(id)array options:(id)options
{
  optionsCopy = options;
  arrayCopy = array;
  v8 = [[BSUIDynamicArrayProvider alloc] initWithArray:arrayCopy options:optionsCopy dynamicArray:self];
  currentGeneration = [(BSUIDynamicArrayProvider *)v8 currentGeneration];
  v10 = [arrayCopy count];

  v22.receiver = self;
  v22.super_class = BSUIDynamicArray;
  v11 = [(BSUIDynamicArray *)&v22 initWithDataProvider:v8 generation:currentGeneration count:v10];

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
    v19 = [optionsCopy objectForKeyedSubscript:@"debugName"];
    v20 = BUDynamicCast();
    [(BSUIDynamicArray *)v11 setDebugName:v20];
  }

  return v11;
}

- (void)updateArray:(id)array
{
  arrayCopy = array;
  objc_opt_class();
  dataProvider = [(BSUIDynamicArray *)self dataProvider];
  v6 = BUDynamicCast();

  [v6 updateArray:arrayCopy batchUpdatesBlock:0];
}

- (void)performBatchUpdatesWithGeneration:(id)generation block:(id)block
{
  v7.receiver = self;
  v7.super_class = BSUIDynamicArray;
  generationCopy = generation;
  [(BSUIDynamicArray *)&v7 performBatchUpdatesWithGeneration:generationCopy block:block];
  [(BSUIDynamicArray *)self notifyObserversWithGeneration:generationCopy, v7.receiver, v7.super_class];
}

- (void)notifyObserversWithGeneration:(id)generation
{
  generationCopy = generation;
  objc_opt_class();
  dataProvider = [(BSUIDynamicArray *)self dataProvider];
  v6 = BUDynamicCast();

  v7 = [v6 arrayForGeneration:generationCopy];

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

- (id)objectAtIndex:(int64_t)index
{
  objc_opt_class();
  dataProvider = [(BSUIDynamicArray *)self dataProvider];
  v6 = BUDynamicCast();

  currentGeneration = [v6 currentGeneration];
  v8 = [v6 objectAtIndex:index generation:currentGeneration];

  return v8;
}

- (NSArray)internalArray
{
  objc_opt_class();
  dataProvider = [(BSUIDynamicArray *)self dataProvider];
  v4 = BUDynamicCast();

  currentGeneration = [v4 currentGeneration];
  v6 = [v4 arrayForGeneration:currentGeneration];

  return v6;
}

- (int64_t)length
{
  objc_opt_class();
  dataProvider = [(BSUIDynamicArray *)self dataProvider];
  v4 = BUDynamicCast();

  currentGeneration = [v4 currentGeneration];
  v6 = [v4 countForGeneration:currentGeneration];

  return v6;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerAccessLock);
  strongObservers = [(BSUIDynamicArray *)self strongObservers];
  [strongObservers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_observerAccessLock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerAccessLock);
  strongObservers = [(BSUIDynamicArray *)self strongObservers];
  [strongObservers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_observerAccessLock);
}

- (void)addWeakObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerAccessLock);
  weakObservers = [(BSUIDynamicArray *)self weakObservers];
  v6 = [JSManagedValue managedValueWithValue:observerCopy];

  [weakObservers addObject:v6];

  os_unfair_lock_unlock(&self->_observerAccessLock);
}

@end