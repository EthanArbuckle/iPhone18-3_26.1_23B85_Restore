@interface BLSAssertion
+ (id)acquireWithExplanation:(id)a3 observer:(id)a4 attributes:(id)a5;
+ (id)defaultService;
+ (void)setDefaultService:(id)a3;
- (BLSAssertion)initWithExplanation:(id)a3 attributes:(id)a4;
- (BLSAssertionIdentifier)identifier;
- (BOOL)isAcquired;
- (BOOL)isActive;
- (BOOL)isPaused;
- (NSString)description;
- (double)_lock_activeDuration;
- (double)activeDuration;
- (id)lock_description;
- (uint64_t)setLocalState:(uint64_t)a1;
- (unint64_t)acquisitionState;
- (void)acquireWithCompletion:(id)a3;
- (void)acquireWithObserver:(id)a3;
- (void)addObserver:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)invalidate;
- (void)notifyObserversWithBlock:(uint64_t)a1;
- (void)removeObserver:(id)a3;
- (void)restartTimeoutTimer;
- (void)serviceDidAcquire;
- (void)serviceDidCancelWithError:(id)a3;
- (void)serviceDidPause;
- (void)serviceDidResume;
- (void)serviceFailedToAcquireWithError:(id)a3;
- (void)serviceWillCancel;
- (void)setIdentifier:(id)a3;
- (void)setPaused:(os_unfair_lock_s *)a1;
@end

@implementation BLSAssertion

+ (id)defaultService
{
  objc_opt_self();
  os_unfair_lock_lock(&_classLock);
  v0 = _defaultService;
  if (!v0)
  {
    v1 = +[BLSRuntime isHostProcess];
    v2 = off_278428408;
    if (!v1)
    {
      v2 = off_278428468;
    }

    v3 = objc_alloc_init(*v2);
    v4 = _defaultService;
    _defaultService = v3;

    v0 = v3;
  }

  os_unfair_lock_unlock(&_classLock);

  return v0;
}

- (BLSAssertionIdentifier)identifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_identifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)description
{
  OUTLINED_FUNCTION_10_0(self);
  v3 = [(BLSAssertion *)v2 lock_description];
  os_unfair_lock_unlock(v2 + 8);

  return v3;
}

- (id)lock_description
{
  v1 = a1;
  if (a1)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1();
    v5[2] = __32__BLSAssertion_lock_description__block_invoke;
    v5[3] = &unk_278428688;
    v6 = v2;
    v7 = v1;
    v3 = v2;
    [v3 appendProem:v1 block:v5];
    v1 = [v3 description];
  }

  return v1;
}

id __32__BLSAssertion_lock_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 40) - 1;
  if (v3 > 4)
  {
    v4 = @"initialized";
  }

  else
  {
    v4 = off_278428D58[v3];
  }

  [v2 appendString:v4 withName:@"state"];
  v5 = *(a1 + 40);
  if (*(v5 + 40) == 1)
  {
    v6 = *(a1 + 32);
    v7 = BLSShortLoggingStringForMachTime(*(v5 + 56));
    [v6 appendString:v7 withName:@"requested"];

    v8 = *(a1 + 32);
    v9 = *(*(a1 + 40) + 56);
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v10 = [v8 appendTimeInterval:@"waited" withName:1 decomposeUnits:?];
    v5 = *(a1 + 40);
  }

  if (*(v5 + 64))
  {
    v11 = *(a1 + 32);
    v12 = BLSShortLoggingStringForMachTime(*(v5 + 64));
    [v11 appendString:v12 withName:@"acquired"];

    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = *(v13 + 64);
    if ((*(v13 + 36) & 1) != 0 || !*(v13 + 80))
    {
      mach_continuous_time();
    }

    BSTimeDifferenceFromMachTimeToMachTime();
    v16 = [v14 appendTimeInterval:@"duration" withName:1 decomposeUnits:?];
    v5 = *(a1 + 40);
  }

  if (*(v5 + 38) == 1)
  {
    v24 = [*(a1 + 32) appendTimeInterval:@"activeDuration" withName:1 decomposeUnits:-[BLSAssertion _lock_activeDuration](v5)];
    v5 = *(a1 + 40);
  }

  v17 = [*(a1 + 32) appendBool:*(v5 + 37) withName:@"isPaused" ifEqualTo:1];
  v18 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 88) withName:@"descriptor"];
  v19 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"identifier" skipIfNil:1];
  v20 = *(a1 + 32);
  v21 = [*(a1 + 40) service];
  v22 = [v20 appendPointer:v21 withName:@"service"];

  return [*(a1 + 32) appendInteger:objc_msgSend(*(*(a1 + 40) + 24) withName:{"count"), @"observerCount"}];
}

- (void)serviceDidAcquire
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = [(BLSAssertion *)self setLocalState:?];
  v5 = bls_assertions_log();
  v6 = OUTLINED_FUNCTION_9_0(v5);
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_0_3();
        OUTLINED_FUNCTION_3_1();
LABEL_14:
        _os_log_impl(v14, v15, v16, v17, v18, v19);
      }
    }

    else if (v6)
    {
      if ((v4 - 3) > 2)
      {
        v20 = @"initialized";
      }

      else
      {
        v20 = off_278428D80[v4 - 3];
      }

      *buf = 134218498;
      v34 = self;
      v35 = 2114;
      v36 = self;
      v37 = 2114;
      v38 = v20;
      v14 = &dword_21FE25000;
      v17 = "%p did acquire assertion %{public}@, oldState:%{public}@";
      v18 = buf;
      v15 = v2;
      v16 = OS_LOG_TYPE_INFO;
      v19 = 32;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_1(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, __33__BLSAssertion_serviceDidAcquire__block_invoke, &unk_278428D10, v32);
    goto LABEL_5;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v7, v8, v9, v10, v11, v12);
  }

LABEL_5:
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAcquired
{
  os_unfair_lock_lock(&self->_lock);
  lock_acquired = self->_lock_acquired;
  os_unfair_lock_unlock(&self->_lock);
  return lock_acquired;
}

- (void)invalidate
{
  [(BLSAssertion *)self cancel];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)cancel
{
  [(BLSAssertion *)self setLocalState:?];
  v3 = [(BLSAssertion *)self service];
  [v3 cancelAssertion:self withError:0];
}

- (void)dealloc
{
  v3 = MEMORY[0x277CCACA8];
  v13 = [(BLSAssertion *)a1 lock_description];
  v4 = [v3 stringWithFormat:@"BLSAssertion must be invalidated before dealloc:%@"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_9(&dword_21FE25000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (double)activeDuration
{
  OUTLINED_FUNCTION_10_0(self);
  v3 = [(BLSAssertion *)v2 _lock_activeDuration];
  os_unfair_lock_unlock(v2 + 8);
  return v3;
}

- (double)_lock_activeDuration
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = *(a1 + 48);
  if (*(a1 + 36) == 1 && (*(a1 + 37) & 1) == 0)
  {
    v2 = *(a1 + 72);
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    return v1 + v3;
  }

  return v1;
}

+ (id)acquireWithExplanation:(id)a3 observer:(id)a4 attributes:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[BLSAssertion alloc] initWithExplanation:v9 attributes:v7];

  [(BLSAssertion *)v10 acquireWithObserver:v8];

  return v10;
}

- (BLSAssertion)initWithExplanation:(id)a3 attributes:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = BLSAssertion;
  v8 = [(BLSAssertion *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v8->_lock_localState = 0;
    v10 = v7;
    v11 = [v10 count];
    v12 = [MEMORY[0x277CBEB98] setWithArray:v10];

    v7 = [v12 allObjects];

    if ([v7 count] != v11)
    {
      v13 = bls_assertions_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        v24 = v9;
        v25 = 2114;
        v26 = v6;
        v27 = 2114;
        v28 = v10;
        _os_log_fault_impl(&dword_21FE25000, v13, OS_LOG_TYPE_FAULT, "%p for assertion with explanation:%{public}@ cannot repeat the same exact attribute:%{public}@", buf, 0x20u);
      }
    }

    v14 = [[BLSAssertionDescriptor alloc] initWithExplanation:v6 attributes:v7];
    descriptor = v9->_descriptor;
    v9->_descriptor = v14;

    v16 = +[BLSAssertion defaultService];
    service = v9->_service;
    v9->_service = v16;

    v18 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:2];
    observers = v9->_observers;
    v9->_observers = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isPaused
{
  os_unfair_lock_lock(&self->_lock);
  lock_paused = self->_lock_paused;
  os_unfair_lock_unlock(&self->_lock);
  return lock_paused;
}

- (BOOL)isActive
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_acquired && !self->_lock_paused;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  identifier = self->_identifier;
  self->_identifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)acquireWithObserver:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    [(BLSAssertion *)self acquireWithObserver:a2];
  }

  [(BLSAssertion *)&self->_lock acquireWithObserver:v5, self];
}

- (void)acquireWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [BLSAssertion acquireWithCompletion:a2];
  }

  v8 = v5;
  os_unfair_lock_lock(&self->_lock);
  v6 = [BLSAssertionAcquisitionObserver observerWithCompletion:v8];
  acquisitionObserver = self->_acquisitionObserver;
  self->_acquisitionObserver = v6;

  os_unfair_lock_unlock(&self->_lock);
  [(BLSAssertion *)self acquireWithObserver:self->_acquisitionObserver];
}

- (void)restartTimeoutTimer
{
  v3 = [(BLSAssertion *)self service];
  [v3 restartAssertionTimeoutTimer:self];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

+ (void)setDefaultService:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&_classLock);
  v4 = _defaultService;
  v5 = _defaultService;
  _defaultService = v3;
  v6 = v3;

  os_unfair_lock_unlock(&_classLock);
  if (v6)
  {
    [v4 replaceWithService:v6];
  }

  else
  {
    v7 = bls_assertions_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21FE25000, v7, OS_LOG_TYPE_DEFAULT, "BLSAssertionService defaultService reset - should only occur during unit testing", v8, 2u);
    }
  }
}

void __33__BLSAssertion_serviceDidAcquire__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assertionWasAcquired:*(a1 + 32)];
  }
}

void __48__BLSAssertion_serviceFailedToAcquireWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assertion:*(a1 + 32) didFailToAcquireWithError:*(a1 + 40)];
  }
}

void __31__BLSAssertion_serviceDidPause__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assertionDidPause:*(a1 + 32)];
  }
}

void __32__BLSAssertion_serviceDidResume__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assertionDidResume:*(a1 + 32)];
  }
}

void __33__BLSAssertion_serviceWillCancel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assertionWillCancel:*(a1 + 32)];
  }
}

void __42__BLSAssertion_serviceDidCancelWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assertion:*(a1 + 32) didCancelWithError:*(a1 + 40)];
  }
}

void __41__BLSAssertion_notifyObserversWithBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v2 = [*(*(a1 + 32) + 24) allObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 32));
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (uint64_t)setLocalState:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 32));
  v4 = *(a1 + 40);
  *(a1 + 40) = a2;
  switch(a2)
  {
    case 1:
      v5 = 56;
      goto LABEL_6;
    case 2:
      *(a1 + 36) = 1;
      *(a1 + 38) = 0;
      *(a1 + 48) = 0;
      v8 = mach_continuous_time();
      v6 = 0;
      *(a1 + 64) = v8;
      *(a1 + 72) = v8;
      v5 = 80;
      goto LABEL_7;
    case 3:
    case 5:
      *(a1 + 36) = 0;
      goto LABEL_4;
    case 4:
LABEL_4:
      v5 = 80;
LABEL_6:
      v6 = mach_continuous_time();
LABEL_7:
      *(a1 + v5) = v6;
      break;
    default:
      break;
  }

  os_unfair_lock_unlock((a1 + 32));
  return v4;
}

- (unint64_t)acquisitionState
{
  OUTLINED_FUNCTION_10_0(self);
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = v3 == 1;
    }
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock((v2 + 32));
  return v4;
}

- (void)setPaused:(os_unfair_lock_s *)a1
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_10_0(a1);
    v4 = *(v2 + 37);
    *(v2 + 37) = a2;
    if (*(v2 + 36) == 1)
    {
      if (v4 == a2)
      {
        v5 = bls_assertions_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v9 = [(BLSAssertion *)v2 lock_description];
          v10 = 134218498;
          v11 = v2;
          v12 = 1024;
          v13 = a2;
          v14 = 2114;
          v15 = v9;
          _os_log_error_impl(&dword_21FE25000, v5, OS_LOG_TYPE_ERROR, "%p assertion setPaused:%{BOOL}u when not acquired %{public}@", &v10, 0x1Cu);
        }
      }

      else if (a2)
      {
        *(v2 + 38) = 1;
        v6 = *(v2 + 72);
        mach_continuous_time();
        BSTimeDifferenceFromMachTimeToMachTime();
        *(v2 + 48) = v7 + *(v2 + 48);
      }

      else
      {
        *(v2 + 72) = mach_continuous_time();
      }
    }

    os_unfair_lock_unlock((v2 + 32));
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversWithBlock:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1();
    v4[2] = __41__BLSAssertion_notifyObserversWithBlock___block_invoke;
    v4[3] = &unk_278428978;
    v4[4] = a1;
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

- (void)serviceFailedToAcquireWithError:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 domain];
  if (v5 == @"com.apple.BacklightServices" && [v4 code] == 2)
  {
    v6 = [(BLSAssertion *)self isAcquired];

    if (v6)
    {
      os_unfair_lock_lock(&self->_lock);
      self->_lock_localState = 2;
      os_unfair_lock_unlock(&self->_lock);
      v7 = bls_assertions_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [v4 bls_loggingString];
        OUTLINED_FUNCTION_0_3();
        v19 = v9;
        v20 = v10;
        v11 = "%p already acquired assertion %{public}@ with error:%{public}@";
LABEL_9:
        _os_log_error_impl(&dword_21FE25000, v7, OS_LOG_TYPE_ERROR, v11, buf, 0x20u);

        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  [(BLSAssertion *)self setLocalState:?];
  v7 = bls_assertions_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v4 bls_loggingString];
    OUTLINED_FUNCTION_0_3();
    v19 = v12;
    v20 = v13;
    v11 = "%p failed to acquire assertion %{public}@ with error:%{public}@";
    goto LABEL_9;
  }

LABEL_10:

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1();
  v16[2] = __48__BLSAssertion_serviceFailedToAcquireWithError___block_invoke;
  v16[3] = &unk_278428D38;
  v16[4] = self;
  v17 = v4;
  v14 = v4;
  [(BLSAssertion *)self notifyObserversWithBlock:v16];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)serviceDidPause
{
  v23 = *MEMORY[0x277D85DE8];
  [(BLSAssertion *)self setPaused:?];
  v3 = bls_assertions_log();
  if (OUTLINED_FUNCTION_9_0(v3))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v4, v5, v6, v7, v8, v9);
  }

  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_1(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, __31__BLSAssertion_serviceDidPause__block_invoke, &unk_278428D10, v22);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)serviceDidResume
{
  v23 = *MEMORY[0x277D85DE8];
  [(BLSAssertion *)self setPaused:?];
  v3 = bls_assertions_log();
  if (OUTLINED_FUNCTION_9_0(v3))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v4, v5, v6, v7, v8, v9);
  }

  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_1(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, __32__BLSAssertion_serviceDidResume__block_invoke, &unk_278428D10, v22);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)serviceWillCancel
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = bls_assertions_log();
  if (OUTLINED_FUNCTION_9_0(v3))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v4, v5, v6, v7, v8, v9);
  }

  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_1(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, __33__BLSAssertion_serviceWillCancel__block_invoke, &unk_278428D10, v22);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)serviceDidCancelWithError:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(BLSAssertion *)self setLocalState:?];
  v5 = bls_assertions_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 bls_loggingString];
    OUTLINED_FUNCTION_0_3();
    v14 = v7;
    v15 = v8;
    _os_log_impl(&dword_21FE25000, v5, OS_LOG_TYPE_INFO, "%p did cancel assertion %{public}@ with error:%{public}@", buf, 0x20u);
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1();
  v11[2] = __42__BLSAssertion_serviceDidCancelWithError___block_invoke;
  v11[3] = &unk_278428D38;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  [(BLSAssertion *)self notifyObserversWithBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)acquireWithObserver:(void *)a3 .cold.1(os_unfair_lock_s *a1, void *a2, void *a3)
{
  os_unfair_lock_unlock(a1);
  if (a2)
  {
    [a3 addObserver:a2];
  }

  [(BLSAssertion *)a3 setLocalState:?];
  v4 = [a3 service];
  [v4 acquireAssertion:a3];
}

- (void)acquireWithObserver:(void *)a1 .cold.2(void *a1, const char *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v13 = [(BLSAssertion *)a1 lock_description];
  v4 = [v3 stringWithFormat:@"BLSAssertion cannot be acquired after invalidation:%@"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_9(&dword_21FE25000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)acquireWithCompletion:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v11 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_9(&dword_21FE25000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"completion != nil", v10, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end