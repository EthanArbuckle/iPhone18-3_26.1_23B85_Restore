@interface BLSHUserIdleProvider
- (BLSHUserIdleProvider)init;
- (BLSHUserIdleProvidingDelegate)delegate;
- (void)_invalidate;
- (void)_pause;
- (void)_reset;
- (void)_resume;
- (void)_setShouldNotifyOfUnidle:(BOOL)a3;
@end

@implementation BLSHUserIdleProvider

- (BLSHUserIdleProvider)init
{
  v17.receiver = self;
  v17.super_class = BLSHUserIdleProvider;
  v2 = [(BLSHUserIdleProvider *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldNotifyOfUnidleChanged = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    attentionLostTimeoutDictionary = v3->_attentionLostTimeoutDictionary;
    v3->_attentionLostTimeoutDictionary = v4;

    v6 = objc_alloc_init(MEMORY[0x277CEF760]);
    attentionAwarenessClient = v3->_attentionAwarenessClient;
    v3->_attentionAwarenessClient = v6;

    v8 = objc_alloc_init(MEMORY[0x277CEF768]);
    attentionAwarenessConfiguration = v3->_attentionAwarenessConfiguration;
    v3->_attentionAwarenessConfiguration = v8;

    [(AWAttentionAwarenessConfiguration *)v3->_attentionAwarenessConfiguration setIdentifier:@"com.apple.Carousel.BacklightServices.UserIdleProvider"];
    [(AWAttentionAwarenessConfiguration *)v3->_attentionAwarenessConfiguration setEventMask:4095];
    objc_initWeak(&location, v3);
    v10 = v3->_attentionAwarenessClient;
    v11 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85CD0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __28__BLSHUserIdleProvider_init__block_invoke;
    v14[3] = &unk_2784207B8;
    objc_copyWeak(&v15, &location);
    [(AWAttentionAwarenessClient *)v10 setEventHandlerWithQueue:v11 block:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __28__BLSHUserIdleProvider_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  if ([v3 eventMask])
  {
    v7 = [v3 associatedObject];
    if ([v7 isEqualToString:@"zeroTimeout"])
    {
      v8 = bls_backlight_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __28__BLSHUserIdleProvider_init__block_invoke_cold_1(v8);
      }
    }

    else if ([v7 isEqualToString:@"idleTimeout"])
    {
      v9 = bls_backlight_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21FD11000, v9, OS_LOG_TYPE_DEFAULT, "BLSHUserIdleProvider received user idle", buf, 2u);
      }

      if (objc_opt_respondsToSelector())
      {
        [v5 idleProviderDidIdle:WeakRetained];
      }
    }
  }

  else if ([WeakRetained shouldNotifyOfUnidle])
  {
    v6 = bls_backlight_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEFAULT, "BLSHUserIdleProvider received user unidle", v10, 2u);
    }

    if (objc_opt_respondsToSelector())
    {
      [v5 idleProviderDidUnidle:WeakRetained];
    }
  }
}

void __52__BLSHUserIdleProvider__setIdleTimeout_shouldReset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v5 isEqualToString:@"idleTimeout"] & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

- (void)_setShouldNotifyOfUnidle:(BOOL)a3
{
  if (self->_shouldNotifyOfUnidle != a3)
  {
    self->_shouldNotifyOfUnidleChanged = 1;
    self->_shouldNotifyOfUnidle = a3;
    attentionLostTimeoutDictionary = self->_attentionLostTimeoutDictionary;
    if (a3)
    {

      [(NSMutableDictionary *)attentionLostTimeoutDictionary setObject:@"zeroTimeout" forKey:&unk_28338DF18];
    }

    else
    {
      [(NSMutableDictionary *)attentionLostTimeoutDictionary removeAllObjects];
      v5 = self->_attentionLostTimeoutDictionary;
      v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_idleTimeout];
      [(NSMutableDictionary *)v5 setObject:@"idleTimeout" forKey:v6];
    }
  }
}

- (void)_pause
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_16(&dword_21FD11000, v0, v1, "error starting up attention awareness client %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resume
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_16(&dword_21FD11000, v0, v1, "error resuming attention awareness client %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_reset
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_16(&dword_21FD11000, v0, v1, "could not reset user idle provider error=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_16(&dword_21FD11000, v0, v1, "error invalidating attention awareness client %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (BLSHUserIdleProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setIdleTimeout:shouldReset:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_16(&dword_21FD11000, v0, v1, "could not update idle timeout for user idle provider error=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end