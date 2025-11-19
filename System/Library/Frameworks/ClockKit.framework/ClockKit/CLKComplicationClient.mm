@interface CLKComplicationClient
- (CLKComplicationClient)initWithConnection:(id)a3;
- (CLKComplicationClientDelegate)delegate;
- (void)_handleConnectionInvalidated;
- (void)addInvalidationObserver:(id)a3;
- (void)checkinWithClientIdentifier:(id)a3 bundlePath:(id)a4;
- (void)extendTimelineForComplication:(id)a3;
- (void)getAlwaysOnTemplateForComplication:(id)a3 withHandler:(id)a4;
- (void)getComplicationDescriptorsWithHandler:(id)a3;
- (void)getCurrentTimelineEntryForComplication:(id)a3 withHandler:(id)a4;
- (void)getLocalizableSampleTemplateForComplication:(id)a3 withHandler:(id)a4;
- (void)getNextRequestedUpdateDateWithHandler:(id)a3;
- (void)getPrivacyBehaviorForComplication:(id)a3 withHandler:(id)a4;
- (void)getTimelineAnimationBehaviorForComplication:(id)a3 withHandler:(id)a4;
- (void)getTimelineEndDateForComplication:(id)a3 withHandler:(id)a4;
- (void)getTimelineEntriesForComplication:(id)a3 afterDate:(id)a4 limit:(unint64_t)a5 withHandler:(id)a6;
- (void)getWidgetMigrationConfigurationFrom:(id)a3 withHandler:(id)a4;
- (void)handleSharedComplicationDescriptors:(id)a3;
- (void)notifyDebugTimeoutWithCharging:(BOOL)a3;
- (void)reloadComplicationDescriptors;
- (void)reloadTimelineForComplication:(id)a3;
- (void)removeInvalidationObserver:(id)a3;
- (void)requestedUpdateBudgetExhausted;
- (void)requestedUpdateDidBegin;
- (void)setActiveComplications:(id)a3;
@end

@implementation CLKComplicationClient

- (CLKComplicationClient)initWithConnection:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = CLKComplicationClient;
  v6 = [(CLKComplicationClient *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "processIdentifier")}];
    pid = v7->_pid;
    v7->_pid = v8;

    connection = v7->_connection;
    v11 = CLKComplicationClientInterface();
    [(NSXPCConnection *)connection setRemoteObjectInterface:v11];

    v12 = v7->_connection;
    v13 = CLKComplicationServerInterface();
    [(NSXPCConnection *)v12 setExportedInterface:v13];

    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    objc_initWeak(&location, v7);
    v14 = v7->_connection;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __44__CLKComplicationClient_initWithConnection___block_invoke;
    v23 = &unk_278A1E700;
    objc_copyWeak(&v24, &location);
    [(NSXPCConnection *)v14 setInvalidationHandler:&v20];
    v15 = [MEMORY[0x277CCAA50] hashTableWithOptions:{517, v20, v21, v22, v23}];
    invalidationObservers = v7->_invalidationObservers;
    v7->_invalidationObservers = v15;

    v17 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    invalidationObserversLock = v7->_invalidationObserversLock;
    v7->_invalidationObserversLock = v17;

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __44__CLKComplicationClient_initWithConnection___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CLKComplicationClient_initWithConnection___block_invoke_2;
  block[3] = &unk_278A1E700;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __44__CLKComplicationClient_initWithConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionInvalidated];
}

- (void)setActiveComplications:(id)a3
{
  objc_storeStrong(&self->_activeComplications, a3);
  v5 = a3;
  v6 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [v6 setActiveComplications:v5];
}

- (void)addInvalidationObserver:(id)a3
{
  invalidationObserversLock = self->_invalidationObserversLock;
  v5 = a3;
  [(NSLock *)invalidationObserversLock lock];
  [(NSHashTable *)self->_invalidationObservers addObject:v5];

  v6 = self->_invalidationObserversLock;

  [(NSLock *)v6 unlock];
}

- (void)removeInvalidationObserver:(id)a3
{
  invalidationObserversLock = self->_invalidationObserversLock;
  v5 = a3;
  [(NSLock *)invalidationObserversLock lock];
  [(NSHashTable *)self->_invalidationObservers removeObject:v5];

  v6 = self->_invalidationObserversLock;

  [(NSLock *)v6 unlock];
}

- (void)_handleConnectionInvalidated
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(NSXPCConnection *)self->_connection setExportedObject:0];
    connection = self->_connection;
    self->_connection = 0;

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, self);
      v5 = self->_invalidationHandler;
    }

    else
    {
      v5 = 0;
    }

    self->_invalidationHandler = 0;

    checkinHandler = self->_checkinHandler;
    self->_checkinHandler = 0;

    [(NSLock *)self->_invalidationObserversLock lock];
    v7 = [(NSHashTable *)self->_invalidationObservers allObjects];
    [(NSLock *)self->_invalidationObserversLock unlock];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12++) complicationClientInvalidated:{self, v13}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    [(NSLock *)self->_invalidationObserversLock lock];
    [(NSHashTable *)self->_invalidationObservers removeAllObjects];
    [(NSLock *)self->_invalidationObserversLock unlock];
  }
}

- (void)checkinWithClientIdentifier:(id)a3 bundlePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CLKComplicationClient_checkinWithClientIdentifier_bundlePath___block_invoke;
  block[3] = &unk_278A1F568;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__CLKComplicationClient_checkinWithClientIdentifier_bundlePath___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 48));
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 80);
    *(v3 + 80) = 0;
  }
}

- (void)reloadTimelineForComplication:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CLKComplicationClient_reloadTimelineForComplication___block_invoke;
  v6[3] = &unk_278A1F590;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __55__CLKComplicationClient_reloadTimelineForComplication___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_23702D000, v2, OS_LOG_TYPE_DEFAULT, "Requesting timeline reload for %@", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
  [WeakRetained complicationClient:*(a1 + 40) reloadTimelineForComplication:*(a1 + 32)];
}

- (void)extendTimelineForComplication:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CLKComplicationClient_extendTimelineForComplication___block_invoke;
  v6[3] = &unk_278A1F590;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __55__CLKComplicationClient_extendTimelineForComplication___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_23702D000, v2, OS_LOG_TYPE_DEFAULT, "Requesting timeline extension for %@", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
  [WeakRetained complicationClient:*(a1 + 40) extendTimelineForComplication:*(a1 + 32)];
}

- (void)reloadComplicationDescriptors
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CLKComplicationClient_reloadComplicationDescriptors__block_invoke;
  block[3] = &unk_278A1F1B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __54__CLKComplicationClient_reloadComplicationDescriptors__block_invoke(uint64_t a1)
{
  v2 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23702D000, v2, OS_LOG_TYPE_DEFAULT, "Requesting complication descriptor reload", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained reloadComplicationDescriptorsForComplicationClient:*(a1 + 32)];
}

- (void)getTimelineEndDateForComplication:(id)a3 withHandler:(id)a4
{
  connection = self->_connection;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_12];
  [v8 getTimelineEndDateForComplication:v7 withHandler:v6];
}

void __71__CLKComplicationClient_getTimelineEndDateForComplication_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __71__CLKComplicationClient_getTimelineEndDateForComplication_withHandler___block_invoke_cold_1();
  }
}

- (void)getPrivacyBehaviorForComplication:(id)a3 withHandler:(id)a4
{
  connection = self->_connection;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_5];
  [v8 getPrivacyBehaviorForComplication:v7 withHandler:v6];
}

void __71__CLKComplicationClient_getPrivacyBehaviorForComplication_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __71__CLKComplicationClient_getPrivacyBehaviorForComplication_withHandler___block_invoke_cold_1();
  }
}

- (void)getAlwaysOnTemplateForComplication:(id)a3 withHandler:(id)a4
{
  connection = self->_connection;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_7];
  [v8 getAlwaysOnTemplateForComplication:v7 withHandler:v6];
}

void __72__CLKComplicationClient_getAlwaysOnTemplateForComplication_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __72__CLKComplicationClient_getAlwaysOnTemplateForComplication_withHandler___block_invoke_cold_1();
  }
}

- (void)getTimelineAnimationBehaviorForComplication:(id)a3 withHandler:(id)a4
{
  connection = self->_connection;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_9];
  [v8 getTimelineAnimationBehaviorForComplication:v7 withHandler:v6];
}

void __81__CLKComplicationClient_getTimelineAnimationBehaviorForComplication_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __81__CLKComplicationClient_getTimelineAnimationBehaviorForComplication_withHandler___block_invoke_cold_1();
  }
}

- (void)getCurrentTimelineEntryForComplication:(id)a3 withHandler:(id)a4
{
  connection = self->_connection;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_11];
  [v8 getCurrentTimelineEntryForComplication:v7 withHandler:v6];
}

void __76__CLKComplicationClient_getCurrentTimelineEntryForComplication_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __76__CLKComplicationClient_getCurrentTimelineEntryForComplication_withHandler___block_invoke_cold_1();
  }
}

- (void)getTimelineEntriesForComplication:(id)a3 afterDate:(id)a4 limit:(unint64_t)a5 withHandler:(id)a6
{
  connection = self->_connection;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_13];
  [v13 getTimelineEntriesForComplication:v12 afterDate:v11 limit:a5 withHandler:v10];
}

void __87__CLKComplicationClient_getTimelineEntriesForComplication_afterDate_limit_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __87__CLKComplicationClient_getTimelineEntriesForComplication_afterDate_limit_withHandler___block_invoke_cold_1();
  }
}

- (void)getNextRequestedUpdateDateWithHandler:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_15];
  [v5 getNextRequestedUpdateDateWithHandler:v4];
}

void __63__CLKComplicationClient_getNextRequestedUpdateDateWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __63__CLKComplicationClient_getNextRequestedUpdateDateWithHandler___block_invoke_cold_1();
  }
}

- (void)requestedUpdateDidBegin
{
  v2 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [v2 requestedUpdateDidBegin];
}

- (void)requestedUpdateBudgetExhausted
{
  v2 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [v2 requestedUpdateBudgetExhausted];
}

- (void)getLocalizableSampleTemplateForComplication:(id)a3 withHandler:(id)a4
{
  connection = self->_connection;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_17];
  [v8 getLocalizableSampleTemplateForComplication:v7 withHandler:v6];
}

void __81__CLKComplicationClient_getLocalizableSampleTemplateForComplication_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __81__CLKComplicationClient_getLocalizableSampleTemplateForComplication_withHandler___block_invoke_cold_1();
  }
}

- (void)getComplicationDescriptorsWithHandler:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_19_0];
  [v5 getComplicationDescriptorsWithHandler:v4];
}

void __63__CLKComplicationClient_getComplicationDescriptorsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __63__CLKComplicationClient_getComplicationDescriptorsWithHandler___block_invoke_cold_1();
  }
}

- (void)handleSharedComplicationDescriptors:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_21];
  [v5 handleSharedComplicationDescriptors:v4];
}

void __61__CLKComplicationClient_handleSharedComplicationDescriptors___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __61__CLKComplicationClient_handleSharedComplicationDescriptors___block_invoke_cold_1();
  }
}

- (void)notifyDebugTimeoutWithCharging:(BOOL)a3
{
  v3 = a3;
  v4 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_23];
  [v4 notifyDebugTimeoutWithCharging:v3];
}

void __56__CLKComplicationClient_notifyDebugTimeoutWithCharging___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__CLKComplicationClient_notifyDebugTimeoutWithCharging___block_invoke_cold_1();
  }
}

- (void)getWidgetMigrationConfigurationFrom:(id)a3 withHandler:(id)a4
{
  connection = self->_connection;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_25_0];
  [v8 getWidgetMigrationConfigurationFrom:v7 withHandler:v6];
}

void __73__CLKComplicationClient_getWidgetMigrationConfigurationFrom_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__CLKComplicationClient_getWidgetMigrationConfigurationFrom_withHandler___block_invoke_cold_1();
  }
}

- (CLKComplicationClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end