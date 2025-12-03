@interface ASDServiceBroker
+ (id)defaultBroker;
+ (id)interface;
+ (id)newBrokerForMachServiceName:(id)name;
- (ASDServiceBroker)initWithMachServiceName:(id)name;
- (id)getBackgroundAssetsServiceWithError:(id *)error;
- (id)getCapabilitiesServiceWithError:(id *)error;
- (id)getClipServiceWithError:(id *)error;
- (id)getDiagnosticServiceWithError:(id *)error;
- (id)getFairPlayServiceWithError:(id *)error;
- (id)getIAPHistoryServiceWithError:(id *)error;
- (id)getInstallAttributionServiceWithError:(id *)error;
- (id)getInstallationServiceWithError:(id *)error;
- (id)getLibraryServiceWithError:(id *)error;
- (id)getManagedAppServiceWithError:(id *)error;
- (id)getPurchaseHistoryServiceWithError:(id *)error;
- (id)getPurchaseServiceWithError:(id *)error;
- (id)getRepairServiceWithError:(id *)error;
- (id)getStoreKitExternalNotificationServiceWithError:(id *)error;
- (id)getTestFlightFeedbackServiceWithError:(id *)error;
- (id)getUpdatesServiceWithError:(id *)error;
- (void)_connect;
- (void)_remoteObjectProxyWithErrorHandler:(void *)handler;
- (void)_synchronousRemoteObjectProxyWithErrorHandler:(void *)handler;
- (void)dealloc;
- (void)getAppMetricsServiceWithCompletionHandler:(id)handler;
- (void)getAppStoreServiceWithCompletionHandler:(id)handler;
- (void)getBackgroundAssetsServiceWithCompletionHandler:(id)handler;
- (void)getClipServiceWithCompletionHandler:(id)handler;
- (void)getCrossfireServiceWithCompletionHandler:(id)handler;
- (void)getDiagnosticServiceWithCompletionHandler:(id)handler;
- (void)getIAPHistoryServiceWithCompletionHandler:(id)handler;
- (void)getInstallAttributionServiceWithCompletionHandler:(id)handler;
- (void)getInstallWebAttributionServiceWithCompletionHandler:(id)handler;
- (void)getInstallationServiceWithCompletionHandler:(id)handler;
- (void)getLibraryServiceWithCompletionHandler:(id)handler;
- (void)getManagedAppServiceWithCompletionHandler:(id)handler;
- (void)getOcelotServiceWithCompletionHandler:(id)handler;
- (void)getPersonalizationServiceWithCompletionHandler:(id)handler;
- (void)getPurchaseHistoryServiceWithCompletionHandler:(id)handler;
- (void)getPurchaseServiceWithCompletionHandler:(id)handler;
- (void)getRepairServiceWithCompletionHandler:(id)handler;
- (void)getRestoreServiceWithCompletionHandler:(id)handler;
- (void)getSKANInteropServiceWithCompletionHandler:(id)handler;
- (void)getSkannerServiceWithCompletionHandler:(id)handler;
- (void)getTestFlightFeedbackServiceWithCompletionHandler:(id)handler;
- (void)getUpdatesServiceWithCompletionHandler:(id)handler;
- (void)setSupportedNotificationDelivery:(id)delivery;
@end

@implementation ASDServiceBroker

+ (id)defaultBroker
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__ASDServiceBroker_defaultBroker__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED90D4F0 != -1)
  {
    dispatch_once(&qword_1ED90D4F0, block);
  }

  v2 = _MergedGlobals_32;

  return v2;
}

uint64_t __33__ASDServiceBroker_defaultBroker__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_self();
  _MergedGlobals_32 = [v1 newBrokerForMachServiceName:@"com.apple.appstored.xpc"];

  return MEMORY[0x1EEE66BB8]();
}

- (void)_connect
{
  if (self)
  {
    if (*(self + 24))
    {
      v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:*(self + 24) options:0];
      v3 = *(self + 8);
      *(self + 8) = v2;

      [*(self + 8) _setQueue:*(self + 16)];
      v4 = *(self + 8);
      interface = [objc_opt_class() interface];
      [v4 setRemoteObjectInterface:interface];

      v6 = *(self + 8);
      v7 = +[ASDNotificationCenter defaultCenter];
      [v6 setExportedObject:v7];

      v8 = *(self + 8);
      v9 = +[ASDNotificationCenter interface];
      [v8 setExportedInterface:v9];

      [*(self + 8) setInterruptionHandler:&__block_literal_global_9];
      v10 = *(self + 8);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __28__ASDServiceBroker__connect__block_invoke_5;
      v12[3] = &unk_1E7CDB930;
      v12[4] = self;
      [v10 setInvalidationHandler:v12];
      [*(self + 8) resume];
    }

    else
    {
      v11 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B8220000, v11, OS_LOG_TYPE_ERROR, "[ASDServiceBroker]: Connection failed: No mach service name provided", buf, 2u);
      }
    }
  }
}

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A118];
  v3 = +[ASDPersonalizationStore interface];
  [v2 setInterface:v3 forSelector:sel_getPersonalizationServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v4 = +[ASDAppStoreService interface];
  [v2 setInterface:v4 forSelector:sel_getAppStoreServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v5 = +[ASDIAPHistory interface];
  [v2 setInterface:v5 forSelector:sel_getIAPHistoryServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v6 = +[ASDAppCapabilities interface];
  [v2 setInterface:v6 forSelector:sel_getAppCapabilitiesServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v7 = +[ASDBackgroundAssets interface];
  [v2 setInterface:v7 forSelector:sel_getBackgroundAssetsServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v8 = +[ASDAppLibrary interface];
  [v2 setInterface:v8 forSelector:sel_getLibraryServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v9 = +[ASDUpdatesService interface];
  [v2 setInterface:v9 forSelector:sel_getUpdatesServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v10 = +[ASDClipService interface];
  [v2 setInterface:v10 forSelector:sel_getClipServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v11 = +[ASDCrossfireStore interface];
  [v2 setInterface:v11 forSelector:sel_getCrossfireServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v12 = +[ASDTestFlightFeedback interface];
  [v2 setInterface:v12 forSelector:sel_getTestFlightFeedbackServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v13 = +[ASDManagedAppService interface];
  [v2 setInterface:v13 forSelector:sel_getManagedAppServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v14 = +[ASDOcelotStore interface];
  [v2 setInterface:v14 forSelector:sel_getOcelotServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v15 = +[ASDDiagnosticService interface];
  [v2 setInterface:v15 forSelector:sel_getDiagnosticServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v16 = +[ASDFairPlayService interface];
  [v2 setInterface:v16 forSelector:sel_getFairPlayServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v17 = +[ASDInstallApps interface];
  [v2 setInterface:v17 forSelector:sel_getInstallationServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v18 = +[ASDInstallAttribution interface];
  [v2 setInterface:v18 forSelector:sel_getInstallAttributionServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v19 = +[ASDInstallWebAttributionService interface];
  [v2 setInterface:v19 forSelector:sel_getInstallWebAttributionServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v20 = +[SKANInteropService interface];
  [v2 setInterface:v20 forSelector:sel_getSKANInteropServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v21 = +[ASDAppMetricsService interface];
  [v2 setInterface:v21 forSelector:sel_getMetricsServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v22 = +[ASDPurchaseHistory interface];
  [v2 setInterface:v22 forSelector:sel_getPurchaseHistoryServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v23 = +[ASDPurchaseManager interface];
  [v2 setInterface:v23 forSelector:sel_getPurchaseServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v24 = +[ASDRepairService interface];
  [v2 setInterface:v24 forSelector:sel_getRepairServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v25 = +[ASDRestoreService interface];
  [v2 setInterface:v25 forSelector:sel_getRestoreServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v26 = +[ASDSkannerService interface];
  [v2 setInterface:v26 forSelector:sel_getSkannerServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v27 = +[ASDStoreKitExternalNotificationSheet interface];
  [v2 setInterface:v27 forSelector:sel_getStoreKitExternalNotificationServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)newBrokerForMachServiceName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] initWithMachServiceName:nameCopy];

  return v5;
}

- (ASDServiceBroker)initWithMachServiceName:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = ASDServiceBroker;
  v6 = [(ASDServiceBroker *)&v14 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.AppStoreDaemon.ASDServiceBroker", v7);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v8;

    objc_storeStrong(&v6->_machServiceName, name);
    [(ASDServiceBroker *)v6 _connect];
    v10 = v6->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __44__ASDServiceBroker_initWithMachServiceName___block_invoke;
    handler[3] = &unk_1E7CDC688;
    v13 = v6;
    notify_register_dispatch("com.apple.appstored.serviceBrokerAvailable", &v6->_token, v10, handler);
  }

  return v6;
}

void __44__ASDServiceBroker_initWithMachServiceName___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    v2 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1B8220000, v2, OS_LOG_TYPE_ERROR, "[ASDServiceBroker]: Reconnecting after receiving notification", v4, 2u);
    }

    [(ASDServiceBroker *)*(a1 + 32) _connect];
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:ASDServiceBrokerConnectedNotification object:*(a1 + 32)];
}

void __28__ASDServiceBroker__connect__block_invoke()
{
  v0 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1B8220000, v0, OS_LOG_TYPE_ERROR, "[ASDServiceBroker]: Connection interrupted", v1, 2u);
  }
}

void __28__ASDServiceBroker__connect__block_invoke_5(uint64_t a1)
{
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1B8220000, v2, OS_LOG_TYPE_ERROR, "[ASDServiceBroker]: Connection invalidated", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;
}

- (void)dealloc
{
  notify_cancel(self->_token);
  v3.receiver = self;
  v3.super_class = ASDServiceBroker;
  [(ASDServiceBroker *)&v3 dealloc];
}

- (id)getCapabilitiesServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__ASDServiceBroker_getCapabilitiesServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__ASDServiceBroker_getCapabilitiesServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC6B8;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getAppCapabilitiesServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

- (void)_synchronousRemoteObjectProxyWithErrorHandler:(void *)handler
{
  v3 = a2;
  v4 = v3;
  if (handler)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__4;
    v17 = __Block_byref_object_dispose__4;
    v18 = 0;
    v5 = handler[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__ASDServiceBroker__synchronousRemoteObjectProxyWithErrorHandler___block_invoke;
    block[3] = &unk_1E7CDC938;
    v12 = &v13;
    block[4] = handler;
    v6 = v3;
    v11 = v6;
    dispatch_sync(v5, block);
    v7 = v14[5];
    if (!v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASDServiceBrokerErrorDomain" code:0 userInfo:0];
      (*(v6 + 2))(v6, v8);

      v7 = v14[5];
    }

    handler = v7;

    _Block_object_dispose(&v13, 8);
  }

  return handler;
}

void __52__ASDServiceBroker_getCapabilitiesServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getBackgroundAssetsServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__ASDServiceBroker_getBackgroundAssetsServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getBackgroundAssetsServiceWithReplyHandler:v5];
}

- (void)_remoteObjectProxyWithErrorHandler:(void *)handler
{
  v3 = a2;
  v4 = v3;
  if (handler)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__4;
    v17 = __Block_byref_object_dispose__4;
    v18 = 0;
    v5 = handler[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__ASDServiceBroker__remoteObjectProxyWithErrorHandler___block_invoke;
    block[3] = &unk_1E7CDC938;
    v12 = &v13;
    block[4] = handler;
    v6 = v3;
    v11 = v6;
    dispatch_sync(v5, block);
    v7 = v14[5];
    if (!v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASDServiceBrokerErrorDomain" code:0 userInfo:0];
      (*(v6 + 2))(v6, v8);

      v7 = v14[5];
    }

    handler = v7;

    _Block_object_dispose(&v13, 8);
  }

  return handler;
}

- (id)getBackgroundAssetsServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__ASDServiceBroker_getBackgroundAssetsServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__ASDServiceBroker_getBackgroundAssetsServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC6E0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getBackgroundAssetsServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __56__ASDServiceBroker_getBackgroundAssetsServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getCrossfireServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__ASDServiceBroker_getCrossfireServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getCrossfireServiceWithReplyHandler:v5];
}

- (void)getClipServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__ASDServiceBroker_getClipServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getClipServiceWithReplyHandler:v5];
}

- (id)getClipServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__ASDServiceBroker_getClipServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__ASDServiceBroker_getClipServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC708;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getClipServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __44__ASDServiceBroker_getClipServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getDiagnosticServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__ASDServiceBroker_getDiagnosticServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__ASDServiceBroker_getDiagnosticServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC730;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getDiagnosticServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __50__ASDServiceBroker_getDiagnosticServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getDiagnosticServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__ASDServiceBroker_getDiagnosticServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getDiagnosticServiceWithReplyHandler:v5];
}

- (id)getFairPlayServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__ASDServiceBroker_getFairPlayServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__ASDServiceBroker_getFairPlayServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC758;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getFairPlayServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __48__ASDServiceBroker_getFairPlayServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getIAPHistoryServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__ASDServiceBroker_getIAPHistoryServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__ASDServiceBroker_getIAPHistoryServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC780;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getIAPHistoryServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __50__ASDServiceBroker_getIAPHistoryServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getIAPHistoryServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__ASDServiceBroker_getIAPHistoryServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getIAPHistoryServiceWithReplyHandler:v5];
}

- (id)getInstallationServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__ASDServiceBroker_getInstallationServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__ASDServiceBroker_getInstallationServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC7A8;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getInstallationServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __52__ASDServiceBroker_getInstallationServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getInstallationServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__ASDServiceBroker_getInstallationServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getInstallationServiceWithReplyHandler:v5];
}

- (id)getInstallAttributionServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__ASDServiceBroker_getInstallAttributionServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__ASDServiceBroker_getInstallAttributionServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC7D0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getInstallAttributionServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __58__ASDServiceBroker_getInstallAttributionServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getInstallAttributionServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__ASDServiceBroker_getInstallAttributionServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getInstallAttributionServiceWithReplyHandler:v5];
}

- (void)getInstallWebAttributionServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__ASDServiceBroker_getInstallWebAttributionServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getInstallWebAttributionServiceWithReplyHandler:v5];
}

- (void)getSKANInteropServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__ASDServiceBroker_getSKANInteropServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getSKANInteropServiceWithReplyHandler:v5];
}

- (id)getLibraryServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__ASDServiceBroker_getLibraryServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__ASDServiceBroker_getLibraryServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC7F8;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getLibraryServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __47__ASDServiceBroker_getLibraryServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getLibraryServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__ASDServiceBroker_getLibraryServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getLibraryServiceWithReplyHandler:v5];
}

- (id)getManagedAppServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__ASDServiceBroker_getManagedAppServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__ASDServiceBroker_getManagedAppServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC820;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getManagedAppServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __50__ASDServiceBroker_getManagedAppServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getManagedAppServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__ASDServiceBroker_getManagedAppServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getManagedAppServiceWithReplyHandler:v5];
}

- (void)getOcelotServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__ASDServiceBroker_getOcelotServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getOcelotServiceWithReplyHandler:v5];
}

- (void)getPersonalizationServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__ASDServiceBroker_getPersonalizationServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getPersonalizationServiceWithReplyHandler:v5];
}

- (id)getPurchaseHistoryServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__ASDServiceBroker_getPurchaseHistoryServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__ASDServiceBroker_getPurchaseHistoryServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC848;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getPurchaseHistoryServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __55__ASDServiceBroker_getPurchaseHistoryServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getPurchaseHistoryServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__ASDServiceBroker_getPurchaseHistoryServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getPurchaseHistoryServiceWithReplyHandler:v5];
}

- (id)getPurchaseServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__ASDServiceBroker_getPurchaseServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__ASDServiceBroker_getPurchaseServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC870;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getPurchaseServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __48__ASDServiceBroker_getPurchaseServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getAppMetricsServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__ASDServiceBroker_getAppMetricsServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getMetricsServiceWithReplyHandler:v5];
}

- (void)getAppStoreServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__ASDServiceBroker_getAppStoreServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getAppStoreServiceWithReplyHandler:v5];
}

- (void)getPurchaseServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__ASDServiceBroker_getPurchaseServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getPurchaseServiceWithReplyHandler:v5];
}

- (void)getSkannerServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__ASDServiceBroker_getSkannerServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getSkannerServiceWithReplyHandler:v5];
}

- (id)getStoreKitExternalNotificationServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__ASDServiceBroker_getStoreKitExternalNotificationServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__ASDServiceBroker_getStoreKitExternalNotificationServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC898;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getStoreKitExternalNotificationServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __68__ASDServiceBroker_getStoreKitExternalNotificationServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getTestFlightFeedbackServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__ASDServiceBroker_getTestFlightFeedbackServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getTestFlightFeedbackServiceWithReplyHandler:v5];
}

- (id)getTestFlightFeedbackServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__ASDServiceBroker_getTestFlightFeedbackServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__ASDServiceBroker_getTestFlightFeedbackServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC8C0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getTestFlightFeedbackServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __58__ASDServiceBroker_getTestFlightFeedbackServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getUpdatesServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__ASDServiceBroker_getUpdatesServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__ASDServiceBroker_getUpdatesServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC8E8;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getUpdatesServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __47__ASDServiceBroker_getUpdatesServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getRepairServiceWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__ASDServiceBroker_getRepairServiceWithError___block_invoke;
  v9[3] = &unk_1E7CDBB80;
  v9[4] = &v16;
  v4 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__ASDServiceBroker_getRepairServiceWithError___block_invoke_2;
  v8[3] = &unk_1E7CDC910;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getRepairServiceWithReplyHandler:v8];

  v5 = v11[5];
  if (error && !v5)
  {
    *error = v17[5];
    v5 = v11[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __46__ASDServiceBroker_getRepairServiceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getRepairServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__ASDServiceBroker_getRepairServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getRepairServiceWithReplyHandler:v5];
}

- (void)getRestoreServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__ASDServiceBroker_getRestoreServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getRestoreServiceWithReplyHandler:v5];
}

- (void)getUpdatesServiceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__ASDServiceBroker_getUpdatesServiceWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CDB730;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(ASDServiceBroker *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 getUpdatesServiceWithReplyHandler:v5];
}

- (void)setSupportedNotificationDelivery:(id)delivery
{
  deliveryCopy = delivery;
  v5 = [(ASDServiceBroker *)self _synchronousRemoteObjectProxyWithErrorHandler:?];
  [v5 setSupportedNotificationDelivery:deliveryCopy];
}

void __53__ASDServiceBroker_setSupportedNotificationDelivery___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_error_impl(&dword_1B8220000, v3, OS_LOG_TYPE_ERROR, "Sending supported notification delivery failed with error: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __55__ASDServiceBroker__remoteObjectProxyWithErrorHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) remoteObjectProxyWithErrorHandler:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __66__ASDServiceBroker__synchronousRemoteObjectProxyWithErrorHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) synchronousRemoteObjectProxyWithErrorHandler:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

@end