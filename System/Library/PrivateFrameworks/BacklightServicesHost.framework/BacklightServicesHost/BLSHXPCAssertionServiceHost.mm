@interface BLSHXPCAssertionServiceHost
- (BLSHXPCAssertionServiceHost)initWithLocalService:(id)service peer:(id)peer;
- (id)acquireAssertionForDescriptor:(id)descriptor error:(id *)error;
- (id)proxyForIdentifier:(uint64_t)identifier;
- (uint64_t)isValid;
- (void)acquireAssertion:(id)assertion;
- (void)cancelAssertion:(id)assertion withError:(id)error;
- (void)dealloc;
- (void)invalidate;
- (void)removeProxyForIdentifier:(uint64_t)identifier;
- (void)restartAssertionTimeoutTimer:(id)timer;
- (void)setProxy:(void *)proxy forIdentifier:;
@end

@implementation BLSHXPCAssertionServiceHost

- (BLSHXPCAssertionServiceHost)initWithLocalService:(id)service peer:(id)peer
{
  serviceCopy = service;
  peerCopy = peer;
  v15.receiver = self;
  v15.super_class = BLSHXPCAssertionServiceHost;
  v9 = [(BLSHXPCAssertionServiceHost *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    remoteProcess = [peerCopy remoteProcess];
    objc_storeWeak(&v10->_remoteProcessHandle, remoteProcess);

    objc_storeStrong(&v10->_localService, service);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    assertionProxies = v10->_assertionProxies;
    v10->_assertionProxies = dictionary;

    v10->_valid = 1;
  }

  return v10;
}

- (void)dealloc
{
  if ([(BLSHXPCAssertionServiceHost *)self isValid])
  {
    v3 = bls_assertions_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(BLSHXPCAssertionServiceHost *)v3 dealloc];
    }

    [(BLSHXPCAssertionServiceHost *)self invalidate];
  }

  v4.receiver = self;
  v4.super_class = BLSHXPCAssertionServiceHost;
  [(BLSHXPCAssertionServiceHost *)&v4 dealloc];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_valid = 0;
  assertionProxies = self->_assertionProxies;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__BLSHXPCAssertionServiceHost_invalidate__block_invoke;
  v4[3] = &unk_27841F838;
  v4[4] = self;
  [(NSMutableDictionary *)assertionProxies enumerateKeysAndObjectsUsingBlock:v4];
  os_unfair_lock_unlock(&self->_lock);
}

void __41__BLSHXPCAssertionServiceHost_invalidate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 invalidate];
  v5 = *(*(a1 + 32) + 8);
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CF0828];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = @"service disconnected";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v6 errorWithDomain:v7 code:3 userInfo:v8];
  [v5 cancelAssertion:v4 withError:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)acquireAssertionForDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  WeakRetained = objc_loadWeakRetained(&self->_remoteProcessHandle);
  v19 = 0;
  v9 = [descriptorCopy checkEntitlementSourceForRequiredEntitlements:WeakRetained error:&v19];
  v10 = v19;
  v11 = v10;
  if ((v9 & 1) != 0 || v10)
  {
    if (v10)
    {
      v12 = 0;
      if (!error)
      {
LABEL_6:

        return v12;
      }
    }

    else
    {
      [(BLSHXPCAssertionServiceHost *)descriptorCopy acquireAssertionForDescriptor:&v20 error:?];
      v12 = v20;
      if (!error)
      {
        goto LABEL_6;
      }
    }

    v13 = v11;
    *error = v11;
    goto LABEL_6;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = [WeakRetained pid];
  bundleIdentifier = [WeakRetained bundleIdentifier];
  descriptorCopy = [v15 stringWithFormat:@"checkEntitlementSourceForRequiredEntitlements returned NO but did not provide an error for process:%ld:'%@' descriptor:%@", v16, bundleIdentifier, descriptorCopy];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(BLSHXPCAssertionServiceHost *)a2 acquireAssertionForDescriptor:descriptorCopy error:?];
  }

  [descriptorCopy UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (uint64_t)isValid
{
  if (self)
  {
    os_unfair_lock_lock((self + 32));
    v2 = *(self + 36);
    os_unfair_lock_unlock((self + 32));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)proxyForIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    v3 = a2;
    os_unfair_lock_lock((identifier + 32));
    v4 = [*(identifier + 24) objectForKey:v3];

    os_unfair_lock_unlock((identifier + 32));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setProxy:(void *)proxy forIdentifier:
{
  if (self)
  {
    proxyCopy = proxy;
    v6 = a2;
    os_unfair_lock_lock((self + 32));
    [*(self + 24) setObject:v6 forKey:proxyCopy];

    os_unfair_lock_unlock((self + 32));
  }
}

- (void)removeProxyForIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    v3 = a2;
    os_unfair_lock_lock((identifier + 32));
    [*(identifier + 24) removeObjectForKey:v3];

    os_unfair_lock_unlock((identifier + 32));
  }
}

- (void)acquireAssertion:(id)assertion
{
  localService = self->_localService;
  [(BLSHXPCAssertionServiceHost *)self proxyForIdentifier:assertion];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_8() acquireAssertion:?];
}

- (void)cancelAssertion:(id)assertion withError:(id)error
{
  localService = self->_localService;
  errorCopy = error;
  v8 = [(BLSHXPCAssertionServiceHost *)self proxyForIdentifier:assertion];
  [(BLSAssertionService *)localService cancelAssertion:v8 withError:errorCopy];
}

- (void)restartAssertionTimeoutTimer:(id)timer
{
  localService = self->_localService;
  [(BLSHXPCAssertionServiceHost *)self proxyForIdentifier:timer];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_8() restartAssertionTimeoutTimer:?];
}

- (void)acquireAssertionForDescriptor:(uint64_t)a3 error:.cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138544642;
  v10 = v5;
  v11 = 2114;
  v12 = v7;
  v13 = 2048;
  v14 = a2;
  v15 = 2114;
  v16 = @"BLSHXPCAssertionServiceHost.m";
  v17 = 1024;
  v18 = 105;
  v19 = 2114;
  v20 = a3;
  _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)acquireAssertionForDescriptor:(void *)a3 error:.cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CF3280] currentContext];
  v7 = objc_alloc(MEMORY[0x277CF0870]);
  v8 = [v6 remoteProcess];
  v9 = [v8 pid];
  v10 = [v7 initWithClientPid:v9 hostPid:getpid() count:{objc_msgSend(MEMORY[0x277CF0870], "nextCount")}];
  *a3 = v10;

  v11 = [BLSHAssertionProxy alloc];
  v12 = [v6 remoteTarget];
  v13 = [(BLSHAssertionProxy *)v11 initWithIdentifier:v10 descriptor:a1 remoteTarget:v12];

  [(BLSHXPCAssertionServiceHost *)a2 setProxy:v13 forIdentifier:v10];
  [*(a2 + 8) acquireAssertion:v13];
}

@end