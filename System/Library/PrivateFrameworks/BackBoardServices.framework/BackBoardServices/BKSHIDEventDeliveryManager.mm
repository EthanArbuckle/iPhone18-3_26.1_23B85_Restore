@interface BKSHIDEventDeliveryManager
+ (id)sharedInstance;
- (BKSHIDEventDeliveryManager)init;
- (BOOL)validateProvenance:(id)provenance;
- (NSString)debugDescription;
- (id)_initWithConnectionFactory:(id)factory forTesting:(BOOL)testing;
- (id)_lock_stateDescription;
- (id)_lock_transactionAssertionWithReason:(id)reason;
- (id)assertSelectionPath:(id)path target:(id)target hasModality:(id)modality basis:(id)basis;
- (id)assertSelectionPath:(id)path target:(id)target imposesConstraint:(id)constraint;
- (id)bufferEventsMatchingPredicate:(id)predicate withReason:(id)reason;
- (id)deferEventsMatchingPredicate:(id)predicate restrictedToEventDescriptors:(id)descriptors toTarget:(id)target withReason:(id)reason;
- (id)deferEventsMatchingPredicate:(id)predicate toTarget:(id)target withReason:(id)reason;
- (id)dispatchDiscreteEventsForReason:(id)reason withRules:(id)rules;
- (id)dispatchKeyCommandsForReason:(id)reason withRule:(id)rule;
- (id)registerKeyCommands:(id)commands;
- (id)transactionAssertionWithReason:(id)reason;
- (int64_t)authenticateMessage:(id)message;
- (void)_executeDescriptionFetch:(id)fetch result:(id)result;
- (void)_lock_flushIfNeeded;
- (void)_lock_implicitFlush;
- (void)_lock_noteServerInterruption;
- (void)_lock_pendQuery:(id)query;
- (void)appendDescriptionToStream:(id)stream;
- (void)changeSelectionPath:(id)path target:(id)target basis:(id)basis ignoreModalities:(BOOL)modalities;
- (void)connectionDescriptionForDeferringRuleIdentity:(id)identity result:(id)result;
- (void)dealloc;
- (void)deliveryChainsDescription:(id)description;
- (void)deliveryGraphDescription:(id)description;
- (void)resolutionDescriptionForEventDescriptor:(id)descriptor sender:(id)sender result:(id)result;
- (void)resolutionDescriptionForKeyCommand:(id)command sender:(id)sender result:(id)result;
@end

@implementation BKSHIDEventDeliveryManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_11524 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_11524, &__block_literal_global_113);
  }

  v3 = sharedInstance___sharedInstance_11525;

  return v3;
}

- (void)_lock_implicitFlush
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_lock_needsFlush = *MEMORY[0x1E695E4D0];
  if (!self->_lock_implicitPreventFlushingAssertion && ![(BSMutableIntegerMap *)self->_lock_preventFlushingReasons count])
  {
    v3 = [(BKSHIDEventDeliveryManager *)self _lock_transactionAssertionWithReason:@"BKSHIDEventDeliveryManager-implicitFlush"];
    lock_implicitPreventFlushingAssertion = self->_lock_implicitPreventFlushingAssertion;
    self->_lock_implicitPreventFlushingAssertion = v3;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__BKSHIDEventDeliveryManager__lock_implicitFlush__block_invoke;
    block[3] = &unk_1E6F477B8;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_lock_flushIfNeeded
{
  v54 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = *MEMORY[0x1E695E4C0];
  if (self->_lock_needsFlush != *MEMORY[0x1E695E4C0] && ![(BSMutableIntegerMap *)self->_lock_preventFlushingReasons count])
  {
    if (self->_lock_remoteTargetSafeToMessage)
    {
      self->_lock_needsFlush = v3;
      v4 = objc_alloc_init(BKSHIDEventDeliveryRuleChangeTransaction);
      lock_discreteDispatchingRoots = self->_lock_discreteDispatchingRoots;
      lock_lastSentDiscreteDispatchingRoots = self->_lock_lastSentDiscreteDispatchingRoots;
      if ((BSEqualObjects() & 1) == 0)
      {
        v7 = BKLogEventDelivery();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = self->_lock_discreteDispatchingRoots;
          v52 = 138543362;
          v53 = v8;
          _os_log_impl(&dword_186345000, v7, OS_LOG_TYPE_DEFAULT, "flushing discrete rule change: %{public}@", &v52, 0xCu);
        }

        v9 = [(NSMutableSet *)self->_lock_discreteDispatchingRoots copy];
        v10 = self->_lock_lastSentDiscreteDispatchingRoots;
        self->_lock_lastSentDiscreteDispatchingRoots = v9;

        allObjects = [(NSMutableSet *)self->_lock_discreteDispatchingRoots allObjects];
        [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setDiscreteDispatchingRules:allObjects];
      }

      lock_keyCommandsDispatchingRoots = self->_lock_keyCommandsDispatchingRoots;
      lock_lastSentKeyCommandsDispatchingRoots = self->_lock_lastSentKeyCommandsDispatchingRoots;
      if ((BSEqualObjects() & 1) == 0)
      {
        v14 = [(NSMutableSet *)self->_lock_keyCommandsDispatchingRoots copy];
        v15 = self->_lock_lastSentKeyCommandsDispatchingRoots;
        self->_lock_lastSentKeyCommandsDispatchingRoots = v14;

        allObjects2 = [(NSMutableSet *)self->_lock_keyCommandsDispatchingRoots allObjects];
        [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setKeyCommandDispatchingRules:allObjects2];
      }

      lock_deferringRules = self->_lock_deferringRules;
      lock_lastSentDeferringRules = self->_lock_lastSentDeferringRules;
      if ((BSEqualObjects() & 1) == 0)
      {
        v19 = [(NSMutableArray *)self->_lock_deferringRules copy];
        v20 = self->_lock_lastSentDeferringRules;
        self->_lock_lastSentDeferringRules = v19;

        [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setDeferringRules:self->_lock_deferringRules];
      }

      lock_keyCommandsRegistrations = self->_lock_keyCommandsRegistrations;
      lock_lastSentKeyCommandsRegistrations = self->_lock_lastSentKeyCommandsRegistrations;
      if ((BSEqualObjects() & 1) == 0)
      {
        v23 = [(NSMutableDictionary *)self->_lock_keyCommandsRegistrations copy];
        v24 = self->_lock_lastSentKeyCommandsRegistrations;
        self->_lock_lastSentKeyCommandsRegistrations = v23;

        v25 = MEMORY[0x1E695DFD8];
        allValues = [(NSDictionary *)self->_lock_lastSentKeyCommandsRegistrations allValues];
        v27 = [v25 setWithArray:allValues];

        if (([(NSSet *)self->_lock_lastSentSetOfKeyCommandsRegistrations isEqual:v27]& 1) == 0)
        {
          objc_storeStrong(&self->_lock_lastSentSetOfKeyCommandsRegistrations, v27);
          allObjects3 = [v27 allObjects];
          [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setKeyCommandsRegistrations:allObjects3];
        }
      }

      v29 = MEMORY[0x1E695DFD8];
      allValues2 = [(NSMutableDictionary *)self->_lock_bufferingPredicates allValues];
      v31 = [v29 setWithArray:allValues2];

      lock_lastSentBufferingPredicates = self->_lock_lastSentBufferingPredicates;
      if ((BSEqualObjects() & 1) == 0)
      {
        objc_storeStrong(&self->_lock_lastSentBufferingPredicates, v31);
        allObjects4 = [v31 allObjects];
        [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setBufferingPredicates:allObjects4];
      }

      v34 = self->_lock_constraintAsserts;
      lock_lastSentConstraintAsserts = self->_lock_lastSentConstraintAsserts;
      if ((BSEqualObjects() & 1) == 0)
      {
        v36 = [(NSMutableSet *)v34 copy];
        v37 = self->_lock_lastSentConstraintAsserts;
        self->_lock_lastSentConstraintAsserts = v36;

        allObjects5 = [(NSMutableSet *)v34 allObjects];
        [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setConstraintAssertions:allObjects5];
      }

      v39 = self->_lock_modalityAsserts;
      lock_lastSentModalityAsserts = self->_lock_lastSentModalityAsserts;
      if ((BSEqualObjects() & 1) == 0)
      {
        v41 = [(NSMutableSet *)v39 copy];
        v42 = self->_lock_lastSentModalityAsserts;
        self->_lock_lastSentModalityAsserts = v41;

        allObjects6 = [(NSMutableSet *)v39 allObjects];
        [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setModalityAssertions:allObjects6];
      }

      if ([(NSMutableSet *)self->_lock_selectionRequests count])
      {
        allObjects7 = [(NSMutableSet *)self->_lock_selectionRequests allObjects];
        [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 setSelectionRequests:allObjects7];

        [(NSMutableSet *)self->_lock_selectionRequests removeAllObjects];
      }

      contentsMask = [(BKSHIDEventDeliveryRuleChangeTransaction *)v4 contentsMask];
      v46 = BKLogEventDelivery();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);
      if (contentsMask)
      {
        if (v47)
        {
          v49 = MEMORY[0x1E698E688];
          succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
          v51 = [v49 descriptionForRootObject:v4 withStyle:succinctStyle];
          v52 = 138543362;
          v53 = v51;
          _os_log_debug_impl(&dword_186345000, v46, OS_LOG_TYPE_DEBUG, "flushing changes: %{public}@", &v52, 0xCu);
        }

        [(BKSHIDEventDeliveryManagerServerInterface *)self->_lock_remoteTargetSafeToMessage submitRuleChanges:v4];
      }

      else
      {
        if (v47)
        {
          LOWORD(v52) = 0;
          _os_log_debug_impl(&dword_186345000, v46, OS_LOG_TYPE_DEBUG, "no-op flush", &v52, 2u);
        }
      }
    }

    else
    {
      v4 = BKLogEventDelivery();
      if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v52) = 0;
        _os_log_debug_impl(&dword_186345000, &v4->super, OS_LOG_TYPE_DEBUG, "aborting flush, not connected to server", &v52, 2u);
      }
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

void __49__BKSHIDEventDeliveryManager__lock_implicitFlush__block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 44));
  v2 = *(a1 + 32);
  v3 = *(v2 + 272);
  *(v2 + 272) = 0;
  v4 = v3;

  os_unfair_lock_unlock((*(a1 + 32) + 44));
  [v4 invalidate];
}

void __49__BKSHIDEventDeliveryManager__lock_implicitFlush__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 240);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__BKSHIDEventDeliveryManager__lock_implicitFlush__block_invoke_2;
  block[3] = &unk_1E6F477B8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __44__BKSHIDEventDeliveryManager_sharedInstance__block_invoke()
{
  v0 = [BKSHIDEventDeliveryManager alloc];
  v3 = +[BKSHIDServiceConnectionFactory sharedInstance];
  v1 = [(BKSHIDEventDeliveryManager *)v0 _initWithConnectionFactory:v3 forTesting:0];
  v2 = sharedInstance___sharedInstance_11525;
  sharedInstance___sharedInstance_11525 = v1;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  os_unfair_lock_lock(&self->_lock);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __56__BKSHIDEventDeliveryManager_appendDescriptionToStream___block_invoke;
  v19 = &unk_1E6F47C78;
  v5 = streamCopy;
  v20 = v5;
  selfCopy = self;
  [v5 appendProem:self block:&v16];
  v6 = [v5 appendObject:self->_lock_preventFlushingReasons withName:@"preventFlushingReasons" skipIfNil:{1, v16, v17, v18, v19}];
  if ([(NSMutableSet *)self->_lock_discreteDispatchingRoots count])
  {
    v7 = [v5 appendObject:self->_lock_discreteDispatchingRoots withName:@"discreteDispatchingRoots"];
  }

  if ([(NSMutableSet *)self->_lock_keyCommandsDispatchingRoots count])
  {
    v8 = [v5 appendObject:self->_lock_keyCommandsDispatchingRoots withName:@"keyCommandsDispatchingRoots"];
  }

  if ([(NSMutableArray *)self->_lock_deferringRules count])
  {
    v9 = [v5 appendObject:self->_lock_deferringRules withName:@"deferringRules"];
  }

  if ([(NSMutableDictionary *)self->_lock_keyCommandsRegistrations count])
  {
    v10 = [v5 appendObject:self->_lock_keyCommandsRegistrations withName:@"keyCommandsRegistrations"];
  }

  if ([(NSMutableDictionary *)self->_lock_bufferingPredicates count])
  {
    v11 = [v5 appendObject:self->_lock_bufferingPredicates withName:@"bufferingPredicates"];
  }

  if ([(NSMutableSet *)self->_lock_constraintAsserts count])
  {
    v12 = [v5 appendObject:self->_lock_constraintAsserts withName:@"constraints"];
  }

  if ([(NSMutableSet *)self->_lock_modalityAsserts count])
  {
    v13 = [v5 appendObject:self->_lock_modalityAsserts withName:@"modalities"];
  }

  if ([(NSMutableSet *)self->_lock_selectionRequests count])
  {
    v14 = [v5 appendObject:self->_lock_selectionRequests withName:@"selectionRequests"];
  }

  if ([v5 hasDebugStyle] && -[NSHashTable count](self->_lock_assertions, "count"))
  {
    v15 = [v5 appendObject:self->_lock_assertions withName:@"assertions"];
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __56__BKSHIDEventDeliveryManager_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _lock_stateDescription];
  [v1 appendString:v2 withName:@"state"];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

- (id)_lock_stateDescription
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_needsFlush == *MEMORY[0x1E695E4C0])
  {
    return @"flushed";
  }

  if (self->_lock_implicitPreventFlushingAssertion)
  {
    return @"pending";
  }

  if ([(BSMutableIntegerMap *)self->_lock_preventFlushingReasons count])
  {
    return @"locked";
  }

  if (self->_lock_needsFlush == *MEMORY[0x1E695E4D0])
  {
    return @"dirty";
  }

  return @"initial";
}

- (id)_lock_transactionAssertionWithReason:(id)reason
{
  v46 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  if (!reasonCopy)
  {
    v15 = NSStringFromClass(v7);
    v16 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"reason", v15];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v35 = v17;
      v36 = 2114;
      v37 = v19;
      v38 = 2048;
      selfCopy3 = self;
      v40 = 2114;
      v41 = @"BKSHIDEventDeliveryManager.m";
      v42 = 1024;
      v43 = 720;
      v44 = 2114;
      v45 = v16;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A527CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = MEMORY[0x1E696AEC0];
    classForCoder = [reasonCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v22 = NSStringFromClass(classForCoder);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v20 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v22, v24];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(a2);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138544642;
      v35 = v26;
      v36 = 2114;
      v37 = v28;
      v38 = 2048;
      selfCopy3 = self;
      v40 = 2114;
      v41 = @"BKSHIDEventDeliveryManager.m";
      v42 = 1024;
      v43 = 720;
      v44 = 2114;
      v45 = v25;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v25 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A53B4);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  lock_preventFlushingReasons = self->_lock_preventFlushingReasons;
  v9 = self->_lock_preventFlushingSeed + 1;
  self->_lock_preventFlushingSeed = v9;
  v10 = [(BSMutableIntegerMap *)lock_preventFlushingReasons objectForKey:v9];

  if (v10)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wow! we've wrapped all the way back around!!! token=%li reason=%@ reasons=%@", v9, reasonCopy, self->_lock_preventFlushingReasons];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138544642;
      v35 = v30;
      v36 = 2114;
      v37 = v32;
      v38 = 2048;
      selfCopy3 = self;
      v40 = 2114;
      v41 = @"BKSHIDEventDeliveryManager.m";
      v42 = 1024;
      v43 = 724;
      v44 = 2114;
      v45 = v29;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v29 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A54A8);
  }

  [(BSMutableIntegerMap *)self->_lock_preventFlushingReasons setObject:reasonCopy forKey:v9];
  v11 = objc_alloc(MEMORY[0x1E698E778]);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __67__BKSHIDEventDeliveryManager__lock_transactionAssertionWithReason___block_invoke;
  v33[3] = &unk_1E6F47660;
  v33[4] = self;
  v33[5] = v9;
  v12 = [v11 initWithIdentifier:@"com.apple.backboard.hid.delivery.transaction" forReason:reasonCopy invalidationBlock:v33];
  [(NSHashTable *)self->_lock_assertions addObject:v12];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void __67__BKSHIDEventDeliveryManager__lock_transactionAssertionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_not_owner(v3 + 11);
  os_unfair_lock_lock((*(a1 + 32) + 44));
  [*(*(a1 + 32) + 48) removeObject:v4];

  [*(*(a1 + 32) + 264) removeObjectForKey:*(a1 + 40)];
  [*(a1 + 32) _lock_flushIfNeeded];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (void)_lock_noteServerInterruption
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  lock_lastSentDiscreteDispatchingRoots = self->_lock_lastSentDiscreteDispatchingRoots;
  self->_lock_lastSentDiscreteDispatchingRoots = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  lock_lastSentKeyCommandsDispatchingRoots = self->_lock_lastSentKeyCommandsDispatchingRoots;
  self->_lock_lastSentKeyCommandsDispatchingRoots = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  lock_lastSentDeferringRules = self->_lock_lastSentDeferringRules;
  self->_lock_lastSentDeferringRules = v7;

  v9 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  lock_lastSentBufferingPredicates = self->_lock_lastSentBufferingPredicates;
  self->_lock_lastSentBufferingPredicates = v9;

  v11 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  lock_lastSentConstraintAsserts = self->_lock_lastSentConstraintAsserts;
  self->_lock_lastSentConstraintAsserts = v11;

  v13 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  lock_lastSentModalityAsserts = self->_lock_lastSentModalityAsserts;
  self->_lock_lastSentModalityAsserts = v13;

  v15 = objc_alloc_init(MEMORY[0x1E695DF20]);
  lock_lastSentKeyCommandsRegistrations = self->_lock_lastSentKeyCommandsRegistrations;
  self->_lock_lastSentKeyCommandsRegistrations = v15;

  v17 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  lock_lastSentSetOfKeyCommandsRegistrations = self->_lock_lastSentSetOfKeyCommandsRegistrations;
  self->_lock_lastSentSetOfKeyCommandsRegistrations = v17;

  MEMORY[0x1EEE66BB8]();
}

- (void)_lock_pendQuery:(id)query
{
  queryCopy = query;
  os_unfair_lock_assert_owner(&self->_lock);
  lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens = self->_lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens;
  if (!lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = self->_lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens;
    self->_lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens = v5;

    lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens = self->_lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens;
  }

  v7 = MEMORY[0x186605BB0](queryCopy);
  [(NSMutableArray *)lock_pendingQueriesToBeExecutedInsideLockOnceActivationHappens addObject:v7];
}

- (void)_executeDescriptionFetch:(id)fetch result:(id)result
{
  fetchCopy = fetch;
  resultCopy = result;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_remoteTargetSafeToMessage)
  {
    v8 = fetchCopy[2](fetchCopy);
    os_unfair_lock_unlock(&self->_lock);
    if (resultCopy)
    {
      resultCopy[2](resultCopy, v8, 0);
    }
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__BKSHIDEventDeliveryManager__executeDescriptionFetch_result___block_invoke;
    v10[3] = &unk_1E6F47638;
    v10[4] = self;
    v11 = fetchCopy;
    v12 = resultCopy;
    v9 = MEMORY[0x186605BB0](v10);
    [(BKSHIDEventDeliveryManager *)self _lock_pendQuery:v9];
    os_unfair_lock_unlock(&self->_lock);
  }
}

void __62__BKSHIDEventDeliveryManager__executeDescriptionFetch_result___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    a2 = (*(*(a1 + 40) + 16))();
  }

  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__BKSHIDEventDeliveryManager__executeDescriptionFetch_result___block_invoke_2;
  block[3] = &unk_1E6F47610;
  v7 = *(a1 + 48);
  v12 = v5;
  v13 = v7;
  v11 = a2;
  v8 = v5;
  v9 = a2;
  dispatch_async(v6, block);
}

uint64_t __62__BKSHIDEventDeliveryManager__executeDescriptionFetch_result___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (BOOL)validateProvenance:(id)provenance
{
  v18 = *MEMORY[0x1E69E9840];
  provenanceCopy = provenance;
  if (provenanceCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = 0;
    v5 = [MEMORY[0x1E698E750] encodeObject:provenanceCopy error:&v13];
    v6 = v13;
    if (v5)
    {
      if (isKindOfClass)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      buf[0] = 0;
      v8 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
      _BKSHIDVerifyEventProvenance(v8, [v5 bytes], objc_msgSend(v5, "length"), v7, buf);
      v9 = buf[0] != 0;
    }

    else
    {
      v10 = BKLogEventDelivery();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = provenanceCopy;
        v16 = 2114;
        v17 = v6;
        _os_log_error_impl(&dword_186345000, v10, OS_LOG_TYPE_ERROR, "authenticateProvenance: failed to encode %{public}@: %{public}@", buf, 0x16u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (int64_t)authenticateMessage:(id)message
{
  v22 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = messageCopy;
  if (!messageCopy)
  {
    v9 = BKLogEventDelivery();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      v8 = 1;
      goto LABEL_13;
    }

    *buf = 0;
    v10 = "authenticateMessage: message is nil";
    v11 = v9;
    v12 = 2;
LABEL_15:
    _os_log_error_impl(&dword_186345000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    goto LABEL_8;
  }

  if ([messageCopy originIdentifier] != 0xC181BADB23D8497BLL)
  {
    v9 = BKLogEventDelivery();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138543362;
    v19 = v4;
    v10 = "authenticateMessage: message did not originate in backboardd: %{public}@";
    v11 = v9;
    v12 = 12;
    goto LABEL_15;
  }

  v17 = 0;
  v16 = 0;
  v5 = [MEMORY[0x1E698E750] encodeObject:v4 error:&v16];
  v6 = v16;
  if (v5)
  {
    v7 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
    _BKSHIDVerifyEventAuthenticationMessage(v7, [v5 bytes], objc_msgSend(v5, "length"), &v17);
    v8 = v17;
  }

  else
  {
    v13 = BKLogEventDelivery();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = v4;
      v20 = 2114;
      v21 = v6;
      _os_log_error_impl(&dword_186345000, v13, OS_LOG_TYPE_ERROR, "authenticateMessage: failed to encode %{public}@: %{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)dispatchKeyCommandsForReason:(id)reason withRule:(id)rule
{
  v67 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  ruleCopy = rule;
  v9 = reasonCopy;
  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  if (!v9)
  {
    v23 = NSStringFromClass(v11);
    v24 = [v10 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"reason", v23];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v56 = v25;
      v57 = 2114;
      v58 = v27;
      v59 = 2048;
      selfCopy4 = self;
      v61 = 2114;
      v62 = @"BKSHIDEventDeliveryManager.m";
      v63 = 1024;
      v64 = 572;
      v65 = 2114;
      v66 = v24;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A5FF8);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = MEMORY[0x1E696AEC0];
    classForCoder = [v9 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v30 = NSStringFromClass(classForCoder);
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = [v28 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v30, v32];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(a2);
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      *buf = 138544642;
      v56 = v34;
      v57 = 2114;
      v58 = v36;
      v59 = 2048;
      selfCopy4 = self;
      v61 = 2114;
      v62 = @"BKSHIDEventDeliveryManager.m";
      v63 = 1024;
      v64 = 572;
      v65 = 2114;
      v66 = v33;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v33 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A6130);
  }

  v12 = ruleCopy;
  if (!v12)
  {
    v37 = MEMORY[0x1E696AEC0];
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v40 = [v37 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"rule", v39];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = NSStringFromSelector(a2);
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      *buf = 138544642;
      v56 = v41;
      v57 = 2114;
      v58 = v43;
      v59 = 2048;
      selfCopy4 = self;
      v61 = 2114;
      v62 = @"BKSHIDEventDeliveryManager.m";
      v63 = 1024;
      v64 = 573;
      v65 = 2114;
      v66 = v40;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v40 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A6244);
  }

  v13 = v12;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v13 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v46 = NSStringFromClass(classForCoder2);
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    v49 = [v44 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"rule", v46, v48];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(a2);
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138544642;
      v56 = v50;
      v57 = 2114;
      v58 = v52;
      v59 = 2048;
      selfCopy4 = self;
      v61 = 2114;
      v62 = @"BKSHIDEventDeliveryManager.m";
      v63 = 1024;
      v64 = 573;
      v65 = 2114;
      v66 = v49;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v49 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A637CLL);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  ++self->_lock_keyCommandsDispatchingSeed;
  v14 = [[BKSHIDEventKeyCommandDispatchingRoot alloc] initWithReason:v9 seed:self->_lock_keyCommandsDispatchingSeed rule:v13];
  v15 = MEMORY[0x1E696AEC0];
  v16 = self->_lock_keyCommandsDispatchingSeed + 1;
  self->_lock_keyCommandsDispatchingSeed = v16;
  v17 = [v15 stringWithFormat:@"%li-dispatchKeycmds: %@", v16, v9];
  [(NSMutableSet *)self->_lock_keyCommandsDispatchingRoots addObject:v14];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  v18 = objc_alloc(MEMORY[0x1E698E778]);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __68__BKSHIDEventDeliveryManager_dispatchKeyCommandsForReason_withRule___block_invoke;
  v53[3] = &unk_1E6F474F8;
  v53[4] = self;
  v54 = v14;
  v19 = v14;
  v20 = [v18 initWithIdentifier:@"com.apple.backboard.hid.delivery.delivery" forReason:v17 invalidationBlock:v53];
  [(NSHashTable *)self->_lock_assertions addObject:v20];
  os_unfair_lock_unlock(&self->_lock);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void __68__BKSHIDEventDeliveryManager_dispatchKeyCommandsForReason_withRule___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_not_owner(v3 + 11);
  os_unfair_lock_lock((*(a1 + 32) + 44));
  [*(*(a1 + 32) + 48) removeObject:v4];

  [*(*(a1 + 32) + 88) removeObject:*(a1 + 40)];
  [*(a1 + 32) _lock_implicitFlush];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (id)dispatchDiscreteEventsForReason:(id)reason withRules:(id)rules
{
  v95 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  rulesCopy = rules;
  v9 = reasonCopy;
  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  if (!v9)
  {
    v46 = NSStringFromClass(v11);
    v47 = [v10 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"reason", v46];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v48 = NSStringFromSelector(a2);
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      *buf = 138544642;
      v84 = v48;
      v85 = 2114;
      v86 = v50;
      v87 = 2048;
      selfCopy6 = self;
      v89 = 2114;
      v90 = @"BKSHIDEventDeliveryManager.m";
      v91 = 1024;
      v92 = 533;
      v93 = 2114;
      v94 = v47;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v47 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A6A90);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v51 = MEMORY[0x1E696AEC0];
    classForCoder = [v9 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v53 = NSStringFromClass(classForCoder);
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    v56 = [v51 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v53, v55];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v57 = NSStringFromSelector(a2);
      v58 = objc_opt_class();
      v59 = NSStringFromClass(v58);
      *buf = 138544642;
      v84 = v57;
      v85 = 2114;
      v86 = v59;
      v87 = 2048;
      selfCopy6 = self;
      v89 = 2114;
      v90 = @"BKSHIDEventDeliveryManager.m";
      v91 = 1024;
      v92 = 533;
      v93 = 2114;
      v94 = v56;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v56 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A6BC8);
  }

  v12 = rulesCopy;
  if (!v12)
  {
    v60 = MEMORY[0x1E696AEC0];
    v61 = objc_opt_class();
    v62 = NSStringFromClass(v61);
    v63 = [v60 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"ruleSet", v62];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v64 = NSStringFromSelector(a2);
      v65 = objc_opt_class();
      v66 = NSStringFromClass(v65);
      *buf = 138544642;
      v84 = v64;
      v85 = 2114;
      v86 = v66;
      v87 = 2048;
      selfCopy6 = self;
      v89 = 2114;
      v90 = @"BKSHIDEventDeliveryManager.m";
      v91 = 1024;
      v92 = 534;
      v93 = 2114;
      v94 = v63;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v63 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A6CDCLL);
  }

  v13 = v12;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v67 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v13 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v69 = NSStringFromClass(classForCoder2);
    v70 = objc_opt_class();
    v71 = NSStringFromClass(v70);
    v72 = [v67 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"ruleSet", v69, v71];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v73 = NSStringFromSelector(a2);
      v74 = objc_opt_class();
      v75 = NSStringFromClass(v74);
      *buf = 138544642;
      v84 = v73;
      v85 = 2114;
      v86 = v75;
      v87 = 2048;
      selfCopy6 = self;
      v89 = 2114;
      v90 = @"BKSHIDEventDeliveryManager.m";
      v91 = 1024;
      v92 = 534;
      v93 = 2114;
      v94 = v72;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v72 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A6E14);
  }

  v14 = [v13 copy];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v78 objects:v82 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v79;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v79 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v78 + 1) + 8 * i);
        if (!v20)
        {
          v30 = MEMORY[0x1E696AEC0];
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = [v30 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"rule", v32];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v34 = NSStringFromSelector(a2);
            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            *buf = 138544642;
            v84 = v34;
            v85 = 2114;
            v86 = v36;
            v87 = 2048;
            selfCopy6 = self;
            v89 = 2114;
            v90 = @"BKSHIDEventDeliveryManager.m";
            v91 = 1024;
            v92 = 537;
            v93 = 2114;
            v94 = v33;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v33 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1863A684CLL);
        }

        v21 = v20;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v37 = MEMORY[0x1E696AEC0];
          classForCoder3 = [v21 classForCoder];
          if (!classForCoder3)
          {
            classForCoder3 = objc_opt_class();
          }

          v39 = NSStringFromClass(classForCoder3);
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          v42 = [v37 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"rule", v39, v41];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v43 = NSStringFromSelector(a2);
            v44 = objc_opt_class();
            v45 = NSStringFromClass(v44);
            *buf = 138544642;
            v84 = v43;
            v85 = 2114;
            v86 = v45;
            v87 = 2048;
            selfCopy6 = self;
            v89 = 2114;
            v90 = @"BKSHIDEventDeliveryManager.m";
            v91 = 1024;
            v92 = 537;
            v93 = 2114;
            v94 = v42;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v42 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1863A6988);
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v78 objects:v82 count:16];
    }

    while (v17);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  ++self->_lock_discreteDispatchingSeed;
  v22 = [[BKSHIDEventDiscreteDispatchingRoot alloc] initWithReason:v9 seed:self->_lock_discreteDispatchingSeed rules:v15];
  v23 = BKLogEventDelivery();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v84 = v22;
    _os_log_impl(&dword_186345000, v23, OS_LOG_TYPE_DEFAULT, "adding root: %{public}@", buf, 0xCu);
  }

  [(NSMutableSet *)self->_lock_discreteDispatchingRoots addObject:v22];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  v24 = objc_alloc(MEMORY[0x1E698E778]);
  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%u", v9, -[BKSHIDEventDeliveryRuleWrapper seed](v22, "seed")];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __72__BKSHIDEventDeliveryManager_dispatchDiscreteEventsForReason_withRules___block_invoke;
  v76[3] = &unk_1E6F474F8;
  v76[4] = self;
  v77 = v22;
  v26 = v22;
  v27 = [v24 initWithIdentifier:@"com.apple.backboard.hid.delivery.delivery" forReason:v25 invalidationBlock:v76];

  [(NSHashTable *)self->_lock_assertions addObject:v27];
  os_unfair_lock_unlock(&self->_lock);

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

void __72__BKSHIDEventDeliveryManager_dispatchDiscreteEventsForReason_withRules___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_not_owner(v3 + 11);
  os_unfair_lock_lock((*(a1 + 32) + 44));
  [*(*(a1 + 32) + 48) removeObject:v4];

  [*(*(a1 + 32) + 64) removeObject:*(a1 + 40)];
  [*(a1 + 32) _lock_implicitFlush];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (void)resolutionDescriptionForKeyCommand:(id)command sender:(id)sender result:(id)result
{
  commandCopy = command;
  senderCopy = sender;
  resultCopy = result;
  if (!commandCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSHIDEventDeliveryManager.m" lineNumber:520 description:{@"Invalid parameter not satisfying: %@", @"keyCommand"}];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__BKSHIDEventDeliveryManager_resolutionDescriptionForKeyCommand_sender_result___block_invoke;
  v16[3] = &unk_1E6F475E8;
  v16[4] = self;
  v17 = commandCopy;
  v18 = senderCopy;
  v12 = senderCopy;
  v13 = commandCopy;
  v14 = MEMORY[0x186605BB0](v16);
  [(BKSHIDEventDeliveryManager *)self _executeDescriptionFetch:v14 result:resultCopy];
}

id __79__BKSHIDEventDeliveryManager_resolutionDescriptionForKeyCommand_sender_result___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  os_unfair_lock_assert_owner(v3 + 11);
  v5 = [v4 resolutionDescriptionForKeyCommand:a1[5] senderDescriptor:a1[6]];

  return v5;
}

- (void)resolutionDescriptionForEventDescriptor:(id)descriptor sender:(id)sender result:(id)result
{
  descriptorCopy = descriptor;
  senderCopy = sender;
  resultCopy = result;
  if (!descriptorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSHIDEventDeliveryManager.m" lineNumber:510 description:{@"Invalid parameter not satisfying: %@", @"eventDescriptor"}];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__BKSHIDEventDeliveryManager_resolutionDescriptionForEventDescriptor_sender_result___block_invoke;
  v16[3] = &unk_1E6F475E8;
  v16[4] = self;
  v17 = descriptorCopy;
  v18 = senderCopy;
  v12 = senderCopy;
  v13 = descriptorCopy;
  v14 = MEMORY[0x186605BB0](v16);
  [(BKSHIDEventDeliveryManager *)self _executeDescriptionFetch:v14 result:resultCopy];
}

id __84__BKSHIDEventDeliveryManager_resolutionDescriptionForEventDescriptor_sender_result___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  os_unfair_lock_assert_owner(v3 + 11);
  v5 = [v4 resolutionDescriptionForEventDescriptor:a1[5] senderDescriptor:a1[6]];

  return v5;
}

- (void)connectionDescriptionForDeferringRuleIdentity:(id)identity result:(id)result
{
  identityCopy = identity;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __83__BKSHIDEventDeliveryManager_connectionDescriptionForDeferringRuleIdentity_result___block_invoke;
  v13 = &unk_1E6F475C0;
  selfCopy = self;
  v15 = identityCopy;
  v7 = identityCopy;
  resultCopy = result;
  v9 = MEMORY[0x186605BB0](&v10);
  [(BKSHIDEventDeliveryManager *)self _executeDescriptionFetch:v9 result:resultCopy, v10, v11, v12, v13, selfCopy];
}

id __83__BKSHIDEventDeliveryManager_connectionDescriptionForDeferringRuleIdentity_result___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_owner(v3 + 11);
  v5 = [v4 connectionDescriptionForDeferringRuleIdentity:*(a1 + 40)];

  return v5;
}

- (void)deliveryChainsDescription:(id)description
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__BKSHIDEventDeliveryManager_deliveryChainsDescription___block_invoke;
  v6[3] = &unk_1E6F47598;
  v6[4] = self;
  descriptionCopy = description;
  v5 = MEMORY[0x186605BB0](v6);
  [(BKSHIDEventDeliveryManager *)self _executeDescriptionFetch:v5 result:descriptionCopy];
}

id __56__BKSHIDEventDeliveryManager_deliveryChainsDescription___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  os_unfair_lock_assert_owner(v2 + 11);
  v4 = [v3 deliveryChainsDescription];

  return v4;
}

- (void)deliveryGraphDescription:(id)description
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__BKSHIDEventDeliveryManager_deliveryGraphDescription___block_invoke;
  v6[3] = &unk_1E6F47598;
  v6[4] = self;
  descriptionCopy = description;
  v5 = MEMORY[0x186605BB0](v6);
  [(BKSHIDEventDeliveryManager *)self _executeDescriptionFetch:v5 result:descriptionCopy];
}

id __55__BKSHIDEventDeliveryManager_deliveryGraphDescription___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  os_unfair_lock_assert_owner(v2 + 11);
  v4 = [v3 deliveryGraphDescription];

  return v4;
}

- (void)changeSelectionPath:(id)path target:(id)target basis:(id)basis ignoreModalities:(BOOL)modalities
{
  v95 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  targetCopy = target;
  basisCopy = basis;
  if (!pathCopy)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"path != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      v84 = v27;
      v85 = 2114;
      v86 = v29;
      v87 = 2048;
      selfCopy7 = self;
      v89 = 2114;
      v90 = @"BKSHIDEventDeliveryManager.m";
      v91 = 1024;
      v92 = 457;
      v93 = 2114;
      v94 = v26;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A7890);
  }

  v14 = basisCopy;
  v15 = targetCopy;
  if (!v15)
  {
    v30 = MEMORY[0x1E696AEC0];
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = [v30 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"target", v32];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(a2);
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      *buf = 138544642;
      v84 = v34;
      v85 = 2114;
      v86 = v36;
      v87 = 2048;
      selfCopy7 = self;
      v89 = 2114;
      v90 = @"BKSHIDEventDeliveryManager.m";
      v91 = 1024;
      v92 = 458;
      v93 = 2114;
      v94 = v33;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v33 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A79A8);
  }

  v16 = v15;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = MEMORY[0x1E696AEC0];
    classForCoder = [v16 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v39 = NSStringFromClass(classForCoder);
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    v42 = [v37 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"target", v39, v41];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v43 = NSStringFromSelector(a2);
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      *buf = 138544642;
      v84 = v43;
      v85 = 2114;
      v86 = v45;
      v87 = 2048;
      selfCopy7 = self;
      v89 = 2114;
      v90 = @"BKSHIDEventDeliveryManager.m";
      v91 = 1024;
      v92 = 458;
      v93 = 2114;
      v94 = v42;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v42 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A7AE4);
  }

  target = [v16 target];
  if (!target)
  {
    v46 = MEMORY[0x1E696AEC0];
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    v49 = [v46 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"[target target]", v48];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(a2);
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138544642;
      v84 = v50;
      v85 = 2114;
      v86 = v52;
      v87 = 2048;
      selfCopy7 = self;
      v89 = 2114;
      v90 = @"BKSHIDEventDeliveryManager.m";
      v91 = 1024;
      v92 = 459;
      v93 = 2114;
      v94 = v49;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v49 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A7BFCLL);
  }

  v18 = target;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v53 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v18 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v55 = NSStringFromClass(classForCoder2);
    v56 = objc_opt_class();
    v57 = NSStringFromClass(v56);
    v58 = [v53 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"[target target]", v55, v57];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v59 = NSStringFromSelector(a2);
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      *buf = 138544642;
      v84 = v59;
      v85 = 2114;
      v86 = v61;
      v87 = 2048;
      selfCopy7 = self;
      v89 = 2114;
      v90 = @"BKSHIDEventDeliveryManager.m";
      v91 = 1024;
      v92 = 459;
      v93 = 2114;
      v94 = v58;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v58 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A7D38);
  }

  v19 = v14;
  if (!v19)
  {
    v62 = MEMORY[0x1E696AEC0];
    v63 = objc_opt_class();
    v64 = NSStringFromClass(v63);
    v65 = [v62 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"basis", v64];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v66 = NSStringFromSelector(a2);
      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      *buf = 138544642;
      v84 = v66;
      v85 = 2114;
      v86 = v68;
      v87 = 2048;
      selfCopy7 = self;
      v89 = 2114;
      v90 = @"BKSHIDEventDeliveryManager.m";
      v91 = 1024;
      v92 = 460;
      v93 = 2114;
      v94 = v65;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v65 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A7E50);
  }

  v20 = v19;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v69 = MEMORY[0x1E696AEC0];
    classForCoder3 = [v20 classForCoder];
    if (!classForCoder3)
    {
      classForCoder3 = objc_opt_class();
    }

    v71 = NSStringFromClass(classForCoder3);
    v72 = objc_opt_class();
    v73 = NSStringFromClass(v72);
    v74 = [v69 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"basis", v71, v73];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v75 = NSStringFromSelector(a2);
      v76 = objc_opt_class();
      v77 = NSStringFromClass(v76);
      *buf = 138544642;
      v84 = v75;
      v85 = 2114;
      v86 = v77;
      v87 = 2048;
      selfCopy7 = self;
      v89 = 2114;
      v90 = @"BKSHIDEventDeliveryManager.m";
      v91 = 1024;
      v92 = 460;
      v93 = 2114;
      v94 = v74;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v74 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A7F8CLL);
  }

  os_unfair_lock_lock(&self->_lock);
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __80__BKSHIDEventDeliveryManager_changeSelectionPath_target_basis_ignoreModalities___block_invoke;
  v78[3] = &unk_1E6F47570;
  v79 = v16;
  v80 = pathCopy;
  modalitiesCopy = modalities;
  v81 = v20;
  v21 = v20;
  v22 = pathCopy;
  v23 = v16;
  v24 = [BKSHIDEventDeferringSelectionChangeRequest build:v78];
  [(NSMutableSet *)self->_lock_selectionRequests addObject:v24];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  os_unfair_lock_unlock(&self->_lock);

  v25 = *MEMORY[0x1E69E9840];
}

void __80__BKSHIDEventDeliveryManager_changeSelectionPath_target_basis_ignoreModalities___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSelectionTarget:v3];
  [v4 setPathIdentifier:*(a1 + 40)];
  [v4 setIgnoreModalities:*(a1 + 56)];
  [v4 setBasis:*(a1 + 48)];
}

- (id)assertSelectionPath:(id)path target:(id)target hasModality:(id)modality basis:(id)basis
{
  v106 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  targetCopy = target;
  modalityCopy = modality;
  basisCopy = basis;
  if (!pathCopy)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"selectionPath != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      *buf = 138544642;
      v95 = v36;
      v96 = 2114;
      v97 = v38;
      v98 = 2048;
      selfCopy7 = self;
      v100 = 2114;
      v101 = @"BKSHIDEventDeliveryManager.m";
      v102 = 1024;
      v103 = 419;
      v104 = 2114;
      v105 = v35;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v35 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A83E4);
  }

  v15 = basisCopy;
  v16 = targetCopy;
  if (!v16)
  {
    v39 = MEMORY[0x1E696AEC0];
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    v42 = [v39 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"target", v41];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v43 = NSStringFromSelector(a2);
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      *buf = 138544642;
      v95 = v43;
      v96 = 2114;
      v97 = v45;
      v98 = 2048;
      selfCopy7 = self;
      v100 = 2114;
      v101 = @"BKSHIDEventDeliveryManager.m";
      v102 = 1024;
      v103 = 420;
      v104 = 2114;
      v105 = v42;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v42 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A84FCLL);
  }

  v17 = v16;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v46 = MEMORY[0x1E696AEC0];
    classForCoder = [v17 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v48 = NSStringFromClass(classForCoder);
    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    v51 = [v46 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"target", v48, v50];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v52 = NSStringFromSelector(a2);
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      *buf = 138544642;
      v95 = v52;
      v96 = 2114;
      v97 = v54;
      v98 = 2048;
      selfCopy7 = self;
      v100 = 2114;
      v101 = @"BKSHIDEventDeliveryManager.m";
      v102 = 1024;
      v103 = 420;
      v104 = 2114;
      v105 = v51;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v51 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A8638);
  }

  target = [v17 target];
  if (!target)
  {
    v55 = MEMORY[0x1E696AEC0];
    v56 = objc_opt_class();
    v57 = NSStringFromClass(v56);
    v58 = [v55 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"[target target]", v57];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v59 = NSStringFromSelector(a2);
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      *buf = 138544642;
      v95 = v59;
      v96 = 2114;
      v97 = v61;
      v98 = 2048;
      selfCopy7 = self;
      v100 = 2114;
      v101 = @"BKSHIDEventDeliveryManager.m";
      v102 = 1024;
      v103 = 421;
      v104 = 2114;
      v105 = v58;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v58 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A8750);
  }

  v19 = target;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v62 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v19 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v64 = NSStringFromClass(classForCoder2);
    v65 = objc_opt_class();
    v66 = NSStringFromClass(v65);
    v67 = [v62 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"[target target]", v64, v66];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v68 = NSStringFromSelector(a2);
      v69 = objc_opt_class();
      v70 = NSStringFromClass(v69);
      *buf = 138544642;
      v95 = v68;
      v96 = 2114;
      v97 = v70;
      v98 = 2048;
      selfCopy7 = self;
      v100 = 2114;
      v101 = @"BKSHIDEventDeliveryManager.m";
      v102 = 1024;
      v103 = 421;
      v104 = 2114;
      v105 = v67;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v67 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A888CLL);
  }

  v20 = modalityCopy;
  if (!v20)
  {
    v71 = MEMORY[0x1E696AEC0];
    v72 = objc_opt_class();
    v73 = NSStringFromClass(v72);
    v74 = [v71 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"modality", v73];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v75 = NSStringFromSelector(a2);
      v76 = objc_opt_class();
      v77 = NSStringFromClass(v76);
      *buf = 138544642;
      v95 = v75;
      v96 = 2114;
      v97 = v77;
      v98 = 2048;
      selfCopy7 = self;
      v100 = 2114;
      v101 = @"BKSHIDEventDeliveryManager.m";
      v102 = 1024;
      v103 = 422;
      v104 = 2114;
      v105 = v74;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v74 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A89A4);
  }

  v21 = v20;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v78 = MEMORY[0x1E696AEC0];
    classForCoder3 = [v21 classForCoder];
    if (!classForCoder3)
    {
      classForCoder3 = objc_opt_class();
    }

    v80 = NSStringFromClass(classForCoder3);
    v81 = objc_opt_class();
    v82 = NSStringFromClass(v81);
    v83 = [v78 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"modality", v80, v82];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v84 = NSStringFromSelector(a2);
      v85 = objc_opt_class();
      v86 = NSStringFromClass(v85);
      *buf = 138544642;
      v95 = v84;
      v96 = 2114;
      v97 = v86;
      v98 = 2048;
      selfCopy7 = self;
      v100 = 2114;
      v101 = @"BKSHIDEventDeliveryManager.m";
      v102 = 1024;
      v103 = 422;
      v104 = 2114;
      v105 = v83;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v83 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A8AE0);
  }

  os_unfair_lock_lock(&self->_lock);
  v22 = MEMORY[0x1E696AEC0];
  v23 = self->_lock_modalityAssertSeed + 1;
  self->_lock_modalityAssertSeed = v23;
  v24 = [v22 stringWithFormat:@"%li-modality", v23];
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __75__BKSHIDEventDeliveryManager_assertSelectionPath_target_hasModality_basis___block_invoke;
  v89[3] = &unk_1E6F47548;
  v90 = v17;
  v91 = pathCopy;
  v92 = v21;
  v93 = v15;
  v25 = v15;
  v26 = v21;
  v27 = pathCopy;
  v28 = v17;
  v29 = [BKSHIDEventDeferringModalityAssertion build:v89];
  [(NSMutableSet *)self->_lock_modalityAsserts addObject:v29];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  v30 = objc_alloc(MEMORY[0x1E698E778]);
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __75__BKSHIDEventDeliveryManager_assertSelectionPath_target_hasModality_basis___block_invoke_2;
  v87[3] = &unk_1E6F474F8;
  v87[4] = self;
  v88 = v29;
  v31 = v29;
  v32 = [v30 initWithIdentifier:@"com.apple.backboard.hid.delivery.selectionPathHold" forReason:v24 invalidationBlock:v87];
  [(NSHashTable *)self->_lock_assertions addObject:v32];
  os_unfair_lock_unlock(&self->_lock);

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

void __75__BKSHIDEventDeliveryManager_assertSelectionPath_target_hasModality_basis___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setSelectionTarget:v3];
  [v4 setPathIdentifier:a1[5]];
  [v4 setModality:a1[6]];
  [v4 setBasis:a1[7]];
}

void __75__BKSHIDEventDeliveryManager_assertSelectionPath_target_hasModality_basis___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 11);
  [*(*(a1 + 32) + 48) removeObject:v4];

  [*(*(a1 + 32) + 160) removeObject:*(a1 + 40)];
  [*(a1 + 32) _lock_implicitFlush];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (id)assertSelectionPath:(id)path target:(id)target imposesConstraint:(id)constraint
{
  v101 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  targetCopy = target;
  constraintCopy = constraint;
  if (!pathCopy)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"selectionPath != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *buf = 138544642;
      v90 = v32;
      v91 = 2114;
      v92 = v34;
      v93 = 2048;
      selfCopy7 = self;
      v95 = 2114;
      v96 = @"BKSHIDEventDeliveryManager.m";
      v97 = 1024;
      v98 = 382;
      v99 = 2114;
      v100 = v31;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v31 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A8F94);
  }

  v12 = constraintCopy;
  v13 = targetCopy;
  if (!v13)
  {
    v35 = MEMORY[0x1E696AEC0];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [v35 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"target", v37];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(a2);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138544642;
      v90 = v39;
      v91 = 2114;
      v92 = v41;
      v93 = 2048;
      selfCopy7 = self;
      v95 = 2114;
      v96 = @"BKSHIDEventDeliveryManager.m";
      v97 = 1024;
      v98 = 383;
      v99 = 2114;
      v100 = v38;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A90ACLL);
  }

  v14 = v13;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v42 = MEMORY[0x1E696AEC0];
    classForCoder = [v14 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v44 = NSStringFromClass(classForCoder);
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    v47 = [v42 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"target", v44, v46];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v48 = NSStringFromSelector(a2);
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      *buf = 138544642;
      v90 = v48;
      v91 = 2114;
      v92 = v50;
      v93 = 2048;
      selfCopy7 = self;
      v95 = 2114;
      v96 = @"BKSHIDEventDeliveryManager.m";
      v97 = 1024;
      v98 = 383;
      v99 = 2114;
      v100 = v47;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v47 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A91E8);
  }

  target = [v14 target];
  if (!target)
  {
    v51 = MEMORY[0x1E696AEC0];
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    v54 = [v51 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"[target target]", v53];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v55 = NSStringFromSelector(a2);
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      *buf = 138544642;
      v90 = v55;
      v91 = 2114;
      v92 = v57;
      v93 = 2048;
      selfCopy7 = self;
      v95 = 2114;
      v96 = @"BKSHIDEventDeliveryManager.m";
      v97 = 1024;
      v98 = 384;
      v99 = 2114;
      v100 = v54;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v54 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9300);
  }

  v16 = target;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v58 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v16 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v60 = NSStringFromClass(classForCoder2);
    v61 = objc_opt_class();
    v62 = NSStringFromClass(v61);
    v63 = [v58 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"[target target]", v60, v62];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v64 = NSStringFromSelector(a2);
      v65 = objc_opt_class();
      v66 = NSStringFromClass(v65);
      *buf = 138544642;
      v90 = v64;
      v91 = 2114;
      v92 = v66;
      v93 = 2048;
      selfCopy7 = self;
      v95 = 2114;
      v96 = @"BKSHIDEventDeliveryManager.m";
      v97 = 1024;
      v98 = 384;
      v99 = 2114;
      v100 = v63;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v63 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A943CLL);
  }

  v17 = v12;
  if (!v17)
  {
    v67 = MEMORY[0x1E696AEC0];
    v68 = objc_opt_class();
    v69 = NSStringFromClass(v68);
    v70 = [v67 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"constraint", v69];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v71 = NSStringFromSelector(a2);
      v72 = objc_opt_class();
      v73 = NSStringFromClass(v72);
      *buf = 138544642;
      v90 = v71;
      v91 = 2114;
      v92 = v73;
      v93 = 2048;
      selfCopy7 = self;
      v95 = 2114;
      v96 = @"BKSHIDEventDeliveryManager.m";
      v97 = 1024;
      v98 = 385;
      v99 = 2114;
      v100 = v70;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v70 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9554);
  }

  v18 = v17;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v74 = MEMORY[0x1E696AEC0];
    classForCoder3 = [v18 classForCoder];
    if (!classForCoder3)
    {
      classForCoder3 = objc_opt_class();
    }

    v76 = NSStringFromClass(classForCoder3);
    v77 = objc_opt_class();
    v78 = NSStringFromClass(v77);
    v79 = [v74 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"constraint", v76, v78];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v80 = NSStringFromSelector(a2);
      v81 = objc_opt_class();
      v82 = NSStringFromClass(v81);
      *buf = 138544642;
      v90 = v80;
      v91 = 2114;
      v92 = v82;
      v93 = 2048;
      selfCopy7 = self;
      v95 = 2114;
      v96 = @"BKSHIDEventDeliveryManager.m";
      v97 = 1024;
      v98 = 385;
      v99 = 2114;
      v100 = v79;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v79 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9690);
  }

  os_unfair_lock_lock(&self->_lock);
  v19 = MEMORY[0x1E696AEC0];
  v20 = self->_lock_constraintAssertSeed + 1;
  self->_lock_constraintAssertSeed = v20;
  v21 = [v19 stringWithFormat:@"%li-constraint", v20];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __75__BKSHIDEventDeliveryManager_assertSelectionPath_target_imposesConstraint___block_invoke;
  v85[3] = &unk_1E6F47520;
  v86 = v14;
  v87 = pathCopy;
  v88 = v18;
  v22 = v18;
  v23 = pathCopy;
  v24 = v14;
  v25 = [BKSHIDEventDeferringConstraintAssertion build:v85];
  [(NSMutableSet *)self->_lock_constraintAsserts addObject:v25];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  v26 = objc_alloc(MEMORY[0x1E698E778]);
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __75__BKSHIDEventDeliveryManager_assertSelectionPath_target_imposesConstraint___block_invoke_2;
  v83[3] = &unk_1E6F474F8;
  v83[4] = self;
  v84 = v25;
  v27 = v25;
  v28 = [v26 initWithIdentifier:@"com.apple.backboard.hid.delivery.selectionPathHold" forReason:v21 invalidationBlock:v83];
  [(NSHashTable *)self->_lock_assertions addObject:v28];
  os_unfair_lock_unlock(&self->_lock);

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

void __75__BKSHIDEventDeliveryManager_assertSelectionPath_target_imposesConstraint___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setSelectionTarget:v3];
  [v4 setPathIdentifier:a1[5]];
  [v4 setConstraint:a1[6]];
}

void __75__BKSHIDEventDeliveryManager_assertSelectionPath_target_imposesConstraint___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 11);
  [*(*(a1 + 32) + 48) removeObject:v4];

  [*(*(a1 + 32) + 184) removeObject:*(a1 + 40)];
  [*(a1 + 32) _lock_implicitFlush];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (id)bufferEventsMatchingPredicate:(id)predicate withReason:(id)reason
{
  v71 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  reasonCopy = reason;
  v9 = predicateCopy;
  if (!v9)
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v23 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"predicate", v25];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      v60 = v27;
      v61 = 2114;
      v62 = v29;
      v63 = 2048;
      selfCopy5 = self;
      v65 = 2114;
      v66 = @"BKSHIDEventDeliveryManager.m";
      v67 = 1024;
      v68 = 335;
      v69 = 2114;
      v70 = v26;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9A98);
  }

  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v30 = MEMORY[0x1E696AEC0];
    classForCoder = [v10 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v32 = NSStringFromClass(classForCoder);
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v35 = [v30 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"predicate", v32, v34];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      *buf = 138544642;
      v60 = v36;
      v61 = 2114;
      v62 = v38;
      v63 = 2048;
      selfCopy5 = self;
      v65 = 2114;
      v66 = @"BKSHIDEventDeliveryManager.m";
      v67 = 1024;
      v68 = 335;
      v69 = 2114;
      v70 = v35;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v35 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9BD4);
  }

  v11 = reasonCopy;
  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  if (!v11)
  {
    v39 = NSStringFromClass(v13);
    v40 = [v12 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"reason", v39];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = NSStringFromSelector(a2);
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      *buf = 138544642;
      v60 = v41;
      v61 = 2114;
      v62 = v43;
      v63 = 2048;
      selfCopy5 = self;
      v65 = 2114;
      v66 = @"BKSHIDEventDeliveryManager.m";
      v67 = 1024;
      v68 = 336;
      v69 = 2114;
      v70 = v40;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v40 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9CDCLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v11 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v46 = NSStringFromClass(classForCoder2);
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    v49 = [v44 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v46, v48];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(a2);
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138544642;
      v60 = v50;
      v61 = 2114;
      v62 = v52;
      v63 = 2048;
      selfCopy5 = self;
      v65 = 2114;
      v66 = @"BKSHIDEventDeliveryManager.m";
      v67 = 1024;
      v68 = 336;
      v69 = 2114;
      v70 = v49;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v49 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9E14);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v14 = MEMORY[0x1E696AEC0];
  v15 = self->_lock_bufferingSeed + 1;
  self->_lock_bufferingSeed = v15;
  v16 = [v14 stringWithFormat:@"%li-buffer: %@", v15, v11];
  v17 = [(NSMutableDictionary *)self->_lock_bufferingPredicates objectForKey:v16];

  if (v17)
  {
    v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wow! we've got duplicate buffering keys!!! new=%@ existing=%@ : predicate=%@", v16, self->_lock_bufferingPredicates, v10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v54 = NSStringFromSelector(a2);
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      *buf = 138544642;
      v60 = v54;
      v61 = 2114;
      v62 = v56;
      v63 = 2048;
      selfCopy5 = self;
      v65 = 2114;
      v66 = @"BKSHIDEventDeliveryManager.m";
      v67 = 1024;
      v68 = 342;
      v69 = 2114;
      v70 = v53;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v53 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A9F08);
  }

  [(NSMutableDictionary *)self->_lock_bufferingPredicates setObject:v10 forKey:v16];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  v18 = objc_alloc(MEMORY[0x1E698E778]);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __71__BKSHIDEventDeliveryManager_bufferEventsMatchingPredicate_withReason___block_invoke;
  v57[3] = &unk_1E6F474F8;
  v57[4] = self;
  v58 = v16;
  v19 = v16;
  v20 = [v18 initWithIdentifier:@"com.apple.backboard.hid.delivery.buffering" forReason:v19 invalidationBlock:v57];
  [(NSHashTable *)self->_lock_assertions addObject:v20];
  os_unfair_lock_unlock(&self->_lock);
  os_unfair_lock_assert_not_owner(&self->_lock);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void __71__BKSHIDEventDeliveryManager_bufferEventsMatchingPredicate_withReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_not_owner(v3 + 11);
  os_unfair_lock_lock((*(a1 + 32) + 44));
  [*(*(a1 + 32) + 48) removeObject:v4];

  [*(*(a1 + 32) + 136) removeObjectForKey:*(a1 + 40)];
  [*(a1 + 32) _lock_implicitFlush];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (id)transactionAssertionWithReason:(id)reason
{
  v37 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  if (!reasonCopy)
  {
    v11 = NSStringFromClass(v7);
    v12 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"reason", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v26 = v13;
      v27 = 2114;
      v28 = v15;
      v29 = 2048;
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"BKSHIDEventDeliveryManager.m";
      v33 = 1024;
      v34 = 322;
      v35 = 2114;
      v36 = v12;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AA180);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    classForCoder = [reasonCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v18 = NSStringFromClass(classForCoder);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v18, v20];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138544642;
      v26 = v22;
      v27 = 2114;
      v28 = v24;
      v29 = 2048;
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"BKSHIDEventDeliveryManager.m";
      v33 = 1024;
      v34 = 322;
      v35 = 2114;
      v36 = v21;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AA2B8);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v8 = [(BKSHIDEventDeliveryManager *)self _lock_transactionAssertionWithReason:reasonCopy];
  os_unfair_lock_unlock(&self->_lock);
  os_unfair_lock_assert_not_owner(&self->_lock);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)registerKeyCommands:(id)commands
{
  v50 = *MEMORY[0x1E69E9840];
  commandsCopy = commands;
  if (!commandsCopy)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v16 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"registration", v18];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v39 = v20;
      v40 = 2114;
      v41 = v22;
      v42 = 2048;
      selfCopy3 = self;
      v44 = 2114;
      v45 = @"BKSHIDEventDeliveryManager.m";
      v46 = 1024;
      v47 = 290;
      v48 = 2114;
      v49 = v19;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AA58CLL);
  }

  v6 = commandsCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = MEMORY[0x1E696AEC0];
    classForCoder = [v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v25 = NSStringFromClass(classForCoder);
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [v23 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"registration", v25, v27];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v39 = v29;
      v40 = 2114;
      v41 = v31;
      v42 = 2048;
      selfCopy3 = self;
      v44 = 2114;
      v45 = @"BKSHIDEventDeliveryManager.m";
      v46 = 1024;
      v47 = 290;
      v48 = 2114;
      v49 = v28;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AA6C8);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = MEMORY[0x1E696AEC0];
  v8 = self->_lock_keyCommandsRegistrationSeed + 1;
  self->_lock_keyCommandsRegistrationSeed = v8;
  v9 = [v7 stringWithFormat:@"%li-keycmds", v8];
  v10 = [(NSMutableDictionary *)self->_lock_keyCommandsRegistrations objectForKey:v9];

  if (v10)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wow! we've got duplicate registration keys!!! new=%@ existing=%@ : registration=%@", v9, self->_lock_keyCommandsRegistrations, v6];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138544642;
      v39 = v33;
      v40 = 2114;
      v41 = v35;
      v42 = 2048;
      selfCopy3 = self;
      v44 = 2114;
      v45 = @"BKSHIDEventDeliveryManager.m";
      v46 = 1024;
      v47 = 296;
      v48 = 2114;
      v49 = v32;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AA7BCLL);
  }

  [(NSMutableDictionary *)self->_lock_keyCommandsRegistrations setObject:v6 forKey:v9];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  v11 = objc_alloc(MEMORY[0x1E698E778]);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __50__BKSHIDEventDeliveryManager_registerKeyCommands___block_invoke;
  v36[3] = &unk_1E6F474F8;
  v36[4] = self;
  v37 = v9;
  v12 = v9;
  v13 = [v11 initWithIdentifier:@"com.apple.backboard.hid.delivery.delivery" forReason:v12 invalidationBlock:v36];
  [(NSHashTable *)self->_lock_assertions addObject:v13];
  os_unfair_lock_unlock(&self->_lock);

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __50__BKSHIDEventDeliveryManager_registerKeyCommands___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_not_owner(v3 + 11);
  os_unfair_lock_lock((*(a1 + 32) + 44));
  [*(*(a1 + 32) + 48) removeObject:v4];

  [*(*(a1 + 32) + 216) removeObjectForKey:*(a1 + 40)];
  [*(a1 + 32) _lock_implicitFlush];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (id)deferEventsMatchingPredicate:(id)predicate toTarget:(id)target withReason:(id)reason
{
  v8 = MEMORY[0x1E695DFD8];
  reasonCopy = reason;
  targetCopy = target;
  predicateCopy = predicate;
  v12 = [v8 set];
  v13 = [(BKSHIDEventDeliveryManager *)self deferEventsMatchingPredicate:predicateCopy restrictedToEventDescriptors:v12 toTarget:targetCopy withReason:reasonCopy];

  return v13;
}

- (id)deferEventsMatchingPredicate:(id)predicate restrictedToEventDescriptors:(id)descriptors toTarget:(id)target withReason:(id)reason
{
  v113 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  targetCopy = target;
  reasonCopy = reason;
  v15 = predicateCopy;
  if (!v15)
  {
    v33 = MEMORY[0x1E696AEC0];
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = [v33 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"predicate", v35];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(a2);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138544642;
      v102 = v37;
      v103 = 2114;
      v104 = v39;
      v105 = 2048;
      selfCopy9 = self;
      v107 = 2114;
      v108 = @"BKSHIDEventDeliveryManager.m";
      v109 = 1024;
      v110 = 246;
      v111 = 2114;
      v112 = v36;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v36 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AACC0);
  }

  v16 = v15;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = MEMORY[0x1E696AEC0];
    classForCoder = [v16 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v42 = NSStringFromClass(classForCoder);
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v45 = [v40 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"predicate", v42, v44];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v46 = NSStringFromSelector(a2);
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      *buf = 138544642;
      v102 = v46;
      v103 = 2114;
      v104 = v48;
      v105 = 2048;
      selfCopy9 = self;
      v107 = 2114;
      v108 = @"BKSHIDEventDeliveryManager.m";
      v109 = 1024;
      v110 = 246;
      v111 = 2114;
      v112 = v45;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v45 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AADFCLL);
  }

  v17 = descriptorsCopy;
  if (!v17)
  {
    v49 = MEMORY[0x1E696AEC0];
    v50 = objc_opt_class();
    v51 = NSStringFromClass(v50);
    v52 = [v49 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"eventDescriptors", v51];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v53 = NSStringFromSelector(a2);
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      *buf = 138544642;
      v102 = v53;
      v103 = 2114;
      v104 = v55;
      v105 = 2048;
      selfCopy9 = self;
      v107 = 2114;
      v108 = @"BKSHIDEventDeliveryManager.m";
      v109 = 1024;
      v110 = 247;
      v111 = 2114;
      v112 = v52;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v52 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AAF14);
  }

  v18 = v17;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v56 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v18 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v58 = NSStringFromClass(classForCoder2);
    v59 = objc_opt_class();
    v60 = NSStringFromClass(v59);
    v61 = [v56 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"eventDescriptors", v58, v60];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v62 = NSStringFromSelector(a2);
      v63 = objc_opt_class();
      v64 = NSStringFromClass(v63);
      *buf = 138544642;
      v102 = v62;
      v103 = 2114;
      v104 = v64;
      v105 = 2048;
      selfCopy9 = self;
      v107 = 2114;
      v108 = @"BKSHIDEventDeliveryManager.m";
      v109 = 1024;
      v110 = 247;
      v111 = 2114;
      v112 = v61;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v61 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AB050);
  }

  v19 = targetCopy;
  if (!v19)
  {
    v65 = MEMORY[0x1E696AEC0];
    v66 = objc_opt_class();
    v67 = NSStringFromClass(v66);
    v68 = [v65 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"target", v67];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v69 = NSStringFromSelector(a2);
      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);
      *buf = 138544642;
      v102 = v69;
      v103 = 2114;
      v104 = v71;
      v105 = 2048;
      selfCopy9 = self;
      v107 = 2114;
      v108 = @"BKSHIDEventDeliveryManager.m";
      v109 = 1024;
      v110 = 248;
      v111 = 2114;
      v112 = v68;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v68 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AB168);
  }

  v20 = v19;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v72 = MEMORY[0x1E696AEC0];
    classForCoder3 = [v20 classForCoder];
    if (!classForCoder3)
    {
      classForCoder3 = objc_opt_class();
    }

    v74 = NSStringFromClass(classForCoder3);
    v75 = objc_opt_class();
    v76 = NSStringFromClass(v75);
    v77 = [v72 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"target", v74, v76];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v78 = NSStringFromSelector(a2);
      v79 = objc_opt_class();
      v80 = NSStringFromClass(v79);
      *buf = 138544642;
      v102 = v78;
      v103 = 2114;
      v104 = v80;
      v105 = 2048;
      selfCopy9 = self;
      v107 = 2114;
      v108 = @"BKSHIDEventDeliveryManager.m";
      v109 = 1024;
      v110 = 248;
      v111 = 2114;
      v112 = v77;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v77 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AB2A4);
  }

  v21 = reasonCopy;
  v22 = MEMORY[0x1E696AEC0];
  v23 = objc_opt_class();
  if (!v21)
  {
    v81 = NSStringFromClass(v23);
    v82 = [v22 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"reason", v81];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v83 = NSStringFromSelector(a2);
      v84 = objc_opt_class();
      v85 = NSStringFromClass(v84);
      *buf = 138544642;
      v102 = v83;
      v103 = 2114;
      v104 = v85;
      v105 = 2048;
      selfCopy9 = self;
      v107 = 2114;
      v108 = @"BKSHIDEventDeliveryManager.m";
      v109 = 1024;
      v110 = 249;
      v111 = 2114;
      v112 = v82;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v82 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AB3ACLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v86 = MEMORY[0x1E696AEC0];
    classForCoder4 = [v21 classForCoder];
    if (!classForCoder4)
    {
      classForCoder4 = objc_opt_class();
    }

    v88 = NSStringFromClass(classForCoder4);
    v89 = objc_opt_class();
    v90 = NSStringFromClass(v89);
    v91 = [v86 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v88, v90];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v92 = NSStringFromSelector(a2);
      v93 = objc_opt_class();
      v94 = NSStringFromClass(v93);
      *buf = 138544642;
      v102 = v92;
      v103 = 2114;
      v104 = v94;
      v105 = 2048;
      selfCopy9 = self;
      v107 = 2114;
      v108 = @"BKSHIDEventDeliveryManager.m";
      v109 = 1024;
      v110 = 249;
      v111 = 2114;
      v112 = v91;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v91 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AB4E4);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  lock_deferringSeed = self->_lock_deferringSeed;
  if (lock_deferringSeed + 1 > 1)
  {
    v25 = lock_deferringSeed + 1;
  }

  else
  {
    v25 = 1;
  }

  self->_lock_deferringSeed = v25;
  v26 = [BKSHIDEventDeferringRule ruleForDeferringEventsMatchingPredicate:v16 restrictedToEventDescriptors:v18 toTarget:v20 withReason:v21 seed:v25 pid:getpid()];
  if ([(NSMutableArray *)self->_lock_deferringRules containsObject:v26])
  {
    v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wow! we've got duplicate deferring rules!!! new=%@ existing=%@", v26, self->_lock_deferringRules];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v96 = NSStringFromSelector(a2);
      v97 = objc_opt_class();
      v98 = NSStringFromClass(v97);
      *buf = 138544642;
      v102 = v96;
      v103 = 2114;
      v104 = v98;
      v105 = 2048;
      selfCopy9 = self;
      v107 = 2114;
      v108 = @"BKSHIDEventDeliveryManager.m";
      v109 = 1024;
      v110 = 260;
      v111 = 2114;
      v112 = v95;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v95 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AB5D4);
  }

  [(NSMutableArray *)self->_lock_deferringRules addObject:v26];
  [(BKSHIDEventDeliveryManager *)self _lock_implicitFlush];
  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%X-defer: %@", self->_lock_deferringSeed, v21];
  v28 = objc_alloc(MEMORY[0x1E698E778]);
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __108__BKSHIDEventDeliveryManager_deferEventsMatchingPredicate_restrictedToEventDescriptors_toTarget_withReason___block_invoke;
  v99[3] = &unk_1E6F474F8;
  v99[4] = self;
  v100 = v26;
  v29 = v26;
  v30 = [v28 initWithIdentifier:@"com.apple.backboard.hid.delivery.delivery" forReason:v27 invalidationBlock:v99];
  [(NSHashTable *)self->_lock_assertions addObject:v30];
  os_unfair_lock_unlock(&self->_lock);

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

void __108__BKSHIDEventDeliveryManager_deferEventsMatchingPredicate_restrictedToEventDescriptors_toTarget_withReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_not_owner(v3 + 11);
  os_unfair_lock_lock((*(a1 + 32) + 44));
  [*(*(a1 + 32) + 48) removeObject:v4];

  [*(*(a1 + 32) + 112) removeObject:*(a1 + 40)];
  [*(a1 + 32) _lock_implicitFlush];
  v5 = (*(a1 + 32) + 44);

  os_unfair_lock_unlock(v5);
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_forTesting)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-dealloc is not allowed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"BKSHIDEventDeliveryManager.m";
      v18 = 1024;
      v19 = 230;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AB7CCLL);
  }

  v9.receiver = self;
  v9.super_class = BKSHIDEventDeliveryManager;
  [(BKSHIDEventDeliveryManager *)&v9 dealloc];
  v2 = *MEMORY[0x1E69E9840];
}

- (id)_initWithConnectionFactory:(id)factory forTesting:(BOOL)testing
{
  v90 = *MEMORY[0x1E69E9840];
  factoryCopy = factory;
  if (!factoryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSHIDEventDeliveryManager.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"connectionFactory"}];
  }

  v77.receiver = self;
  v77.super_class = BKSHIDEventDeliveryManager;
  v8 = [(BKSHIDEventDeliveryManager *)&v77 init];
  v9 = v8;
  if (v8)
  {
    v8->_forTesting = testing;
    v8->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_assertions = v9->_lock_assertions;
    v9->_lock_assertions = weakObjectsHashTable;

    Serial = BSDispatchQueueCreateSerial();
    asyncResultQueue = v9->_asyncResultQueue;
    v9->_asyncResultQueue = Serial;

    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lock_discreteDispatchingRoots = v9->_lock_discreteDispatchingRoots;
    v9->_lock_discreteDispatchingRoots = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    lock_lastSentDiscreteDispatchingRoots = v9->_lock_lastSentDiscreteDispatchingRoots;
    v9->_lock_lastSentDiscreteDispatchingRoots = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lock_keyCommandsDispatchingRoots = v9->_lock_keyCommandsDispatchingRoots;
    v9->_lock_keyCommandsDispatchingRoots = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    lock_lastSentKeyCommandsDispatchingRoots = v9->_lock_lastSentKeyCommandsDispatchingRoots;
    v9->_lock_lastSentKeyCommandsDispatchingRoots = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lock_deferringRules = v9->_lock_deferringRules;
    v9->_lock_deferringRules = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_keyCommandsRegistrations = v9->_lock_keyCommandsRegistrations;
    v9->_lock_keyCommandsRegistrations = v24;

    v26 = dispatch_get_global_queue(25, 0);
    v27 = dispatch_queue_create_with_target_V2("com.apple.backboard.hid.delivery-manager.implicit", 0, v26);
    implicitFlushQueue = v9->_implicitFlushQueue;
    v9->_implicitFlushQueue = v27;

    v29 = objc_alloc_init(MEMORY[0x1E698E6E0]);
    lock_preventFlushingReasons = v9->_lock_preventFlushingReasons;
    v9->_lock_preventFlushingReasons = v29;

    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_bufferingPredicates = v9->_lock_bufferingPredicates;
    v9->_lock_bufferingPredicates = v31;

    v33 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lock_modalityAsserts = v9->_lock_modalityAsserts;
    v9->_lock_modalityAsserts = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lock_constraintAsserts = v9->_lock_constraintAsserts;
    v9->_lock_constraintAsserts = v35;

    v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lock_selectionRequests = v9->_lock_selectionRequests;
    v9->_lock_selectionRequests = v37;

    v39 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    lock_lastSentBufferingPredicates = v9->_lock_lastSentBufferingPredicates;
    v9->_lock_lastSentBufferingPredicates = v39;

    v41 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    lock_lastSentModalityAsserts = v9->_lock_lastSentModalityAsserts;
    v9->_lock_lastSentModalityAsserts = v41;

    v43 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    lock_lastSentConstraintAsserts = v9->_lock_lastSentConstraintAsserts;
    v9->_lock_lastSentConstraintAsserts = v43;

    v45 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    lock_lastSentDeferringRules = v9->_lock_lastSentDeferringRules;
    v9->_lock_lastSentDeferringRules = v45;

    v47 = objc_alloc_init(MEMORY[0x1E695DF20]);
    lock_lastSentKeyCommandsRegistrations = v9->_lock_lastSentKeyCommandsRegistrations;
    v9->_lock_lastSentKeyCommandsRegistrations = v47;

    v49 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    lock_lastSentSetOfKeyCommandsRegistrations = v9->_lock_lastSentSetOfKeyCommandsRegistrations;
    v9->_lock_lastSentSetOfKeyCommandsRegistrations = v49;

    v51 = [factoryCopy clientConnectionForServiceWithName:@"BKHIDEventDeliveryManager"];
    if (!v51)
    {
      v59 = MEMORY[0x1E696AEC0];
      objc_opt_class();
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      v62 = [v59 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"connection", v61];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v63 = NSStringFromSelector(a2);
        v64 = objc_opt_class();
        v65 = NSStringFromClass(v64);
        *buf = 138544642;
        v79 = v63;
        v80 = 2114;
        v81 = v65;
        v82 = 2048;
        v83 = v9;
        v84 = 2114;
        v85 = @"BKSHIDEventDeliveryManager.m";
        v86 = 1024;
        v87 = 159;
        v88 = 2114;
        v89 = v62;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v62 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863ABC88);
    }

    v52 = v51;
    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v66 = MEMORY[0x1E696AEC0];
      classForCoder = [v52 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v68 = NSStringFromClass(classForCoder);
      objc_opt_class();
      v69 = objc_opt_class();
      v70 = NSStringFromClass(v69);
      v71 = [v66 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"connection", v68, v70];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v72 = NSStringFromSelector(a2);
        v73 = objc_opt_class();
        v74 = NSStringFromClass(v73);
        *buf = 138544642;
        v79 = v72;
        v80 = 2114;
        v81 = v74;
        v82 = 2048;
        v83 = v9;
        v84 = 2114;
        v85 = @"BKSHIDEventDeliveryManager.m";
        v86 = 1024;
        v87 = 159;
        v88 = 2114;
        v89 = v71;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v71 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863ABDC8);
    }

    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __68__BKSHIDEventDeliveryManager__initWithConnectionFactory_forTesting___block_invoke;
    v75[3] = &unk_1E6F47978;
    v53 = v9;
    v76 = v53;
    [v52 configure:v75];
    serviceConnection = v53->_serviceConnection;
    v53->_serviceConnection = v52;
    v55 = v52;

    [v55 activate];
  }

  v56 = *MEMORY[0x1E69E9840];
  return v9;
}

void __68__BKSHIDEventDeliveryManager__initWithConnectionFactory_forTesting___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698E710];
  v4 = a2;
  v5 = [v3 protocolForProtocol:&unk_1EF579650];
  v6 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF5796B0];
  v7 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"BKHIDEventDeliveryManager"];
  [v7 setClientMessagingExpectation:1];
  [v7 setServer:v6];
  [v7 setClient:v5];
  [v4 setInterface:v7];
  [v4 setInterfaceTarget:*(a1 + 32)];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__BKSHIDEventDeliveryManager__initWithConnectionFactory_forTesting___block_invoke_2;
  v13[3] = &unk_1E6F474B0;
  v14 = *(a1 + 32);
  [v4 setActivationHandler:v13];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __68__BKSHIDEventDeliveryManager__initWithConnectionFactory_forTesting___block_invoke_103;
  v11 = &unk_1E6F474B0;
  v12 = *(a1 + 32);
  [v4 setInterruptionHandler:&v8];
  [v4 setInvalidationHandler:{&__block_literal_global_11494, v8, v9, v10, v11}];
}

void __68__BKSHIDEventDeliveryManager__initWithConnectionFactory_forTesting___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 44));
  v4 = BKLogEventDelivery();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_186345000, v4, OS_LOG_TYPE_DEFAULT, "BKSHIDEventDeliveryManager - connection activation", buf, 2u);
  }

  v5 = [v3 remoteTarget];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  [*(a1 + 32) _lock_flushIfNeeded];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = *(*(a1 + 32) + 32);
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(a1 + 32) + 24);
        (*(*(*(&v17 + 1) + 8 * v12) + 16))(*(*(&v17 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 32);
  *(v14 + 32) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 44));
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __68__BKSHIDEventDeliveryManager__initWithConnectionFactory_forTesting___block_invoke_103(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 44));
  v2 = BKLogEventDelivery();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_186345000, v2, OS_LOG_TYPE_DEFAULT, "BKSHIDEventDeliveryManager - connection interruption", v6, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  [*(a1 + 32) _lock_noteServerInterruption];
  os_unfair_lock_unlock((*(a1 + 32) + 44));
  return [*(*(a1 + 32) + 8) activate];
}

void __68__BKSHIDEventDeliveryManager__initWithConnectionFactory_forTesting___block_invoke_104(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BKLogEventDelivery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_186345000, v3, OS_LOG_TYPE_ERROR, "delivery manager invalidated - backboardd must have unloaded, exiting…", v4, 2u);
  }

  exit(0);
}

- (BKSHIDEventDeliveryManager)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BKSHIDEventDeliveryManager"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDEventDeliveryManager.m";
    v17 = 1024;
    v18 = 120;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end