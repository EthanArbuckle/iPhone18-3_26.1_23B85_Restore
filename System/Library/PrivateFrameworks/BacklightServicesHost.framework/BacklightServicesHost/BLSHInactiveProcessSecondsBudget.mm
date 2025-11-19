@interface BLSHInactiveProcessSecondsBudget
- (BLSHInactiveProcessSecondsBudget)initWithIdentifier:(id)a3 osTimerProvider:(id)a4;
- (BOOL)stillTrackingAfterPurgingStaleDataForNowDate:(id)a3;
- (NSString)description;
- (id)validateAndChargeFutureSpecifier:(id)a3 nextSpecifier:(id)a4 expectedFidelity:(int64_t)a5;
- (int64_t)allowedFidelityAtDate:(id)a3 expectedFidelity:(int64_t)a4;
- (void)chargeRenderedSpecifier:(id)a3 expectedFidelity:(int64_t)a4;
- (void)dealloc;
- (void)invalidateAtRequestDate:(id)a3 expectedFidelity:(int64_t)a4 invalidationBlock:(id)a5;
- (void)performInvalidation;
- (void)resetFutureSpecifiers;
@end

@implementation BLSHInactiveProcessSecondsBudget

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v5 = [v3 appendObject:self->_lock_previousSecondsFutureSpecifier withName:@"previousFuture" skipIfNil:1];
  v6 = [v3 appendObject:self->_lock_exemptedSecondsFutureSpecifier withName:@"exemptedFuture" skipIfNil:1];
  v7 = [v3 appendObject:self->_lock_previousSecondsRenderedSpecifier withName:@"previousRendered" skipIfNil:1];
  v8 = [(NSDate *)self->_lock_lastInvalidation bls_loggingString];
  v9 = [v3 appendObject:v8 withName:@"lastInvalidation" skipIfNil:1];

  if ([(BSTimerScheduleQuerying *)self->_lock_invalidationTimer isScheduled])
  {
    [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer timeRemaining];
    v10 = [v3 appendTimeInterval:@"pendingInvalidation" withName:1 decomposeUnits:?];
  }

  v11 = [v3 build];
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (BLSHInactiveProcessSecondsBudget)initWithIdentifier:(id)a3 osTimerProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = BLSHInactiveProcessSecondsBudget;
  v8 = [(BLSHInactiveProcessSecondsBudget *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_osTimerProvider, a4);
    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (void)dealloc
{
  [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer invalidate];
  v3.receiver = self;
  v3.super_class = BLSHInactiveProcessSecondsBudget;
  [(BLSHInactiveProcessSecondsBudget *)&v3 dealloc];
}

- (int64_t)allowedFidelityAtDate:(id)a3 expectedFidelity:(int64_t)a4
{
  v6 = a3;
  if (a4 != 2)
  {
    [BLSHInactiveProcessSecondsBudget allowedFidelityAtDate:a2 expectedFidelity:?];
  }

  return 2;
}

- (id)validateAndChargeFutureSpecifier:(id)a3 nextSpecifier:(id)a4 expectedFidelity:(int64_t)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if (a5 != 2)
  {
    [BLSHInactiveProcessSecondsBudget validateAndChargeFutureSpecifier:a2 nextSpecifier:? expectedFidelity:?];
  }

  v12 = v11;
  v13 = v10;
  os_unfair_lock_lock(&self->_lock);
  lock_previousSecondsFutureSpecifier = self->_lock_previousSecondsFutureSpecifier;
  if (lock_previousSecondsFutureSpecifier)
  {
    v15 = lock_previousSecondsFutureSpecifier;
  }

  else
  {
    v15 = self->_lock_previousSecondsRenderedSpecifier;
    if (!v15)
    {
LABEL_14:
      v28 = v13;
      goto LABEL_15;
    }
  }

  v16 = [v13 date];
  v17 = [(BLSAlwaysOnDateSpecifier *)v15 date];
  [v16 timeIntervalSinceDate:v17];
  if (v18 >= 0.75)
  {

    goto LABEL_14;
  }

  v19 = [v12 date];
  v20 = [v13 date];
  [v19 timeIntervalSinceDate:v20];
  v22 = v21;

  if (v22 >= 0.75)
  {
    goto LABEL_14;
  }

  if (!self->_lock_exemptedSecondsFutureSpecifier)
  {
    goto LABEL_14;
  }

  v23 = [v13 date];
  v24 = [(BLSAlwaysOnDateSpecifier *)self->_lock_exemptedSecondsFutureSpecifier date];
  [v23 timeIntervalSinceDate:v24];
  v26 = v25;

  if (v26 < 1.0)
  {
    goto LABEL_14;
  }

  if (v26 >= 30.0)
  {
    objc_storeStrong(&self->_lock_exemptedSecondsFutureSpecifier, a3);
    goto LABEL_14;
  }

  v27 = bls_budget_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v34 = self->_lock_previousSecondsFutureSpecifier;
    lock_exemptedSecondsFutureSpecifier = self->_lock_exemptedSecondsFutureSpecifier;
    v36 = 134219266;
    v37 = self;
    v38 = 2114;
    v39 = identifier;
    v40 = 2114;
    v41 = v13;
    v42 = 2114;
    v43 = v34;
    v44 = 2114;
    v45 = v12;
    v46 = 2114;
    v47 = lock_exemptedSecondsFutureSpecifier;
    _os_log_debug_impl(&dword_21FD11000, v27, OS_LOG_TYPE_DEBUG, "%p:%{public}@ expectedFidelity:BLSUpdateFidelitySeconds specifier:%{public}@ denied - previous:%{public}@ next:%{public}@ exempted:%{public}@", &v36, 0x3Eu);
  }

  v28 = 0;
LABEL_15:
  v29 = self->_lock_previousSecondsFutureSpecifier;
  self->_lock_previousSecondsFutureSpecifier = v13;
  v30 = v13;

  os_unfair_lock_unlock(&self->_lock);
  v31 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)resetFutureSpecifiers
{
  os_unfair_lock_lock(&self->_lock);
  lock_previousSecondsFutureSpecifier = self->_lock_previousSecondsFutureSpecifier;
  self->_lock_previousSecondsFutureSpecifier = 0;

  lock_exemptedSecondsFutureSpecifier = self->_lock_exemptedSecondsFutureSpecifier;
  self->_lock_exemptedSecondsFutureSpecifier = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)chargeRenderedSpecifier:(id)a3 expectedFidelity:(int64_t)a4
{
  v7 = a3;
  if (a4 != 2)
  {
    [BLSHInactiveProcessSecondsBudget chargeRenderedSpecifier:a2 expectedFidelity:?];
  }

  v8 = v7;
  os_unfair_lock_lock(&self->_lock);
  lock_previousSecondsRenderedSpecifier = self->_lock_previousSecondsRenderedSpecifier;
  self->_lock_previousSecondsRenderedSpecifier = v8;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidateAtRequestDate:(id)a3 expectedFidelity:(int64_t)a4 invalidationBlock:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  if (a4 != 2)
  {
    [BLSHInactiveProcessSecondsBudget invalidateAtRequestDate:a2 expectedFidelity:? invalidationBlock:?];
  }

  v12 = v11;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_lastInvalidation && ([v10 timeIntervalSinceDate:?], v13 < 0.5))
  {
    v14 = [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer isScheduled];
    v15 = bls_budget_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (v14)
    {
      if (v16)
      {
        identifier = self->_identifier;
        v18 = [v10 bls_shortLoggingString];
        [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer timeRemaining];
        *buf = 134218754;
        v30 = self;
        v31 = 2114;
        v32 = identifier;
        v33 = 2114;
        v34 = v18;
        v35 = 2048;
        v36 = v19;
        _os_log_impl(&dword_21FD11000, v15, OS_LOG_TYPE_INFO, "%p:%{public}@ will ignore budgeted invalidation (BLSUpdateFidelitySeconds) requesteDate:%{public}@ already have scheduled invalidation in %.3lfs", buf, 0x2Au);
      }
    }

    else
    {
      if (v16)
      {
        v20 = self->_identifier;
        v21 = [v10 bls_shortLoggingString];
        v22 = [(NSDate *)self->_lock_lastInvalidation bls_shortLoggingString];
        *buf = 134219010;
        v30 = self;
        v31 = 2114;
        v32 = v20;
        v33 = 2114;
        v34 = v21;
        v35 = 2048;
        v36 = 0x3FE0000000000000;
        v37 = 2114;
        v38 = v22;
        _os_log_impl(&dword_21FD11000, v15, OS_LOG_TYPE_INFO, "%p:%{public}@ will schedule budgeted invalidation (BLSUpdateFidelitySeconds) requesteDate:%{public}@ in %.0lfs  previous:%{public}@", buf, 0x34u);
      }

      [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer invalidate];
      osTimerProvider = self->_osTimerProvider;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __95__BLSHInactiveProcessSecondsBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke;
      v27[3] = &unk_27841F3C8;
      v28 = v12;
      v24 = [(BLSHOSTimerProviding *)osTimerProvider scheduledTimerWithIdentifier:@"SecondsInvalidationBudgetExceeded" interval:v27 leewayInterval:0.5 handler:0.125];
      lock_invalidationTimer = self->_lock_invalidationTimer;
      self->_lock_invalidationTimer = v24;

      v15 = v28;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_lock_lastInvalidation, a3);
    os_unfair_lock_unlock(&self->_lock);
    v12[2](v12);
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __95__BLSHInactiveProcessSecondsBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke(uint64_t a1, void *a2)
{
  [a2 invalidate];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)performInvalidation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BLSHOSTimerProviding *)self->_osTimerProvider now];
  lock_lastInvalidation = self->_lock_lastInvalidation;
  self->_lock_lastInvalidation = v3;

  [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer invalidate];
  lock_invalidationTimer = self->_lock_invalidationTimer;
  self->_lock_invalidationTimer = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)stillTrackingAfterPurgingStaleDataForNowDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_previousSecondsRenderedSpecifier = self->_lock_previousSecondsRenderedSpecifier;
  if (lock_previousSecondsRenderedSpecifier)
  {
    v6 = [(BLSAlwaysOnDateSpecifier *)lock_previousSecondsRenderedSpecifier date];
    [v4 timeIntervalSinceDate:v6];
    v8 = v7;

    if (v8 < 1.0)
    {
      goto LABEL_5;
    }
  }

  lock_previousSecondsFutureSpecifier = self->_lock_previousSecondsFutureSpecifier;
  if (lock_previousSecondsFutureSpecifier && (-[BLSAlwaysOnDateSpecifier date](lock_previousSecondsFutureSpecifier, "date"), v10 = objc_claimAutoreleasedReturnValue(), [v4 timeIntervalSinceDate:v10], v12 = v11, v10, v12 < 1.0))
  {
LABEL_5:
    v13 = 1;
  }

  else if (self->_lock_lastInvalidation)
  {
    [v4 timeIntervalSinceDate:?];
    v13 = v14 < 1.0;
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

- (void)allowedFidelityAtDate:(char *)a1 expectedFidelity:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"expectedFidelity == BLSUpdateFidelitySeconds", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)validateAndChargeFutureSpecifier:(char *)a1 nextSpecifier:expectedFidelity:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"expectedFidelity == BLSUpdateFidelitySeconds", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)chargeRenderedSpecifier:(char *)a1 expectedFidelity:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"expectedFidelity == BLSUpdateFidelitySeconds", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidateAtRequestDate:(char *)a1 expectedFidelity:invalidationBlock:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"expectedFidelity == BLSUpdateFidelitySeconds", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end