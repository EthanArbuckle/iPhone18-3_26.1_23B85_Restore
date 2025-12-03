@interface BLSHAssertionPausingSceneObserver
+ (id)activateForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service attributeHandler:(id)handler;
- (BLSAssertionServiceResponding)assertion;
- (BLSHAssertionAttributeHandlerService)service;
- (BLSPauseWhenSceneBackgroundAttribute)attribute;
- (id)initForAttribute:(void *)attribute fromAssertion:(void *)assertion forService:;
- (void)dealloc;
- (void)invalidate;
- (void)sceneDidInvalidate:(id)invalidate;
- (void)updateAssertionPauseStateForScene:(uint64_t)scene;
@end

@implementation BLSHAssertionPausingSceneObserver

+ (id)activateForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service attributeHandler:(id)handler
{
  serviceCopy = service;
  assertionCopy = assertion;
  attributeCopy = attribute;
  v11 = [[BLSHAssertionPausingSceneObserver alloc] initForAttribute:attributeCopy fromAssertion:assertionCopy forService:serviceCopy];

  return v11;
}

- (id)initForAttribute:(void *)attribute fromAssertion:(void *)assertion forService:
{
  v7 = a2;
  attributeCopy = attribute;
  assertionCopy = assertion;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = BLSHAssertionPausingSceneObserver;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    self = v10;
    if (v10)
    {
      *(v10 + 4) = 0;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [BLSHAssertionPausingSceneObserver initForAttribute:v7 fromAssertion:sel_initForAttribute_fromAssertion_forService_ forService:?];
      }

      objc_storeWeak(self + 5, v7);
      objc_storeWeak(self + 3, attributeCopy);
      objc_storeWeak(self + 4, assertionCopy);
      *(self + 21) = 0;
      v12 = v7;
      self = self;
      BSDispatchMain();
    }
  }

  return self;
}

void __79__BLSHAssertionPausingSceneObserver_initForAttribute_fromAssertion_forService___block_invoke(uint64_t a1)
{
  v2 = +[BLSHBacklightOSInterfaceProvider sharedProvider];
  v3 = [*(a1 + 32) sceneIdentityToken];
  obj = [v2 sceneWithIdentityToken:v3];

  os_unfair_lock_lock((*(a1 + 40) + 16));
  v4 = *(a1 + 40);
  if (*(v4 + 20))
  {
    os_unfair_lock_unlock((v4 + 16));
  }

  else
  {
    objc_storeWeak((v4 + 8), obj);
    os_unfair_lock_unlock((*(a1 + 40) + 16));
    [obj addObserver:*(a1 + 40)];
    [(BLSHAssertionPausingSceneObserver *)*(a1 + 40) updateAssertionPauseStateForScene:?];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p must invalidate before dealloc: %@", self, self];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v9 = @"BLSHPauseWhenSceneBackgroundAttributeHandler.m";
    v10 = 1024;
    v11 = 91;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_invalidated = 1;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  objc_storeWeak(&self->_scene, 0);
  os_unfair_lock_unlock(&self->_lock);
  v4 = WeakRetained;
  BSDispatchMain();
}

- (void)sceneDidInvalidate:(id)invalidate
{
  v12[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v5 = objc_loadWeakRetained(&self->_assertion);
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CF0828];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = @"scene invalidated";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v6 errorWithDomain:v7 code:20 userInfo:v8];
  [WeakRetained cancelAssertion:v5 withError:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (BLSAssertionServiceResponding)assertion
{
  WeakRetained = objc_loadWeakRetained(&self->_assertion);

  return WeakRetained;
}

- (BLSHAssertionAttributeHandlerService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (BLSPauseWhenSceneBackgroundAttribute)attribute
{
  WeakRetained = objc_loadWeakRetained(&self->_attribute);

  return WeakRetained;
}

- (void)updateAssertionPauseStateForScene:(uint64_t)scene
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (scene)
  {
    settings = [v3 settings];
    isForeground = [settings isForeground];
    v7 = isForeground;
    v8 = isForeground ^ 1;

    os_unfair_lock_lock((scene + 16));
    v9 = *(scene + 20);
    v10 = *(scene + 21);
    v11 = bls_assertions_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      identifier = [v4 identifier];
      settings2 = [v4 settings];
      v17 = 134219266;
      sceneCopy = scene;
      v19 = 1024;
      v20 = v9;
      v21 = 1024;
      v22 = v10 != v8;
      v23 = 1024;
      v24 = v8;
      v25 = 2114;
      v26 = identifier;
      v27 = 2114;
      v28 = settings2;
      _os_log_debug_impl(&dword_21FD11000, v11, OS_LOG_TYPE_DEBUG, "%p invalidated:%{BOOL}u needUpdate:%{BOOL}u shouldBePaused:%{BOOL}u for scene:%{public}@ settings:%{public}@", &v17, 0x32u);
    }

    *(scene + 21) = v8;
    WeakRetained = objc_loadWeakRetained((scene + 24));
    v13 = objc_loadWeakRetained((scene + 32));
    os_unfair_lock_unlock((scene + 16));
    if (v10 != v8 && (v9 & 1) == 0)
    {
      if (v7)
      {
        [v13 resumeAssertion:WeakRetained];
      }

      else
      {
        [v13 pauseAssertion:WeakRetained];
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)initForAttribute:(uint64_t)a1 fromAssertion:(const char *)a2 forService:.cold.1(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"BLSPauseWhenSceneBackgroundAttribute not class for %@", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v9 = @"BLSHPauseWhenSceneBackgroundAttributeHandler.m";
    v10 = 1024;
    v11 = 64;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end