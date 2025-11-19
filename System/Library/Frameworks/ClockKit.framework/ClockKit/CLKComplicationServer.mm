@interface CLKComplicationServer
+ (CLKComplicationServer)sharedInstance;
- (CLKComplicationServer)init;
- (CLKComplicationServer)initWithClientIdentifier:(id)a3;
- (NSDate)earliestTimeTravelDate;
- (NSDate)latestTimeTravelDate;
- (id)_init;
- (id)serverProxy;
- (void)_checkinWithServer;
- (void)_complicationServiceDidStart;
- (void)_createConnection;
- (void)_createDataSourceIfNecessary;
- (void)_init;
- (void)dealloc;
- (void)extendTimelineForComplication:(CLKComplication *)complication;
- (void)getAlwaysOnTemplateForComplication:(id)a3 withHandler:(id)a4;
- (void)getComplicationDescriptorsWithHandler:(id)a3;
- (void)getCurrentTimelineEntryForComplication:(id)a3 withHandler:(id)a4;
- (void)getLocalizableSampleTemplateForComplication:(id)a3 withHandler:(id)a4;
- (void)getNextRequestedUpdateDateWithHandler:(id)a3;
- (void)getPrivacyBehaviorForComplication:(id)a3 withHandler:(id)a4;
- (void)getSupportedTimeTravelDirectionsForComplication:(id)a3 withHandler:(id)a4;
- (void)getTimelineAnimationBehaviorForComplication:(id)a3 withHandler:(id)a4;
- (void)getTimelineEndDateForComplication:(id)a3 withHandler:(id)a4;
- (void)getTimelineEntriesForComplication:(id)a3 afterDate:(id)a4 limit:(unint64_t)a5 withHandler:(id)a6;
- (void)getWidgetMigrationConfigurationFrom:(id)a3 withHandler:(id)a4;
- (void)handleSharedComplicationDescriptors:(id)a3;
- (void)notifyDebugTimeoutWithCharging:(BOOL)a3;
- (void)reloadComplicationDescriptors;
- (void)reloadTimelineForComplication:(CLKComplication *)complication;
- (void)requestedUpdateBudgetExhausted;
- (void)requestedUpdateDidBegin;
- (void)setActiveComplications:(id)a3;
@end

@implementation CLKComplicationServer

+ (CLKComplicationServer)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CLKComplicationServer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance___sharedServer_0;

  return v2;
}

uint64_t __39__CLKComplicationServer_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = sharedInstance___sharedServer_0;
  sharedInstance___sharedServer_0 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (CLKComplicationServer)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"You cannot alloc/init new instances of %@. Use +sharedInstance.", objc_opt_class()}];

  return 0;
}

- (CLKComplicationServer)initWithClientIdentifier:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_23702D000, v5, OS_LOG_TYPE_DEFAULT, "CLKComplicationServer initWithClientIdentifier: %@", &v8, 0xCu);
  }

  v6 = [objc_opt_class() sharedInstance];

  return v6;
}

- (id)_init
{
  v27 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = CLKComplicationServer;
  v2 = [(CLKComplicationServer *)&v24 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 bundleIdentifier];
    clientIdentifier = v2->_clientIdentifier;
    v2->_clientIdentifier = v4;

    v6 = [v3 objectForInfoDictionaryKey:@"CLKComplicationPrincipalClass"];
    v2->_connectionLock._os_unfair_lock_opaque = 0;
    v7 = NSClassFromString(v6);
    v8 = v7;
    if (v7 && [(objc_class *)v7 conformsToProtocol:&unk_284A3F600])
    {
      v9 = CLKLoggingObjectForDomain(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v6;
        _os_log_impl(&dword_23702D000, v9, OS_LOG_TYPE_DEFAULT, "Principal class %@ conforms to correct protocol", buf, 0xCu);
      }

      v2->_dataSourceClass = v8;
      objc_initWeak(buf, v2);
      v2->_restartNotificationToken = -1;
      v10 = [@"com.apple.ClockKit.complicationservicedidstart" UTF8String];
      v11 = MEMORY[0x277D85CD0];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __30__CLKComplicationServer__init__block_invoke;
      handler[3] = &unk_278A1F218;
      objc_copyWeak(&v23, buf);
      v12 = notify_register_dispatch(v10, &v2->_restartNotificationToken, MEMORY[0x277D85CD0], handler);

      if (v12)
      {
        v13 = CLKLoggingObjectForDomain(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(CLKComplicationServer *)v12 _init];
        }
      }

      v14 = CLKLoggingObjectForDomain(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_23702D000, v14, OS_LOG_TYPE_DEFAULT, "creating complication server connection", v21, 2u);
      }

      [(CLKComplicationServer *)v2 _createConnection];
      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }

    else
    {
      NSLog(&cfstr_MissingOrInval.isa, v6);
      v15 = CLKLoggingObjectForDomain(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v6;
        _os_log_impl(&dword_23702D000, v15, OS_LOG_TYPE_DEFAULT, "missing or invalid principal class (%@)", buf, 0xCu);
      }

      v16 = CLKLoggingObjectForDomain(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23702D000, v16, OS_LOG_TYPE_DEFAULT, "not creating complication server connection", buf, 2u);
      }
    }

    v17 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_DEFAULT, 0);
    v18 = dispatch_queue_create("com.apple.ClockKit.timelineFinalization", v17);
    templateFinalizationQueue = v2->_templateFinalizationQueue;
    v2->_templateFinalizationQueue = v18;
  }

  return v2;
}

void __30__CLKComplicationServer__init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _complicationServiceDidStart];
}

- (void)dealloc
{
  restartNotificationToken = self->_restartNotificationToken;
  if (restartNotificationToken != -1)
  {
    notify_cancel(restartNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = CLKComplicationServer;
  [(CLKComplicationServer *)&v4 dealloc];
}

- (id)serverProxy
{
  os_unfair_lock_lock(&self->_connectionLock);
  v3 = [(NSXPCConnection *)self->_serverConnection remoteObjectProxy];
  os_unfair_lock_unlock(&self->_connectionLock);

  return v3;
}

- (void)reloadTimelineForComplication:(CLKComplication *)complication
{
  v4 = complication;
  v5 = [(CLKComplicationServer *)self serverProxy];
  [v5 reloadTimelineForComplication:v4];
}

- (void)extendTimelineForComplication:(CLKComplication *)complication
{
  v4 = complication;
  v5 = [(CLKComplicationServer *)self serverProxy];
  [v5 extendTimelineForComplication:v4];
}

- (void)reloadComplicationDescriptors
{
  v2 = [(CLKComplicationServer *)self serverProxy];
  [v2 reloadComplicationDescriptors];
}

- (NSDate)earliestTimeTravelDate
{
  v2 = +[CLKDate complicationDate];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [v3 dateByAddingUnit:16 value:-1 toDate:v2 options:0];
  v5 = [v3 startOfDayForDate:v4];

  return v5;
}

- (NSDate)latestTimeTravelDate
{
  v2 = +[CLKDate complicationDate];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [v3 dateByAddingUnit:16 value:2 toDate:v2 options:0];
  v5 = [v3 startOfDayForDate:v4];

  return v5;
}

- (void)_createConnection
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_connectionLock);
  if (self->_serverConnection)
  {
    v3 = CLKLoggingObjectForDomain(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      serverConnection = self->_serverConnection;
      *buf = 138412290;
      v16 = serverConnection;
      _os_log_impl(&dword_23702D000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating existing server connection (%@) while trying to create a new one", buf, 0xCu);
    }

    [(NSXPCConnection *)self->_serverConnection invalidate];
    v5 = self->_serverConnection;
    self->_serverConnection = 0;
  }

  v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ClockKit.complicationserver" options:4096];
  v7 = self->_serverConnection;
  self->_serverConnection = v6;

  objc_initWeak(buf, self);
  v8 = self->_serverConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__CLKComplicationServer__createConnection__block_invoke;
  v13[3] = &unk_278A1E700;
  objc_copyWeak(&v14, buf);
  [(NSXPCConnection *)v8 setInterruptionHandler:v13];
  [(NSXPCConnection *)self->_serverConnection setInvalidationHandler:&__block_literal_global_20];
  v9 = self->_serverConnection;
  v10 = CLKComplicationServerInterface();
  [(NSXPCConnection *)v9 setRemoteObjectInterface:v10];

  v11 = self->_serverConnection;
  v12 = CLKComplicationClientInterface();
  [(NSXPCConnection *)v11 setExportedInterface:v12];

  [(NSXPCConnection *)self->_serverConnection setExportedObject:self];
  [(NSXPCConnection *)self->_serverConnection resume];
  os_unfair_lock_unlock(&self->_connectionLock);
  [(CLKComplicationServer *)self _checkinWithServer];
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __42__CLKComplicationServer__createConnection__block_invoke(uint64_t a1)
{
  v2 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23702D000, v2, OS_LOG_TYPE_DEFAULT, "Complication server connection interrupted. Will attempt to reconnect.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkinWithServer];
}

void __42__CLKComplicationServer__createConnection__block_invoke_91()
{
  v0 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __42__CLKComplicationServer__createConnection__block_invoke_91_cold_1();
  }
}

- (void)_complicationServiceDidStart
{
  v3 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23702D000, v3, OS_LOG_TYPE_DEFAULT, "Complication server restarted. Reconnecting", v4, 2u);
  }

  [(CLKComplicationServer *)self _createConnection];
}

- (void)_checkinWithServer
{
  v6 = [(CLKComplicationServer *)self serverProxy];
  clientIdentifier = self->_clientIdentifier;
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundlePath];
  [v6 checkinWithClientIdentifier:clientIdentifier bundlePath:v5];
}

- (void)_createDataSourceIfNecessary
{
  if (!self->_dataSource)
  {
    v3 = objc_alloc_init(self->_dataSourceClass);
    dataSource = self->_dataSource;
    self->_dataSource = v3;

    self->_dataSourceFlags.supportsGetTimeTravelDirections = objc_opt_respondsToSelector() & 1;
    self->_dataSourceFlags.supportsGetTimelineStartDate = objc_opt_respondsToSelector() & 1;
    self->_dataSourceFlags.supportsGetTimelineEndDate = objc_opt_respondsToSelector() & 1;
    self->_dataSourceFlags.supportsGetPrivacyBehavior = objc_opt_respondsToSelector() & 1;
    self->_dataSourceFlags.supportsGetTimelineAnimationBehavior = objc_opt_respondsToSelector() & 1;
    self->_dataSourceFlags.supportsExtendAfter = objc_opt_respondsToSelector() & 1;
    self->_dataSourceFlags.supportsExtendBefore = objc_opt_respondsToSelector() & 1;
    self->_dataSourceFlags.supportsGetRequestedUpdate = objc_opt_respondsToSelector() & 1;
    self->_dataSourceFlags.supportsNotifyRequestedUpdate = objc_opt_respondsToSelector() & 1;
    self->_dataSourceFlags.supportsNotifyBudgetExhausted = objc_opt_respondsToSelector() & 1;
    self->_dataSourceFlags.supportsGetPlaceholderTemplate = objc_opt_respondsToSelector() & 1;
    self->_dataSourceFlags.supportsGetLocalizableSampleTemplate = objc_opt_respondsToSelector() & 1;
    self->_dataSourceFlags.supportsGetAlwaysOnTemplate = objc_opt_respondsToSelector() & 1;
    self->_dataSourceFlags.supportsComplicationDescriptors = objc_opt_respondsToSelector() & 1;
    self->_dataSourceFlags.supportsHandleSharedComplicationDescriptors = objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = [(CLKComplicationDataSource *)self->_dataSource widgetMigrator];
      if (v5)
      {
        v6 = objc_opt_respondsToSelector();
        v7 = CLKLoggingObjectForDomain(3);
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
        if (v6)
        {
          if (v8)
          {
            [(CLKComplicationServer *)v7 _createDataSourceIfNecessary:v9];
          }
        }

        else if (v8)
        {
          [(CLKComplicationServer *)v7 _createDataSourceIfNecessary:v9];
        }
      }

      else
      {
        v7 = CLKLoggingObjectForDomain(3);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [(CLKComplicationServer *)v7 _createDataSourceIfNecessary:v16];
        }

        v6 = 0;
      }

      self->_dataSourceFlags.supportsWidgetMigrationFromLegacy = v6 & 1;
    }
  }
}

- (void)setActiveComplications:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__CLKComplicationServer_setActiveComplications___block_invoke;
  v6[3] = &unk_278A1F590;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __48__CLKComplicationServer_setActiveComplications___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 40) isEqualToSet:*(a1 + 40)] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
    if ([*(*(a1 + 32) + 40) count])
    {
      [*(a1 + 32) _createDataSourceIfNecessary];
    }

    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"CLKComplicationServerActiveComplicationsDidChangeNotification" object:0];

    v3 = CLKLoggingObjectForDomain(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_23702D000, v3, OS_LOG_TYPE_DEFAULT, "Set active complications to %@", &v5, 0xCu);
    }
  }
}

- (void)getSupportedTimeTravelDirectionsForComplication:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__CLKComplicationServer_getSupportedTimeTravelDirectionsForComplication_withHandler___block_invoke;
  block[3] = &unk_278A1FA58;
  v11 = v6;
  v12 = v7;
  block[4] = self;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __85__CLKComplicationServer_getSupportedTimeTravelDirectionsForComplication_withHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createDataSourceIfNecessary];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__CLKComplicationServer_getSupportedTimeTravelDirectionsForComplication_withHandler___block_invoke_2;
  v5[3] = &unk_278A1FA30;
  v6 = *(a1 + 48);
  v2 = MEMORY[0x2383C4AF0](v5);
  if (([*(a1 + 32) _shouldAllowComplication:*(a1 + 40)] & 1) != 0 && (v3 = *(a1 + 32), *(v3 + 56) == 1))
  {
    v4 = CLKComplicationTimeTravelDirectionsAssertionBlock(*(a1 + 48), v2, *(v3 + 69), @"[CLKComplicationDataSource getSupportedTimeTravelDirectionsForComplication:withHandler:]");
    [*(*(a1 + 32) + 32) getSupportedTimeTravelDirectionsForComplication:*(a1 + 40) withHandler:v4];
  }

  else
  {
    v2[2](v2);
  }
}

- (void)getTimelineEndDateForComplication:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CLKComplicationServer_getTimelineEndDateForComplication_withHandler___block_invoke;
  block[3] = &unk_278A1FAD0;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__CLKComplicationServer_getTimelineEndDateForComplication_withHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createDataSourceIfNecessary];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__CLKComplicationServer_getTimelineEndDateForComplication_withHandler___block_invoke_2;
  v15[3] = &unk_278A1FAA8;
  v2 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v2;
  v17 = *(a1 + 48);
  v3 = MEMORY[0x2383C4AF0](v15);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __71__CLKComplicationServer_getTimelineEndDateForComplication_withHandler___block_invoke_4;
  v13 = &unk_278A1FA30;
  v4 = v3;
  v14 = v4;
  v5 = MEMORY[0x2383C4AF0](&v10);
  if (([*(a1 + 32) _shouldAllowComplication:{*(a1 + 40), v10, v11, v12, v13}] & 1) != 0 && (v6 = *(a1 + 32), *(v6 + 58) == 1))
  {
    v7 = *(v6 + 32);
    v8 = *(a1 + 40);
    v9 = CLKDateHandlerAssertionBlock(v4, v5, *(v6 + 69), @"[CLKComplicationDataSource getTimelineEndDateForComplication:withHandler:]");
    [v7 getTimelineEndDateForComplication:v8 withHandler:v9];
  }

  else
  {
    v5[2](v5);
  }
}

void __71__CLKComplicationServer_getTimelineEndDateForComplication_withHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 || (v2 = *(a1 + 32), (v2[56] & 1) == 0))
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __71__CLKComplicationServer_getTimelineEndDateForComplication_withHandler___block_invoke_3;
    v5[3] = &unk_278A1FA80;
    v3 = *(a1 + 40);
    v6 = *(a1 + 48);
    [v2 getSupportedTimeTravelDirectionsForComplication:v3 withHandler:v5];
  }
}

void __71__CLKComplicationServer_getTimelineEndDateForComplication_withHandler___block_invoke_3(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [MEMORY[0x277CBEAA8] distantFuture];
    (*(v2 + 16))(v2, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0);
  }
}

- (void)getPrivacyBehaviorForComplication:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CLKComplicationServer_getPrivacyBehaviorForComplication_withHandler___block_invoke;
  block[3] = &unk_278A1FA58;
  v11 = v6;
  v12 = v7;
  block[4] = self;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__CLKComplicationServer_getPrivacyBehaviorForComplication_withHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createDataSourceIfNecessary];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__CLKComplicationServer_getPrivacyBehaviorForComplication_withHandler___block_invoke_2;
  v7[3] = &unk_278A1FA30;
  v8 = *(a1 + 48);
  v2 = MEMORY[0x2383C4AF0](v7);
  if (([*(a1 + 32) _shouldAllowComplication:*(a1 + 40)] & 1) != 0 && (v3 = *(a1 + 32), *(v3 + 59) == 1))
  {
    v4 = *(v3 + 32);
    v5 = *(a1 + 40);
    v6 = CLKComplicationPrivacyBehaviorAssertionBlock(*(a1 + 48), v2, *(v3 + 69), @"[CLKComplicationDataSource getPrivacyBehaviorForComplication:withHandler:]");
    [v4 getPrivacyBehaviorForComplication:v5 withHandler:v6];
  }

  else
  {
    v2[2](v2);
  }
}

- (void)getTimelineAnimationBehaviorForComplication:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CLKComplicationServer_getTimelineAnimationBehaviorForComplication_withHandler___block_invoke;
  block[3] = &unk_278A1FA58;
  v11 = v6;
  v12 = v7;
  block[4] = self;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __81__CLKComplicationServer_getTimelineAnimationBehaviorForComplication_withHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createDataSourceIfNecessary];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__CLKComplicationServer_getTimelineAnimationBehaviorForComplication_withHandler___block_invoke_2;
  v7[3] = &unk_278A1FA30;
  v8 = *(a1 + 48);
  v2 = MEMORY[0x2383C4AF0](v7);
  if (([*(a1 + 32) _shouldAllowComplication:*(a1 + 40)] & 1) != 0 && (v3 = *(a1 + 32), *(v3 + 60) == 1))
  {
    v4 = *(v3 + 32);
    v5 = *(a1 + 40);
    v6 = CLKComplicationTimelineAnimationBehaviorBlock(*(a1 + 48), v2, *(v3 + 69), @"[CLKComplicationDataSource getTimelineAnimationBehaviorForComplication:withHandler:]");
    [v4 getTimelineAnimationBehaviorForComplication:v5 withHandler:v6];
  }

  else
  {
    v2[2](v2);
  }
}

- (void)getAlwaysOnTemplateForComplication:(id)a3 withHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__CLKComplicationServer_getAlwaysOnTemplateForComplication_withHandler___block_invoke;
  v11[3] = &unk_278A1FB20;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v14 = a2;
  v9 = v7;
  v10 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __72__CLKComplicationServer_getAlwaysOnTemplateForComplication_withHandler___block_invoke(id *a1)
{
  [a1[4] _createDataSourceIfNecessary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__CLKComplicationServer_getAlwaysOnTemplateForComplication_withHandler___block_invoke_2;
  v10[3] = &unk_278A1FA30;
  v11 = a1[6];
  v2 = MEMORY[0x2383C4AF0](v10);
  if (([a1[4] _shouldAllowComplication:a1[5]] & 1) != 0 && *(a1[4] + 70) == 1)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__CLKComplicationServer_getAlwaysOnTemplateForComplication_withHandler___block_invoke_3;
    v7[3] = &unk_278A1FAF8;
    v8 = a1[5];
    v6 = *(a1 + 3);
    v3 = v6;
    v9 = v6;
    v4 = MEMORY[0x2383C4AF0](v7);
    v5 = CLKComplicationTemplateAssertionBlock(v4, v2, *(a1[4] + 69), @"[CLKComplicationDataSource getAlwaysOnTemplateForComplication:withHandler:]");
    [*(a1[4] + 4) getAlwaysOnTemplateForComplication:a1[5] withHandler:v5];
  }

  else
  {
    v2[2](v2);
  }
}

void __72__CLKComplicationServer_getAlwaysOnTemplateForComplication_withHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = _ValidateTemplate(v6, [*(a1 + 32) family]);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = [v6 finalizedCopy];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

- (void)getCurrentTimelineEntryForComplication:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23702D000, v8, OS_LOG_TYPE_DEFAULT, "CLKComplicationServer: -getCurrentTimelineEntryForComplication:withHandler:", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CLKComplicationServer_getCurrentTimelineEntryForComplication_withHandler___block_invoke;
  block[3] = &unk_278A1FAD0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __76__CLKComplicationServer_getCurrentTimelineEntryForComplication_withHandler___block_invoke(id *a1)
{
  [a1[4] _createDataSourceIfNecessary];
  if ([a1[4] _shouldAllowComplication:a1[5]])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76__CLKComplicationServer_getCurrentTimelineEntryForComplication_withHandler___block_invoke_2;
    v6[3] = &unk_278A1E628;
    v7 = a1[5];
    v8 = a1[6];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __76__CLKComplicationServer_getCurrentTimelineEntryForComplication_withHandler___block_invoke_3;
    v4[3] = &unk_278A1FA30;
    v5 = a1[6];
    v2 = CLKComplicationTimelineEntryAssertionBlock(v6, v4, *(a1[4] + 69), @"[CLKComplicationDataSource getCurrentTimelineEntryForComplication:withHandler:]");
    [*(a1[4] + 4) getCurrentTimelineEntryForComplication:a1[5] withHandler:v2];
  }

  else
  {
    v3 = *(a1[6] + 2);

    v3();
  }
}

void __76__CLKComplicationServer_getCurrentTimelineEntryForComplication_withHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = _ValidateEntry(v6, [*(a1 + 32) family]);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = [v6 finalizedCopy];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

- (void)getTimelineEntriesForComplication:(id)a3 afterDate:(id)a4 limit:(unint64_t)a5 withHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23702D000, v14, OS_LOG_TYPE_DEFAULT, "CLKComplicationServer: -getTimelineEntriesForComplication:afterDate:limit:withHandler:", buf, 2u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__CLKComplicationServer_getTimelineEntriesForComplication_afterDate_limit_withHandler___block_invoke;
  v18[3] = &unk_278A1FBC0;
  v18[4] = self;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = a5;
  v23 = a2;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  dispatch_async(MEMORY[0x277D85CD0], v18);
}

void __87__CLKComplicationServer_getTimelineEntriesForComplication_afterDate_limit_withHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createDataSourceIfNecessary];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__CLKComplicationServer_getTimelineEntriesForComplication_afterDate_limit_withHandler___block_invoke_2;
  v17[3] = &unk_278A1FA30;
  v18 = *(a1 + 56);
  v2 = MEMORY[0x2383C4AF0](v17);
  if (([*(a1 + 32) _shouldAllowComplication:*(a1 + 40)] & 1) != 0 && *(*(a1 + 32) + 61) == 1)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__CLKComplicationServer_getTimelineEntriesForComplication_afterDate_limit_withHandler___block_invoke_3;
    v12[3] = &unk_278A1FB98;
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 72);
    v6 = *(a1 + 56);
    v15 = *(a1 + 64);
    v16 = v5;
    v7 = v6;
    *&v8 = *(a1 + 32);
    *(&v8 + 1) = v7;
    v9 = *(v8 + 69);
    *&v10 = v3;
    *(&v10 + 1) = v4;
    v13 = v10;
    v14 = v8;
    v11 = CLKComplicationTimelineEntryArrayAssertionBlock(v12, v2, v9, @"[CLKComplicationDataSource getTimelineEntriesForComplication:afterDate:limit:withHandler:]");
    [*(*(a1 + 32) + 32) getTimelineEntriesForComplication:*(a1 + 40) afterDate:*(a1 + 48) limit:*(a1 + 64) withHandler:v11];
  }

  else
  {
    v2[2](v2);
  }
}

void __87__CLKComplicationServer_getTimelineEntriesForComplication_afterDate_limit_withHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__CLKComplicationServer_getTimelineEntriesForComplication_afterDate_limit_withHandler___block_invoke_4;
  v11[3] = &unk_278A1FB70;
  v4 = v3;
  v12 = v4;
  v13 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v14 = v5;
  v8 = *(a1 + 72);
  v16 = v7;
  v17 = v8;
  v15 = v6;
  v9 = MEMORY[0x2383C4AF0](v11);
  if (CLKIsBeingDebugged())
  {
    v10 = CLKLoggingObjectForDomain(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __87__CLKComplicationServer_getTimelineEntriesForComplication_afterDate_limit_withHandler___block_invoke_3_cold_1();
    }

    v9[2](v9);
  }

  else
  {
    dispatch_async(*(*(a1 + 48) + 80), v9);
  }
}

void __87__CLKComplicationServer_getTimelineEntriesForComplication_afterDate_limit_withHandler___block_invoke_4(uint64_t a1)
{
  v1 = a1;
  v56 = *MEMORY[0x277D85DE8];
  if (_ValidateEntries(*(a1 + 32), [*(a1 + 40) family]))
  {
    v2 = *(v1 + 48);
    v3 = *(v1 + 64);
    v4 = *(v1 + 72);
    v5 = *(v1 + 32);
    v6 = v2;
    if (v5)
    {
      v34 = v1;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = ___FinalizedEntriesFilteredByDateAndCount_block_invoke;
      v45[3] = &unk_278A1FCB0;
      v47 = 0;
      v33 = v6;
      v7 = v6;
      v46 = v7;
      v32 = [v5 indexesOfObjectsPassingTest:v45];
      v8 = [v5 objectsAtIndexes:?];
      v9 = [v5 count];
      v10 = v9 - [v8 count];
      if (v10 >= 1)
      {
        v11 = CLKLoggingObjectForDomain(3);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = NSStringFromSelector(v4);
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
          *buf = 138413058;
          v49 = v12;
          v50 = 2112;
          v51 = v13;
          v52 = 2112;
          v53 = @"before start";
          v54 = 2112;
          v55 = v7;
          _os_log_impl(&dword_23702D000, v11, OS_LOG_TYPE_DEFAULT, "%@ -- invalid entries returned. (%@ entries %@ date %@).  Excess entries will be discarded.", buf, 0x2Au);
        }
      }

      v14 = v8;

      v15 = [v14 count];
      v16 = v14;
      if (v15 > v3)
      {
        v17 = v15;
        v18 = CLKLoggingObjectForDomain(3);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = NSStringFromSelector(v4);
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
          *buf = 138412802;
          v49 = v19;
          v50 = 2112;
          v51 = v20;
          v52 = 2112;
          v53 = v21;
          _os_log_impl(&dword_23702D000, v18, OS_LOG_TYPE_DEFAULT, "%@ -- too many entries provided (%@; limit = %@). Excess entries will be discarded.", buf, 0x20u);
        }

        v16 = [v14 subarrayWithRange:{0, v3}];
      }

      v22 = [MEMORY[0x277CBEB18] array];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v23 = v16;
      v24 = [v23 countByEnumeratingWithState:&v41 objects:buf count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v42;
        v27 = MEMORY[0x277D85CD0];
        do
        {
          v28 = 0;
          do
          {
            if (*v42 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v29 = *(*(&v41 + 1) + 8 * v28);
            if ([MEMORY[0x277CCACC8] isMainThread])
            {
              v30 = [v29 finalizedCopy];
              [v22 addObject:v30];
            }

            else
            {
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = ___FinalizedEntriesFilteredByDateAndCount_block_invoke_220;
              block[3] = &unk_278A1F590;
              v39 = v22;
              v40 = v29;
              dispatch_sync(v27, block);
              v30 = v39;
            }

            ++v28;
          }

          while (v25 != v28);
          v25 = [v23 countByEnumeratingWithState:&v41 objects:buf count:16];
        }

        while (v25);
      }

      v6 = v33;
      v1 = v34;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    (*(*(v1 + 56) + 16))();
  }

  else
  {
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __87__CLKComplicationServer_getTimelineEntriesForComplication_afterDate_limit_withHandler___block_invoke_5;
    v35[3] = &unk_278A1FB48;
    v37 = *(v1 + 56);
    v36 = v22;
    dispatch_async(MEMORY[0x277D85CD0], v35);
  }
}

- (void)getNextRequestedUpdateDateWithHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__CLKComplicationServer_getNextRequestedUpdateDateWithHandler___block_invoke;
  v6[3] = &unk_278A1FBE8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __63__CLKComplicationServer_getNextRequestedUpdateDateWithHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createDataSourceIfNecessary];
  v2 = *(a1 + 32);
  if (*(v2 + 63) == 1)
  {
    v3 = *(v2 + 32);
    v4 = *(a1 + 40);

    return [v3 getNextRequestedUpdateDateWithHandler:v4];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }
}

- (void)requestedUpdateDidBegin
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CLKComplicationServer_requestedUpdateDidBegin__block_invoke;
  block[3] = &unk_278A1F1B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __48__CLKComplicationServer_requestedUpdateDidBegin__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _createDataSourceIfNecessary];
  v3 = *(a1 + 32);
  if (*(v3 + 64) == 1)
  {
    v4 = *(v3 + 32);

    return [v4 requestedUpdateDidBegin];
  }

  return result;
}

- (void)requestedUpdateBudgetExhausted
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CLKComplicationServer_requestedUpdateBudgetExhausted__block_invoke;
  block[3] = &unk_278A1F1B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __55__CLKComplicationServer_requestedUpdateBudgetExhausted__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _createDataSourceIfNecessary];
  v3 = *(a1 + 32);
  if (*(v3 + 65) == 1)
  {
    v4 = *(v3 + 32);

    return [v4 requestedUpdateBudgetExhausted];
  }

  return result;
}

- (void)getLocalizableSampleTemplateForComplication:(id)a3 withHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__CLKComplicationServer_getLocalizableSampleTemplateForComplication_withHandler___block_invoke;
  v11[3] = &unk_278A1FB20;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v14 = a2;
  v9 = v7;
  v10 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __81__CLKComplicationServer_getLocalizableSampleTemplateForComplication_withHandler___block_invoke(id *a1)
{
  [a1[4] _createDataSourceIfNecessary];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__CLKComplicationServer_getLocalizableSampleTemplateForComplication_withHandler___block_invoke_2;
  v17[3] = &unk_278A1FA30;
  v18 = a1[6];
  v2 = MEMORY[0x2383C4AF0](v17);
  if (([a1[4] _shouldAllowComplication:a1[5]] & 1) == 0)
  {
    goto LABEL_7;
  }

  v3 = a1[4];
  if (v3[68] != 1)
  {
    if (v3[66] == 1)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __81__CLKComplicationServer_getLocalizableSampleTemplateForComplication_withHandler___block_invoke_144;
      v11[3] = &unk_278A1FAF8;
      v12 = a1[5];
      v10 = *(a1 + 3);
      v7 = v10;
      v13 = v10;
      v8 = CLKComplicationTemplateAssertionBlock(v11, v2, 0, @"[CLKComplicationDataSource getPlaceholderTemplateForComplication:withHandler:]");
      [*(a1[4] + 4) getPlaceholderTemplateForComplication:a1[5] withHandler:v8];

      v6 = v12;
      goto LABEL_6;
    }

LABEL_7:
    v2[2](v2);
    goto LABEL_8;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__CLKComplicationServer_getLocalizableSampleTemplateForComplication_withHandler___block_invoke_140;
  v14[3] = &unk_278A1FAF8;
  v15 = a1[5];
  v9 = *(a1 + 3);
  v4 = v9;
  v16 = v9;
  v5 = CLKComplicationTemplateAssertionBlock(v14, v2, *(a1[4] + 69), @"[CLKComplicationDataSource getLocalizableSampleTemplateForComplication:withHandler:]");
  [*(a1[4] + 4) getLocalizableSampleTemplateForComplication:a1[5] withHandler:v5];

  v6 = v15;
LABEL_6:

LABEL_8:
}

uint64_t __81__CLKComplicationServer_getLocalizableSampleTemplateForComplication_withHandler___block_invoke_2(uint64_t a1)
{
  v2 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81__CLKComplicationServer_getLocalizableSampleTemplateForComplication_withHandler___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return (*(*(a1 + 32) + 16))();
}

void __81__CLKComplicationServer_getLocalizableSampleTemplateForComplication_withHandler___block_invoke_140(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __81__CLKComplicationServer_getLocalizableSampleTemplateForComplication_withHandler___block_invoke_140_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = _ValidateTemplate(v3, [*(a1 + 32) family]);
  v13 = CLKLoggingObjectForDomain(1);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v14)
    {
      __81__CLKComplicationServer_getLocalizableSampleTemplateForComplication_withHandler___block_invoke_140_cold_2(v13, v15, v16, v17, v18, v19, v20, v21);
    }

    v22 = *(a1 + 40);
    v23 = [v3 finalizedCopy];
    (*(v22 + 16))(v22, v23);
  }

  else
  {
    if (v14)
    {
      __81__CLKComplicationServer_getLocalizableSampleTemplateForComplication_withHandler___block_invoke_140_cold_2(v13, v15, v16, v17, v18, v19, v20, v21);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __81__CLKComplicationServer_getLocalizableSampleTemplateForComplication_withHandler___block_invoke_144(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __81__CLKComplicationServer_getLocalizableSampleTemplateForComplication_withHandler___block_invoke_140_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = _ValidateTemplate(v3, [*(a1 + 32) family]);
  v13 = CLKLoggingObjectForDomain(1);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v14)
    {
      __81__CLKComplicationServer_getLocalizableSampleTemplateForComplication_withHandler___block_invoke_140_cold_2(v13, v15, v16, v17, v18, v19, v20, v21);
    }

    v22 = *(a1 + 40);
    v23 = [v3 finalizedCopy];
    (*(v22 + 16))(v22, v23);
  }

  else
  {
    if (v14)
    {
      __81__CLKComplicationServer_getLocalizableSampleTemplateForComplication_withHandler___block_invoke_140_cold_2(v13, v15, v16, v17, v18, v19, v20, v21);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)getComplicationDescriptorsWithHandler:(id)a3
{
  v5 = a3;
  v6 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23702D000, v6, OS_LOG_TYPE_DEFAULT, "CLKComplicationServer: -getComplicationDescriptorsWithHandler:", buf, 2u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__CLKComplicationServer_getComplicationDescriptorsWithHandler___block_invoke;
  v12[3] = &unk_278A1FC10;
  v13 = v5;
  v14 = a2;
  v7 = v5;
  v8 = MEMORY[0x2383C4AF0](v12);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__CLKComplicationServer_getComplicationDescriptorsWithHandler___block_invoke_150;
  v10[3] = &unk_278A1FBE8;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __63__CLKComplicationServer_getComplicationDescriptorsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 count];
  if (v4 >= 0x33)
  {
    v5 = v4;
    v6 = CLKLoggingObjectForDomain(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(*(a1 + 40));
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
      *buf = 138412802;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = &unk_284A34C38;
      _os_log_impl(&dword_23702D000, v6, OS_LOG_TYPE_DEFAULT, "%@ -- too many complication descriptors provided (%@; limit = %@). Excess descriptors will be discarded.", buf, 0x20u);
    }

    v9 = [v3 subarrayWithRange:{0, 50}];

    v3 = v9;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v17 + 1) + 8 * v14++) validate];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v15 = *(a1 + 32);
  v16 = [v10 copy];
  (*(v15 + 16))(v15, v16);
}

void __63__CLKComplicationServer_getComplicationDescriptorsWithHandler___block_invoke_150(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _createDataSourceIfNecessary];
  v2 = *(a1 + 32);
  if (*(v2 + 71) == 1)
  {
    v3 = *(v2 + 32);
    v4 = *(a1 + 40);

    [v3 getComplicationDescriptorsWithHandler:v4];
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 objectForInfoDictionaryKey:@"CLKComplicationSupportedFamilies"];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v18 = 0;
          if (CLKComplicationFamilyFromString(v13, &v18))
          {
            v14 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
            [v7 addObject:v14];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    v15 = *(a1 + 40);
    v16 = [[CLKComplicationDescriptor alloc] initWithIdentifier:@"CLKDefaultComplicationIdentifier" displayName:&stru_284A20458 supportedFamilies:v7];
    v23 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    (*(v15 + 16))(v15, v17);
  }
}

- (void)handleSharedComplicationDescriptors:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__CLKComplicationServer_handleSharedComplicationDescriptors___block_invoke;
  v6[3] = &unk_278A1F590;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __61__CLKComplicationServer_handleSharedComplicationDescriptors___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _createDataSourceIfNecessary];
  v3 = *(a1 + 32);
  if (*(v3 + 72) == 1)
  {
    v4 = *(v3 + 32);
    v5 = *(a1 + 40);

    return [v4 handleSharedComplicationDescriptors:v5];
  }

  return result;
}

- (void)notifyDebugTimeoutWithCharging:(BOOL)a3
{
  v3 = a3;
  v4 = CLKLoggingObjectForDomain(7);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v5)
    {
      [CLKComplicationServer notifyDebugTimeoutWithCharging:];
    }
  }

  else if (v5)
  {
    [CLKComplicationServer notifyDebugTimeoutWithCharging:];
  }
}

- (void)getWidgetMigrationConfigurationFrom:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CLKLoggingObjectForDomain(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23702D000, v8, OS_LOG_TYPE_DEFAULT, "CLKComplicationServer: -getWidgetMigrationConfigurationFrom:withHandler:", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CLKComplicationServer_getWidgetMigrationConfigurationFrom_withHandler___block_invoke;
  block[3] = &unk_278A1FA58;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __73__CLKComplicationServer_getWidgetMigrationConfigurationFrom_withHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createDataSourceIfNecessary];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__CLKComplicationServer_getWidgetMigrationConfigurationFrom_withHandler___block_invoke_2;
  v20[3] = &unk_278A1FA30;
  v21 = *(a1 + 48);
  v2 = MEMORY[0x2383C4AF0](v20);
  v3 = *(a1 + 32);
  if (*(v3 + 73) == 1)
  {
    v4 = [*(v3 + 32) widgetMigrator];
    v5 = CLKLoggingObjectForDomain(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __73__CLKComplicationServer_getWidgetMigrationConfigurationFrom_withHandler___block_invoke_cold_2();
    }

    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __73__CLKComplicationServer_getWidgetMigrationConfigurationFrom_withHandler___block_invoke_157;
    v18 = &unk_278A1FC38;
    v19 = *(a1 + 48);
    v6 = CLKComplicationWidgetMigrationConfigurationAssertionBlock(&v15, v2, 0, @"[CLKComplicationServer getWidgetMigrationConfigurationFrom:withHandler:]");
    [v4 getWidgetConfigurationFrom:*(a1 + 40) completionHandler:{v6, v15, v16, v17, v18}];
  }

  else
  {
    v7 = CLKLoggingObjectForDomain(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __73__CLKComplicationServer_getWidgetMigrationConfigurationFrom_withHandler___block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    v2[2](v2);
  }
}

uint64_t __73__CLKComplicationServer_getWidgetMigrationConfigurationFrom_withHandler___block_invoke_2(uint64_t a1)
{
  v2 = CLKLoggingObjectForDomain(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __73__CLKComplicationServer_getWidgetMigrationConfigurationFrom_withHandler___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return (*(*(a1 + 32) + 16))();
}

void __73__CLKComplicationServer_getWidgetMigrationConfigurationFrom_withHandler___block_invoke_157(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CLKLoggingObjectForDomain(3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __73__CLKComplicationServer_getWidgetMigrationConfigurationFrom_withHandler___block_invoke_157_cold_1();
    }

    v13 = [v3 _internalCopy];
  }

  else
  {
    if (v5)
    {
      __73__CLKComplicationServer_getWidgetMigrationConfigurationFrom_withHandler___block_invoke_157_cold_2(v4, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = 0;
    v3 = v4;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_init
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_23702D000, a2, OS_LOG_TYPE_ERROR, "complication server failed to register for restart notifications: %d", v2, 8u);
}

void __73__CLKComplicationServer_getWidgetMigrationConfigurationFrom_withHandler___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "[CLKComplicationServer getWidgetMigrationConfigurationFrom:withHandler:]_block_invoke";
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_23702D000, v0, OS_LOG_TYPE_DEBUG, "%s asking widget migrator for widget migration configuration: %@", &v1, 0x16u);
}

void __73__CLKComplicationServer_getWidgetMigrationConfigurationFrom_withHandler___block_invoke_157_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "[CLKComplicationServer getWidgetMigrationConfigurationFrom:withHandler:]_block_invoke";
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_23702D000, v0, OS_LOG_TYPE_DEBUG, "%s calling handler with widget migration configuration: %@", &v1, 0x16u);
}

@end