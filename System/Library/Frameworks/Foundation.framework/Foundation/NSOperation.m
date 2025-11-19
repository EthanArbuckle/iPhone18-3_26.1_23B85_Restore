@interface NSOperation
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (id)currentOperation;
- (BOOL)isAsynchronous;
- (BOOL)isConcurrent;
- (BOOL)isReady;
- (NSArray)dependencies;
- (NSOperation)init;
- (NSOperationQueuePriority)queuePriority;
- (NSQualityOfService)qualityOfService;
- (NSString)name;
- (id)__graphDescription:(unint64_t)a3;
- (id)_copyCompletionBlock;
- (id)_implicitObservationInfo;
- (id)debugDescription;
- (id)description;
- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6;
- (void)cancel;
- (void)completionBlock;
- (void)dealloc;
- (void)removeDependency:(NSOperation *)op;
- (void)removeObserver:(id)a3 forKeyPath:(id)a4;
- (void)setCompletionBlock:(void *)completionBlock;
- (void)setName:(NSString *)name;
- (void)setObservationInfo:(void *)a3;
- (void)setQualityOfService:(NSQualityOfService)qualityOfService;
- (void)setQueuePriority:(NSOperationQueuePriority)queuePriority;
- (void)setThreadPriority:(double)threadPriority;
- (void)start;
- (void)waitUntilFinished;
- (void)waitUntilFinishedOrTimeout:(double)a3;
@end

@implementation NSOperation

- (NSOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = NSOperation;
  v2 = [(NSOperation *)&v14 init];
  if (qword_1ED43F1D0 != -1)
  {
    dispatch_once(&qword_1ED43F1D0, &__block_literal_global_31);
  }

  v3 = objc_opt_class();
  value = 0;
  os_unfair_lock_lock(&unk_1ED43F1F0);
  v4 = qword_1ED43F1F8;
  v17.length = CFArrayGetCount(qword_1ED43F1F8);
  v17.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v17, v3);
  if (FirstIndexOfValue == -1)
  {
    v15[0] = xmmword_1E69F50B8;
    v15[1] = *&off_1E69F50C8;
    v15[2] = xmmword_1E69F50D8;
    v8 = [objc_allocWithZone(MEMORY[0x1E695DFD8]) initWithObjects:v15 count:6];
    v9 = objc_opt_self();
    ImplicitObservationInfo = _NSKeyValueCreateImplicitObservationInfo(v9, v8, 0, 0, v3, &value);

    CFArrayAppendValue(qword_1ED43F1F8, v3);
    CFArrayAppendValue(qword_1ED43F200, value);
    CFArrayAppendValue(qword_1ED43F208, ImplicitObservationInfo);
  }

  else
  {
    v6 = FirstIndexOfValue;
    value = CFArrayGetValueAtIndex(qword_1ED43F200, FirstIndexOfValue);
    ImplicitObservationInfo = CFArrayGetValueAtIndex(qword_1ED43F208, v6);
  }

  os_unfair_lock_unlock(&unk_1ED43F1F0);
  object_setClass(v2, value);
  pthread_mutex_init(&v2->_iop.__wait_mutex, 0);
  pthread_cond_init(&v2->_iop.__wait_cond, 0);
  atomic_store(1u, &v2->_iop.__cached_isReady);
  v2->_iop.__prio = -1;
  v2->_iop.__thread_prio = 0.5;
  v2->_iop.__nameBuffer = 0;
  v2->_iop._shouldRemoveDependenciesAfterFinish = [objc_opt_class() _removesDependenciesAfterFinish];
  v10 = ImplicitObservationInfo;
  os_unfair_lock_lock(&v2->_iop.__lock);
  implicitObsInfo = v2->_iop.__implicitObsInfo;
  v2->_iop.__implicitObsInfo = ImplicitObservationInfo;
  os_unfair_lock_unlock(&v2->_iop.__lock);

  return v2;
}

- (BOOL)isReady
{
  os_unfair_lock_lock(&self->_iop.__lock);
  v3 = self->_iop.__unfinished_deps == 0;
  os_unfair_lock_unlock(&self->_iop.__lock);
  return v3;
}

- (void)start
{
  v36[5] = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_iop.__state);
  if (v2 == 244)
  {
    return;
  }

  v4 = 0;
  atomic_compare_exchange_strong(&self->_iop.__state, &v4, 0xD8u);
  if (!v4)
  {
    if (v2 <= 0x50 && ![(NSOperation *)self isReady])
    {
      atomic_store(v2, &self->_iop.__state);
      v5 = [NSString stringWithFormat:@"%@: receiver is not yet ready to execute", _NSMethodExceptionProem(self, sel_start)];
      goto LABEL_54;
    }

    goto LABEL_8;
  }

  if (v2 != 216)
  {
    if (v2 == 224 || v2 == 240)
    {
      v5 = [NSString stringWithFormat:@"%@: receiver is already executing", _NSMethodExceptionProem(self, sel_start)];
      goto LABEL_54;
    }

LABEL_53:
    v5 = [NSString stringWithFormat:@"%@: something is trying to start the receiver simultaneously from more than one thread", _NSMethodExceptionProem(self, sel_start)];
LABEL_54:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v5 userInfo:0]);
  }

  if (!self->_iop.__queue)
  {
    goto LABEL_53;
  }

LABEL_8:
  v6 = objc_autoreleasePoolPush();
  v7 = atomic_load(&self->_iop.__isCancelled);
  if ((v7 & 1) == 0)
  {
    if (atomic_load(&self->_iop.__isExecutingObserverCount))
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __iop_start_block_invoke;
      v36[3] = &__block_descriptor_40_e5_v8__0l;
      v36[4] = &self->_iop;
      [(NSOperation *)self _changeValueForKeys:_NSOperationExecutingKeys count:1 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v36];
    }

    else
    {
      atomic_store(0xE0u, &self->_iop.__state);
      [__NSOperationInternalObserver _observeValueForKeyPath:@"isExecuting" ofObject:self changeKind:0 oldValue:0 newValue:0 indexes:0 context:0];
    }

    thread_prio = self->_iop.__thread_prio;
    if (thread_prio == 0.5)
    {
      v11 = 0.0;
    }

    else
    {
      +[NSThread threadPriority];
      v11 = v10;
      [NSThread setThreadPriority:self->_iop.__thread_prio];
    }

    os_unfair_lock_lock(&self->_iop.__lock);
    v12 = self->_iop.__queue;
    os_unfair_lock_unlock(&self->_iop.__lock);
    if (v12 && object_getClass(self) != _NSBarrierOperation && (v13 = atomic_load(&v12->_iqp.__progressReporting)) != 0)
    {
      os_unfair_lock_lock(&v12->_iqp.__queueLock);
      progress = v12->_iqp._progress;
      if (!progress)
      {
        progress = [[_NSOperationQueueProgress alloc] initWithQueue:v12];
        v12->_iqp._progress = progress;
      }

      os_unfair_lock_unlock(&v12->_iqp.__queueLock);
      v15 = [[NSProgress alloc] initWithParent:0 userInfo:0];
      [(NSProgress *)v15 setTotalUnitCount:1];
      [(NSProgress *)progress addChild:v15 withPendingUnitCount:1];
    }

    else
    {
      v15 = 0;
    }

    [(NSProgress *)v15 becomeCurrentWithPendingUnitCount:1];
    _CFExecutableLinkedOnOrAfter();
    __NSOPERATION_IS_INVOKING_MAIN__(self);
    [(NSProgress *)v15 resignCurrent];

    if (thread_prio != 0.5)
    {
      [NSThread setThreadPriority:v11];
    }
  }

  v16 = atomic_load(&self->_iop.__state);
  if (v16 != 224)
  {
    if (atomic_load(&self->_iop.__isFinishedObserverCount))
    {
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __iop_start_block_invoke_3;
      v34 = &__block_descriptor_40_e5_v8__0l;
      p_iop = &self->_iop;
      [(NSOperation *)self _changeValueForKeys:&_NSOperationFinishedKeys count:1 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:&v31];
    }

    else
    {
      atomic_store(0xF0u, &self->_iop.__state);
      [__NSOperationInternalObserver _observeValueForKeyPath:@"isFinished" ofObject:self changeKind:0 oldValue:0 newValue:0 indexes:0 context:0];
    }

    goto LABEL_48;
  }

  v17 = 0;
  v18 = 0;
  v19 = 1;
  v20 = 1;
  do
  {
    while (1)
    {
      while (1)
      {
        v21 = v17;
        v22 = v20;
        v23 = v19;
        v24 = _NSOperationExecutingAndFinishedKeys[v18];
        if (v24 != @"isReady")
        {
          break;
        }

        v20 = 0;
        v25 = atomic_load(&self->_iop.__isReadyObserverCount);
        v26 = v17 | (v25 != 0);
        v17 = 1;
        v19 = v22;
        v18 = 1;
        if (v26)
        {
          goto LABEL_38;
        }
      }

      if (v24 != @"isFinished")
      {
        break;
      }

      v20 = 0;
      p_isFinishedObserverCount = &self->_iop.__isFinishedObserverCount;
LABEL_37:
      v25 = atomic_load(p_isFinishedObserverCount);
      v28 = v17 | (v25 != 0);
      v18 = 1;
      v19 = v22;
      v17 = 1;
      if (v28)
      {
LABEL_38:
        if (v25)
        {
          v29 = v23;
        }

        else
        {
          v29 = v22;
        }

        if (v29)
        {
          goto LABEL_42;
        }

        goto LABEL_47;
      }
    }

    if (v24 == @"isExecuting")
    {
      v20 = 0;
      p_isFinishedObserverCount = &self->_iop.__isExecutingObserverCount;
      goto LABEL_37;
    }

    if (v24 == @"isCancelled")
    {
      v20 = 0;
      p_isFinishedObserverCount = &self->_iop.__isCancelledObserverCount;
      goto LABEL_37;
    }

    v20 = 0;
    v18 = 1;
    v19 = v22;
    v17 = 1;
  }

  while ((v21 & 1) == 0);
  if (v22)
  {
LABEL_42:
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __iop_start_block_invoke_2;
    v34 = &__block_descriptor_40_e5_v8__0l;
    p_iop = &self->_iop;
    [(NSOperation *)self _changeValueForKeys:_NSOperationExecutingAndFinishedKeys count:2 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:&v31];
    goto LABEL_48;
  }

LABEL_47:
  atomic_store(0xF0u, &self->_iop.__state);
  [__NSOperationInternalObserver _observeValueForKeyPath:@"isExecuting" ofObject:self changeKind:0 oldValue:0 newValue:0 indexes:0 context:0];
  [__NSOperationInternalObserver _observeValueForKeyPath:@"isFinished" ofObject:self changeKind:0 oldValue:0 newValue:0 indexes:0 context:0];
LABEL_48:
  objc_autoreleasePoolPop(v6);
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  obsInfo = self->_iop.__obsInfo;
  if (obsInfo)
  {
    self->_iop.__obsInfo = 0;
  }

  os_unfair_lock_lock(&self->_iop.__lock);
  implicitObsInfo = self->_iop.__implicitObsInfo;
  self->_iop.__implicitObsInfo = 0;
  os_unfair_lock_unlock(&self->_iop.__lock);

  os_unfair_lock_lock(&self->_iop.__lock);
  queue = self->_iop.__queue;
  self->_iop.__queue = 0;
  voucher = self->_iop._voucher;
  schedule = self->_iop.__schedule;
  self->_iop._voucher = 0;
  self->_iop.__schedule = 0;
  os_unfair_lock_unlock(&self->_iop.__lock);

  if (schedule)
  {
    _Block_release(schedule);
  }

  pthread_cond_destroy(&self->_iop.__wait_cond);
  pthread_mutex_destroy(&self->_iop.__wait_mutex);

  free(self->_iop.__nameBuffer);
  v8.receiver = self;
  v8.super_class = NSOperation;
  [(NSOperation *)&v8 dealloc];
}

CFMutableArrayRef __19__NSOperation_init__block_invoke()
{
  v0 = *MEMORY[0x1E695E4A8];
  qword_1ED43F1F8 = CFArrayCreateMutable(*MEMORY[0x1E695E4A8], 16, &__NSOperationImplicitObservationArrayCallbacks);
  qword_1ED43F200 = CFArrayCreateMutable(v0, 16, &__NSOperationImplicitObservationArrayCallbacks);
  result = CFArrayCreateMutable(v0, 16, &__NSOperationImplicitObservationArrayCallbacks);
  qword_1ED43F208 = result;
  return result;
}

- (id)_implicitObservationInfo
{
  os_unfair_lock_lock(&self->_iop.__lock);
  v3 = self->_iop.__implicitObsInfo;
  os_unfair_lock_unlock(&self->_iop.__lock);

  return v3;
}

- (NSString)name
{
  if (self->_iop.__nameBuffer)
  {
    return [NSString stringWithUTF8String:?];
  }

  else
  {
    return 0;
  }
}

- (NSQualityOfService)qualityOfService
{
  result = op_get_property_qos(self);
  if (result == (NSQualityOfServiceUtility|0x4) || result == 0)
  {
    return -1;
  }

  return result;
}

- (void)completionBlock
{
  os_unfair_lock_lock(&self->_iop.__lock);
  v3 = self->_iop.__completion;
  os_unfair_lock_unlock(&self->_iop.__lock);

  return v3;
}

- (void)waitUntilFinished
{
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_iop.__lock);
  v3 = self->_iop.__queue;
  os_unfair_lock_unlock(&self->_iop.__lock);
  v4 = atomic_load(&self->_iop.__propertyQoS);
  v19 = v3;
  if (v3)
  {
    v5 = oq_begin_waiting(v3, v4);
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_lock(&self->_iop.__lock);
  v6 = [(NSMutableArray *)self->_iop.__dependencies copy];
  v18 = self;
  os_unfair_lock_unlock(&self->_iop.__lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (v5)
        {
          v11 = *(*(&v21 + 1) + 8 * i);
          os_unfair_lock_lock((v11 + 232));
          v12 = *(v11 + 32);
          os_unfair_lock_unlock((v11 + 232));
          if (v12)
          {
            os_unfair_lock_lock(v12 + 2);
            v13 = [*(v12 + 19) count];
            if (v13)
            {
              v14 = v13;
              for (j = 0; j != v14; ++j)
              {
                v16 = [*(v12 + 19) pointerAtIndex:{j, v18}];
                if (!NSMapMember(v5, v16, 0, 0))
                {
                  started = pthread_override_qos_class_start_np(v16, v4, 0);
                  NSMapInsertKnownAbsent(v5, v16, started);
                }
              }
            }

            os_unfair_lock_unlock(v12 + 2);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v8);
  }

  pthread_mutex_lock(&v18->_iop.__wait_mutex);
  if (![(NSOperation *)v18 isFinished])
  {
    do
    {
      pthread_cond_wait(&v18->_iop.__wait_cond, &v18->_iop.__wait_mutex);
    }

    while (![(NSOperation *)v18 isFinished]);
  }

  pthread_mutex_unlock(&v18->_iop.__wait_mutex);
  if (v5)
  {
    oq_end_waiting(v5);
  }
}

- (id)description
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(NSOperation *)self name];
  if (v3)
  {
    v6.receiver = self;
    v6.super_class = NSOperation;
    return [NSString stringWithFormat:@"%@{name = '%@'}", [(NSOperation *)&v6 description], v3];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NSOperation;
    return [(NSOperation *)&v5 description];
  }
}

- (NSOperationQueuePriority)queuePriority
{
  prio = self->_iop.__prio;
  if (prio == 255)
  {
    LOBYTE(prio) = 0;
  }

  return prio;
}

- (void)cancel
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (![(NSOperation *)self isFinished])
  {
    if (atomic_load(&self->_iop.__isCancelledObserverCount))
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __iop_cancel_block_invoke;
      v7[3] = &__block_descriptor_40_e5_v8__0l;
      v7[4] = &self->_iop;
      [(NSOperation *)self _changeValueForKeys:_NSOperationCancelKeys count:1 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v7];
    }

    else
    {
      atomic_store(1u, &self->_iop.__isCancelled);
    }

    v4 = atomic_load(&self->_iop.__state);
    if (v4 <= 0xDF)
    {
      if (atomic_load(&self->_iop.__isReadyObserverCount))
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __iop_cancel_block_invoke_2;
        v6[3] = &__block_descriptor_40_e5_v8__0l;
        v6[4] = &self->_iop;
        [(NSOperation *)self _changeValueForKeys:&_NSOperationReadyKeys count:1 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v6];
      }

      else
      {
        os_unfair_lock_lock(&self->_iop.__lock);
        self->_iop.__unfinished_deps = 0;
        os_unfair_lock_unlock(&self->_iop.__lock);
        [__NSOperationInternalObserver _observeValueForKeyPath:@"isReady" ofObject:self changeKind:0 oldValue:0 newValue:0 indexes:0 context:0];
      }

      if (self->_iop._shouldRemoveDependenciesAfterFinish)
      {
        iop_removeAllDependencies(&self->_iop, self);
      }
    }
  }
}

- (NSArray)dependencies
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  os_unfair_lock_lock(&self->_iop.__lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  dependencies = self->_iop.__dependencies;
  v5 = [(NSMutableArray *)dependencies countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(dependencies);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (object_getClass(v9) != _NSBarrierOperation)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)dependencies countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_iop.__lock);
  if (v3)
  {
    return v3;
  }

  else
  {
    return [MEMORY[0x1E695DEC8] array];
  }
}

- (BOOL)isAsynchronous
{
  v3 = [(NSOperation *)self methodForSelector:sel_isAsynchronous];
  if (v3 != [NSOperation instanceMethodForSelector:sel_isAsynchronous])
  {
    return 0;
  }

  v5 = [(NSOperation *)self methodForSelector:sel_isConcurrent];
  if (v5 == [NSOperation instanceMethodForSelector:sel_isConcurrent])
  {
    return 0;
  }

  return [(NSOperation *)self isConcurrent];
}

- (void)setObservationInfo:(void *)a3
{
  obsInfo = self->_iop.__obsInfo;
  if (obsInfo != a3)
  {
    v5 = obsInfo;
    self->_iop.__obsInfo = a3;
  }
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"isFinished"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"finished") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"isReady") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"ready") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"isExecuting") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"executing") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"isCancelled") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"cancelled") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"dependencies") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"queuePriority") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"isAsynchronous") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"name") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"qualityOfService") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"completionBlock"))
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___NSOperation;
  return objc_msgSendSuper2(&v6, sel_automaticallyNotifiesObserversForKey_, a3);
}

+ (id)currentOperation
{
  v2 = _CFGetTSD();

  return v2;
}

- (BOOL)isConcurrent
{
  v3 = [(NSOperation *)self methodForSelector:sel_isConcurrent];
  if (v3 != [NSOperation instanceMethodForSelector:sel_isConcurrent])
  {
    return 0;
  }

  v5 = [(NSOperation *)self methodForSelector:sel_isAsynchronous];
  if (v5 == [NSOperation instanceMethodForSelector:sel_isAsynchronous])
  {
    return 0;
  }

  return [(NSOperation *)self isAsynchronous];
}

- (void)setQueuePriority:(NSOperationQueuePriority)queuePriority
{
  v8 = *MEMORY[0x1E69E9840];
  if (queuePriority <= 0xFFFFFFFFFFFFFFF8)
  {
    v3 = -8;
  }

  else
  {
    v3 = -4;
  }

  if (queuePriority > NSOperationQueuePriorityLow)
  {
    v3 = 0;
  }

  if (queuePriority <= 3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 4;
  }

  if (queuePriority <= 7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 8;
  }

  if (self->_iop.__prio != v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __iop_setQueuePriority_block_invoke;
    v6[3] = &unk_1E69F5138;
    v6[4] = self;
    v7 = v5;
    [(NSOperation *)self _changeValueForKeys:_NSOperationQueuePriorityKeys count:1 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v6];
  }
}

- (void)setThreadPriority:(double)threadPriority
{
  v4[6] = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_iop.__state);
  if (v3 <= 0xD7)
  {
    if (threadPriority <= 0.0)
    {
      threadPriority = 0.0;
    }

    v4[1] = 3221225472;
    v4[0] = MEMORY[0x1E69E9820];
    v4[2] = __iop_setThreadPriority_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    if (threadPriority >= 1.0)
    {
      threadPriority = 1.0;
    }

    v4[4] = &self->_iop;
    *&v4[5] = threadPriority;
    [(NSOperation *)self _changeValueForKeys:_NSOperationThreadPriorityKeys count:1 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v4];
  }
}

- (id)_copyCompletionBlock
{
  if (qword_1ED43F1E8 != -1)
  {
    dispatch_once(&qword_1ED43F1E8, &__block_literal_global_361);
  }

  os_unfair_lock_lock(&self->_iop.__lock);
  completion = self->_iop.__completion;
  if (_MergedGlobals_11 == 1)
  {
    self->_iop.__completion = 0;
  }

  else
  {
    v4 = completion;
  }

  os_unfair_lock_unlock(&self->_iop.__lock);
  return completion;
}

- (void)setCompletionBlock:(void *)completionBlock
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __iop_setCompletionBlock_block_invoke;
  v3[3] = &unk_1E69F5198;
  v3[4] = completionBlock;
  v3[5] = &self->_iop;
  [(NSOperation *)self _changeValueForKeys:&_NSOperationCompletionBlockKeys count:1 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v3];
}

- (void)setName:(NSString *)name
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __iop_setName_block_invoke;
  v3[3] = &unk_1E69F4618;
  v3[4] = name;
  v3[5] = &self->_iop;
  [(NSOperation *)self _changeValueForKeys:_NSOperationNameKeys count:1 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v3];
}

- (void)setQualityOfService:(NSQualityOfService)qualityOfService
{
  v5[6] = *MEMORY[0x1E69E9840];
  v3 = (qualityOfService + 1) > 0x22 || ((1 << (qualityOfService + 1)) & 0x404040441) == 0;
  v4 = NSQualityOfServiceDefault;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__NSOperation_setQualityOfService___block_invoke;
  v5[3] = &unk_1E69F4618;
  if (!v3)
  {
    v4 = qualityOfService;
  }

  v5[4] = self;
  v5[5] = v4;
  [(NSOperation *)self _changeValueForKeys:&_NSOperationQualityOfServiceKeys count:1 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v5];
}

uint64_t __35__NSOperation_setQualityOfService___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 > 16)
  {
    if (v1 != 17 && v1 != 33 && v1 != 25)
    {
LABEL_9:
      LOBYTE(v1) = 0;
    }
  }

  else
  {
    if (v1 == -1)
    {
      LOBYTE(v1) = 21;
      goto LABEL_11;
    }

    if (v1 != 5 && v1 != 9)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  atomic_store(v1, (*(result + 32) + 241));
  return result;
}

- (void)waitUntilFinishedOrTimeout:(double)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = CFAbsoluteTimeGetCurrent() + a3;
  os_unfair_lock_lock(&self->_iop.__lock);
  v5 = self->_iop.__queue;
  os_unfair_lock_unlock(&self->_iop.__lock);
  v6 = atomic_load(&self->_iop.__propertyQoS);
  if (v5)
  {
    v7 = oq_begin_waiting(v5, v6);
  }

  else
  {
    v7 = 0;
  }

  pthread_mutex_lock(&self->_iop.__wait_mutex);
  for (i = v4 - CFAbsoluteTimeGetCurrent(); i > 0.0; i = v4 - CFAbsoluteTimeGetCurrent())
  {
    if ([(NSOperation *)self isFinished])
    {
      break;
    }

    v9.tv_sec = vcvtmd_s64_f64(i);
    v9.tv_nsec = ((i - floor(i)) * 1000000000.0);
    pthread_cond_timedwait_relative_np(&self->_iop.__wait_cond, &self->_iop.__wait_mutex, &v9);
  }

  pthread_mutex_unlock(&self->_iop.__wait_mutex);
  if (v7)
  {
    oq_end_waiting(v7);
  }
}

- (void)removeDependency:(NSOperation *)op
{
  v27 = *MEMORY[0x1E69E9840];
  p_iop = &self->_iop;
  v6 = op;
  v7 = self;
  v8 = 0;
  v9 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v22 = __iop_removeDependency_block_invoke;
  v23 = &unk_1E69F51C0;
  v25 = self;
  v26 = p_iop;
  v24 = op;
  LOBYTE(v10) = 1;
  v11 = 1;
  do
  {
    while (1)
    {
      while (1)
      {
        v12 = v8;
        v13 = v11;
        v14 = v10;
        v15 = _NSOperationDependenciesAndReadyKeys[v9];
        if (v15 != @"isReady")
        {
          break;
        }

        v11 = 0;
        v16 = atomic_load(&self->_iop.__isReadyObserverCount);
        v17 = v8 | (v16 != 0);
        v8 = 1;
        v10 = v13;
        v9 = 1;
        if (v17)
        {
          goto LABEL_14;
        }
      }

      if (v15 != @"isFinished")
      {
        break;
      }

      v11 = 0;
      p_isFinishedObserverCount = &self->_iop.__isFinishedObserverCount;
LABEL_13:
      v16 = atomic_load(p_isFinishedObserverCount);
      v19 = v8 | (v16 != 0);
      v9 = 1;
      v10 = v13;
      v8 = 1;
      if (v19)
      {
LABEL_14:
        if (v16)
        {
          v20 = v14;
        }

        else
        {
          v20 = v13;
        }

        if (v20)
        {
          goto LABEL_18;
        }

        goto LABEL_20;
      }
    }

    if (v15 == @"isExecuting")
    {
      v11 = 0;
      p_isFinishedObserverCount = &self->_iop.__isExecutingObserverCount;
      goto LABEL_13;
    }

    if (v15 == @"isCancelled")
    {
      v11 = 0;
      p_isFinishedObserverCount = &self->_iop.__isCancelledObserverCount;
      goto LABEL_13;
    }

    v11 = 0;
    v9 = 1;
    v10 = v13;
    v8 = 1;
  }

  while ((v12 & 1) == 0);
  if (v13)
  {
LABEL_18:
    [(NSOperation *)self _changeValueForKeys:_NSOperationDependenciesAndReadyKeys count:2 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v21];
    goto LABEL_21;
  }

LABEL_20:
  (v22)(v21, 1, v10);
  [__NSOperationInternalObserver _observeValueForKeyPath:@"isReady" ofObject:self changeKind:0 oldValue:0 newValue:0 indexes:0 context:0];
LABEL_21:
}

- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6
{
  v14 = *MEMORY[0x1E69E9840];
  if ([a4 isEqualToString:@"isReady"] & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"ready"))
  {
    if (atomic_fetch_add(&self->_iop.__isReadyObserverCount, 1u) != 255)
    {
      goto LABEL_4;
    }

    atomic_store(0xFFu, &self->_iop.__isReadyObserverCount);
    v11 = @"isReady";
LABEL_18:
    v12 = [NSString stringWithFormat:@"added too many observers to an NSOperation for %@", v11];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v12 userInfo:0]);
  }

  if ([a4 isEqualToString:@"isExecuting"] & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"executing"))
  {
    if (atomic_fetch_add(&self->_iop.__isExecutingObserverCount, 1u) != 255)
    {
      goto LABEL_4;
    }

    atomic_store(0xFFu, &self->_iop.__isExecutingObserverCount);
    v11 = @"isExecuting";
    goto LABEL_18;
  }

  if ([a4 isEqualToString:@"isCancelled"] & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"cancelled"))
  {
    if (atomic_fetch_add(&self->_iop.__isCancelledObserverCount, 1u) != 255)
    {
      goto LABEL_4;
    }

    atomic_store(0xFFu, &self->_iop.__isCancelledObserverCount);
    v11 = @"isCancelled";
    goto LABEL_18;
  }

  if (([a4 isEqualToString:@"isFinished"] & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"finished")) && atomic_fetch_add(&self->_iop.__isFinishedObserverCount, 1u) == 255)
  {
    atomic_store(0xFFu, &self->_iop.__isFinishedObserverCount);
    v11 = @"isFinished";
    goto LABEL_18;
  }

LABEL_4:
  v13.receiver = self;
  v13.super_class = NSOperation;
  [(NSOperation *)&v13 addObserver:a3 forKeyPath:a4 options:a5 context:a6];
}

- (void)removeObserver:(id)a3 forKeyPath:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSOperation;
  [(NSOperation *)&v7 removeObserver:a3 forKeyPath:?];
  if ([a4 isEqualToString:@"isReady"] & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"ready"))
  {
    v6 = 244;
LABEL_4:
    atomic_fetch_add(self + v6, 0xFFu);
    return;
  }

  if ([a4 isEqualToString:@"isExecuting"] & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"executing"))
  {
    v6 = 242;
    goto LABEL_4;
  }

  if ([a4 isEqualToString:@"isCancelled"] & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"cancelled"))
  {
    v6 = 245;
    goto LABEL_4;
  }

  if (([a4 isEqualToString:@"isFinished"] & 1) != 0 || objc_msgSend(a4, "isEqualToString:", @"finished"))
  {
    v6 = 243;
    goto LABEL_4;
  }
}

- (id)debugDescription
{
  v3 = [(NSOperation *)self isFinished];
  v4 = [(NSOperation *)self isReady];
  v5 = [(NSOperation *)self isCancelled];
  v6 = [(NSOperation *)self isExecuting];
  v7 = objc_opt_class();
  v8 = @"NO";
  if (v3)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (v4)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (v5)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (v6)
  {
    v8 = @"YES";
  }

  return [NSString stringWithFormat:@"<%@ %p isFinished=%@ isReady=%@ isCancelled=%@ isExecuting=%@>", v7, self, v9, v10, v11, v8];
}

- (id)__graphDescription:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [&stru_1EEEFDF90 mutableCopy];
  if (a3)
  {
    v6 = a3;
    do
    {
      [v5 appendString:@"  "];
      --v6;
    }

    while (v6);
  }

  [v5 appendString:{-[NSOperation debugDescription](self, "debugDescription")}];
  v7 = atomic_load(&self->_iop.__state);
  if (v7 > 215)
  {
    if (v7 > 239)
    {
      if (v7 == 240)
      {
        v8 = "finishing";
        goto LABEL_24;
      }

      if (v7 == 244)
      {
        v8 = "finished";
        goto LABEL_24;
      }
    }

    else
    {
      if (v7 == 216)
      {
        v8 = "starting";
        goto LABEL_24;
      }

      if (v7 == 224)
      {
        v8 = "executing";
        goto LABEL_24;
      }
    }
  }

  else if (v7 > 79)
  {
    if (v7 == 80)
    {
      v8 = "enqueued";
      goto LABEL_24;
    }

    if (v7 == 136)
    {
      v8 = "dispatching";
      goto LABEL_24;
    }
  }

  else
  {
    if (!v7)
    {
      v8 = "initialized";
      goto LABEL_24;
    }

    if (v7 == 72)
    {
      v8 = "enqueuing";
      goto LABEL_24;
    }
  }

  v8 = "unknown";
LABEL_24:
  [v5 appendFormat:@" %s\n", v8];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(NSOperation *)self dependencies];
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v5 appendString:{objc_msgSend(*(*(&v16 + 1) + 8 * v13++), "__graphDescription:", a3 + 1)}];
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v11);
  }

  return v5;
}

@end