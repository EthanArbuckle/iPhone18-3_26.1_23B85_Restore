@interface BLSPendingAssertionService
- (BLSPendingAssertionService)init;
- (BOOL)hasReplacementService;
- (void)acquireAssertion:(id)assertion;
- (void)cancelAssertion:(id)assertion withError:(id)error;
- (void)replaceWithService:(id)service;
- (void)restartAssertionTimeoutTimer:(id)timer;
@end

@implementation BLSPendingAssertionService

- (BLSPendingAssertionService)init
{
  v7.receiver = self;
  v7.super_class = BLSPendingAssertionService;
  v2 = [(BLSPendingAssertionService *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x277CBEB18] array];
    assertionsToAcquire = v3->_assertionsToAcquire;
    v3->_assertionsToAcquire = array;
  }

  return v3;
}

- (void)acquireAssertion:(id)assertion
{
  v11 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"only BLSAssertion objects supported by pending service not:%@", assertionCopy}];
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_replacementService)
  {
    [assertionCopy setService:?];
    [(BLSAssertionService *)self->_replacementService acquireAssertion:assertionCopy];
  }

  else
  {
    [(NSMutableArray *)self->_assertionsToAcquire addObject:assertionCopy];
    v5 = bls_assertions_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      selfCopy = self;
      v9 = 2114;
      v10 = assertionCopy;
      _os_log_impl(&dword_21FE25000, v5, OS_LOG_TYPE_INFO, "%p assertion acquired before service setup, pending:%{public}@", buf, 0x16u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)replaceWithService:(id)service
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableArray *)self->_assertionsToAcquire copy];
  [(NSMutableArray *)self->_assertionsToAcquire removeAllObjects];
  objc_storeStrong(&self->_replacementService, service);
  os_unfair_lock_unlock(&self->_lock);
  v7 = bls_assertions_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(BLSPendingAssertionService *)self replaceWithService:v6, v7];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        [v13 setService:{serviceCopy, v15}];
        [serviceCopy acquireAssertion:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasReplacementService
{
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock((self + 24));
  v2 = *(self + 16) != 0;
  os_unfair_lock_unlock((self + 24));
  return v2;
}

- (void)cancelAssertion:(id)assertion withError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  errorCopy = error;
  if ([(BLSPendingAssertionService *)self hasReplacementService])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"replacement service has been set, should not be invalidating:%@", assertionCopy}];
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_assertionsToAcquire removeObject:assertionCopy];
  os_unfair_lock_unlock(&self->_lock);
  v8 = bls_assertions_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    selfCopy = self;
    v12 = 2114;
    v13 = errorCopy;
    v14 = 2114;
    v15 = assertionCopy;
    _os_log_impl(&dword_21FE25000, v8, OS_LOG_TYPE_INFO, "%p assertion invalidated (%{public}@) before service setup, no longer pending:%{public}@", buf, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)restartAssertionTimeoutTimer:(id)timer
{
  v11 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  if ([(BLSPendingAssertionService *)self hasReplacementService])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"replacement service has been set, should not be restarting timeout timer for:%@", timerCopy}];
  }

  v5 = bls_assertions_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    selfCopy = self;
    v9 = 2114;
    v10 = timerCopy;
    _os_log_impl(&dword_21FE25000, v5, OS_LOG_TYPE_INFO, "%p assertion timeout restarted before service setup:%{public}@", buf, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)replaceWithService:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134218240;
  v6 = a1;
  v7 = 1024;
  v8 = [a2 count];
  _os_log_debug_impl(&dword_21FE25000, a3, OS_LOG_TYPE_DEBUG, "%p service setup, will transition %u assertions", &v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

@end