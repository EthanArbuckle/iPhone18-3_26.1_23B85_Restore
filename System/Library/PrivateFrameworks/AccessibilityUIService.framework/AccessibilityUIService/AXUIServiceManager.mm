@interface AXUIServiceManager
+ (id)sharedServiceManager;
+ (void)_releaseSharedServiceManager;
- (AXUIServiceManager)init;
- (AXUIServiceManagerDelegate)delegate;
- (BOOL)_extractAndHandleRegistration:(id)registration clientIdentifier:(id)identifier messageIdentifier:(unint64_t)messageIdentifier context:(id)context error:(id *)error;
- (BOOL)_registerClientWithIdentifier:(id)identifier connection:(id)connection serviceBundleName:(id)name initiatingMessageIdentifier:(unint64_t)messageIdentifier error:(id *)error;
- (BOOL)_serviceWithClass:(Class)class canProcessMessageWithIdentifier:(unint64_t)identifier fromClientWithConnection:(id)connection possibleRequiredEntitlements:(id *)entitlements needsToRequireEntitlements:(BOOL *)requireEntitlements;
- (BOOL)_start;
- (id)_clientMessengerWithIdentifier:(id)identifier;
- (id)_extractClientIdentifier:(id)identifier;
- (id)_sendSynchronousMessage:(id)message withIdentifier:(unint64_t)identifier toClientWithMessenger:(id)messenger error:(id *)error;
- (id)_serviceContextForClientWithIdentifier:(id)identifier;
- (id)_serviceContextForService:(id)service;
- (id)_serviceFromBundlePath:(id)path clientIdentifier:(id)identifier connection:(id)connection initiatingMessageIdentifier:(unint64_t)messageIdentifier stopSearching:(BOOL *)searching error:(id *)error;
- (id)_services;
- (id)_servicesForUniqueIdentifiers:(id)identifiers;
- (id)clientsForService:(id)service;
- (unint64_t)_servicesCount;
- (void)_applicationDidFinishLaunching;
- (void)_applicationDidReceiveMemoryWarning:(id)warning;
- (void)_handleConnection:(id)connection;
- (void)_processXPCObject:(id)object context:(id)context;
- (void)_registerForSystemAppDeath;
- (void)_unregisterAllClientsWithConnection:(id)connection;
- (void)_unregisterClientsIdentifiersLists:(id)lists serviceContexts:(id)contexts;
- (void)beginTransactionWithIdentifier:(id)identifier forService:(id)service;
- (void)dealloc;
- (void)endTransactionWithIdentifier:(id)identifier forService:(id)service;
- (void)invalidateConnectionListener;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)messageSender:(id)sender accessLaunchAngelConnectionForMessageWithContext:(void *)context usingBlock:(id)block;
- (void)messageSender:(id)sender willSendXPCMessage:(id)message context:(void *)context;
- (void)sendBoardServiceMessage:(id)message callback:(id)callback;
- (void)startLaunchAngel;
@end

@implementation AXUIServiceManager

+ (id)sharedServiceManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__AXUIServiceManager_sharedServiceManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedServiceManager__AXUIServiceManagerSharedInstanceOnceToken != -1)
  {
    dispatch_once(&sharedServiceManager__AXUIServiceManagerSharedInstanceOnceToken, block);
  }

  v2 = _AXUIServiceManagerSharedInstance;

  return v2;
}

uint64_t __42__AXUIServiceManager_sharedServiceManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  _AXUIServiceManagerSharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (void)_releaseSharedServiceManager
{
  v2 = _AXUIServiceManagerSharedInstance;
  _AXUIServiceManagerSharedInstance = 0;
}

- (AXUIServiceManager)init
{
  v20.receiver = self;
  v20.super_class = AXUIServiceManager;
  v2 = [(AXUIServiceManager *)&v20 init];
  v3 = objc_autoreleasePoolPush();
  if (v2)
  {
    v4 = objc_opt_class();
    v5 = [objc_alloc(MEMORY[0x277CE6948]) initWithParentClass:v4 description:@"ServicesAccessQueue" appendUUIDToLabel:0];
    v6 = [objc_alloc(MEMORY[0x277CE6948]) initWithParentClass:v4 description:@"EntitlementsCheckersAccessQueue" appendUUIDToLabel:0];
    v7 = [objc_alloc(MEMORY[0x277CE6948]) initWithParentClass:v4 description:@"ResumingConnectionsQueue" appendUUIDToLabel:0];
    v8 = objc_opt_new();
    v9 = v8;
    if (v5)
    {
      v10 = v6 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10 || v7 == 0 || v8 == 0)
    {
      v13 = v2;
      v2 = 0;
    }

    else
    {
      [v8 setDelegate:v2];
      [(AXUIServiceManager *)v2 setServicesAccessQueue:v5];
      [(AXUIServiceManager *)v2 setEntitlementsCheckersAccessQueue:v6];
      [(AXUIServiceManager *)v2 setResumingConnectionsQueue:v7];
      [(AXUIServiceManager *)v2 setMessageSender:v9];
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(AXUIServiceManager *)v2 setTransactions:dictionary];

      v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
      v16 = dispatch_queue_create("AXUIServiceManager-transactions", v15);
      [(AXUIServiceManager *)v2 setTransactionsQueue:v16];

      v17 = [[AXUIDisplayManager alloc] initWithServiceManager:v2];
      v13 = v17;
      if (v17)
      {
        [(AXUIServiceManager *)v2 setDisplayManager:v17];
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter addObserver:v2 selector:sel__applicationDidReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:0];
      }
    }
  }

  objc_autoreleasePoolPop(v3);
  return v2;
}

- (void)dealloc
{
  [(AXUIServiceManager *)self invalidateConnectionListener];
  server = [MEMORY[0x277CE7D28] server];
  [server registerAccessibilityUIServicePID:0];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76670] object:0];

  displayManager = [(AXUIServiceManager *)self displayManager];
  [displayManager _resetServiceManager];

  v6.receiver = self;
  v6.super_class = AXUIServiceManager;
  [(AXUIServiceManager *)&v6 dealloc];
}

- (void)invalidateConnectionListener
{
  connectionListener = self->_connectionListener;
  if (connectionListener)
  {
    [(BSServiceConnectionListener *)connectionListener invalidate];
    v4 = self->_connectionListener;
    self->_connectionListener = 0;
  }
}

- (void)beginTransactionWithIdentifier:(id)identifier forService:(id)service
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  serviceCopy = service;
  mEMORY[0x277CE6990] = [MEMORY[0x277CE6990] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6990] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6990] identifier];
    v11 = AXLoggerForFacility();

    v12 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = AXColorizeFormatLog();
      v14 = _AXStringForArgs();
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138543362;
        v24 = v14;
        _os_log_impl(&dword_23DBD1000, v11, v12, "%{public}@", buf, 0xCu);
      }
    }
  }

  [identifierCopy UTF8String];
  v15 = os_transaction_create();
  transactionsQueue = [(AXUIServiceManager *)self transactionsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__AXUIServiceManager_beginTransactionWithIdentifier_forService___block_invoke;
  block[3] = &unk_278BF2EA8;
  block[4] = self;
  v21 = identifierCopy;
  v22 = v15;
  v17 = v15;
  v18 = identifierCopy;
  dispatch_async(transactionsQueue, block);

  v19 = *MEMORY[0x277D85DE8];
}

void __64__AXUIServiceManager_beginTransactionWithIdentifier_forService___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) transactions];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (void)endTransactionWithIdentifier:(id)identifier forService:(id)service
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  serviceCopy = service;
  mEMORY[0x277CE6990] = [MEMORY[0x277CE6990] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6990] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6990] identifier];
    v11 = AXLoggerForFacility();

    v12 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = AXColorizeFormatLog();
      v18 = identifierCopy;
      v19 = serviceCopy;
      v14 = _AXStringForArgs();
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138543362;
        v23 = v14;
        _os_log_impl(&dword_23DBD1000, v11, v12, "%{public}@", buf, 0xCu);
      }
    }
  }

  v15 = [(AXUIServiceManager *)self transactionsQueue:v18];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__AXUIServiceManager_endTransactionWithIdentifier_forService___block_invoke;
  block[3] = &unk_278BF2ED0;
  block[4] = self;
  v21 = identifierCopy;
  v16 = identifierCopy;
  dispatch_async(v15, block);

  v17 = *MEMORY[0x277D85DE8];
}

void __62__AXUIServiceManager_endTransactionWithIdentifier_forService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transactions];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

- (id)clientsForService:(id)service
{
  serviceCopy = service;
  v5 = objc_opt_new();
  servicesAccessQueue = [(AXUIServiceManager *)self servicesAccessQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__AXUIServiceManager_clientsForService___block_invoke;
  v12[3] = &unk_278BF2EA8;
  v12[4] = self;
  v13 = serviceCopy;
  v7 = v5;
  v14 = v7;
  v8 = serviceCopy;
  [servicesAccessQueue performSynchronousReadingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

void __40__AXUIServiceManager_clientsForService___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) serviceContexts];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 service];
        v9 = *(a1 + 40);

        if (v8 == v9)
        {
          v10 = *(a1 + 48);
          v11 = [v7 clientMessengerList];
          [v10 axSafelyAddObjectsFromArray:v11];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_clientMessengerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  servicesAccessQueue = [(AXUIServiceManager *)self servicesAccessQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__AXUIServiceManager__clientMessengerWithIdentifier___block_invoke;
  v9[3] = &unk_278BF2EF8;
  v9[4] = self;
  v11 = &v12;
  v6 = identifierCopy;
  v10 = v6;
  [servicesAccessQueue performSynchronousReadingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __53__AXUIServiceManager__clientMessengerWithIdentifier___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) serviceContexts];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(&v11 + 1) + 8 * v6) clientMessengerWithIdentifier:{*(a1 + 40), v11}];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __144__AXUIServiceManager__sendAsynchronousMessage_withIdentifier_toClientWithMessenger_targetAccessQueue_completionRequiresWritingBlock_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (id)_sendSynchronousMessage:(id)message withIdentifier:(unint64_t)identifier toClientWithMessenger:(id)messenger error:(id *)error
{
  messengerCopy = messenger;
  messageCopy = message;
  messageSender = [(AXUIServiceManager *)self messageSender];
  v13 = [messageSender sendSynchronousMessage:messageCopy withIdentifier:identifier context:messengerCopy error:error];

  return v13;
}

- (void)messageSender:(id)sender accessLaunchAngelConnectionForMessageWithContext:(void *)context usingBlock:(id)block
{
  blockCopy = block;
  connection = [context connection];
  serviceConnection = [connection serviceConnection];
  remoteTarget = [serviceConnection remoteTarget];

  blockCopy[2](blockCopy, remoteTarget);
}

- (void)messageSender:(id)sender willSendXPCMessage:(id)message context:(void *)context
{
  v6 = *MEMORY[0x277CE77B8];
  messageCopy = message;
  clientIdentifier = [context clientIdentifier];
  v8 = clientIdentifier;
  xpc_dictionary_set_string(messageCopy, v6, [clientIdentifier UTF8String]);
}

- (BOOL)_start
{
  v3 = objc_autoreleasePoolPush();
  UIAccessibilityInstallSafeCategory();
  AXUISetMainBundleFakesSystemExtension(1);
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = *MEMORY[0x277CBE620];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __28__AXUIServiceManager__start__block_invoke_2;
  v14[3] = &unk_278BF2F68;
  v9 = localeIdentifier;
  v15 = v9;
  v10 = [defaultCenter addObserverForName:v7 object:0 queue:mainQueue usingBlock:v14];

  if (AXInPreboardScenario())
  {
    v11 = AXLogUI();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_23DBD1000, v11, OS_LOG_TYPE_DEFAULT, "AXUI Server started at PreBoard. This is unexpected, but we'll restart once we're done.", v13, 2u);
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, self, _preboardScenarioChanged, *MEMORY[0x277CE7C08], 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  objc_autoreleasePoolPop(v3);
  xpc_main(_AXUIServiceManagerHandleConnection);
}

void __28__AXUIServiceManager__start__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [v4 localeIdentifier];
  LOBYTE(v3) = [v3 isEqualToString:v5];

  if ((v3 & 1) == 0)
  {
    v7 = a1;
    v8 = AXLogUI();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v7 + 32);
      v10 = [MEMORY[0x277CBEAF8] currentLocale];
      v11 = [v10 localeIdentifier];
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_23DBD1000, v8, OS_LOG_TYPE_DEFAULT, "Current locale did change. Restarting AXUI Server %@ %@", buf, 0x16u);
    }

    exit(0);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)startLaunchAngel
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__AXUIServiceManager_startLaunchAngel__block_invoke;
  v5[3] = &unk_278BF2F90;
  v5[4] = self;
  v3 = [MEMORY[0x277CF32A0] listenerWithConfigurator:v5];
  [v3 activate];
  connectionListener = self->_connectionListener;
  self->_connectionListener = v3;
}

void __38__AXUIServiceManager_startLaunchAngel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"com.apple.accessibility"];
  [v3 setService:@"com.apple.AccessibilityUIServer"];
  [v3 setDelegate:*(a1 + 32)];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  v7 = AXUIServiceManagerLaunchAngelInterface();
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __64__AXUIServiceManager_listener_didReceiveConnection_withContext___block_invoke;
  v12 = &unk_278BF2FE0;
  v13 = v7;
  selfCopy = self;
  v8 = v7;
  [connectionCopy configureConnection:&v9];
  [connectionCopy activate];
}

void __64__AXUIServiceManager_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTargetQueue:MEMORY[0x277D85CD0]];
  v4 = [MEMORY[0x277CF32C8] userInitiated];
  [v3 setServiceQuality:v4];

  [v3 setInterface:*(a1 + 32)];
  [v3 setInterfaceTarget:*(a1 + 40)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__AXUIServiceManager_listener_didReceiveConnection_withContext___block_invoke_2;
  v5[3] = &unk_278BF2FB8;
  v5[4] = *(a1 + 40);
  [v3 setInvalidationHandler:v5];
}

void __64__AXUIServiceManager_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 remoteProcess];
  [v4 setProcessHandle:v5];

  [v4 setServiceConnection:v3];
  v6 = AXLogIPC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_23DBD1000, v6, OS_LOG_TYPE_DEFAULT, "Invalidation handler from connection: %@", &v8, 0xCu);
  }

  [*(a1 + 32) _unregisterAllClientsWithConnection:v4];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendBoardServiceMessage:(id)message callback:(id)callback
{
  callbackCopy = callback;
  messageCopy = message;
  v11 = objc_opt_new();
  [v11 setXpc_handler:callbackCopy];

  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  [v11 setProcessHandle:remoteProcess];

  currentContext2 = [MEMORY[0x277CF3280] currentContext];
  [v11 setServiceConnection:currentContext2];

  [(AXUIServiceManager *)self _processXPCObject:messageCopy context:v11];
}

- (void)_handleConnection:(id)connection
{
  connectionCopy = connection;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = *MEMORY[0x277CE77E0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  connectionCopy = [v5 initWithFormat:@"%@.%@.%@-%p", v6, v8, uUIDString, connectionCopy];

  v12 = dispatch_queue_create([connectionCopy UTF8String], 0);
  xpc_connection_set_target_queue(connectionCopy, v12);
  objc_initWeak(&location, connectionCopy);
  objc_initWeak(&from, self);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __40__AXUIServiceManager__handleConnection___block_invoke;
  handler[3] = &unk_278BF3008;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  xpc_connection_set_event_handler(connectionCopy, handler);
  resumingConnectionsQueue = [(AXUIServiceManager *)self resumingConnectionsQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__AXUIServiceManager__handleConnection___block_invoke_2;
  v15[3] = &unk_278BF2ED0;
  v15[4] = self;
  v14 = connectionCopy;
  v16 = v14;
  [resumingConnectionsQueue performAsynchronousWritingBlock:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __40__AXUIServiceManager__handleConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v6 setConnection:WeakRetained];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 _processXPCObject:v3 context:v6];
}

void __40__AXUIServiceManager__handleConnection___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) shouldAllowServicesToProcessMessages])
  {
    v2 = *(a1 + 40);

    xpc_connection_resume(v2);
  }

  else
  {
    v3 = [*(a1 + 32) pausedConnections];
    if (!v3)
    {
      v4 = objc_opt_new();
      [*(a1 + 32) setPausedConnections:v4];
      v3 = v4;
    }

    v5 = v3;
    [v3 ax_enqueueObject:*(a1 + 40)];
  }
}

- (void)_processXPCObject:(id)object context:(id)context
{
  v92 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  contextCopy = context;
  v8 = MEMORY[0x23EEF9360](objectCopy);
  if (v8 == MEMORY[0x277D86468])
  {
    v10 = objectCopy;
    uint64 = xpc_dictionary_get_uint64(v10, *MEMORY[0x277CE77C8]);
    if (!uint64)
    {
      v13 = AXLogUI();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [AXUIServiceManager _processXPCObject:v13 context:?];
      }

      goto LABEL_81;
    }

    v12 = uint64;
    v13 = [(AXUIServiceManager *)self _extractClientIdentifier:v10];
    *v81 = 0;
    v82 = v81;
    v83 = 0x3032000000;
    v84 = __Block_byref_object_copy_;
    v85 = __Block_byref_object_dispose_;
    v86 = 0;
    v80 = 0;
    v14 = [(AXUIServiceManager *)self _extractAndHandleRegistration:v10 clientIdentifier:v13 messageIdentifier:v12 context:contextCopy error:&v80];
    objc_storeStrong(&v86, v80);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__AXUIServiceManager__processXPCObject_context___block_invoke;
    aBlock[3] = &unk_278BF3078;
    v15 = contextCopy;
    v77 = v15;
    v16 = v10;
    v78 = v16;
    v79 = v14;
    v17 = _Block_copy(aBlock);
    if (*(v82 + 5))
    {
LABEL_78:
      v48 = *(v82 + 5);
      if (v48)
      {
        (*(v17 + 2))(v17, 0, v48, 0);
      }

      _Block_object_dispose(v81, 8);
LABEL_81:

      goto LABEL_82;
    }

    if (!v13)
    {
      v28 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7778] description:@"Couldn't find client identifier associated to message."];
      v19 = *(v82 + 5);
      *(v82 + 5) = v28;
LABEL_77:

      goto LABEL_78;
    }

    v18 = [(AXUIServiceManager *)self _serviceContextForClientWithIdentifier:v13];
    v19 = v18;
    if (v12 == *MEMORY[0x277CE77A0] && v18)
    {
      v20 = AXLogAssertions();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v91 = v13;
        _os_log_impl(&dword_23DBD1000, v20, OS_LOG_TYPE_DEFAULT, "AXUIServer received Clean up from client: %@", buf, 0xCu);
      }

      v88 = v13;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
      v89 = v54;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
      v87 = v19;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
      [(AXUIServiceManager *)self _unregisterClientsIdentifiersLists:v21 serviceContexts:v22];

      goto LABEL_77;
    }

    buf[0] = 0;
    service = [v18 service];
    if (service)
    {
      v29 = objc_opt_class();
      v75 = 0;
      v30 = [(AXUIServiceManager *)self _serviceWithClass:v29 canProcessMessageWithIdentifier:v12 fromClientWithConnection:v15 possibleRequiredEntitlements:&v75 needsToRequireEntitlements:buf];
      v55 = v75;
      if (v30)
      {
        v52 = xpc_dictionary_get_value(v16, *MEMORY[0x277CE77C0]);
        if (v52 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v31 = v82;
          obj = *(v82 + 5);
          v32 = [MEMORY[0x277CE69B8] dictionaryFromXPCMessage:v52 error:&obj];
          objc_storeStrong(v31 + 5, obj);
          if ([v32 count])
          {
            [service processInitializationMessage:v32];
          }
        }

        v33 = v82;
        if (*(v82 + 5) || (v34 = xpc_dictionary_get_BOOL(v16, *MEMORY[0x277CE77D0]), v33 = v82, v34))
        {
          v35 = 0;
        }

        else
        {
          v73 = *(v82 + 5);
          v35 = [MEMORY[0x277CE69B8] dictionaryFromXPCMessage:v16 error:&v73];
          objc_storeStrong(v33 + 5, v73);
          v33 = v82;
        }

        if (*(v33 + 5))
        {
          goto LABEL_75;
        }

        v50 = v35;
        v36 = service;
        if (objc_opt_respondsToSelector() & 1) != 0 && ((objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector()))
        {
          if ([service messageWithIdentifierShouldBeProcessedAsynchronously:v12])
          {
            if (objc_opt_respondsToSelector())
            {
              v70[0] = MEMORY[0x277D85DD0];
              v70[1] = 3221225472;
              v70[2] = __48__AXUIServiceManager__processXPCObject_context___block_invoke_378;
              v70[3] = &unk_278BF30C8;
              v70[4] = service;
              v70[5] = v50;
              v72 = v12;
              v70[6] = v13;
              v70[7] = v19;
              v71 = v17;
              v51 = _Block_copy(v70);

              v37 = v70;
            }

            else
            {
              v69[0] = MEMORY[0x277D85DD0];
              v69[1] = 3221225472;
              v69[2] = __48__AXUIServiceManager__processXPCObject_context___block_invoke_3_380;
              v69[3] = &unk_278BF30F0;
              v69[4] = service;
              v69[5] = v50;
              v69[8] = v12;
              v69[6] = v13;
              v69[7] = v17;
              v51 = _Block_copy(v69);
              v37 = v69;
            }

            v40 = v37 + 4;
            v41 = v37 + 5;
            v42 = v37 + 6;

            v36 = service;
            if (v51)
            {
LABEL_67:
              if ((objc_opt_respondsToSelector() & 1) == 0 || ([v36 accessQueueForProcessingMessageWithIdentifier:v12], (mainAccessQueue = objc_claimAutoreleasedReturnValue()) == 0))
              {
                mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
              }

              if ((objc_opt_respondsToSelector() & 1) != 0 && ![v36 messageWithIdentifierRequiresWritingBlock:v12])
              {
                [mainAccessQueue performAsynchronousReadingBlock:v51];
              }

              else
              {
                [mainAccessQueue performAsynchronousWritingBlock:v51];
              }

              v35 = v50;
LABEL_75:

              v39 = v52;
              goto LABEL_76;
            }
          }
        }

        if (objc_opt_respondsToSelector())
        {
          v43 = v36;
          v44 = v62;
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __48__AXUIServiceManager__processXPCObject_context___block_invoke_5;
          v62[3] = &unk_278BF3118;
          v62[4] = v43;
          v63 = v50;
          v68 = v12;
          v64 = v13;
          v65 = v19;
          v67 = v81;
          v66 = v17;
          v51 = _Block_copy(v62);
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v46 = AXLogUI();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
            {
              [AXUIServiceManager _processXPCObject:v46 context:?];
            }

            v51 = 0;
            goto LABEL_66;
          }

          v45 = v36;
          v44 = v56;
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __48__AXUIServiceManager__processXPCObject_context___block_invoke_6;
          v56[3] = &unk_278BF3140;
          v56[4] = v45;
          v57 = v50;
          v61 = v12;
          v58 = v13;
          v60 = v81;
          v59 = v17;
          v51 = _Block_copy(v56);
        }

        v46 = v44[4];
LABEL_66:

        v36 = service;
        goto LABEL_67;
      }

      if (buf[0] == 1)
      {
        [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7780] description:{@"The service must require entitlements for this operation: %d", v12}];
      }

      else
      {
        [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7768] description:{@"One of the following entitlements is required: %@ for this operation: %d. See guidance in rdar://126183364.", v55, v12}];
      }
      v38 = ;
    }

    else
    {
      v38 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7778] description:{@"Couldn't find service associated to client identifier: %@", v13}];
      v55 = 0;
    }

    v39 = *(v82 + 5);
    *(v82 + 5) = v38;
LABEL_76:

    goto LABEL_77;
  }

  if (v8 == MEMORY[0x277D86480])
  {
    if (objectCopy == MEMORY[0x277D863F8])
    {
      v27 = AXLogUI();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [AXUIServiceManager _processXPCObject:v27 context:?];
      }

      [(AXUIServiceManager *)self _unregisterAllClientsWithConnection:contextCopy];
    }

    else
    {
      v23 = objectCopy == MEMORY[0x277D86420];
      v24 = AXLogUI();
      v25 = v24;
      if (v23)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v81 = 0;
          _os_log_impl(&dword_23DBD1000, v25, OS_LOG_TYPE_DEFAULT, "Connection with client was supposed to be terminated imminently, but we are ignoring it for now.", v81, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [AXUIServiceManager _processXPCObject:objectCopy context:v25];
        }
      }
    }
  }

  else
  {
    if (objectCopy)
    {
      v9 = MEMORY[0x23EEF92E0](objectCopy);
    }

    else
    {
      v9 = 0;
    }

    v26 = AXLogUI();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [AXUIServiceManager _processXPCObject:v9 context:v26];
    }

    if (v9)
    {
      free(v9);
    }
  }

LABEL_82:

  v49 = *MEMORY[0x277D85DE8];
}

void __48__AXUIServiceManager__processXPCObject_context___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) connection];

  if (v10)
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __48__AXUIServiceManager__processXPCObject_context___block_invoke_2;
    v20[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
    v21 = *(a1 + 48);
    [MEMORY[0x277CE7790] sendReply:v7 withError:v8 andOriginalXPCMessage:v11 usingConnection:v12 customDataAddingBlock:v20];
  }

  else
  {
    if (v7)
    {
      v13 = _CFXPCCreateXPCMessageWithCFObject();
    }

    else
    {
      v14 = [MEMORY[0x277CBEAC0] dictionary];
      v13 = _CFXPCCreateXPCMessageWithCFObject();
    }

    if (*(a1 + 48) == 1)
    {
      xpc_dictionary_set_BOOL(v13, *MEMORY[0x277CE77A8], 1);
    }

    v15 = [*(a1 + 32) xpc_handler];

    if (v15)
    {
      v16 = [*(a1 + 32) xpc_handler];
      (v16)[2](v16, v13, v8);
    }
  }

  if (*(a1 + 48) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v17 = [MEMORY[0x277CE6948] backgroundAccessQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __48__AXUIServiceManager__processXPCObject_context___block_invoke_3;
    v18[3] = &unk_278BF3050;
    v19 = v9;
    [v17 performAsynchronousWritingBlock:v18];
  }
}

void __48__AXUIServiceManager__processXPCObject_context___block_invoke_2(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 32) == 1)
  {
    xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277CE77A8], 1);
  }
}

void __48__AXUIServiceManager__processXPCObject_context___block_invoke_378(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) pidForClientWithIdentifier:v5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__AXUIServiceManager__processXPCObject_context___block_invoke_2_379;
  v7[3] = &unk_278BF30A0;
  v9 = *(a1 + 64);
  v8 = *(a1 + 32);
  [v2 processMessageAsynchronously:v3 withIdentifier:v4 fromClientWithIdentifier:v5 pid:v6 completion:v7];
}

void __48__AXUIServiceManager__processXPCObject_context___block_invoke_3_380(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__AXUIServiceManager__processXPCObject_context___block_invoke_4;
  v6[3] = &unk_278BF30A0;
  v5 = *(a1 + 64);
  v8 = *(a1 + 56);
  v7 = *(a1 + 32);
  [v2 processMessageAsynchronously:v3 withIdentifier:v5 fromClientWithIdentifier:v4 completion:v6];
}

void __48__AXUIServiceManager__processXPCObject_context___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 80);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) pidForClientWithIdentifier:v5];
  v7 = *(*(a1 + 72) + 8);
  obj = *(v7 + 40);
  v8 = [v2 processMessage:v3 withIdentifier:v4 fromClientWithIdentifier:v5 pid:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(*(a1 + 72) + 8) + 40);
  v10 = *(a1 + 32);
  (*(*(a1 + 64) + 16))();
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

void __48__AXUIServiceManager__processXPCObject_context___block_invoke_6(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v2 processMessage:v3 withIdentifier:v5 fromClientWithIdentifier:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(*(a1[8] + 8) + 40);
  v9 = a1[4];
  (*(a1[7] + 16))();
  v10 = *(a1[8] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

- (id)_extractClientIdentifier:(id)identifier
{
  string = xpc_dictionary_get_string(identifier, *MEMORY[0x277CE77B8]);
  if (string)
  {
    string = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
  }

  return string;
}

- (BOOL)_extractAndHandleRegistration:(id)registration clientIdentifier:(id)identifier messageIdentifier:(unint64_t)messageIdentifier context:(id)context error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  string = xpc_dictionary_get_string(registration, *MEMORY[0x277CE77D8]);
  v15 = 0;
  if (identifierCopy && string)
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
    v17 = [(AXUIServiceManager *)self _serviceContextForClientWithIdentifier:identifierCopy];
    if (v17 || [(AXUIServiceManager *)self _registerClientWithIdentifier:identifierCopy connection:contextCopy serviceBundleName:v16 initiatingMessageIdentifier:messageIdentifier error:error])
    {
      v15 = 1;
    }

    else
    {
      v20 = AXLogUI();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *error;
        v22 = 138412802;
        v23 = identifierCopy;
        v24 = 2112;
        v25 = v16;
        v26 = 2112;
        v27 = v21;
        _os_log_error_impl(&dword_23DBD1000, v20, OS_LOG_TYPE_ERROR, "Could not register client. ID=%@ serviceBundleName=%@ error=%@", &v22, 0x20u);
      }

      v15 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_serviceWithClass:(Class)class canProcessMessageWithIdentifier:(unint64_t)identifier fromClientWithConnection:(id)connection possibleRequiredEntitlements:(id *)entitlements needsToRequireEntitlements:(BOOL *)requireEntitlements
{
  connectionCopy = connection;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v13 = NSStringFromClass(class);
  entitlementsCheckersAccessQueue = [(AXUIServiceManager *)self entitlementsCheckersAccessQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __153__AXUIServiceManager__serviceWithClass_canProcessMessageWithIdentifier_fromClientWithConnection_possibleRequiredEntitlements_needsToRequireEntitlements___block_invoke;
  v18[3] = &unk_278BF3168;
  v18[4] = self;
  v15 = v13;
  v19 = v15;
  v21 = &v26;
  classCopy = class;
  identifierCopy = identifier;
  v16 = connectionCopy;
  v20 = v16;
  entitlementsCopy = entitlements;
  requireEntitlementsCopy = requireEntitlements;
  [entitlementsCheckersAccessQueue performSynchronousWritingBlock:v18];

  LOBYTE(requireEntitlements) = *(v27 + 24);
  _Block_object_dispose(&v26, 8);

  return requireEntitlements;
}

void __153__AXUIServiceManager__serviceWithClass_canProcessMessageWithIdentifier_fromClientWithConnection_possibleRequiredEntitlements_needsToRequireEntitlements___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entitlementsCheckers];
  if (!v2)
  {
    v4 = objc_opt_new();
    [*(a1 + 32) setEntitlementsCheckers:v4];
    v2 = v4;
  }

  v5 = v2;
  v3 = [v2 objectForKey:*(a1 + 40)];
  if (!v3)
  {
    v3 = [[AXUIServiceEntitlementChecker alloc] initWithServiceClass:*(a1 + 64)];
    [v5 setObject:v3 forKey:*(a1 + 40)];
  }

  *(*(*(a1 + 56) + 8) + 24) = [(AXUIServiceEntitlementChecker *)v3 serviceCanProcessMessageWithIdentifier:*(a1 + 72) fromClientWithConnection:*(a1 + 48) possibleRequiredEntitlements:*(a1 + 80) needsToRequireEntitlements:*(a1 + 88)];
}

- (void)_registerForSystemAppDeath
{
  server = [MEMORY[0x277CE7E58] server];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__AXUIServiceManager__registerForSystemAppDeath__block_invoke;
  v4[3] = &unk_278BF3190;
  v4[4] = self;
  [server pid:v4];
}

void __48__AXUIServiceManager__registerForSystemAppDeath__block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v8 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__AXUIServiceManager__registerForSystemAppDeath__block_invoke_2;
    block[3] = &unk_278BF3050;
    block[4] = *(a1 + 32);
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CF0CC0]);
    v5 = [v4 initWithPID:a2 queue:MEMORY[0x277D85CD0] deathHandler:&__block_literal_global_397];
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    MEMORY[0x2821F96F8]();
  }
}

void __48__AXUIServiceManager__registerForSystemAppDeath__block_invoke_3()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  [v0 terminateWithSuccess];
}

- (void)_applicationDidFinishLaunching
{
  resumingConnectionsQueue = [(AXUIServiceManager *)self resumingConnectionsQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__AXUIServiceManager__applicationDidFinishLaunching__block_invoke;
  v5[3] = &unk_278BF3050;
  v5[4] = self;
  [resumingConnectionsQueue performAsynchronousWritingBlock:v5];

  server = [MEMORY[0x277CE7D28] server];
  [server registerAccessibilityUIServicePID:getpid()];

  [(AXUIServiceManager *)self _registerForSystemAppDeath];
}

void __52__AXUIServiceManager__applicationDidFinishLaunching__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setShouldAllowServicesToProcessMessages:1];
  v2 = [*(a1 + 32) pausedConnections];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        xpc_connection_resume(*(*(&v8 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) setPausedConnections:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_applicationDidReceiveMemoryWarning:(id)warning
{
  entitlementsCheckersAccessQueue = [(AXUIServiceManager *)self entitlementsCheckersAccessQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__AXUIServiceManager__applicationDidReceiveMemoryWarning___block_invoke;
  v5[3] = &unk_278BF3050;
  v5[4] = self;
  [entitlementsCheckersAccessQueue performAsynchronousWritingBlock:v5];
}

- (BOOL)_registerClientWithIdentifier:(id)identifier connection:(id)connection serviceBundleName:(id)name initiatingMessageIdentifier:(unint64_t)messageIdentifier error:(id *)error
{
  v68[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  connectionCopy = connection;
  nameCopy = name;
  v11 = AXSystemRootDirectory();
  v12 = [v11 stringByAppendingPathComponent:@"System/Library/AccessibilityBundles"];
  stringByStandardizingPath = [v12 stringByStandardizingPath];

  v14 = AXSystemRootDirectory();
  v15 = [v14 stringByAppendingPathComponent:@"Developer/Library/PrivateFrameworks/AccessibilityAudit.framework"];
  stringByStandardizingPath2 = [v15 stringByStandardizingPath];

  v17 = AXSystemRootDirectory();
  v18 = [v17 stringByAppendingPathComponent:@"AppleInternal/Library/AccessibilityUIServices"];
  stringByStandardizingPath3 = [v18 stringByStandardizingPath];

  v68[0] = stringByStandardizingPath;
  v68[1] = stringByStandardizingPath2;
  v46 = stringByStandardizingPath3;
  v68[2] = stringByStandardizingPath3;
  [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:3];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v20 = v62 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v59 objects:v67 count:16];
  obj = v20;
  if (!v21)
  {

    v32 = 0;
    v23 = 0;
    v33 = 0;
LABEL_19:
    v34 = v46;
    if (!error)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v22 = v21;
  v44 = stringByStandardizingPath2;
  v45 = stringByStandardizingPath;
  errorCopy = error;
  v23 = 0;
  v24 = *v60;
  v47 = *MEMORY[0x277CE7770];
LABEL_3:
  v25 = 0;
  while (1)
  {
    if (*v60 != v24)
    {
      objc_enumerationMutation(v20);
    }

    v26 = *(*(&v59 + 1) + 8 * v25);
    v27 = [nameCopy stringByAppendingPathExtension:@"axuiservice"];
    v28 = [v26 stringByAppendingPathComponent:v27];
    stringByStandardizingPath4 = [v28 stringByStandardizingPath];

    if (([stringByStandardizingPath4 hasPrefix:v26] & 1) == 0)
    {
      if (errorCopy)
      {
        v31 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:v47 description:{@"Invalid service bundle path: %@", stringByStandardizingPath4}];

        v23 = v31;
      }

      goto LABEL_13;
    }

    buf[0] = 0;
    v58 = 0;
    v30 = [(AXUIServiceManager *)self _serviceFromBundlePath:stringByStandardizingPath4 clientIdentifier:identifierCopy connection:connectionCopy initiatingMessageIdentifier:messageIdentifier stopSearching:buf error:&v58];
    v23 = v58;
    if (buf[0])
    {
      break;
    }

    if (v30)
    {

      goto LABEL_22;
    }

LABEL_13:
    if (v22 == ++v25)
    {
      v22 = [v20 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }
  }

  if (!v30)
  {
LABEL_18:
    v32 = 0;
    v33 = 0;
    error = errorCopy;
    stringByStandardizingPath2 = v44;
    stringByStandardizingPath = v45;
    goto LABEL_19;
  }

LABEL_22:
  servicesAccessQueue = [(AXUIServiceManager *)self servicesAccessQueue];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __115__AXUIServiceManager__registerClientWithIdentifier_connection_serviceBundleName_initiatingMessageIdentifier_error___block_invoke;
  v54[3] = &unk_278BF31B8;
  v54[4] = self;
  v33 = v30;
  v55 = v33;
  v39 = identifierCopy;
  v56 = v39;
  v57 = connectionCopy;
  [servicesAccessQueue performSynchronousWritingBlock:v54];

  v40 = AXLogAssertions();
  error = errorCopy;
  stringByStandardizingPath2 = v44;
  stringByStandardizingPath = v45;
  v34 = v46;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v64 = v33;
    v65 = 2112;
    v66 = v39;
    _os_log_impl(&dword_23DBD1000, v40, OS_LOG_TYPE_DEFAULT, "Registered service/client: %@ %@", buf, 0x16u);
  }

  displayManager = [(AXUIServiceManager *)self displayManager];
  [displayManager serviceDidConnect:v33 clientWithIdentifier:v39];

  v42 = +[AXUIAssertionManager sharedInstance];
  [v42 acquireAssertionIfNeeded];

  v43 = +[AXUIAssertionManager sharedInstance];
  [v43 acquireAssertionUIIfNeededForService:v33 clientIdentifier:v39];

  v32 = 1;
  if (errorCopy)
  {
LABEL_20:
    v35 = v23;
    *error = v23;
  }

LABEL_21:

  v36 = *MEMORY[0x277D85DE8];
  return v32;
}

void __115__AXUIServiceManager__registerClientWithIdentifier_connection_serviceBundleName_initiatingMessageIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) _serviceContextForService:*(a1 + 40)];
  objc_autoreleasePoolPop(v2);
  if (!v6)
  {
    v3 = [*(a1 + 32) serviceContexts];
    if (!v3)
    {
      v3 = objc_opt_new();
      [*(a1 + 32) setServiceContexts:v3];
    }

    v4 = [*(a1 + 32) lastUsedServiceIdentifier];
    [*(a1 + 32) setLastUsedServiceIdentifier:v4 + 1];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4 + 1];
    v6 = [[AXUIServiceContext alloc] initWithService:*(a1 + 40) serviceIdentifier:v5];
    [v3 addObject:?];
  }

  [(AXUIServiceContext *)v6 addClientWithIdentifier:*(a1 + 48) connection:*(a1 + 56)];
}

- (id)_serviceFromBundlePath:(id)path clientIdentifier:(id)identifier connection:(id)connection initiatingMessageIdentifier:(unint64_t)messageIdentifier stopSearching:(BOOL *)searching error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  identifierCopy = identifier;
  connectionCopy = connection;
  v17 = [MEMORY[0x277CCA8D8] bundleWithPath:pathCopy];
  v18 = v17;
  if (!v17)
  {
    [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7770] description:{@"Failed to create service bundle at path: %@", pathCopy}];
    *error = infoDictionary = 0;
    goto LABEL_37;
  }

  if (([v17 isLoaded] & 1) == 0 && (objc_msgSend(v18, "loadAndReturnError:", error) & 1) == 0 && !*error)
  {
    *error = [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7770] description:{@"Failed to load service bundle at path: %@", pathCopy}];
  }

  if ([v18 isLoaded])
  {
    searchingCopy = searching;
    principalClass = [v18 principalClass];
    v20 = AXLogUI();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      bundlePath = [v18 bundlePath];
      *buf = 138412546;
      v51 = bundlePath;
      v52 = 2112;
      v53 = principalClass;
      _os_log_impl(&dword_23DBD1000, v20, OS_LOG_TYPE_DEFAULT, "AXUIServer will attempt to load principal class from bundle: %@: '%@'", buf, 0x16u);
    }

    v49 = 0;
    if (principalClass)
    {
      v48 = 0;
      v22 = [(AXUIServiceManager *)self _serviceWithClass:principalClass canProcessMessageWithIdentifier:messageIdentifier fromClientWithConnection:connectionCopy possibleRequiredEntitlements:&v48 needsToRequireEntitlements:&v49];
      v23 = v48;
      if (v22)
      {
        v24 = objc_opt_respondsToSelector();
        v25 = AXLogUI();
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v24)
        {
          if (v26)
          {
            *buf = 138412290;
            v51 = principalClass;
            _os_log_impl(&dword_23DBD1000, v25, OS_LOG_TYPE_DEFAULT, "Principal class does respond to sharedInstance. Calling sharedInstance on '%@'", buf, 0xCu);
          }

          sharedInstance = [principalClass sharedInstance];
        }

        else
        {
          if (v26)
          {
            *buf = 138412290;
            v51 = principalClass;
            _os_log_impl(&dword_23DBD1000, v25, OS_LOG_TYPE_DEFAULT, "Principal class does not respond to sharedInstance. Calling new on '%@'", buf, 0xCu);
          }

          sharedInstance = objc_opt_new();
        }

        infoDictionary = sharedInstance;
        if (sharedInstance)
        {
          searching = searchingCopy;
          if ([sharedInstance conformsToProtocol:&unk_2850140C0])
          {
            goto LABEL_35;
          }

          *error = [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7770] description:{@"Service instance does not conform to service protocol: %@.", infoDictionary}];
LABEL_34:

          infoDictionary = 0;
LABEL_35:

          if (!*error)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        v38 = MEMORY[0x277CCA9B8];
        v39 = *MEMORY[0x277CE7770];
        infoDictionary = NSStringFromClass(principalClass);
        v42 = infoDictionary;
        v35 = @"Failed to instantiate service of class %@";
        v36 = v38;
        v37 = v39;
      }

      else
      {
        v33 = MEMORY[0x277CCA9B8];
        if (v49 == 1)
        {
          v34 = *MEMORY[0x277CE7780];
          infoDictionary = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:messageIdentifier];
          v42 = principalClass;
          v43 = infoDictionary;
          v35 = @"Service: '%@' unable to process message:'%@'. The service needs to require entitlements.";
        }

        else
        {
          v34 = *MEMORY[0x277CE7768];
          infoDictionary = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:messageIdentifier];
          v45 = identifierCopy;
          v46 = [connectionCopy pid];
          v43 = infoDictionary;
          v44 = v23;
          v42 = principalClass;
          v35 = @"Service: '%@' unable to process message:'%@'. Entitlements may be missing. See guidance in rdar://126183364. required: %@ [client identifier: %@:%d]";
        }

        v36 = v33;
        v37 = v34;
      }

      *error = [v36 ax_errorWithDomain:v37 description:{v35, v42, v43, v44, v45, v46}];
    }

    else
    {
      v29 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CE7770];
      infoDictionary = [v18 infoDictionary];
      v31 = [infoDictionary objectForKeyedSubscript:@"NSPrincipalClass"];
      *error = [v29 ax_errorWithDomain:v30 description:{@"Couldn't find principal class for service bundle at path: %@ %@", pathCopy, v31}];

      v23 = 0;
    }

    searching = searchingCopy;
    goto LABEL_34;
  }

  if (*error)
  {
    infoDictionary = 0;
LABEL_36:
    *searching = 1;
    goto LABEL_37;
  }

  v32 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7770] description:{@"Service bundle still not loaded, weird... Service bundle path: %@", pathCopy}];
  infoDictionary = 0;
  *error = v32;
  if (v32)
  {
    goto LABEL_36;
  }

LABEL_37:

  v40 = *MEMORY[0x277D85DE8];

  return infoDictionary;
}

- (void)_unregisterAllClientsWithConnection:(id)connection
{
  connectionCopy = connection;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  servicesAccessQueue = [(AXUIServiceManager *)self servicesAccessQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__AXUIServiceManager__unregisterAllClientsWithConnection___block_invoke;
  v11[3] = &unk_278BF3208;
  v11[4] = self;
  v6 = connectionCopy;
  v12 = v6;
  v13 = &v21;
  v14 = &v15;
  [servicesAccessQueue performSynchronousReadingBlock:v11];
  [(AXUIServiceManager *)self _unregisterClientsIdentifiersLists:v16[5] serviceContexts:v22[5]];
  entitlementsCheckersAccessQueue = [(AXUIServiceManager *)self entitlementsCheckersAccessQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__AXUIServiceManager__unregisterAllClientsWithConnection___block_invoke_3;
  v9[3] = &unk_278BF2ED0;
  v9[4] = self;
  v8 = v6;
  v10 = v8;
  [entitlementsCheckersAccessQueue performSynchronousWritingBlock:v9];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
}

void __58__AXUIServiceManager__unregisterAllClientsWithConnection___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) serviceContexts];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v2 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v2)
  {
    v3 = *v26;
    do
    {
      v4 = 0;
      do
      {
        if (*v26 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v25 + 1) + 8 * v4);
        v19 = 0;
        v20 = &v19;
        v21 = 0x3032000000;
        v22 = __Block_byref_object_copy_;
        v23 = __Block_byref_object_dispose_;
        v24 = 0;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __58__AXUIServiceManager__unregisterAllClientsWithConnection___block_invoke_2;
        v16[3] = &unk_278BF31E0;
        v17 = *(a1 + 40);
        v18 = &v19;
        [v5 enumerateClientsUsingBlock:v16];
        if (v20[5])
        {
          v6 = *(*(*(a1 + 48) + 8) + 40);
          if (!v6)
          {
            v7 = objc_opt_new();
            v8 = *(*(a1 + 48) + 8);
            v9 = *(v8 + 40);
            *(v8 + 40) = v7;

            v6 = *(*(*(a1 + 48) + 8) + 40);
          }

          [v6 addObject:v5];
          v10 = *(*(*(a1 + 56) + 8) + 40);
          if (!v10)
          {
            v11 = objc_opt_new();
            v12 = *(*(a1 + 56) + 8);
            v13 = *(v12 + 40);
            *(v12 + 40) = v11;

            v10 = *(*(*(a1 + 56) + 8) + 40);
          }

          [v10 addObject:v20[5]];
        }

        _Block_object_dispose(&v19, 8);
        ++v4;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v2);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __58__AXUIServiceManager__unregisterAllClientsWithConnection___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([*(a1 + 32) isEqual:v5])
  {
    [v5 setXpc_handler:0];
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (!v6)
    {
      v7 = objc_opt_new();
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v6 addObject:v10];
  }
}

void __58__AXUIServiceManager__unregisterAllClientsWithConnection___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) entitlementsCheckers];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__AXUIServiceManager__unregisterAllClientsWithConnection___block_invoke_4;
  v3[3] = &unk_278BF3230;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)_unregisterClientsIdentifiersLists:(id)lists serviceContexts:(id)contexts
{
  v61 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  contextsCopy = contexts;
  v7 = AXLogAssertions();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v58 = listsCopy;
    v59 = 2112;
    v60 = contextsCopy;
    _os_log_impl(&dword_23DBD1000, v7, OS_LOG_TYPE_DEFAULT, "Unregister: %@ %@", buf, 0x16u);
  }

  v8 = [contextsCopy count];
  if (v8 != [listsCopy count])
  {
    _AXAssert();
  }

  if (v8)
  {
    v9 = 0;
    v37 = contextsCopy;
    v38 = listsCopy;
    v36 = v8;
    do
    {
      v10 = [contextsCopy objectAtIndex:v9];
      service = [v10 service];
      if (objc_opt_respondsToSelector())
      {
        v39 = v10;
        v40 = v9;
        v12 = [listsCopy objectAtIndex:v9];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v52;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v52 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v51 + 1) + 8 * i);
              [service connectionWillBeInterruptedForClientWithIdentifier:v17];
              v18 = AXLogAssertions();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v58 = service;
                v59 = 2112;
                v60 = v17;
                _os_log_impl(&dword_23DBD1000, v18, OS_LOG_TYPE_DEFAULT, "Service disconnected client: %@ %@", buf, 0x16u);
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v51 objects:v56 count:16];
          }

          while (v14);
        }

        contextsCopy = v37;
        listsCopy = v38;
        v8 = v36;
        v10 = v39;
        v9 = v40;
      }

      ++v9;
    }

    while (v9 != v8);
  }

  v19 = objc_opt_new();
  servicesAccessQueue = [(AXUIServiceManager *)self servicesAccessQueue];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __73__AXUIServiceManager__unregisterClientsIdentifiersLists_serviceContexts___block_invoke;
  v46[3] = &unk_278BF3258;
  v46[4] = self;
  v50 = v8;
  v21 = contextsCopy;
  v47 = v21;
  v22 = listsCopy;
  v48 = v22;
  v23 = v19;
  v49 = v23;
  v41 = servicesAccessQueue;
  [servicesAccessQueue performSynchronousWritingBlock:v46];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v43;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v43 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v42 + 1) + 8 * j);
        v30 = +[AXUIAssertionManager sharedInstance];
        firstObject = [v29 firstObject];
        lastObject = [v29 lastObject];
        [v30 invalidateAssertionUIIfNeededForService:firstObject clientIdentifier:lastObject];
      }

      v26 = [v24 countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v26);
  }

  v33 = +[AXUIAssertionManager sharedInstance];
  [v33 invalidateAssertionIfNeeded];

  v34 = *MEMORY[0x277D85DE8];
}

void __73__AXUIServiceManager__unregisterClientsIdentifiersLists_serviceContexts___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v23 = [*(a1 + 32) serviceContexts];
  if (*(a1 + 64))
  {
    v3 = 0;
    *&v2 = 138412290;
    v22 = v2;
    do
    {
      v4 = [*(a1 + 40) objectAtIndex:{v3, v22}];
      v24 = v3;
      v5 = [*(a1 + 48) objectAtIndex:v3];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v26;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v26 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v25 + 1) + 8 * i);
            [v4 removeClientWithIdentifier:v10];
            v11 = AXLogAssertions();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [v4 service];
              *buf = 138412546;
              v31 = v12;
              v32 = 2112;
              v33 = v10;
              _os_log_impl(&dword_23DBD1000, v11, OS_LOG_TYPE_DEFAULT, "ServiceContext removed client: %@ %@", buf, 0x16u);
            }

            v13 = [v4 service];

            if (v10)
            {
              v14 = v13 == 0;
            }

            else
            {
              v14 = 1;
            }

            if (!v14)
            {
              v15 = *(a1 + 56);
              v16 = [v4 service];
              v29[0] = v16;
              v29[1] = v10;
              v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
              [v15 addObject:v17];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
        }

        while (v7);
      }

      if (![v4 clientsCount])
      {
        [v23 removeObjectIdenticalTo:v4];
        v18 = AXLogAssertions();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v4 service];
          *buf = v22;
          v31 = v19;
          _os_log_impl(&dword_23DBD1000, v18, OS_LOG_TYPE_DEFAULT, "Service has no clients, removed: %@", buf, 0xCu);
        }

        if (![v23 count])
        {
          [*(a1 + 32) setServiceContexts:0];
          v20 = AXLogAssertions();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23DBD1000, v20, OS_LOG_TYPE_DEFAULT, "AXUIServer has no active services, idle", buf, 2u);
          }
        }
      }

      v3 = v24 + 1;
    }

    while ((v24 + 1) < *(a1 + 64));
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_serviceContextForClientWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  servicesAccessQueue = [(AXUIServiceManager *)self servicesAccessQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__AXUIServiceManager__serviceContextForClientWithIdentifier___block_invoke;
  v9[3] = &unk_278BF3280;
  v9[4] = self;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [servicesAccessQueue performSynchronousReadingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __61__AXUIServiceManager__serviceContextForClientWithIdentifier___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) serviceContexts];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 hasClientWithIdentifier:{*(a1 + 40), v9}])
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_services
{
  array = [MEMORY[0x277CBEB18] array];
  servicesAccessQueue = [(AXUIServiceManager *)self servicesAccessQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__AXUIServiceManager__services__block_invoke;
  v9[3] = &unk_278BF2ED0;
  v9[4] = self;
  v5 = array;
  v10 = v5;
  [servicesAccessQueue performSynchronousReadingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __31__AXUIServiceManager__services__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) serviceContexts];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) service];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_servicesCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  servicesAccessQueue = [(AXUIServiceManager *)self servicesAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__AXUIServiceManager__servicesCount__block_invoke;
  v6[3] = &unk_278BF32A8;
  v6[4] = self;
  v6[5] = &v7;
  [servicesAccessQueue performSynchronousReadingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __36__AXUIServiceManager__servicesCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceContexts];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (id)_serviceContextForService:(id)service
{
  serviceCopy = service;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  servicesAccessQueue = [(AXUIServiceManager *)self servicesAccessQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__AXUIServiceManager__serviceContextForService___block_invoke;
  v9[3] = &unk_278BF3280;
  v9[4] = self;
  v6 = serviceCopy;
  v10 = v6;
  v11 = &v12;
  [servicesAccessQueue performSynchronousReadingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __48__AXUIServiceManager__serviceContextForService___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) serviceContexts];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 service];
        v9 = *(a1 + 40);

        if (v8 == v9)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_servicesForUniqueIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  servicesAccessQueue = [(AXUIServiceManager *)self servicesAccessQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__AXUIServiceManager__servicesForUniqueIdentifiers___block_invoke;
  v9[3] = &unk_278BF3280;
  v9[4] = self;
  v6 = identifiersCopy;
  v10 = v6;
  v11 = &v12;
  [servicesAccessQueue performSynchronousWritingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__AXUIServiceManager__servicesForUniqueIdentifiers___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) serviceContexts];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = *(a1 + 32);
        v9 = [v7 service];
        v10 = [v8 _uniqueIdentifierForService:v9];

        if ([*(a1 + 40) containsObject:v10])
        {
          v11 = *(*(*(a1 + 48) + 8) + 40);
          if (!v11)
          {
            v12 = objc_opt_new();
            v13 = *(*(a1 + 48) + 8);
            v14 = *(v13 + 40);
            *(v13 + 40) = v12;

            v11 = *(*(*(a1 + 48) + 8) + 40);
          }

          v15 = [v7 service];
          [v11 addObject:v15];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (AXUIServiceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_processXPCObject:(uint64_t)a1 context:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136446210;
  v4 = a1;
  _os_log_error_impl(&dword_23DBD1000, a2, OS_LOG_TYPE_ERROR, "Got object of unexpected type in client connection event handler: %{public}s.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_processXPCObject:(void *)a1 context:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(a1, *MEMORY[0x277D86400]);
  v5 = 136446210;
  v6 = string;
  _os_log_error_impl(&dword_23DBD1000, a2, OS_LOG_TYPE_ERROR, "Got unexpected error in client connection event handler: %{public}s.", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

@end