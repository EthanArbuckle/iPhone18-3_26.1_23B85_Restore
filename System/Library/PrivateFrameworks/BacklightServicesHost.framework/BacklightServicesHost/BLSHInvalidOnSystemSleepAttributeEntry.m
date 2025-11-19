@interface BLSHInvalidOnSystemSleepAttributeEntry
+ (id)activateForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5 attributeHandler:(id)a6;
- (BLSAssertionServiceResponding)assertion;
- (BLSAttribute)attribute;
- (BLSHAssertionAttributeHandlerService)service;
- (id)initForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5;
- (void)cancelAssertionForSleep;
- (void)invalidate;
- (void)systemSleepMonitor:(id)a3 prepareForSleepWithCompletion:(id)a4;
- (void)systemSleepMonitor:(id)a3 sleepRequestedWithResult:(id)a4;
@end

@implementation BLSHInvalidOnSystemSleepAttributeEntry

- (BLSAttribute)attribute
{
  WeakRetained = objc_loadWeakRetained(&self->_attribute);

  return WeakRetained;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  self->_lock_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);
  if (!lock_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_service);
    v4 = [WeakRetained osInterfaceProvider];
    v5 = [v4 systemSleepMonitor];
    [v5 removeObserver:self];
  }
}

+ (id)activateForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5 attributeHandler:(id)a6
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[BLSHInvalidOnSystemSleepAttributeEntry alloc] initForAttribute:v10 fromAssertion:v9 forService:v8];

  return v11;
}

- (id)initForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = BLSHInvalidOnSystemSleepAttributeEntry;
  v11 = [(BLSHInvalidOnSystemSleepAttributeEntry *)&v19 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v11->_attribute, v8);
    objc_storeWeak(p_isa + 3, v9);
    objc_storeWeak(p_isa + 4, v10);
    v13 = [v10 osInterfaceProvider];
    v14 = [v13 systemSleepMonitor];

    [v14 addObserver:p_isa];
    if (([v14 isAwakeOrAbortingSleep] & 1) == 0)
    {
      v15 = bls_assertions_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [BLSHInvalidOnSystemSleepAttributeEntry initForAttribute:v9 fromAssertion:v15 forService:?];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __84__BLSHInvalidOnSystemSleepAttributeEntry_initForAttribute_fromAssertion_forService___block_invoke;
      block[3] = &unk_27841E650;
      v18 = p_isa;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  return p_isa;
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

- (void)cancelAssertionForSleep
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v2 = *(a1 + 12);
    os_unfair_lock_unlock((a1 + 8));
    if ((v2 & 1) == 0)
    {
      v3 = [a1 service];
      v4 = [a1 assertion];
      v5 = MEMORY[0x277CCA9B8];
      v6 = *MEMORY[0x277CF0828];
      v10 = *MEMORY[0x277CCA450];
      v11[0] = @"canceled due to system sleep";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v8 = [v5 errorWithDomain:v6 code:13 userInfo:v7];
      [v3 cancelAssertion:v4 withError:v8];

      [a1 invalidate];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)systemSleepMonitor:(id)a3 sleepRequestedWithResult:(id)a4
{
  v6 = a4;
  [(BLSHInvalidOnSystemSleepAttributeEntry *)self cancelAssertionForSleep];
  v5 = v6[2](v6, 1, 0);
}

- (void)systemSleepMonitor:(id)a3 prepareForSleepWithCompletion:(id)a4
{
  v5 = a4;
  [(BLSHInvalidOnSystemSleepAttributeEntry *)self cancelAssertionForSleep];
  v5[2]();
}

- (void)initForAttribute:(uint64_t)a1 fromAssertion:(NSObject *)a2 forService:.cold.1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromBLSAssertingObject();
  v6 = 134218242;
  v7 = a1;
  v8 = 2114;
  v9 = v4;
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "%p attempted to acquire assertion when sleep is imminent, will immediately cancel assertion:%{public}@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end