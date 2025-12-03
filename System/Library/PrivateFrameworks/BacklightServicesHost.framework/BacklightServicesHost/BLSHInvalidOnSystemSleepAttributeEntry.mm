@interface BLSHInvalidOnSystemSleepAttributeEntry
+ (id)activateForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service attributeHandler:(id)handler;
- (BLSAssertionServiceResponding)assertion;
- (BLSAttribute)attribute;
- (BLSHAssertionAttributeHandlerService)service;
- (id)initForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service;
- (void)cancelAssertionForSleep;
- (void)invalidate;
- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion;
- (void)systemSleepMonitor:(id)monitor sleepRequestedWithResult:(id)result;
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
    osInterfaceProvider = [WeakRetained osInterfaceProvider];
    systemSleepMonitor = [osInterfaceProvider systemSleepMonitor];
    [systemSleepMonitor removeObserver:self];
  }
}

+ (id)activateForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service attributeHandler:(id)handler
{
  serviceCopy = service;
  assertionCopy = assertion;
  attributeCopy = attribute;
  v11 = [[BLSHInvalidOnSystemSleepAttributeEntry alloc] initForAttribute:attributeCopy fromAssertion:assertionCopy forService:serviceCopy];

  return v11;
}

- (id)initForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service
{
  attributeCopy = attribute;
  assertionCopy = assertion;
  serviceCopy = service;
  v19.receiver = self;
  v19.super_class = BLSHInvalidOnSystemSleepAttributeEntry;
  v11 = [(BLSHInvalidOnSystemSleepAttributeEntry *)&v19 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v11->_attribute, attributeCopy);
    objc_storeWeak(p_isa + 3, assertionCopy);
    objc_storeWeak(p_isa + 4, serviceCopy);
    osInterfaceProvider = [serviceCopy osInterfaceProvider];
    systemSleepMonitor = [osInterfaceProvider systemSleepMonitor];

    [systemSleepMonitor addObserver:p_isa];
    if (([systemSleepMonitor isAwakeOrAbortingSleep] & 1) == 0)
    {
      v15 = bls_assertions_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [BLSHInvalidOnSystemSleepAttributeEntry initForAttribute:assertionCopy fromAssertion:v15 forService:?];
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
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v2 = *(self + 12);
    os_unfair_lock_unlock((self + 8));
    if ((v2 & 1) == 0)
    {
      service = [self service];
      assertion = [self assertion];
      v5 = MEMORY[0x277CCA9B8];
      v6 = *MEMORY[0x277CF0828];
      v10 = *MEMORY[0x277CCA450];
      v11[0] = @"canceled due to system sleep";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v8 = [v5 errorWithDomain:v6 code:13 userInfo:v7];
      [service cancelAssertion:assertion withError:v8];

      [self invalidate];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)systemSleepMonitor:(id)monitor sleepRequestedWithResult:(id)result
{
  resultCopy = result;
  [(BLSHInvalidOnSystemSleepAttributeEntry *)self cancelAssertionForSleep];
  v5 = resultCopy[2](resultCopy, 1, 0);
}

- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BLSHInvalidOnSystemSleepAttributeEntry *)self cancelAssertionForSleep];
  completionCopy[2]();
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