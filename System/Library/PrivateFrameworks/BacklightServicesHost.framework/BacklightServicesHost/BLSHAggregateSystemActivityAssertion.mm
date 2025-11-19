@interface BLSHAggregateSystemActivityAssertion
- (BLSHAggregateSystemActivityAssertion)initWithConfigurator:(id)a3;
- (BOOL)isActive;
- (NSString)description;
- (void)_lock_addSystemActivityAcquisitionHandler:(id)a3;
- (void)acquireIndividualAssertion:(id)a3 handler:(id)a4;
- (void)dealloc;
- (void)invalidateIndividualAssertion:(id)a3;
- (void)performConfigurator:(id)a3;
- (void)setAcquireWaitsToAbortSleepImminent:(BOOL)a3;
- (void)setAcquireWaitsToAbortSleepRequested:(BOOL)a3;
- (void)setOSInterfaceProvider:(id)a3;
@end

@implementation BLSHAggregateSystemActivityAssertion

- (BLSHAggregateSystemActivityAssertion)initWithConfigurator:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = BLSHAggregateSystemActivityAssertion;
  v6 = [(BLSHAggregateSystemActivityAssertion *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:4];
    lock_individualAssertions = v7->_lock_individualAssertions;
    v7->_lock_individualAssertions = v8;

    [(BLSHAggregateSystemActivityAssertion *)v7 performConfigurator:v5];
    if (!v7->_osInterfaceProvider)
    {
      [BLSHAggregateSystemActivityAssertion initWithConfigurator:a2];
    }

    objc_initWeak(&location, v7);
    objc_copyWeak(&v11, &location);
    v7->_stateHandler = os_state_add_handler();
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v7;
}

uint64_t __61__BLSHAggregateSystemActivityAssertion_initWithConfigurator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];
  v3 = BLSStateDataWithTitleDescriptionAndHints();

  return v3;
}

- (NSString)description
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__BLSHAggregateSystemActivityAssertion_description__block_invoke;
  v11[3] = &unk_27841E538;
  v4 = v3;
  v12 = v4;
  v13 = self;
  [v4 appendProem:self block:v11];
  lock_individualAssertions = self->_lock_individualAssertions;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__BLSHAggregateSystemActivityAssertion_description__block_invoke_2;
  v9[3] = &unk_2784202C8;
  v10 = v4;
  v6 = v4;
  [v6 appendCollection:lock_individualAssertions withName:@"assertions" itemBlock:v9];
  v7 = [v6 description];
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

void __51__BLSHAggregateSystemActivityAssertion_description__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 identifier];
  v3 = [v2 appendObject:v4 withName:0];
}

- (void)performConfigurator:(id)a3
{
  self->_initializing = 1;
  (*(a3 + 2))(a3, self);
  self->_initializing = 0;
}

- (void)setAcquireWaitsToAbortSleepRequested:(BOOL)a3
{
  if (!self->_initializing)
  {
    [BLSHAggregateSystemActivityAssertion setAcquireWaitsToAbortSleepRequested:a2];
  }

  self->_acquireWaitsToAbortSleepRequested = a3;
}

- (void)setAcquireWaitsToAbortSleepImminent:(BOOL)a3
{
  if (!self->_initializing)
  {
    [BLSHAggregateSystemActivityAssertion setAcquireWaitsToAbortSleepImminent:a2];
  }

  self->_acquireWaitsToAbortSleepImminent = a3;
}

- (void)setOSInterfaceProvider:(id)a3
{
  v5 = a3;
  if (!self->_initializing)
  {
    [BLSHAggregateSystemActivityAssertion setOSInterfaceProvider:a2];
  }

  osInterfaceProvider = self->_osInterfaceProvider;
  self->_osInterfaceProvider = v5;

  MEMORY[0x2821F96F8](v5, osInterfaceProvider);
}

- (void)dealloc
{
  v11 = *a1;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"dealloced while assertion was active:%@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_4();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BOOL)isActive
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BLSHSystemActivityAsserting *)self->_lock_systemActivityAssertion isActive];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)_lock_addSystemActivityAcquisitionHandler:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x223D70730](self->_lock_acquisitionHandler);
  v6 = v5;
  if (v5)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__BLSHAggregateSystemActivityAssertion__lock_addSystemActivityAcquisitionHandler___block_invoke;
    v11[3] = &unk_2784202F0;
    v12 = v5;
    v13 = v4;
    v7 = MEMORY[0x223D70730](v11);
    lock_acquisitionHandler = self->_lock_acquisitionHandler;
    self->_lock_acquisitionHandler = v7;

    v9 = v12;
  }

  else
  {
    v10 = MEMORY[0x223D70730](v4);
    v9 = self->_lock_acquisitionHandler;
    self->_lock_acquisitionHandler = v10;
  }
}

void __82__BLSHAggregateSystemActivityAssertion__lock_addSystemActivityAcquisitionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  v9 = a4;
  v10 = a3;
  v8(v7, a2, v10, v9);
  (*(*(a1 + 40) + 16))();
}

- (void)acquireIndividualAssertion:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_individualAssertions addObject:v6];
  if ([(BLSHSystemActivityAsserting *)self->_lock_systemActivityAssertion isActive])
  {
    v8 = self->_lock_systemActivityAcquisitionDetails;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__BLSHAggregateSystemActivityAssertion_acquireIndividualAssertion_handler___block_invoke;
    block[3] = &unk_278420318;
    v21 = v8;
    v22 = v7;
    v9 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    lock_systemActivityAssertion = self->_lock_systemActivityAssertion;
    [(BLSHAggregateSystemActivityAssertion *)self _lock_addSystemActivityAcquisitionHandler:v7];
    if (!lock_systemActivityAssertion)
    {
      osInterfaceProvider = self->_osInterfaceProvider;
      v12 = [v6 identifier];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __75__BLSHAggregateSystemActivityAssertion_acquireIndividualAssertion_handler___block_invoke_2;
      v19[3] = &unk_278420340;
      v19[4] = self;
      v13 = [(BLSHOSInterfaceProviding *)osInterfaceProvider createSystemActivityAssertionWithIdentifier:v12 configurator:v19];
      v14 = self->_lock_systemActivityAssertion;
      self->_lock_systemActivityAssertion = v13;

      objc_initWeak(&location, self);
      v15 = self->_lock_systemActivityAssertion;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __75__BLSHAggregateSystemActivityAssertion_acquireIndividualAssertion_handler___block_invoke_3;
      v16[3] = &unk_278420390;
      objc_copyWeak(&v17, &location);
      [(BLSHSystemActivityAsserting *)v15 acquireWithTimeout:v16 handler:0.0];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __75__BLSHAggregateSystemActivityAssertion_acquireIndividualAssertion_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 61);
  v4 = a2;
  [v4 setAcquireWaitsToAbortSleepRequested:v3];
  [v4 setAcquireWaitsToAbortSleepImminent:*(*(a1 + 32) + 62)];
}

void __75__BLSHAggregateSystemActivityAssertion_acquireIndividualAssertion_handler___block_invoke_3(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__BLSHAggregateSystemActivityAssertion_acquireIndividualAssertion_handler___block_invoke_4;
  v11[3] = &unk_278420368;
  objc_copyWeak(&v14, (a1 + 32));
  v15 = a2;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v11);

  objc_destroyWeak(&v14);
}

void __75__BLSHAggregateSystemActivityAssertion_acquireIndividualAssertion_handler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained didAcquireSystemActivityIsActive:*(a1 + 56) error:*(a1 + 32) details:*(a1 + 40)];
}

- (void)invalidateIndividualAssertion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_individualAssertions removeObject:v4];

  if (![(NSHashTable *)self->_lock_individualAssertions count])
  {
    lock_systemActivityAssertion = self->_lock_systemActivityAssertion;
    if (lock_systemActivityAssertion)
    {
      [(BLSHSystemActivityAsserting *)lock_systemActivityAssertion invalidate];
      v6 = self->_lock_systemActivityAssertion;
      self->_lock_systemActivityAssertion = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)initWithConfigurator:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_osInterfaceProvider != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setAcquireWaitsToAbortSleepRequested:(const char *)a1 .cold.1(const char *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v12 = NSStringFromSelector(a1);
  v3 = [v2 stringWithFormat:@"%@ called after initialization"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setAcquireWaitsToAbortSleepImminent:(const char *)a1 .cold.1(const char *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v12 = NSStringFromSelector(a1);
  v3 = [v2 stringWithFormat:@"%@ called after initialization"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setOSInterfaceProvider:(const char *)a1 .cold.1(const char *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v12 = NSStringFromSelector(a1);
  v3 = [v2 stringWithFormat:@"%@ called after initialization"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end