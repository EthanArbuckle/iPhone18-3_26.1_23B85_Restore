@interface BLSHXPCAssertionServiceHost
- (BLSHXPCAssertionServiceHost)initWithLocalService:(id)a3 peer:(id)a4;
- (id)acquireAssertionForDescriptor:(id)a3 error:(id *)a4;
- (id)proxyForIdentifier:(uint64_t)a1;
- (uint64_t)isValid;
- (void)acquireAssertion:(id)a3;
- (void)cancelAssertion:(id)a3 withError:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)removeProxyForIdentifier:(uint64_t)a1;
- (void)restartAssertionTimeoutTimer:(id)a3;
- (void)setProxy:(void *)a3 forIdentifier:;
@end

@implementation BLSHXPCAssertionServiceHost

- (BLSHXPCAssertionServiceHost)initWithLocalService:(id)a3 peer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = BLSHXPCAssertionServiceHost;
  v9 = [(BLSHXPCAssertionServiceHost *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = [v8 remoteProcess];
    objc_storeWeak(&v10->_remoteProcessHandle, v11);

    objc_storeStrong(&v10->_localService, a3);
    v12 = [MEMORY[0x277CBEB38] dictionary];
    assertionProxies = v10->_assertionProxies;
    v10->_assertionProxies = v12;

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

- (id)acquireAssertionForDescriptor:(id)a3 error:(id *)a4
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_remoteProcessHandle);
  v19 = 0;
  v9 = [v7 checkEntitlementSourceForRequiredEntitlements:WeakRetained error:&v19];
  v10 = v19;
  v11 = v10;
  if ((v9 & 1) != 0 || v10)
  {
    if (v10)
    {
      v12 = 0;
      if (!a4)
      {
LABEL_6:

        return v12;
      }
    }

    else
    {
      [(BLSHXPCAssertionServiceHost *)v7 acquireAssertionForDescriptor:&v20 error:?];
      v12 = v20;
      if (!a4)
      {
        goto LABEL_6;
      }
    }

    v13 = v11;
    *a4 = v11;
    goto LABEL_6;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = [WeakRetained pid];
  v17 = [WeakRetained bundleIdentifier];
  v18 = [v15 stringWithFormat:@"checkEntitlementSourceForRequiredEntitlements returned NO but did not provide an error for process:%ld:'%@' descriptor:%@", v16, v17, v7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(BLSHXPCAssertionServiceHost *)a2 acquireAssertionForDescriptor:v18 error:?];
  }

  [v18 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (uint64_t)isValid
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 32));
    v2 = *(a1 + 36);
    os_unfair_lock_unlock((a1 + 32));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)proxyForIdentifier:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_lock((a1 + 32));
    v4 = [*(a1 + 24) objectForKey:v3];

    os_unfair_lock_unlock((a1 + 32));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setProxy:(void *)a3 forIdentifier:
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    os_unfair_lock_lock((a1 + 32));
    [*(a1 + 24) setObject:v6 forKey:v5];

    os_unfair_lock_unlock((a1 + 32));
  }
}

- (void)removeProxyForIdentifier:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_lock((a1 + 32));
    [*(a1 + 24) removeObjectForKey:v3];

    os_unfair_lock_unlock((a1 + 32));
  }
}

- (void)acquireAssertion:(id)a3
{
  localService = self->_localService;
  [(BLSHXPCAssertionServiceHost *)self proxyForIdentifier:a3];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_8() acquireAssertion:?];
}

- (void)cancelAssertion:(id)a3 withError:(id)a4
{
  localService = self->_localService;
  v7 = a4;
  v8 = [(BLSHXPCAssertionServiceHost *)self proxyForIdentifier:a3];
  [(BLSAssertionService *)localService cancelAssertion:v8 withError:v7];
}

- (void)restartAssertionTimeoutTimer:(id)a3
{
  localService = self->_localService;
  [(BLSHXPCAssertionServiceHost *)self proxyForIdentifier:a3];
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