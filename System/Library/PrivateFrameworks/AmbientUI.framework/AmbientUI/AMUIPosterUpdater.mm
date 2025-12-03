@interface AMUIPosterUpdater
+ (id)defaultUpdater;
- (AMUIPosterUpdater)init;
- (BOOL)updateInfograph:(id)infograph forPosterConfiguration:(id)configuration completion:(id)completion;
- (void)_clearInflightAndFireNextRequest;
- (void)_lock_fireInfographUpdate:(id)update;
@end

@implementation AMUIPosterUpdater

+ (id)defaultUpdater
{
  if (defaultUpdater_onceToken != -1)
  {
    +[AMUIPosterUpdater defaultUpdater];
  }

  v3 = defaultUpdater_defaultUpdater;

  return v3;
}

uint64_t __35__AMUIPosterUpdater_defaultUpdater__block_invoke()
{
  defaultUpdater_defaultUpdater = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AMUIPosterUpdater)init
{
  v3.receiver = self;
  v3.super_class = AMUIPosterUpdater;
  result = [(AMUIPosterUpdater *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (BOOL)updateInfograph:(id)infograph forPosterConfiguration:(id)configuration completion:(id)completion
{
  v34[1] = *MEMORY[0x277D85DE8];
  infographCopy = infograph;
  configurationCopy = configuration;
  completionCopy = completion;
  v12 = infographCopy;
  NSClassFromString(&cfstr_Nsdictionary.isa);
  if (!v12)
  {
    [AMUIPosterUpdater updateInfograph:a2 forPosterConfiguration:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [AMUIPosterUpdater updateInfograph:a2 forPosterConfiguration:? completion:?];
  }

  v13 = configurationCopy;
  NSClassFromString(&cfstr_Prsposterconfi.isa);
  if (!v13)
  {
    [AMUIPosterUpdater updateInfograph:a2 forPosterConfiguration:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [AMUIPosterUpdater updateInfograph:a2 forPosterConfiguration:? completion:?];
  }

  if (!completionCopy)
  {
    [AMUIPosterUpdater updateInfograph:a2 forPosterConfiguration:? completion:?];
  }

  v14 = [v13 pr_loadAmbientWidgetLayoutWithError:0];
  widgetLayoutIconState = [v14 widgetLayoutIconState];
  v16 = [widgetLayoutIconState isEqual:v12];

  if (v16)
  {
    completionCopy[2](completionCopy, v13, 0);
  }

  else
  {
    v17 = [_AMUIPosterUpdate alloc];
    v18 = [MEMORY[0x277D3E9C8] posterUpdateAmbientWidgets:v12];
    v33 = @"infograph";
    v34[0] = v12;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v20 = [(_AMUIPosterUpdate *)v17 initWithPosterConfiguration:v13 update:v18 userInfo:v19];

    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_inflightInfographConfigurationUpdate)
    {
      p_lock_pendingInfographConfigurationUpdate = &self->_lock_pendingInfographConfigurationUpdate;
      if (self->_lock_pendingInfographConfigurationUpdate)
      {
        v22 = [(_AMUIPosterUpdate *)v20 isEqual:?];
        v23 = AMUILogInfograph();
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
        if (v22)
        {
          if (v24)
          {
            [AMUIPosterUpdater updateInfograph:forPosterConfiguration:completion:];
          }

          [(_AMUIPosterUpdate *)*p_lock_pendingInfographConfigurationUpdate appendCompletion:completionCopy];
        }

        else
        {
          if (v24)
          {
            [AMUIPosterUpdater updateInfograph:forPosterConfiguration:completion:];
          }

          v27 = *p_lock_pendingInfographConfigurationUpdate;
          v28 = v20;
          v29 = *p_lock_pendingInfographConfigurationUpdate;
          *p_lock_pendingInfographConfigurationUpdate = v28;
          v30 = v27;

          [(_AMUIPosterUpdate *)v28 adoptCompletionsFromStaleUpdate:v30];
          [(_AMUIPosterUpdate *)v30 cancel];
        }
      }

      else
      {
        v26 = AMUILogInfograph();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [AMUIPosterUpdater updateInfograph:forPosterConfiguration:completion:];
        }

        objc_storeStrong(&self->_lock_pendingInfographConfigurationUpdate, v20);
      }
    }

    else
    {
      [(_AMUIPosterUpdate *)v20 appendCompletion:completionCopy];
      v25 = AMUILogInfograph();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [AMUIPosterUpdater updateInfograph:forPosterConfiguration:completion:];
      }

      [(AMUIPosterUpdater *)self _lock_fireInfographUpdate:v20];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v31 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_clearInflightAndFireNextRequest
{
  v3 = AMUILogInfograph();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AMUIPosterUpdater _clearInflightAndFireNextRequest];
  }

  os_unfair_lock_lock(&self->_lock);
  lock_inflightInfographConfigurationUpdate = self->_lock_inflightInfographConfigurationUpdate;
  self->_lock_inflightInfographConfigurationUpdate = 0;

  lock_pendingInfographConfigurationUpdate = self->_lock_pendingInfographConfigurationUpdate;
  self->_lock_pendingInfographConfigurationUpdate = 0;
  v6 = lock_pendingInfographConfigurationUpdate;

  [(AMUIPosterUpdater *)self _lock_fireInfographUpdate:v6];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_fireInfographUpdate:(id)update
{
  updateCopy = update;
  if (self->_lock_inflightInfographConfigurationUpdate)
  {
    [AMUIPosterUpdater _lock_fireInfographUpdate:a2];
  }

  objc_storeStrong(&self->_lock_inflightInfographConfigurationUpdate, update);
  v7 = AMUILogInfograph();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [AMUIPosterUpdater _lock_fireInfographUpdate:];
  }

  lock_service = self->_lock_service;
  if (updateCopy)
  {
    if (!lock_service)
    {
      v9 = objc_opt_new();
      v10 = self->_lock_service;
      self->_lock_service = v9;
    }

    objc_initWeak(&location, self);
    v11 = self->_lock_service;
    posterConfiguration = [updateCopy posterConfiguration];
    update = [updateCopy update];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__AMUIPosterUpdater__lock_fireInfographUpdate___block_invoke;
    v14[3] = &unk_278C760B8;
    objc_copyWeak(&v16, &location);
    v15 = updateCopy;
    [(PRSService *)v11 updatePosterConfiguration:posterConfiguration update:update completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    self->_lock_service = 0;
  }
}

void __47__AMUIPosterUpdater__lock_fireInfographUpdate___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AMUILogInfograph();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    if (v11)
    {
      __47__AMUIPosterUpdater__lock_fireInfographUpdate___block_invoke_cold_1(v9, v10);
    }
  }

  else if (v11)
  {
    __47__AMUIPosterUpdater__lock_fireInfographUpdate___block_invoke_cold_2(v7, v8, v10);
  }

  objc_copyWeak(&v15, (a1 + 40));
  v12 = v9;
  v13 = *(a1 + 32);
  v14 = v7;
  BSDispatchMain();

  objc_destroyWeak(&v15);
}

uint64_t __47__AMUIPosterUpdater__lock_fireInfographUpdate___block_invoke_34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _clearInflightAndFireNextRequest];

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v3 fireCompletionBlocksWithUpdatedPosterConfiguration:v5 error:v4];
}

- (void)updateInfograph:(char *)a1 forPosterConfiguration:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_0(&dword_23F38B000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSDictionaryClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateInfograph:(char *)a1 forPosterConfiguration:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_0(&dword_23F38B000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateInfograph:(char *)a1 forPosterConfiguration:completion:.cold.7(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_0(&dword_23F38B000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"completion", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateInfograph:(char *)a1 forPosterConfiguration:completion:.cold.8(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_0(&dword_23F38B000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateInfograph:(char *)a1 forPosterConfiguration:completion:.cold.9(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_0(&dword_23F38B000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_lock_fireInfographUpdate:(char *)a1 .cold.1(char *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_0(&dword_23F38B000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_lock_inflightInfographConfigurationUpdate == nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __47__AMUIPosterUpdater__lock_fireInfographUpdate___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23F38B000, a2, OS_LOG_TYPE_ERROR, "Failed to update infograph configuration with error:%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __47__AMUIPosterUpdater__lock_fireInfographUpdate___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_23F38B000, log, OS_LOG_TYPE_ERROR, "Successfully updated infograph configuration:%@ with update:%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end