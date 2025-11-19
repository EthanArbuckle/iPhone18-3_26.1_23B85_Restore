@interface BLSHIndividualSystemActivityAssertion
- (BLSHIndividualSystemActivityAssertion)initWithWithIdentifier:(id)a3 aggregator:(id)a4;
- (BOOL)isActive;
- (void)acquireWithTimeout:(double)a3 handler:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BLSHIndividualSystemActivityAssertion

- (BLSHIndividualSystemActivityAssertion)initWithWithIdentifier:(id)a3 aggregator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BLSHIndividualSystemActivityAssertion;
  v9 = [(BLSHIndividualSystemActivityAssertion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_lock_aggregator, a4);
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"must invalidate before dealloc:%@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_4();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BOOL)isActive
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BLSHIndividualSystemActivityAssertionAggregator *)self->_lock_aggregator isActive];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)acquireWithTimeout:(double)a3 handler:(id)a4
{
  v7 = a4;
  if (a3 != 0.0)
  {
    [BLSHIndividualSystemActivityAssertion acquireWithTimeout:a2 handler:a3];
  }

  v9 = v7;
  os_unfair_lock_lock(&self->_lock);
  v8 = self->_lock_aggregator;
  os_unfair_lock_unlock(&self->_lock);
  [(BLSHIndividualSystemActivityAssertionAggregator *)v8 acquireIndividualAssertion:self handler:v9];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  lock_aggregator = self->_lock_aggregator;
  self->_lock_aggregator = 0;
  v4 = lock_aggregator;

  os_unfair_lock_unlock(&self->_lock);
  [(BLSHIndividualSystemActivityAssertionAggregator *)v4 invalidateIndividualAssertion:self];
}

- (void)acquireWithTimeout:(char *)a1 handler:(double)a2 .cold.1(char *a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"timeout must be 0 to use BLSHAggregatedSystemActivityAssertionFactory timeout:%lf"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_4();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, *&a2, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end