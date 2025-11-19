@interface BLSHAssertionPausingSceneObserver
+ (id)activateForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5 attributeHandler:(id)a6;
- (BLSAssertionServiceResponding)assertion;
- (BLSHAssertionAttributeHandlerService)service;
- (BLSPauseWhenSceneBackgroundAttribute)attribute;
- (id)initForAttribute:(void *)a3 fromAssertion:(void *)a4 forService:;
- (void)dealloc;
- (void)invalidate;
- (void)sceneDidInvalidate:(id)a3;
- (void)updateAssertionPauseStateForScene:(uint64_t)a1;
@end

@implementation BLSHAssertionPausingSceneObserver

+ (id)activateForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5 attributeHandler:(id)a6
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[BLSHAssertionPausingSceneObserver alloc] initForAttribute:v10 fromAssertion:v9 forService:v8];

  return v11;
}

- (id)initForAttribute:(void *)a3 fromAssertion:(void *)a4 forService:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = BLSHAssertionPausingSceneObserver;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v10;
    if (v10)
    {
      *(v10 + 4) = 0;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [BLSHAssertionPausingSceneObserver initForAttribute:v7 fromAssertion:sel_initForAttribute_fromAssertion_forService_ forService:?];
      }

      objc_storeWeak(a1 + 5, v7);
      objc_storeWeak(a1 + 3, v8);
      objc_storeWeak(a1 + 4, v9);
      *(a1 + 21) = 0;
      v12 = v7;
      a1 = a1;
      BSDispatchMain();
    }
  }

  return a1;
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
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p must invalidate before dealloc: %@", a1, a1];
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

- (void)sceneDidInvalidate:(id)a3
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

- (void)updateAssertionPauseStateForScene:(uint64_t)a1
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 settings];
    v6 = [v5 isForeground];
    v7 = v6;
    v8 = v6 ^ 1;

    os_unfair_lock_lock((a1 + 16));
    v9 = *(a1 + 20);
    v10 = *(a1 + 21);
    v11 = bls_assertions_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = [v4 identifier];
      v16 = [v4 settings];
      v17 = 134219266;
      v18 = a1;
      v19 = 1024;
      v20 = v9;
      v21 = 1024;
      v22 = v10 != v8;
      v23 = 1024;
      v24 = v8;
      v25 = 2114;
      v26 = v15;
      v27 = 2114;
      v28 = v16;
      _os_log_debug_impl(&dword_21FD11000, v11, OS_LOG_TYPE_DEBUG, "%p invalidated:%{BOOL}u needUpdate:%{BOOL}u shouldBePaused:%{BOOL}u for scene:%{public}@ settings:%{public}@", &v17, 0x32u);
    }

    *(a1 + 21) = v8;
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v13 = objc_loadWeakRetained((a1 + 32));
    os_unfair_lock_unlock((a1 + 16));
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