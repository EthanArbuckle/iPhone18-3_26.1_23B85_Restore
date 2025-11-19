@interface _NSKeyValueDebugging
- (_NSKeyValueDebugging)init;
- (void)_checkConsistency;
- (void)_checkConsistencyForStatsWhileOutOfLock:(id)a3 forPair:(id)a4 timingDescription:(id)a5;
- (void)_clearWillDidTable;
- (void)_object:(id)a3 trackChangeForKeyOrKeys:(id)a4 operation:(int64_t)a5;
- (void)dealloc;
- (void)object:(void *)a3 willAddObserver:(void *)a4 forKeyPath:(uint64_t)a5 context:;
- (void)object:(void *)a3 willRemoveObserver:(uint64_t)a4 forKeyPath:(uint64_t)a5 context:;
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

- (void)_checkConsistencyForStatsWhileOutOfLock:(id)a3 forPair:(id)a4 timingDescription:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_132 == 1)
  {
    NSLog(@"<KVODebugging>: %@ -- Checking for consistency now (%@).", a2, a4, a5);
  }

  if (qword_1ED43FCE0 != -1)
  {
    dispatch_once(&qword_1ED43FCE0, &__block_literal_global_183);
  }

  v9 = qword_1ED43FCD8;
  if (os_log_type_enabled(qword_1ED43FCD8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v21 = a4;
    v22 = 2114;
    v23 = a5;
    _os_log_impl(&dword_18075C000, v9, OS_LOG_TYPE_INFO, "%{public}@ -- Checking for consistency now (%{public}@).", buf, 0x16u);
  }

  if (a3)
  {
    ++*(a3 + 5);
    v10 = [(_NSKeyValueObjectAndKeyPair *)*(a3 + 1) newCurrentValue];
    if (!v10)
    {
      goto LABEL_26;
    }

    v11 = [a3 currentValue];
    v12 = v11;
    if (*(a3 + 4))
    {
      if (([(_Unwind_Exception *)v11 isEqual:v10]& 1) != 0)
      {
LABEL_11:

        goto LABEL_26;
      }
    }

    else if (v11 == v10)
    {
      goto LABEL_11;
    }

    v13 = v12;
    v14 = v10;
    [a3 setCurrentValue:v10];

    if (v12 && (v15 = _NSKeyValueRetainedObservationInfoForObject(v12, 0)) != 0)
    {

      if (_MergedGlobals_132 == 1)
      {
        NSLog(@"<KVODebugging> KVO ISSUE: %@ -- MAY CAUSE CRASHES -- The value for this key pair seems to have changed outside of a will/did pair AND IT IS OBSERVED BY OTHER OBJECTS!!!; last observed value was '%@', current value is '%@'", a4, v13, v14);
      }

      if (qword_1ED43FCE0 != -1)
      {
        dispatch_once(&qword_1ED43FCE0, &__block_literal_global_183);
      }

      v16 = qword_1ED43FCD8;
      if (os_log_type_enabled(qword_1ED43FCD8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v21 = a4;
        v22 = 2114;
        v23 = v13;
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
        NSLog(@"<KVODebugging> KVO ISSUE: %@ -- The value for this key pair seems to have changed outside of a will/did pair, which makes this key unsafe to observe within a longer key path; last observed value was '%@', current value is '%@'", a4, v13, v14);
      }

      if (qword_1ED43FCE0 != -1)
      {
        dispatch_once(&qword_1ED43FCE0, &__block_literal_global_183);
      }

      v16 = qword_1ED43FCD8;
      if (os_log_type_enabled(qword_1ED43FCD8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v21 = a4;
        v22 = 2114;
        v23 = v13;
        v24 = 2114;
        v25 = v14;
        v17 = "KVO ISSUE: %{public}@ -- The value for this key pair seems to have changed outside of a will/did pair, which makes this key unsafe to observe within a longer key path; last observed value was '%{public}@', current value is '%{public}@'";
        goto LABEL_38;
      }
    }

LABEL_26:
    if ((*(a3 + 16) != 1 || [a3 currentValue]) && *(a3 + 5) < 4)
    {
      return;
    }
  }

  if (_MergedGlobals_132 == 1)
  {
    NSLog(@"<KVODebugging>: %@ -- No longer tracking for consistency changes.", a4);
  }

  if (qword_1ED43FCE0 != -1)
  {
    dispatch_once(&qword_1ED43FCE0, &__block_literal_global_183);
  }

  v18 = qword_1ED43FCD8;
  if (os_log_type_enabled(qword_1ED43FCD8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v21 = a4;
    _os_log_impl(&dword_18075C000, v18, OS_LOG_TYPE_INFO, "%{public}@ -- No longer tracking for consistency changes.", buf, 0xCu);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90___NSKeyValueDebugging__checkConsistencyForStatsWhileOutOfLock_forPair_timingDescription___block_invoke;
  v19[3] = &unk_1E69F68D8;
  v19[4] = self;
  v19[5] = a4;
  v19[6] = a3;
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

- (void)_object:(id)a3 trackChangeForKeyOrKeys:(id)a4 operation:(int64_t)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __66___NSKeyValueDebugging__object_trackChangeForKeyOrKeys_operation___block_invoke;
  v13 = &unk_1E69F6950;
  v15 = self;
  v16 = a5;
  v14 = a3;
  if ([a4 conformsToProtocol:&unk_1EEF6A638])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [a4 countByEnumeratingWithState:&v18 objects:v17 count:16];
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
            objc_enumerationMutation(a4);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          if (_NSIsNSString())
          {
            v12(v11, v10);
          }
        }

        v7 = [a4 countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else if (_NSIsNSString())
  {
    v12(v11, a4);
  }
}

- (void)object:(void *)a3 willAddObserver:(void *)a4 forKeyPath:(uint64_t)a5 context:
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = [_NSKeyValueObjectBox alloc];
    if (v10)
    {
      v17.receiver = v10;
      v17.super_class = _NSKeyValueObjectBox;
      v11 = [(os_unfair_lock_s *)&v17 init];
      if (v11)
      {
        if ((objc_opt_respondsToSelector() & 1) != 0 && ([a3 allowsWeakReference] & 1) == 0)
        {
        }

        else
        {
          objc_storeWeak(v11 + 1, a3);
          v11[2] = a3;
          v11[3] = object_getClass(a3);
          v12 = [[_NSKeyValueObjectAndKeyPair alloc] initWithObject:a2 key:a4 context:a5];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __66___NSKeyValueDebugging_object_willAddObserver_forKeyPath_context___block_invoke;
          v16[3] = &unk_1E69F68D8;
          v16[4] = a1;
          v16[5] = v11;
          v16[6] = v12;
          os_unfair_lock_lock(a1 + 2);
          __66___NSKeyValueDebugging_object_willAddObserver_forKeyPath_context___block_invoke(v16);
          os_unfair_lock_unlock(a1 + 2);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __66___NSKeyValueDebugging_object_willAddObserver_forKeyPath_context___block_invoke_2;
          v15[3] = &unk_1E69F6998;
          v15[4] = a1;
          v15[5] = v11;
          objc_opt_self();
          v13 = objc_autoreleasePoolPush();
          [_NSKeyValueDebuggingDeallocSentinel _invalidateSentinelWithKey:&_NSKeyValueDebuggingObserverDeallocBeforeRemovalKey fromObject:a3];
          v14 = [[_NSKeyValueDebuggingDeallocSentinel alloc] initWithObjectPointer:a3 callbackBlock:v15];
          objc_setAssociatedObject(a3, &_NSKeyValueDebuggingObserverDeallocBeforeRemovalKey, v14, 0x301);

          objc_autoreleasePoolPop(v13);
        }
      }
    }
  }
}

- (void)object:(void *)a3 willRemoveObserver:(uint64_t)a4 forKeyPath:(uint64_t)a5 context:
{
  v9[8] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [objc_opt_self() _invalidateSentinelWithKey:&_NSKeyValueDebuggingObserverDeallocBeforeRemovalKey fromObject:a3];
    objc_setAssociatedObject(a3, &_NSKeyValueDebuggingObserverDeallocBeforeRemovalKey, 0, 0x301);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69___NSKeyValueDebugging_object_willRemoveObserver_forKeyPath_context___block_invoke;
    v9[3] = &unk_1E69F69E8;
    v9[4] = a1;
    v9[5] = a3;
    v9[6] = a2;
    v9[7] = a5;
    os_unfair_lock_lock(a1 + 2);
    __69___NSKeyValueDebugging_object_willRemoveObserver_forKeyPath_context___block_invoke(v9);
    os_unfair_lock_unlock(a1 + 2);
  }
}

@end