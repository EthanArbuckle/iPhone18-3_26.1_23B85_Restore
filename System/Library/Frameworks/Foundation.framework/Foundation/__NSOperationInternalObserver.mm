@interface __NSOperationInternalObserver
+ (void)_observeValueForKeyPath:(id)path ofObject:(id)object changeKind:(unint64_t)kind oldValue:(id)value newValue:(id)newValue indexes:(id)indexes context:(void *)context;
@end

@implementation __NSOperationInternalObserver

+ (void)_observeValueForKeyPath:(id)path ofObject:(id)object changeKind:(unint64_t)kind oldValue:(id)value newValue:(id)newValue indexes:(id)indexes context:(void *)context
{
  v73 = *MEMORY[0x1E69E9840];
  if (path != @"isFinished" && path != @"finished")
  {
    if (path == @"isExecuting" || path == @"executing")
    {
      goto LABEL_18;
    }

    if (path == @"isReady" || path == @"ready")
    {
      goto LABEL_88;
    }

    if (([path isEqualToString:{@"isFinished", object, kind, value, newValue, indexes}] & 1) == 0 && (objc_msgSend(path, "isEqualToString:", @"finished") & 1) == 0)
    {
      if ([path isEqualToString:@"isExecuting"] & 1) != 0 || (objc_msgSend(path, "isEqualToString:", @"executing"))
      {
LABEL_18:
        isExecuting = [object isExecuting];
        os_unfair_lock_lock(object + 58);
        v16 = atomic_load(object + 237);
        if (v16 <= 0xDF && isExecuting != 0)
        {
          atomic_store(0xE0u, object + 237);
        }

        goto LABEL_81;
      }

      if (([path isEqualToString:@"isReady"] & 1) == 0 && (objc_msgSend(path, "isEqualToString:", @"ready") & 1) == 0)
      {
        return;
      }

LABEL_88:
      isReady = [object isReady];
      atomic_store(isReady, object + 239);
      os_unfair_lock_lock(object + 58);
      v50 = *(object + 4);
      os_unfair_lock_unlock(object + 58);
      v46 = v50;
      if (isReady && v50)
      {
        __NSOQSchedule(v50);
        v46 = v50;
      }

      return;
    }
  }

  if (![object isFinished])
  {
    return;
  }

  os_unfair_lock_lock(object + 58);
  v11 = atomic_load(object + 237);
  if (*(object + 4) && v11 <= 0xD7)
  {
    v12 = objc_opt_class();
    Name = class_getName(v12);
    NSLog(@"*** %s %p went isFinished=YES without being started by the queue it is in", Name, object);
  }

  else if (v11 > 0xEF)
  {
    if (v11 == 244)
    {
LABEL_81:

      os_unfair_lock_unlock(object + 58);
      return;
    }

    goto LABEL_25;
  }

  atomic_store(0xF0u, object + 237);
LABEL_25:
  v18 = *(object + 6);
  *(object + 6) = 0;
  if ([v18 count] && (v71 = 0u, v72 = 0u, v69 = 0u, v70 = 0u, (v19 = objc_msgSend(v18, "countByEnumeratingWithState:objects:count:", &v69, v68, 16)) != 0))
  {
    v20 = v19;
    v21 = 0;
    v22 = *v70;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v70 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v69 + 1) + 8 * i);
        os_unfair_lock_lock((v24 + 232));
        v25 = *(v24 + 56);
        if (v25 == 1)
        {
          if (!v21)
          {
            v21 = objc_opt_new();
          }

          [v21 addObject:v24];
        }

        else if (v25 < 2)
        {
          if (v25)
          {
            __assert_rtn("+[__NSOperationInternalObserver _observeValueForKeyPath:ofObject:changeKind:oldValue:newValue:indexes:context:]", "NSOperation.m", 1022, "idown->__unfinished_deps == 0");
          }

          v26 = atomic_load((v24 + 240));
          if ((v26 & 1) == 0)
          {
            __assert_rtn("+[__NSOperationInternalObserver _observeValueForKeyPath:ofObject:changeKind:oldValue:newValue:indexes:context:]", "NSOperation.m", 1023, "atomic_load(&idown->__isCancelled) == YES");
          }
        }

        else
        {
          *(v24 + 56) = v25 - 1;
        }

        os_unfair_lock_unlock((v24 + 232));
      }

      v20 = [v18 countByEnumeratingWithState:&v69 objects:v68 count:16];
    }

    while (v20);
  }

  else
  {
    v21 = 0;
  }

  v48 = v11;
  atomic_store(0xF4u, object + 237);
  v47 = *(object + 4);
  *(object + 4) = 0;
  objectCopy = object;
  os_unfair_lock_unlock(object + 58);
  if ([v21 count])
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v27 = [v21 countByEnumeratingWithState:&v64 objects:v63 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v65;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v65 != v29)
          {
            objc_enumerationMutation(v21);
          }

          v31 = *(*(&v64 + 1) + 8 * j);
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v53 = __111____NSOperationInternalObserver__observeValueForKeyPath_ofObject_changeKind_oldValue_newValue_indexes_context___block_invoke;
          v54 = &__block_descriptor_40_e5_v8__0l;
          v55 = v31 + 8;
          if (atomic_load(v31 + 244))
          {
            [v31 _changeValueForKeys:&_NSOperationReadyKeys count:1 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v52];
          }

          else
          {
            v53(v52);
            [__NSOperationInternalObserver _observeValueForKeyPath:@"isReady" ofObject:v31 changeKind:0 oldValue:0 newValue:0 indexes:0 context:0];
          }
        }

        v28 = [v21 countByEnumeratingWithState:&v64 objects:v63 count:16];
      }

      while (v28);
    }
  }

  pthread_mutex_lock((objectCopy + 120));
  pthread_cond_broadcast((objectCopy + 184));
  pthread_mutex_unlock((objectCopy + 120));
  if (qword_1ED43F1E8 != -1)
  {
    dispatch_once(&qword_1ED43F1E8, &__block_literal_global_361);
  }

  os_unfair_lock_lock(objectCopy + 58);
  v33 = *(objectCopy + 8);
  if (_MergedGlobals_11 == 1)
  {
    *(objectCopy + 8) = 0;
  }

  else
  {
    v34 = v33;
  }

  os_unfair_lock_unlock(objectCopy + 58);
  if (v33)
  {
    v35 = objectCopy;
    global_queue = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111____NSOperationInternalObserver__observeValueForKeyPath_ofObject_changeKind_oldValue_newValue_indexes_context___block_invoke_2;
    block[3] = &unk_1E69F3910;
    block[4] = objectCopy;
    block[5] = v33;
    dispatch_async(global_queue, block);
  }

  if (objectCopy[236] == 1)
  {
    iop_removeAllDependencies(objectCopy + 8, objectCopy);
  }

  if (!v47)
  {
    goto LABEL_78;
  }

  Class = object_getClass(objectCopy);
  v38 = 0;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v57 = ____NSOQOpFinished_block_invoke;
  v58 = &unk_1E69F5208;
  v59 = v47;
  v60 = objectCopy;
  v61 = v48;
  v62 = Class == _NSBarrierOperation;
  v39 = 1;
  do
  {
    while (1)
    {
      v40 = v39;
      v41 = _NSOperationQueueOperationsAndOperationCountKeys[v38];
      if (v41 == @"operations")
      {
        break;
      }

      if (v41 == @"operationCount")
      {
        v42 = v47 + 504;
        goto LABEL_71;
      }

      v39 = 0;
      v38 = 1;
      if ((v40 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    v42 = v47 + 503;
LABEL_71:
    v43 = atomic_load(v42);
    v44 = v43 != 0;
    if (v43)
    {
      break;
    }

    v39 = 0;
    v38 = 1;
  }

  while (((v40 ^ 1) & 1) == 0);
  if (v44)
  {
    [v47 _changeValueForKeys:_NSOperationQueueOperationsAndOperationCountKeys count:2 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:v56];
    goto LABEL_76;
  }

LABEL_75:
  v57(v56);
LABEL_76:
  __NSOQSchedule(v47);
  if (v48 >= 0x48)
  {
  }

LABEL_78:
}

@end