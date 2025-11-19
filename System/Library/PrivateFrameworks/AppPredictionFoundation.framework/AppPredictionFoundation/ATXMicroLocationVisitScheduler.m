@interface ATXMicroLocationVisitScheduler
+ (id)sharedInstance;
- (ATXMicroLocationVisitScheduler)init;
- (BOOL)hasActiveSubscribers;
- (BOOL)isSubscribed;
- (id)subscribeWithCallback:(id)a3 onQueue:(id)a4;
- (void)_handleCompletion:(id)a3;
- (void)_handleMicroLocationEvent:(id)a3;
- (void)_onStateQueue_cancelSubscription;
- (void)_onStateQueue_setupSubscription;
- (void)dealloc;
- (void)removeAllSubscribers;
- (void)unSubscribeWithToken:(id)a3;
@end

@implementation ATXMicroLocationVisitScheduler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[ATXMicroLocationVisitScheduler sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __48__ATXMicroLocationVisitScheduler_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(ATXMicroLocationVisitScheduler);

  return MEMORY[0x2821F96F8]();
}

- (ATXMicroLocationVisitScheduler)init
{
  v12.receiver = self;
  v12.super_class = ATXMicroLocationVisitScheduler;
  v2 = [(ATXMicroLocationVisitScheduler *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    callbacks = v2->_callbacks;
    v2->_callbacks = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.duetexpertcenter.ATXMicroLocationVisitScheduler.Biome", v5);
    biomeQueue = v2->_biomeQueue;
    v2->_biomeQueue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.duetexpertcenter.ATXMicroLocationVisitScheduler.State", v8);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v9;
  }

  return v2;
}

- (void)dealloc
{
  [(ATXMicroLocationVisitScheduler *)self removeAllSubscribers];
  v3.receiver = self;
  v3.super_class = ATXMicroLocationVisitScheduler;
  [(ATXMicroLocationVisitScheduler *)&v3 dealloc];
}

- (id)subscribeWithCallback:(id)a3 onQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [ATXMicroLocationVisitScheduler subscribeWithCallback:a2 onQueue:self];
  }

  v9 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [v9 UUIDString];
    v14 = [v12 stringWithFormat:@"com.apple.duetexpertcenter.ATXMicroLocationVisitScheduler.Callback.%@", v13];

    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v15, v16);
  }

  v17 = [(ATXMicroLocationVisitScheduler *)self stateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ATXMicroLocationVisitScheduler_subscribeWithCallback_onQueue___block_invoke;
  block[3] = &unk_278590858;
  v28 = v7;
  v25 = v11;
  v26 = self;
  v18 = v10;
  v27 = v18;
  v19 = v11;
  v20 = v7;
  dispatch_sync(v17, block);

  v21 = v27;
  v22 = v18;

  return v18;
}

void __64__ATXMicroLocationVisitScheduler_subscribeWithCallback_onQueue___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(ATXCallbackInfo);
  [(ATXCallbackInfo *)v2 setCallback:*(a1 + 56)];
  [(ATXCallbackInfo *)v2 setQueue:*(a1 + 32)];
  v3 = [*(a1 + 40) callbacks];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 48)];

  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 48) UUIDString];
    v6 = [*(a1 + 40) callbacks];
    v10 = 138412546;
    v11 = v5;
    v12 = 2048;
    v13 = [v6 count];
    _os_log_impl(&dword_226368000, v4, OS_LOG_TYPE_DEFAULT, "ATXMicroLocationVisitScheduler: Added callback with identifier %@. Total callbacks: %lu", &v10, 0x16u);
  }

  v7 = [*(a1 + 40) callbacks];
  v8 = [v7 count];

  if (v8 == 1)
  {
    [*(a1 + 40) _onStateQueue_setupSubscription];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unSubscribeWithToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ATXMicroLocationVisitScheduler *)self stateQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__ATXMicroLocationVisitScheduler_unSubscribeWithToken___block_invoke;
    v6[3] = &unk_278590880;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __55__ATXMicroLocationVisitScheduler_unSubscribeWithToken___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) callbacks];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) callbacks];
    [v4 removeObjectForKey:*(a1 + 40)];

    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) UUIDString];
      v7 = [*(a1 + 32) callbacks];
      v11 = 138412546;
      v12 = v6;
      v13 = 2048;
      v14 = [v7 count];
      _os_log_impl(&dword_226368000, v5, OS_LOG_TYPE_DEFAULT, "ATXMicroLocationVisitScheduler: Removed callback %@. Remaining: %lu", &v11, 0x16u);
    }

    v8 = [*(a1 + 32) callbacks];
    v9 = [v8 count];

    if (!v9)
    {
      [*(a1 + 32) _onStateQueue_cancelSubscription];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeAllSubscribers
{
  v3 = [(ATXMicroLocationVisitScheduler *)self stateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ATXMicroLocationVisitScheduler_removeAllSubscribers__block_invoke;
  block[3] = &unk_2785908A8;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __54__ATXMicroLocationVisitScheduler_removeAllSubscribers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callbacks];
  [v2 removeAllObjects];

  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_226368000, v3, OS_LOG_TYPE_DEFAULT, "ATXMicroLocationVisitScheduler: Removed all callbacks", v5, 2u);
  }

  return [*(a1 + 32) _onStateQueue_cancelSubscription];
}

- (BOOL)isSubscribed
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ATXMicroLocationVisitScheduler *)self stateQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__ATXMicroLocationVisitScheduler_isSubscribed__block_invoke;
  v5[3] = &unk_2785908D0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __46__ATXMicroLocationVisitScheduler_isSubscribed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) microLocationSink];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (BOOL)hasActiveSubscribers
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ATXMicroLocationVisitScheduler *)self stateQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__ATXMicroLocationVisitScheduler_hasActiveSubscribers__block_invoke;
  v5[3] = &unk_2785908D0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __54__ATXMicroLocationVisitScheduler_hasActiveSubscribers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callbacks];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] != 0;
}

- (void)_onStateQueue_setupSubscription
{
  v3 = [(ATXMicroLocationVisitScheduler *)self stateQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ATXMicroLocationVisitScheduler *)self microLocationSink];

  if (!v4)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_226368000, v5, OS_LOG_TYPE_DEFAULT, "ATXMicroLocationVisitScheduler: Setting up micro-location subscription", buf, 2u);
    }

    v6 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"ATXMicroLocationVisitScheduler.MicroLocationDonation" targetQueue:self->_biomeQueue];
    microLocationScheduler = self->_microLocationScheduler;
    self->_microLocationScheduler = v6;

    objc_initWeak(buf, self);
    v8 = BiomeLibrary();
    v9 = [v8 Location];
    v10 = [v9 MicroLocationVisit];
    v11 = [v10 atx_DSLPublisher];
    v12 = [v11 subscribeOn:self->_microLocationScheduler];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __65__ATXMicroLocationVisitScheduler__onStateQueue_setupSubscription__block_invoke;
    v19[3] = &unk_2785908F8;
    objc_copyWeak(&v20, buf);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__ATXMicroLocationVisitScheduler__onStateQueue_setupSubscription__block_invoke_2;
    v17[3] = &unk_278590920;
    objc_copyWeak(&v18, buf);
    v13 = [v12 sinkWithCompletion:v19 receiveInput:v17];
    microLocationSink = self->_microLocationSink;
    self->_microLocationSink = v13;

    v15 = __atxlog_handle_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_226368000, v15, OS_LOG_TYPE_DEFAULT, "ATXMicroLocationVisitScheduler: Successfully subscribed to micro-location events", v16, 2u);
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

void __65__ATXMicroLocationVisitScheduler__onStateQueue_setupSubscription__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleCompletion:v5];
  }
}

void __65__ATXMicroLocationVisitScheduler__onStateQueue_setupSubscription__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [ATXMicroLocationVisitStream atxMicroLocationVisitEventFromBiomeEvent:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && v4)
  {
    [WeakRetained _handleMicroLocationEvent:v4];
  }
}

- (void)_onStateQueue_cancelSubscription
{
  v3 = [(ATXMicroLocationVisitScheduler *)self stateQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ATXMicroLocationVisitScheduler *)self microLocationSink];

  if (v4)
  {
    v5 = [(ATXMicroLocationVisitScheduler *)self microLocationSink];
    [v5 cancel];

    [(ATXMicroLocationVisitScheduler *)self setMicroLocationSink:0];
  }

  [(ATXMicroLocationVisitScheduler *)self setMicroLocationScheduler:0];
  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_226368000, v6, OS_LOG_TYPE_DEFAULT, "ATXMicroLocationVisitScheduler: Subscription cancelled", v7, 2u);
  }
}

- (void)_handleCompletion:(id)a3
{
  v3 = a3;
  v4 = [v3 state];
  v5 = __atxlog_handle_default();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXMicroLocationVisitScheduler *)v3 _handleCompletion:v6];
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_226368000, v6, OS_LOG_TYPE_DEFAULT, "ATXMicroLocationVisitScheduler: Completed listening to micro-location events", v7, 2u);
  }
}

- (void)_handleMicroLocationEvent:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_226368000, v5, OS_LOG_TYPE_DEFAULT, "ATXMicroLocationVisitScheduler: Received new micro-location event: %@", buf, 0xCu);
  }

  v6 = [(ATXMicroLocationVisitScheduler *)self stateQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__ATXMicroLocationVisitScheduler__handleMicroLocationEvent___block_invoke;
  v9[3] = &unk_278590880;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __60__ATXMicroLocationVisitScheduler__handleMicroLocationEvent___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) callbacks];
    *buf = 134217984;
    v21 = [v3 count];
    _os_log_impl(&dword_226368000, v2, OS_LOG_TYPE_DEFAULT, "ATXMicroLocationVisitScheduler: Notifying %lu callbacks", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [*(a1 + 32) callbacks];
  v5 = [v4 objectEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 queue];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __60__ATXMicroLocationVisitScheduler__handleMicroLocationEvent___block_invoke_57;
        v13[3] = &unk_278590880;
        v13[4] = v10;
        v14 = *(a1 + 40);
        dispatch_async(v11, v13);
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __60__ATXMicroLocationVisitScheduler__handleMicroLocationEvent___block_invoke_57(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) callback];
  v3[2](v3, *(a1 + 40));

  objc_autoreleasePoolPop(v2);
}

- (void)subscribeWithCallback:(uint64_t)a1 onQueue:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXMicroLocationVisitScheduler.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"callback"}];
}

- (void)_handleCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "ATXMicroLocationVisitScheduler: Error listening to micro-location events: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end