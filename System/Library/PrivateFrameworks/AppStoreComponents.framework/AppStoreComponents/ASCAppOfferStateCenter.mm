@interface ASCAppOfferStateCenter
+ (ASCAppOfferStateCenter)sharedCenter;
+ (OS_os_log)log;
- (ASCAppOfferStateCenter)initWithConnection:(id)connection workspace:(id)workspace;
- (NSString)description;
- (id)decorateBuyParamsForOffer:(id)offer withActivity:(id)activity;
- (id)performActionOfOffer:(id)offer withActivity:(id)activity inContext:(id)context;
- (id)performActionOfOffer:(id)offer withActivity:(id)activity inContext:(id)context usingService:(id)service;
- (id)performFallbackActionForOffer:(id)offer;
- (id)reinstallWatchAppWithID:(id)d;
- (id)reinstallWatchSystemAppWithBundleID:(id)d;
- (id)stateMachineForOffer:(id)offer;
- (void)connectToService;
- (void)daemonConnectionWasLost:(id)lost;
- (void)daemonDidRebootstrap:(id)rebootstrap;
- (void)dealloc;
- (void)offer:(id)offer didChangeState:(id)state withMetadata:(id)metadata flags:(int64_t)flags;
- (void)offer:(id)offer didChangeStatusText:(id)text;
- (void)scheduleTryReconnect;
- (void)stopObservingStateForOffer:(id)offer;
- (void)tryReconnect;
- (void)useOfferStateMachineFallback;
- (void)viewAppForAppDistributionOffer:(id)offer;
@end

@implementation ASCAppOfferStateCenter

+ (OS_os_log)log
{
  if (log_onceToken_1 != -1)
  {
    +[ASCAppOfferStateCenter log];
  }

  v3 = log_log_1;

  return v3;
}

uint64_t __29__ASCAppOfferStateCenter_log__block_invoke()
{
  log_log_1 = os_log_create("com.apple.AppStoreComponents", "ASCAppOfferStateCenter");

  return MEMORY[0x2821F96F8]();
}

+ (ASCAppOfferStateCenter)sharedCenter
{
  if (sharedCenter_onceToken != -1)
  {
    +[ASCAppOfferStateCenter sharedCenter];
  }

  v3 = sharedCenter_sharedCenter;

  return v3;
}

void __38__ASCAppOfferStateCenter_sharedCenter__block_invoke()
{
  v0 = [ASCAppOfferStateCenter alloc];
  v4 = +[ASCServicesConnection sharedConnection];
  v1 = +[ASCWorkspace sharedWorkspace];
  v2 = [(ASCAppOfferStateCenter *)v0 initWithConnection:v4 workspace:v1];
  v3 = sharedCenter_sharedCenter;
  sharedCenter_sharedCenter = v2;
}

- (ASCAppOfferStateCenter)initWithConnection:(id)connection workspace:(id)workspace
{
  connectionCopy = connection;
  workspaceCopy = workspace;
  v22.receiver = self;
  v22.super_class = ASCAppOfferStateCenter;
  v9 = [(ASCAppOfferStateCenter *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_workspace, workspace);
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    stateMachines = v10->_stateMachines;
    v10->_stateMachines = strongToWeakObjectsMapTable;

    v13 = [[ASCJitterBackoff alloc] initWithBaseSleepTimeInterval:0.1 maxSleepTimeInterval:5.0];
    reconnectBackoff = v10->_reconnectBackoff;
    v10->_reconnectBackoff = v13;

    v15 = objc_alloc_init(ASCPendingPromises);
    pendingActionPromises = v10->_pendingActionPromises;
    v10->_pendingActionPromises = v15;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_daemonConnectionWasLost_ name:0x2827A4CB8 object:connectionCopy];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v10 selector:sel_daemonConnectionWasLost_ name:0x2827A4CD8 object:connectionCopy];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    v20 = +[ASCRebootstrapNotifier sharedNotifier];
    [defaultCenter3 addObserver:v10 selector:sel_daemonDidRebootstrap_ name:0x2827A4C98 object:v20];
  }

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCAppOfferStateCenter;
  [(ASCAppOfferStateCenter *)&v4 dealloc];
}

- (void)connectToService
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_21571A000, v0, OS_LOG_TYPE_DEBUG, "%@ asked to connect, but it already has a connection", v1, 0xCu);
}

uint64_t __42__ASCAppOfferStateCenter_connectToService__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_21571A000, v4, OS_LOG_TYPE_INFO, "Resuming observation of changes to %{public}@", &v7, 0xCu);
  }

  [v3 startObservingStateOfOffers:*(a1 + 32)];
  return [*(a1 + 40) reset];
}

void __42__ASCAppOfferStateCenter_connectToService__block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42__ASCAppOfferStateCenter_connectToService__block_invoke_20_cold_1(a1);
  }
}

- (void)useOfferStateMachineFallback
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  service = [(ASCAppOfferStateCenter *)self service];

  if (!service)
  {
    v5 = ASCLocalizedString(@"OFFER_BUTTON_TITLE_VIEW", v4);
    v6 = [ASCOfferMetadata textMetadataWithTitle:v5 subtitle:0];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    stateMachines = [(ASCAppOfferStateCenter *)self stateMachines];
    objectEnumerator = [stateMachines objectEnumerator];

    v9 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v13 + 1) + 8 * v12++) offerStateDidChange:@"unknown" withMetadata:v6 flags:2];
        }

        while (v10 != v12);
        v10 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)scheduleTryReconnect
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  service = [(ASCAppOfferStateCenter *)self service];

  if (!service)
  {
    reconnectBackoff = [(ASCAppOfferStateCenter *)self reconnectBackoff];
    [reconnectBackoff nextSleepTimeInterval];
    [(ASCAppOfferStateCenter *)self performSelector:sel_tryReconnect withObject:0 afterDelay:?];
  }
}

- (void)tryReconnect
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  service = [(ASCAppOfferStateCenter *)self service];

  if (!service)
  {
    v4 = +[ASCAppOfferStateCenter log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21571A000, v4, OS_LOG_TYPE_INFO, "Performing test before reconnecting to service", buf, 2u);
    }

    connection = [(ASCAppOfferStateCenter *)self connection];
    testConnection = [connection testConnection];

    objc_initWeak(buf, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__ASCAppOfferStateCenter_tryReconnect__block_invoke;
    v9[3] = &unk_2781CC0E8;
    v9[4] = self;
    [testConnection addSuccessBlock:v9];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__ASCAppOfferStateCenter_tryReconnect__block_invoke_2;
    v7[3] = &unk_2781CC110;
    objc_copyWeak(&v8, buf);
    [testConnection addErrorBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __38__ASCAppOfferStateCenter_tryReconnect__block_invoke(uint64_t a1)
{
  v2 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21571A000, v2, OS_LOG_TYPE_INFO, "Connection test successful, reconnecting to service", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ASCAppOfferStateCenter_tryReconnect__block_invoke_28;
  block[3] = &unk_2781CC0E8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __38__ASCAppOfferStateCenter_tryReconnect__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__ASCAppOfferStateCenter_tryReconnect__block_invoke_2_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ASCAppOfferStateCenter_tryReconnect__block_invoke_29;
  block[3] = &unk_2781CBD28;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v6);
}

void __38__ASCAppOfferStateCenter_tryReconnect__block_invoke_29(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained useOfferStateMachineFallback];
}

- (void)daemonConnectionWasLost:(id)lost
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ASCAppOfferStateCenter_daemonConnectionWasLost___block_invoke;
  block[3] = &unk_2781CC0E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__ASCAppOfferStateCenter_daemonConnectionWasLost___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) service];

  if (v2)
  {
    v3 = [*(a1 + 32) pendingActionPromises];
    [v3 cancelAll];

    [*(a1 + 32) setService:0];
    v4 = *(a1 + 32);

    [v4 scheduleTryReconnect];
  }
}

- (void)daemonDidRebootstrap:(id)rebootstrap
{
  service = [(ASCAppOfferStateCenter *)self service];

  if (service)
  {
    [(ASCAppOfferStateCenter *)self setService:0];

    [(ASCAppOfferStateCenter *)self tryReconnect];
  }
}

- (id)stateMachineForOffer:(id)offer
{
  offerCopy = offer;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  service = [(ASCAppOfferStateCenter *)self service];

  if (!service)
  {
    [(ASCAppOfferStateCenter *)self connectToService];
  }

  stateMachines = [(ASCAppOfferStateCenter *)self stateMachines];
  v7 = [stateMachines objectForKey:offerCopy];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [[ASCAppOfferStateMachine alloc] initWithOffer:offerCopy stateCenter:self];
    stateMachines2 = [(ASCAppOfferStateCenter *)self stateMachines];
    [stateMachines2 setObject:v8 forKey:offerCopy];

    service2 = [(ASCAppOfferStateCenter *)self service];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__ASCAppOfferStateCenter_stateMachineForOffer___block_invoke;
    v16[3] = &unk_2781CC138;
    v11 = offerCopy;
    v17 = v11;
    [service2 addSuccessBlock:v16];

    service3 = [(ASCAppOfferStateCenter *)self service];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__ASCAppOfferStateCenter_stateMachineForOffer___block_invoke_32;
    v14[3] = &unk_2781CBB80;
    v15 = v11;
    [service3 addErrorBlock:v14];
  }

  return v8;
}

void __47__ASCAppOfferStateCenter_stateMachineForOffer___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&dword_21571A000, v4, OS_LOG_TYPE_INFO, "Starting observation of changes to %{public}@", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  [v3 startObservingStateOfOffers:v6];
}

void __47__ASCAppOfferStateCenter_stateMachineForOffer___block_invoke_32(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__ASCAppOfferStateCenter_stateMachineForOffer___block_invoke_32_cold_1(a1);
  }
}

- (void)stopObservingStateForOffer:(id)offer
{
  offerCopy = offer;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  service = [(ASCAppOfferStateCenter *)self service];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__ASCAppOfferStateCenter_stopObservingStateForOffer___block_invoke;
  v15[3] = &unk_2781CC138;
  v6 = offerCopy;
  v16 = v6;
  [service addSuccessBlock:v15];

  service2 = [(ASCAppOfferStateCenter *)self service];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __53__ASCAppOfferStateCenter_stopObservingStateForOffer___block_invoke_33;
  v13 = &unk_2781CBB80;
  v14 = v6;
  v8 = v6;
  [service2 addErrorBlock:&v10];

  v9 = [(ASCAppOfferStateCenter *)self stateMachines:v10];
  [v9 removeObjectForKey:v8];
}

void __53__ASCAppOfferStateCenter_stopObservingStateForOffer___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&dword_21571A000, v4, OS_LOG_TYPE_INFO, "Stopping observation of changes to %{public}@", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  [v3 stopObservingStateOfOffers:v6];
}

void __53__ASCAppOfferStateCenter_stopObservingStateForOffer___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__ASCAppOfferStateCenter_stopObservingStateForOffer___block_invoke_33_cold_1(a1);
  }
}

- (id)performActionOfOffer:(id)offer withActivity:(id)activity inContext:(id)context usingService:(id)service
{
  offerCopy = offer;
  activityCopy = activity;
  contextCopy = context;
  serviceCopy = service;
  v14 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21571A000, v14, OS_LOG_TYPE_INFO, "Performing action", buf, 2u);
  }

  v15 = objc_alloc_init(MEMORY[0x277CEE5F0]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __83__ASCAppOfferStateCenter_performActionOfOffer_withActivity_inContext_usingService___block_invoke;
  v27[3] = &unk_2781CC160;
  v28 = offerCopy;
  v29 = activityCopy;
  v30 = contextCopy;
  v16 = v15;
  v31 = v16;
  v17 = contextCopy;
  v18 = activityCopy;
  v19 = offerCopy;
  [serviceCopy addSuccessBlock:v27];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __83__ASCAppOfferStateCenter_performActionOfOffer_withActivity_inContext_usingService___block_invoke_35;
  v25[3] = &unk_2781CBB80;
  v20 = v16;
  v26 = v20;
  [serviceCopy addErrorBlock:v25];

  pendingActionPromises = [(ASCAppOfferStateCenter *)self pendingActionPromises];
  [pendingActionPromises addBinaryPromise:v20];

  v22 = v26;
  v23 = v20;

  return v20;
}

void __83__ASCAppOfferStateCenter_performActionOfOffer_withActivity_inContext_usingService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__ASCAppOfferStateCenter_performActionOfOffer_withActivity_inContext_usingService___block_invoke_2;
  v6[3] = &unk_2781CBB80;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [a2 performActionOfOffer:v3 withActivity:v4 inContext:v5 withReplyHandler:v6];
}

void __83__ASCAppOfferStateCenter_performActionOfOffer_withActivity_inContext_usingService___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_21571A000, v4, OS_LOG_TYPE_INFO, "Performed action", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v3)
  {
    [v5 finishWithError:v3];
  }

  else
  {
    [v5 finishWithSuccess];
  }
}

void __83__ASCAppOfferStateCenter_performActionOfOffer_withActivity_inContext_usingService___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __83__ASCAppOfferStateCenter_performActionOfOffer_withActivity_inContext_usingService___block_invoke_35_cold_1();
  }

  [*(a1 + 32) finishWithError:v3];
}

- (id)performFallbackActionForOffer:(id)offer
{
  offerCopy = offer;
  v5 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_21571A000, v5, OS_LOG_TYPE_INFO, "Performing fallback action", v12, 2u);
  }

  v6 = [offerCopy id];
  flags = [offerCopy flags];

  v8 = [ASCLockupProductDetails URLForLockupID:v6 ofKind:@"app" withOfferFlags:flags];

  workspace = [(ASCAppOfferStateCenter *)self workspace];
  v10 = [workspace openURL:v8];

  return v10;
}

- (id)performActionOfOffer:(id)offer withActivity:(id)activity inContext:(id)context
{
  activityCopy = activity;
  contextCopy = context;
  offerCopy = offer;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  service = [(ASCAppOfferStateCenter *)self service];
  if (service)
  {
    [(ASCAppOfferStateCenter *)self performActionOfOffer:offerCopy withActivity:activityCopy inContext:contextCopy usingService:service];
  }

  else
  {
    [(ASCAppOfferStateCenter *)self performFallbackActionForOffer:offerCopy];
  }
  v12 = ;

  return v12;
}

- (void)viewAppForAppDistributionOffer:(id)offer
{
  offerCopy = offer;
  v5 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21571A000, v5, OS_LOG_TYPE_INFO, "Viewing app for app distribution offer", buf, 2u);
  }

  service = [(ASCAppOfferStateCenter *)self service];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ASCAppOfferStateCenter_viewAppForAppDistributionOffer___block_invoke;
  v9[3] = &unk_2781CC138;
  v10 = offerCopy;
  v7 = offerCopy;
  [service addSuccessBlock:v9];

  service2 = [(ASCAppOfferStateCenter *)self service];
  [service2 addErrorBlock:&__block_literal_global_38];
}

void __57__ASCAppOfferStateCenter_viewAppForAppDistributionOffer___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __57__ASCAppOfferStateCenter_viewAppForAppDistributionOffer___block_invoke_2_cold_1();
  }
}

- (id)decorateBuyParamsForOffer:(id)offer withActivity:(id)activity
{
  offerCopy = offer;
  activityCopy = activity;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  service = [(ASCAppOfferStateCenter *)self service];

  if (!service)
  {
    [(ASCAppOfferStateCenter *)self connectToService];
  }

  v9 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21571A000, v9, OS_LOG_TYPE_INFO, "Decorating buy params", buf, 2u);
  }

  v10 = objc_alloc_init(MEMORY[0x277CEE600]);
  service2 = [(ASCAppOfferStateCenter *)self service];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __65__ASCAppOfferStateCenter_decorateBuyParamsForOffer_withActivity___block_invoke;
  v26[3] = &unk_2781CC1A8;
  v27 = offerCopy;
  v28 = activityCopy;
  v12 = v10;
  v29 = v12;
  v13 = activityCopy;
  v14 = offerCopy;
  [service2 addSuccessBlock:v26];

  service3 = [(ASCAppOfferStateCenter *)self service];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __65__ASCAppOfferStateCenter_decorateBuyParamsForOffer_withActivity___block_invoke_2;
  v24 = &unk_2781CBB80;
  v16 = v12;
  v25 = v16;
  [service3 addErrorBlock:&v21];

  v17 = [(ASCAppOfferStateCenter *)self pendingActionPromises:v21];
  [v17 addPromise:v16];

  v18 = v25;
  v19 = v16;

  return v16;
}

void __65__ASCAppOfferStateCenter_decorateBuyParamsForOffer_withActivity___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v6 = [v4 completionHandlerAdapter];
  [v5 decorateBuyParamsForOffer:v2 withActivity:v3 withReplyHandler:v6];
}

void __65__ASCAppOfferStateCenter_decorateBuyParamsForOffer_withActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ASCAppOfferStateCenter log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__ASCAppOfferStateCenter_decorateBuyParamsForOffer_withActivity___block_invoke_2_cold_1();
  }

  [*(a1 + 32) finishWithError:v3];
}

- (id)reinstallWatchAppWithID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  service = [(ASCAppOfferStateCenter *)self service];

  if (!service)
  {
    [(ASCAppOfferStateCenter *)self connectToService];
  }

  service2 = [(ASCAppOfferStateCenter *)self service];
  v7 = objc_alloc_init(MEMORY[0x277CEE5F0]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__ASCAppOfferStateCenter_reinstallWatchAppWithID___block_invoke;
  v17[3] = &unk_2781CC0C0;
  v18 = dCopy;
  v8 = v7;
  v19 = v8;
  v9 = dCopy;
  [service2 addSuccessBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__ASCAppOfferStateCenter_reinstallWatchAppWithID___block_invoke_3;
  v15[3] = &unk_2781CBB80;
  v10 = v8;
  v16 = v10;
  [service2 addErrorBlock:v15];
  pendingActionPromises = [(ASCAppOfferStateCenter *)self pendingActionPromises];
  [pendingActionPromises addBinaryPromise:v10];

  v12 = v16;
  v13 = v10;

  return v10;
}

void __50__ASCAppOfferStateCenter_reinstallWatchAppWithID___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__ASCAppOfferStateCenter_reinstallWatchAppWithID___block_invoke_2;
  v4[3] = &unk_2781CBB80;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 reinstallWatchAppWithID:v3 withReplyHandler:v4];
}

uint64_t __50__ASCAppOfferStateCenter_reinstallWatchAppWithID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithSuccess];
  }
}

- (id)reinstallWatchSystemAppWithBundleID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  service = [(ASCAppOfferStateCenter *)self service];

  if (!service)
  {
    [(ASCAppOfferStateCenter *)self connectToService];
  }

  service2 = [(ASCAppOfferStateCenter *)self service];
  v7 = objc_alloc_init(MEMORY[0x277CEE5F0]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__ASCAppOfferStateCenter_reinstallWatchSystemAppWithBundleID___block_invoke;
  v17[3] = &unk_2781CC0C0;
  v18 = dCopy;
  v8 = v7;
  v19 = v8;
  v9 = dCopy;
  [service2 addSuccessBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__ASCAppOfferStateCenter_reinstallWatchSystemAppWithBundleID___block_invoke_3;
  v15[3] = &unk_2781CBB80;
  v10 = v8;
  v16 = v10;
  [service2 addErrorBlock:v15];
  pendingActionPromises = [(ASCAppOfferStateCenter *)self pendingActionPromises];
  [pendingActionPromises addBinaryPromise:v10];

  v12 = v16;
  v13 = v10;

  return v10;
}

void __62__ASCAppOfferStateCenter_reinstallWatchSystemAppWithBundleID___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__ASCAppOfferStateCenter_reinstallWatchSystemAppWithBundleID___block_invoke_2;
  v4[3] = &unk_2781CBB80;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 reinstallWatchSystemAppWithBundleID:v3 withReplyHandler:v4];
}

uint64_t __62__ASCAppOfferStateCenter_reinstallWatchSystemAppWithBundleID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithSuccess];
  }
}

- (void)offer:(id)offer didChangeState:(id)state withMetadata:(id)metadata flags:(int64_t)flags
{
  v19 = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  stateCopy = state;
  metadataCopy = metadata;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  stateMachines = [(ASCAppOfferStateCenter *)self stateMachines];
  v14 = [stateMachines objectForKey:offerCopy];

  if (v14)
  {
    [v14 offerStateDidChange:stateCopy withMetadata:metadataCopy flags:flags];
  }

  else
  {
    v15 = +[ASCAppOfferStateCenter log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [offerCopy id];
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_21571A000, v15, OS_LOG_TYPE_INFO, "No state machine for to notify for change to %{public}@", &v17, 0xCu);
    }
  }
}

- (void)offer:(id)offer didChangeStatusText:(id)text
{
  v14 = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  textCopy = text;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  stateMachines = [(ASCAppOfferStateCenter *)self stateMachines];
  v9 = [stateMachines objectForKey:offerCopy];

  if (v9)
  {
    [v9 offerStatusTextDidChange:textCopy];
  }

  else
  {
    v10 = +[ASCAppOfferStateCenter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [offerCopy id];
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_21571A000, v10, OS_LOG_TYPE_INFO, "No state machine for to notify for change to %{public}@", &v12, 0xCu);
    }
  }
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  connection = [(ASCAppOfferStateCenter *)self connection];
  [(ASCDescriber *)v3 addSensitiveObject:connection withName:@"connection"];

  stateMachines = [(ASCAppOfferStateCenter *)self stateMachines];
  [(ASCDescriber *)v3 addSensitiveObject:stateMachines withName:@"stateMachines"];

  service = [(ASCAppOfferStateCenter *)self service];
  [(ASCDescriber *)v3 addSensitiveObject:service withName:@"service"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

void __42__ASCAppOfferStateCenter_connectToService__block_invoke_20_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) arrayByApplyingSelector:&sel_id];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __38__ASCAppOfferStateCenter_tryReconnect__block_invoke_2_cold_1()
{
  v0 = AMSLogableError();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __47__ASCAppOfferStateCenter_stateMachineForOffer___block_invoke_32_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) id];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __53__ASCAppOfferStateCenter_stopObservingStateForOffer___block_invoke_33_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) id];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __83__ASCAppOfferStateCenter_performActionOfOffer_withActivity_inContext_usingService___block_invoke_35_cold_1()
{
  v0 = AMSLogableError();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __57__ASCAppOfferStateCenter_viewAppForAppDistributionOffer___block_invoke_2_cold_1()
{
  v0 = AMSLogableError();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __65__ASCAppOfferStateCenter_decorateBuyParamsForOffer_withActivity___block_invoke_2_cold_1()
{
  v0 = AMSLogableError();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end