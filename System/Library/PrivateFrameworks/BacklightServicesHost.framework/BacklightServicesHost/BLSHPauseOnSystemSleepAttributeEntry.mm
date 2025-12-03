@interface BLSHPauseOnSystemSleepAttributeEntry
+ (id)activateForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service attributeHandler:(id)handler;
- (BLSAssertionServiceResponding)assertion;
- (BLSAttribute)attribute;
- (BLSHAssertionAttributeHandlerService)service;
- (id)initForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service;
- (void)invalidate;
- (void)setPaused:(uint64_t)paused;
- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion;
- (void)systemSleepMonitor:(id)monitor sleepRequestedWithResult:(id)result;
@end

@implementation BLSHPauseOnSystemSleepAttributeEntry

+ (id)activateForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service attributeHandler:(id)handler
{
  serviceCopy = service;
  assertionCopy = assertion;
  attributeCopy = attribute;
  v11 = [[BLSHPauseOnSystemSleepAttributeEntry alloc] initForAttribute:attributeCopy fromAssertion:assertionCopy forService:serviceCopy];

  return v11;
}

- (id)initForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service
{
  attributeCopy = attribute;
  assertionCopy = assertion;
  serviceCopy = service;
  v19.receiver = self;
  v19.super_class = BLSHPauseOnSystemSleepAttributeEntry;
  v11 = [(BLSHPauseOnSystemSleepAttributeEntry *)&v19 init];
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
      block[2] = __82__BLSHPauseOnSystemSleepAttributeEntry_initForAttribute_fromAssertion_forService___block_invoke;
      block[3] = &unk_27841E650;
      v18 = p_isa;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  return p_isa;
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

- (BLSAttribute)attribute
{
  WeakRetained = objc_loadWeakRetained(&self->_attribute);

  return WeakRetained;
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

- (void)setPaused:(uint64_t)paused
{
  if (paused)
  {
    os_unfair_lock_lock((paused + 8));
    if ((*(paused + 12) & 1) != 0 || *(paused + 13) == a2)
    {

      os_unfair_lock_unlock((paused + 8));
    }

    else
    {
      *(paused + 13) = a2;
      os_unfair_lock_unlock((paused + 8));
      service = [paused service];
      assertion = [paused assertion];
      if (a2)
      {
        [service pauseAssertion:assertion];
      }

      else
      {
        [service resumeAssertion:assertion];
      }
    }
  }
}

- (void)systemSleepMonitor:(id)monitor sleepRequestedWithResult:(id)result
{
  resultCopy = result;
  [(BLSHPauseOnSystemSleepAttributeEntry *)self setPaused:?];
  v5 = resultCopy[2](resultCopy, 1, 0);
}

- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BLSHPauseOnSystemSleepAttributeEntry *)self setPaused:?];
  completionCopy[2]();
}

@end