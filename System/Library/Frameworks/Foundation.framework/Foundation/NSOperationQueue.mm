@interface NSOperationQueue
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (NSOperationQueue)currentQueue;
+ (NSOperationQueue)mainQueue;
- (NSArray)operations;
- (NSOperationQueue)init;
- (NSProgress)progress;
- (NSQualityOfService)qualityOfService;
- (NSString)description;
- (NSString)name;
- (dispatch_queue_t)underlyingQueue;
- (id)__graphDescription;
- (void)_fc_addUncancellableOperationForReactorID:(id)a3 block:(id)a4;
- (void)_fc_addUncancellableOperationWithBlock:(id)a3;
- (void)addBarrierBlock:(void *)barrier;
- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6;
- (void)addOperationWithBlock:(void *)block;
- (void)addOperations:(NSArray *)ops waitUntilFinished:(BOOL)wait;
- (void)cancelAllOperations;
- (void)dealloc;
- (void)removeObserver:(id)a3 forKeyPath:(id)a4;
- (void)setMaxConcurrentOperationCount:(NSInteger)maxConcurrentOperationCount;
- (void)setName:(NSString *)name;
- (void)setOvercommitsOperations:(BOOL)a3;
- (void)setQualityOfService:(NSQualityOfService)qualityOfService;
- (void)setSuspended:(BOOL)suspended;
- (void)setUnderlyingQueue:(dispatch_queue_t)underlyingQueue;
- (void)waitUntilAllOperationsAreFinished;
@end

@implementation NSOperationQueue

- (NSOperationQueue)init
{
  v10 = *MEMORY[0x1E69E9840];
  if ((_NSIsMultiThreaded & 1) == 0)
  {
    _NSIsMultiThreaded = 1;
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"NSWillBecomeMultiThreadedNotification" userInfo:0, 0];
  }

  v9.receiver = self;
  v9.super_class = NSOperationQueue;
  v3 = [(NSOperationQueue *)&v9 init];
  v4 = [[NSPointerArray alloc] initWithOptions:258];
  v3->_iqp.__queueLock._os_unfair_lock_opaque = 0;
  v3->_iqp.__activeThreads = v4;
  v3->_iqp.__maxNumOps = -1;
  v3->_iqp.__actualMaxNumOps = 0x7FFFFFFF;
  v5 = [NSString stringWithFormat:@"NSOperationQueue %p", v3];
  name = v3->_iqp.__name;
  v3->_iqp.__name = [(NSString *)v5 copy];

  if (atomic_exchange(&v3->_iqp.__propertyQoS, 0))
  {
    backingQueue = v3->_iqp.__backingQueue;
    v3->_iqp.__backingQueue = 0;
    v3->_iqp.__nameBuffer[0] = 0;
    if (backingQueue)
    {
      dispatch_release(backingQueue);
    }
  }

  return v3;
}

+ (NSOperationQueue)mainQueue
{
  if (qword_1ED43F1E0 != -1)
  {
    dispatch_once(&qword_1ED43F1E0, &__block_literal_global_262);
  }

  return qword_1ED43F1D8;
}

void __29__NSOperationQueue_mainQueue__block_invoke()
{
  v0 = objc_allocWithZone(NSOperationQueue);
  v1 = [[NSPointerArray alloc] initWithOptions:258];
  v0[2] = 0;
  *(v0 + 19) = v1;
  *(v0 + 20) = 1;
  v0[42] = 1;
  *(v0 + 506) = -1;
  v2 = *(v0 + 24);
  *(v0 + 24) = [@"NSOperationQueue Main Queue" copy];

  v3 = qos_class_main();
  oq_set_property_qos(v0, v3);
  qword_1ED43F1D8 = v0;
}

+ (NSOperationQueue)currentQueue
{
  if (pthread_main_np() == 1)
  {

    return +[NSOperationQueue mainQueue];
  }

  else
  {
    v3 = _CFGetTSD();

    return v3;
  }
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_iqp.__mainQ)
  {
    __break(1u);
LABEL_10:
    v5 = 0;
    goto LABEL_8;
  }

  v2 = self;
  dispatch_queue = self->_iqp.__dispatch_queue;
  if (dispatch_queue)
  {
    dispatch_release(dispatch_queue);
  }

  v2->_iqp.__dispatch_queue = 0;
  if (v2->_iqp.__backingQueue)
  {
    dispatch_queue_set_label_nocopy();
    dispatch_release(v2->_iqp.__backingQueue);
  }

  progress = v2->_iqp._progress;
  if (!progress)
  {
    goto LABEL_10;
  }

  os_unfair_lock_lock(&progress->_queueLock);
  progress->_queue = 0;
  os_unfair_lock_unlock(&progress->_queueLock);
  v5 = v2->_iqp._progress;
LABEL_8:

  v6.receiver = v2;
  v6.super_class = NSOperationQueue;
  [(NSOperationQueue *)&v6 dealloc];
}

- (NSArray)operations
{
  v3 = [MEMORY[0x1E695DF70] array];
  __NSOperationQueueGetOperations(self, v3, 0);
  return v3;
}

- (void)cancelAllOperations
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self->_iqp.__mainQ)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    __NSOperationQueueGetOperations(self, v3, 1);
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          __NSOPERATIONQUEUE_IS_CANCELLING_AN_OPERATION__(*(*(&v9 + 1) + 8 * v7++));
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
      }

      while (v5);
    }
  }
}

- (void)waitUntilAllOperationsAreFinished
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = self;
  for (i = objc_opt_new(); ; [i removeAllObjects])
  {
    __NSOperationQueueGetOperations(self, i, 1);
    if (![i count])
    {
      break;
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [i countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(i);
          }

          __NSOPERATIONQUEUE_IS_WAITING_ON_AN_OPERATION__(*(*(&v10 + 1) + 8 * v8++));
        }

        while (v6 != v8);
        v6 = [i countByEnumeratingWithState:&v10 objects:v9 count:16];
      }

      while (v6);
    }
  }
}

- (NSProgress)progress
{
  os_unfair_lock_lock(&self->_iqp.__queueLock);
  progress = self->_iqp._progress;
  if (!progress)
  {
    progress = [[_NSOperationQueueProgress alloc] initWithQueue:?];
    self->_iqp._progress = progress;
  }

  os_unfair_lock_unlock(&self->_iqp.__queueLock);
  return &progress->super;
}

- (dispatch_queue_t)underlyingQueue
{
  if (self->_iqp.__mainQ)
  {
    return MEMORY[0x1E69E96A0];
  }

  os_unfair_lock_lock(&self->_iqp.__queueLock);
  v4 = self->_iqp.__dispatch_queue;
  os_unfair_lock_unlock(&self->_iqp.__queueLock);
  return v4;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"operations"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"operationCount") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"suspended") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"operationCount") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"name") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"qualityOfService"))
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___NSOperationQueue;
  return objc_msgSendSuper2(&v6, sel_automaticallyNotifiesObserversForKey_, a3);
}

- (void)addOperations:(NSArray *)ops waitUntilFinished:(BOOL)wait
{
  v4 = wait;
  v15 = *MEMORY[0x1E69E9840];
  __addOperations(self, a2, 0, ops, 0);
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(NSArray *)ops countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(ops);
          }

          __NSOPERATIONQUEUE_IS_WAITING_ON_AN_OPERATION__(*(*(&v11 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [(NSArray *)ops countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v7);
    }
  }
}

- (void)addOperationWithBlock:(void *)block
{
  v4 = [NSBlockOperation blockOperationWithBlock:block];
  property_qos = oq_get_property_qos(self);
  if (property_qos)
  {
    [(NSOperation *)v4 setQualityOfService:property_qos];
  }

  [(NSOperationQueue *)self addOperation:v4];
}

- (void)addBarrierBlock:(void *)barrier
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_iqp.__queueLock);
  firstOperation = self->_iqp.__firstOperation;
  if (firstOperation)
  {
    v9.receiver = [_NSBarrierOperation alloc];
    v9.super_class = _NSBarrierOperation;
    v7 = [(NSOperationQueue *)&v9 init];
    *&v7->_iqp.__nameBuffer[48] = _Block_copy(barrier);
    v7->_iqp.__nameBuffer[38] = 12;
    do
    {
      [(NSOperationQueue *)v7 addDependency:firstOperation];
      firstOperation = firstOperation->_iop.__nextOp;
    }

    while (firstOperation);
    __addOperations(self, a2, v7, 0, 1);
    os_unfair_lock_unlock(&self->_iqp.__queueLock);
LABEL_5:

    __NSOQSchedule(self);
    return;
  }

  v8 = oq_synthesize_backing_queue(self);
  os_unfair_lock_unlock(&self->_iqp.__queueLock);
  if (!v8)
  {
    v7 = 0;
    goto LABEL_5;
  }

  dispatch_barrier_async(v8, barrier);

  dispatch_release(v8);
}

- (void)setMaxConcurrentOperationCount:(NSInteger)maxConcurrentOperationCount
{
  if (maxConcurrentOperationCount <= -2)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: count (%ld) cannot be negative", _NSMethodExceptionProem(self, a2), maxConcurrentOperationCount), 0}];
    objc_exception_throw(v7);
  }

  if (!self->_iqp.__mainQ)
  {
    os_unfair_lock_lock(&self->_iqp.__queueLock);
    self->_iqp.__maxNumOps = maxConcurrentOperationCount;
    if (maxConcurrentOperationCount > 0x7FFFFFFF || maxConcurrentOperationCount == -1)
    {
      v6 = 0x7FFFFFFF;
    }

    else
    {
      v6 = maxConcurrentOperationCount;
    }

    self->_iqp.__actualMaxNumOps = v6;
    os_unfair_lock_unlock(&self->_iqp.__queueLock);

    __NSOQSchedule(self);
  }
}

- (void)setSuspended:(BOOL)suspended
{
  v7 = *MEMORY[0x1E69E9840];
  if (!self->_iqp.__mainQ)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __33__NSOperationQueue_setSuspended___block_invoke;
    v5[3] = &unk_1E69F5138;
    v5[4] = self;
    v6 = suspended;
    [(NSOperationQueue *)self _changeValueForKeys:&_NSOperationQueueSuspendedKeys count:1 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v5];
    if (!suspended)
    {
      __NSOQSchedule(self);
    }
  }
}

- (void)setOvercommitsOperations:(BOOL)a3
{
  if (!self->_iqp.__mainQ && (atomic_exchange(&self->_iqp.__overcommit, a3) & 1) != a3)
  {
    backingQueue = self->_iqp.__backingQueue;
    self->_iqp.__backingQueue = 0;
    self->_iqp.__nameBuffer[0] = 0;
    if (backingQueue)
    {
      dispatch_release(backingQueue);
    }
  }
}

- (NSQualityOfService)qualityOfService
{
  result = oq_get_property_qos(self);
  if (result == (NSQualityOfServiceUtility|0x4) || result == 0)
  {
    return -1;
  }

  return result;
}

- (void)setQualityOfService:(NSQualityOfService)qualityOfService
{
  v5[6] = *MEMORY[0x1E69E9840];
  v3 = (qualityOfService + 1) > 0x22 || ((1 << (qualityOfService + 1)) & 0x404040441) == 0;
  v4 = NSQualityOfServiceDefault;
  if (!v3)
  {
    v4 = qualityOfService;
  }

  if (!self->_iqp.__mainQ)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__NSOperationQueue_setQualityOfService___block_invoke;
    v5[3] = &unk_1E69F4618;
    v5[4] = self;
    v5[5] = v4;
    [(NSOperationQueue *)self _changeValueForKeys:&_NSOperationQualityOfServiceKeys count:1 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v5];
  }
}

void __40__NSOperationQueue_setQualityOfService___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  oq_set_property_qos(*(a1 + 32), *(a1 + 40));
  v2 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v2);
}

- (void)setUnderlyingQueue:(dispatch_queue_t)underlyingQueue
{
  if (!self->_iqp.__mainQ)
  {
    if (__NSOperationQueueGetOperations(self, 0, 1))
    {
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: operation queue must be empty in order to change underlying dispatch queue", _NSMethodExceptionProem(self, a2)), 0}];
      objc_exception_throw(v7);
    }

    if (underlyingQueue)
    {
      dispatch_retain(underlyingQueue);
    }

    dispatch_queue = self->_iqp.__dispatch_queue;
    if (dispatch_queue)
    {
      dispatch_release(dispatch_queue);
    }

    self->_iqp.__dispatch_queue = underlyingQueue;
  }
}

- (NSString)name
{
  os_unfair_lock_lock(&self->_iqp.__queueLock);
  name = self->_iqp.__name;
  os_unfair_lock_unlock(&self->_iqp.__queueLock);
  return name;
}

- (void)setName:(NSString *)name
{
  v3[6] = *MEMORY[0x1E69E9840];
  if (!self->_iqp.__mainQ)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __28__NSOperationQueue_setName___block_invoke;
    v3[3] = &unk_1E69F2080;
    v3[4] = self;
    v3[5] = name;
    [(NSOperationQueue *)self _changeValueForKeys:_NSOperationNameKeys count:1 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v3];
  }
}

void __28__NSOperationQueue_setName___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = &stru_1EEEFDF90;
  }

  v4 = *(v2 + 192);
  *(v2 + 192) = [(__CFString *)v3 copy];

  v5 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v5);
}

- (id)__graphDescription
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [&stru_1EEEFDF90 mutableCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSOperationQueue *)self operations];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendString:{objc_msgSend(*(*(&v11 + 1) + 8 * v8), "__graphDescription:", 0)}];
        [v3 appendString:@"\n"];
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSString)description
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(NSOperationQueue *)self name];
  if (v3)
  {
    v6.receiver = self;
    v6.super_class = NSOperationQueue;
    return [NSString stringWithFormat:@"%@{name = '%@'}", [(NSOperationQueue *)&v6 description], v3];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NSOperationQueue;
    return [(NSOperationQueue *)&v5 description];
  }
}

- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6
{
  v14 = *MEMORY[0x1E69E9840];
  if ([a4 isEqualToString:@"operations"])
  {
    if (atomic_fetch_add(&self->_iqp.__operationsObserverCount, 1u) == 255)
    {
      atomic_store(0xFFu, &self->_iqp.__operationsObserverCount);
      v11 = @"operations";
      goto LABEL_8;
    }
  }

  else if (([a4 isEqualToString:@"operationCount"] & 1) != 0 && atomic_fetch_add(&self->_iqp.__operationCountObserverCount, 1u) == 255)
  {
    atomic_store(0xFFu, &self->_iqp.__operationCountObserverCount);
    v11 = @"operationCount";
LABEL_8:
    v12 = [NSString stringWithFormat:@"added too many observers to an NSOperationQueue for %@", v11];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v12 userInfo:0]);
  }

  v13.receiver = self;
  v13.super_class = NSOperationQueue;
  [(NSOperationQueue *)&v13 addObserver:a3 forKeyPath:a4 options:a5 context:a6];
}

- (void)removeObserver:(id)a3 forKeyPath:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSOperationQueue;
  [(NSOperationQueue *)&v7 removeObserver:a3 forKeyPath:?];
  if ([a4 isEqualToString:@"operations"])
  {
    v6 = 503;
  }

  else
  {
    if (![a4 isEqualToString:@"operationCount"])
    {
      return;
    }

    v6 = 504;
  }

  atomic_fetch_add(self + v6, 0xFFu);
}

- (void)_fc_addUncancellableOperationWithBlock:(id)a3
{
  v4 = [(NSBlockOperation *)_NSFCUncancellableBlockOperation blockOperationWithBlock:a3];

  [(NSOperationQueue *)self addOperation:v4];
}

- (void)_fc_addUncancellableOperationForReactorID:(id)a3 block:(id)a4
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __95__NSOperationQueue_NSFileCoordinationSupport___fc_addUncancellableOperationForReactorID_block___block_invoke;
  v4[3] = &unk_1E69F5678;
  v4[4] = a3;
  v4[5] = a4;
  [(NSOperationQueue *)self addOperation:[(NSBlockOperation *)_NSFCUncancellableBlockOperation blockOperationWithBlock:v4]];
}

void __95__NSOperationQueue_NSFileCoordinationSupport___fc_addUncancellableOperationForReactorID_block___block_invoke(uint64_t a1)
{
  v2 = [+[NSThread currentThread](NSThread threadDictionary];
  v3 = [(NSMutableDictionary *)v2 objectForKeyedSubscript:@"_NSCurrentReactorID"];
  [(NSMutableDictionary *)v2 setObject:*(a1 + 32) forKeyedSubscript:@"_NSCurrentReactorID"];
  (*(*(a1 + 40) + 16))();
  [(NSMutableDictionary *)v2 setObject:v3 forKeyedSubscript:@"_NSCurrentReactorID"];
}

@end