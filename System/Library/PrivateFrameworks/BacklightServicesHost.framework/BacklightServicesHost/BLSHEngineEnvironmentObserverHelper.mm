@interface BLSHEngineEnvironmentObserverHelper
- (BLSHBacklightInactiveEnvironmentSession)inactiveSession;
- (BLSHDateSpecifierModel)presentationDatesModel;
- (BLSHEngineEnvironmentObserverHelper)initWithEngine:(id)engine;
- (void)dateSpecifierModel:(id)model didAddEnvironment:(id)environment;
- (void)dateSpecifierModel:(id)model didRemoveEnvironment:(id)environment;
- (void)didEndInactiveEnvironmentSession:(id)session;
- (void)didUpdateToPresentation:(id)presentation;
- (void)setInactiveSession:(id)session;
- (void)setPresentationDatesModel:(id)model;
@end

@implementation BLSHEngineEnvironmentObserverHelper

- (BLSHEngineEnvironmentObserverHelper)initWithEngine:(id)engine
{
  engineCopy = engine;
  v9.receiver = self;
  v9.super_class = BLSHEngineEnvironmentObserverHelper;
  v6 = [(BLSHEngineEnvironmentObserverHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_engine, engine);
  }

  return v7;
}

- (BLSHBacklightInactiveEnvironmentSession)inactiveSession
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_inactiveSession;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setInactiveSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lock_inactiveSession;
  objc_storeStrong(&self->_lock_inactiveSession, session);
  os_unfair_lock_unlock(&self->_lock);
  if (v5 != sessionCopy)
  {
    [(BLSHBacklightInactiveEnvironmentSession *)v5 removeObserver:self];
    [(BLSHBacklightInactiveEnvironmentSession *)sessionCopy addObserver:self];
    presentation = [(BLSHBacklightInactiveEnvironmentSession *)sessionCopy presentation];
    [(BLSHEngineEnvironmentObserverHelper *)self didUpdateToPresentation:presentation];
  }
}

- (BLSHDateSpecifierModel)presentationDatesModel
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_presentationDatesModel;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPresentationDatesModel:(id)model
{
  modelCopy = model;
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_lock_presentationDatesModel;
  objc_storeStrong(&self->_lock_presentationDatesModel, model);
  os_unfair_lock_unlock(&self->_lock);
  if (v6 != modelCopy)
  {
    [(BLSHDateSpecifierModel *)v6 removeObserver:self];
    if (modelCopy)
    {
      if (![(BLSHDateSpecifierModel *)modelCopy isEmpty])
      {
        [(BLSHEngineEnvironmentObserverHelper *)modelCopy setPresentationDatesModel:a2, self];
      }

      v7 = [MEMORY[0x277CBEB58] set];
      lock_modelEnvironments = self->_lock_modelEnvironments;
      self->_lock_modelEnvironments = v7;

      [(BLSHDateSpecifierModel *)modelCopy addObserver:self];
    }

    else
    {
      v9 = self->_lock_modelEnvironments;
      self->_lock_modelEnvironments = 0;
    }
  }
}

- (void)didUpdateToPresentation:(id)presentation
{
  v36 = *MEMORY[0x277D85DE8];
  presentationCopy = presentation;
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_lock_presentation;
  objc_storeStrong(&self->_lock_presentation, presentation);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __63__BLSHEngineEnvironmentObserverHelper_didUpdateToPresentation___block_invoke;
  v32[3] = &unk_27841F090;
  v32[4] = self;
  v9 = array2;
  v33 = v9;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __63__BLSHEngineEnvironmentObserverHelper_didUpdateToPresentation___block_invoke_2;
  v30[3] = &unk_27841F090;
  v30[4] = self;
  v10 = array;
  v31 = v10;
  [presentationCopy differenceFromPresentation:v6 forEachRemoval:v32 forEachAddition:v30];
  os_unfair_lock_unlock(&self->_lock);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v26 + 1) + 8 * v15++) addObserver:self->_engine];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v13);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = v9;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v22 + 1) + 8 * v20++) removeObserver:{self->_engine, v22}];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v18);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __63__BLSHEngineEnvironmentObserverHelper_didUpdateToPresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(*(a1 + 32) + 24) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __63__BLSHEngineEnvironmentObserverHelper_didUpdateToPresentation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(*(a1 + 32) + 24) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (void)didEndInactiveEnvironmentSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock(&self->_lock);
  lock_inactiveSession = self->_lock_inactiveSession;
  if (lock_inactiveSession == sessionCopy)
  {
    self->_lock_inactiveSession = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  [(BLSHBacklightInactiveEnvironmentSession *)sessionCopy removeObserver:self];
}

- (void)dateSpecifierModel:(id)model didAddEnvironment:(id)environment
{
  environmentCopy = environment;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_modelEnvironments addObject:environmentCopy];
  v5 = [(BLSHBacklightEnvironmentPresentation *)self->_lock_presentation containsEnvironment:environmentCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    [environmentCopy addObserver:self->_engine];
  }
}

- (void)dateSpecifierModel:(id)model didRemoveEnvironment:(id)environment
{
  environmentCopy = environment;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_modelEnvironments removeObject:environmentCopy];
  v5 = [(BLSHBacklightEnvironmentPresentation *)self->_lock_presentation containsEnvironment:environmentCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    [environmentCopy removeObserver:self->_engine];
  }
}

- (void)setPresentationDatesModel:(uint64_t)a3 .cold.1(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"model:%@ should be empty, was just added to helper", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138544642;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    v13 = 2048;
    v14 = a3;
    v15 = 2114;
    v16 = @"BLSHEngineEnvironmentObserverHelper.m";
    v17 = 1024;
    v18 = 73;
    v19 = 2114;
    v20 = v5;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end