@interface BKSHIDEventDeliveryPolicyObserver
- (BKSHIDEventDeferringEnvironment)deferringEnvironment;
- (BKSHIDEventDeferringSelectionPathIdentifier)selectionPathIdentifier;
- (BKSHIDEventDeferringToken)deferringToken;
- (BKSHIDEventDeliveryPolicy)currentPolicy;
- (BKSHIDEventDeliveryPolicyObserver)init;
- (BKSHIDEventDisplay)display;
- (BOOL)canReceiveEvents;
- (BOOL)finalStringTokenInChain;
- (NSString)debugDescription;
- (id)_initWithObserver:(id)a3;
- (id)_lock_buildCurrentPolicy;
- (id)_lock_description;
- (id)_lock_effectivePolicyObservation;
- (id)_lock_updatePolicyWithBlock:(id)a3;
- (int64_t)policyStatus;
- (void)_lock_appendDescriptionToStream:(id)a3;
- (void)_notifyAsyncObservers:(id)a3 didUpdatePolicy:(id)a4;
- (void)_replacePolicySpecificationObject:(id)a3 withObject:(id)a4 replaceIvarBlock:(id)a5;
- (void)addObserver:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)dealloc;
- (void)deferringResolutionsChanged;
- (void)removeObserver:(id)a3;
- (void)setDeferringEnvironment:(id)a3;
- (void)setDeferringToken:(id)a3;
- (void)setDisplay:(id)a3;
- (void)setSelectionPathIdentifier:(id)a3;
@end

@implementation BKSHIDEventDeliveryPolicyObserver

void __64__BKSHIDEventDeliveryPolicyObserver_deferringResolutionsChanged__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) deferringObservations];
  v2 = [v5 copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
}

- (void)deferringResolutionsChanged
{
  v30 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__BKSHIDEventDeliveryPolicyObserver_deferringResolutionsChanged__block_invoke;
  v22[3] = &unk_1E6F477B8;
  v22[4] = self;
  v3 = [(BKSHIDEventDeliveryPolicyObserver *)self _lock_updatePolicyWithBlock:v22];
  v4 = self->_lock_currentPolicy;
  os_unfair_lock_unlock(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = BKLogEventDelivery();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v13 = objc_opt_class();
          *buf = 134218498;
          v24 = self;
          v25 = 2114;
          v26 = v13;
          v27 = 2048;
          v28 = v10;
          v14 = v13;
          _os_log_debug_impl(&dword_186345000, v11, OS_LOG_TYPE_DEBUG, "observerPolicyDidChange: %p -> <%{public}@: %p>", buf, 0x20u);
        }

        if (objc_opt_respondsToSelector())
        {
          [v10 observerDeliveryPolicyDidChange:self];
        }

        else if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          asyncObserverCalloutQueue = self->_asyncObserverCalloutQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __64__BKSHIDEventDeliveryPolicyObserver_deferringResolutionsChanged__block_invoke_83;
          block[3] = &unk_1E6F469E8;
          block[4] = v10;
          block[5] = self;
          v17 = v4;
          dispatch_async(asyncObserverCalloutQueue, block);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_lock_effectivePolicyObservation
{
  v31 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = self->_lock_observations;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v27;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v27 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v26 + 1) + 8 * v8);
      v10 = getpid();
      if (v10 == [v9 pid])
      {
        lock_display = self->_lock_display;
        if (!lock_display || ([v9 display], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[BKSHIDEventDisplay isEqual:](lock_display, "isEqual:", v12), v12, v13))
        {
          lock_environment = self->_lock_environment;
          if (!lock_environment || ([v9 environment], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[BKSHIDEventDeferringEnvironment isEqual:](lock_environment, "isEqual:", v15), v15, v16))
          {
            lock_token = self->_lock_token;
            if (!lock_token || ([v9 token], v18 = objc_claimAutoreleasedReturnValue(), v19 = -[BKSHIDEventDeferringToken isEqual:](lock_token, "isEqual:", v18), v18, v19))
            {
              if (!self->_lock_selectionPathIdentifier || ([v9 selectionPath], v20 = objc_claimAutoreleasedReturnValue(), v21 = -[BKSHIDEventDeferringSelectionPathIdentifier isEqual:](self->_lock_selectionPathIdentifier, "isEqual:", v20), v20, v21))
              {
                v22 = [v9 policyStatus];
                if (v22 > [v6 policyStatus])
                {
                  v23 = v9;

                  v6 = v23;
                  if (v22 == 2)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      if (v5 == ++v8)
      {
        v5 = [(NSSet *)v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
        v23 = v6;
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)_lock_buildCurrentPolicy
{
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(BKSHIDEventObserver *)self->_observer hasReceivedLatestDeferringObservationsFromServer])
  {
    v3 = [(BKSHIDEventDeliveryPolicyObserver *)self _lock_effectivePolicyObservation];
    v4 = [[BKSHIDEventDeliveryPolicy alloc] _initWithPolicyObservation:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BKSHIDEventDeliveryPolicyObserver)init
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDeliveryPolicyObserver does not support subclassing"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138544642;
      v14 = v10;
      v15 = 2114;
      v16 = v12;
      v17 = 2048;
      v18 = self;
      v19 = 2114;
      v20 = @"BKSHIDEventDeliveryPolicyObserver.m";
      v21 = 1024;
      v22 = 59;
      v23 = 2114;
      v24 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18634AB80);
  }

  v5 = +[BKSHIDEventObserver sharedInstance];
  v6 = [(BKSHIDEventDeliveryPolicyObserver *)self _initWithObserver:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)_lock_description
{
  if (_lock_description_onceToken != -1)
  {
    dispatch_once(&_lock_description_onceToken, &__block_literal_global_2678);
  }

  v3 = MEMORY[0x1E698E688];
  v4 = _lock_description_lockedStyle;

  return [v3 descriptionForRootObject:self withStyle:v4];
}

uint64_t __54__BKSHIDEventDeliveryPolicyObserver__lock_description__block_invoke()
{
  _lock_description_lockedStyle = [MEMORY[0x1E698E690] build:&__block_literal_global_64];

  return MEMORY[0x1EEE66BB8]();
}

void __54__BKSHIDEventDeliveryPolicyObserver__lock_description__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = a2;
  v4 = [v2 setWithObject:@"_BKSHIDEventDeliveryPolicyObserver_locked"];
  [v3 setClientInformation:v4];
}

- (int64_t)policyStatus
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BKSHIDEventDeliveryPolicy *)self->_lock_currentPolicy deferringPolicyStatus];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)canReceiveEvents
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BKSHIDEventDeliveryPolicy *)self->_lock_currentPolicy deferringPolicyStatus]== 2;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_observingAssertion invalidate];
  v3.receiver = self;
  v3.super_class = BKSHIDEventDeliveryPolicyObserver;
  [(BKSHIDEventDeliveryPolicyObserver *)&v3 dealloc];
}

- (void)appendDescriptionToStream:(id)a3
{
  v8 = a3;
  v4 = [v8 style];
  v5 = [v4 clientInformation];
  v6 = [v5 containsObject:@"_BKSHIDEventDeliveryPolicyObserver_locked"];

  p_lock = &self->_lock;
  if (v6)
  {
    os_unfair_lock_assert_owner(p_lock);
    [(BKSHIDEventDeliveryPolicyObserver *)self _lock_appendDescriptionToStream:v8];
  }

  else
  {
    os_unfair_lock_lock(p_lock);
    [(BKSHIDEventDeliveryPolicyObserver *)self _lock_appendDescriptionToStream:v8];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_lock_appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__BKSHIDEventDeliveryPolicyObserver__lock_appendDescriptionToStream___block_invoke;
  v8[3] = &unk_1E6F47C78;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [v5 appendProem:self block:v8];
  if ([v5 hasDebugStyle])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__BKSHIDEventDeliveryPolicyObserver__lock_appendDescriptionToStream___block_invoke_2;
    v6[3] = &unk_1E6F47C78;
    v6[4] = self;
    v7 = v5;
    [v7 appendBodySectionWithName:0 block:v6];
  }
}

void __69__BKSHIDEventDeliveryPolicyObserver__lock_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[5];
  v4 = v3 != 0;
  if (v3)
  {
    v5 = [*(a1 + 40) appendObject:v3 withName:@"display"];
    v2 = *(a1 + 32);
  }

  v6 = v2[6];
  if (v6)
  {
    v7 = [*(a1 + 40) appendObject:v6 withName:@"environment"];
    v2 = *(a1 + 32);
    v4 = 1;
  }

  v8 = v2[7];
  if (v8)
  {
    v9 = [*(a1 + 40) appendObject:v8 withName:@"token"];
    v10 = *(a1 + 32);
    if (!*(v10 + 64))
    {
      goto LABEL_11;
    }

    v11 = *(v10 + 56);
    goto LABEL_10;
  }

  if (v2[8])
  {
    v11 = 0;
LABEL_10:
    v12 = [*(a1 + 40) appendObject:v11 withName:@"selectionPathIdentifier"];
    goto LABEL_11;
  }

  if (!v4)
  {
    [*(a1 + 40) appendString:@"process scope" withName:0];
  }

LABEL_11:
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(v13 + 80);
  if (v15)
  {
    v16 = NSStringFromBKSHIDEventDeferringPolicyStatus([v15 deferringPolicyStatus]);
    [v14 appendString:v16 withName:@"status"];
  }

  else
  {

    [v14 appendString:@"UNKNOWN" withName:@"status"];
  }
}

id __69__BKSHIDEventDeliveryPolicyObserver__lock_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 72) count])
  {
    v2 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 72) withName:@"observations"];
  }

  result = [*(*(a1 + 32) + 88) count];
  if (result)
  {
    return [*(a1 + 40) appendObject:*(*(a1 + 32) + 88) withName:@"observers"];
  }

  return result;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (id)_lock_updatePolicyWithBlock:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v23 = v19;
      v24 = 2114;
      v25 = v21;
      v26 = 2048;
      v27 = self;
      v28 = 2114;
      v29 = @"BKSHIDEventDeliveryPolicyObserver.m";
      v30 = 1024;
      v31 = 276;
      v32 = 2114;
      v33 = v18;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186369728);
  }

  v6 = v5;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = self->_lock_currentPolicy;
  v6[2](v6);
  v8 = [(BKSHIDEventDeliveryPolicyObserver *)self _lock_buildCurrentPolicy];
  lock_currentPolicy = self->_lock_currentPolicy;
  self->_lock_currentPolicy = v8;

  v10 = self->_lock_currentPolicy;
  if (BSEqualObjects())
  {
    v11 = 0;
  }

  else
  {
    v12 = BKLogEventDelivery();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(BKSHIDEventDeliveryPolicyObserver *)self _lock_description];
      v14 = NSStringFromBKSHIDEventDeferringPolicyStatus([(BKSHIDEventDeliveryPolicy *)v7 deferringPolicyStatus]);
      *buf = 138543618;
      v23 = v13;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&dword_186345000, v12, OS_LOG_TYPE_DEFAULT, "policyStatus:%{public}@ was:%{public}@", buf, 0x16u);
    }

    v15 = [(NSHashTable *)self->_lock_observers allObjects];
    v11 = [v15 copy];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_notifyAsyncObservers:(id)a3 didUpdatePolicy:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    v19 = v6;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = BKLogEventDelivery();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v15 = objc_opt_class();
          *buf = 134218498;
          v27 = self;
          v28 = 2114;
          v29 = v15;
          v30 = 2048;
          v31 = v12;
          v16 = v7;
          v17 = v15;
          _os_log_debug_impl(&dword_186345000, v13, OS_LOG_TYPE_DEBUG, "observerPolicyDidChange: %p -> <%{public}@: %p>", buf, 0x20u);

          v7 = v16;
          v6 = v19;
        }

        if (objc_opt_respondsToSelector())
        {
          asyncObserverCalloutQueue = self->_asyncObserverCalloutQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __75__BKSHIDEventDeliveryPolicyObserver__notifyAsyncObservers_didUpdatePolicy___block_invoke;
          block[3] = &unk_1E6F469E8;
          block[4] = v12;
          block[5] = self;
          v21 = v7;
          dispatch_async(asyncObserverCalloutQueue, block);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_replacePolicySpecificationObject:(id)a3 withObject:(id)a4 replaceIvarBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  os_unfair_lock_lock(&self->_lock);
  v11 = BSEqualObjects();

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __99__BKSHIDEventDeliveryPolicyObserver__replacePolicySpecificationObject_withObject_replaceIvarBlock___block_invoke;
    v14[3] = &unk_1E6F469C0;
    v14[4] = self;
    v15 = v8;
    v12 = [(BKSHIDEventDeliveryPolicyObserver *)self _lock_updatePolicyWithBlock:v14];
  }

  v13 = self->_lock_currentPolicy;
  os_unfair_lock_unlock(&self->_lock);
  if (v13)
  {
    [(BKSHIDEventDeliveryPolicyObserver *)self _notifyAsyncObservers:v12 didUpdatePolicy:v13];
  }
}

- (void)removeObserver:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (!v10)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v12 = v7;
      v13 = 2114;
      v14 = v9;
      v15 = 2048;
      v16 = self;
      v17 = 2114;
      v18 = @"BKSHIDEventDeliveryPolicyObserver.m";
      v19 = 1024;
      v20 = 197;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186369C44);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:v10];
  os_unfair_lock_unlock(&self->_lock);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      v19 = 2048;
      v20 = self;
      v21 = 2114;
      v22 = @"BKSHIDEventDeliveryPolicyObserver.m";
      v23 = 1024;
      v24 = 184;
      v25 = 2114;
      v26 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186369E18);
  }

  v6 = v5;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:v6];
  v7 = self->_lock_currentPolicy;
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    v14 = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [(BKSHIDEventDeliveryPolicyObserver *)self _notifyAsyncObservers:v8 didUpdatePolicy:v7];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)finalStringTokenInChain
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BKSHIDEventDeliveryPolicy *)self->_lock_currentPolicy finalStringTokenInChain];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setSelectionPathIdentifier:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [v5 classForCoder];
      if (!v10)
      {
        v10 = objc_opt_class();
      }

      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v9 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"selectionPathIdentifier", v11, v13];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(a2);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v21 = v15;
        v22 = 2114;
        v23 = v17;
        v24 = 2048;
        v25 = self;
        v26 = 2114;
        v27 = @"BKSHIDEventDeliveryPolicyObserver.m";
        v28 = 1024;
        v29 = 152;
        v30 = 2114;
        v31 = v14;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18636A09CLL);
    }
  }

  lock_selectionPathIdentifier = self->_lock_selectionPathIdentifier;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__BKSHIDEventDeliveryPolicyObserver_setSelectionPathIdentifier___block_invoke;
  v18[3] = &unk_1E6F46998;
  v19 = v5;
  v7 = v5;
  [(BKSHIDEventDeliveryPolicyObserver *)self _replacePolicySpecificationObject:lock_selectionPathIdentifier withObject:v7 replaceIvarBlock:v18];

  v8 = *MEMORY[0x1E69E9840];
}

- (BKSHIDEventDeferringSelectionPathIdentifier)selectionPathIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BKSHIDEventDeferringSelectionPathIdentifier *)self->_lock_selectionPathIdentifier copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BKSHIDEventDeliveryPolicy)currentPolicy
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_currentPolicy;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDeferringToken:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [v5 classForCoder];
      if (!v10)
      {
        v10 = objc_opt_class();
      }

      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v9 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"token", v11, v13];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(a2);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v21 = v15;
        v22 = 2114;
        v23 = v17;
        v24 = 2048;
        v25 = self;
        v26 = 2114;
        v27 = @"BKSHIDEventDeliveryPolicyObserver.m";
        v28 = 1024;
        v29 = 129;
        v30 = 2114;
        v31 = v14;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18636A39CLL);
    }
  }

  lock_token = self->_lock_token;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__BKSHIDEventDeliveryPolicyObserver_setDeferringToken___block_invoke;
  v18[3] = &unk_1E6F46998;
  v19 = v5;
  v7 = v5;
  [(BKSHIDEventDeliveryPolicyObserver *)self _replacePolicySpecificationObject:lock_token withObject:v7 replaceIvarBlock:v18];

  v8 = *MEMORY[0x1E69E9840];
}

- (BKSHIDEventDeferringToken)deferringToken
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_token;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDeferringEnvironment:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [v5 classForCoder];
      if (!v10)
      {
        v10 = objc_opt_class();
      }

      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v9 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"environment", v11, v13];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(a2);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v21 = v15;
        v22 = 2114;
        v23 = v17;
        v24 = 2048;
        v25 = self;
        v26 = 2114;
        v27 = @"BKSHIDEventDeliveryPolicyObserver.m";
        v28 = 1024;
        v29 = 113;
        v30 = 2114;
        v31 = v14;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18636A64CLL);
    }
  }

  lock_environment = self->_lock_environment;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__BKSHIDEventDeliveryPolicyObserver_setDeferringEnvironment___block_invoke;
  v18[3] = &unk_1E6F46998;
  v19 = v5;
  v7 = v5;
  [(BKSHIDEventDeliveryPolicyObserver *)self _replacePolicySpecificationObject:lock_environment withObject:v7 replaceIvarBlock:v18];

  v8 = *MEMORY[0x1E69E9840];
}

- (BKSHIDEventDeferringEnvironment)deferringEnvironment
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_environment;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDisplay:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [v5 classForCoder];
      if (!v10)
      {
        v10 = objc_opt_class();
      }

      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v9 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"display", v11, v13];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(a2);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v21 = v15;
        v22 = 2114;
        v23 = v17;
        v24 = 2048;
        v25 = self;
        v26 = 2114;
        v27 = @"BKSHIDEventDeliveryPolicyObserver.m";
        v28 = 1024;
        v29 = 97;
        v30 = 2114;
        v31 = v14;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18636A8FCLL);
    }
  }

  lock_display = self->_lock_display;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__BKSHIDEventDeliveryPolicyObserver_setDisplay___block_invoke;
  v18[3] = &unk_1E6F46998;
  v19 = v5;
  v7 = v5;
  [(BKSHIDEventDeliveryPolicyObserver *)self _replacePolicySpecificationObject:lock_display withObject:v7 replaceIvarBlock:v18];

  v8 = *MEMORY[0x1E69E9840];
}

- (BKSHIDEventDisplay)display
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_display;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_initWithObserver:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v28 = v21;
      v29 = 2114;
      v30 = v23;
      v31 = 2048;
      v32 = self;
      v33 = 2114;
      v34 = @"BKSHIDEventDeliveryPolicyObserver.m";
      v35 = 1024;
      v36 = 64;
      v37 = 2114;
      v38 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636ABF0);
  }

  v7 = v6;
  v26.receiver = self;
  v26.super_class = BKSHIDEventDeliveryPolicyObserver;
  v8 = [(BKSHIDEventDeliveryPolicyObserver *)&v26 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_observer, a3);
    v9->_lock._os_unfair_lock_opaque = 0;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDeliveryPolicyObserver <%p> - async callout", v9];
    Serial = BSDispatchQueueCreateSerial();
    asyncObserverCalloutQueue = v9->_asyncObserverCalloutQueue;
    v9->_asyncObserverCalloutQueue = Serial;

    v13 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    lock_observers = v9->_lock_observers;
    v9->_lock_observers = v13;

    v15 = [(BKSHIDEventObserver *)v9->_observer addDeferringObserver:v9];
    observingAssertion = v9->_observingAssertion;
    v9->_observingAssertion = v15;

    os_unfair_lock_lock(&v9->_lock);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __55__BKSHIDEventDeliveryPolicyObserver__initWithObserver___block_invoke;
    v24[3] = &unk_1E6F477B8;
    v25 = v9;
    v17 = [(BKSHIDEventDeliveryPolicyObserver *)v25 _lock_updatePolicyWithBlock:v24];
    os_unfair_lock_unlock(&v9->_lock);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v9;
}

void __55__BKSHIDEventDeliveryPolicyObserver__initWithObserver___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) deferringObservations];
  v2 = [v5 copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
}

@end