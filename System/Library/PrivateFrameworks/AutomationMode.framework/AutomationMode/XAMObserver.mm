@interface XAMObserver
+ (XAMObserver)sharedInstance;
+ (void)resetSharedObserver;
- (BOOL)automationModeRequiresAuthentication;
- (BOOL)currentAutomationModeEnabledStateFromDaemon;
- (BOOL)isAutomationModeEnabled;
- (XAMObserver)initWithChangeNotificationName:(id)name readerConnectionFactory:(id)factory;
- (id)registerAutomationModeChangeHandlerOnQueue:(id)queue withBlock:(id)block;
- (void)_listenForAutomationModeChangeNotifications;
- (void)_notifyHandlers;
- (void)dealloc;
- (void)unregisterAutomationModeChangeHandler:(id)handler;
@end

@implementation XAMObserver

+ (void)resetSharedObserver
{
  obj = objc_opt_self();
  objc_sync_enter(obj);
  v0 = XAMSharedObserver;
  XAMSharedObserver = 0;

  objc_sync_exit(obj);
}

+ (XAMObserver)sharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!XAMSharedObserver)
  {
    v3 = [XAMObserver alloc];
    v4 = XAMAutomationModeStateChangedNotificationName();
    v5 = [(XAMObserver *)v3 initWithChangeNotificationName:v4 readerConnectionFactory:&__block_literal_global_1];
    v6 = XAMSharedObserver;
    XAMSharedObserver = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = XAMSharedObserver;

  return v7;
}

id __29__XAMObserver_sharedInstance__block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = XAMAutomationModeReaderMachServiceName();
  v1 = XAMLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v0;
    _os_log_impl(&dword_241927000, v1, OS_LOG_TYPE_DEFAULT, "XAM shared observer connecting to %{public}@", &v6, 0xCu);
  }

  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v0 options:0];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285387950];
  [v2 setRemoteObjectInterface:v3];

  [v2 resume];
  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

- (XAMObserver)initWithChangeNotificationName:(id)name readerConnectionFactory:(id)factory
{
  v17.receiver = self;
  v17.super_class = XAMObserver;
  factoryCopy = factory;
  nameCopy = name;
  v7 = [(XAMObserver *)&v17 init];
  v8 = dispatch_queue_create("com.apple.dt.automationmode-reader", 0);
  queue = v7->_queue;
  v7->_queue = v8;

  v10 = objc_opt_new();
  handlers = v7->_handlers;
  v7->_handlers = v10;

  v7->_observationToken = -1;
  v12 = [nameCopy copy];

  changeNotificationName = v7->_changeNotificationName;
  v7->_changeNotificationName = v12;

  v14 = [factoryCopy copy];
  readerConnectionFactory = v7->_readerConnectionFactory;
  v7->_readerConnectionFactory = v14;

  [(XAMObserver *)v7 _listenForAutomationModeChangeNotifications];
  return v7;
}

- (void)dealloc
{
  observationToken = self->_observationToken;
  if (observationToken != -1)
  {
    notify_cancel(observationToken);
  }

  v4.receiver = self;
  v4.super_class = XAMObserver;
  [(XAMObserver *)&v4 dealloc];
}

- (BOOL)currentAutomationModeEnabledStateFromDaemon
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = (*(self->_readerConnectionFactory + 2))();
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_13];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__XAMObserver_currentAutomationModeEnabledStateFromDaemon__block_invoke_14;
  v7[3] = &unk_278CF9490;
  v7[4] = &v8;
  [v4 requestAutomationModeEnabledStateWithReply:v7];
  [v3 invalidate];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __58__XAMObserver_currentAutomationModeEnabledStateFromDaemon__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = XAMLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __58__XAMObserver_currentAutomationModeEnabledStateFromDaemon__block_invoke_cold_1(v2, v3);
  }
}

- (void)_listenForAutomationModeChangeNotifications
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_fault_impl(&dword_241927000, a2, OS_LOG_TYPE_FAULT, "Failed to register for notifications of Automation Mode, status: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void __58__XAMObserver__listenForAutomationModeChangeNotifications__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = XAMLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained changeNotificationName];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_241927000, v2, OS_LOG_TYPE_DEFAULT, "Handling posted change notification (%{public}@)", &v5, 0xCu);
  }

  [WeakRetained _notifyHandlers];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_notifyHandlers
{
  v27 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  currentAutomationModeEnabledStateFromDaemon = [(XAMObserver *)self currentAutomationModeEnabledStateFromDaemon];
  v4 = XAMLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    isAutomationModeEnabled = self->_isAutomationModeEnabled;
    *buf = 67109376;
    v24 = isAutomationModeEnabled;
    v25 = 1024;
    v26 = currentAutomationModeEnabledStateFromDaemon;
    _os_log_impl(&dword_241927000, v4, OS_LOG_TYPE_DEFAULT, "Comparing previous enabled state (%d) to current enabled state (%d)", buf, 0xEu);
  }

  if (!self->_hasReceivedAutomationModeEnabledState || self->_isAutomationModeEnabled != currentAutomationModeEnabledStateFromDaemon)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allValues = [(NSMutableDictionary *)self->_handlers allValues];
    v7 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          if (v12)
          {
            Property = objc_getProperty(*(*(&v18 + 1) + 8 * v11), v8, 8, 1);
          }

          else
          {
            Property = 0;
          }

          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __30__XAMObserver__notifyHandlers__block_invoke;
          v16[3] = &unk_278CF94E0;
          v16[4] = v12;
          v17 = currentAutomationModeEnabledStateFromDaemon;
          dispatch_async(Property, v16);
          ++v11;
        }

        while (v9 != v11);
        v14 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
        v9 = v14;
      }

      while (v14);
    }
  }

  self->_isAutomationModeEnabled = currentAutomationModeEnabledStateFromDaemon;
  self->_hasReceivedAutomationModeEnabledState = 1;
  v15 = *MEMORY[0x277D85DE8];
}

- (id)registerAutomationModeChangeHandlerOnQueue:(id)queue withBlock:(id)block
{
  blockCopy = block;
  v7 = MEMORY[0x277CCAD78];
  queueCopy = queue;
  uUID = [v7 UUID];
  v10 = [[XAMHandlerRecord alloc] initWithQueue:queueCopy block:blockCopy];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__XAMObserver_registerAutomationModeChangeHandlerOnQueue_withBlock___block_invoke;
  block[3] = &unk_278CF9508;
  block[4] = self;
  v12 = uUID;
  v23 = v12;
  v24 = v10;
  v13 = v10;
  dispatch_sync(queue, block);
  isAutomationModeEnabled = [(XAMObserver *)self isAutomationModeEnabled];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __68__XAMObserver_registerAutomationModeChangeHandlerOnQueue_withBlock___block_invoke_2;
  v19[3] = &unk_278CF9530;
  v20 = blockCopy;
  v21 = isAutomationModeEnabled;
  v15 = blockCopy;
  dispatch_async(queueCopy, v19);

  v16 = v20;
  v17 = v12;

  return v12;
}

- (void)unregisterAutomationModeChangeHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__XAMObserver_unregisterAutomationModeChangeHandler___block_invoke;
  v7[3] = &unk_278CF9558;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)isAutomationModeEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__XAMObserver_isAutomationModeEnabled__block_invoke;
  v5[3] = &unk_278CF9580;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

_BYTE *__38__XAMObserver_isAutomationModeEnabled__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[17] & 1) == 0)
  {
    *(*(a1 + 32) + 16) = [result currentAutomationModeEnabledStateFromDaemon];
    *(*(a1 + 32) + 17) = 1;
    result = *(a1 + 32);
  }

  *(*(*(a1 + 40) + 8) + 24) = result[16];
  return result;
}

- (BOOL)automationModeRequiresAuthentication
{
  v2 = (*(self->_readerConnectionFactory + 2))();
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_21];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__XAMObserver_automationModeRequiresAuthentication__block_invoke_22;
  v6[3] = &unk_278CF9490;
  v6[4] = &v7;
  [v3 requestAutomationModeRequiresAuthenticationWithReply:v6];
  [v2 invalidate];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __51__XAMObserver_automationModeRequiresAuthentication__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = XAMLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __58__XAMObserver_currentAutomationModeEnabledStateFromDaemon__block_invoke_cold_1(v2, v3);
  }
}

uint64_t __30__XAMObserver__notifyHandlers__block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 16, 1);
  }

  v4 = *(a1 + 40);
  v5 = Property[2];

  return v5();
}

void __58__XAMObserver_currentAutomationModeEnabledStateFromDaemon__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241927000, a2, OS_LOG_TYPE_ERROR, "XPC error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end