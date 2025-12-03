@interface _NSKeyValueDebugging
- (_NSKeyValueDebugging)init;
- (void)_checkConsistency;
- (void)_checkConsistencyForStatsWhileOutOfLock:(id)lock forPair:(id)pair timingDescription:(id)description;
- (void)_clearWillDidTable;
- (void)_object:(id)_object trackChangeForKeyOrKeys:(id)keys operation:(int64_t)operation;
- (void)dealloc;
- (void)object:(void *)object willAddObserver:(void *)observer forKeyPath:(uint64_t)path context:;
- (void)object:(void *)object willRemoveObserver:(uint64_t)observer forKeyPath:(uint64_t)path context:;
@end

@implementation _NSKeyValueDebugging

- (_NSKeyValueDebugging)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _NSKeyValueDebugging;
  v2 = [(_NSKeyValueDebugging *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_willDidCountTable = objc_opt_new();
    v3->_consistencyTable = objc_opt_new();
    v3->_observedKeyPathsByObserver = objc_opt_new();
    v4 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:v3 target:sel__checkConsistency selector:0 userInfo:1 repeats:1.0];
    v3->_consistencyCheckTimer = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __28___NSKeyValueDebugging_init__block_invoke;
    v6[3] = &unk_1E69F2C00;
    v6[4] = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(NSTimer *)self->_consistencyCheckTimer invalidate];

  v3.receiver = self;
  v3.super_class = _NSKeyValueDebugging;
  [(_NSKeyValueDebugging *)&v3 dealloc];
}

- (void)_clearWillDidTable
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42___NSKeyValueDebugging__clearWillDidTable__block_invoke;
  v7[3] = &unk_1E69F2080;
  v7[4] = self;
  v7[5] = v3;
  os_unfair_lock_lock(&self->_lock);
  __42___NSKeyValueDebugging__clearWillDidTable__block_invoke(v7);
  os_unfair_lock_unlock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        -[_NSKeyValueDebugging _checkConsistencyForStatsWhileOutOfLock:forPair:timingDescription:](self, "_checkConsistencyForStatsWhileOutOfLock:forPair:timingDescription:", [v3 objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v6)], *(*(&v9 + 1) + 8 * v6), @"at the next run loop spin after the 'did'");
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }
}

- (void)_checkConsistencyForStatsWhileOutOfLock:(id)lock forPair:(id)pair timingDescription:(id)description
{
  v26 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_132 == 1)
  {
    NSLog(@"<KVODebugging>: %@ -- Checking for consistency now (%@).", a2, pair, description);
  }

  if (qword_1ED43FCE0 != -1)
  {
    dispatch_once(&qword_1ED43FCE0, &__block_literal_global_183);
  }

  v9 = qword_1ED43FCD8;
  if (os_log_type_enabled(qword_1ED43FCD8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    pairCopy4 = pair;
    v22 = 2114;
    descriptionCopy = description;
    _os_log_impl(&dword_18075C000, v9, OS_LOG_TYPE_INFO, "%{public}@ -- Checking for consistency now (%{public}@).", buf, 0x16u);
  }

  if (lock)
  {
    ++*(lock + 5);
    newCurrentValue = [(_NSKeyValueObjectAndKeyPair *)*(lock + 1) newCurrentValue];
    if (!newCurrentValue)
    {
      goto LABEL_26;
    }

    currentValue = [lock currentValue];
    v12 = currentValue;
    if (*(lock + 4))
    {
      if (([(_Unwind_Exception *)currentValue isEqual:newCurrentValue]& 1) != 0)
      {
LABEL_11:

        goto LABEL_26;
      }
    }

    else if (currentValue == newCurrentValue)
    {
      goto LABEL_11;
    }

    v13 = v12;
    v14 = newCurrentValue;
    [lock setCurrentValue:newCurrentValue];

    if (v12 && (v15 = _NSKeyValueRetainedObservationInfoForObject(v12, 0)) != 0)
    {

      if (_MergedGlobals_132 == 1)
      {
        NSLog(@"<KVODebugging> KVO ISSUE: %@ -- MAY CAUSE CRASHES -- The value for this key pair seems to have changed outside of a will/did pair AND IT IS OBSERVED BY OTHER OBJECTS!!!; last observed value was '%@', current value is '%@'", pair, v13, v14);
      }

      if (qword_1ED43FCE0 != -1)
      {
        dispatch_once(&qword_1ED43FCE0, &__block_literal_global_183);
      }

      v16 = qword_1ED43FCD8;
      if (os_log_type_enabled(qword_1ED43FCD8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        pairCopy4 = pair;
        v22 = 2114;
        descriptionCopy = v13;
        v24 = 2114;
        v25 = v14;
        v17 = "KVO ISSUE: %{public}@ -- MAY CAUSE CRASHES -- The value for this key pair seems to have changed outside of a will/did pair AND IT IS OBSERVED BY OTHER OBJECTS!!!; last observed value was '%{public}@', current value is '%{public}@'";
LABEL_38:
        _os_log_error_impl(&dword_18075C000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x20u);
      }
    }

    else
    {
      if (_MergedGlobals_132 == 1)
      {
        NSLog(@"<KVODebugging> KVO ISSUE: %@ -- The value for this key pair seems to have changed outside of a will/did pair, which makes this key unsafe to observe within a longer key path; last observed value was '%@', current value is '%@'", pair, v13, v14);
      }

      if (qword_1ED43FCE0 != -1)
      {
        dispatch_once(&qword_1ED43FCE0, &__block_literal_global_183);
      }

      v16 = qword_1ED43FCD8;
      if (os_log_type_enabled(qword_1ED43FCD8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        pairCopy4 = pair;
        v22 = 2114;
        descriptionCopy = v13;
        v24 = 2114;
        v25 = v14;
        v17 = "KVO ISSUE: %{public}@ -- The value for this key pair seems to have changed outside of a will/did pair, which makes this key unsafe to observe within a longer key path; last observed value was '%{public}@', current value is '%{public}@'";
        goto LABEL_38;
      }
    }

LABEL_26:
    if ((*(lock + 16) != 1 || [lock currentValue]) && *(lock + 5) < 4)
    {
      return;
    }
  }

  if (_MergedGlobals_132 == 1)
  {
    NSLog(@"<KVODebugging>: %@ -- No longer tracking for consistency changes.", pair);
  }

  if (qword_1ED43FCE0 != -1)
  {
    dispatch_once(&qword_1ED43FCE0, &__block_literal_global_183);
  }

  v18 = qword_1ED43FCD8;
  if (os_log_type_enabled(qword_1ED43FCD8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    pairCopy4 = pair;
    _os_log_impl(&dword_18075C000, v18, OS_LOG_TYPE_INFO, "%{public}@ -- No longer tracking for consistency changes.", buf, 0xCu);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90___NSKeyValueDebugging__checkConsistencyForStatsWhileOutOfLock_forPair_timingDescription___block_invoke;
  v19[3] = &unk_1E69F68D8;
  v19[4] = self;
  v19[5] = pair;
  v19[6] = lock;
  os_unfair_lock_lock(&self->_lock);
  __90___NSKeyValueDebugging__checkConsistencyForStatsWhileOutOfLock_forPair_timingDescription___block_invoke(v19);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_checkConsistency
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41___NSKeyValueDebugging__checkConsistency__block_invoke;
  v7[3] = &unk_1E69F6900;
  v7[4] = self;
  v7[5] = &v8;
  os_unfair_lock_lock(&self->_lock);
  __41___NSKeyValueDebugging__checkConsistency__block_invoke(v7);
  os_unfair_lock_unlock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v9[5];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        -[_NSKeyValueDebugging _checkConsistencyForStatsWhileOutOfLock:forPair:timingDescription:](self, "_checkConsistencyForStatsWhileOutOfLock:forPair:timingDescription:", [v9[5] objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i)], *(*(&v15 + 1) + 8 * i), @"periodically for a short time every second after the 'did'");
      }

      v4 = [v3 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v8, 8);
}

- (void)_object:(id)_object trackChangeForKeyOrKeys:(id)keys operation:(int64_t)operation
{
  v22 = *MEMORY[0x1E69E9840];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __66___NSKeyValueDebugging__object_trackChangeForKeyOrKeys_operation___block_invoke;
  v13 = &unk_1E69F6950;
  selfCopy = self;
  operationCopy = operation;
  _objectCopy = _object;
  if ([keys conformsToProtocol:&unk_1EEF6A638])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [keys countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(keys);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          if (_NSIsNSString())
          {
            v12(v11, v10);
          }
        }

        v7 = [keys countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else if (_NSIsNSString())
  {
    v12(v11, keys);
  }
}

- (void)object:(void *)object willAddObserver:(void *)observer forKeyPath:(uint64_t)path context:
{
  v18 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v10 = [_NSKeyValueObjectBox alloc];
    if (v10)
    {
      v17.receiver = v10;
      v17.super_class = _NSKeyValueObjectBox;
      v11 = [(os_unfair_lock_s *)&v17 init];
      if (v11)
      {
        if ((objc_opt_respondsToSelector() & 1) != 0 && ([object allowsWeakReference] & 1) == 0)
        {
        }

        else
        {
          objc_storeWeak(v11 + 1, object);
          v11[2] = object;
          v11[3] = object_getClass(object);
          v12 = [[_NSKeyValueObjectAndKeyPair alloc] initWithObject:a2 key:observer context:path];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __66___NSKeyValueDebugging_object_willAddObserver_forKeyPath_context___block_invoke;
          v16[3] = &unk_1E69F68D8;
          v16[4] = self;
          v16[5] = v11;
          v16[6] = v12;
          os_unfair_lock_lock(self + 2);
          __66___NSKeyValueDebugging_object_willAddObserver_forKeyPath_context___block_invoke(v16);
          os_unfair_lock_unlock(self + 2);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __66___NSKeyValueDebugging_object_willAddObserver_forKeyPath_context___block_invoke_2;
          v15[3] = &unk_1E69F6998;
          v15[4] = self;
          v15[5] = v11;
          objc_opt_self();
          v13 = objc_autoreleasePoolPush();
          [_NSKeyValueDebuggingDeallocSentinel _invalidateSentinelWithKey:&_NSKeyValueDebuggingObserverDeallocBeforeRemovalKey fromObject:object];
          v14 = [[_NSKeyValueDebuggingDeallocSentinel alloc] initWithObjectPointer:object callbackBlock:v15];
          objc_setAssociatedObject(object, &_NSKeyValueDebuggingObserverDeallocBeforeRemovalKey, v14, 0x301);

          objc_autoreleasePoolPop(v13);
        }
      }
    }
  }
}

- (void)object:(void *)object willRemoveObserver:(uint64_t)observer forKeyPath:(uint64_t)path context:
{
  v9[8] = *MEMORY[0x1E69E9840];
  if (self)
  {
    [objc_opt_self() _invalidateSentinelWithKey:&_NSKeyValueDebuggingObserverDeallocBeforeRemovalKey fromObject:object];
    objc_setAssociatedObject(object, &_NSKeyValueDebuggingObserverDeallocBeforeRemovalKey, 0, 0x301);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69___NSKeyValueDebugging_object_willRemoveObserver_forKeyPath_context___block_invoke;
    v9[3] = &unk_1E69F69E8;
    v9[4] = self;
    v9[5] = object;
    v9[6] = a2;
    v9[7] = path;
    os_unfair_lock_lock(self + 2);
    __69___NSKeyValueDebugging_object_willRemoveObserver_forKeyPath_context___block_invoke(v9);
    os_unfair_lock_unlock(self + 2);
  }
}

@end