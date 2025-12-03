@interface BLSHEngineRequestDatesOperation
- (BLSHEngineRequestDatesOperation)initWithRequestInterval:(id)interval delegate:(id)delegate osTimerProvider:(id)provider;
- (BOOL)didReset;
- (BOOL)isComplete;
- (NSArray)environmentIdentifiers;
- (NSDate)beginDate;
- (NSString)debugDescription;
- (NSString)description;
- (double)averageInterval;
- (double)beginTimestamp;
- (double)longestInterval;
- (double)shortestInterval;
- (id)telemetryDataWithEndTime:(double)time;
- (unsigned)environmentCount;
- (void)beginOperationWithIntervals:(id)intervals shouldReset:(BOOL)reset;
- (void)dealloc;
- (void)environment:(void *)environment didProvideSpecifiers:(void *)specifiers forPresentationInterval:;
- (void)invalidate;
- (void)scheduleTimeout;
- (void)timeoutTimerFired;
@end

@implementation BLSHEngineRequestDatesOperation

- (BLSHEngineRequestDatesOperation)initWithRequestInterval:(id)interval delegate:(id)delegate osTimerProvider:(id)provider
{
  intervalCopy = interval;
  delegateCopy = delegate;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = BLSHEngineRequestDatesOperation;
  v12 = [(BLSHEngineRequestDatesOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestInterval, interval);
    v13->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v13->_lock_delegate, delegateCopy);
    objc_storeStrong(&v13->_osTimerProvider, provider);
  }

  return v13;
}

- (void)dealloc
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_lock_invalidated", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bls_shortLoggingString = [(NSDateInterval *)self->_requestInterval bls_shortLoggingString];
  v5 = [v3 appendObject:bls_shortLoggingString withName:@"requestInterval"];

  v6 = [v3 appendBool:self->_lock_invalidated withName:@"invalidated" ifEqualTo:1];
  v7 = [v3 appendBool:self->_lock_begun withName:@"begun" ifEqualTo:0];
  v8 = [v3 appendBool:self->_lock_timedOut withName:@"timedOut" ifEqualTo:1];
  v9 = [v3 appendBool:self->_lock_complete withName:@"complete" ifEqualTo:1];
  if (self->_lock_begun)
  {
    v10 = [v3 appendBool:self->_lock_didReset withName:@"reset"];
  }

  BSContinuousMachTimeNow();
  v12 = [v3 appendDouble:@"elapsed" withName:3 decimalPrecision:v11 - self->_lock_beginTime];
  v13 = [v3 appendInteger:-[NSMutableSet count](self->_lock_pendingEnvironments withName:{"count"), @"pendingCount"}];
  anyObject = [(NSMutableSet *)self->_lock_pendingEnvironments anyObject];
  v15 = [v3 appendObject:anyObject withName:@"onePending" skipIfNil:1];

  [v3 appendArraySection:self->_lock_environmentIdentifiers withName:@"environments" skipIfEmpty:1];
  build = [v3 build];
  os_unfair_lock_unlock(&self->_lock);

  return build;
}

- (NSString)debugDescription
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bls_shortLoggingString = [(NSDateInterval *)self->_requestInterval bls_shortLoggingString];
  v5 = [v3 appendObject:bls_shortLoggingString withName:@"requestInterval"];

  v6 = [v3 appendBool:self->_lock_invalidated withName:@"invalidated" ifEqualTo:1];
  v7 = [v3 appendBool:self->_lock_begun withName:@"begun" ifEqualTo:0];
  v8 = [v3 appendBool:self->_lock_timedOut withName:@"timedOut" ifEqualTo:1];
  v9 = [v3 appendBool:self->_lock_complete withName:@"complete" ifEqualTo:1];
  if (self->_lock_begun)
  {
    v10 = [v3 appendBool:self->_lock_didReset withName:@"reset"];
  }

  BSContinuousMachTimeNow();
  v12 = [v3 appendDouble:@"elapsed" withName:3 decimalPrecision:v11 - self->_lock_beginTime];
  mEMORY[0x277CF0BF0] = [MEMORY[0x277CF0BF0] sharedInstance];
  v14 = [mEMORY[0x277CF0BF0] formatDuration:self->_lock_averageInterval];
  v15 = [v3 appendObject:v14 withName:@"averageInterval"];

  if (self->_lock_shortestInterval != self->_lock_averageInterval)
  {
    mEMORY[0x277CF0BF0]2 = [MEMORY[0x277CF0BF0] sharedInstance];
    v17 = [mEMORY[0x277CF0BF0]2 formatDuration:self->_lock_shortestInterval];
    v18 = [v3 appendObject:v17 withName:@"shortestInterval"];

    mEMORY[0x277CF0BF0]3 = [MEMORY[0x277CF0BF0] sharedInstance];
    v20 = [mEMORY[0x277CF0BF0]3 formatDuration:self->_lock_longestInterval];
    v21 = [v3 appendObject:v20 withName:@"longestInterval"];
  }

  [v3 appendArraySection:self->_lock_environmentIdentifiers withName:@"environments" skipIfEmpty:1];
  allObjects = [(NSMutableSet *)self->_lock_pendingEnvironments allObjects];
  [v3 appendArraySection:allObjects withName:@"pending" skipIfEmpty:1];

  build = [v3 build];
  os_unfair_lock_unlock(&self->_lock);

  return build;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = 1;
  [(BLSAssertion *)self->_lock_flipbookPowerSavingAssertion invalidate];
  lock_flipbookPowerSavingAssertion = self->_lock_flipbookPowerSavingAssertion;
  self->_lock_flipbookPowerSavingAssertion = 0;

  [(BSTimerScheduleQuerying *)self->_lock_timeoutTimer invalidate];
  lock_timeoutTimer = self->_lock_timeoutTimer;
  self->_lock_timeoutTimer = 0;

  objc_storeWeak(&self->_lock_delegate, 0);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isComplete
{
  os_unfair_lock_lock(&self->_lock);
  lock_complete = self->_lock_complete;
  os_unfair_lock_unlock(&self->_lock);
  return lock_complete;
}

- (NSArray)environmentIdentifiers
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_environmentIdentifiers;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unsigned)environmentCount
{
  os_unfair_lock_lock(&self->_lock);
  lock_environmentCount = self->_lock_environmentCount;
  os_unfair_lock_unlock(&self->_lock);
  return lock_environmentCount;
}

- (double)shortestInterval
{
  os_unfair_lock_lock(&self->_lock);
  lock_shortestInterval = self->_lock_shortestInterval;
  os_unfair_lock_unlock(&self->_lock);
  return lock_shortestInterval;
}

- (double)averageInterval
{
  os_unfair_lock_lock(&self->_lock);
  lock_averageInterval = self->_lock_averageInterval;
  os_unfair_lock_unlock(&self->_lock);
  return lock_averageInterval;
}

- (double)longestInterval
{
  os_unfair_lock_lock(&self->_lock);
  lock_longestInterval = self->_lock_longestInterval;
  os_unfair_lock_unlock(&self->_lock);
  return lock_longestInterval;
}

- (BOOL)didReset
{
  os_unfair_lock_lock(&self->_lock);
  lock_didReset = self->_lock_didReset;
  os_unfair_lock_unlock(&self->_lock);
  return lock_didReset;
}

- (NSDate)beginDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_beginDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (double)beginTimestamp
{
  os_unfair_lock_lock(&self->_lock);
  lock_beginTime = self->_lock_beginTime;
  os_unfair_lock_unlock(&self->_lock);
  return lock_beginTime;
}

- (void)beginOperationWithIntervals:(id)intervals shouldReset:(BOOL)reset
{
  v69[1] = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_begun)
  {
    [BLSHEngineRequestDatesOperation beginOperationWithIntervals:a2 shouldReset:?];
  }

  if (self->_lock_invalidated)
  {
    [BLSHEngineRequestDatesOperation beginOperationWithIntervals:a2 shouldReset:?];
  }

  v47 = a2;
  BSContinuousMachTimeNow();
  self->_lock_beginTime = v7;
  v8 = [(BLSHOSTimerProviding *)self->_osTimerProvider now];
  lock_beginDate = self->_lock_beginDate;
  self->_lock_beginDate = v8;

  self->_lock_begun = 1;
  self->_lock_didReset = reset;
  v10 = [MEMORY[0x277CBEB58] set];
  lock_pendingEnvironments = self->_lock_pendingEnvironments;
  self->_lock_pendingEnvironments = v10;

  if (!self->_lock_flipbookPowerSavingAssertion)
  {
    v12 = MEMORY[0x277CF0868];
    v13 = [BLSHDisableFlipbookPowerSavingAttribute disablePowerSavingForReason:5];
    v69[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:1];
    v15 = [v12 acquireWithExplanation:@"RequestDates" observer:0 attributes:v14];
    lock_flipbookPowerSavingAssertion = self->_lock_flipbookPowerSavingAssertion;
    self->_lock_flipbookPowerSavingAssertion = v15;
  }

  self->_lock_environmentCount = 0;
  self->_lock_shortestInterval = 1.79769313e308;
  self->_lock_longestInterval = 0.0;
  v17 = [intervalsCopy bs_mapNoNulls:&__block_literal_global_15];
  lock_environmentIdentifiers = self->_lock_environmentIdentifiers;
  self->_lock_environmentIdentifiers = v17;

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v19 = intervalsCopy;
  v20 = [v19 countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v20)
  {
    v21 = *v58;
    v22 = 0.0;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v58 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v57 + 1) + 8 * i);
        environment = [v24 environment];
        identifier = [environment identifier];

        if (identifier)
        {
          presentationInterval = [v24 presentationInterval];
          [presentationInterval duration];
          v29 = v28;

          ++self->_lock_environmentCount;
          if (v29 < self->_lock_shortestInterval)
          {
            self->_lock_shortestInterval = v29;
          }

          if (v29 > self->_lock_longestInterval)
          {
            self->_lock_longestInterval = v29;
          }

          [(NSMutableSet *)self->_lock_pendingEnvironments addObject:identifier];
          v22 = v22 + v29;
        }

        else
        {
          v30 = bls_flipbook_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            environment2 = [v24 environment];
            *buf = 134218498;
            selfCopy = self;
            v64 = 2114;
            v65 = v24;
            v66 = 2114;
            v67 = environment2;
            _os_log_error_impl(&dword_21FD11000, v30, OS_LOG_TYPE_ERROR, "%p nil environment identifier for interval:%{public}@ environment:%{public}@", buf, 0x20u);
          }
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v20);
  }

  else
  {
    v22 = 0.0;
  }

  lock_environmentCount = self->_lock_environmentCount;
  if ([(NSArray *)self->_lock_environmentIdentifiers count]!= lock_environmentCount)
  {
    [BLSHEngineRequestDatesOperation beginOperationWithIntervals:v47 shouldReset:?];
  }

  if (![(NSMutableSet *)self->_lock_pendingEnvironments count])
  {
    [BLSHEngineRequestDatesOperation beginOperationWithIntervals:v47 shouldReset:?];
  }

  LODWORD(v33) = self->_lock_environmentCount;
  self->_lock_averageInterval = v22 / v33;
  os_unfair_lock_unlock(&self->_lock);
  [(BLSHEngineRequestDatesOperation *)self scheduleTimeout];
  objc_initWeak(buf, self);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v19;
  v34 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v34)
  {
    v35 = *v54;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v54 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v53 + 1) + 8 * j);
        environment3 = [v37 environment];
        identifier2 = [environment3 identifier];
        v40 = identifier2 == 0;

        if (!v40)
        {
          environment4 = [v37 environment];
          presentationInterval2 = [v37 presentationInterval];
          previousPresentationDate = [v37 previousPresentationDate];
          if (reset)
          {
            shouldReset = 1;
          }

          else
          {
            shouldReset = [v37 shouldReset];
          }

          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __75__BLSHEngineRequestDatesOperation_beginOperationWithIntervals_shouldReset___block_invoke_73;
          v50[3] = &unk_27841FF18;
          objc_copyWeak(&v52, buf);
          v45 = environment4;
          v51 = v45;
          [v45 requestDateSpecifiersForDateInterval:presentationInterval2 previousPresentationDate:previousPresentationDate shouldReset:shouldReset completion:v50];

          objc_destroyWeak(&v52);
        }
      }

      v34 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v34);
  }

  objc_destroyWeak(buf);
  v46 = *MEMORY[0x277D85DE8];
}

id __75__BLSHEngineRequestDatesOperation_beginOperationWithIntervals_shouldReset___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 environment];
  v3 = [v2 identifier];

  return v3;
}

- (void)scheduleTimeout
{
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    objc_initWeak(&location, self);
    v2 = *(self + 48);
    v3 = [MEMORY[0x277CF0C00] descriptionForObject:self];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__BLSHEngineRequestDatesOperation_scheduleTimeout__block_invoke;
    v6[3] = &unk_27841F898;
    objc_copyWeak(&v7, &location);
    v4 = [v2 scheduledTimerWithIdentifier:v3 interval:v6 leewayInterval:15.0 handler:2.0];
    v5 = *(self + 32);
    *(self + 32) = v4;

    os_unfair_lock_unlock((self + 8));
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __75__BLSHEngineRequestDatesOperation_beginOperationWithIntervals_shouldReset___block_invoke_73(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(BLSHEngineRequestDatesOperation *)WeakRetained environment:v5 didProvideSpecifiers:v6 forPresentationInterval:?];
}

- (void)environment:(void *)environment didProvideSpecifiers:(void *)specifiers forPresentationInterval:
{
  v7 = a2;
  environmentCopy = environment;
  specifiersCopy = specifiers;
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    if ((*(self + 116) & 1) != 0 || (*(self + 115) & 1) != 0 || (v10 = *(self + 24), [v7 identifier], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "removeObject:", v11), v11, v12 = objc_msgSend(*(self + 24), "count"), *(self + 112) = v12 == 0, v12))
    {
      v13 = 0;
    }

    else
    {
      [*(self + 32) invalidate];
      v15 = *(self + 32);
      *(self + 32) = 0;

      v13 = 1;
    }

    objc_copyWeak(&to, (self + 40));
    os_unfair_lock_unlock((self + 8));
    v14 = objc_loadWeakRetained(&to);
    [v14 requestDatesOperation:self environment:v7 didProvideSpecifiers:environmentCopy forPresentationInterval:specifiersCopy isComplete:v13];

    objc_destroyWeak(&to);
  }
}

- (id)telemetryDataWithEndTime:(double)time
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [[BLSHFlipbookRequestDatesTelemetryData alloc] initWithTimestamp:self->_lock_environmentIdentifiers environmentIdentifiers:self->_lock_didReset shortestInterval:[(NSMutableSet *)self->_lock_pendingEnvironments count] averageInterval:time longestInterval:self->_lock_shortestInterval completionDuration:self->_lock_averageInterval didReset:self->_lock_longestInterval timedOutCount:time - self->_lock_beginTime];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

void __50__BLSHEngineRequestDatesOperation_scheduleTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(BLSHEngineRequestDatesOperation *)WeakRetained timeoutTimerFired];
}

- (void)timeoutTimerFired
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(&dword_21FD11000, v0, OS_LOG_TYPE_DEBUG, "%p request dates operation did not complete after ~15 seconds (+leeway), (invalidated), pending environments:%{public}@ ", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)beginOperationWithIntervals:(char *)a1 shouldReset:.cold.1(char *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_lock_environmentCount == [_lock_environmentIdentifiers count]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)beginOperationWithIntervals:(char *)a1 shouldReset:.cold.2(char *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_lock_pendingEnvironments count] > 0", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)beginOperationWithIntervals:(char *)a1 shouldReset:.cold.3(char *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"!_lock_invalidated", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)beginOperationWithIntervals:(char *)a1 shouldReset:.cold.4(char *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"!_lock_begun", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end